Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oNjgHtAgBmpDewIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 21:21:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB3D546502
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 21:21:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9115910E3E9;
	Thu, 14 May 2026 19:21:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jMe92LPu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CCCF10E3E8;
 Thu, 14 May 2026 19:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778786509; x=1810322509;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=+QGKLlztpsPSSlMYwGwrpFkyCLVAv8UHc9eBx2dl5G4=;
 b=jMe92LPupUas4Lp5bOpyyxz5yThBPuYBDUvxDS4SamaxIsSk1DbVxpxI
 QvSWDjSI4Su3rBI84V8tjf1FAxEDCDAq6yotD3kIs1UMBVH+XTkrRPUeu
 jKdMXD51RE9er8hQ+uTrZF9s9Jz4r0x+5/876LZiHAXHAMDdDxsV2qHB3
 OLujtR+jDI9EpWeOeLTOa0qmXvz343FPv6UIU+IltAD5UdExefjAGpSVI
 mom5/Ja8CpOaAeBNnf2COtxY9fL9YhVz9qWmPJA1pPjhfWtRTS+vH5GGp
 9/BuJvAiO/kvwfLOodO8EvH97n5yMJp5ZUQlDKQAPV4FuDBxmUUh9lSxT w==;
X-CSE-ConnectionGUID: vDa+X+WvTay0FWsXP3YkTg==
X-CSE-MsgGUID: zFxOqFHKTfqzPDJhtOKMYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11786"; a="83351256"
X-IronPort-AV: E=Sophos;i="6.23,235,1770624000"; d="scan'208";a="83351256"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 12:21:49 -0700
X-CSE-ConnectionGUID: kGWi8d8RSSGzkl58aUc8sg==
X-CSE-MsgGUID: 0xnxD3TURMOQgysdHsdfAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,235,1770624000"; d="scan'208";a="237611822"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.189])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 12:21:48 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Thu, 14 May 2026 16:19:33 -0300
Subject: [PATCH v3 4/5] drm/i915/bw: Rename struct intel_sa_info to
 intel_display_bw_params
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260514-separate-platform-from-diplay-ip-specific-bw-params-v3-4-68727d6fe3ec@intel.com>
References: <20260514-separate-platform-from-diplay-ip-specific-bw-params-v3-0-68727d6fe3ec@intel.com>
In-Reply-To: <20260514-separate-platform-from-diplay-ip-specific-bw-params-v3-0-68727d6fe3ec@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, 
 Jani Nikula <jani.nikula@intel.com>, Matt Roper <matthew.d.roper@intel.com>
X-Mailer: b4 0.15-dev
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
X-Rspamd-Queue-Id: 2BB3D546502
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

To align with struct intel_platform_bw_params, rename struct
intel_sa_info to intel_display_bw_params.  Also add comments to contrast
their purposes.

v2:
  - Use gen11 and gen12 as prefixes for ICL's and TGL's display-specific
    parameters variables. (Matt)
  - Prefer to use "display" instead of "disp" in variable names. (Jani)
  - Drop the redundant "disp" from the variable names.

Cc: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 36 ++++++++++++++++++++-------------
 1 file changed, 22 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index a956b09028f3..5821397dc27f 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -372,6 +372,10 @@ static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
 	return dclk;
 }
 
