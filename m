Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BD9184FE0
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 21:05:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03B666EC59;
	Fri, 13 Mar 2020 20:05:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D0336EC52;
 Fri, 13 Mar 2020 20:04:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20554235-1500050 
 for multiple; Fri, 13 Mar 2020 20:04:50 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Mar 2020 20:04:50 +0000
Message-Id: <20200313200451.208504-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/2] lib/i915: Allow writing of engine
 properties
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Make setting engine tunables easier!

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 lib/i915/gem_engine_topology.c | 49 +++++++++++++++++++++++++++-------
 lib/i915/gem_engine_topology.h |  4 +++
 2 files changed, 44 insertions(+), 9 deletions(-)

diff --git a/lib/i915/gem_engine_topology.c b/lib/i915/gem_engine_topology.c
index 6eca28236..79bc977eb 100644
--- a/lib/i915/gem_engine_topology.c
+++ b/lib/i915/gem_engine_topology.c
@@ -333,13 +333,25 @@ bool gem_engine_is_equal(const struct intel_execution_engine2 *e1,
 	return e1->class == e2->class && e1->instance == e2->instance;
 }
 
-static FILE *__open_attr(int dir, ...)
+static int reopen(int dir, int mode)
+{
+	char buf[128];
+	int fd;
+
+	snprintf(buf, sizeof(buf), "/proc/self/fd/%d", dir);
+	fd = open(buf, mode);
+	close(dir);
+
+	return fd;
+}
+
+static FILE *__open_attr(int dir, const char *mode, ...)
 {
 	const char *path;
 	FILE *file;
 	va_list ap;
 
-	va_start(ap, dir);
+	va_start(ap, mode);
 	while (dir >= 0 && (path = va_arg(ap, const char *))) {
 		int fd;
 
@@ -350,7 +362,10 @@ static FILE *__open_attr(int dir, ...)
 	}
 	va_end(ap);
 
-	file = fdopen(dir, "r");
+	if (*mode != 'r') /* clumsy, but fun */
+		dir = reopen(dir, O_RDWR);
+
+	file = fdopen(dir, mode);
 	if (!file) {
 		close(dir);
 		return NULL;
@@ -365,13 +380,9 @@ int gem_engine_property_scanf(int i915, const char *engine, const char *attr,
 	FILE *file;
 	va_list ap;
 	int ret;
-	int fd;
-
-	fd = igt_sysfs_open(i915);
-	if (fd < 0)
-		return fd;
 
-	file = __open_attr(fd, "engine", engine, attr, NULL);
+	file = __open_attr(igt_sysfs_open(i915), "r",
+			   "engine", engine, attr, NULL);
 	if (!file)
 		return -1;
 
@@ -383,6 +394,26 @@ int gem_engine_property_scanf(int i915, const char *engine, const char *attr,
 	return ret;
 }
 
+int gem_engine_property_printf(int i915, const char *engine, const char *attr,
+			       const char *fmt, ...)
+{
+	FILE *file;
+	va_list ap;
+	int ret;
+
+	file = __open_attr(igt_sysfs_open(i915), "w",
+			   "engine", engine, attr, NULL);
+	if (!file)
+		return -1;
+
+	va_start(ap, fmt);
+	ret = vfprintf(file, fmt, ap);
+	va_end(ap);
+
+	fclose(file);
+	return ret;
+}
+
 uint32_t gem_engine_mmio_base(int i915, const char *engine)
 {
 	unsigned int mmio = 0;
diff --git a/lib/i915/gem_engine_topology.h b/lib/i915/gem_engine_topology.h
index 219c84b72..5e3440fa8 100644
--- a/lib/i915/gem_engine_topology.h
+++ b/lib/i915/gem_engine_topology.h
@@ -78,6 +78,10 @@ struct intel_execution_engine2 gem_eb_flags_to_engine(unsigned int flags);
 __attribute__((format(scanf, 4, 5)))
 int gem_engine_property_scanf(int i915, const char *engine, const char *attr,
 			      const char *fmt, ...);
+__attribute__((format(printf, 4, 5)))
+int gem_engine_property_printf(int i915, const char *engine, const char *attr,
+			       const char *fmt, ...);
+
 uint32_t gem_engine_mmio_base(int i915, const char *engine);
 
 #endif /* GEM_ENGINE_TOPOLOGY_H */
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
