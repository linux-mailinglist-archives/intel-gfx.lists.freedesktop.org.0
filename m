Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ABCDA14127
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 18:48:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D05ED10E9E5;
	Thu, 16 Jan 2025 17:48:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mgb36I7Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CD1E10E9E7;
 Thu, 16 Jan 2025 17:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737049691; x=1768585691;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yj1Fkzoep7CAo2XUZ8qCG/hKJkA0n8fVXBPWu/Ko9Mc=;
 b=Mgb36I7ZaKF8DnXtHKgMVs6GMRhr1pbmfhboyAqsuT4m71DE2xy+thQV
 D4Tp/zngYT107LERA8br6sz3Fnwe3Yz6gLi7f5MllP5RX7dGd10ZMZGdm
 rArEXTqG8Oupero4VxlSjImvQ1k7R+4jtFIu+776VbQtiA75ycUgHZI1E
 DuL1T2fbvJhPYAV5WXCGPzok66CV4hNjmhyR2pIX0yKhPheV7aL24dMr5
 PyaIryDeQlnotcdqaNl4Iy0F0DOHUdyL/2ec16pVEczw5nB30ZkQmlDTf
 zttouonomjobB+LtMi9KYzoxqqY7gi7aORD3PBmjPM2ynadHzXjOH8e7n w==;
X-CSE-ConnectionGUID: fhjoWg5tR868u1CzHaAlqQ==
X-CSE-MsgGUID: XQCxioWgTc+nb5OotlqoUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="48847568"
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="48847568"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 09:48:10 -0800
X-CSE-ConnectionGUID: xWxqmhEyTIKpTO99eaxIEA==
X-CSE-MsgGUID: 3SlR+gS+R8Wobgqlnaie1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="105712612"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Jan 2025 09:48:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jan 2025 19:48:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 3/8] drm/i915: Pimp display fault reporting
Date: Thu, 16 Jan 2025 19:47:53 +0200
Message-ID: <20250116174758.18298-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250116174758.18298-1-ville.syrjala@linux.intel.com>
References: <20250116174758.18298-1-ville.syrjala@linux.intel.com>
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

Decode the display faults a bit more extensively so that one
doesn't have translate the bitmask to planes/etc. manually.
Also for plane faults we can read out a bit of state from the
relevant plane(s) and dump that out.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c |   2 +-
 .../gpu/drm/i915/display/intel_atomic_plane.h |   2 +
 .../gpu/drm/i915/display/intel_display_irq.c  | 156 +++++++++++++++++-
 3 files changed, 155 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 612e9b0ec14a..0aeb5f00d9c4 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -663,7 +663,7 @@ int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_
 					       old_plane_state, new_plane_state);
 }
 
-static struct intel_plane *
+struct intel_plane *
 intel_crtc_get_plane(struct intel_crtc *crtc, enum plane_id plane_id)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index 0f982f452ff3..298bb97b37a4 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -19,6 +19,8 @@ struct intel_plane;
 struct intel_plane_state;
 enum plane_id;
 
+struct intel_plane *
+intel_crtc_get_plane(struct intel_crtc *crtc, enum plane_id plane_id);
 unsigned int intel_adjusted_rate(const struct drm_rect *src,
 				 const struct drm_rect *dst,
 				 unsigned int rate);
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index f06273d9bc8c..1b3b6b8bc794 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -10,6 +10,7 @@
 #include "i915_irq.h"
 #include "i915_reg.h"
 #include "icl_dsi_regs.h"
+#include "intel_atomic_plane.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_irq.h"
@@ -26,6 +27,52 @@
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
 
