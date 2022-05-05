Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E1C51C65C
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 19:42:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FCC610EFDE;
	Thu,  5 May 2022 17:42:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3469810EF8C
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 May 2022 17:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651772552; x=1683308552;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1P6ev43TPdsLQ1dSmZvmDHYeMDIY0iA2fLyr0PopDBM=;
 b=JRNZPsFoy2Ks7htpSrnA5kGSbw4NMdFZ/CaS4BTi5FglgETEO1tq+7tg
 509HXzwu1ztnGrlMAyOKI+gUIwkAgn21/wpFZwhSCReN3Moy9leLxrla4
 A3j0/Nm0XLq2t4bkVX1CYttdzhoaRZAYfUGX1MWI2KKsIaKQc82Kta+c9
 8ZtyI6hSPcRim5xA00AulMLKpJB71LepO4TO7LJNv/HVmx5jVGGEDJLJs
 EnZzC2pGYer91ZCf7Wnkf+LbaQo+xVKuQeXFzGopCZo5Egw7ykmJIVp4b
 KEfCeVDSlomDNdQ50q4Cg95AyLi2sirHBrlcw7ZgFfTjt6oR7DwWwwUy5 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="248732612"
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="248732612"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 10:42:32 -0700
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="654327460"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 10:42:31 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 May 2022 10:38:52 -0700
Message-Id: <20220505173852.814512-2-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220505173852.814512-1-anusha.srivatsa@intel.com>
References: <20220505173852.814512-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dmc: Load DMC on DG2
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add Support for DC states on Dg2.

v2: Add dc9 as the max supported DC states and disable DC5.
v3: set max_dc to 0. (Imre)
v4: Add FIXME (Rodrigo)

Cc: Imre Deak <imre.deak@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>(v1)
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 11 +++++++++--
 drivers/gpu/drm/i915/display/intel_dmc.c           | 10 +++++++++-
 2 files changed, 18 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 1d9bd5808849..2271f88e9a25 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -906,8 +906,15 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
 
 	if (!HAS_DISPLAY(dev_priv))
 		return 0;
-
-	if (IS_DG1(dev_priv))
+	/* FIXME: change max_dc back to 3 once
+	 * we have DC5 bugs resolved. Till then,
+	 * DG2 will use only DC9. Though DC9 does
+	 * not depend on DMC, loading it in order
+	 * to unblock runtime PM
+	 */
+	if (IS_DG2(dev_priv))
+		max_dc = 0;
+	else if (IS_DG1(dev_priv))
 		max_dc = 3;
 	else if (DISPLAY_VER(dev_priv) >= 12)
 		max_dc = 4;
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 257cf662f9f4..2f01aca4d981 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -52,6 +52,10 @@
 
 #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
 
+#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 06)
+#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 06)
+MODULE_FIRMWARE(DG2_DMC_PATH);
+
 #define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
 #define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 16)
 MODULE_FIRMWARE(ADLP_DMC_PATH);
@@ -688,7 +692,11 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
 	 */
 	intel_dmc_runtime_pm_get(dev_priv);
 
-	if (IS_ALDERLAKE_P(dev_priv)) {
+	if (IS_DG2(dev_priv)) {
+		dmc->fw_path = DG2_DMC_PATH;
+		dmc->required_version = DG2_DMC_VERSION_REQUIRED;
+		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
+	} else if (IS_ALDERLAKE_P(dev_priv)) {
 		dmc->fw_path = ADLP_DMC_PATH;
 		dmc->required_version = ADLP_DMC_VERSION_REQUIRED;
 		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
-- 
2.25.1

