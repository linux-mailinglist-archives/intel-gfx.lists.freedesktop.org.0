Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SEqMCQqBfGlnNgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 10:59:38 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9644B91CD
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 10:59:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24FEE10E946;
	Fri, 30 Jan 2026 09:59:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R+Z++lW4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 311EA10E941;
 Fri, 30 Jan 2026 09:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769767174; x=1801303174;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nXpu0UqLbN1dGZiO1JZhikU8vNe4cEJmsq1+igm9sXo=;
 b=R+Z++lW4c+2FJWULStj6vIheTcomn5LKZXV23zGoTb7YEVKTzb5gydxs
 qA0xGOQiOsvtWY7hWOGs08tyZ9wFRPKIudXoA3aDuumMjYu+Q2ku7VvqH
 otGb/R5JwNQA8GHlkABMPYI9msERbnWC4k+Ft6C7xaNLyeMT9Ba8U/3+8
 dA97eyaAGsm90oFT18x8TV1jej39derkjlZmSTzghgW35BAEocDbYjDWj
 3Kw1wsjF/NAj6J/RNHpe3wVpdhFWxmU1VyGsMVo/kINsnrf7TKaI13+Ik
 3G4LClAsEKQoKC45gJXHM767sUQT9rppDHPXd8UwfJT8vuRea77ZbvMdA A==;
X-CSE-ConnectionGUID: L8ajr9DGTkWbsROas8Sr5w==
X-CSE-MsgGUID: ZW6Vi4MpTDqvwF91VCUEdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="70916697"
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="70916697"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 01:59:34 -0800
X-CSE-ConnectionGUID: XZBX/fRKQNGDZTKfNOoiWA==
X-CSE-MsgGUID: fJuwq3qZTHu4jTJlqH+DPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="208924675"
Received: from rvuia-mobl.ger.corp.intel.com (HELO vgovind2-mobl4.intel.com)
 ([10.245.244.20])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 01:59:31 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, uma.shankar@intel.com,
 juha-pekka.heikkila@intel.com, ville.syrjala@intel.com
Subject: [PATCH v4] drm/i915/display: fix the pixel normalization handling for
 xe3p_lpd
Date: Fri, 30 Jan 2026 11:59:19 +0200
Message-ID: <20260130095919.107805-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo
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
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: A9644B91CD
X-Rspamd-Action: no action

Pixel normalizer is enabled with normalization factor as 1.0 for
FP16 formats in order to support FBC for those formats in xe3p_lpd.
Previously pixel normalizer gets disabled during the plane disable
routine. But there could be plane format settings without explicitly
calling the plane disable in-between and we could endup keeping the
pixel normalizer enabled for formats which we don't require that.
This is causing crc mismatches in yuv formats and FIFO underruns in
planar formats like NV12. Fix this by updating the pixel normalizer
configuration based on the pixel formats explicitly during the plane
settings arm calls itself - enable it for FP16 and disable it for
other formats in HDR capable planes.

v2: avoid redundant pixel normalization setting updates

v3: moved the normalization factor definition to intel_fbc.c and some
    updates to comments

v4: simplified the pixel normalizer setting handling

Fixes: 5298eea7ed20 ("drm/i915/xe3p_lpd: use pixel normalizer for fp16 formats for FBC")
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 .../drm/i915/display/intel_display_device.h   |  1 +
 drivers/gpu/drm/i915/display/intel_fbc.c      | 10 +++---
 drivers/gpu/drm/i915/display/intel_fbc.h      |  3 +-
 .../drm/i915/display/skl_universal_plane.c    | 36 +++++++++----------
 4 files changed, 26 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 6c74d6b0cc48..13f2a629981f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -193,6 +193,7 @@ struct intel_display_platforms {
 #define HAS_MSO(__display)		(DISPLAY_VER(__display) >= 12)
 #define HAS_OVERLAY(__display)		(DISPLAY_INFO(__display)->has_overlay)
 #define HAS_PIPEDMC(__display)		(DISPLAY_VER(__display) >= 12)
+#define HAS_PIXEL_NORMALIZER(__display)	(DISPLAY_VER(__display) >= 35)
 #define HAS_PSR(__display)		(DISPLAY_INFO(__display)->has_psr)
 #define HAS_PSR_HW_TRACKING(__display)	(DISPLAY_INFO(__display)->has_psr_hw_tracking)
 #define HAS_PSR2_SEL_FETCH(__display)	(DISPLAY_VER(__display) >= 12)
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 1f3f5237a1c2..9f39b6990bbd 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1215,13 +1215,15 @@ static bool xe3p_lpd_fbc_pixel_format_is_valid(const struct intel_plane_state *p
 	}
 }
 
