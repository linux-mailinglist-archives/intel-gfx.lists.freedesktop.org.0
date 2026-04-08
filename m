Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGV2FkDq1Wk//QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 07:40:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F22C23B7475
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 07:40:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72E8A10E51C;
	Wed,  8 Apr 2026 05:40:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PQe1f+cN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD64510E50E;
 Wed,  8 Apr 2026 05:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775626813; x=1807162813;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hgLsMj8g4s0CGZRH3Q38vdPmTKMtYxXeftDL6JFx9UY=;
 b=PQe1f+cNufropn3r4z9F+ndPNWC6UmWlr640yHu6Jtk9R60JW0Xr5LI/
 mSf3voE9/pGdtH/rDl14/ZF64QB/TMAMX18Oq/4UMw+zG32Ya3qMNURzR
 wEeX9TuFAC4NsiOcPLvYIRq8jzllTy3Sn1ucJP58a7f7rAQAxZiCwB3Wi
 94N5n602lSEn60SlvfVU3MK3o+4l1Mw0J/bU6XmPigQkFR8BzbdjGIJ3Y
 94Ys9Yx3HkVKMRCXl0sp85gcMj/mHsQ0EwCcrNE9NNq2zf2aXNojpCNvD
 51wIfaGTUN64g/pSOcyJzDnXASSwEzUqSXQLpvsiijqNlePOFkY/2aex6 w==;
X-CSE-ConnectionGUID: cKNaHddCRjCtv21YyZFJZw==
X-CSE-MsgGUID: AB/oll90QTCHznSsEfwMeg==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="80194869"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="80194869"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 22:40:13 -0700
X-CSE-ConnectionGUID: N/VoYugeRje55uo8SyyqlA==
X-CSE-MsgGUID: jdFQp7MbQ8yXggbcmV0IsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="251517995"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa002.fm.intel.com with ESMTP; 07 Apr 2026 22:40:08 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: harry.wentland@amd.com, louis.chauvet@bootlin.com, mwen@igalia.com,
 contact@emersion.fr, alex.hung@amd.com, daniels@collabora.com,
 uma.shankar@intel.com, maarten.lankhorst@intel.com,
 pekka.paalanen@collabora.com, pranay.samala@intel.com,
 swati2.sharma@intel.com, chaitanya.kumar.borah@intel.com
Subject: [PATCH v2 03/13] drm/i915/color: Program fixed-function CSC on SDR
 planes
Date: Wed,  8 Apr 2026 10:45:04 +0530
Message-Id: <20260408051514.608781-4-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260408051514.608781-1-chaitanya.kumar.borah@intel.com>
References: <20260408051514.608781-1-chaitanya.kumar.borah@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: F22C23B7475
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Program the fixed-function CSC block for SDR planes based on the
DRM_COLOROP_FIXED_MATRIX state.

Track the bypass state explicitly as a boolean in the plane hw state
since bypass is managed separately from the FIXED_MATRIX enum value in
the colorop framework.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_plane.c    | 12 ++++++--
 .../drm/i915/display/skl_universal_plane.c    | 30 +++++++++++++++++++
 3 files changed, 42 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e2496db1642a..3347bba598d9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -679,6 +679,8 @@ struct intel_plane_state {
 		enum drm_color_range color_range;
 		enum drm_scaling_filter scaling_filter;
 		struct drm_property_blob *ctm, *degamma_lut, *gamma_lut, *lut_3d;
+		enum drm_colorop_fixed_matrix_type csc_ff_type; /* For SDR plane */
+		bool csc_ff_enable;
 	} hw;
 
 	struct i915_vma *ggtt_vma;
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 5390ceb21ca4..3ef43db8d5d7 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -378,11 +378,19 @@ intel_plane_color_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
 	while (iter_colorop) {
 		for_each_new_colorop_in_state(state, colorop, new_colorop_state, i) {
 			if (new_colorop_state->colorop == iter_colorop) {
-				blob = new_colorop_state->bypass ? NULL : new_colorop_state->data;
 				intel_colorop = to_intel_colorop(colorop);
-				changed |= intel_plane_colorop_replace_blob(plane_state,
+				if (intel_colorop->id == INTEL_PLANE_CB_CSC_FF) {
+					plane_state->hw.csc_ff_enable =
+						!new_colorop_state->bypass;
+					plane_state->hw.csc_ff_type =
+						new_colorop_state->fixed_matrix_type;
+				} else {
+					blob = new_colorop_state->bypass ?
+						NULL : new_colorop_state->data;
+					changed |= intel_plane_colorop_replace_blob(plane_state,
 									    intel_colorop,
 									    blob);
+				}
 			}
 		}
 		iter_colorop = iter_colorop->next;
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 11ba42c67e3e..2234abcd1b03 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1240,6 +1240,32 @@ static u32 glk_plane_color_ctl_crtc(const struct intel_crtc_state *crtc_state)
 	return plane_color_ctl;
 }
 
+static u32 intel_csc_ff_type_to_csc_mode(enum drm_colorop_fixed_matrix_type csc_ff_type,
+					 bool enable)
+{
+	u32 csc_mode = PLANE_COLOR_CSC_MODE_BYPASS;
+
+	if (enable) {
+		switch (csc_ff_type) {
+		case DRM_COLOROP_FM_YCBCR601_FULL_RGB:
+			csc_mode = PLANE_COLOR_CSC_MODE_YUV601_TO_RGB601;
+			break;
+		case DRM_COLOROP_FM_YCBCR709_FULL_RGB:
+			csc_mode = PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709;
+			break;
+		case DRM_COLOROP_FM_YCBCR2020_FULL_RGB_NC:
+			csc_mode = PLANE_COLOR_CSC_MODE_YUV2020_TO_RGB2020;
+			break;
+		case DRM_COLOROP_FM_RGB709_RGB2020:
+			csc_mode = PLANE_COLOR_CSC_MODE_RGB709_TO_RGB2020;
+			break;
+		default:
+			csc_mode = PLANE_COLOR_CSC_MODE_BYPASS;
+		}
+	}
+	return csc_mode;
+}
+
 static u32 glk_plane_color_ctl(const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state);
@@ -1271,6 +1297,10 @@ static u32 glk_plane_color_ctl(const struct intel_plane_state *plane_state)
 			plane_color_ctl |= PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
 	}
 
+	if (!icl_is_hdr_plane(display, plane->id))
+		plane_color_ctl |= intel_csc_ff_type_to_csc_mode(plane_state->hw.csc_ff_type,
+								 plane_state->hw.csc_ff_enable);
+
 	if (plane_state->force_black)
 		plane_color_ctl |= PLANE_COLOR_PLANE_CSC_ENABLE;
 
-- 
2.25.1

