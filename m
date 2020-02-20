Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B1716548A
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 02:43:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB9276E0D7;
	Thu, 20 Feb 2020 01:43:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DE4A6E897
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 01:43:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20282067-1500050 
 for multiple; Thu, 20 Feb 2020 01:43:29 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Feb 2020 01:43:25 +0000
Message-Id: <20200220014325.1527804-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200220014325.1527804-1-chris@chris-wilson.co.uk>
References: <20200220014325.1527804-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] tidy
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

---
 drivers/gpu/drm/i915/gt/gen7_renderclear.c          | 13 +++++++------
 .../gt/{gen7_5_clearbuffer.h => hsw_clear_kernel.c} | 10 +---------
 .../gt/{gen7_clearbuffer.h => ivb_clear_kernel.c}   | 10 +---------
 3 files changed, 9 insertions(+), 24 deletions(-)
 rename drivers/gpu/drm/i915/gt/{gen7_5_clearbuffer.h => hsw_clear_kernel.c} (93%)
 rename drivers/gpu/drm/i915/gt/{gen7_clearbuffer.h => ivb_clear_kernel.c} (93%)

diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
index beeb2e82c6fe..adac4487d793 100644
--- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
+++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
@@ -4,8 +4,6 @@
  */
 
 #include "gen7_renderclear.h"
-#include "gen7_5_clearbuffer.h"
-#include "gen7_clearbuffer.h"
 #include "i915_drv.h"
 #include "intel_gpu_commands.h"
 
@@ -21,8 +19,11 @@ struct cb_kernel {
 
 #define CB_KERNEL(name) { .data = (name), .size = sizeof(name) }
 
-static const struct cb_kernel cb_kernel_gen7 = CB_KERNEL(ivb_eu_kernel);
-static const struct cb_kernel cb_kernel_gen7_5 = CB_KERNEL(hsw_eu_kernel);
+#include "ivb_clear_kernel.c"
+static const struct cb_kernel cb_kernel_ivb = CB_KERNEL(ivb_clear_kernel);
+
+#include "hsw_clear_kernel.c"
+static const struct cb_kernel cb_kernel_hsw = CB_KERNEL(hsw_clear_kernel);
 
 struct batch_chunk {
 	struct i915_vma *vma;
@@ -355,8 +356,8 @@ static void emit_batch(struct i915_vma * const vma,
 	interface_descriptor =
 		gen7_fill_interface_descriptor(&state, bv,
 					       IS_HASWELL(i915) ?
-					       &cb_kernel_gen7_5 :
-					       &cb_kernel_gen7,
+					       &cb_kernel_hsw :
+					       &cb_kernel_ivb,
 					       desc_count);
 	gen7_emit_pipeline_flush(&cmds);
 	batch_add(&cmds, PIPELINE_SELECT | PIPELINE_SELECT_MEDIA);
diff --git a/drivers/gpu/drm/i915/gt/gen7_5_clearbuffer.h b/drivers/gpu/drm/i915/gt/hsw_clear_kernel.c
similarity index 93%
rename from drivers/gpu/drm/i915/gt/gen7_5_clearbuffer.h
rename to drivers/gpu/drm/i915/gt/hsw_clear_kernel.c
index 126e8133b951..3061de70a88a 100644
--- a/drivers/gpu/drm/i915/gt/gen7_5_clearbuffer.h
+++ b/drivers/gpu/drm/i915/gt/hsw_clear_kernel.c
@@ -5,13 +5,7 @@
  * Generate by: Intel-gpu-tools on Thu 13 Feb 2020 01:06:41 AM UTC
  */
 
-#ifndef __GEN7_5_CLEARBUFFER_H__
-#define __GEN7_5_CLEARBUFFER_H__
-
-#include <linux/types.h>
-
-/* Media CB Kernel for gen7.5 devices */
-const u32 hsw_eu_kernel[] = {
+static const u32 hsw_clear_kernel[] = {
 	0x00000001, 0x26020128, 0x00000024, 0x00000000,
 	0x00000040, 0x20280c21, 0x00000028, 0x00000001,
 	0x01000010, 0x20000c20, 0x0000002c, 0x00000000,
@@ -65,5 +59,3 @@ const u32 hsw_eu_kernel[] = {
 	0x00010220, 0x34001c00, 0x00001400, 0xffffffc0,
 	0x07600032, 0x20000fa0, 0x008d0fe0, 0x82000010,
 };
-
-#endif /* __GEN7_5_CLEARBUFFER_H__ */
diff --git a/drivers/gpu/drm/i915/gt/gen7_clearbuffer.h b/drivers/gpu/drm/i915/gt/ivb_clear_kernel.c
similarity index 93%
rename from drivers/gpu/drm/i915/gt/gen7_clearbuffer.h
rename to drivers/gpu/drm/i915/gt/ivb_clear_kernel.c
index 524189d90ded..b1cd3479527e 100644
--- a/drivers/gpu/drm/i915/gt/gen7_clearbuffer.h
+++ b/drivers/gpu/drm/i915/gt/ivb_clear_kernel.c
@@ -5,13 +5,7 @@
  * Generate by: Intel-gpu-tools on Thu 13 Feb 2020 01:05:56 AM UTC
  */
 
-#ifndef __GEN7_CLEARBUFFER_H__
-#define __GEN7_CLEARBUFFER_H__
-
-#include <linux/types.h>
-
-/* Media CB Kernel for gen7 devices */
-const u32 ivb_eu_kernel[] = {
+static const u32 ivb_clear_kernel[] = {
 	0x00000001, 0x26020128, 0x00000024, 0x00000000,
 	0x00000040, 0x20280c21, 0x00000028, 0x00000001,
 	0x01000010, 0x20000c20, 0x0000002c, 0x00000000,
@@ -65,5 +59,3 @@ const u32 ivb_eu_kernel[] = {
 	0x00010220, 0x34001c00, 0x00001400, 0xfffffff8,
 	0x07600032, 0x20000fa0, 0x008d0fe0, 0x82000010,
 };
-
-#endif /* __GEN7_CLEARBUFFER_H__ */
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
