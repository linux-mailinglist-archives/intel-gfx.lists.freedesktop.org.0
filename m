Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LH4B79IHWo2YgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 10:54:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4BF61BDA8
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 10:54:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41C25112FFE;
	Mon,  1 Jun 2026 08:54:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ee25DmDC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3796A112FFE;
 Mon,  1 Jun 2026 08:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780304061; x=1811840061;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FkQaHOU/7PFiPP9V88Qvb/VgEkgXQyXXoNhYdDu5F6I=;
 b=ee25DmDCTYML+pCEk5Tl//+exqT6ha2L3gKYZJgjvB7dvzPLH4+ut1zQ
 uLgbW7LqAmOW0onGocWXRr/Eb9KZK7LLtaWJsJP4ZJIW5LISkjNhKl1ou
 shdtW3+yyTJcDZQimXm2b//WpkZwV0LeQhB2gCOmfrs4CrTQ0qhZ0iv24
 espQSwJLc3TFYLIBcUcdNMmtFc0uezuooIjsA6iQXetKHVg4R02PeDTjA
 pq4pJ5XmurJXJsuXW6MjvT8offUfL7zex7Xa0ozX45/2JUE7ylTNsdjtt
 z7Uurm2s67Z+N48t12Bprr/wS3ehM089NCe5hil0E0hRRtclsSCIE0/vE A==;
X-CSE-ConnectionGUID: Yr5H1UlvT5CJKB8ndvxU4g==
X-CSE-MsgGUID: 04pQcdd/SKqMOIEsKo5a5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="91368921"
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="91368921"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 01:54:20 -0700
X-CSE-ConnectionGUID: p7hvEo9IRBufhblQ0sTsGw==
X-CSE-MsgGUID: D70efSDwSVOlPDqNfZh9UQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="239110441"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa006.fm.intel.com with ESMTP; 01 Jun 2026 01:54:18 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, pranay.samala@intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [v4 2/3] drm/i915: Avoid programming color HW blocks for NV12 Y planes
Date: Mon,  1 Jun 2026 13:59:52 +0530
Message-Id: <20260601082953.128539-3-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260601082953.128539-1-chaitanya.kumar.borah@intel.com>
References: <20260601082953.128539-1-chaitanya.kumar.borah@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: BD4BF61BDA8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

link_nv12_planes() currently copies the full UV plane hw state to
the Y plane. This includes the color pipeline blobs (ctm, degamma_lut,
gamma_lut, lut_3d) which is incorrect as we don't need to program these
HW blocks for Y plane.

This is harmless currently as the color pipeline uapi does not support
YUV (both packed and planar) formats but that can change in the future.

Add a new static helper intel_plane_y_copy_hw_state() that copies only
the rendering parameters a Y plane actually needs, leaving all color
pipeline blobs unset. Remove the helper intel_plane_copy_hw_state() as
there are no users for it.

v2:
- drop the extra spaces before ='s (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Assisted-by: GitHub-Copilot:Claude-Sonnet-4.6
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane.c | 22 ++++++++++++++--------
 drivers/gpu/drm/i915/display/intel_plane.h |  2 --
 2 files changed, 14 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 974cb671e1b9..b8348c0189aa 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -450,16 +450,22 @@ void intel_plane_copy_uapi_to_hw_state(struct intel_atomic_state *state,
 	intel_plane_color_copy_uapi_to_hw_state(state, plane_state, from_plane_state, crtc);
 }
 
-void intel_plane_copy_hw_state(struct intel_plane_state *plane_state,
-			       const struct intel_plane_state *from_plane_state)
+static void intel_plane_y_copy_hw_state(struct intel_plane_state *y_plane_state,
+					const struct intel_plane_state *uv_plane_state)
 {
-	intel_plane_clear_hw_state(plane_state);
+	intel_plane_clear_hw_state(y_plane_state);
 
-	memcpy(&plane_state->hw, &from_plane_state->hw,
-	       sizeof(plane_state->hw));
+	y_plane_state->hw.crtc = uv_plane_state->hw.crtc;
+	y_plane_state->hw.fb = uv_plane_state->hw.fb;
+	if (y_plane_state->hw.fb)
+		drm_framebuffer_get(y_plane_state->hw.fb);
 
-	if (plane_state->hw.fb)
-		drm_framebuffer_get(plane_state->hw.fb);
+	y_plane_state->hw.alpha	= uv_plane_state->hw.alpha;
+	y_plane_state->hw.pixel_blend_mode = uv_plane_state->hw.pixel_blend_mode;
+	y_plane_state->hw.rotation = uv_plane_state->hw.rotation;
+	y_plane_state->hw.color_encoding = uv_plane_state->hw.color_encoding;
+	y_plane_state->hw.color_range = uv_plane_state->hw.color_range;
+	y_plane_state->hw.scaling_filter = uv_plane_state->hw.scaling_filter;
 }
 
 static void unlink_nv12_plane(struct intel_crtc_state *crtc_state,
@@ -1665,7 +1671,7 @@ static void link_nv12_planes(struct intel_crtc_state *crtc_state,
 	crtc_state->rel_data_rate[y_plane->id] = crtc_state->rel_data_rate_y[uv_plane->id];
 
 	/* Copy parameters to Y plane */
-	intel_plane_copy_hw_state(y_plane_state, uv_plane_state);
+	intel_plane_y_copy_hw_state(y_plane_state, uv_plane_state);
 	y_plane_state->uapi.src = uv_plane_state->uapi.src;
 	y_plane_state->uapi.dst = uv_plane_state->uapi.dst;
 
diff --git a/drivers/gpu/drm/i915/display/intel_plane.h b/drivers/gpu/drm/i915/display/intel_plane.h
index 87c79a644052..31a6229aea73 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_plane.h
@@ -39,8 +39,6 @@ void intel_plane_copy_uapi_to_hw_state(struct intel_atomic_state *state,
 				       struct intel_plane_state *plane_state,
 				       const struct intel_plane_state *from_plane_state,
 				       struct intel_crtc *crtc);
-void intel_plane_copy_hw_state(struct intel_plane_state *plane_state,
-			       const struct intel_plane_state *from_plane_state);
 void intel_plane_async_flip(struct intel_dsb *dsb,
 			    struct intel_plane *plane,
 			    const struct intel_crtc_state *crtc_state,
-- 
2.25.1

