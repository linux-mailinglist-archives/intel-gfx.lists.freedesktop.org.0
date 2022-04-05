Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C34B4F207B
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 02:38:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32C2810E07A;
	Tue,  5 Apr 2022 00:38:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9D1310E07A
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 00:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649119133; x=1680655133;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XY0eAlImgjbG2UUvjRHnGCLqfCiiqvu7hXKg5rT3G6s=;
 b=OtgaiD1rBorCF8bCkPuzWfwOSfHNXiAnQnMdp4Z8p2MpFGgJZLldCpGS
 SnX7lcd2gXJMz/JyVjhnnl6Tz5FkMgfKj5G69bGyWmxqaNyIh33zxZ9Sd
 KW9c5s6nC/4lSVpRigRN54+D/yf7MndSr50QlpEtum5Rg+JddCLmZu2bi
 EWeoALmDk8s5AHN+m/B4LQXC4V6BiYMiDgyS7kTImzsuZXF2anJwP2RmR
 GsU3cUfByVDqMTKQvUT+mzlZn3ya1gxhVL+eMg5OUqNJAdLI8+pCI0N+M
 rFZCAvlI27QwxmEmF32xTUmXUYWcjVVQFB2c8vs4W+pMfid8Qgm0GESj2 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10307"; a="259468459"
X-IronPort-AV: E=Sophos;i="5.90,235,1643702400"; d="scan'208";a="259468459"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 17:38:52 -0700
X-IronPort-AV: E=Sophos;i="5.90,235,1643702400"; d="scan'208";a="569624666"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 17:38:52 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Apr 2022 17:35:37 -0700
Message-Id: <20220405003537.3131185-1-anusha.srivatsa@intel.com>
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

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 42 ++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 257cf662f9f4..dc4ff43e9467 100644
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
+			if ((!(mmioaddr[i] >= TGL_MAIN_MMIO_START && mmioaddr[i] <= TGL_MAIN_MMIO_END) ||
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

