Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DA8338096
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 23:37:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE3F86EF3F;
	Thu, 11 Mar 2021 22:36:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 060B86EE9A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 22:36:48 +0000 (UTC)
IronPort-SDR: W/afDpsDkP4OPSMUN7pJ7QgIFfQ0Yrfw5oA9PhjsHe3oX9gK6XEa/sYX8Datnyj7cuRC5pmhmx
 hSL9mofvpOgg==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="250116441"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="250116441"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:46 -0800
IronPort-SDR: 36FvoT/7LL3GgSouYM72xS3i0rDczggZk7UjY+S+U+uuck5AbMTQxpVqBToINxw2evEoS1yS7d
 I9NVDQ6e0sAQ==
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="438852734"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:45 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 14:36:05 -0800
Message-Id: <20210311223632.3191939-30-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210311223632.3191939-1-matthew.d.roper@intel.com>
References: <20210311223632.3191939-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 29/56] drm/i915/adl_p: Load DMC
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Anusha Srivatsa <anusha.srivatsa@intel.com>

Load DMC v2.08 on ADLP. The release notes mention that
this version enables few power savings features.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Clint Taylor <clinton.a.taylor@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_csr.c         | 10 +++++++++-
 .../gpu/drm/i915/display/intel_display_power.c   | 16 +++++++++++++++-
 2 files changed, 24 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_csr.c b/drivers/gpu/drm/i915/display/intel_csr.c
index 82360593b0a6..863e4566e645 100644
--- a/drivers/gpu/drm/i915/display/intel_csr.c
+++ b/drivers/gpu/drm/i915/display/intel_csr.c
@@ -40,6 +40,10 @@
 
 #define GEN12_CSR_MAX_FW_SIZE		ICL_CSR_MAX_FW_SIZE
 
+#define ADLP_CSR_PATH			"i915/adlp_dmc_ver2_08.bin"
+#define ADLP_CSR_VERSION_REQUIRED	CSR_VERSION(2, 8)
+MODULE_FIRMWARE(ADLP_CSR_PATH);
+
 #define ADLS_CSR_PATH			"i915/adls_dmc_ver2_01.bin"
 #define ADLS_CSR_VERSION_REQUIRED	CSR_VERSION(2, 1)
 MODULE_FIRMWARE(ADLS_CSR_PATH);
@@ -693,7 +697,11 @@ void intel_csr_ucode_init(struct drm_i915_private *dev_priv)
 	 */
 	intel_csr_runtime_pm_get(dev_priv);
 
-	if (IS_ALDERLAKE_S(dev_priv)) {
+	if (IS_ALDERLAKE_P(dev_priv)) {
+		csr->fw_path = ADLP_CSR_PATH;
+		csr->required_version = ADLP_CSR_VERSION_REQUIRED;
+		csr->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
+	} else if (IS_ALDERLAKE_S(dev_priv)) {
 		csr->fw_path = ADLS_CSR_PATH;
 		csr->required_version = ADLS_CSR_VERSION_REQUIRED;
 		csr->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 8bb5203dd2da..3b30604e850a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -4953,7 +4953,21 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
 	int requested_dc;
 	int max_dc;
 
-	if (IS_DG1(dev_priv))
+	if (!HAS_DISPLAY(dev_priv))
+		return 0;
+
+	if (DISPLAY_VER(dev_priv) == 13)
+		/*
+		 * FIXME: We need to disable DC-states for two reasons:
+		 *
+		 *  - Although not documented in the bspec, we've been told
+		 *    that we need to upload Pipe DMC firmwares in addition
+		 *    to the main DMC firmware for DC5 to work properly.
+		 *    We need proper bspec documentation before we can handle
+		 *    this.
+		 */
+		max_dc = 0;
+	else if (IS_DG1(dev_priv))
 		max_dc = 3;
 	else if (DISPLAY_VER(dev_priv) >= 12)
 		max_dc = 4;
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