+struct pipe_fault_handler {
+	bool (*handle)(struct intel_crtc *crtc, enum plane_id plane_id);
+	u32 fault;
+	enum plane_id plane_id;
+};
+
+static bool handle_plane_fault(struct intel_crtc *crtc, enum plane_id plane_id)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	struct intel_plane_error error = {};
+	struct intel_plane *plane;
+
+	plane = intel_crtc_get_plane(crtc, plane_id);
+	if (!plane || !plane->capture_error)
+		return false;
+
+	plane->capture_error(crtc, plane, &error);
+
+	drm_err_ratelimited(display->drm,
+			    "[CRTC:%d:%s][PLANE:%d:%s] fault (CTL=0x%x, SURF=0x%x, SURFLIVE=0x%x)\n",
+			    crtc->base.base.id, crtc->base.name,
+			    plane->base.base.id, plane->base.name,
+			    error.ctl, error.surf, error.surflive);
+
+	return true;
+}
+
+static void intel_pipe_fault_irq_handler(struct intel_display *display,
+					 const struct pipe_fault_handler *handlers,
+					 enum pipe pipe, u32 fault_errors)
+{
+	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
+	const struct pipe_fault_handler *handler;
+
+	for (handler = handlers; handler && handler->fault; handler++) {
+		if ((fault_errors & handler->fault) == 0)
+			continue;
+
+		if (handler->handle(crtc, handler->plane_id))
+			fault_errors &= ~handler->fault;
+	}
+
+	WARN_ONCE(fault_errors, "[CRTC:%d:%s] unreported faults 0x%x\n",
+		  crtc->base.base.id, crtc->base.name, fault_errors);
+}
+
 static void
 intel_handle_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
@@ -895,6 +942,108 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
 			GEN8_PIPE_PRIMARY_FAULT;
 }
 
