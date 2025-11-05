Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5B4C35FA9
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 15:08:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDB3410E779;
	Wed,  5 Nov 2025 14:08:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cKHovDkb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97FE410E766;
 Wed,  5 Nov 2025 14:08:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762351730; x=1793887730;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Thd+ZHp/HXN+JoI0ZKv5+Oyq4gJAqzMQcyV9wJvcJMQ=;
 b=cKHovDkbF1CD3zq9fnyAdIBzQguZmXIPiozBsnWMTZiC1hNfthIbpiPA
 YNfsD8ciInXuZGXOy9Omgx+KgY8ovIduvytq0m+MtaZSZMJ1849xbiUJD
 l7r3ONyjTKP56uAjGrytHddRZYMmu234INk5eRkYjIKsmLIJTbrTSmmy8
 EY3GIjfAAoFomPjbRyyVgiQ4XbEZYlGaL7y/tSh/DjvERcm7CQR0AlOMC
 QF6cIvXPSYpEUbRm995h8j9TEAwe8nj3z1kSZwpVegPxKuMpnp5Pj7b70
 vZ2N9On8Bz9vOlBN4bMr4xFqoqIT9Xz5LBtXPm1F8nzGnEZi9gEgpNfti g==;
X-CSE-ConnectionGUID: NNuyzRB3SKiMdsvWRcEFCQ==
X-CSE-MsgGUID: 8JcJkbJMTv+vNr+ExnlViw==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64348429"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="64348429"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:32 -0800
X-CSE-ConnectionGUID: VUEbNKK5RdGMcnIBUBQjGg==
X-CSE-MsgGUID: ebLBIWzrQG6Fu9ie5/OlbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="191563017"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.124.221.150])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:31 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: gustavo.sousa@intel.com
Subject: [CI 15/17] drm/i915/dram: Add field ecc_impacting_de_bw
Date: Wed,  5 Nov 2025 11:07:04 -0300
Message-ID: <20251105140651.71713-34-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251105140651.71713-19-gustavo.sousa@intel.com>
References: <20251105140651.71713-19-gustavo.sousa@intel.com>
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
v3:
  - Check on ecc_impacting_de_bw for the warning only for Xe3p_LPD and
    beyond.
  - Change warning macro from drm_WARN_ON_ONCE() to drm_WARN_ON().

Bspec: 69131
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Link: https://patch.msgid.link/20251103-xe3p_lpd-basic-enabling-v3-15-00e87b510ae7@intel.com
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 9 +++++++++
 drivers/gpu/drm/i915/i915_reg.h         | 1 +
 drivers/gpu/drm/i915/soc/intel_dram.c   | 4 ++++
 drivers/gpu/drm/i915/soc/intel_dram.h   | 1 +
 4 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 919b25a5fbac..1f6461be50ef 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -805,6 +805,15 @@ void intel_bw_init_hw(struct intel_display *display)
 	if (!HAS_DISPLAY(display))
 		return;
 
+	/*
+	 * Starting with Xe3p_LPD, the hardware tells us whether memory has ECC
+	 * enabled that would impact display bandwidth.  However, so far there
+	 * are no instructions in Bspec on how to handle that case.  Let's
+	 * complain if we ever find such a scenario.
+	 */
+	if (DISPLAY_VER(display) >= 35)
+		drm_WARN_ON(display->drm, dram_info->ecc_impacting_de_bw);
+
 	if (DISPLAY_VER(display) >= 30) {
 		if (DISPLAY_VERx100(display) == 3002)
 			tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_info);
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
index 2e16346a6cc0..3e588762709a 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -686,6 +686,7 @@ static int gen12_get_dram_info(struct drm_i915_private *i915, struct dram_info *
 
 static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct dram_info *dram_info)
 {
+	struct intel_display *display = i915->display;
 	u32 val = intel_uncore_read(&i915->uncore, MTL_MEM_SS_INFO_GLOBAL);
 
 	switch (REG_FIELD_GET(MTL_DDR_TYPE_MASK, val)) {
@@ -724,6 +725,9 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct dram_info
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

