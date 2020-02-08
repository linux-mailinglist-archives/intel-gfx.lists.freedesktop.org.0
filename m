Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE7D1567EE
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Feb 2020 23:01:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C81EC6E41B;
	Sat,  8 Feb 2020 22:01:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB1336E41B
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Feb 2020 22:01:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20160942-1500050 
 for multiple; Sat, 08 Feb 2020 22:01:07 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  8 Feb 2020 22:01:06 +0000
Message-Id: <20200208220106.3311791-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200208220106.3311791-1-chris@chris-wilson.co.uk>
References: <20200208220106.3311791-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/gtt: Downgrade gen7 (ivb, byt,
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Full-ppgtt on gen7 is proving to be highly unstable and not robust.

Fixes: 3cd6e8860ecd ("drm/i915/gen7: Re-enable full-ppgtt for ivb & hsw")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
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
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
