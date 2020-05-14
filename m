Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3E81D28FD
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 09:45:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6670F6EAD3;
	Thu, 14 May 2020 07:44:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED3286EAD2;
 Thu, 14 May 2020 07:44:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21195254-1500050 
 for multiple; Thu, 14 May 2020 08:44:14 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: igt-dev@lists.freedesktop.org
Date: Thu, 14 May 2020 08:44:12 +0100
Message-Id: <20200514074412.962179-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] lib/i915: Reset all engine properties to
 defaults prior to the start of a test
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We need each test in an isolated context, so that bad results from one
test do not interfere with the next. In particular, we want to clean up
the device and reset it to the defaults so that they are known for the
next test, and the test can focus on behaviour it wants to control.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 lib/i915/gem.c      | 85 +++++++++++++++++++++++++++++++++++++++++++++
 lib/igt_dummyload.c |  2 --
 lib/igt_gt.c        |  2 --
 3 files changed, 85 insertions(+), 4 deletions(-)

diff --git a/lib/i915/gem.c b/lib/i915/gem.c
index cabd23768..3ef31ed33 100644
--- a/lib/i915/gem.c
+++ b/lib/i915/gem.c
@@ -22,6 +22,7 @@
  *
  */
 
+#include <dirent.h>
 #include <fcntl.h>
 #include <sys/ioctl.h>
 
@@ -30,6 +31,89 @@
 #include "igt_debugfs.h"
 #include "igt_sysfs.h"
 
+static void __restore_defaults(int engine)
+{
+	struct dirent *de;
+	int defaults;
+	DIR *dir;
+
+	defaults = openat(engine, ".defaults", O_RDONLY);
+	if (defaults < 0)
+		return;
+
+	dir = fdopendir(defaults);
+	if (!dir) {
+		close(defaults);
+		return;
+	}
+
+	while ((de = readdir(dir))) {
+		char buf[256];
+		int fd, len;
+
+		if (*de->d_name == '.')
+			continue;
+
+		fd = openat(defaults, de->d_name, O_RDONLY);
+		if (fd < 0)
+			continue;
+
+		len = read(fd, buf, sizeof(buf));
+		close(fd);
+		if (len < 0)
+			continue;
+
+		fd = openat(engine, de->d_name, O_WRONLY);
+		if (fd < 0)
+			continue;
+
+		write(fd, buf, len);
+		close(fd);
+	}
+
+	closedir(dir);
+}
+
+static void restore_defaults(int i915)
+{
+	struct dirent *de;
+	int engines;
+	DIR *dir;
+	int sys;
+
+	sys = igt_sysfs_open(i915);
+	if (sys < 0)
+		return;
+
+	engines = openat(sys, "engine", O_RDONLY);
+	if (engines < 0)
+		goto close_sys;
+
+	dir = fdopendir(engines);
+	if (!dir) {
+		close(engines);
+		goto close_sys;
+	}
+
+	while ((de = readdir(dir))) {
+		int engine;
+
+		if (*de->d_name == '.')
+			continue;
+
+		engine = openat(engines, de->d_name, O_RDONLY);
+		if (engine < 0)
+			continue;
+
+		__restore_defaults(engine);
+		close(engine);
+	}
+
+	closedir(dir);
+close_sys:
+	close(sys);
+}
+
 static void reset_device(int i915)
 {
 	int dir;
@@ -66,6 +150,7 @@ void igt_require_gem(int i915)
 	 * sequences of batches.
 	 */
 	reset_device(i915);
+	restore_defaults(i915);
 
 	err = 0;
 	if (ioctl(i915, DRM_IOCTL_I915_GEM_THROTTLE)) {
diff --git a/lib/igt_dummyload.c b/lib/igt_dummyload.c
index 0b52eb5b5..a733bd674 100644
--- a/lib/igt_dummyload.c
+++ b/lib/igt_dummyload.c
@@ -355,8 +355,6 @@ igt_spin_factory(int fd, const struct igt_spin_factory *opts)
 {
 	igt_spin_t *spin;
 
-	igt_require_gem(fd);
-
 	if (opts->engine != ALL_ENGINES) {
 		struct intel_execution_engine2 e;
 		int class;
diff --git a/lib/igt_gt.c b/lib/igt_gt.c
index a806b567a..101627973 100644
--- a/lib/igt_gt.c
+++ b/lib/igt_gt.c
@@ -172,8 +172,6 @@ igt_hang_t igt_allow_hang(int fd, unsigned ctx, unsigned flags)
 	 * to recover from reset and for it to remain wedged. It's hard to
 	 * say even if we do hang/reset making the test suspect.
 	 */
-	igt_require_gem(fd);
-
 	if (!igt_check_boolean_env_var("IGT_HANG", true))
 		igt_skip("hang injection disabled by user [IGT_HANG=0]\n");
 	gem_context_require_bannable(fd);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
