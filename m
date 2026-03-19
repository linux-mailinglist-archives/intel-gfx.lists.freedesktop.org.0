Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GANVA77gu2lXpQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 12:40:46 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D27EA2CA726
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 12:40:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67AD910E924;
	Thu, 19 Mar 2026 11:40:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PqNc7SHT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD13110E91B;
 Thu, 19 Mar 2026 11:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773920444; x=1805456444;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/sWvcBfhlQJ0qp5m7o3O2qvSWBPV/g/nODvg/yUjaLU=;
 b=PqNc7SHTJ2ZLDPudGj20rcTHOBaS0CtTHtZRFbvh6+s//d8Z7STZNFOO
 LeYAhX4Q3MAg2PjOfaZ2HWmvhYvvyC1vXMHTjw4uqiANiinxW0OT5P65b
 YeMse1PIMgq6lCjday7GU7ZLriqDMnCxEFy2rcRlizOba2JA9rLN642UM
 VhIwVCvs/JHn6Wv0NYDcRRdSHiD9jNGywFXKfc17Arz5mXf/p7Pm9gj+L
 ebGL7BquzfL7JmK904c1FY+SIx3I2kdQQp5VdeAQqhX1zP/jTlaJCPrsn
 HteydWUK4h2TzmlD8RDFlgSkdmRWrH3QH89oCU6LTL1AfenqhrfUnkRmB w==;
X-CSE-ConnectionGUID: rzFarVYeTu+XcpmIR1708g==
X-CSE-MsgGUID: zm0PGcJZT860ITSNhcpC0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="78891618"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="78891618"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 04:40:44 -0700
X-CSE-ConnectionGUID: 2sypfMYiRcWS+xGIulawcQ==
X-CSE-MsgGUID: Az0c4y7KTpei/a8rmgrQ+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="222970845"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.169])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 04:40:41 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 1/9] drm/i915/wm: Nuke is_planar from skl+ wm structures
Date: Thu, 19 Mar 2026 13:40:26 +0200
Message-ID: <20260319114034.7093-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260319114034.7093-1-ville.syrjala@linux.intel.com>
References: <20260319114034.7093-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: D27EA2CA726
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We don't need is_planar in either the actual watermarks or the
wm_params structure used during the wm computation. Get rid
of both.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 -
 drivers/gpu/drm/i915/display/skl_watermark.c       | 6 +-----
 2 files changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index d3a9ace4c9d1..93b8b2f91484 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -851,7 +851,6 @@ struct skl_plane_wm {
 		struct skl_wm_level wm0;
 		struct skl_wm_level trans_wm;
 	} sagv;
-	bool is_planar;
 };
 
 struct skl_pipe_wm {
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index b1f9546b8cda..0f99a3264f05 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -63,7 +63,6 @@ static void skl_sagv_disable(struct intel_display *display);
 struct skl_wm_params {
 	bool x_tiled, y_tiled;
 	bool rc_surface;
-	bool is_planar;
 	u32 width;
 	u8 cpp;
 	u32 plane_pixel_rate;
@@ -1675,10 +1674,9 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 	wp->y_tiled = modifier != I915_FORMAT_MOD_X_TILED &&
 		intel_fb_is_tiled_modifier(modifier);
 	wp->rc_surface = intel_fb_is_ccs_modifier(modifier);
-	wp->is_planar = intel_format_info_is_yuv_semiplanar(format, modifier);
 
 	wp->width = width;
-	if (color_plane == 1 && wp->is_planar)
+	if (color_plane == 1 && intel_format_info_is_yuv_semiplanar(format, modifier))
 		wp->width /= 2;
 
 	wp->cpp = format->cpp[color_plane];
@@ -2073,8 +2071,6 @@ static int skl_build_plane_wm_uv(struct intel_crtc_state *crtc_state,
 	struct skl_wm_params wm_params;
 	int ret;
 
-	wm->is_planar = true;
-
 	/* uv plane watermarks must also be validated for NV12/Planar */
 	ret = skl_compute_plane_wm_params(crtc_state, plane_state,
 					  &wm_params, 1);
-- 
2.52.0

