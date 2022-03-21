Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7EC4E2813
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 14:50:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0228810E314;
	Mon, 21 Mar 2022 13:50:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3191E10E324
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647870654; x=1679406654;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Dl1XDwnKneWzF3OvWDTSq9KYw1HD/Oyd8KjDDToHPag=;
 b=EvEW85KZXBUwg4cTkuKpFpBEbYrTLEkTpf3v5BJcp193RTNyHHWCSz1N
 qI3LyXg0iCPGUYw2BVeGQvtudFtIsWHFmj2MImL2lUdC5hqdZLHemQYPJ
 P0l1eT5rtS8at1XoUvPKOGlem6wGZquWBTgUJyDndjb4v+2i8NH/AKPRT
 9akjMN9Xragj0E3TT6B+BnYC8GWkBbLnNbChFl1udGCB7XQSzipNSuZQY
 zETSV0+4RTT5WJybLtEMXOO/zPkabSgrgWvCIL6DctEqmsEmVq+dMH6gd
 x4JxPbxQrxMAAn0yRIracGZRc0y/DdfBlDbFGJ1s/JBaOf6krS7fHQFHI w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10292"; a="237498448"
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="237498448"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 06:50:53 -0700
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="559879079"
Received: from abhijitc-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.34.12])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 06:50:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Mar 2022 15:50:29 +0200
Message-Id: <c8ec46a44071f80b9c97617391b30e0c61ebc3e6.1647870374.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1647870374.git.jani.nikula@intel.com>
References: <cover.1647870374.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/7] drm/i915/dmc: simplify
 intel_dmc_load_program() conditions
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

intel_dmc_load_program() is only ever called when
intel_dmc_has_payload() is true. Move the condition within
intel_dmc_load_program() to let it be called directly.

Also note that intel_dmc_has_payload() will always return false when
HAS_DMC() is false. Remove the redundant check.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c |  6 +++---
 drivers/gpu/drm/i915/display/intel_dmc.c           | 11 +----------
 2 files changed, 4 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 3dc859032bac..b3efe345567f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -5387,7 +5387,7 @@ static void skl_display_core_init(struct drm_i915_private *dev_priv,
 
 	gen9_dbuf_enable(dev_priv);
 
-	if (resume && intel_dmc_has_payload(dev_priv))
+	if (resume)
 		intel_dmc_load_program(dev_priv);
 }
 
@@ -5454,7 +5454,7 @@ static void bxt_display_core_init(struct drm_i915_private *dev_priv, bool resume
 
 	gen9_dbuf_enable(dev_priv);
 
-	if (resume && intel_dmc_has_payload(dev_priv))
+	if (resume)
 		intel_dmc_load_program(dev_priv);
 }
 
@@ -5618,7 +5618,7 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 	if (IS_DG2(dev_priv))
 		intel_snps_phy_wait_for_calibration(dev_priv);
 
-	if (resume && intel_dmc_has_payload(dev_priv))
+	if (resume)
 		intel_dmc_load_program(dev_priv);
 
 	/* Wa_14011508470:tgl,dg1,rkl,adl-s,adl-p */
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index a719c0f379ba..66fd69259e73 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -276,17 +276,8 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 	struct intel_dmc *dmc = &dev_priv->dmc;
 	u32 id, i;
 
-	if (!HAS_DMC(dev_priv)) {
-		drm_err(&dev_priv->drm,
-			"No DMC support available for this platform\n");
-		return;
-	}
-
-	if (!dev_priv->dmc.dmc_info[DMC_FW_MAIN].payload) {
-		drm_err(&dev_priv->drm,
-			"Tried to program CSR with empty payload\n");
+	if (!intel_dmc_has_payload(dev_priv))
 		return;
-	}
 
 	assert_rpm_wakelock_held(&dev_priv->runtime_pm);
 
-- 
2.30.2

