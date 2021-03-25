Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D3E349909
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 19:07:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26CE26EE2B;
	Thu, 25 Mar 2021 18:07:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 585426EE1F
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 18:07:32 +0000 (UTC)
IronPort-SDR: ZLJ+yA92pkSfAoQzxpfUs1H6ffXl2gPoA4x/8ARkIUoTHWMDGIcZ2qPXhBlRUGFs03MAsMYkvg
 aaUiCpPq1+vw==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="178112541"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="178112541"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:31 -0700
IronPort-SDR: NNWWZRKKo8xugn5rrOE32jvdoLOqoAhtMXcw/NqQ9xr12PVBqqqAQWB50KLOrHxNTd3iDh9QOf
 v1AU49kIxXTA==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="453176627"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:31 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 11:06:53 -0700
Message-Id: <20210325180720.401410-24-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210325180720.401410-1-matthew.d.roper@intel.com>
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 23/50] drm/i915/adl_p: Load DMC
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
Cc: me@freedesktop.org
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
index 794efcc3ca08..015fb545f6f8 100644
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
index 930488fba3cd..20cfb86c0174 100644
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
