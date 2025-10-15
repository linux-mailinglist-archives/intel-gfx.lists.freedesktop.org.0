Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB9FBDC4BA
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:17:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36E8910E6E8;
	Wed, 15 Oct 2025 03:17:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LLFZd+FI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97DA310E6E5;
 Wed, 15 Oct 2025 03:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498224; x=1792034224;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=TY0jxdvXu2F6nXPOBTtrtdjCYAarx907SrRF3D/OZQM=;
 b=LLFZd+FIsuPDqIOf3FFlIayCheftbyudY4Pdc6nSDJV6dwYNE/k/B7SN
 od+TDDWlurMJ1Oz/cDc8lQK9IgjXRjt6/xWzNdCTJbHBUGdEtaMzK72Dm
 ieDjft9YPNFNnrs1DiXhfubhGTkkVUIjy234vebooEkDU5bdsIjBak2gW
 0sC8cu2KK6ITwcNhK+lFGtbe7z/5nK0qNNly2cE4Utm5YpccjLf3yRy3S
 9o8A6p+fAH8526ImsKKJQwxXEdabvBNd/v6XuPdGLOZ2FunTr43YQxRuM
 l+/R9DluuLPpEi/yYOF8uHGMjSCLX7as9b7Bx0UCXRgaWfaabq2GPD5B0 A==;
X-CSE-ConnectionGUID: 9D+myotFSliOF2SQ3O+r9w==
X-CSE-MsgGUID: mD884O82RPa0n+pAzkJXTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62577166"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62577166"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:04 -0700
X-CSE-ConnectionGUID: dW2fS9X5Qjq77036ODjNNA==
X-CSE-MsgGUID: PxXUH4QaQrSJ8ZU1xijqiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186302461"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:00 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Oct 2025 00:15:05 -0300
Subject: [PATCH 05/32] drm/i915/dram: Add field ecc_impacting_de
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-5-d2d1e26520aa@intel.com>
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

Starting with Xe3p_LPD, we now have a new field in MEM_SS_INFO_GLOBAL
that indicates whether the memory has enabled ECC that limits display
bandwidth.  Add the field ecc_impacting_de to struct dram_info to
contain that information and set it appropriately when probing for
memory info.  We will use that field when updating bandwidth parameters
for Xe3p_LPD.

Bspec: 69131
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h       | 1 +
 drivers/gpu/drm/i915/soc/intel_dram.c | 4 ++++
 drivers/gpu/drm/i915/soc/intel_dram.h | 1 +
 3 files changed, 6 insertions(+)

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
index 8841cfe1cac8..bf9f8e38d6ba 100644
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
+		dram_info->ecc_impacting_de = REG_FIELD_GET(XE3P_ECC_IMPACTING_DE, val);
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915/soc/intel_dram.h
index 03a973f1c941..ac77f1ab409f 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.h
+++ b/drivers/gpu/drm/i915/soc/intel_dram.h
@@ -30,6 +30,7 @@ struct dram_info {
 	u8 num_channels;
 	u8 num_qgv_points;
 	u8 num_psf_gv_points;
+	bool ecc_impacting_de; /* Only valid from Xe3p_LPD onward. */
 	bool symmetric_memory;
 	bool has_16gb_dimms;
 };

-- 
2.51.0

