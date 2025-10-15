Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15FBABDC4BD
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:17:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72CC210E6E0;
	Wed, 15 Oct 2025 03:17:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A5/XIcOh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48A4810E6E0;
 Wed, 15 Oct 2025 03:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498228; x=1792034228;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=HAfkiep5gQMtTWE2lXa/X0wpldTZEr21g/JLY1KOysc=;
 b=A5/XIcOhMgzGdKZyjZ7Y/zNihd/V91wyf8Tp0ZQ1frJuMOtSdF1G6Tcu
 gDoCLTRxGu+dSTy9lfneNawMTDEfNh/Lfq99gfSJww9mzcz9APkdzRirZ
 nnxhMzTF4UqJ4yMXvfbo9Qaq38AzTCSpNFSTUlQEoSxDMOuvPCr8Y4LBy
 EWyKNYMIa85mGr6z0Hs+jkD0xxc4VtL31MBZuI0G+NX23jkeRxPLAY09U
 H/bTIeNhtSvJiIOzmfUnfYuLhQO22puZEQFhIJti0jLLkf+5VE1FA2syo
 V0UfL2m0j1GlIgZLqrco5tqax19LJw6O/o0VZV497v1xdL2gxPdpNLfNg Q==;
X-CSE-ConnectionGUID: AvK7bU6zQ2W/tW1H1cD4CA==
X-CSE-MsgGUID: yQ8N2yhYRiiX30ngsohGCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62577173"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62577173"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:08 -0700
X-CSE-ConnectionGUID: WQQq/qjHSqi0QySDOQ22ZA==
X-CSE-MsgGUID: 5AfrtZ6JTDuMKHPZhyuNpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186302505"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:03 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Oct 2025 00:15:06 -0300
Subject: [PATCH 06/32] drm/i915/xe3p_lpd: Update bandwidth parameters
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-6-d2d1e26520aa@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
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

From: Matt Atwood <matthew.s.atwood@intel.com>

Bandwidth parameters for Xe3p_LPD are basically the same as for Xe3_LPD.
However, now Xe3p_LPD has the ecc_impacting_de field, which could impact
how the derating is defined.

For the cases where that field is true, we use xe3p_lpd_ecc_sa_info,
similarly to what was done for Xe2_HPD.  Note, however, that Bspec
specifies the ECC derating value only for GDDR memory.  For now, we just
re-use the value that was defined for Xe2_HPD, namely 45.  We need to
confirm with the hardware team what would be the correct value(s) to use
for the ECC case.

Bspec: 68859, 69131
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 8f5b86cd91b6..f0940ff9d19b 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -461,6 +461,20 @@ static const struct intel_sa_info xe3lpd_3002_sa_info = {
 	.derating = 10,
 };
 
+static const struct intel_sa_info xe3p_lpd_ecc_sa_info = {
+	.deburst = 32,
+	.deprogbwlimit = 65, /* GB/s */
+	.displayrtids = 256,
+	/*
+	 * FIXME: The Bspec only shows that derating for ECC should be 45 for
+	 * GDDR memory and does not mention other types of memory.  For now, we
+	 * just re-use that value, but we need to confirm whether that is
+	 * correct or if there are different values depending on the memory
+	 * type.
+	 */
+	.derating = 45,
+};
+
 static int icl_get_bw_info(struct intel_display *display,
 			   const struct dram_info *dram_info,
 			   const struct intel_sa_info *sa)
@@ -812,7 +826,12 @@ void intel_bw_init_hw(struct intel_display *display)
 	if (!HAS_DISPLAY(display))
 		return;
 
-	if (DISPLAY_VERx100(display) >= 3002) {
+	if (DISPLAY_VER(display) >= 35) {
+		if (dram_info->ecc_impacting_de)
+			tgl_get_bw_info(display, dram_info, &xe3p_lpd_ecc_sa_info);
+		else
+			tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
+	} else if (DISPLAY_VERx100(display) >= 3002) {
 		tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_info);
 	} else if (DISPLAY_VER(display) >= 30) {
 		tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);

-- 
2.51.0