+/*
+ * Bandwidth parameters that are tied to the SoC (as opposed to struct
+ * intel_display_bw_params).
+ */
 struct intel_soc_bw_params {
 	u8 deprogbwlimit;
 	u8 derating;
@@ -462,22 +466,26 @@ static const struct intel_soc_bw_params *get_soc_bw_params(struct intel_display
 	return NULL;
 }
 
-struct intel_sa_info {
+/*
+ * Bandwidth parameters that are tied to the display IP (as opposed to struct
+ * intel_soc_bw_params).
+ */
+struct intel_display_bw_params {
 	u16 displayrtids;
 	u8 deburst;
 };
 
-static const struct intel_sa_info icl_sa_info = {
+static const struct intel_display_bw_params gen11_bw_params = {
 	.deburst = 8,
 	.displayrtids = 128,
 };
 
-static const struct intel_sa_info tgl_sa_info = {
+static const struct intel_display_bw_params gen12_bw_params = {
 	.deburst = 16,
 	.displayrtids = 256,
 };
 
-static const struct intel_sa_info mtl_sa_info = {
+static const struct intel_display_bw_params xelpdp_bw_params = {
 	.deburst = 32,
 	.displayrtids = 256,
 };
@@ -485,7 +493,7 @@ static const struct intel_sa_info mtl_sa_info = {
 static int icl_get_bw_info(struct intel_display *display,
 			   const struct dram_info *dram_info,
 			   const struct intel_soc_bw_params *soc_bw_params,
-			   const struct intel_sa_info *sa)
+			   const struct intel_display_bw_params *display_bw_params)
 {
 	struct intel_qgv_info qi = {};
 	bool is_y_tile = true; /* assume y tile may be used */
@@ -505,7 +513,7 @@ static int icl_get_bw_info(struct intel_display *display,
 
 	dclk_max = icl_sagv_max_dclk(&qi);
 	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
-	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
+	ipqdepth = min(ipqdepthpch, display_bw_params->displayrtids / num_channels);
 	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
 
 	for (i = 0; i < num_groups; i++) {
@@ -513,7 +521,7 @@ static int icl_get_bw_info(struct intel_display *display,
 		int clpchgroup;
 		int j;
 
-		clpchgroup = (sa->deburst * qi.deinterleave / num_channels) << i;
+		clpchgroup = (display_bw_params->deburst * qi.deinterleave / num_channels) << i;
 		bi->num_planes = (ipqdepth - clpchgroup) / clpchgroup + 1;
 
 		bi->num_qgv_points = qi.num_points;
@@ -557,7 +565,7 @@ static int icl_get_bw_info(struct intel_display *display,
 static int tgl_get_bw_info(struct intel_display *display,
 			   const struct dram_info *dram_info,
 			   const struct intel_soc_bw_params *soc_bw_params,
-			   const struct intel_sa_info *sa)
+			   const struct intel_display_bw_params *display_bw_params)
 {
 	struct intel_qgv_info qi = {};
 	bool is_y_tile = true; /* assume y tile may be used */
@@ -595,7 +603,7 @@ static int tgl_get_bw_info(struct intel_display *display,
 	peakbw = num_channels * DIV_ROUND_UP(qi.channel_width, 8) * dclk_max;
 	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
 
-	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
+	ipqdepth = min(ipqdepthpch, display_bw_params->displayrtids / num_channels);
 	/*
 	 * clperchgroup = 4kpagespermempage * clperchperblock,
 	 * clperchperblock = 8 / num_channels * interleave
@@ -608,7 +616,7 @@ static int tgl_get_bw_info(struct intel_display *display,
 		int clpchgroup;
 		int j;
 
-		clpchgroup = (sa->deburst * qi.deinterleave / num_channels) << i;
+		clpchgroup = (display_bw_params->deburst * qi.deinterleave / num_channels) << i;
 
 		if (i < num_groups - 1) {
 			bi_next = &display->bw.max[i + 1];
@@ -854,7 +862,7 @@ void intel_bw_init_hw(struct intel_display *display)
 	if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
 		xe2_hpd_get_bw_info(display, dram_info, soc_bw_params);
 	} else if (DISPLAY_VER(display) >= 14) {
-		tgl_get_bw_info(display, dram_info, soc_bw_params, &mtl_sa_info);
+		tgl_get_bw_info(display, dram_info, soc_bw_params, &xelpdp_bw_params);
 	} else if (display->platform.dg2) {
 		dg2_get_bw_info(display);
 	} else if (DISPLAY_VER(display) >= 12) {
@@ -865,11 +873,11 @@ void intel_bw_init_hw(struct intel_display *display)
 		 * parameters.
 		 */
 		if (display->platform.rocketlake)
-			tgl_get_bw_info(display, dram_info, soc_bw_params, &icl_sa_info);
+			tgl_get_bw_info(display, dram_info, soc_bw_params, &gen11_bw_params);
 		else
-			tgl_get_bw_info(display, dram_info, soc_bw_params, &tgl_sa_info);
+			tgl_get_bw_info(display, dram_info, soc_bw_params, &gen12_bw_params);
 	} else if (DISPLAY_VER(display) == 11) {
-		icl_get_bw_info(display, dram_info, soc_bw_params, &icl_sa_info);
+		icl_get_bw_info(display, dram_info, soc_bw_params, &gen11_bw_params);
 	}
 }
 

-- 
2.53.0

