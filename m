Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C7C308C65
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 19:30:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 506F26EBA7;
	Fri, 29 Jan 2021 18:30:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 624766EBA0
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 18:29:59 +0000 (UTC)
IronPort-SDR: FmZa8b5JJvUPFOw2SlceDIKQl1RR0zfqRRqcx3tKrsVOy31gN9v0zw2PM0Oa4rnFbFngWfa/zi
 dscLUUvSwcng==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="168131279"
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="168131279"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 10:29:59 -0800
IronPort-SDR: sK5WEwfYEV38aEACXhgJS6BjlZ0l1TValsJlEVnI1tx0V1p3G5oeaXW38DoStrua8owHzgRYMt
 /WQ3F2yhgfug==
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="474952941"
Received: from dhamor-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.251.22.55])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 10:29:58 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Jan 2021 10:29:42 -0800
Message-Id: <20210129182945.217078-6-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210129182945.217078-1-aditya.swarup@intel.com>
References: <20210129182945.217078-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/8] drm/i915/adl_s: Load DMC
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Anusha Srivatsa <anusha.srivatsa@intel.com>

Load DMC on ADL_S v2.01. This is the first offcial
release of DMC for ADL_S.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Aditya Swarup <aditya.swarup@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
Reviewed-by: Aditya Swarup <aditya.swarup@intel.com>
---
 drivers/gpu/drm/i915/display/intel_csr.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_csr.c b/drivers/gpu/drm/i915/display/intel_csr.c
index 67dc64df78a5..db9f219c4b5a 100644
--- a/drivers/gpu/drm/i915/display/intel_csr.c
+++ b/drivers/gpu/drm/i915/display/intel_csr.c
@@ -40,6 +40,10 @@
 
 #define GEN12_CSR_MAX_FW_SIZE		ICL_CSR_MAX_FW_SIZE
 
+#define ADLS_CSR_PATH			"i915/adls_dmc_ver2_01.bin"
+#define ADLS_CSR_VERSION_REQUIRED	CSR_VERSION(2, 1)
+MODULE_FIRMWARE(ADLS_CSR_PATH);
+
 #define DG1_CSR_PATH			"i915/dg1_dmc_ver2_02.bin"
 #define DG1_CSR_VERSION_REQUIRED	CSR_VERSION(2, 2)
 MODULE_FIRMWARE(DG1_CSR_PATH);
@@ -689,7 +693,11 @@ void intel_csr_ucode_init(struct drm_i915_private *dev_priv)
 	 */
 	intel_csr_runtime_pm_get(dev_priv);
 
-	if (IS_DG1(dev_priv)) {
+	if (IS_ALDERLAKE_S(dev_priv)) {
+		csr->fw_path = ADLS_CSR_PATH;
+		csr->required_version = ADLS_CSR_VERSION_REQUIRED;
+		csr->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
+	} else if (IS_DG1(dev_priv)) {
 		csr->fw_path = DG1_CSR_PATH;
 		csr->required_version = DG1_CSR_VERSION_REQUIRED;
 		csr->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
