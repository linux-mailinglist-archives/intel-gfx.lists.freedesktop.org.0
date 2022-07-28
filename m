Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B87F3583661
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 03:35:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4954210E867;
	Thu, 28 Jul 2022 01:35:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B447810E0B7
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 01:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658972084; x=1690508084;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vlR8SoUAkmPD0jbMhnBrm6wqmzcea/BQ7PkWQPMOTmU=;
 b=IUx5zdATJLRhJDU2iFmPLpsVRteJ+Z5vaNodGumxGASvp3c6X6qoHLcu
 HUPBPFTv5c08QidpN3jfPzDjK2jkdsUI95nQEspH+aFau7OpVfSevm/Oe
 Ur0hmd8rD0nN8m2JmyF/yJ7JLV9TgJwa0+PQClw0KHuFe6sOCLZNQXGri
 WOmmglFc6NaCQ1dC0my6ceXmA950Oai/7brKemUa0pWxR7Wqbxq0emeYb
 vUPbQomkmL3TeQCs6IcQNsq4JORugalyQpSjYGtrDtzjzN4FFC7mCUIVF
 nHi/7GYatkX6WsJNCcFC+7g8ea5IekeCPnA47NtaKA4UOD/9XusuALai6 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="285937891"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="285937891"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:43 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659457058"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:42 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 18:34:17 -0700
Message-Id: <20220728013420.3750388-21-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 20/23] drm/i915/dmc: Load DMC on MTL
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

From: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>

Adding support to load DMC v2.08 on MTL.

Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index fa9ef591b885..9c4f442fa407 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -52,6 +52,11 @@
 
 #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
 
+#define MTL_DMC_PATH			DMC_PATH(mtl, 2, 08)
+#define MTL_DMC_VERSION_REQUIRED	DMC_VERSION(2, 8)
+#define MTL_DMC_MAX_FW_SIZE		0x10000
+MODULE_FIRMWARE(MTL_DMC_PATH);
+
 #define DG2_DMC_PATH			DMC_PATH(dg2, 2, 06)
 #define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 06)
 MODULE_FIRMWARE(DG2_DMC_PATH);
@@ -827,7 +832,11 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
 	 */
 	intel_dmc_runtime_pm_get(dev_priv);
 
-	if (IS_DG2(dev_priv)) {
+	if (IS_METEORLAKE(dev_priv)) {
+		dmc->fw_path = MTL_DMC_PATH;
+		dmc->required_version = MTL_DMC_VERSION_REQUIRED;
+		dmc->max_fw_size = MTL_DMC_MAX_FW_SIZE;
+	} else if (IS_DG2(dev_priv)) {
 		dmc->fw_path = DG2_DMC_PATH;
 		dmc->required_version = DG2_DMC_VERSION_REQUIRED;
 		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
-- 
2.25.1