+static bool handle_plane_ats_fault(struct intel_crtc *crtc, enum plane_id plane_id)
+{
+	struct intel_display *display = to_intel_display(crtc);
+
+	drm_err_ratelimited(display->drm,
+			    "[CRTC:%d:%s] PLANE ATS fault\n",
+			    crtc->base.base.id, crtc->base.name);
+
+	return false;
+}
+
+static bool handle_pipedmc_ats_fault(struct intel_crtc *crtc, enum plane_id plane_id)
+{
+	struct intel_display *display = to_intel_display(crtc);
+
+	drm_err_ratelimited(display->drm,
+			    "[CRTC:%d:%s] PIPEDMC ATS fault\n",
+			    crtc->base.base.id, crtc->base.name);
+
+	return false;
+}
+
+static bool handle_pipedmc_fault(struct intel_crtc *crtc, enum plane_id plane_id)
+{
+	struct intel_display *display = to_intel_display(crtc);
+
+	drm_err_ratelimited(display->drm,
+			    "[CRTC:%d:%s] PIPEDMC fault\n",
+			    crtc->base.base.id, crtc->base.name);
+
+	return false;
+}
+
+static const struct pipe_fault_handler mtl_pipe_fault_handlers[] = {
+	{ .fault = MTL_PLANE_ATS_FAULT,     .handle = handle_plane_ats_fault, },
+	{ .fault = MTL_PIPEDMC_ATS_FAULT,   .handle = handle_pipedmc_ats_fault, },
+	{ .fault = GEN12_PIPEDMC_FAULT,     .handle = handle_pipedmc_fault, },
+	{ .fault = GEN11_PIPE_PLANE5_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_5, },
+	{ .fault = GEN9_PIPE_PLANE4_FAULT,  .handle = handle_plane_fault, .plane_id = PLANE_4, },
+	{ .fault = GEN9_PIPE_PLANE3_FAULT,  .handle = handle_plane_fault, .plane_id = PLANE_3, },
+	{ .fault = GEN9_PIPE_PLANE2_FAULT,  .handle = handle_plane_fault, .plane_id = PLANE_2, },
+	{ .fault = GEN9_PIPE_PLANE1_FAULT,  .handle = handle_plane_fault, .plane_id = PLANE_1, },
+	{ .fault = GEN9_PIPE_CURSOR_FAULT,  .handle = handle_plane_fault, .plane_id = PLANE_CURSOR, },
+	{}
+};
+
+static const struct pipe_fault_handler tgl_pipe_fault_handlers[] = {
+	{ .fault = GEN12_PIPEDMC_FAULT,     .handle = handle_pipedmc_fault, },
+	{ .fault = GEN11_PIPE_PLANE7_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_7, },
+	{ .fault = GEN11_PIPE_PLANE6_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_6, },
+	{ .fault = GEN11_PIPE_PLANE5_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_5, },
+	{ .fault = GEN9_PIPE_PLANE4_FAULT,  .handle = handle_plane_fault, .plane_id = PLANE_4, },
+	{ .fault = GEN9_PIPE_PLANE3_FAULT,  .handle = handle_plane_fault, .plane_id = PLANE_3, },
+	{ .fault = GEN9_PIPE_PLANE2_FAULT,  .handle = handle_plane_fault, .plane_id = PLANE_2, },
+	{ .fault = GEN9_PIPE_PLANE1_FAULT,  .handle = handle_plane_fault, .plane_id = PLANE_1, },
+	{ .fault = GEN9_PIPE_CURSOR_FAULT,  .handle = handle_plane_fault, .plane_id = PLANE_CURSOR, },
+	{}
+};
+
+static const struct pipe_fault_handler icl_pipe_fault_handlers[] = {
+	{ .fault = GEN11_PIPE_PLANE7_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_7, },
+	{ .fault = GEN11_PIPE_PLANE6_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_6, },
+	{ .fault = GEN11_PIPE_PLANE5_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_5, },
+	{ .fault = GEN9_PIPE_PLANE4_FAULT,  .handle = handle_plane_fault, .plane_id = PLANE_4, },
+	{ .fault = GEN9_PIPE_PLANE3_FAULT,  .handle = handle_plane_fault, .plane_id = PLANE_3, },
+	{ .fault = GEN9_PIPE_PLANE2_FAULT,  .handle = handle_plane_fault, .plane_id = PLANE_2, },
+	{ .fault = GEN9_PIPE_PLANE1_FAULT,  .handle = handle_plane_fault, .plane_id = PLANE_1, },
+	{ .fault = GEN9_PIPE_CURSOR_FAULT,  .handle = handle_plane_fault, .plane_id = PLANE_CURSOR, },
+	{}
+};
+
+static const struct pipe_fault_handler skl_pipe_fault_handlers[] = {
+	{ .fault = GEN9_PIPE_PLANE4_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_4, },
+	{ .fault = GEN9_PIPE_PLANE3_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_3, },
+	{ .fault = GEN9_PIPE_PLANE2_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_2, },
+	{ .fault = GEN9_PIPE_PLANE1_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_1, },
+	{ .fault = GEN9_PIPE_CURSOR_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_CURSOR, },
+	{}
+};
+
+static const struct pipe_fault_handler bdw_pipe_fault_handlers[] = {
+	{ .fault = GEN8_PIPE_SPRITE_FAULT,  .handle = handle_plane_fault, .plane_id = PLANE_SPRITE0, },
+	{ .fault = GEN8_PIPE_PRIMARY_FAULT, .handle = handle_plane_fault, .plane_id = PLANE_PRIMARY, },
+	{ .fault = GEN8_PIPE_CURSOR_FAULT,  .handle = handle_plane_fault, .plane_id = PLANE_CURSOR, },
+	{}
+};
+
+static const struct pipe_fault_handler *
+gen8_pipe_fault_handlers(struct intel_display *display)
+{
+	if (DISPLAY_VER(display) >= 14)
+		return mtl_pipe_fault_handlers;
+	else if (DISPLAY_VER(display) >= 12)
+		return tgl_pipe_fault_handlers;
+	else if (DISPLAY_VER(display) >= 11)
+		return icl_pipe_fault_handlers;
+	else if (DISPLAY_VER(display) >= 9)
+		return skl_pipe_fault_handlers;
+	else
+		return bdw_pipe_fault_handlers;
+}
+
 static void intel_pmdemand_irq_handler(struct drm_i915_private *dev_priv)
 {
 	wake_up_all(&dev_priv->display.pmdemand.waitqueue);
@@ -1182,10 +1331,9 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 
 		fault_errors = iir & gen8_de_pipe_fault_mask(dev_priv);
 		if (fault_errors)
-			drm_err_ratelimited(&dev_priv->drm,
-					    "Fault errors on pipe %c: 0x%08x\n",
-					    pipe_name(pipe),
-					    fault_errors);
+			intel_pipe_fault_irq_handler(display,
+						     gen8_pipe_fault_handlers(display),
+						     pipe, fault_errors);
 	}
 
 	if (HAS_PCH_SPLIT(dev_priv) && !HAS_PCH_NOP(dev_priv) &&
-- 
2.45.2

