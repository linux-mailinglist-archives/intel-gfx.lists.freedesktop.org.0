Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4MRXF2RTimkVJgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 22:36:36 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA0B114D65
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 22:36:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A22510E489;
	Mon,  9 Feb 2026 21:36:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NMisQ7e2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E909910E47E
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Feb 2026 21:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770672993; x=1802208993;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XzK/SFCFwMrICfsHgySF7ASATHRmvk47ama0ofOYQ5Y=;
 b=NMisQ7e2PpuZ4RY+qNu40SOrkUo1WWsAz/6NjHYFR+mXnNutwo9pUWn2
 wgpkskaeyYP+dD3hFXH+TNxpfCDBh4SI6HTLl+8+ofPQwDhW4RtsAYF7Y
 cYz64Q0rsqGTTm6XTb0Y7IZDvNnwhH9nF3MNPnCmEJ09zCcYuLcSRZf7A
 iwND/0Thy6yblcgPQMTlT0jPYLt44vk7LGVLRtO2FgVHPjjRDch0kWHmR
 HPCJbu/oba5bHdDHIN4bdkLs2ECfJFfYo3g6tov0GfCWY48JbhxSe4msw
 oCVcmToGZtdAeLf7nr/dRiQOdD/IZcW/XoPG01LEK38fLioN2fS/d8hH/ Q==;
X-CSE-ConnectionGUID: q+8XaHIFQICkDVx42ropwQ==
X-CSE-MsgGUID: 63in8gJySUKNzTqZp68qrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11696"; a="94437733"
X-IronPort-AV: E=Sophos;i="6.21,282,1763452800"; d="scan'208";a="94437733"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 13:36:33 -0800
X-CSE-ConnectionGUID: kwVeLKn1TOW0q7eDZnSsKA==
X-CSE-MsgGUID: pNdfMxu8RWakdk+MIqy7ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,282,1763452800"; d="scan'208";a="216214506"
Received: from chu13-desk.fm.intel.com ([10.80.209.210])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 13:36:32 -0800
From: Austin Hu <austin.hu@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com
Subject: [PATCH 2/3] drm/i915/color: Attach the 3D LUT block to required DE
 Plane.
