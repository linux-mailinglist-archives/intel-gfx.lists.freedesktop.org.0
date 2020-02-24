Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C718C16A395
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 11:11:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11E256E0A1;
	Mon, 24 Feb 2020 10:11:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 665A66E0A1
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 10:11:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20329231-1500050 
 for multiple; Mon, 24 Feb 2020 10:11:21 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Feb 2020 10:11:20 +0000
Message-Id: <20200224101120.4024481-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gtt: Downgrade gen7 (ivb, byt,
 hsw) back to aliasing-ppgtt
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
Cc: Jani Nikula <jani.nikula@intel.com>, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Full-ppgtt on gen7 is proving to be highly unstable and not robust.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/694
Fixes: 3cd6e8860ecd ("drm/i915/gen7: Re-enable full-ppgtt for ivb & hsw")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Dave Airlie <airlied@redhat.com>
Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 24b1f0ce8743..1d678aa7d420 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -437,7 +437,7 @@ static const struct intel_device_info snb_m_gt2_info = {
 	.has_rc6 = 1, \
 	.has_rc6p = 1, \
 	.has_rps = true, \
-	.ppgtt_type = INTEL_PPGTT_FULL, \
+	.ppgtt_type = INTEL_PPGTT_ALIASING, \
 	.ppgtt_size = 31, \
 	IVB_PIPE_OFFSETS, \
 	IVB_CURSOR_OFFSETS, \
@@ -494,7 +494,7 @@ static const struct intel_device_info vlv_info = {
 	.has_rps = true,
 	.display.has_gmch = 1,
 	.display.has_hotplug = 1,
-	.ppgtt_type = INTEL_PPGTT_FULL,
+	.ppgtt_type = INTEL_PPGTT_ALIASING,
 	.ppgtt_size = 31,
 	.has_snoop = true,
 	.has_coherent_ggtt = false,
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
