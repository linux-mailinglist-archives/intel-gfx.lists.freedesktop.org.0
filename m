Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 505271C1B29
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 19:08:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48D2C6ED09;
	Fri,  1 May 2020 17:08:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D25AF6ECED
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 17:08:00 +0000 (UTC)
IronPort-SDR: 9650b0cJauLT6qW/5WNaZ/kzZgMHPkIBTbQjHq2scww/nHwReT4At+LvtQNiDxLm2TZrDj2b9z
 4l2fVEIJEt4Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 10:07:59 -0700
IronPort-SDR: 4wUhWENRpkDg//39R4cSPCwSOBwq4+a71G4nFF0QsuAYcjSvQtOnHiNcpfTtqThXgJbOxPRkIv
 pHSu4dHLGTxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,340,1583222400"; d="scan'208";a="250062110"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga008.fm.intel.com with ESMTP; 01 May 2020 10:07:59 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 May 2020 10:07:29 -0700
Message-Id: <20200501170748.358135-5-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200501170748.358135-1-matthew.d.roper@intel.com>
References: <20200501170748.358135-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/23] drm/i915/rkl: Load DMC firmware for
 Rocket Lake
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

Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_csr.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_csr.c b/drivers/gpu/drm/i915/display/intel_csr.c
index 3112572cfb7d..319932b03e88 100644
--- a/drivers/gpu/drm/i915/display/intel_csr.c
+++ b/drivers/gpu/drm/i915/display/intel_csr.c
@@ -40,6 +40,10 @@
 
 #define GEN12_CSR_MAX_FW_SIZE		ICL_CSR_MAX_FW_SIZE
 
+#define RKL_CSR_PATH			"i915/rkl_dmc_ver2_01.bin"
+#define RKL_CSR_VERSION_REQUIRED	CSR_VERSION(2, 1)
+MODULE_FIRMWARE(RKL_CSR_PATH);
+
 #define TGL_CSR_PATH			"i915/tgl_dmc_ver2_06.bin"
 #define TGL_CSR_VERSION_REQUIRED	CSR_VERSION(2, 6)
 #define TGL_CSR_MAX_FW_SIZE		0x6000
@@ -682,7 +686,11 @@ void intel_csr_ucode_init(struct drm_i915_private *dev_priv)
 	 */
 	intel_csr_runtime_pm_get(dev_priv);
 
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (IS_ROCKETLAKE(dev_priv)) {
+		csr->fw_path = RKL_CSR_PATH;
+		csr->required_version = RKL_CSR_VERSION_REQUIRED;
+		csr->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
+	} else if (INTEL_GEN(dev_priv) >= 12) {
 		csr->fw_path = TGL_CSR_PATH;
 		csr->required_version = TGL_CSR_VERSION_REQUIRED;
 		/* Allow to load fw via parameter using the last known size */
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
