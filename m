Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lLPqChJ6VGq6mQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 07:39:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7356747485
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 07:39:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=HQ0QJd6i;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2505B10E785;
	Mon, 13 Jul 2026 05:39:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7F9C10E778;
 Mon, 13 Jul 2026 05:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783921165; x=1815457165;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AgjX0o1Qn2e6o5bR0s3op8xni9CGaJqjHZyYiilklRQ=;
 b=HQ0QJd6il/MnmhbqL7nFKzerX1galaFP5t8pU/sXFPogTO4Yj8XG4Xn+
 eTBxIJzU3NEuHDFko2oeI4o/MiP48BS3jXcw2ZnCkgc6/MgPHJsfUgAPH
 iDIAqbo0kmkhCBEcx3gPamrrZIbZrW86POxXN2Chb4k28cIcuJcAQlkTN
 wtkuAZwAv+uBo+vF0QBAqutHI1qJvfT6TRwS/HTZ90vc9dbAGuZRSjevt
 0twgsJTDPCVp4DPpzcpe0nKgs++zLc+16hOFsSdEUBUeW7zzp+x6xuwGp
 /j/+HYO40n/3dZDnJ2Sqme8EkyWhfQxEqTZVcegYRAK+W2PewGPkcvvCx Q==;
X-CSE-ConnectionGUID: 1Oy2yNUtSj2tvxSl4DqmRA==
X-CSE-MsgGUID: k+wzQ6YsQHWPZvBCYRCBTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="95669990"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="95669990"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2026 22:39:25 -0700
X-CSE-ConnectionGUID: lx0uBLUUSKq1MnFoePyXIg==
X-CSE-MsgGUID: Zt1YaAs7TwGP/N/fUxmekw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="252066314"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa007.fm.intel.com with ESMTP; 12 Jul 2026 22:39:23 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Uma Shankar <uma.shankar@intel.com>
Subject: [CI v4 03/14] drm/i915/display: extract glk_plane_color_ctl_input_csc
 helper
Date: Mon, 13 Jul 2026 10:45:05 +0530
Message-Id: <20260713051516.4087420-4-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260713051516.4087420-1-chaitanya.kumar.borah@intel.com>
References: <20260713051516.4087420-1-chaitanya.kumar.borah@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C7356747485

Extract the input CSC and YUV range correction logic from
glk_plane_color_ctl() into a dedicated glk_plane_color_ctl_input_csc()
helper. No functional change.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 .../drm/i915/display/skl_universal_plane.c    | 32 +++++++++++--------
 1 file changed, 19 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index ad4bfff6903d..50c6ceef9b9a 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1240,37 +1240,43 @@ static u32 glk_plane_color_ctl_crtc(const struct intel_crtc_state *crtc_state)
 	return plane_color_ctl;
 }
 
-static u32 glk_plane_color_ctl(const struct intel_plane_state *plane_state)
+static u32 glk_plane_color_ctl_input_csc(const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	u32 plane_color_ctl = 0;
-
-	plane_color_ctl |= PLANE_COLOR_PLANE_GAMMA_DISABLE;
-	plane_color_ctl |= glk_plane_color_ctl_alpha(plane_state);
+	u32 ctl = 0;
 
 	if (fb->format->is_yuv && !icl_is_hdr_plane(display, plane->id)) {
 		switch (plane_state->hw.color_encoding) {
 		case DRM_COLOR_YCBCR_BT709:
-			plane_color_ctl |= PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709;
+			ctl |= PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709;
 			break;
 		case DRM_COLOR_YCBCR_BT2020:
-			plane_color_ctl |=
-				PLANE_COLOR_CSC_MODE_YUV2020_TO_RGB2020;
+			ctl |= PLANE_COLOR_CSC_MODE_YUV2020_TO_RGB2020;
 			break;
 		default:
-			plane_color_ctl |=
-				PLANE_COLOR_CSC_MODE_YUV601_TO_RGB601;
+			ctl |= PLANE_COLOR_CSC_MODE_YUV601_TO_RGB601;
 		}
 		if (plane_state->hw.color_range == DRM_COLOR_YCBCR_FULL_RANGE)
-			plane_color_ctl |= PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
+			ctl |= PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
 	} else if (fb->format->is_yuv) {
-		plane_color_ctl |= PLANE_COLOR_INPUT_CSC_ENABLE;
+		ctl |= PLANE_COLOR_INPUT_CSC_ENABLE;
 		if (plane_state->hw.color_range == DRM_COLOR_YCBCR_FULL_RANGE)
-			plane_color_ctl |= PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
+			ctl |= PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
 	}
 
+	return ctl;
+}
+
+static u32 glk_plane_color_ctl(const struct intel_plane_state *plane_state)
+{
+	u32 plane_color_ctl = 0;
+
+	plane_color_ctl |= PLANE_COLOR_PLANE_GAMMA_DISABLE;
+	plane_color_ctl |= glk_plane_color_ctl_alpha(plane_state);
+	plane_color_ctl |= glk_plane_color_ctl_input_csc(plane_state);
+
 	if (plane_state->force_black)
 		plane_color_ctl |= PLANE_COLOR_PLANE_CSC_ENABLE;
 
-- 
2.25.1

