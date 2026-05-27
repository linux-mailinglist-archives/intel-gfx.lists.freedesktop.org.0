Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8FXCM7HRFmq+swcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 13:12:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C0E5E3326
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 13:12:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2744010E78F;
	Wed, 27 May 2026 11:12:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YVopIMsG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C57E010E797;
 Wed, 27 May 2026 11:12:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779880362; x=1811416362;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vph3jYbS0cPJdMv10zC/QftVU7qYBM+QZUH1+jDjhEo=;
 b=YVopIMsG6JBUV4PC3xgNEhIbjfbpPVe+GcDYqOvWE/7TXKvwrOwgCRVb
 KACEr0KF2kULsxjnmuDrrnJw4ZCDzt22i738wAmy1rdVA8IqiIDm2ihTL
 pe0s2HBL5wQTTag/ZGlwNeJK4WkIeMxmJYMdMWaGHATtxIq3XHsdY5wXc
 j77s1TGZA/UKLnYqOzd2qB8Pc35e3rtRKbHeAh7gU0rSf/esuOKVoXYfz
 vGHorQ8svYY3n1uDSlbyw6O7WWHkDBJAOQcQiGU87UeLZzPaYvrIxfQwr
 MMlBESbosZIoDCbMxdKmYjRZe41ri6HwVqDQfjMynsacTmGxT0pAIjJ0o Q==;
X-CSE-ConnectionGUID: yAkfaEQlT3GZxio/2TIuiQ==
X-CSE-MsgGUID: 6OUoxFdkSlySwkOxFEal6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11798"; a="80818518"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="80818518"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 04:12:42 -0700
X-CSE-ConnectionGUID: VCk+ghP3QpWfpVvprcHFPA==
X-CSE-MsgGUID: T5yhg2r6Rc2xSHQoYmExXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="265803200"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa002.fm.intel.com with ESMTP; 27 May 2026 04:12:40 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 4/4] drm/i915/dp: Decode dsc max delta bpp from sink dpcd
Date: Wed, 27 May 2026 16:38:49 +0530
Message-Id: <20260527110849.3943338-5-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260527110849.3943338-1-nemesa.garg@intel.com>
References: <20260527110849.3943338-1-nemesa.garg@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 85C0E5E3326
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add intel_dp_dsc_max_delta_bppx16() to parse sink dsc max
delta bpp from dpcd when DP_DSC_MAX_BPP_DELTA_AVAILABILITY
is set. This helper decodes the delta range for both RGB/YCbCr444
and YCbCr420 formats from DP_DSC_MAX_BPP_DELTA.

With this addition, the flow becomes:
1. First, check for a format-specific range and use it to calculate
max compressed bpp.
2. If not, check for sink supported max compressed bpp and
use that
3. If this is also not there go with mandatory
max range supported bpp.

v2: Reorder the check flow for max_bpp. [Ankit]
v3: Put RGB and YCbCr444 mask assignment in the same line. [Ankit]

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 41 +++++++++++++++++++++++--
 1 file changed, 39 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3f9123a53244..3b18cb4a64af 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2203,17 +2203,54 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
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
+		max_bpp =  max_bpp_delta_v1 & DP_DSC_RGB_YCbCr444_MAX_BPP_DELTA_MASK;
+		if (max_bpp >= 1 && max_bpp <= 21)
+			max_bpp =  max_bpp + DP_DSC_BPP_DELTA_444 - 1;
+		break;
+	case INTEL_OUTPUT_FORMAT_YCBCR420:
+		max_bpp = (max_bpp_delta_v1 & DP_DSC_NATIVE_YCbCr420_MAX_BPP_DELTA_MASK) >>
+			  DP_DSC_BPP_DELTA_SHIFT_420;
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

