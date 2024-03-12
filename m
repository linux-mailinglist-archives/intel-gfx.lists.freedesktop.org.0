Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F720879916
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 17:37:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA11D112F12;
	Tue, 12 Mar 2024 16:37:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QB4TQ+sO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 606B710EF9D;
 Tue, 12 Mar 2024 16:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710261433; x=1741797433;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qZ1jFCMFiDtd9fIbjG/W47jcBo5akC7Q8cvwDOiVhHE=;
 b=QB4TQ+sOR6T1f2uDKa2CZcqeFLH/IlDm6uG8m4eHWJdjv/8lhIeeFhZ2
 8d7Wb7bVuVflBLGYg1VYJ07eH1vveIBZaYcHoGT58XYIWSsfTe0nDz+Zg
 DN3bu7BUB3r67sLk4kJ5vW5qXDWpiXq3iJxOsm2WDrvE+dOdvFtXyOM1i
 yjWMvv0qKRHl2RTT9k/MS4TGk+MXuGwG4UlnPJtXSveOnREdfmIQC8HYY
 LJxSOFoUtDtwrx1QQQjtn/z9UHw3LvzpAXaml98f5A2YXDUW+MmW/r6Zt
 2BK7eF5gy2qlR+/9HHBICA/X7/qF9ID/BG6ODqy2kMnzSz/PVqXQQblFB w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="27458088"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="27458088"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 09:37:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="16245873"
Received: from ticela-or-524.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.255.33.238])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 09:37:12 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 gustavo.sousa@intel.com
Subject: [PATCH v2 7/8] drm/i915/xe2lpd: Load DMC
Date: Tue, 12 Mar 2024 13:36:38 -0300
Message-ID: <20240312163639.172321-8-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240312163639.172321-1-gustavo.sousa@intel.com>
References: <20240312163639.172321-1-gustavo.sousa@intel.com>
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

v2:
  - s/XE2LPD_MAX_FW_SIZE/XE2LPD_DMC_MAX_FW_SIZE/. (Lucas)

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 835781624482..3fa851b5c7a6 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -89,10 +89,14 @@ static struct intel_dmc *i915_to_dmc(struct drm_i915_private *i915)
 	__stringify(major) "_"			\
 	__stringify(minor) ".bin"
 
+#define XE2LPD_DMC_MAX_FW_SIZE		0x8000
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
+		dmc->max_fw_size = XE2LPD_DMC_MAX_FW_SIZE;
+	} else if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0)) {
 		dmc->fw_path = MTL_DMC_PATH;
 		dmc->max_fw_size = XELPDP_DMC_MAX_FW_SIZE;
 	} else if (IS_DG2(i915)) {
-- 
2.44.0

