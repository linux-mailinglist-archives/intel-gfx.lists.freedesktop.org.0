Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BF96JBB6VGq4mQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 07:39:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3990474747C
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 07:39:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=KsWz1wcl;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03D2E10E779;
	Mon, 13 Jul 2026 05:39:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00A5710E6F5;
 Mon, 13 Jul 2026 05:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783921163; x=1815457163;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pkBs5hh3U6I+S6TOWvXGj8HI2EgLIYJXAeNxGkyqBO8=;
 b=KsWz1wclV4mBYD4tHSHuvrgUzYBhd72EpxQ+LRSGkona7+tfcVcDH001
 o7Dsln5bcWJ+Hg4n0qqXCiW6ewzMHoOVa3EDXY48ZEDu+P/U907Eg2295
 0q8UpyAI5yhzgVEUFTFh4b3SFUdsSAUTMg9w2QPPbn/GNGr60Iyci8zFe
 AsNs07s7DCUmc0+oNipkphb1W21zrZs62lGGi6+GyvwfKWwwkK3kpFnIo
 G/tETTxCv0LitP3IQUcACTsNTxmgxgPOY1vapKyufxJBodbT/eQCIvQvk
 ESsssPqQGxe1SOl6iQDp9jV/lXNGNuwv66nENu9fbOmb2x9+snrXyniEl Q==;
X-CSE-ConnectionGUID: gfbrtEv0SpKkoNJNrgyXjg==
X-CSE-MsgGUID: WpCaD54nQsqaQgCexHsC8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="95669989"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="95669989"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2026 22:39:23 -0700
X-CSE-ConnectionGUID: eHPgAqH4QjqV39tch+oUgQ==
X-CSE-MsgGUID: yMRhuX53Ryu3v7BGL+BZlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="252066310"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa007.fm.intel.com with ESMTP; 12 Jul 2026 22:39:21 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Uma Shankar <uma.shankar@intel.com>
Subject: [CI v4 02/14] drm/i915/color: Add CSC on SDR plane color pipeline
Date: Mon, 13 Jul 2026 10:45:04 +0530
Message-Id: <20260713051516.4087420-3-chaitanya.kumar.borah@intel.com>
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
X-Rspamd-Queue-Id: 3990474747C

Add the fixed-function CSC block to color pipeline in SDR planes
as a DRM_COLOROP_FIXED_MATRIX colorop.

v2:
- s/DRM_COLOROP_FM_YCBCR2020_FULL_RGB_NC/
	DRM_COLOROP_FM_YCBCR2020_NC_FULL_RGB
- Inline icl_is_hdr_plane() instead of storing in local variable

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
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

