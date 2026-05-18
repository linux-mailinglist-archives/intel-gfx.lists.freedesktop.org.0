Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AAsqEfk6C2qWEwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 18:14:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E501C570AFA
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 18:14:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B00110E90C;
	Mon, 18 May 2026 16:14:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ifZIKGor";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 822B510E90F;
 Mon, 18 May 2026 16:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779120886; x=1810656886;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=HVd1nQO8Im+2WtUGwhYuCo6LQ/RHhxSn7fPjU49S8l4=;
 b=ifZIKGor3Zu/y6hYFg9VtiKmPP0GwuEu/dqKP2HjPkWE926z1RoEcbHy
 DC3iJwxYmYaZaYKFF8gh4Tcg2mg75uuFLDOFh5uyXWbB+A5LKTlwiBnws
 mqArt0r4IgIv49/VkVLNGxmun3bCfmGLhWBeBnafUX9z4Fk/UQNBcJl5n
 Lq0GIr7D0Z5cAaTwUaoAXDZCiAfCy4m/0pjZWWm+3E0iG7SpoDkbxxj0B
 f0jD4SixBRHsVoCqNOtxdP6z9VtHRHL5r6Nsr37LqC/95W0vtihSjgp3I
 /quB/3YWhqdPvn/bzlA2tG9hDJH7mqkzoU3HpsBJU7wIbFgmbnNOnNydX g==;
X-CSE-ConnectionGUID: zAFxJHVvQxWiZRTTSnpSaw==
X-CSE-MsgGUID: 4hfuvTFkTL6a1AcSj4Ecmw==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="91370627"
X-IronPort-AV: E=Sophos;i="6.23,242,1770624000"; d="scan'208";a="91370627"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 09:14:46 -0700
X-CSE-ConnectionGUID: JE6fuPfWSAyfQMNJc2r6Zg==
X-CSE-MsgGUID: qOeblllISgCVry32moCpJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,242,1770624000"; d="scan'208";a="235219043"
Received: from aherrold-mobl1.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.133])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 09:14:43 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 18 May 2026 13:14:01 -0300
Subject: [PATCH v4 2/5] drm/i915/bw: Extract platform-specific parameters
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260518-separate-platform-from-diplay-ip-specific-bw-params-v4-2-918528006549@intel.com>
References: <20260518-separate-platform-from-diplay-ip-specific-bw-params-v4-0-918528006549@intel.com>
In-Reply-To: <20260518-separate-platform-from-diplay-ip-specific-bw-params-v4-0-918528006549@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, 
 Jani Nikula <jani.nikula@intel.com>, Matt Roper <matthew.d.roper@intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: E501C570AFA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

We got confirmation from the hardware team that the bandwidth parameters
deprogbwlimit and derating are platform-specific and not tied to the
display IP.  As such, let's make sure that we use platform checks for
those.

The rest of the members of struct intel_sa_info are tied to the display
IP and we will deal with them as a follow-up.

v2:
  - Use good old if-ladder instead of weird-looking pattern "assign ret,
    check platform, then return ret". (Jani, Matt)
  - Have a single call site for get_platform_bw_params() and pass the
    result as parameter to the *_get_bw_info() functions. (Jani)
  - Avoid using "plat" as abbreviation for "platform". (Jani)
  - s/_plat_bw_params/_bw_params/, since all of the instances are
    prefixed with platform names. (Jani)
  - s/struct intel_platform_bw_params/struct intel_soc_bw_params/.
    (Matt)
  - Do not return a default value; prefer to return NULL and
    intentionally cause a NULL pointer dereference if a platform is
    missing. (Gustavo)

v3:
  - Call get_soc_bw_params() only after the check on
    HAS_DISPLAY(display). (Jani)
  - Combine if-ladder branches for adl_s_bw_params into a single one.
    (Matt)
  - Flatten if-ladder by checking for WCL before PTL (as opposed to
    checking for WCL inside the brace for PTL). (Matt)
  - Bail out of intel_bw_init_hw() if display version is below 11.
    (Gustavo)