Date: Mon,  9 Feb 2026 13:34:21 -0800
Message-Id: <20260209213422.2640277-2-austin.hu@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260209213422.2640277-1-austin.hu@intel.com>
References: <20260209213422.2640277-1-austin.hu@intel.com>
MIME-Version: 1.0
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[austin.hu@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: BFA0B114D65
X-Rspamd-Action: no action

Or attach to Pipe directly for the unsupported Plane(s).

Signed-off-by: Austin Hu <austin.hu@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c    | 29 ++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_color.h    | 11 ++-----
 drivers/gpu/drm/i915/display/intel_plane.c    |  4 +--
 .../drm/i915/display/skl_universal_plane.c    |  2 +-
 4 files changed, 30 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index e79506554..dff33c9c1 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -4090,7 +4090,10 @@ static void glk_load_lut_3d(struct intel_dsb *dsb,
 	intel_de_write_dsb(display, dsb, LUT_3D_INDEX(pipe), 0);
 }
 
-static void glk_lut_3d_commit(struct intel_dsb *dsb, struct intel_crtc *crtc, bool enable)
+static void glk_lut_3d_commit(struct intel_dsb *dsb,
+		struct intel_crtc *crtc,
+		struct intel_plane *plane,
+		bool enable)
 {
 	struct intel_display *display = to_intel_display(crtc);
 	enum pipe pipe = crtc->pipe;
@@ -4102,8 +4105,25 @@ static void glk_lut_3d_commit(struct intel_dsb *dsb, struct intel_crtc *crtc, bo
 		return;
 	}
 
-	if (enable)
-		val = LUT_3D_ENABLE | LUT_3D_READY | LUT_3D_BIND_PLANE_1;
+	if (enable) {
+		val = LUT_3D_ENABLE | LUT_3D_READY;
+
+		switch (plane->id) {
+		case PLANE_1:
+			val |= LUT_3D_BIND_PLANE_1;
+			break;
+		case PLANE_2:
+			val |= LUT_3D_BIND_PLANE_2;
+			break;
+		case PLANE_3:
+			val |= LUT_3D_BIND_PLANE_3;
+			break;
+		default:
+			/* Attached the 3D LUT block to Pipe. */
+			val |= LUT_3D_BIND_PIPE;
+			break;
+		}
+	}
 
 	intel_de_write_dsb(display, dsb, LUT_3D_CTL(pipe), val);
 }
@@ -4238,13 +4258,14 @@ static const struct intel_color_funcs ilk_color_funcs = {
 };
 
 void intel_color_plane_commit_arm(struct intel_dsb *dsb,
+				  struct intel_plane *plane,
 				  const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_crtc *crtc = to_intel_crtc(plane_state->uapi.crtc);
 
 	if (crtc && intel_color_crtc_has_3dlut(display, crtc->pipe))
-		glk_lut_3d_commit(dsb, crtc, !!plane_state->hw.lut_3d);
+		glk_lut_3d_commit(dsb, crtc, plane, !!plane_state->hw.lut_3d);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_color.h b/drivers/gpu/drm/i915/display/intel_color.h
index c21b9bdf7..bc8192d75 100644
--- a/drivers/gpu/drm/i915/display/intel_color.h
+++ b/drivers/gpu/drm/i915/display/intel_color.h
@@ -7,15 +7,7 @@
 #define __INTEL_COLOR_H__
 
 #include <linux/types.h>
-
-struct intel_atomic_state;
-struct intel_crtc_state;
-struct intel_crtc;
-struct intel_display;
-struct intel_dsb;
-struct intel_plane_state;
-struct drm_property_blob;
-enum pipe;
+#include "intel_display_types.h"
 
 void intel_color_init_hooks(struct intel_display *display);
 int intel_color_init(struct intel_display *display);
@@ -45,6 +37,7 @@ void intel_color_assert_luts(const struct intel_crtc_state *crtc_state);
 void intel_color_plane_program_pipeline(struct intel_dsb *dsb,
 					const struct intel_plane_state *plane_state);
 void intel_color_plane_commit_arm(struct intel_dsb *dsb,
+				  struct intel_plane *plane,
 				  const struct intel_plane_state *plane_state);
 bool intel_color_crtc_has_3dlut(struct intel_display *display, enum pipe pipe);
 #endif /* __INTEL_COLOR_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 3dc2ed521..d30457c12 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -348,11 +348,11 @@ intel_plane_colorop_replace_blob(struct intel_plane_state *plane_state,
 	if (intel_colorop->id == INTEL_PLANE_CB_CSC)
 		return drm_property_replace_blob(&plane_state->hw.ctm, blob);
 	else if (intel_colorop->id == INTEL_PLANE_CB_PRE_CSC_LUT)
-		return	drm_property_replace_blob(&plane_state->hw.degamma_lut, blob);
+		return drm_property_replace_blob(&plane_state->hw.degamma_lut, blob);
 	else if (intel_colorop->id == INTEL_PLANE_CB_POST_CSC_LUT)
 		return drm_property_replace_blob(&plane_state->hw.gamma_lut, blob);
 	else if (intel_colorop->id == INTEL_PLANE_CB_3DLUT)
-		return	drm_property_replace_blob(&plane_state->hw.lut_3d, blob);
+		return drm_property_replace_blob(&plane_state->hw.lut_3d, blob);
 
 	return false;
 }
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 746e942ca..bf1b1c426 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1670,7 +1670,7 @@ icl_plane_update_arm(struct intel_dsb *dsb,
 
 	icl_plane_update_sel_fetch_arm(dsb, plane, crtc_state, plane_state);
 
-	intel_color_plane_commit_arm(dsb, plane_state);
+	intel_color_plane_commit_arm(dsb, plane, plane_state);
 
 	/*
 	 * In order to have FBC for fp16 formats pixel normalizer block must be
-- 
2.34.1

