Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QO9rGXgO5mkGrAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 13:31:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 395F4429EF8
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 13:31:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C31C10E502;
	Mon, 20 Apr 2026 11:31:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wu1J6B1O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B2B910E502;
 Mon, 20 Apr 2026 11:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776684660; x=1808220660;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nbgCHKgtC+xHSckl4WD/kC+YXa11+xiBffQGqU1U+o0=;
 b=Wu1J6B1OQbeNhtu4lRQRkXa1tMvBz7wedAnk98rz3cvVAILQ7v7uhjq2
 WSwWhYB589JrzAIyHYdNqYY2yyPvSkcBN+MIGHxT+tQrBQI2n+Z8rvRJH
 oMuDh2nB0lgMiJw68brC/DEnfgPuV93vGdMRGJ0rgLpHBt88SJ2qQbkIY
 L6b9SMn0RLeWR4GYcoKrcPi/KgaJNz/WQmzCgBTJiPZFbn3OdsRieGQVF
 WlkdWmhlJZNWRJto7PrvJ3jeBZtf7047KmjHENiMmmUvG6DWe1tc60o1A
 BpREfEZsl6w95ujkyLi/EWSZVJkUfMZJyhvN5b0VUDnbIJ8BmAlRgXawP Q==;
X-CSE-ConnectionGUID: Y+2n0m1UTtq4CryI0yoaEg==
X-CSE-MsgGUID: +hz/+ZSZTS2DkV3MCWmUcw==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="77722752"
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="77722752"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 04:31:00 -0700
X-CSE-ConnectionGUID: NhUkKW9KRtSn9xFGkFEf3g==
X-CSE-MsgGUID: EFiy5bnKS+uOZemh8l7k0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="236690611"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa005.jf.intel.com with ESMTP; 20 Apr 2026 04:30:58 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 2/2] drm/i915/dp: Decode DSC max delta bpp from sink DPCD
Date: Mon, 20 Apr 2026 16:56:11 +0530
Message-Id: <20260420112611.1481530-3-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260420112611.1481530-1-nemesa.garg@intel.com>
References: <20260420112611.1481530-1-nemesa.garg@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 395F4429EF8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add intel_dp_dsc_max_delta_bppx16() to parse sink DSC max
delta bpp from DPCD when DP_DSC_MAX_BPP_DELTA_AVAILABILITY
is set. The helper decodes RGB/YCbCr444 delta range and
YCbCr420 delta range from DP_DSC_MAX_BPP_DELTA.

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 40 +++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 35b8fb5740aa..7cc760aedd59 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2169,6 +2169,41 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 	return -EINVAL;
 }
 
+static u16 intel_dp_dsc_max_delta_bppx16(const struct intel_connector *connector,
+					 enum intel_output_format output_format)
+{
+	const u8 *dsc_dpcd = connector->dp.dsc_dpcd;
+
+	if (dsc_dpcd[DP_DSC_MAX_BITS_PER_PIXEL_HI - DP_DSC_SUPPORT] &
+	    DP_DSC_MAX_BPP_DELTA_AVAILABILITY) {
+		int max_bpp_delta = 0;
+
+		switch (output_format) {
+		case INTEL_OUTPUT_FORMAT_RGB:
+		case INTEL_OUTPUT_FORMAT_YCBCR444:
+			max_bpp_delta = dsc_dpcd[DP_DSC_MAX_BPP_DELTA - DP_DSC_SUPPORT] &
+				DP_DSC_RGB_YCbCr444_MAX_BPP_DELTA_MASK;
+			if (max_bpp_delta >= 1 && max_bpp_delta <= 21)
+				max_bpp_delta =  max_bpp_delta + MIN_DSC_BPP_DELTA_444 - 1;
+			break;
+		case INTEL_OUTPUT_FORMAT_YCBCR420:
+			max_bpp_delta = (dsc_dpcd[DP_DSC_MAX_BPP_DELTA - DP_DSC_SUPPORT] &
+					DP_DSC_RGB_YCbCr420_MAX_BPP_DELTA_MASK) >>
+					BPP_DELTA_SHIFT_420;
+			if (max_bpp_delta >= 1 && max_bpp_delta <= 7)
+				max_bpp_delta = max_bpp_delta + MIN_DSC_BPP_DELTA_420 - 1;
+			break;
+		default:
+			MISSING_CASE(output_format);
+			return 0;
+		}
+
+		return max_bpp_delta << 4;
+	}
+
+	return 0;
+}
+
 static
 u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector *connector,
 					    enum intel_output_format output_format,
@@ -2176,6 +2211,11 @@ u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector *connec
 {
 	u16 max_bppx16 = drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd);
 
+	if (max_bppx16)
+		return max_bppx16;
+
+	max_bppx16 = intel_dp_dsc_max_delta_bppx16(connector, output_format);
+
 	if (max_bppx16)
 		return max_bppx16;
 	/*
-- 
2.25.1

