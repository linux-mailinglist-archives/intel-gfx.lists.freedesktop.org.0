Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9320EBF9751
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 02:31:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AC0C10E66E;
	Wed, 22 Oct 2025 00:31:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MiBb9mcx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1295210E66E;
 Wed, 22 Oct 2025 00:31:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761093074; x=1792629074;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=HhsLyQ7RSjtqwNxD22zxNTTIf0W44hfV0VD+WvaM0UU=;
 b=MiBb9mcxSN3SCJi44GmXwY2Q1fpNwyJHSlO5KHg/+ureZkEkVdMZfZ40
 gB2EcOXeU4MUEXbvwMUd0EdY7OkMHMxxvpjAcPsGMBPbVR3t0yXvp3qcs
 0kpnAKUDI6ugfMgKJWLgEqjac5+HjIDQVYcgFSUMEx14QswSEyBxg9OBw
 dzfHnYlIc4B/WoQ8DVfrbWbKcQQiYXo6pBBBGUHY7CPGQGavfANaYJaAW
 8jMxVqV8a2U2nPI1uur7hjU0N5Uw4AF4IW4dyOD3hWzZgDzXst6MSYTq8
 fcVDMsKyqwOCz730ptZfze/Q2tsbUXQNqpB8EPxY+K25Y10TvdeqjqqEo Q==;
X-CSE-ConnectionGUID: 3fYkFP2aQJCIPvavmgAJVw==
X-CSE-MsgGUID: /X5zS9mBS0qf4+YswS2CtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="85855702"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="85855702"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:31:14 -0700
X-CSE-ConnectionGUID: mW2CF8iyS2ybP6rY3xjdHw==
X-CSE-MsgGUID: 924B0jFKS/CgDluNCe1Y5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="188132273"
Received: from gpacheco-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.26])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:31:10 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 21 Oct 2025 21:28:29 -0300
Subject: [PATCH v2 04/32] drm/i915/dram: Add field ecc_impacting_de_bw
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251021-xe3p_lpd-basic-enabling-v2-4-10eae6d655b8@intel.com>
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
 Vinod Govindapillai <vinod.govindapillai@intel.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>
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

Starting with Xe3p_LPD, we now have a new field in MEM_SS_INFO_GLOBAL
that indicates whether the memory has enabled ECC that limits display
bandwidth.  Add the field ecc_impacting_de_bw to struct dram_info to
contain that information and set it appropriately when probing for
memory info.

Currently there are no instructions in Bspec on how to handle that case,
so let's throw a warning if we ever find such a scenario.

v2:
  - s/ecc_impacting_de/ecc_impacting_de_bw/ to be more specific. (Matt
    Atwood)
  - Add warning if ecc_impacting_de_bw is true, since we currently do
    not have instructions on how to handle it. (Matt Roper)

Bspec: 69131
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 8 ++++++++
 drivers/gpu/drm/i915/i915_reg.h         | 1 +
 drivers/gpu/drm/i915/soc/intel_dram.c   | 4 ++++
 drivers/gpu/drm/i915/soc/intel_dram.h   | 1 +
 4 files changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index fc173b2a1ad9..57d65e6e5429 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -802,6 +802,14 @@ void intel_bw_init_hw(struct intel_display *display)
 	if (!HAS_DISPLAY(display))
 		return;
 
+	/*
+	 * Starting with Xe3p_LPD, the hardware tells us whether memory has ECC
+	 * enabled that would impact display bandwidth.  However, so far there
+	 * are no instructions in Bspec on how to handle that case.  Let's
+	 * complain if we ever find such a scenario.
+	 */
+	drm_WARN_ON_ONCE(display->drm, dram_info->ecc_impacting_de_bw);
+
 	if (DISPLAY_VERx100(display) >= 3002) {
 		tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_info);
 	} else if (DISPLAY_VER(display) >= 30) {
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 354ef75ef6a5..5bf3b4ab2baa 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1233,6 +1233,7 @@
 #define   OROM_OFFSET_MASK			REG_GENMASK(20, 16)
 
 #define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
+#define   XE3P_ECC_IMPACTING_DE			REG_BIT(12)
 #define   MTL_N_OF_ENABLED_QGV_POINTS_MASK	REG_GENMASK(11, 8)
 #define   MTL_N_OF_POPULATED_CH_MASK		REG_GENMASK(7, 4)
 #define   MTL_DDR_TYPE_MASK			REG_GENMASK(3, 0)
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 8841cfe1cac8..73e8ad1a28e0 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -685,6 +685,7 @@ static int gen12_get_dram_info(struct drm_i915_private *i915, struct dram_info *
 
 static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct dram_info *dram_info)
 {
+	struct intel_display *display = i915->display;
 	u32 val = intel_uncore_read(&i915->uncore, MTL_MEM_SS_INFO_GLOBAL);
 
 	switch (REG_FIELD_GET(MTL_DDR_TYPE_MASK, val)) {
@@ -723,6 +724,9 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct dram_info
 	dram_info->num_qgv_points = REG_FIELD_GET(MTL_N_OF_ENABLED_QGV_POINTS_MASK, val);
 	/* PSF GV points not supported in D14+ */
 
+	if (DISPLAY_VER(display) >= 35)
+		dram_info->ecc_impacting_de_bw = REG_FIELD_GET(XE3P_ECC_IMPACTING_DE, val);
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915/soc/intel_dram.h
index 03a973f1c941..8475ee379daa 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.h
+++ b/drivers/gpu/drm/i915/soc/intel_dram.h
@@ -30,6 +30,7 @@ struct dram_info {
 	u8 num_channels;
 	u8 num_qgv_points;
 	u8 num_psf_gv_points;
+	bool ecc_impacting_de_bw; /* Only valid from Xe3p_LPD onward. */
 	bool symmetric_memory;
 	bool has_16gb_dimms;
 };

-- 
2.51.0

