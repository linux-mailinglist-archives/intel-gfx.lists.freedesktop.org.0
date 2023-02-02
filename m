Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DABD8688453
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 17:25:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D538310E599;
	Thu,  2 Feb 2023 16:25:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7671410E1E4;
 Thu,  2 Feb 2023 16:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675355120; x=1706891120;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cGungUrcz2PhlwXrpK9gFAEmtzFfySoMU5pVgzRWcXc=;
 b=XlNMybVpHXahBTmfetc/AalquHOjonbatEJRHfTaPCVZkf/ZHNzpKecd
 Fe2KO1pwGZa++ClMMiV0H2HzPFaxu7wxxp4MKCijmojduoH9jQ3sZoFbM
 wRSEeKx2x7EpuJhLfz2efQnFLQzmw2gOcNvR4jEWXUfJxU5esxn2CmP7O
 Gsy1R1RXRxf0ty/heCJZOXxprMGxD1FfyM3XL6sVsOqCRw03oz0sWyn8a
 Nnu4Fk4rOZYcG1cAvVrCU3BQkESQTd4K/dga3K8o8sOFL/4ZY24tL2T9U
 ALs9bAr/27ZaCGEu2X6vAPIGfqSMGD4SOJealUWBpjnAjlnr4YlnZeqLv g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="326184402"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="326184402"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 08:24:16 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="615343100"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="615343100"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 08:24:16 -0800
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Feb 2023 08:24:11 -0800
Message-Id: <20230202162411.991040-1-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/hwmon: Enable PL1 power limit
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Previous documentation suggested that PL1 power limit is always
enabled. However we now find this not to be the case on some
platforms (such as ATSM). Therefore enable PL1 power limit during hwmon
initialization.

Bspec: 51864

v2: Add Bspec reference (Gwan-gyeong)

Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
---
 drivers/gpu/drm/i915/i915_hwmon.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index 1225bc432f0d5..4683a5b96eff1 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -687,6 +687,11 @@ hwm_get_preregistration_info(struct drm_i915_private *i915)
 		for_each_gt(gt, i915, i)
 			hwm_energy(&hwmon->ddat_gt[i], &energy);
 	}
+
+	/* Enable PL1 power limit */
+	if (i915_mmio_reg_valid(hwmon->rg.pkg_rapl_limit))
+		hwm_locked_with_pm_intel_uncore_rmw(ddat, hwmon->rg.pkg_rapl_limit,
+						    PKG_PWR_LIM_1_EN, PKG_PWR_LIM_1_EN);
 }
 
 void i915_hwmon_register(struct drm_i915_private *i915)
-- 
2.38.0

