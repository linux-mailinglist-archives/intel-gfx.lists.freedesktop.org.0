Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EED885F8F6
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 13:57:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C42D310E912;
	Thu, 22 Feb 2024 12:57:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DB8lndND";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E763A10E912
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 12:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708606628; x=1740142628;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LWW34ow8K42Jt0Sf7epf1OztyEOVjx2KtM3k76g/YRw=;
 b=DB8lndNDLeMssHilqILfytZCQd5CfdWFcS5b0whU0VD2i9pLt+K4JgXw
 pO5v6DtF3cHbxIyI9Ym6lRucgrcTQWoiHPPnKhD6jEAvAfEpVr0QECLEr
 f1i1FnUeJesIWgheMpxxCwfrsaDbrBasLW1MGDihT0U2J3CmU7ZcHh+b5
 xtJ4KHBUToumNbWMtvQbTdEFYyH3Q7GRuDEx1pd3CqUm6Ea8dpWMLojK2
 yQOe+hsjGhHyo5ng+yGtnAEx/tfkArEilH+HGiiIcc3pNUq5tYWMjyltB
 EpOtCEKs7LrgBeaWkm3785nlbjcIU0u02lL04Keho2PLAMs1GBHtkyTjw w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2979141"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="2979141"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 04:57:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="5464349"
Received: from sfriis-mobl.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.249.44.6])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 04:57:06 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, stanislav.lisovskiy@intel.com,
 lucas.demarchi@intel.com, matthew.d.roper@intel.com
Subject: [PATCH v1 5/6] drm/i915/xe2lpd: Load DMC
Date: Thu, 22 Feb 2024 14:56:33 +0200
Message-Id: <20240222125634.275047-6-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240222125634.275047-1-vinod.govindapillai@intel.com>
References: <20240222125634.275047-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Load DMC for XE2LPD. The value 0x8000 is the maximum payload size for
any xe2lpd dmc firmware.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
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
2.34.1

