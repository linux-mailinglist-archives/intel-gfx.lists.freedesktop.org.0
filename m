Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FE71FDA78
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 02:43:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB99B6EA1B;
	Thu, 18 Jun 2020 00:43:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FB246E7EF
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 00:42:54 +0000 (UTC)
IronPort-SDR: HWuqCYpMrMEcBCQ9HPey/O+eEQeK08iGGCjZzmOwHhu9kl08v2tpT9GGySq3NxB6XGMHkQm2hB
 CcXp0DRrLfOw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 17:42:54 -0700
IronPort-SDR: Ozi7XHb2l/ztCnHbmk+uE6K/jua+GzxbQS8zWWLXFGm9BIuaWffIwlUwuAz9dlZMWj7VFI3Bx2
 1qyHFSIAkKTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,524,1583222400"; d="scan'208";a="477011920"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 17 Jun 2020 17:42:54 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 17:42:38 -0700
Message-Id: <20200618004240.16263-31-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200618004240.16263-1-lucas.demarchi@intel.com>
References: <20200618004240.16263-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 30/32] drm/i915/dg1: Load DMC
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matt Atwood <matthew.s.atwood@intel.com>

Add support to load DMC v2.0.2 on DG1

While we're at it, tweak the TGL and RKL firmware size definition to
follow the convention used in previous platforms. Remove obsolete
commenting.

Bpec: 49230

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_csr.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_csr.c b/drivers/gpu/drm/i915/display/intel_csr.c
index 9843c9af6c132..9cb293ee55cea 100644
--- a/drivers/gpu/drm/i915/display/intel_csr.c
+++ b/drivers/gpu/drm/i915/display/intel_csr.c
@@ -38,15 +38,19 @@
  * low-power state and comes back to normal.
  */
 
-#define GEN12_CSR_MAX_FW_SIZE		ICL_CSR_MAX_FW_SIZE
+#define DG1_CSR_PATH			"i915/dg1_dmc_ver2_02.bin"
+#define DG1_CSR_VERSION_REQUIRED	CSR_VERSION(2, 2)
+#define DG1_CSR_MAX_FW_SIZE		ICL_CSR_MAX_FW_SIZE
+MODULE_FIRMWARE(DG1_CSR_PATH);
 
 #define RKL_CSR_PATH			"i915/rkl_dmc_ver2_01.bin"
 #define RKL_CSR_VERSION_REQUIRED	CSR_VERSION(2, 1)
+#define RKL_CSR_MAX_FW_SIZE		ICL_CSR_MAX_FW_SIZE
 MODULE_FIRMWARE(RKL_CSR_PATH);
 
 #define TGL_CSR_PATH			"i915/tgl_dmc_ver2_06.bin"
 #define TGL_CSR_VERSION_REQUIRED	CSR_VERSION(2, 6)
-#define TGL_CSR_MAX_FW_SIZE		0x6000
+#define TGL_CSR_MAX_FW_SIZE		ICL_CSR_MAX_FW_SIZE
 MODULE_FIRMWARE(TGL_CSR_PATH);
 
 #define ICL_CSR_PATH			"i915/icl_dmc_ver1_09.bin"
@@ -686,15 +690,18 @@ void intel_csr_ucode_init(struct drm_i915_private *dev_priv)
 	 */
 	intel_csr_runtime_pm_get(dev_priv);
 
-	if (IS_ROCKETLAKE(dev_priv)) {
+	if (IS_DG1(dev_priv)) {
+		csr->fw_path = DG1_CSR_PATH;
+		csr->required_version = DG1_CSR_VERSION_REQUIRED;
+		csr->max_fw_size = DG1_CSR_MAX_FW_SIZE;
+	} else if (IS_ROCKETLAKE(dev_priv)) {
 		csr->fw_path = RKL_CSR_PATH;
 		csr->required_version = RKL_CSR_VERSION_REQUIRED;
-		csr->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
+		csr->max_fw_size = RKL_CSR_MAX_FW_SIZE;
 	} else if (INTEL_GEN(dev_priv) >= 12) {
 		csr->fw_path = TGL_CSR_PATH;
 		csr->required_version = TGL_CSR_VERSION_REQUIRED;
-		/* Allow to load fw via parameter using the last known size */
-		csr->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
+		csr->max_fw_size = TGL_CSR_MAX_FW_SIZE;
 	} else if (IS_GEN(dev_priv, 11)) {
 		csr->fw_path = ICL_CSR_PATH;
 		csr->required_version = ICL_CSR_VERSION_REQUIRED;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
