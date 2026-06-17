Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lOlAC8ZpMmp6zgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 11:32:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C07F4697F01
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 11:32:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=oA1Vhkfx;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38BA810EF14;
	Wed, 17 Jun 2026 09:32:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7864210E9A6;
 Wed, 17 Jun 2026 09:32:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781688767; x=1813224767;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SWt7Be1XmRAyDyZql1aTV7u+EQwAZKb+ieNExUOAf6c=;
 b=oA1VhkfxWMn8Anx9lN3TzgNOEvUOP+k6Pyt5B4jjL0BtqaJ/lz6x1Lgc
 vxF36FacYDhBY6DcAWsms+3AN+6PwZXMj+jPRWa9BzPzUyKw071+ixLdl
 NtNQm/hdPl5bIVND8WI+jPWLVOfUOgeCQbN8e7w3dieecGPxV/toxtfeF
 bAPuyjMQ+SxFmG6uX8OXNy+9Pny7F1sd5Kyzgknwn1x3GlepsIdwmLCq5
 YKzsJC1KgGg5ZzzPPk1BX3lzVMRECkysQxrfWy7qaMdfWvXH9N2TOunuc
 mj1tvVFwEkOb5FI2goHFVCnRci+eabWGBj3jB81HXG/JUuaKgOkrFjPOB A==;
X-CSE-ConnectionGUID: 9n3ZRTARSV+CDbm8ny/NkA==
X-CSE-MsgGUID: ii6LS0Y1SBiukXJXXkqwiQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="81605266"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="81605266"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 02:32:46 -0700
X-CSE-ConnectionGUID: vF+vvNYNQoKX00IV1lcGCA==
X-CSE-MsgGUID: w4DqcU0eRVmO5CCPMVnhkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="245114429"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa007.fm.intel.com with ESMTP; 17 Jun 2026 02:32:40 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Subject: [v3 02/14] drm/i915/color: Add CSC on SDR plane color pipeline
Date: Wed, 17 Jun 2026 14:38:07 +0530
Message-Id: <20260617090819.1735153-3-chaitanya.kumar.borah@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C07F4697F01

Add the fixed-function CSC block to color pipeline in SDR planes
as a DRM_COLOROP_FIXED_MATRIX colorop.

v2:
- s/DRM_COLOROP_FM_YCBCR2020_FULL_RGB_NC/
	DRM_COLOROP_FM_YCBCR2020_NC_FULL_RGB
- Inline icl_is_hdr_plane() instead of storing in local variable

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 .../drm/i915/display/intel_color_pipeline.c   | 21 ++++++++++++++++++-
 .../drm/i915/display/intel_display_limits.h   |  1 +
 2 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color_pipeline.c b/drivers/gpu/drm/i915/display/intel_color_pipeline.c
index 6cf8080ee800..2ef42a133a98 100644
--- a/drivers/gpu/drm/i915/display/intel_color_pipeline.c
+++ b/drivers/gpu/drm/i915/display/intel_color_pipeline.c
@@ -43,6 +43,16 @@ static const enum intel_color_block hdr_plane_pipeline[] = {
 	INTEL_PLANE_CB_POST_CSC_LUT,
 };
 
+static const enum intel_color_block sdr_plane_pipeline[] = {
+	INTEL_PLANE_CB_CSC_FF,
+};
+
+static const u64 intel_plane_supported_csc_ff =
+		BIT(DRM_COLOROP_FM_YCBCR601_FULL_RGB) |
+		BIT(DRM_COLOROP_FM_YCBCR709_FULL_RGB) |
+		BIT(DRM_COLOROP_FM_YCBCR2020_NC_FULL_RGB) |
+		BIT(DRM_COLOROP_FM_RGB709_RGB2020);
+
 static bool plane_has_3dlut(struct intel_display *display, enum pipe pipe,
 			    struct drm_plane *plane)
 {
@@ -92,6 +102,12 @@ struct intel_colorop *intel_color_pipeline_plane_add_colorop(struct drm_plane *p
 							  DRM_COLOROP_LUT1D_INTERPOLATION_LINEAR,
 							  DRM_COLOROP_FLAG_ALLOW_BYPASS);
 		break;
+	case INTEL_PLANE_CB_CSC_FF:
+		ret = drm_plane_colorop_fixed_matrix_init(dev, &colorop->base, plane,
+							  &intel_colorop_funcs,
+							  intel_plane_supported_csc_ff,
+							  DRM_COLOROP_FLAG_ALLOW_BYPASS);
+		break;
 	default:
 		drm_err(plane->dev, "Invalid colorop id [%d]", id);
 		ret = -EINVAL;
@@ -126,9 +142,12 @@ int _intel_color_pipeline_plane_init(struct drm_plane *plane, struct drm_prop_en
 	if (plane_has_3dlut(display, pipe, plane)) {
 		pipeline = xe3plpd_primary_plane_pipeline;
 		pipeline_len = ARRAY_SIZE(xe3plpd_primary_plane_pipeline);
-	} else {
+	} else if (icl_is_hdr_plane(display, to_intel_plane(plane)->id)) {
 		pipeline = hdr_plane_pipeline;
 		pipeline_len = ARRAY_SIZE(hdr_plane_pipeline);
+	} else {
+		pipeline = sdr_plane_pipeline;
+		pipeline_len = ARRAY_SIZE(sdr_plane_pipeline);
 	}
 
 	for (i = 0; i < pipeline_len; i++) {
diff --git a/drivers/gpu/drm/i915/display/intel_display_limits.h b/drivers/gpu/drm/i915/display/intel_display_limits.h
index ea89473c177f..7ba7360c574e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_limits.h
+++ b/drivers/gpu/drm/i915/display/intel_display_limits.h
@@ -169,6 +169,7 @@ enum aux_ch {
 enum intel_color_block {
 	INTEL_PLANE_CB_PRE_CSC_LUT,
 	INTEL_PLANE_CB_CSC,
+	INTEL_PLANE_CB_CSC_FF,
 	INTEL_PLANE_CB_POST_CSC_LUT,
 	INTEL_PLANE_CB_3DLUT,
 
-- 
2.25.1

