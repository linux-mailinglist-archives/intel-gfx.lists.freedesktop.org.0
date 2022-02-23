Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE134C1D7A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 22:08:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3508C10EFCB;
	Wed, 23 Feb 2022 21:08:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5753710EFC6
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 21:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645650510; x=1677186510;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WS5bEEe2KCuSE76F7/JSIE6oVvZw285rkmQxx50aIF8=;
 b=HFUueGB6UlIFsOJNfzogWHYqldM7RcQbSEd4lyJY1/8YXOZ+6DLieCsR
 HAG3EIMZWCjl/JHpwvUBKv8D6xyixTxFhANt/PPhJ+6haHoXdUuzHHvIx
 6QHOL6mR0z7fWlwGEfp3qsR5VsrpVL+75ejwze3VaNBmxD3mm9AxHetHx
 4zl/02DDjzzYos4R/DLvnIGmW4p5fKIs7LbDUy/vrNiZgc3h04zfEweLu
 4kv9WjPuxoYXUY/EV/zlBTT1vSkasg45Fl7K+yEFsEPu5L4rxyDQoPgre
 dOHatVUsTS3NJtIVDKqF2LatZKDXUCa3qaUDsG4HCU1aq8m4ctb2/vxL0 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="252000043"
X-IronPort-AV: E=Sophos;i="5.88,392,1635231600"; d="scan'208";a="252000043"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 13:08:29 -0800
X-IronPort-AV: E=Sophos;i="5.88,392,1635231600"; d="scan'208";a="591850075"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 13:08:28 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 13:09:33 -0800
Message-Id: <20220223210933.3049143-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dmc: Do not try loading wrong DMC
 version
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

Checking by >= DISPLAY_VER(12) made sense when the support for Tiger
Lake was added. However now it only leads to wrong behavior when adding
more platforms since it's expected they either don't have DMC to load
or they have their own blob.

Logs from DG2 loading on a CFL host, without having a DMC firmware
defined:

	<6>[    0.000000] DMI: Intel Corporation CoffeeLake Client Platform/CoffeeLake S UDIMM RVP, BIOS CNLSFWR1.R00.X220.B00.2103302221 03/30/2021
	...
	<6>[    2.706607] pci 0000:03:00.0: [8086:56a0] type 00 class 0x030000
	...
	<7>[    6.340397] i915 0000:03:00.0: [drm:intel_dmc_ucode_init [i915]] Loading i915/tgl_dmc_ver2_12.bin
	<7>[    6.341841] i915 0000:03:00.0: [drm:intel_fbc_init [i915]] Sanitized enable_fbc value: 1
	<3>[    6.342432] genirq: Flags mismatch irq 0. 00000080 (i915) vs. 00015a00 (timer)
	<6>[    6.346283] i915 0000:03:00.0: [drm] Finished loading DMC firmware i915/tgl_dmc_ver2_12.bin (v2.12)
	<3>[    6.385756] i915 0000:03:00.0: Device initialization failed (-16)
	<5>[    6.385778] i915 0000:03:00.0: Please file a bug on drm/i915; see https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs for details.
	<4>[    6.385782] i915: probe of 0000:03:00.0 failed with error -16

TGL is the only platform left with DISPLAY_VER() == 12 that is not
handled already in the if/else ladder, so handle it specifically.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 7616a3906b9e..133476be6d28 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -697,7 +697,7 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
 		dmc->fw_path = RKL_DMC_PATH;
 		dmc->required_version = RKL_DMC_VERSION_REQUIRED;
 		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
-	} else if (DISPLAY_VER(dev_priv) >= 12) {
+	} else if (IS_TIGERLAKE(dev_priv)) {
 		dmc->fw_path = TGL_DMC_PATH;
 		dmc->required_version = TGL_DMC_VERSION_REQUIRED;
 		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
-- 
2.35.1

