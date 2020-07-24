Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0F522D12B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 23:39:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8E986EA0E;
	Fri, 24 Jul 2020 21:39:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4D036EA0A
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 21:39:24 +0000 (UTC)
IronPort-SDR: p7u/bNjL45GJNgLO5DOhIpP8R1TNrSicPmM4fAbF5kwn83oH8ZBkZcfRYBVIOReaeDb6yb1Wrm
 ES4nlyfixXzA==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="149970018"
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="149970018"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 14:39:24 -0700
IronPort-SDR: WiHj7JCkQDG7LEahlE+NjsvmYDZKipoIe1y05MoPvyxNSBGzQhL18GvJlQyALrTjvMWA7DVrBI
 +SI3+uAYXH4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="329041986"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga007.jf.intel.com with ESMTP; 24 Jul 2020 14:39:23 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jul 2020 14:39:15 -0700
Message-Id: <20200724213918.27424-20-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200724213918.27424-1-lucas.demarchi@intel.com>
References: <20200724213918.27424-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 19/22] drm/i915/dg1: Load DMC
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
index f22a7645c249..ccf13ea627d7 100644
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
