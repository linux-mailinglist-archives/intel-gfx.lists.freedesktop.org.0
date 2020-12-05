Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3532CF887
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Dec 2020 02:09:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE0096E2DF;
	Sat,  5 Dec 2020 01:09:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D023D6E2D5
 for <intel-gfx@lists.freedesktop.org>; Sat,  5 Dec 2020 01:09:17 +0000 (UTC)
IronPort-SDR: wW2O8UBm0H9+XfIUGM2BKZ2VftVl9C5kbD7PMQwOlo/zRyvNpB9ry/Oh0kv+kaY58g68YHs8Tv
 YdZU1TdMB/sw==
X-IronPort-AV: E=McAfee;i="6000,8403,9825"; a="173571050"
X-IronPort-AV: E=Sophos;i="5.78,394,1599548400"; d="scan'208";a="173571050"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 17:09:17 -0800
IronPort-SDR: Ttq9PDwcgljxi1WRUVn7qrRFQSVfx4nBRWanv+F34a//ZJMtk9z8w+tmzL1rm9ukt7G8Vvg221
 oAuUIWELNzFw==
X-IronPort-AV: E=Sophos;i="5.78,394,1599548400"; d="scan'208";a="369063088"
Received: from msdesadl-mobl1.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.251.12.22])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 17:09:17 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Dec 2020 17:08:43 -0800
Message-Id: <20201205010844.361880-22-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201205010844.361880-1-aditya.swarup@intel.com>
References: <20201205010844.361880-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/22] drm/i915/adl_s: Load DMC
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
