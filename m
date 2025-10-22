Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D76CBF9754
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 02:31:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89D8810E66F;
	Wed, 22 Oct 2025 00:31:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R+alLdyr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D72010E66F;
 Wed, 22 Oct 2025 00:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761093077; x=1792629077;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=HYuTCfpGymPCn509+1Lw8Z2LUm3ca3Zr7WE6AwZxSg0=;
 b=R+alLdyrjfaWhf4O+CnbOMWPDhflGXc7OLH1Fob1982clgYFgfJ/mwTu
 1IXLHyocp8t5JEaWsn+fIDsJfspdl/5agxqf2F6T/SLQJ2Rl1UGbT0Kkp
 RRXiJK4ti+t0JK4QYshiVwdGQe2Gdmj+Qf56FfO4ejVVSywPqQfyTMgNl
 vVVQej6ajyIUmfZExdWxsfx0Reui1uILBmaF/QYqCmxGxgwIdQgTdg8fF
 d6CwVs84qYOtqUtApKgNUVsxzZGgxfGpNGBbI/mmG2jvqvPNNbxApV078
 9cXbD/RBb2dO3jbpxa5Klxr0OILeSx8VGnopFNQxQaAavCc6lwi/6TQ6J Q==;
X-CSE-ConnectionGUID: l9ilBzGnSeuJqPtLHlMZRA==
X-CSE-MsgGUID: YHoTs+P/Q+u3yfLLyYIubw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="85855705"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="85855705"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:31:17 -0700
X-CSE-ConnectionGUID: Di/UkI32Q+qqCh6UE0dxWw==
X-CSE-MsgGUID: 7rxjLMMcTCO931uldSuYnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="188132281"
Received: from gpacheco-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.26])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:31:14 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 21 Oct 2025 21:28:30 -0300
Subject: [PATCH v2 05/32] drm/i915/xe3p_lpd: Update bandwidth parameters
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251021-xe3p_lpd-basic-enabling-v2-5-10eae6d655b8@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
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

Bandwidth parameters for Xe3p_LPD are the same as for Xe3_LPD. Re-use
them.

v2:
  - Do not have a special case for ecc_impacting_de_bw, since there are
    no specific instructions in Bspec for this scenario. (Matt Roper)

Bspec: 68859
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 57d65e6e5429..57cb8a23188f 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -810,7 +810,9 @@ void intel_bw_init_hw(struct intel_display *display)
 	 */
 	drm_WARN_ON_ONCE(display->drm, dram_info->ecc_impacting_de_bw);
 
-	if (DISPLAY_VERx100(display) >= 3002) {
+	if (DISPLAY_VER(display) >= 35) {
+		tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
+	} else if (DISPLAY_VERx100(display) >= 3002) {
 		tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_info);
 	} else if (DISPLAY_VER(display) >= 30) {
 		tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);

-- 
2.51.0

