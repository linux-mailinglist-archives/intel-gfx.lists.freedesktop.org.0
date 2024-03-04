Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B50870998
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 19:31:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29533112471;
	Mon,  4 Mar 2024 18:31:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ilnpv+y2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4911911247A;
 Mon,  4 Mar 2024 18:31:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709577081; x=1741113081;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZRi9YZIjld7rkro4OGLDGn6IBLqjfAxKVyIWEYasa8E=;
 b=ilnpv+y28SCvDDgIzWUjjLTopOsrirKNe+NXGrS7TUjf0sUxjC6bV5j3
 zveLjluqK1tF/Rpqq3S8fJFObcz9X33+nEMzkuixV9b55os/gYTfSrM13
 iCP7PMn4v2E3SRnBd1TyL5wTc9nUHXTHdPW4BAIH27Ys5QlKXVcizsj51
 97914M9WilokQNWD8Qx33iQo+oVGi/1IDwCXWOCfIk8V75p3YVgm+eXSU
 bST+lVn/bYi3koHdurZx8+vOt2o32UmM7S2JvN3P5f3ubumGpzRpiu/kv
 Y5Xyc6awcP9oyT4vndN0EwMdpaFNSAL6t2Aa+PxpuOQbdO7TOeYGnIB6A w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="3943540"
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; 
   d="scan'208";a="3943540"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 10:31:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; d="scan'208";a="13756509"
Received: from ticela-or-128.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.255.33.50])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 10:31:19 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, vinod.govindapillai@intel.com,
 stanislav.lisovskiy@intel.com, Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH 7/8] drm/i915/xe2lpd: Load DMC
Date: Mon,  4 Mar 2024 15:30:26 -0300
Message-ID: <20240304183028.195057-8-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240304183028.195057-1-gustavo.sousa@intel.com>
References: <20240304183028.195057-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Load DMC for Xe2LPD. The value 0x8000 is the maximum payload size for
any Xe2LPD DMC firmware.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 835781624482..54c5909de293 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -89,10 +89,14 @@ static struct intel_dmc *i915_to_dmc(struct drm_i915_private *i915)
 	__stringify(major) "_"			\
 	__stringify(minor) ".bin"
 
+#define XE2LPD_MAX_FW_SIZE		0x8000
 #define XELPDP_DMC_MAX_FW_SIZE		0x7000
 #define DISPLAY_VER13_DMC_MAX_FW_SIZE	0x20000
 #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
 
+#define XE2LPD_DMC_PATH			DMC_PATH(xe2lpd)
+MODULE_FIRMWARE(XE2LPD_DMC_PATH);
+
 #define MTL_DMC_PATH			DMC_PATH(mtl)
 MODULE_FIRMWARE(MTL_DMC_PATH);
 
@@ -987,7 +991,10 @@ void intel_dmc_init(struct drm_i915_private *i915)
 
 	INIT_WORK(&dmc->work, dmc_load_work_fn);
 
-	if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0)) {
+	if (DISPLAY_VER_FULL(i915) == IP_VER(20, 0)) {
+		dmc->fw_path = XE2LPD_DMC_PATH;
+		dmc->max_fw_size = XE2LPD_MAX_FW_SIZE;
+	} else if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0)) {
 		dmc->fw_path = MTL_DMC_PATH;
 		dmc->max_fw_size = XELPDP_DMC_MAX_FW_SIZE;
 	} else if (IS_DG2(i915)) {
-- 
2.44.0

