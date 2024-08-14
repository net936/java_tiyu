/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : localhost:3306
 Source Schema         : java_tiyu

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 30/06/2024 20:23:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (11, '36d0a613-3c3a-4a6d-b20a-1ad69d9e187b.jpeg', 'http://www.baidu.com', '1716541055636');
INSERT INTO `b_ad` VALUES (13, 'ee663bf8-c816-482b-9eb0-cf0432799c0d.jpeg', 'https://m3u8player.org', '1719748120805');

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '乒乓球馆', '1681347523973');
INSERT INTO `b_classification` VALUES (2, '篮球馆', '1681347533598');
INSERT INTO `b_classification` VALUES (3, '足球场', '1681347534635');
INSERT INTO `b_classification` VALUES (15, '拳击馆', '1719652080828');
INSERT INTO `b_classification` VALUES (16, '羽毛球馆', '1719652086092');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL DEFAULT 0,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (19, 'aa', '1716604731109', 0, NULL, NULL);
INSERT INTO `b_comment` VALUES (20, 'ff', '1716604743726', 0, NULL, NULL);
INSERT INTO `b_comment` VALUES (25, '1111111111111111111', '1719748068224', 0, 11, 101);
INSERT INTO `b_comment` VALUES (26, '2222222222222222', '1719748069911', 0, 11, 101);
INSERT INTO `b_comment` VALUES (27, '3333333333333333', '1719748071788', 0, 11, 101);
INSERT INTO `b_comment` VALUES (28, '顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶', '1719748081497', 0, 11, 99);
INSERT INTO `b_comment` VALUES (29, '啊啊啊啊啊啊啊啊啊啊啊', '1719748085953', 0, 11, 99);
INSERT INTO `b_comment` VALUES (30, '哈哈哈哈哈哈哈哈哈哈哈', '1719748090546', 0, 11, 99);
INSERT INTO `b_comment` VALUES (31, '555555555555555555555555', '1719748093939', 0, 11, 99);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `log_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 120 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------
INSERT INTO `b_error_log` VALUES (115, '127.0.0.1', '/api/thing/list', 'GET', '[org.springframework.jdbc.support.SQLErrorCodeSQLExceptionTranslator.doTranslate(SQLErrorCodeSQLExceptionTranslator.java:239), org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:70), org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:91), org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:441), com.sun.proxy.$Proxy66.selectList(Unknown Source), org.mybatis.spring.SqlSessionTemplate.selectList(SqlSessionTemplate.java:224), com.baomidou.mybatisplus.core.override.MybatisMapperMethod.executeForMany(MybatisMapperMethod.java:166), com.baomidou.mybatisplus.core.override.MybatisMapperMethod.execute(MybatisMapperMethod.java:77), com.baomidou.mybatisplus.core.override.MybatisMapperProxy$PlainMethodInvoker.invoke(MybatisMapperProxy.java:148), com.baomidou.mybatisplus.core.override.MybatisMapperProxy.invoke(MybatisMapperProxy.java:89), com.sun.proxy.$Proxy81.selectList(Unknown Source), com.gk.study.service.impl.ThingServiceImpl.getThingList(ThingServiceImpl.java:74), com.gk.study.service.impl.ThingServiceImpl$$FastClassBySpringCGLIB$$da9a27fa.invoke(<generated>), org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218), org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688), com.gk.study.service.impl.ThingServiceImpl$$EnhancerBySpringCGLIB$$705d7eea.getThingList(<generated>), com.gk.study.controller.ThingController.list(ThingController.java:39), com.gk.study.controller.ThingController$$FastClassBySpringCGLIB$$a27871da.invoke(<generated>), org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218), org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688), com.gk.study.controller.ThingController$$EnhancerBySpringCGLIB$$24c5888a.list(<generated>), sun.reflect.GeneratedMethodAccessor206.invoke(Unknown Source), sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43), java.lang.reflect.Method.invoke(Method.java:498), org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205), org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:150), org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:117), org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895), org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:808), org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87), org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1067), org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:963), org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1006), org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:898), javax.servlet.http.HttpServlet.service(HttpServlet.java:655), org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:883), javax.servlet.http.HttpServlet.service(HttpServlet.java:764), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:227), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:114), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:100), org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), org.springframework.web.filter.FormContentFilter.doFilterInternal(FormContentFilter.java:93), org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:201), org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:197), org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:97), org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:540), org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:135), org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92), org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:78), org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:357), org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:382), org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:65), org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:893), org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1726), org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49), org.apache.tomcat.util.threads.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1191), org.apache.tomcat.util.threads.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:659), org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61), java.lang.Thread.run(Thread.java:748)]', '1716559336516');
INSERT INTO `b_error_log` VALUES (116, '127.0.0.1', '/api/thing/list', 'GET', '[org.springframework.jdbc.support.SQLErrorCodeSQLExceptionTranslator.doTranslate(SQLErrorCodeSQLExceptionTranslator.java:239), org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:70), org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:91), org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:441), com.sun.proxy.$Proxy66.selectList(Unknown Source), org.mybatis.spring.SqlSessionTemplate.selectList(SqlSessionTemplate.java:224), com.baomidou.mybatisplus.core.override.MybatisMapperMethod.executeForMany(MybatisMapperMethod.java:166), com.baomidou.mybatisplus.core.override.MybatisMapperMethod.execute(MybatisMapperMethod.java:77), com.baomidou.mybatisplus.core.override.MybatisMapperProxy$PlainMethodInvoker.invoke(MybatisMapperProxy.java:148), com.baomidou.mybatisplus.core.override.MybatisMapperProxy.invoke(MybatisMapperProxy.java:89), com.sun.proxy.$Proxy81.selectList(Unknown Source), com.gk.study.service.impl.ThingServiceImpl.getThingList(ThingServiceImpl.java:74), com.gk.study.service.impl.ThingServiceImpl$$FastClassBySpringCGLIB$$da9a27fa.invoke(<generated>), org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218), org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688), com.gk.study.service.impl.ThingServiceImpl$$EnhancerBySpringCGLIB$$705d7eea.getThingList(<generated>), com.gk.study.controller.ThingController.list(ThingController.java:39), com.gk.study.controller.ThingController$$FastClassBySpringCGLIB$$a27871da.invoke(<generated>), org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218), org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688), com.gk.study.controller.ThingController$$EnhancerBySpringCGLIB$$24c5888a.list(<generated>), sun.reflect.GeneratedMethodAccessor206.invoke(Unknown Source), sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43), java.lang.reflect.Method.invoke(Method.java:498), org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205), org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:150), org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:117), org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895), org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:808), org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87), org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1067), org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:963), org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1006), org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:898), javax.servlet.http.HttpServlet.service(HttpServlet.java:655), org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:883), javax.servlet.http.HttpServlet.service(HttpServlet.java:764), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:227), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:114), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:100), org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), org.springframework.web.filter.FormContentFilter.doFilterInternal(FormContentFilter.java:93), org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:201), org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:197), org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:97), org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:540), org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:135), org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92), org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:78), org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:357), org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:382), org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:65), org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:893), org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1726), org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49), org.apache.tomcat.util.threads.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1191), org.apache.tomcat.util.threads.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:659), org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61), java.lang.Thread.run(Thread.java:748)]', '1716559338035');
INSERT INTO `b_error_log` VALUES (117, '127.0.0.1', '/api/comment/like', 'POST', '[com.gk.study.controller.CommentController.like(CommentController.java:81), com.gk.study.controller.CommentController$$FastClassBySpringCGLIB$$1769960b.invoke(<generated>), org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218), org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:779), org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163), org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:750), org.springframework.transaction.interceptor.TransactionInterceptor$1.proceedWithInvocation(TransactionInterceptor.java:123), org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:388), org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:119), org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186), org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:750), org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:692), com.gk.study.controller.CommentController$$EnhancerBySpringCGLIB$$e2f160c2.like(<generated>), sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method), sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62), sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43), java.lang.reflect.Method.invoke(Method.java:498), org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205), org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:150), org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:117), org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895), org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:808), org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87), org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1067), org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:963), org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1006), org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:909), javax.servlet.http.HttpServlet.service(HttpServlet.java:681), org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:883), javax.servlet.http.HttpServlet.service(HttpServlet.java:764), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:227), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:114), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:100), org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), org.springframework.web.filter.FormContentFilter.doFilterInternal(FormContentFilter.java:93), org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:201), org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:197), org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:97), org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:540), org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:135), org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92), org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:78), org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:357), org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:382), org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:65), org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:893), org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1726), org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49), org.apache.tomcat.util.threads.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1191), org.apache.tomcat.util.threads.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:659), org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61), java.lang.Thread.run(Thread.java:748)]', '1716604992628');
INSERT INTO `b_error_log` VALUES (118, '127.0.0.1', '/api/thing/rate', 'POST', '[org.springframework.jdbc.support.SQLErrorCodeSQLExceptionTranslator.doTranslate(SQLErrorCodeSQLExceptionTranslator.java:239), org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:70), org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:91), org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:441), com.sun.proxy.$Proxy66.delete(Unknown Source), org.mybatis.spring.SqlSessionTemplate.delete(SqlSessionTemplate.java:304), com.baomidou.mybatisplus.core.override.MybatisMapperMethod.execute(MybatisMapperMethod.java:69), com.baomidou.mybatisplus.core.override.MybatisMapperProxy$PlainMethodInvoker.invoke(MybatisMapperProxy.java:148), com.baomidou.mybatisplus.core.override.MybatisMapperProxy.invoke(MybatisMapperProxy.java:89), com.sun.proxy.$Proxy78.deleteByMap(Unknown Source), com.gk.study.service.impl.ThingServiceImpl.setThingTags(ThingServiceImpl.java:125), com.gk.study.service.impl.ThingServiceImpl.updateThing(ThingServiceImpl.java:84), com.gk.study.service.impl.ThingServiceImpl$$FastClassBySpringCGLIB$$da9a27fa.invoke(<generated>), org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218), org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688), com.gk.study.service.impl.ThingServiceImpl$$EnhancerBySpringCGLIB$$d07f8378.updateThing(<generated>), com.gk.study.controller.ThingController.rate(ThingController.java:96), com.gk.study.controller.ThingController$$FastClassBySpringCGLIB$$a27871da.invoke(<generated>), org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218), org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:779), org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163), org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:750), org.springframework.transaction.interceptor.TransactionInterceptor$1.proceedWithInvocation(TransactionInterceptor.java:123), org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:388), org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:119), org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186), org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:750), org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:692), com.gk.study.controller.ThingController$$EnhancerBySpringCGLIB$$84e78d18.rate(<generated>), sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method), sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62), sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43), java.lang.reflect.Method.invoke(Method.java:498), org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205), org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:150), org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:117), org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895), org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:808), org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87), org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1067), org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:963), org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1006), org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:909), javax.servlet.http.HttpServlet.service(HttpServlet.java:681), org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:883), javax.servlet.http.HttpServlet.service(HttpServlet.java:764), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:227), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:114), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:100), org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), org.springframework.web.filter.FormContentFilter.doFilterInternal(FormContentFilter.java:93), org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:201), org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:197), org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:97), org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:540), org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:135), org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92), org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:78), org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:357), org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:382), org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:65), org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:893), org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1726), org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49), org.apache.tomcat.util.threads.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1191), org.apache.tomcat.util.threads.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:659), org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61), java.lang.Thread.run(Thread.java:748)]', '1716605849836');
INSERT INTO `b_error_log` VALUES (119, '127.0.0.1', '/api/thingWish/wish', 'POST', '[org.springframework.jdbc.support.SQLErrorCodeSQLExceptionTranslator.doTranslate(SQLErrorCodeSQLExceptionTranslator.java:251), org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:70), org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:91), org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:441), com.sun.proxy.$Proxy66.insert(Unknown Source), org.mybatis.spring.SqlSessionTemplate.insert(SqlSessionTemplate.java:272), com.baomidou.mybatisplus.core.override.MybatisMapperMethod.execute(MybatisMapperMethod.java:59), com.baomidou.mybatisplus.core.override.MybatisMapperProxy$PlainMethodInvoker.invoke(MybatisMapperProxy.java:148), com.baomidou.mybatisplus.core.override.MybatisMapperProxy.invoke(MybatisMapperProxy.java:89), com.sun.proxy.$Proxy79.insert(Unknown Source), com.gk.study.service.impl.ThingWishServiceImpl.createThingWish(ThingWishServiceImpl.java:26), com.gk.study.service.impl.ThingWishServiceImpl$$FastClassBySpringCGLIB$$9f94b653.invoke(<generated>), org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218), org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688), com.gk.study.service.impl.ThingWishServiceImpl$$EnhancerBySpringCGLIB$$6e74d1b.createThingWish(<generated>), com.gk.study.controller.ThingWishController.wish(ThingWishController.java:41), com.gk.study.controller.ThingWishController$$FastClassBySpringCGLIB$$d8894ae1.invoke(<generated>), org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218), org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:779), org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163), org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:750), org.springframework.transaction.interceptor.TransactionInterceptor$1.proceedWithInvocation(TransactionInterceptor.java:123), org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:388), org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:119), org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186), org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:750), org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:692), com.gk.study.controller.ThingWishController$$EnhancerBySpringCGLIB$$b5875385.wish(<generated>), sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method), sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62), sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43), java.lang.reflect.Method.invoke(Method.java:498), org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205), org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:150), org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:117), org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895), org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:808), org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87), org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1067), org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:963), org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1006), org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:909), javax.servlet.http.HttpServlet.service(HttpServlet.java:681), org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:883), javax.servlet.http.HttpServlet.service(HttpServlet.java:764), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:227), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:114), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:100), org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), org.springframework.web.filter.FormContentFilter.doFilterInternal(FormContentFilter.java:93), org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:201), org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119), org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189), org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162), org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:197), org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:97), org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:540), org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:135), org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92), org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:78), org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:357), org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:382), org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:65), org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:893), org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1726), org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49), org.apache.tomcat.util.threads.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1191), org.apache.tomcat.util.threads.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:659), org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61), java.lang.Thread.run(Thread.java:748)]', '1719652479930');

-- ----------------------------
-- Table structure for b_feedback
-- ----------------------------
DROP TABLE IF EXISTS `b_feedback`;
CREATE TABLE `b_feedback`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_feedback
-- ----------------------------
INSERT INTO `b_feedback` VALUES (4, '测试反馈221111', '哈哈哈哈', '刘文', '22211@gmail.com', '22251534');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin111', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-11 14:18:07.160822');
INSERT INTO `b_login_log` VALUES (2, 'test1', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-11 19:46:30.674702');
INSERT INTO `b_login_log` VALUES (3, 'test1', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-11 19:47:08.152159');
INSERT INTO `b_login_log` VALUES (4, 'test1', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-18 21:29:53.373699');
INSERT INTO `b_login_log` VALUES (5, 'admin111', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-18 21:30:05.505138');
INSERT INTO `b_login_log` VALUES (6, 'test1', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-18 21:31:34.616610');
INSERT INTO `b_login_log` VALUES (7, 'test1', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-19 09:48:36.853269');
INSERT INTO `b_login_log` VALUES (8, 'bbb@qq.com', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-19 20:27:24.658195');
INSERT INTO `b_login_log` VALUES (9, 'bbb@qq.com', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-19 20:29:09.117872');
INSERT INTO `b_login_log` VALUES (10, 'admin111', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-19 20:31:49.536392');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (2, '新品', 'ggggg', '1681465796380');
INSERT INTO `b_notice` VALUES (10, '测试通知', '哈哈哈', '1719748130946');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_ua` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21908 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (21586, '127.0.0.1', '2024-06-30 19:54:37.583', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/opLog/clearOpLog', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (21587, '127.0.0.1', '2024-06-30 19:54:39.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/opLog/loginLogList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21588, '127.0.0.1', '2024-06-30 19:54:39.859', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/opLog/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21589, '127.0.0.1', '2024-06-30 19:54:40.557', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/errorLog/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (21590, '127.0.0.1', '2024-06-30 19:54:43.541', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/login', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (21591, '127.0.0.1', '2024-06-30 19:54:43.593', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/login', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (21592, '127.0.0.1', '2024-06-30 19:54:43.815', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21593, '127.0.0.1', '2024-06-30 19:54:43.816', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21594, '127.0.0.1', '2024-06-30 19:54:47.528', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/ad/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21595, '127.0.0.1', '2024-06-30 19:54:48.413', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21596, '127.0.0.1', '2024-06-30 19:54:50.646', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/opLog/loginLogList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (21597, '127.0.0.1', '2024-06-30 19:54:51.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/opLog/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21598, '127.0.0.1', '2024-06-30 19:54:51.866', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/opLog/loginLogList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21599, '127.0.0.1', '2024-06-30 19:55:00.836', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/userLogin', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (21600, '127.0.0.1', '2024-06-30 19:55:00.865', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/userLogin', 'POST', NULL, '10');
INSERT INTO `b_op_log` VALUES (21601, '127.0.0.1', '2024-06-30 19:55:05.942', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/userLogin', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (21602, '127.0.0.1', '2024-06-30 19:55:05.997', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21603, '127.0.0.1', '2024-06-30 19:55:06.004', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (21604, '127.0.0.1', '2024-06-30 19:55:06.004', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21605, '127.0.0.1', '2024-06-30 19:55:06.008', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21606, '127.0.0.1', '2024-06-30 19:55:08.806', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/opLog/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21607, '127.0.0.1', '2024-06-30 19:55:09.619', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/opLog/loginLogList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21608, '127.0.0.1', '2024-06-30 19:55:12.399', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/feedback/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (21609, '127.0.0.1', '2024-06-30 19:55:13.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/overview/count', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (21610, '127.0.0.1', '2024-06-30 19:56:23.633', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/feedback/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21611, '127.0.0.1', '2024-06-30 19:56:25.692', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/overview/sysInfo', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21612, '127.0.0.1', '2024-06-30 19:56:28.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21613, '127.0.0.1', '2024-06-30 19:56:28.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21614, '127.0.0.1', '2024-06-30 19:56:31.728', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (21615, '127.0.0.1', '2024-06-30 19:56:33.625', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21616, '127.0.0.1', '2024-06-30 19:56:34.088', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21617, '127.0.0.1', '2024-06-30 19:56:34.094', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (21618, '127.0.0.1', '2024-06-30 19:56:45.310', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (21619, '127.0.0.1', '2024-06-30 19:56:45.314', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (21620, '127.0.0.1', '2024-06-30 19:56:45.336', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21621, '127.0.0.1', '2024-06-30 19:56:45.337', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21622, '127.0.0.1', '2024-06-30 19:56:49.957', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (21623, '127.0.0.1', '2024-06-30 19:56:49.959', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21624, '127.0.0.1', '2024-06-30 19:56:49.967', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/comment/listThingComments', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21625, '127.0.0.1', '2024-06-30 19:56:49.968', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/ad/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21626, '127.0.0.1', '2024-06-30 19:56:49.969', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/recommend', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (21627, '127.0.0.1', '2024-06-30 19:56:49.971', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/detail', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (21628, '127.0.0.1', '2024-06-30 19:56:50.017', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/staticfiles/image/ee663bf8-c816-482b-9eb0-cf0432799c0d.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (21629, '127.0.0.1', '2024-06-30 19:56:51.317', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21630, '127.0.0.1', '2024-06-30 19:56:51.318', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21631, '127.0.0.1', '2024-06-30 19:57:28.731', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/create', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (21632, '127.0.0.1', '2024-06-30 19:57:29.155', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (21633, '127.0.0.1', '2024-06-30 19:57:29.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (21634, '127.0.0.1', '2024-06-30 19:57:30.633', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (21635, '127.0.0.1', '2024-06-30 19:57:30.635', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21636, '127.0.0.1', '2024-06-30 19:57:30.636', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thingCollect/getUserCollectList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21637, '127.0.0.1', '2024-06-30 19:57:30.640', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thingWish/getUserWishList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (21638, '127.0.0.1', '2024-06-30 19:57:30.640', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/userOrderList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (21639, '127.0.0.1', '2024-06-30 19:57:30.648', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21640, '127.0.0.1', '2024-06-30 20:09:49.415', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/recommend', 'OPTIONS', NULL, '24');
INSERT INTO `b_op_log` VALUES (21641, '127.0.0.1', '2024-06-30 20:09:49.415', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/ad/list', 'OPTIONS', NULL, '24');
INSERT INTO `b_op_log` VALUES (21642, '127.0.0.1', '2024-06-30 20:09:49.915', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/detail', 'GET', NULL, '506');
INSERT INTO `b_op_log` VALUES (21643, '127.0.0.1', '2024-06-30 20:09:49.915', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '506');
INSERT INTO `b_op_log` VALUES (21644, '127.0.0.1', '2024-06-30 20:09:49.917', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/recommend', 'GET', NULL, '183');
INSERT INTO `b_op_log` VALUES (21645, '127.0.0.1', '2024-06-30 20:09:49.918', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/comment/listThingComments', 'GET', NULL, '510');
INSERT INTO `b_op_log` VALUES (21646, '127.0.0.1', '2024-06-30 20:09:49.917', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '509');
INSERT INTO `b_op_log` VALUES (21647, '127.0.0.1', '2024-06-30 20:09:49.918', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/ad/list', 'GET', NULL, '183');
INSERT INTO `b_op_log` VALUES (21648, '127.0.0.1', '2024-06-30 20:09:49.981', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/staticfiles/image/ee663bf8-c816-482b-9eb0-cf0432799c0d.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (21649, '127.0.0.1', '2024-06-30 20:09:59.568', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/comment/listThingComments', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (21650, '127.0.0.1', '2024-06-30 20:09:59.573', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/ad/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (21651, '127.0.0.1', '2024-06-30 20:09:59.575', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (21652, '127.0.0.1', '2024-06-30 20:09:59.586', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (21653, '127.0.0.1', '2024-06-30 20:09:59.625', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/detail', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (21654, '127.0.0.1', '2024-06-30 20:09:59.649', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/recommend', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (21655, '127.0.0.1', '2024-06-30 20:10:00.511', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (21656, '127.0.0.1', '2024-06-30 20:10:00.510', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (21657, '127.0.0.1', '2024-06-30 20:10:17.894', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/create', 'OPTIONS', NULL, '1');
INSERT INTO `b_op_log` VALUES (21658, '127.0.0.1', '2024-06-30 20:10:18.056', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/create', 'POST', NULL, '81');
INSERT INTO `b_op_log` VALUES (21659, '127.0.0.1', '2024-06-30 20:10:27.464', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/create', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (21660, '127.0.0.1', '2024-06-30 20:10:30.710', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (21661, '127.0.0.1', '2024-06-30 20:10:31.132', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (21662, '127.0.0.1', '2024-06-30 20:10:31.155', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (21663, '127.0.0.1', '2024-06-30 20:10:35.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/comment/listThingComments', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (21664, '127.0.0.1', '2024-06-30 20:10:35.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/ad/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21665, '127.0.0.1', '2024-06-30 20:10:35.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (21666, '127.0.0.1', '2024-06-30 20:10:35.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (21667, '127.0.0.1', '2024-06-30 20:10:35.240', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/recommend', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (21668, '127.0.0.1', '2024-06-30 20:10:35.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/detail', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (21669, '127.0.0.1', '2024-06-30 20:10:37.098', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (21670, '127.0.0.1', '2024-06-30 20:10:37.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (21671, '127.0.0.1', '2024-06-30 20:10:42.679', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/classification/list', 'OPTIONS', NULL, '1');
INSERT INTO `b_op_log` VALUES (21672, '127.0.0.1', '2024-06-30 20:10:42.678', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'OPTIONS', NULL, '2');
INSERT INTO `b_op_log` VALUES (21673, '127.0.0.1', '2024-06-30 20:10:42.714', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (21674, '127.0.0.1', '2024-06-30 20:10:42.728', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (21675, '127.0.0.1', '2024-06-30 20:10:42.730', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (21676, '127.0.0.1', '2024-06-30 20:10:42.737', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (21677, '127.0.0.1', '2024-06-30 20:10:44.673', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/comment/listThingComments', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21678, '127.0.0.1', '2024-06-30 20:10:44.673', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (21679, '127.0.0.1', '2024-06-30 20:10:44.676', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/ad/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (21680, '127.0.0.1', '2024-06-30 20:10:44.677', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (21681, '127.0.0.1', '2024-06-30 20:10:44.689', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/recommend', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (21682, '127.0.0.1', '2024-06-30 20:10:44.703', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/detail', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (21683, '127.0.0.1', '2024-06-30 20:10:45.737', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21684, '127.0.0.1', '2024-06-30 20:10:45.738', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (21685, '127.0.0.1', '2024-06-30 20:11:02.340', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/create', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (21686, '127.0.0.1', '2024-06-30 20:11:02.746', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (21687, '127.0.0.1', '2024-06-30 20:11:02.753', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (21688, '127.0.0.1', '2024-06-30 20:11:04.004', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (21689, '127.0.0.1', '2024-06-30 20:11:04.005', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (21690, '127.0.0.1', '2024-06-30 20:11:04.021', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/userOrderList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (21691, '127.0.0.1', '2024-06-30 20:11:04.026', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (21692, '127.0.0.1', '2024-06-30 20:11:04.040', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thingWish/getUserWishList', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (21693, '127.0.0.1', '2024-06-30 20:11:04.040', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thingCollect/getUserCollectList', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (21694, '127.0.0.1', '2024-06-30 20:15:22.667', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'OPTIONS', NULL, '17');
INSERT INTO `b_op_log` VALUES (21695, '127.0.0.1', '2024-06-30 20:15:22.667', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'OPTIONS', NULL, '18');
INSERT INTO `b_op_log` VALUES (21696, '127.0.0.1', '2024-06-30 20:15:22.919', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (21697, '127.0.0.1', '2024-06-30 20:15:22.918', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/detail', 'GET', NULL, '258');
INSERT INTO `b_op_log` VALUES (21698, '127.0.0.1', '2024-06-30 20:15:22.918', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (21699, '127.0.0.1', '2024-06-30 20:15:22.918', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/recommend', 'GET', NULL, '258');
INSERT INTO `b_op_log` VALUES (21700, '127.0.0.1', '2024-06-30 20:15:22.919', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/ad/list', 'GET', NULL, '260');
INSERT INTO `b_op_log` VALUES (21701, '127.0.0.1', '2024-06-30 20:15:22.919', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/comment/listThingComments', 'GET', NULL, '260');
INSERT INTO `b_op_log` VALUES (21702, '127.0.0.1', '2024-06-30 20:15:22.966', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/staticfiles/image/ee663bf8-c816-482b-9eb0-cf0432799c0d.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21703, '127.0.0.1', '2024-06-30 20:15:31.369', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (21704, '127.0.0.1', '2024-06-30 20:15:31.383', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (21705, '127.0.0.1', '2024-06-30 20:15:41.170', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/create', 'POST', NULL, '72');
INSERT INTO `b_op_log` VALUES (21706, '127.0.0.1', '2024-06-30 20:15:41.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (21707, '127.0.0.1', '2024-06-30 20:15:41.260', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (21708, '127.0.0.1', '2024-06-30 20:15:45.311', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/userOrderList', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (21709, '127.0.0.1', '2024-06-30 20:15:45.312', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thingWish/getUserWishList', 'OPTIONS', NULL, '1');
INSERT INTO `b_op_log` VALUES (21710, '127.0.0.1', '2024-06-30 20:15:45.315', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thingCollect/getUserCollectList', 'OPTIONS', NULL, '3');
INSERT INTO `b_op_log` VALUES (21711, '127.0.0.1', '2024-06-30 20:15:45.320', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (21712, '127.0.0.1', '2024-06-30 20:15:45.325', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (21713, '127.0.0.1', '2024-06-30 20:15:45.355', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/userOrderList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (21714, '127.0.0.1', '2024-06-30 20:15:45.358', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (21715, '127.0.0.1', '2024-06-30 20:15:45.377', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thingWish/getUserWishList', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (21716, '127.0.0.1', '2024-06-30 20:15:45.377', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thingCollect/getUserCollectList', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (21717, '127.0.0.1', '2024-06-30 20:15:51.963', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (21718, '127.0.0.1', '2024-06-30 20:15:51.963', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (21719, '127.0.0.1', '2024-06-30 20:15:51.972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thingCollect/getUserCollectList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (21720, '127.0.0.1', '2024-06-30 20:15:51.972', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/userOrderList', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (21721, '127.0.0.1', '2024-06-30 20:15:51.982', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (21722, '127.0.0.1', '2024-06-30 20:15:51.982', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thingWish/getUserWishList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (21723, '127.0.0.1', '2024-06-30 20:15:55.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (21724, '127.0.0.1', '2024-06-30 20:15:55.139', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/ad/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (21725, '127.0.0.1', '2024-06-30 20:15:55.139', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/comment/listThingComments', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21726, '127.0.0.1', '2024-06-30 20:15:55.140', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (21727, '127.0.0.1', '2024-06-30 20:15:55.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/detail', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (21728, '127.0.0.1', '2024-06-30 20:15:55.171', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/recommend', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (21729, '127.0.0.1', '2024-06-30 20:15:56.787', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (21730, '127.0.0.1', '2024-06-30 20:15:56.794', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21731, '127.0.0.1', '2024-06-30 20:16:10.702', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/create', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (21732, '127.0.0.1', '2024-06-30 20:16:15.367', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/cancelUserOrder', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (21733, '127.0.0.1', '2024-06-30 20:16:15.399', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/cancelUserOrder', 'POST', NULL, '13');
INSERT INTO `b_op_log` VALUES (21734, '127.0.0.1', '2024-06-30 20:16:15.441', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/userOrderList', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (21735, '127.0.0.1', '2024-06-30 20:16:18.060', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (21736, '127.0.0.1', '2024-06-30 20:16:18.469', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (21737, '127.0.0.1', '2024-06-30 20:16:18.469', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (21738, '127.0.0.1', '2024-06-30 20:16:22.284', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (21739, '127.0.0.1', '2024-06-30 20:16:22.288', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21740, '127.0.0.1', '2024-06-30 20:16:22.297', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thingCollect/getUserCollectList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (21741, '127.0.0.1', '2024-06-30 20:16:22.299', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/userOrderList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (21742, '127.0.0.1', '2024-06-30 20:16:22.302', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (21743, '127.0.0.1', '2024-06-30 20:16:22.312', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thingWish/getUserWishList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (21744, '127.0.0.1', '2024-06-30 20:16:31.689', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21745, '127.0.0.1', '2024-06-30 20:16:31.698', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (21746, '127.0.0.1', '2024-06-30 20:16:31.705', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (21747, '127.0.0.1', '2024-06-30 20:16:31.717', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (21748, '127.0.0.1', '2024-06-30 20:16:45.086', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (21749, '127.0.0.1', '2024-06-30 20:16:45.088', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (21750, '127.0.0.1', '2024-06-30 20:16:45.092', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/ad/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21751, '127.0.0.1', '2024-06-30 20:16:45.105', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/detail', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (21752, '127.0.0.1', '2024-06-30 20:16:45.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/recommend', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (21753, '127.0.0.1', '2024-06-30 20:16:45.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/comment/listThingComments', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (21754, '127.0.0.1', '2024-06-30 20:16:48.072', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21755, '127.0.0.1', '2024-06-30 20:16:48.073', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21756, '127.0.0.1', '2024-06-30 20:16:59.848', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/create', 'POST', NULL, '13');
INSERT INTO `b_op_log` VALUES (21757, '127.0.0.1', '2024-06-30 20:16:59.938', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21758, '127.0.0.1', '2024-06-30 20:16:59.954', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (21759, '127.0.0.1', '2024-06-30 20:17:01.307', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21760, '127.0.0.1', '2024-06-30 20:17:01.312', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/userOrderList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (21761, '127.0.0.1', '2024-06-30 20:17:01.314', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thingCollect/getUserCollectList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (21762, '127.0.0.1', '2024-06-30 20:17:01.315', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thingWish/getUserWishList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (21763, '127.0.0.1', '2024-06-30 20:17:01.316', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21764, '127.0.0.1', '2024-06-30 20:17:01.330', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (21765, '127.0.0.1', '2024-06-30 20:17:17.029', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21766, '127.0.0.1', '2024-06-30 20:17:17.755', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (21767, '127.0.0.1', '2024-06-30 20:17:18.458', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/list', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (21768, '127.0.0.1', '2024-06-30 20:17:18.486', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (21769, '127.0.0.1', '2024-06-30 20:17:19.142', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/list', 'OPTIONS', NULL, '1');
INSERT INTO `b_op_log` VALUES (21770, '127.0.0.1', '2024-06-30 20:17:19.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21771, '127.0.0.1', '2024-06-30 20:17:21.001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/ad/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21772, '127.0.0.1', '2024-06-30 20:17:22.293', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21773, '127.0.0.1', '2024-06-30 20:17:41.145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'OPTIONS', NULL, '1');
INSERT INTO `b_op_log` VALUES (21774, '127.0.0.1', '2024-06-30 20:17:41.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21775, '127.0.0.1', '2024-06-30 20:17:41.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21776, '127.0.0.1', '2024-06-30 20:19:32.959', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thingWish/getUserWishList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (21777, '127.0.0.1', '2024-06-30 20:19:32.960', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (21778, '127.0.0.1', '2024-06-30 20:19:32.961', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thingCollect/getUserCollectList', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (21779, '127.0.0.1', '2024-06-30 20:19:32.958', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (21780, '127.0.0.1', '2024-06-30 20:19:32.987', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21781, '127.0.0.1', '2024-06-30 20:19:32.994', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21782, '127.0.0.1', '2024-06-30 20:19:33.967', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21783, '127.0.0.1', '2024-06-30 20:19:33.974', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (21784, '127.0.0.1', '2024-06-30 20:19:33.991', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/recommend', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (21785, '127.0.0.1', '2024-06-30 20:19:34.888', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (21786, '127.0.0.1', '2024-06-30 20:19:34.888', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21787, '127.0.0.1', '2024-06-30 20:19:34.889', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thingWish/getUserWishList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (21788, '127.0.0.1', '2024-06-30 20:19:34.889', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thingCollect/getUserCollectList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (21789, '127.0.0.1', '2024-06-30 20:19:34.902', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21790, '127.0.0.1', '2024-06-30 20:19:34.915', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (21791, '127.0.0.1', '2024-06-30 20:19:36.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/comment/listUserComments', 'OPTIONS', NULL, '1');
INSERT INTO `b_op_log` VALUES (21792, '127.0.0.1', '2024-06-30 20:19:36.265', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/comment/listUserComments', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (21793, '127.0.0.1', '2024-06-30 20:19:37.111', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (21794, '127.0.0.1', '2024-06-30 20:19:39.268', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/userOrderList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21795, '127.0.0.1', '2024-06-30 20:20:17.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/classification/list', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (21796, '127.0.0.1', '2024-06-30 20:20:17.138', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (21797, '127.0.0.1', '2024-06-30 20:20:20.456', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/comment/list', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (21798, '127.0.0.1', '2024-06-30 20:20:20.491', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (21799, '127.0.0.1', '2024-06-30 20:20:22.360', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21800, '127.0.0.1', '2024-06-30 20:20:24.247', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21801, '127.0.0.1', '2024-06-30 20:20:27.405', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/cancelOrder', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (21802, '127.0.0.1', '2024-06-30 20:20:27.431', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/cancelOrder', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (21803, '127.0.0.1', '2024-06-30 20:20:27.492', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21804, '127.0.0.1', '2024-06-30 20:20:28.854', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/overview/count', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (21805, '127.0.0.1', '2024-06-30 20:20:28.934', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/overview/count', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (21806, '127.0.0.1', '2024-06-30 20:20:29.765', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/feedback/list', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (21807, '127.0.0.1', '2024-06-30 20:20:29.799', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/feedback/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (21808, '127.0.0.1', '2024-06-30 20:20:31.163', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/overview/sysInfo', 'OPTIONS', NULL, '1');
INSERT INTO `b_op_log` VALUES (21809, '127.0.0.1', '2024-06-30 20:20:33.099', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/overview/sysInfo', 'GET', NULL, '1923');
INSERT INTO `b_op_log` VALUES (21810, '127.0.0.1', '2024-06-30 20:20:35.777', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/overview/count', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (21811, '127.0.0.1', '2024-06-30 20:20:38.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (21812, '127.0.0.1', '2024-06-30 20:20:38.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (21813, '127.0.0.1', '2024-06-30 20:20:41.468', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21814, '127.0.0.1', '2024-06-30 20:20:41.469', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (21815, '127.0.0.1', '2024-06-30 20:20:41.486', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/recommend', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (21816, '127.0.0.1', '2024-06-30 20:20:42.951', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21817, '127.0.0.1', '2024-06-30 20:20:42.949', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21818, '127.0.0.1', '2024-06-30 20:20:42.953', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thingWish/getUserWishList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21819, '127.0.0.1', '2024-06-30 20:20:42.953', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thingCollect/getUserCollectList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21820, '127.0.0.1', '2024-06-30 20:20:42.963', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21821, '127.0.0.1', '2024-06-30 20:20:42.977', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (21822, '127.0.0.1', '2024-06-30 20:20:45.893', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/userOrderList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21823, '127.0.0.1', '2024-06-30 20:20:46.560', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/comment/listUserComments', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (21824, '127.0.0.1', '2024-06-30 20:21:19.748', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21825, '127.0.0.1', '2024-06-30 20:21:19.751', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (21826, '127.0.0.1', '2024-06-30 20:21:20.075', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (21827, '127.0.0.1', '2024-06-30 20:21:20.075', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (21828, '127.0.0.1', '2024-06-30 20:21:20.075', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/comment/listUserComments', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21829, '127.0.0.1', '2024-06-30 20:21:20.076', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thingCollect/getUserCollectList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (21830, '127.0.0.1', '2024-06-30 20:21:20.085', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thingWish/getUserWishList', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (21831, '127.0.0.1', '2024-06-30 20:21:20.090', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21832, '127.0.0.1', '2024-06-30 20:21:21.826', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (21833, '127.0.0.1', '2024-06-30 20:21:21.831', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21834, '127.0.0.1', '2024-06-30 20:21:21.838', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/recommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (21835, '127.0.0.1', '2024-06-30 20:21:22.453', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (21836, '127.0.0.1', '2024-06-30 20:21:22.455', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21837, '127.0.0.1', '2024-06-30 20:21:22.456', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thingWish/getUserWishList', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21838, '127.0.0.1', '2024-06-30 20:21:22.458', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thingCollect/getUserCollectList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21839, '127.0.0.1', '2024-06-30 20:21:22.461', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (21840, '127.0.0.1', '2024-06-30 20:21:22.471', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21841, '127.0.0.1', '2024-06-30 20:21:23.494', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/userOrderList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21842, '127.0.0.1', '2024-06-30 20:21:23.994', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/comment/listUserComments', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (21843, '127.0.0.1', '2024-06-30 20:21:24.901', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/userOrderList', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21844, '127.0.0.1', '2024-06-30 20:21:26.398', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21845, '127.0.0.1', '2024-06-30 20:21:26.404', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21846, '127.0.0.1', '2024-06-30 20:21:26.411', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/recommend', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (21847, '127.0.0.1', '2024-06-30 20:22:02.717', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21848, '127.0.0.1', '2024-06-30 20:22:02.717', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21849, '127.0.0.1', '2024-06-30 20:22:02.717', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21850, '127.0.0.1', '2024-06-30 20:22:02.720', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (21851, '127.0.0.1', '2024-06-30 20:22:04.358', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (21852, '127.0.0.1', '2024-06-30 20:22:04.377', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21853, '127.0.0.1', '2024-06-30 20:22:05.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (21854, '127.0.0.1', '2024-06-30 20:22:05.184', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21855, '127.0.0.1', '2024-06-30 20:22:05.762', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'OPTIONS', NULL, '1');
INSERT INTO `b_op_log` VALUES (21856, '127.0.0.1', '2024-06-30 20:22:05.791', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (21857, '127.0.0.1', '2024-06-30 20:22:06.258', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'OPTIONS', NULL, '1');
INSERT INTO `b_op_log` VALUES (21858, '127.0.0.1', '2024-06-30 20:22:06.286', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (21859, '127.0.0.1', '2024-06-30 20:22:06.772', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (21860, '127.0.0.1', '2024-06-30 20:22:06.784', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21861, '127.0.0.1', '2024-06-30 20:22:07.407', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (21862, '127.0.0.1', '2024-06-30 20:22:07.942', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (21863, '127.0.0.1', '2024-06-30 20:22:08.408', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21864, '127.0.0.1', '2024-06-30 20:22:08.877', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21865, '127.0.0.1', '2024-06-30 20:22:09.597', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (21866, '127.0.0.1', '2024-06-30 20:22:10.583', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (21867, '127.0.0.1', '2024-06-30 20:22:11.092', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (21868, '127.0.0.1', '2024-06-30 20:22:12.096', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (21869, '127.0.0.1', '2024-06-30 20:22:12.670', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (21870, '127.0.0.1', '2024-06-30 20:22:13.369', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (21871, '127.0.0.1', '2024-06-30 20:22:13.820', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (21872, '127.0.0.1', '2024-06-30 20:22:14.344', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (21873, '127.0.0.1', '2024-06-30 20:22:14.846', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21874, '127.0.0.1', '2024-06-30 20:22:18.073', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21875, '127.0.0.1', '2024-06-30 20:22:18.078', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (21876, '127.0.0.1', '2024-06-30 20:22:21.276', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (21877, '127.0.0.1', '2024-06-30 20:22:21.277', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21878, '127.0.0.1', '2024-06-30 20:22:21.283', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/recommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (21879, '127.0.0.1', '2024-06-30 20:22:21.879', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21880, '127.0.0.1', '2024-06-30 20:22:21.879', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21881, '127.0.0.1', '2024-06-30 20:22:21.880', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thingCollect/getUserCollectList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21882, '127.0.0.1', '2024-06-30 20:22:21.880', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thingWish/getUserWishList', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21883, '127.0.0.1', '2024-06-30 20:22:21.891', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21884, '127.0.0.1', '2024-06-30 20:22:21.900', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21885, '127.0.0.1', '2024-06-30 20:22:23.320', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thingCollect/getUserCollectList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (21886, '127.0.0.1', '2024-06-30 20:22:24.389', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/comment/listUserComments', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21887, '127.0.0.1', '2024-06-30 20:22:24.974', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/userOrderList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21888, '127.0.0.1', '2024-06-30 20:22:25.837', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/comment/listUserComments', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (21889, '127.0.0.1', '2024-06-30 20:22:26.403', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (21890, '127.0.0.1', '2024-06-30 20:22:28.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21891, '127.0.0.1', '2024-06-30 20:22:29.047', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/comment/listUserComments', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21892, '127.0.0.1', '2024-06-30 20:22:31.674', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21893, '127.0.0.1', '2024-06-30 20:22:32.735', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21894, '127.0.0.1', '2024-06-30 20:22:33.591', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21895, '127.0.0.1', '2024-06-30 20:22:34.152', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/order/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21896, '127.0.0.1', '2024-06-30 20:22:35.432', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/overview/count', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (21897, '127.0.0.1', '2024-06-30 20:22:36.450', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21898, '127.0.0.1', '2024-06-30 20:22:37.262', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21899, '127.0.0.1', '2024-06-30 20:22:38.188', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21900, '127.0.0.1', '2024-06-30 20:22:38.193', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (21901, '127.0.0.1', '2024-06-30 20:22:42.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (21902, '127.0.0.1', '2024-06-30 20:22:42.126', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21903, '127.0.0.1', '2024-06-30 20:22:42.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/recommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (21904, '127.0.0.1', '2024-06-30 20:22:42.604', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (21905, '127.0.0.1', '2024-06-30 20:22:42.607', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (21906, '127.0.0.1', '2024-06-30 20:22:42.605', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (21907, '127.0.0.1', '2024-06-30 20:22:42.610', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '7');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pay_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_thing_id_4e345e2c_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_user_id_64854046_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `b_order_thing_id_4e345e2c_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_order
-- ----------------------------
INSERT INTO `b_order` VALUES (68, '7', '1719747873378', NULL, 103, 11, 1, '1719747873378', '2024-07-01 14:00-16:00', '王蒙', '123111111', '');
INSERT INTO `b_order` VALUES (69, '1', '1719748648709', NULL, 103, 11, 1, '1719748648709', '2024-07-02 10:00-12:00', '刘文静', '12111111111', '');
INSERT INTO `b_order` VALUES (70, '1', '1719749430683', NULL, 103, 11, 1, '1719749430683', '2024-07-02 14:00-16:00', '刘文', '1898888833', '');
INSERT INTO `b_order` VALUES (71, '1', '1719749462322', NULL, 99, 11, 1, '1719749462322', '2024-07-02 16:00-18:00', '刘文文', '13244441111', '');
INSERT INTO `b_order` VALUES (72, '7', '1719749741145', NULL, 101, 11, 1, '1719749741145', '2024-07-01 10:00-12:00', '刘文', '132111111111', '');
INSERT INTO `b_order` VALUES (73, '1', '1719749778039', NULL, 101, 11, 1, '1719749778039', '2024-07-01 10:00-12:00', '王丽', '13211111111', '');
INSERT INTO `b_order` VALUES (74, '1', '1719749819841', NULL, 106, 11, 1, '1719749819841', '2024-07-02 14:00-16:00', '李名利', '322222', '');

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(10) NULL DEFAULT NULL COMMENT '物品id',
  `score` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '打分',
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ip地址',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `thingId`(`thing_id`) USING BTREE,
  CONSTRAINT `b_record_ibfk_1` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_record
-- ----------------------------
INSERT INTO `b_record` VALUES (1, 100, '10', '127.0.0.2');
INSERT INTO `b_record` VALUES (2, 99, '5', '127.0.0.2');
INSERT INTO `b_record` VALUES (3, 101, '6', '127.0.0.2');
INSERT INTO `b_record` VALUES (4, 103, '2', '127.0.0.2');
INSERT INTO `b_record` VALUES (5, 101, '4', '127.0.0.1');
INSERT INTO `b_record` VALUES (6, 100, '1', '127.0.0.1');
INSERT INTO `b_record` VALUES (7, 103, '4', '127.0.0.1');
INSERT INTO `b_record` VALUES (8, 106, '3', '127.0.0.1');
INSERT INTO `b_record` VALUES (9, 99, '2', '127.0.0.1');
INSERT INTO `b_record` VALUES (10, 102, '1', '127.0.0.1');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score` int(11) NULL DEFAULT 0,
  `yysj` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wxts` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rate` int(10) NULL DEFAULT 3,
  `pv` int(11) NULL DEFAULT 0,
  `recommend_count` int(11) NULL DEFAULT 0,
  `wish_count` int(11) NULL DEFAULT 0,
  `collect_count` int(11) NULL DEFAULT 0,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  CONSTRAINT `b_thing_ibfk_1` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (99, '常春藤大学乒乓球馆', '20722f25-bf53-4b1e-8b11-6906fb7ae017.jpeg', '该体育场是远近闻名的体育场，体育场是在室外进行体育锻炼和比赛的场地、大型体育场为综合性 运动场 ，一般建有一个标准 田径场 ，在田径场内设置一个标准足球场（或 橄榄球场 ）。 场地四周设有看台，与其它配套设施一起可进行多种 体育项目 的训练和比赛。', '128', '0', 0, '9:00-22:00', '夏天炎热注意防暑', '人民路99号', '1716540269213', 3, 7, 0, 1, 1, 1, NULL);
INSERT INTO `b_thing` VALUES (100, '绿叶大学羽毛球馆', '8b7b81be-3b6f-44b7-8989-7c96bc89728c.jpeg', '该体育场是远近闻名的体育场，体育场是在室外进行体育锻炼和比赛的场地、大型体育场为综合性 运动场 ，一般建有一个标准 田径场 ，在田径场内设置一个标准足球场（或 橄榄球场 ）。 场地四周设有看台，与其它配套设施一起可进行多种 体育项目 的训练和比赛。', '22', '0', 0, '9:00-22:00', '提前带水', '人民路99号', '1716540269213', 3, 11, 0, 1, 1, 2, NULL);
INSERT INTO `b_thing` VALUES (101, '柳树大学拳击馆', '368a4646-4acd-4a5c-bd38-94199c6fbc59.jpeg', '该体育场是远近闻名的体育场，体育场是在室外进行体育锻炼和比赛的场地、大型体育场为综合性 运动场 ，一般建有一个标准 田径场 ，在田径场内设置一个标准足球场（或 橄榄球场 ）。 场地四周设有看台，与其它配套设施一起可进行多种 体育项目 的训练和比赛。', '128', '0', 0, '9:00-22:00', '夏天炎热注意防暑', '澳门路1290号', '1716540269213', 3, 10, 0, 1, 1, 15, NULL);
INSERT INTO `b_thing` VALUES (102, '某某足球场22', 'e32a4d1c-fc05-45e9-b488-5c17affda310.jpeg', '该体育场是远近闻名的体育场，体育场是在室外进行体育锻炼和比赛的场地、大型体育场为综合性 运动场 ，一般建有一个标准 田径场 ，在田径场内设置一个标准足球场（或 橄榄球场 ）。 场地四周设有看台，与其它配套设施一起可进行多种 体育项目 的训练和比赛。', '128', '0', 0, '9:00-22:00', '夏天炎热注意防暑', '澳门路1290号', '1716540269213', 3, 1, 0, 0, 0, 3, NULL);
INSERT INTO `b_thing` VALUES (103, '某某篮球馆', '831b315a-a247-42e8-b3b0-aba32d9b1d69.jpeg', '该体育场是远近闻名的体育场，体育场是在室外进行体育锻炼和比赛的场地、大型体育场为综合性 运动场 ，一般建有一个标准 田径场 ，在田径场内设置一个标准足球场（或 橄榄球场 ）。 场地四周设有看台，与其它配套设施一起可进行多种 体育项目 的训练和比赛。', '55', '0', 0, '9:00-22:00', '夏天炎热注意防暑', '人民路99号', '1716540269213', 3, 6, 0, 0, 0, 2, NULL);
INSERT INTO `b_thing` VALUES (104, 'A号乒乓球馆', '8cf8a334-051c-45d3-ac02-2bfb0882f707.jpeg', '该体育场是远近闻名的体育场，体育场是在室外进行体育锻炼和比赛的场地、大型体育场为综合性 运动场 ，一般建有一个标准 田径场 ，在田径场内设置一个标准足球场（或 橄榄球场 ）。 场地四周设有看台，与其它配套设施一起可进行多种 体育项目 的训练和比赛。', '128', '0', 0, '9:00-22:00', '夏天炎热注意防暑', '澳门路1290号', '1716540269213', 3, 0, 0, 0, 0, 2, NULL);
INSERT INTO `b_thing` VALUES (105, '测试乒乓球馆', '28c675ff-b011-41a2-98a0-43711358cd69.jpeg', '该体育场是远近闻名的体育场，体育场是在室外进行体育锻炼和比赛的场地、大型体育场为综合性 运动场 ，一般建有一个标准 田径场 ，在田径场内设置一个标准足球场（或 橄榄球场 ）。 场地四周设有看台，与其它配套设施一起可进行多种 体育项目 的训练和比赛。', '128', '0', 0, '9:00-22:00', '夏天炎热注意防暑', '人民路99号', '1716540269213', 3, 0, 0, 0, 0, 16, NULL);
INSERT INTO `b_thing` VALUES (106, '五棵松篮球馆', '8cb37981-1831-47e5-b250-e7d7c8a65f0d.jpeg', '该体育场是远近闻名的体育场，体育场是在室外进行体育锻炼和比赛的场地、大型体育场为综合性 运动场 ，一般建有一个标准 田径场 ，在田径场内设置一个标准足球场（或 橄榄球场 ）。 场地四周设有看台，与其它配套设施一起可进行多种 体育项目 的训练和比赛。', '88', '0', 0, '9:00-22:00', '夏天炎热注意防暑', '人民路99号', '1716540269213', 3, 3, 0, 0, 0, 2, NULL);

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (21, 99, 11);
INSERT INTO `b_thing_collect` VALUES (20, 100, 11);
INSERT INTO `b_thing_collect` VALUES (19, 101, 11);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (25, 99, 11);
INSERT INTO `b_thing_wish` VALUES (24, 100, 11);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT 0,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT 0,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (10, 'admin', '6d854ca8c1479c069dad7d5b7ccdfd28', '3', '0', NULL, NULL, NULL, NULL, NULL, NULL, '1686407694426', 0, NULL, 0, '9116392dc24b7b84483ba00b0d72b80c');
INSERT INTO `b_user` VALUES (11, 'ddd', 'a4c9855f2a97a78b604d0fb258880b21', '1', '0', 'dfa32', NULL, NULL, 'ad', NULL, 'd', '1686409115429', 0, '111@aa.com', 1, 'a4c9855f2a97a78b604d0fb258880b21');
INSERT INTO `b_user` VALUES (12, 'admin111', 'e92035e1e4e340de1eaa22b9e8bb586b', '3', '0', NULL, NULL, NULL, NULL, NULL, NULL, '1686448633036', 0, NULL, 0, 'e92035e1e4e340de1eaa22b9e8bb586b');
INSERT INTO `b_user` VALUES (13, 'aaa', 'e0ef3639469fcba73c6b5288cefbbede', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, '1705999747721', 0, NULL, 0, 'e0ef3639469fcba73c6b5288cefbbede');
INSERT INTO `b_user` VALUES (15, 'aaf', '714a328c25aafbd7deb6fa9b187bbca5', '2', '0', 'fff', NULL, '09', NULL, NULL, NULL, '1716557740722', 0, NULL, 0, 'a514eafcf1dc602b69a842cd64e71083');
INSERT INTO `b_user` VALUES (16, 'admin123', 'f159053ec4a0e4a0e3c66cfd7c254853', '3', '0', NULL, NULL, NULL, NULL, NULL, NULL, '1716559102822', 0, NULL, 0, 'f159053ec4a0e4a0e3c66cfd7c254853');

SET FOREIGN_KEY_CHECKS = 1;
