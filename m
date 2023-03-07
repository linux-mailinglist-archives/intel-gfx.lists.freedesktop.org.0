Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C04036AF620
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 20:51:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5E4910E285;
	Tue,  7 Mar 2023 19:51:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7347910E285
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 19:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678218693; x=1709754693;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CuMv3oO0sOYbcdGi+fuudPIxc8/cgpJk7er2//+/rlY=;
 b=cNcjI9MsloN47I07DE4hxl8NRV4XqIzLbKahGKls9DGF4Z2N0tkXb+P6
 abm49FZg4MtFhBane/adrhgtyzp/cnCZ+6XQ0mZOWcM6Weu9FRONnM/0k
 x2jEXrs/q/V562rquv0ec2LDYuV9jQhQQvcxH+wO0uO1psWvC1ik3egoc
 YU/b/xC3onLBmGK7Iwj9/PAOV9YeQkgzarP8M49cFOzzGwPJe5pYaBr4d
 xQDm06lKQUz6yuAmiknyvN+pGQDfmNH/M4MWFg17M7esdqEVabwMqP6K9
 z1EK+2TVQI+54P9XP4k3PUWihuFKJiQLrNDXoWeYuLvHcCyou/6/Accx5 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="398533888"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="398533888"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 11:51:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="800484866"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="800484866"
Received: from ksriniva-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.255.34.13])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 11:51:31 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Mar 2023 16:51:11 -0300
Message-Id: <20230307195111.90767-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/dmc: Load DMC on MTL
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>

Add support to load DMC on MTL.

According to the spec and based on tests done on real hardware, 0x7000
is a reasonable size limit that covers each possible payload.

v2:
  - Tighten payload size limit. (Matt, Rodrigo)
  - Use a better name for the defined payload limit. (Rodrigo)

Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 6b162f77340e..d84cf9237b9c 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -89,10 +89,13 @@ static struct intel_dmc *i915_to_dmc(struct drm_i915_private *i915)
 	__stringify(major) "_"			\
 	__stringify(minor) ".bin"
 
+#define XELPDP_DMC_MAX_FW_SIZE		0x7000
 #define DISPLAY_VER13_DMC_MAX_FW_SIZE	0x20000
-
 #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
 
+#define MTL_DMC_PATH			DMC_PATH(mtl)
+MODULE_FIRMWARE(MTL_DMC_PATH);
+
 #define DG2_DMC_PATH			DMC_LEGACY_PATH(dg2, 2, 08)
 MODULE_FIRMWARE(DG2_DMC_PATH);
 
@@ -979,7 +982,10 @@ void intel_dmc_init(struct drm_i915_private *i915)
 
 	INIT_WORK(&dmc->work, dmc_load_work_fn);
 
-	if (IS_DG2(i915)) {
+	if (IS_METEORLAKE(i915)) {
+		dmc->fw_path = MTL_DMC_PATH;
+		dmc->max_fw_size = XELPDP_DMC_MAX_FW_SIZE;
+	} else if (IS_DG2(i915)) {
 		dmc->fw_path = DG2_DMC_PATH;
 		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
 	} else if (IS_ALDERLAKE_P(i915)) {
-- 
2.39.2

