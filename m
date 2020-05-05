Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 973001C5533
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 14:14:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95AE589F53;
	Tue,  5 May 2020 12:14:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38D5489F53;
 Tue,  5 May 2020 12:14:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21117928-1500050 
 for multiple; Tue, 05 May 2020 13:13:22 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 May 2020 13:13:18 +0100
Message-Id: <20200505121318.2816478-1-chris@chris-wilson.co.uk>
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
Cc: igt-dev@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
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
 lib/i915/gem.c | 83 ++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 83 insertions(+)

diff --git a/lib/i915/gem.c b/lib/i915/gem.c
index b2717ba6a..6fa8abf21 100644
--- a/lib/i915/gem.c
+++ b/lib/i915/gem.c
@@ -22,6 +22,7 @@
  *
  */
 
+#include <dirent.h>
 #include <fcntl.h>
 #include <sys/ioctl.h>
 
@@ -30,6 +31,87 @@
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
@@ -66,6 +148,7 @@ void igt_require_gem(int i915)
 	 * sequences of batches.
 	 */
 	reset_device(i915);
+	restore_defaults(i915);
 
 	err = 0;
 	if (ioctl(i915, DRM_IOCTL_I915_GEM_THROTTLE)) {
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
