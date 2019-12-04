Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 036F9197E30
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 16:16:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0786B89622;
	Mon, 30 Mar 2020 14:16:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx.sdf.org (mx.sdf.org [205.166.94.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C047389AB7
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 Mar 2020 16:43:17 +0000 (UTC)
Received: from sdf.org (IDENT:lkml@sdf.lonestar.org [205.166.94.16])
 by mx.sdf.org (8.15.2/8.14.5) with ESMTPS id 02SGh7AX024059
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits) verified NO);
 Sat, 28 Mar 2020 16:43:07 GMT
Received: (from lkml@localhost)
 by sdf.org (8.15.2/8.12.8/Submit) id 02SGh72M012415;
 Sat, 28 Mar 2020 16:43:07 GMT
Message-Id: <202003281643.02SGh72M012415@sdf.org>
From: George Spelvin <lkml@sdf.org>
Date: Wed, 4 Dec 2019 02:23:54 -0500
To: linux-kernel@vger.kernel.org, lkml@sdf.org
X-Mailman-Approved-At: Mon, 30 Mar 2020 14:16:11 +0000
Subject: [Intel-gfx] [RFC PATCH v1 03/50] fault-inject: Shrink struct
 fault_attr
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
Cc: intel-gfx@lists.freedesktop.org, Akinobu Mita <akinobu.mita@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Probaility has a useful range of 0 to 100.
Verbose has a useful range of 0 to 2.

Reduce them both from unsigned long to unsigned char.  Since there
was already a hole they can fit into, this saves 16 bytes.

There's one consequential fix required: i915 selftests set the
probability to 999 for some reason, which had the same effect as
100.  Leaving it alone would have worked with a compiler warning
(999 % 256 = 231 is also >= 100, so would have the same effect),
but it seemed better to clean it up.

Signed-off-by: George Spelvin <lkml@sdf.org>
Cc: Akinobu Mita <akinobu.mita@gmail.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
---
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |  2 +-
 include/linux/fault-inject.h                  |  4 ++--
 lib/fault-inject.c                            | 10 +++++-----
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index 3f7e80fb3bbd1..3342e3c0ec10b 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -901,7 +901,7 @@ static int shrink_hole(struct drm_i915_private *i915,
 	unsigned long prime;
 	int err;
 
-	vm->fault_attr.probability = 999;
+	vm->fault_attr.probability = 100;
 	atomic_set(&vm->fault_attr.times, -1);
 
 	for_each_prime_number_from(prime, 0, ULONG_MAX - 1) {
diff --git a/include/linux/fault-inject.h b/include/linux/fault-inject.h
index e525f6957c49f..094dd7d2a2ce6 100644
--- a/include/linux/fault-inject.h
+++ b/include/linux/fault-inject.h
@@ -14,11 +14,11 @@
  * Documentation/fault-injection/fault-injection.rst
  */
 struct fault_attr {
-	unsigned long probability;
 	unsigned long interval;
 	atomic_t times;
 	atomic_t space;
-	unsigned long verbose;
+	unsigned char probability;
+	unsigned char verbose;
 	bool task_filter;
 	unsigned long stacktrace_depth;
 	unsigned long require_start;
diff --git a/lib/fault-inject.c b/lib/fault-inject.c
index e20151fa5515e..406e27ba8e60f 100644
--- a/lib/fault-inject.c
+++ b/lib/fault-inject.c
@@ -17,13 +17,13 @@
  */
 int setup_fault_attr(struct fault_attr *attr, char *str)
 {
-	unsigned long probability;
+	unsigned char probability;
 	unsigned long interval;
 	int times;
 	int space;
 
 	/* "<interval>,<probability>,<space>,<times>" */
-	if (sscanf(str, "%lu,%lu,%d,%d",
+	if (sscanf(str, "%lu,%hhu,%d,%d",
 			&interval, &probability, &space, &times) < 4) {
 		printk(KERN_WARNING
 			"FAULT_INJECTION: failed to parse arguments\n");
@@ -43,7 +43,7 @@ static void fail_dump(struct fault_attr *attr)
 {
 	if (attr->verbose > 0 && __ratelimit(&attr->ratelimit_state)) {
 		printk(KERN_NOTICE "FAULT_INJECTION: forcing a failure.\n"
-		       "name %pd, interval %lu, probability %lu, "
+		       "name %pd, interval %lu, probability %d, "
 		       "space %d, times %d\n", attr->dname,
 		       attr->interval, attr->probability,
 		       atomic_read(&attr->space),
@@ -204,11 +204,11 @@ struct dentry *fault_create_debugfs_attr(const char *name,
 	if (IS_ERR(dir))
 		return dir;
 
-	debugfs_create_ul("probability", mode, dir, &attr->probability);
+	debugfs_create_u8("probability", mode, dir, &attr->probability);
 	debugfs_create_ul("interval", mode, dir, &attr->interval);
 	debugfs_create_atomic_t("times", mode, dir, &attr->times);
 	debugfs_create_atomic_t("space", mode, dir, &attr->space);
-	debugfs_create_ul("verbose", mode, dir, &attr->verbose);
+	debugfs_create_u8("verbose", mode, dir, &attr->verbose);
 	debugfs_create_u32("verbose_ratelimit_interval_ms", mode, dir,
 			   &attr->ratelimit_state.interval);
 	debugfs_create_u32("verbose_ratelimit_burst", mode, dir,
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
