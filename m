Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C900F4783BC
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 04:43:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C52EC10E210;
	Fri, 17 Dec 2021 03:43:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BE1A10E210
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Dec 2021 03:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639712615; x=1671248615;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lBbIu3JhceJa6ErTqIlKjbM1upP96dCnzq/QsKwcjdM=;
 b=XIWCzLP60UQgIpZPuxRhKCoFg14Tmb3Nv3TAPAEvgjyBgBxMoNhcF8nr
 swzlJ4gO5SXMemUlxRsIxAqVyXaZgHNQ8x9rqwal2Z2dwjH48N9qXk0gg
 NzwrzW3DBqwAOS6J5BXhzYqrcde22oc/u4FG+qaowM9QirZUOmG3LZmu+
 FpHmcpgK6PEBZ1xvsIyMVbz79BgZq4Gxj85QvC3kWNStpuCGDpipCTI0l
 uyN9OUG+1aa7xMxMBnRAZefnSjuBK+1KeJCzLEaDxTOx29aJ3I97IsJ2f
 eMCpaF97Y8FXpzRhgstS35gRKKKnEfAIWM5kb6Bw2wGm00rvLO1kmzLVH A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10200"; a="263842468"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="263842468"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2021 19:43:34 -0800
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="611977708"
Received: from bfyarbro-mobl1.amr.corp.intel.com (HELO
 mtolakan-mobl1.intel.com) ([10.251.6.157])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2021 19:43:34 -0800
From: Madhumitha Tolakanahalli Pradeep
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Dec 2021 19:41:41 -0800
Message-Id: <20211217034141.198033-1-madhumitha.tolakanahalli.pradeep@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dmc: Eliminate remnant GEN<n>
 references
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Replace GEN<n> with DISPLAY_VER<n>, in line with the naming convention
followed in the i915 driver code.

Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index a69b28d65a9b..7616a3906b9e 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -43,9 +43,9 @@
 	__stringify(major) "_"		 \
 	__stringify(minor) ".bin"
 
-#define GEN12_DMC_MAX_FW_SIZE		ICL_DMC_MAX_FW_SIZE
+#define DISPLAY_VER13_DMC_MAX_FW_SIZE	0x20000
 
-#define GEN13_DMC_MAX_FW_SIZE		0x20000
+#define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
 
 #define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 14)
 #define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 14)
@@ -684,23 +684,23 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
 	if (IS_ALDERLAKE_P(dev_priv)) {
 		dmc->fw_path = ADLP_DMC_PATH;
 		dmc->required_version = ADLP_DMC_VERSION_REQUIRED;
-		dmc->max_fw_size = GEN13_DMC_MAX_FW_SIZE;
+		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
 	} else if (IS_ALDERLAKE_S(dev_priv)) {
 		dmc->fw_path = ADLS_DMC_PATH;
 		dmc->required_version = ADLS_DMC_VERSION_REQUIRED;
-		dmc->max_fw_size = GEN12_DMC_MAX_FW_SIZE;
+		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
 	} else if (IS_DG1(dev_priv)) {
 		dmc->fw_path = DG1_DMC_PATH;
 		dmc->required_version = DG1_DMC_VERSION_REQUIRED;
-		dmc->max_fw_size = GEN12_DMC_MAX_FW_SIZE;
+		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
 	} else if (IS_ROCKETLAKE(dev_priv)) {
 		dmc->fw_path = RKL_DMC_PATH;
 		dmc->required_version = RKL_DMC_VERSION_REQUIRED;
-		dmc->max_fw_size = GEN12_DMC_MAX_FW_SIZE;
+		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
 	} else if (DISPLAY_VER(dev_priv) >= 12) {
 		dmc->fw_path = TGL_DMC_PATH;
 		dmc->required_version = TGL_DMC_VERSION_REQUIRED;
-		dmc->max_fw_size = GEN12_DMC_MAX_FW_SIZE;
+		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
 	} else if (DISPLAY_VER(dev_priv) == 11) {
 		dmc->fw_path = ICL_DMC_PATH;
 		dmc->required_version = ICL_DMC_VERSION_REQUIRED;
-- 
2.33.1

