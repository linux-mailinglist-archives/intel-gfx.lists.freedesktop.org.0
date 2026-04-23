Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8FI4Fv4t6mmfwQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 16:34:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8AD453C41
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 16:34:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 760EA10F193;
	Thu, 23 Apr 2026 14:34:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QSdCeHKO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6041A10F18C;
 Thu, 23 Apr 2026 14:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776954874; x=1808490874;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cab0BYV0M82CzJmceGSd7QzZ76oo6VJ/pXEW4XQFMzQ=;
 b=QSdCeHKOaURlNv8ZvJYheOzt+iycZF3y+CvdG9PnbjnUBNJdTvA3jvGz
 5/D+5wDvioMg41+tZH9Vii9Qs+EDD4K26ZutNiEtgOMc3guSZA/Qe+TPh
 7pLf1orZr9o4MtVA/qdWnehGMqfYXLPmX8T+fbDkkzj4b/BiKL6rZwkTi
 5bmRAseUA+MHiY9I9OFlBdgQN4/g4cTa1dUGJRzhS9uJsfFKNKCqc4seM
 UapHh0s7Yrqs29pgUsgOOg9iyYcYu/p+0/tBsCFUnRcS9QvXY59At4SYP
 e9wUCWmtOZBRFC1X9vUOU1ldRuobQXggIx9sgdaPVqML9N1uWClYhqDuX A==;
X-CSE-ConnectionGUID: 6JNaJjbARcO3tj7RYvrJgA==
X-CSE-MsgGUID: nP5bHk3VRNae5ryh/PPAaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="76957648"
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="76957648"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 07:34:34 -0700
X-CSE-ConnectionGUID: N8yH50FHQV6xcHE4hSYdvQ==
X-CSE-MsgGUID: hRuPic/lQcW8sK/MIg36/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="256170460"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa001.fm.intel.com with ESMTP; 23 Apr 2026 07:34:32 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 3/3] drm/i915/dp: Decode dsc max delta bpp from sink dpcd
Date: Thu, 23 Apr 2026 20:00:35 +0530
Message-Id: <20260423143035.2267634-4-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260423143035.2267634-1-nemesa.garg@intel.com>
References: <20260423143035.2267634-1-nemesa.garg@intel.com>
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 0A8AD453C41
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add intel_dp_dsc_max_delta_bppx16() to parse sink dsc max
delta bpp from dpcd when DP_DSC_MAX_BPP_DELTA_AVAILABILITY
is set. The helper decodes RGB/YCbCr444 and YCbCr420 delta
range from DP_DSC_MAX_BPP_DELTA.

With this the flow will be first check format-specific
range, if given calculate max compressed bpp accordingly.
If not check for sink supported max compressed bpp and
use that. If this is also not there go with mandatory
max range supported bpp.

v2: Reorder the check flow for max_bpp. [Ankit]

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 43 +++++++++++++++++++++++--
 1 file changed, 41 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 35b8fb5740aa..3c6893beeffa 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2169,17 +2169,56 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 	return -EINVAL;
 }
 
+static u16 intel_dp_dsc_max_delta_bppx16(const struct intel_connector *connector,
+					 enum intel_output_format output_format)
+{
+	const u8 *dsc_dpcd = connector->dp.dsc_dpcd;
+	u8 max_bpp_delta_v1 = dsc_dpcd[DP_DSC_MAX_BPP_DELTA_VERSION_1 - DP_DSC_SUPPORT];
+	int max_bpp;
+
+	if (!(dsc_dpcd[DP_DSC_MAX_BITS_PER_PIXEL_HI - DP_DSC_SUPPORT] &
+	    DP_DSC_MAX_BPP_DELTA_AVAILABILITY))
+		return 0;
+
+	switch (output_format) {
+	case INTEL_OUTPUT_FORMAT_RGB:
+	case INTEL_OUTPUT_FORMAT_YCBCR444:
+		max_bpp =  max_bpp_delta_v1 &
+			DP_DSC_RGB_YCbCr444_MAX_BPP_DELTA_MASK;
+		if (max_bpp >= 1 && max_bpp <= 21)
+			max_bpp =  max_bpp + DP_DSC_BPP_DELTA_444 - 1;
+		break;
+	case INTEL_OUTPUT_FORMAT_YCBCR420:
+		max_bpp = (max_bpp_delta_v1 &
+				DP_DSC_RGB_YCbCr420_MAX_BPP_DELTA_MASK) >>
+				DP_DSC_BPP_DELTA_SHIFT_420;
+		if (max_bpp >= 1 && max_bpp <= 7)
+			max_bpp = max_bpp + DP_DSC_BPP_DELTA_420 - 1;
+		break;
+	default:
+		MISSING_CASE(output_format);
+		return 0;
+	}
+
+	return max_bpp << 4;
+}
+
 static
 u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector *connector,
 					    enum intel_output_format output_format,
 					    int bpc)
 {
-	u16 max_bppx16 = drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd);
+	u16 max_bppx16 = intel_dp_dsc_max_delta_bppx16(connector, output_format);
+
+	if (max_bppx16)
+		return max_bppx16;
+
+	max_bppx16 = drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd);
 
 	if (max_bppx16)
 		return max_bppx16;
 	/*
-	 * If support not given in DPCD 67h, 68h use the Maximum Allowed bit rate
+	 * If support not given in DPCD 67h, 68h, 6Eh, 6Fh use the Maximum Allowed bit rate
 	 * values as given in spec Table 2-157 DP v2.0
 	 */
 	switch (output_format) {
-- 
2.25.1

