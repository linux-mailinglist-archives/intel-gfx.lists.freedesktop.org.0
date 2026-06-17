Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /s71KM1pMmqFzgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 11:33:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5058E697F29
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 11:33:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=a6vwM9PF;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 238BA10EF27;
	Wed, 17 Jun 2026 09:32:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D6D210EF1B;
 Wed, 17 Jun 2026 09:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781688769; x=1813224769;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UNxliDZ6Of5zEY3biBjycybfk6EZps4KzPl0t1oLfPo=;
 b=a6vwM9PFUZ5mvQ87/2JPcWmm++aNC+wkKtFv09wlNB56xaidBGOFdkZw
 GnZmz5wOUP/4hCv/eyehbCe4cCImRisEzVn+sPDCl5Zgw5Nuu7IxRr/yz
 NjGxyQXHxBM6PyhwMxjarw2Q1DG+jHZxmMrsgBpoOYgX13ELnNGMDqqCz
 HtQGknFEYyuQWfH4je86KPL2kjKCJrLMqQ/e1t1Lg+EhuPsY349gVd27X
 FkJrneAEe6EMcqGAan8FdaDmPpEsH0YdmmpnJNxn3RWYnyYmAOqYkiODn
 oU9Unbh0R1fzPHXKM99NXEoCLp9bJKNcLxsTERYAmudzk6j6qJmZwz8F+ Q==;
X-CSE-ConnectionGUID: +Es2qP4DREC1BxGe3RViqw==
X-CSE-MsgGUID: XV8+nTCFQ6yhbvx116UxbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="81605279"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="81605279"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 02:32:49 -0700
X-CSE-ConnectionGUID: v3lELztHSiqUAH9vo7wOIg==
X-CSE-MsgGUID: DWWFrizvSvyYtTuWa0wzZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="245114442"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa007.fm.intel.com with ESMTP; 17 Jun 2026 02:32:47 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Subject: [v3 06/14] drm/i915/display: Program input CSC on SDR planes
Date: Wed, 17 Jun 2026 14:38:11 +0530
Message-Id: <20260617090819.1735153-7-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260617090819.1735153-1-chaitanya.kumar.borah@intel.com>
References: <20260617090819.1735153-1-chaitanya.kumar.borah@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5058E697F29

When a color pipeline is active, program the SDR plane fixed-function
CSC. Keep the legacy color_encoding/color_range properties mutually
exclusive with color pipeline uapi.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 .../drm/i915/display/skl_universal_plane.c    | 64 ++++++++++++++-----
 1 file changed, 47 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index da2df5be9848..0e951b36ccca 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1240,33 +1240,63 @@ static u32 glk_plane_color_ctl_crtc(const struct intel_crtc_state *crtc_state)
 	return plane_color_ctl;
 }
 
+static u32 intel_csc_ff_type_to_csc_mode(enum drm_colorop_fixed_matrix_type csc_ff_type)
+{
+	u32 csc_mode;
+
+	switch (csc_ff_type) {
+	case DRM_COLOROP_FM_YCBCR601_FULL_RGB:
+		csc_mode = PLANE_COLOR_CSC_MODE_YUV601_TO_RGB601;
+		break;
+	case DRM_COLOROP_FM_YCBCR709_FULL_RGB:
+		csc_mode = PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709;
+		break;
+	case DRM_COLOROP_FM_YCBCR2020_NC_FULL_RGB:
+		csc_mode = PLANE_COLOR_CSC_MODE_YUV2020_TO_RGB2020;
+		break;
+	case DRM_COLOROP_FM_RGB709_RGB2020:
+		csc_mode = PLANE_COLOR_CSC_MODE_RGB709_TO_RGB2020;
+		break;
+	default:
+		csc_mode = PLANE_COLOR_CSC_MODE_BYPASS;
+	}
+	return csc_mode;
+}
+
 static u32 glk_plane_color_ctl_input_csc(const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+	bool color_pipeline = plane_state->uapi.state &&
+		plane_state->uapi.state->plane_color_pipeline;
 	u32 ctl = 0;
 
-	if (!fb->format->is_yuv)
-		return 0;
+	if (!color_pipeline) {
+		if (!fb->format->is_yuv)
+			return 0;
 
-	if (!icl_is_hdr_plane(display, plane->id)) {
-		switch (plane_state->hw.color_encoding) {
-		case DRM_COLOR_YCBCR_BT709:
-			ctl |= PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709;
-			break;
-		case DRM_COLOR_YCBCR_BT2020:
-			ctl |= PLANE_COLOR_CSC_MODE_YUV2020_TO_RGB2020;
-			break;
-		default:
-			ctl |= PLANE_COLOR_CSC_MODE_YUV601_TO_RGB601;
+		if (!icl_is_hdr_plane(display, plane->id)) {
+			switch (plane_state->hw.color_encoding) {
+			case DRM_COLOR_YCBCR_BT709:
+				ctl |= PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709;
+				break;
+			case DRM_COLOR_YCBCR_BT2020:
+				ctl |= PLANE_COLOR_CSC_MODE_YUV2020_TO_RGB2020;
+				break;
+			default:
+				ctl |= PLANE_COLOR_CSC_MODE_YUV601_TO_RGB601;
+			}
+		} else {
+			ctl |= PLANE_COLOR_INPUT_CSC_ENABLE;
 		}
-	} else {
-		ctl |= PLANE_COLOR_INPUT_CSC_ENABLE;
-	}
 
-	if (plane_state->hw.color_range == DRM_COLOR_YCBCR_FULL_RANGE)
-		ctl |= PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
+		if (plane_state->hw.color_range == DRM_COLOR_YCBCR_FULL_RANGE)
+			ctl |= PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
+	} else if (!icl_is_hdr_plane(display, plane->id)) {
+		if (plane_state->hw.csc_ff_enable)
+			ctl |= intel_csc_ff_type_to_csc_mode(plane_state->hw.csc_ff_type);
+	}
 
 	return ctl;
 }
-- 
2.25.1

