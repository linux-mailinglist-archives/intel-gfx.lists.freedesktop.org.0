Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AA521BDB6
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 21:32:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00C036ECFA;
	Fri, 10 Jul 2020 19:32:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 044EC6ECFA
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 19:32:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21782844-1500050 
 for multiple; Fri, 10 Jul 2020 20:32:41 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 20:32:39 +0100
Message-Id: <20200710193239.5419-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Pull printing GT capabilities on
 error to err_print_gt
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
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We try not to assume that we captured any information, and so have to
check that error->gt exists before reporting. This check was missed in
err_print_capabilities, so lets break up the capability info and push it
into the GT dump.

We are still a long way from yamlifying this output!

Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Fixes: 792592e72aba ("drm/i915: Move the engine mask to intel_gt_info")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 678ddec3237f..6a3a2ce0b394 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -626,8 +626,6 @@ static void err_print_capabilities(struct drm_i915_error_state_buf *m,
 
 	intel_device_info_print_static(&error->device_info, &p);
 	intel_device_info_print_runtime(&error->runtime_info, &p);
-	intel_gt_info_print(&error->gt->info, &p);
-	intel_sseu_print_topology(&error->gt->info.sseu, &p);
 	intel_driver_caps_print(&error->driver_caps, &p);
 }
 
@@ -678,6 +676,15 @@ static void err_free_sgl(struct scatterlist *sgl)
 	}
 }
 
+static void err_print_gt_info(struct drm_i915_error_state_buf *m,
+			      struct intel_gt_coredump *gt)
+{
+	struct drm_printer p = i915_error_printer(m);
+
+	intel_gt_info_print(&gt->info, &p);
+	intel_sseu_print_topology(&gt->info.sseu, &p);
+}
+
 static void err_print_gt(struct drm_i915_error_state_buf *m,
 			 struct intel_gt_coredump *gt)
 {
@@ -734,6 +741,8 @@ static void err_print_gt(struct drm_i915_error_state_buf *m,
 
 	if (gt->uc)
 		err_print_uc(m, gt->uc);
+
+	err_print_gt_info(m, gt);
 }
 
 static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