-bool
-intel_fbc_is_enable_pixel_normalizer(const struct intel_plane_state *plane_state)
+bool intel_fbc_need_pixel_normalizer(const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state);
 
-	return DISPLAY_VER(display) >= 35 &&
-	       xe3p_lpd_fbc_fp16_format_is_valid(plane_state);
+	if (HAS_PIXEL_NORMALIZER(display) &&
+	    xe3p_lpd_fbc_fp16_format_is_valid(plane_state))
+		return true;
+
+	return false;
 }
 
 static bool pixel_format_is_valid(const struct intel_plane_state *plane_state)
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index f0255ddae2b6..6c96d690a2f5 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc.h
@@ -56,7 +56,6 @@ void intel_fbc_prepare_dirty_rect(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc);
 void intel_fbc_dirty_rect_update_noarm(struct intel_dsb *dsb,
 				       struct intel_plane *plane);
-bool
-intel_fbc_is_enable_pixel_normalizer(const struct intel_plane_state *plane_state);
+bool intel_fbc_need_pixel_normalizer(const struct intel_plane_state *plane_state);
 
 #endif /* __INTEL_FBC_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index b3d41705448a..746e942cafd2 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -891,23 +891,20 @@ static void icl_plane_disable_sel_fetch_arm(struct intel_dsb *dsb,
 	intel_de_write_dsb(display, dsb, SEL_FETCH_PLANE_CTL(pipe, plane->id), 0);
 }
 
-static void x3p_lpd_plane_update_pixel_normalizer(struct intel_dsb *dsb,
-						  struct intel_plane *plane,
-						  bool enable)
+static bool plane_has_normalizer(struct intel_plane *plane)
 {
 	struct intel_display *display = to_intel_display(plane);
-	enum intel_fbc_id fbc_id = skl_fbc_id_for_pipe(plane->pipe);
-	u32 val;
 
-	/* Only HDR planes have pixel normalizer and don't matter if no FBC */
-	if (!skl_plane_has_fbc(display, fbc_id, plane->id))
-		return;
+	return HAS_PIXEL_NORMALIZER(display) && icl_is_hdr_plane(display, plane->id);
+}
 
-	val = enable ? PLANE_PIXEL_NORMALIZE_NORM_FACTOR(PLANE_PIXEL_NORMALIZE_NORM_FACTOR_1_0) |
-		       PLANE_PIXEL_NORMALIZE_ENABLE : 0;
+static u32 pixel_normalizer_value(const struct intel_plane_state *plane_state)
+{
+	if (!intel_fbc_need_pixel_normalizer(plane_state))
+		return 0;
 
-	intel_de_write_dsb(display, dsb,
-			   PLANE_PIXEL_NORMALIZE(plane->pipe, plane->id), val);
+	return PLANE_PIXEL_NORMALIZE_ENABLE |
+	       PLANE_PIXEL_NORMALIZE_NORM_FACTOR(PLANE_PIXEL_NORMALIZE_NORM_FACTOR_1_0);
 }
 
 static void
@@ -926,8 +923,9 @@ icl_plane_disable_arm(struct intel_dsb *dsb,
 
 	icl_plane_disable_sel_fetch_arm(dsb, plane, crtc_state);
 
-	if (DISPLAY_VER(display) >= 35)
-		x3p_lpd_plane_update_pixel_normalizer(dsb, plane, false);
+	if (plane_has_normalizer(plane))
+		intel_de_write_dsb(display, dsb,
+				   PLANE_PIXEL_NORMALIZE(plane->pipe, plane->id), 0);
 
 	intel_de_write_dsb(display, dsb, PLANE_CTL(pipe, plane_id), 0);
 	intel_de_write_dsb(display, dsb, PLANE_SURF(pipe, plane_id), 0);
@@ -1676,11 +1674,13 @@ icl_plane_update_arm(struct intel_dsb *dsb,
 
 	/*
 	 * In order to have FBC for fp16 formats pixel normalizer block must be
-	 * active. Check if pixel normalizer block need to be enabled for FBC.
-	 * If needed, use normalization factor as 1.0 and enable the block.
+	 * active. For FP16 formats, use normalization factor as 1.0 and enable
+	 * the block.
 	 */
-	if (intel_fbc_is_enable_pixel_normalizer(plane_state))
-		x3p_lpd_plane_update_pixel_normalizer(dsb, plane, true);
+	if (plane_has_normalizer(plane))
+		intel_de_write_dsb(display, dsb,
+				   PLANE_PIXEL_NORMALIZE(plane->pipe, plane->id),
+				   pixel_normalizer_value(plane_state));
 
 	/*
 	 * The control register self-arms if the plane was previously
-- 
2.43.0

