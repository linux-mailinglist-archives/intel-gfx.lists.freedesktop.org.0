Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C76C98C661
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 21:58:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E41B210E67B;
	Tue,  1 Oct 2024 19:58:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q/V0+8X1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45F0110E67B
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2024 19:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727812697; x=1759348697;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2Z/zXi3X/u4dsBDtQhfTK2Z82hzMr/RsuNeGYbPpo0g=;
 b=Q/V0+8X1AKITonwhWPe5hMl7Fpj3xXGw17PIdMc/frgiHiAQPpxB+k9U
 U+61VRXNmk4V/O1J6gqFHGv1kmvBST5BxG/TcU17HJA2DRjg+BATWgaKN
 Sql5fLaTD72LNA/unj4y7pym4H3Q3HAR6lpGCfs3eVArRimRd+Fn8Ck5U
 JJo6aGfDnZIscmNrHKTjpJS7ABpCpFIalP6hAD6MuQ0DZKEbfda7037+I
 Ai1+qqplUa21iS6pH6G4FAoAFdK8uzT2ak7O5Q1cTaoc8iPa9BIMuxZmn
 UdppuWyja1YG0zeBCbrT1X7Px40O4XAhz9aEBLjJ1bFeO2SaZd+WwL1LZ w==;
X-CSE-ConnectionGUID: A0eDNd+wQUykNbeXazzjXg==
X-CSE-MsgGUID: QccR7cm/S7y3kxcJHrhQEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="26852043"
X-IronPort-AV: E=Sophos;i="6.11,169,1725346800"; d="scan'208";a="26852043"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 12:58:17 -0700
X-CSE-ConnectionGUID: 7Juupkv2SwCCAmhAn2XhDw==
X-CSE-MsgGUID: hqIJMOcSS0alvQgzO03R3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,169,1725346800"; d="scan'208";a="73899377"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 01 Oct 2024 12:58:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Oct 2024 22:58:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/4] drm/i915: Apply the i915gm/i945gm irq C-state w/a to CRC
 interrupts
Date: Tue,  1 Oct 2024 22:58:03 +0300
Message-ID: <20241001195803.3371-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241001195803.3371-1-ville.syrjala@linux.intel.com>
References: <20241001195803.3371-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Turns out CRC interrupts also fail to wake up i915gm/i945gm from
C2+. I suppose this is a generic problem, but for most other
interrupts the system will be busy enough already prior to
the irq being issued. But CRC interrupts are like vblank interrupts
and only fire once per frame, so plenty of time to fall asleep
in between them.

Apply the same core clock gating trick to CRC interrupts
that we use for vblank interrupts.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 14 +++++++++++++-
 drivers/gpu/drm/i915/display/intel_display_irq.h |  2 ++
 drivers/gpu/drm/i915/display/intel_pipe_crc.c    |  4 ++++
 3 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index feeb3a29972a..fa5a42fc8501 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1264,7 +1264,7 @@ static void i915gm_irq_cstate_wa_enable(struct drm_i915_private *i915)
 	lockdep_assert_held(&i915->drm.vblank_time_lock);
 
 	/*
-	 * Vblank interrupts fail to wake the device up from C2+.
+	 * Vblank/CRC interrupts fail to wake the device up from C2+.
 	 * Disabling render clock gating during C-states avoids
 	 * the problem. There is a small power cost so we do this
 	 * only when vblank interrupts are actually enabled.
@@ -1281,6 +1281,18 @@ static void i915gm_irq_cstate_wa_disable(struct drm_i915_private *i915)
 		intel_uncore_write(&i915->uncore, SCPD0, _MASKED_BIT_DISABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
 }
 
+void i915gm_irq_cstate_wa(struct drm_i915_private *i915, bool enable)
+{
+	spin_lock_irq(&i915->drm.vblank_time_lock);
+
+	if (enable)
+		i915gm_irq_cstate_wa_enable(i915);
+	else
+		i915gm_irq_cstate_wa_disable(i915);
+
+	spin_unlock_irq(&i915->drm.vblank_time_lock);
+}
+
 int i8xx_enable_vblank(struct drm_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index bf9d269d0e3f..4b493cff7b8e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -78,4 +78,6 @@ void valleyview_pipestat_irq_handler(struct drm_i915_private *i915, u32 pipe_sta
 
 void intel_display_irq_init(struct drm_i915_private *i915);
 
+void i915gm_irq_cstate_wa(struct drm_i915_private *i915, bool enable);
+
 #endif /* __INTEL_DISPLAY_IRQ_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
index 82ceede0b2b1..304da826dee1 100644
--- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
+++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
@@ -32,6 +32,7 @@
 #include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_de.h"
+#include "intel_display_irq.h"
 #include "intel_display_types.h"
 #include "intel_pipe_crc.h"
 #include "intel_pipe_crc_regs.h"
@@ -285,6 +286,9 @@ intel_crtc_crc_setup_workarounds(struct intel_crtc *crtc, bool enable)
 	struct drm_modeset_acquire_ctx ctx;
 	int ret;
 
+	if (IS_I945GM(dev_priv) || IS_I915GM(dev_priv))
+		i915gm_irq_cstate_wa(dev_priv, enable);
+
 	drm_modeset_acquire_init(&ctx, 0);
 
 	state = drm_atomic_state_alloc(&dev_priv->drm);
-- 
2.45.2

