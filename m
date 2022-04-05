Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F934F3CC6
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 19:17:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0599610ED0F;
	Tue,  5 Apr 2022 17:17:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D14DD10ED04
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 17:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649179062; x=1680715062;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IOC/vf1VXboYILw8kZtT7lTw0KPN5IK85t2UDKuQzqI=;
 b=GMFJnGWKWqjflAcB6sJARjzz6YtvR7g1HbVtf54xH3RVHbtN4tRZImOa
 CQZc+wKL4CeR9+kSx/mnu3WdKAOobjANJ2RGlo2pd+ZBVx+LEaNhjVT7V
 jQ9n9mQ20nYru7LZ0gCPAkPlRyOX9uuYLjG3TpirY2UYGqGkrJrexlT3Y
 997QLX7hOgz9iJBries78cnucg3EihuqpNAIlGcmgotPcMQKKGnoPGiDB
 0m0g0bY/JNmwQ8FuoCsM08+XxOBO3rrbZTALfGP7/V/jx+VWe9VdB8hww
 0xEkwwDmXgQXo3+G2BAQFD1AFs7jdV7UD+WirTcCSGx82TS+VcUOepPMr Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="241397182"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="241397182"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 10:17:42 -0700
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="722135633"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 10:17:42 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Apr 2022 10:14:29 -0700
Message-Id: <20220405171429.3149199-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dmc: Add MMIO range restrictions
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Bspec has added some steps that check for DMC MMIO range before
programming them.

v2: Fix for CI failure for v1

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 42 ++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 257cf662f9f4..05d8e90854ec 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -103,6 +103,18 @@ MODULE_FIRMWARE(BXT_DMC_PATH);
 #define DMC_V1_MAX_MMIO_COUNT		8
 #define DMC_V3_MAX_MMIO_COUNT		20
 #define DMC_V1_MMIO_START_RANGE		0x80000
+#define TGL_MAIN_MMIO_START		0x8F000
+#define TGL_MAIN_MMIO_END		0x8FFFF
+#define TGL_PIPEA_MMIO_START		0x92000
+#define TGL_PIPEA_MMIO_END		0x93FFF
+#define TGL_PIPEB_MMIO_START		0x96000
+#define TGL_PIPEB_MMIO_END		0x97FFF
+#define TGL_PIPEC_MMIO_START		0x9A000
+#define TGL_PIPEC_MMIO_END		0x9BFFF
+#define TGL_PIPED_MMIO_START		0x9E000
+#define TGL_PIPED_MMIO_END		0x9FFFF
+#define ADLP_PIPE_MMIO_START		0x5F000
+#define ADLP_PIPE_MMIO_END		0x5FFFF
 
 struct intel_css_header {
 	/* 0x09 for DMC */
@@ -374,6 +386,30 @@ static void dmc_set_fw_offset(struct intel_dmc *dmc,
 	}
 }
 
+static bool dmc_mmio_addr_sanity_check(struct intel_dmc *dmc, const u32 *mmioaddr,
+u32 mmio_count)
+{
+	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
+	int i;
+
+	if (IS_DG2(i915) || IS_ALDERLAKE_P(i915)) {
+		for (i = 0; i < mmio_count; i++) {
+			if (!((mmioaddr[i] >= TGL_MAIN_MMIO_START && mmioaddr[i] <= TGL_MAIN_MMIO_END) ||
+			      (mmioaddr[i] >= ADLP_PIPE_MMIO_START && mmioaddr[i] <= ADLP_PIPE_MMIO_END)))
+				return false;
+		}
+	} else if (IS_TIGERLAKE(i915) || IS_DG1(i915) || IS_ALDERLAKE_S(i915))
+		for (i = 0; i < mmio_count; i++) {
+			if (!((mmioaddr[i] >= TGL_MAIN_MMIO_START && mmioaddr[i] <= TGL_MAIN_MMIO_END) ||
+			      (mmioaddr[i] >= TGL_PIPEA_MMIO_START && mmioaddr[i] <= TGL_PIPEA_MMIO_END) ||
+			      (mmioaddr[i] >= TGL_PIPEB_MMIO_START && mmioaddr[i] <= TGL_PIPEB_MMIO_END) ||
+			      (mmioaddr[i] >= TGL_PIPEC_MMIO_START && mmioaddr[i] <= TGL_PIPEC_MMIO_END) ||
+			      (mmioaddr[i] >= TGL_PIPED_MMIO_START && mmioaddr[i] <= TGL_PIPEC_MMIO_END)))
+				return false;
+	}
+	return true;
+}
+
 static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
 			       const struct intel_dmc_header_base *dmc_header,
 			       size_t rem_size, u8 dmc_id)
@@ -443,6 +479,12 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
 		return 0;
 	}
 
+	if (dmc_header->header_ver == 3) {
+		if (!dmc_mmio_addr_sanity_check(dmc, mmioaddr, mmio_count))
+			drm_err(&i915->drm, "DMC firmware has Wrong MMIO Addresses\n");
+			return 0;
+	}
+
 	for (i = 0; i < mmio_count; i++) {
 		dmc_info->mmioaddr[i] = _MMIO(mmioaddr[i]);
 		dmc_info->mmiodata[i] = mmiodata[i];
-- 
2.25.1

