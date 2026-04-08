Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kKk6LGuk1ml9GwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 20:54:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 605453C1E8C
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 20:54:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B856510E6CB;
	Wed,  8 Apr 2026 18:54:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P5b040iu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F39B10E6CA
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2026 18:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775674472; x=1807210472;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=nmjbkRfKpsrGNZ0dE2EuzV+IHyLjN7mF6M3Egttkf5E=;
 b=P5b040iutSIF8QvE8x3ovhWDHK2lt5bW2medOS1je4+9iA+i7/saggLd
 xTrpQiCkVuNfdGFPIt3EMYQWiTpi3IIYMTkbo1QJt5E1zMgvxoHJ4LYut
 kGYCAfjnWVvacM5wMdd4OBgA3nI1mgRbtohR1VSUP6QEkizU3X7TChiV0
 coF33wb5ma9Igg6n33K8LjhFplFABQnp0mZ3PAIco9kT9JHjOa6SLIC0C
 AHceD7dBe97gj6xYeHiiWdzk7iM7zzS6dOu19GkgEaZRC1BptEYIS1DP6
 Z+W1b1Tgce/PsjdhzVRggR0RnWwOpJH+X33zDlKukxYaZa2Kxncs1/Tbk g==;
X-CSE-ConnectionGUID: /PUu6hYQQmSPlPHhx3Nacw==
X-CSE-MsgGUID: qIsOmqLATDiE8hBJ27r39A==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="99297010"
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="99297010"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 11:54:03 -0700
X-CSE-ConnectionGUID: vkIp4la6SM2cgnFudzdE6Q==
X-CSE-MsgGUID: x3zQ/0ZAS/GkYbgf3V3uQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="228786714"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO [192.168.1.19])
 ([10.124.220.211])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 11:54:02 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 08 Apr 2026 15:52:59 -0300
Subject: [PATCH 1/4] drm/i915/bw: Extract platform-specific parameters
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-1-23c53afa7db0@intel.com>
References: <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-0-23c53afa7db0@intel.com>
In-Reply-To: <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-0-23c53afa7db0@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 605453C1E8C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

We got confirmation from the hardware team that the bandwidth parameters
deprogbwlimit and derating are platform-specific and not tied to the
display IP.  As such, let's make sure that we use platform checks for
those.

The rest of the members of struct intel_sa_info are tied to the display
IP and we will deal with them as a follow-up.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 174 ++++++++++++++++++++++++--------
 1 file changed, 133 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 474438fc1ebc..ed840b592eff 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -375,77 +375,170 @@ static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
 	return dclk;
 }
 