v4:
  - Drop drm_WARN() when no platform was matched to avoid
    special-casing DG2 and any other platform that doesn't use
    SoC-specific parameters. (Jani)
  - Pass dram_info to get_soc_bw_params() to keep a single call to
    intel_dram_info(). (Jani)
  - Don't use 2 separate if-ladders (one for client and another for
    discrete platforms) and keep a single one for simplicity. (Gustavo)

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 151 ++++++++++++++++++++++----------
 1 file changed, 103 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 7eef693b51ad..f5a0a3e009c1 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -372,81 +372,136 @@ static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
 	return dclk;
 }
 
+struct intel_soc_bw_params {
+	u8 deprogbwlimit;
+	u8 derating;
+};
+
+static const struct intel_soc_bw_params icl_bw_params = {
+	.deprogbwlimit = 25,
+	.derating = 10,
+};
+
+static const struct intel_soc_bw_params tgl_bw_params = {
+	.deprogbwlimit = 34,
+	.derating = 10,
+};
+
+static const struct intel_soc_bw_params rkl_bw_params = {
+	.deprogbwlimit = 20,
+	.derating = 10,
+};
+
+static const struct intel_soc_bw_params adl_s_bw_params = {
+	.deprogbwlimit = 38,
+	.derating = 10,
+};
+
+static const struct intel_soc_bw_params adl_p_bw_params = {
+	.deprogbwlimit = 38,
+	.derating = 20,
+};
+
+static const struct intel_soc_bw_params bmg_bw_params = {
+	.deprogbwlimit = 53,
+	.derating = 30,
+};
+
+static const struct intel_soc_bw_params bmg_ecc_bw_params = {
+	.deprogbwlimit = 53,
+	.derating = 45,
+};
+
+static const struct intel_soc_bw_params ptl_bw_params = {
+	.deprogbwlimit = 65,
+	.derating = 10,
+};
+
+static const struct intel_soc_bw_params wcl_bw_params = {
+	.deprogbwlimit = 22,
+	.derating = 10,
+};
+
+static const struct intel_soc_bw_params *get_soc_bw_params(struct intel_display *display,
+							   const struct dram_info *dram_info)
+{
+	if (display->platform.icelake ||
+	    display->platform.jasperlake ||
+	    display->platform.elkhartlake)
+		return &icl_bw_params;
+	else if (display->platform.tigerlake ||
+		 display->platform.dg1)
+		return &tgl_bw_params;
+	else if (display->platform.rocketlake)
+		return &rkl_bw_params;
+	else if (display->platform.alderlake_s ||
+		 display->platform.meteorlake ||
+		 display->platform.lunarlake)
+		return &adl_s_bw_params;
+	else if (display->platform.alderlake_p)
+		return &adl_p_bw_params;
+	else if (display->platform.battlemage &&
+		 dram_info->type == INTEL_DRAM_GDDR_ECC)
+		return &bmg_ecc_bw_params;
+	else if (display->platform.battlemage)
+		return &bmg_bw_params;
+	else if (display->platform.pantherlake_wildcatlake)
+		return &wcl_bw_params;
+	else if (display->platform.pantherlake ||
+		 display->platform.novalake)
+		return &ptl_bw_params;
+
+	return NULL;
+}
+
 struct intel_sa_info {
 	u16 displayrtids;
-	u8 deburst, deprogbwlimit, derating;
+	u8 deburst;
 };
 
 static const struct intel_sa_info icl_sa_info = {
 	.deburst = 8,
-	.deprogbwlimit = 25, /* GB/s */
 	.displayrtids = 128,
-	.derating = 10,
 };
 
 static const struct intel_sa_info tgl_sa_info = {
 	.deburst = 16,
-	.deprogbwlimit = 34, /* GB/s */
 	.displayrtids = 256,
-	.derating = 10,
 };
 
 static const struct intel_sa_info rkl_sa_info = {
 	.deburst = 8,
-	.deprogbwlimit = 20, /* GB/s */
 	.displayrtids = 128,
-	.derating = 10,
 };
 
 static const struct intel_sa_info adls_sa_info = {
 	.deburst = 16,
-	.deprogbwlimit = 38, /* GB/s */
 	.displayrtids = 256,
-	.derating = 10,
 };
 
 static const struct intel_sa_info adlp_sa_info = {
 	.deburst = 16,
-	.deprogbwlimit = 38, /* GB/s */
 	.displayrtids = 256,
-	.derating = 20,
 };
 
 static const struct intel_sa_info mtl_sa_info = {
 	.deburst = 32,
-	.deprogbwlimit = 38, /* GB/s */
 	.displayrtids = 256,
-	.derating = 10,
-};
-
-static const struct intel_sa_info xe2_hpd_sa_info = {
-	.derating = 30,
-	.deprogbwlimit = 53,
-	/* Other values not used by simplified algorithm */
-};
-
-static const struct intel_sa_info xe2_hpd_ecc_sa_info = {
-	.derating = 45,
-	.deprogbwlimit = 53,
-	/* Other values not used by simplified algorithm */
 };
 
 static const struct intel_sa_info xe3lpd_sa_info = {
 	.deburst = 32,
-	.deprogbwlimit = 65, /* GB/s */
 	.displayrtids = 256,
-	.derating = 10,
 };
 
 static const struct intel_sa_info xe3lpd_3002_sa_info = {
 	.deburst = 32,
-	.deprogbwlimit = 22, /* GB/s */
 	.displayrtids = 256,
-	.derating = 10,
 };
 
 static int icl_get_bw_info(struct intel_display *display,
 			   const struct dram_info *dram_info,
+			   const struct intel_soc_bw_params *soc_bw_params,
 			   const struct intel_sa_info *sa)
 {
 	struct intel_qgv_info qi = {};
@@ -466,7 +521,7 @@ static int icl_get_bw_info(struct intel_display *display,
 	}
 
 	dclk_max = icl_sagv_max_dclk(&qi);
-	maxdebw = min(sa->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
+	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
 	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
 	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
 
@@ -496,7 +551,7 @@ static int icl_get_bw_info(struct intel_display *display,
 			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
 
 			bi->deratedbw[j] = min(maxdebw,
-					       bw * (100 - sa->derating) / 100);
+					       bw * (100 - soc_bw_params->derating) / 100);
 
 			drm_dbg_kms(display->drm,
 				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
@@ -518,6 +573,7 @@ static int icl_get_bw_info(struct intel_display *display,
 
 static int tgl_get_bw_info(struct intel_display *display,
 			   const struct dram_info *dram_info,
+			   const struct intel_soc_bw_params *soc_bw_params,
 			   const struct intel_sa_info *sa)
 {
 	struct intel_qgv_info qi = {};
@@ -554,7 +610,7 @@ static int tgl_get_bw_info(struct intel_display *display,
 	dclk_max = icl_sagv_max_dclk(&qi);
 
 	peakbw = num_channels * DIV_ROUND_UP(qi.channel_width, 8) * dclk_max;
-	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
+	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
 
 	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
 	/*
@@ -599,7 +655,7 @@ static int tgl_get_bw_info(struct intel_display *display,
 			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
 
 			bi->deratedbw[j] = min(maxdebw,
-					       bw * (100 - sa->derating) / 100);
+					       bw * (100 - soc_bw_params->derating) / 100);
 			bi->peakbw[j] = DIV_ROUND_CLOSEST(sp->dclk *
 							  num_channels *
 							  qi.channel_width, 8);
@@ -661,7 +717,7 @@ static void dg2_get_bw_info(struct intel_display *display)
 
 static int xe2_hpd_get_bw_info(struct intel_display *display,
 			       const struct dram_info *dram_info,
-			       const struct intel_sa_info *sa)
+			       const struct intel_soc_bw_params *soc_bw_params)
 {
 	struct intel_qgv_info qi = {};
 	int num_channels = dram_info->num_channels;
@@ -676,14 +732,14 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
 	}
 
 	peakbw = num_channels * qi.channel_width / 8 * icl_sagv_max_dclk(&qi);
-	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
+	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
 
 	for (i = 0; i < qi.num_points; i++) {
 		const struct intel_qgv_point *point = &qi.points[i];
 		int bw = num_channels * (qi.channel_width / 8) * point->dclk;
 
 		display->bw.max[0].deratedbw[i] =
-			min(maxdebw, (100 - sa->derating) * bw / 100);
+			min(maxdebw, (100 - soc_bw_params->derating) * bw / 100);
 		display->bw.max[0].peakbw[i] = bw;
 
 		drm_dbg_kms(display->drm, "QGV %d: deratedbw=%u peakbw: %u\n",
@@ -792,11 +848,13 @@ static unsigned int icl_qgv_bw(struct intel_display *display,
 void intel_bw_init_hw(struct intel_display *display)
 {
 	const struct dram_info *dram_info;
+	const struct intel_soc_bw_params *soc_bw_params;
 
 	if (!HAS_DISPLAY(display))
 		return;
 
 	dram_info = intel_dram_info(display);
+	soc_bw_params = get_soc_bw_params(display, dram_info);
 
 	/*
 	 * Starting with Xe3p_LPD, the hardware tells us whether memory has ECC
@@ -809,28 +867,25 @@ void intel_bw_init_hw(struct intel_display *display)
 
 	if (DISPLAY_VER(display) >= 30) {
 		if (DISPLAY_VERx100(display) == 3002)
-			tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_info);
+			tgl_get_bw_info(display, dram_info, soc_bw_params, &xe3lpd_3002_sa_info);
 		else
-			tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
+			tgl_get_bw_info(display, dram_info, soc_bw_params, &xe3lpd_sa_info);
 	} else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
-		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
-			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_ecc_sa_info);
-		else
-			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_sa_info);
+		xe2_hpd_get_bw_info(display, dram_info, soc_bw_params);
 	} else if (DISPLAY_VER(display) >= 14) {
-		tgl_get_bw_info(display, dram_info, &mtl_sa_info);
+		tgl_get_bw_info(display, dram_info, soc_bw_params, &mtl_sa_info);
 	} else if (display->platform.dg2) {
 		dg2_get_bw_info(display);
 	} else if (display->platform.alderlake_p) {
-		tgl_get_bw_info(display, dram_info, &adlp_sa_info);
+		tgl_get_bw_info(display, dram_info, soc_bw_params, &adlp_sa_info);
 	} else if (display->platform.alderlake_s) {
-		tgl_get_bw_info(display, dram_info, &adls_sa_info);
+		tgl_get_bw_info(display, dram_info, soc_bw_params, &adls_sa_info);
 	} else if (display->platform.rocketlake) {
-		tgl_get_bw_info(display, dram_info, &rkl_sa_info);
+		tgl_get_bw_info(display, dram_info, soc_bw_params, &rkl_sa_info);
 	} else if (DISPLAY_VER(display) == 12) {
-		tgl_get_bw_info(display, dram_info, &tgl_sa_info);
+		tgl_get_bw_info(display, dram_info, soc_bw_params, &tgl_sa_info);
 	} else if (DISPLAY_VER(display) == 11) {
-		icl_get_bw_info(display, dram_info, &icl_sa_info);
+		icl_get_bw_info(display, dram_info, soc_bw_params, &icl_sa_info);
 	}
 }
 

-- 
2.53.0