+struct intel_platform_bw_params {
+	u8 deprogbwlimit;
+	u8 derating;
+};
+
+static const struct intel_platform_bw_params icl_plat_bw_params = {
+	.deprogbwlimit = 25,
+	.derating = 10,
+};
+
+static const struct intel_platform_bw_params tgl_plat_bw_params = {
+	.deprogbwlimit = 34,
+	.derating = 10,
+};
+
+static const struct intel_platform_bw_params rkl_plat_bw_params = {
+	.deprogbwlimit = 20,
+	.derating = 10,
+};
+
+static const struct intel_platform_bw_params adl_s_plat_bw_params = {
+	.deprogbwlimit = 38,
+	.derating = 10,
+};
+
+static const struct intel_platform_bw_params adl_p_plat_bw_params = {
+	.deprogbwlimit = 38,
+	.derating = 20,
+};
+
+static const struct intel_platform_bw_params bmg_plat_bw_params = {
+	.deprogbwlimit = 53,
+	.derating = 30,
+};
+
+static const struct intel_platform_bw_params bmg_ecc_plat_bw_params = {
+	.deprogbwlimit = 53,
+	.derating = 45,
+};
+
+static const struct intel_platform_bw_params ptl_plat_bw_params = {
+	.deprogbwlimit = 65,
+	.derating = 10,
+};
+
+static const struct intel_platform_bw_params wcl_plat_bw_params = {
+	.deprogbwlimit = 22,
+	.derating = 10,
+};
+
+static const struct intel_platform_bw_params *get_platform_bw_params(struct intel_display *display)
+{
+	const struct intel_platform_bw_params *ret;
+
+	if (display->platform.dgfx)
+		goto dgfx;
+
+	ret = &icl_plat_bw_params;
+	if (display->platform.icelake ||
+	    display->platform.jasperlake ||
+	    display->platform.elkhartlake)
+		return ret;
+
+	ret = &tgl_plat_bw_params;
+	if (display->platform.tigerlake)
+		return ret;
+
+	ret = &rkl_plat_bw_params;
+	if (display->platform.rocketlake)
+		return ret;
+
+	ret = &adl_s_plat_bw_params;
+	if (display->platform.alderlake_s)
+		return ret;
+
+	ret = &adl_p_plat_bw_params;
+	if (display->platform.alderlake_p)
+		return ret;
+
+	ret = &adl_s_plat_bw_params;
+	if (display->platform.meteorlake ||
+	    display->platform.lunarlake)
+		return ret;
+
+	ret = &ptl_plat_bw_params;
+	if (display->platform.pantherlake ||
+	    display->platform.novalake) {
+		if (display->platform.pantherlake_wildcatlake)
+			ret = &wcl_plat_bw_params;
+
+		return ret;
+	}
+
+	goto missing;
+
+dgfx:
+	ret = &tgl_plat_bw_params;
+	if (display->platform.dg1)
+		return ret;
+
+	ret = &bmg_plat_bw_params;
+	if (display->platform.battlemage) {
+		const struct dram_info *dram_info = intel_dram_info(display);
+
+		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
+			ret = &bmg_ecc_plat_bw_params;
+
+		return ret;
+	}
+
+missing:
+	/*
+	 * Use parameters from the most recent platform,
+	 * but raise a warning.
+	 */
+	drm_WARN(display->drm, 1,
+		 "Platform-specific bandwidth parameters not found, using possibly incompatible default values\n");
+
+	return ret;
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
@@ -453,6 +546,7 @@ static int icl_get_bw_info(struct intel_display *display,
 			   const struct intel_sa_info *sa)
 {
 	struct intel_qgv_info qi = {};
+	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
 	bool is_y_tile = true; /* assume y tile may be used */
 	int num_channels = max_t(u8, 1, dram_info->num_channels);
 	int ipqdepth, ipqdepthpch = 16;
@@ -469,7 +563,7 @@ static int icl_get_bw_info(struct intel_display *display,
 	}
 
 	dclk_max = icl_sagv_max_dclk(&qi);
-	maxdebw = min(sa->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
+	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
 	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
 	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
 
@@ -499,7 +593,7 @@ static int icl_get_bw_info(struct intel_display *display,
 			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
 
 			bi->deratedbw[j] = min(maxdebw,
-					       bw * (100 - sa->derating) / 100);
+					       bw * (100 - plat_bw_params->derating) / 100);
 
 			drm_dbg_kms(display->drm,
 				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
@@ -524,6 +618,7 @@ static int tgl_get_bw_info(struct intel_display *display,
 			   const struct intel_sa_info *sa)
 {
 	struct intel_qgv_info qi = {};
+	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
 	bool is_y_tile = true; /* assume y tile may be used */
 	int num_channels = max_t(u8, 1, dram_info->num_channels);
 	int ipqdepth, ipqdepthpch = 16;
@@ -557,7 +652,7 @@ static int tgl_get_bw_info(struct intel_display *display,
 	dclk_max = icl_sagv_max_dclk(&qi);
 
 	peakbw = num_channels * DIV_ROUND_UP(qi.channel_width, 8) * dclk_max;
-	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
+	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
 
 	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
 	/*
@@ -602,7 +697,7 @@ static int tgl_get_bw_info(struct intel_display *display,
 			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
 
 			bi->deratedbw[j] = min(maxdebw,
-					       bw * (100 - sa->derating) / 100);
+					       bw * (100 - plat_bw_params->derating) / 100);
 			bi->peakbw[j] = DIV_ROUND_CLOSEST(sp->dclk *
 							  num_channels *
 							  qi.channel_width, 8);
@@ -663,10 +758,10 @@ static void dg2_get_bw_info(struct intel_display *display)
 }
 
 static int xe2_hpd_get_bw_info(struct intel_display *display,
-			       const struct dram_info *dram_info,
-			       const struct intel_sa_info *sa)
+			       const struct dram_info *dram_info)
 {
 	struct intel_qgv_info qi = {};
+	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
 	int num_channels = dram_info->num_channels;
 	int peakbw, maxdebw;
 	int ret, i;
@@ -679,14 +774,14 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
 	}
 
 	peakbw = num_channels * qi.channel_width / 8 * icl_sagv_max_dclk(&qi);
-	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
+	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
 
 	for (i = 0; i < qi.num_points; i++) {
 		const struct intel_qgv_point *point = &qi.points[i];
 		int bw = num_channels * (qi.channel_width / 8) * point->dclk;
 
 		display->bw.max[0].deratedbw[i] =
-			min(maxdebw, (100 - sa->derating) * bw / 100);
+			min(maxdebw, (100 - plat_bw_params->derating) * bw / 100);
 		display->bw.max[0].peakbw[i] = bw;
 
 		drm_dbg_kms(display->drm, "QGV %d: deratedbw=%u peakbw: %u\n",
@@ -814,10 +909,7 @@ void intel_bw_init_hw(struct intel_display *display)
 		else
 			tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
 	} else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
-		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
-			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_ecc_sa_info);
-		else
-			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_sa_info);
+		xe2_hpd_get_bw_info(display, dram_info);
 	} else if (DISPLAY_VER(display) >= 14) {
 		tgl_get_bw_info(display, dram_info, &mtl_sa_info);
 	} else if (display->platform.dg2) {

-- 
2.53.0

