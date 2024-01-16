Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E76682EA35
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 08:40:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B2BA10E088;
	Tue, 16 Jan 2024 07:40:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F1D810E088
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jan 2024 07:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705390824; x=1736926824;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Tg3Ry1drrubF8rTGbXSCPVPvLLPycrR27seK155p/X0=;
 b=Mq6eSPZs5+bJM+2dNzTPrbUmiSjSLdx0dryAoIzobbkKrHe6kQb/CZre
 0LDwj5Wwt5gIhxPbXwo8L5HCNtQBlKGxcfdxXt1fQp6lT4z1yTc/rvkaR
 Nuhd4NjpoHa9Gb7D8BlX5JrOYMO/ozXm1uJkPRKJk6HvtELkAAS88docn
 QOKc46RpIjM8cAwD8/CoPgvhxEWKz3yzOl2UO6XvansUUO/M4qbc9ofnl
 ykCkkmGkxNRduILsblo78XZFxvd0goYggQMbVE0Sm4NFkn0f27OINjQqC
 p3pxUboWoIf+1VUagUfmZtkZoS+JBoLtumVVIRrkQsCgOUGzmumonQGxG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="430945102"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="430945102"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 23:40:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="907285793"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="907285793"
Received: from sinjan-super-server.iind.intel.com ([10.145.169.153])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 23:40:20 -0800
From: Karthik Poosa <karthik.poosa@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/xe/guc: Enable WA 14018913170
Date: Tue, 16 Jan 2024 13:18:26 +0530
Message-Id: <20240116074826.2294232-1-karthik.poosa@intel.com>
X-Mailer: git-send-email 2.25.1
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
Cc: Karthik Poosa <karthik.poosa@intel.com>, matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The GuC handles the WA, the KMD just needs to set the flag to enable
it on the appropriate platforms.

v2: Fixed CI checkpatch warning, alignment should match open parenthesis.

Signed-off-by: Karthik Poosa <karthik.poosa@intel.com>
---
 drivers/gpu/drm/xe/xe_guc.c        | 13 +++++++++++++
 drivers/gpu/drm/xe/xe_guc_fwif.h   |  1 +
 drivers/gpu/drm/xe/xe_wa_oob.rules |  5 +++++
 3 files changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/xe/xe_guc.c b/drivers/gpu/drm/xe/xe_guc.c
index 235d27b17ff9..5ecd9cd964de 100644
--- a/drivers/gpu/drm/xe/xe_guc.c
+++ b/drivers/gpu/drm/xe/xe_guc.c
@@ -132,10 +132,15 @@ static u32 guc_ctl_ads_flags(struct xe_guc *guc)
 	return flags;
 }
 
+#define GUC_VER(maj, min, pat)	(((maj) << 16) | ((min) << 8) | (pat))
+
 static u32 guc_ctl_wa_flags(struct xe_guc *guc)
 {
 	struct xe_device *xe = guc_to_xe(guc);
 	struct xe_gt *gt = guc_to_gt(guc);
+	struct xe_uc_fw *uc_fw = &guc->fw;
+	struct xe_uc_fw_version *version = &uc_fw->versions.found[XE_UC_FW_VER_COMPATIBILITY];
+
 	u32 flags = 0;
 
 	if (XE_WA(gt, 22012773006))
@@ -165,6 +170,14 @@ static u32 guc_ctl_wa_flags(struct xe_guc *guc)
 	if (XE_WA(gt, 1509372804))
 		flags |= GUC_WA_RENDER_RST_RC6_EXIT;
 
+	if (XE_WA(gt, 14018913170)) {
+		if (GUC_VER(version->major, version->minor, version->patch) >= GUC_VER(70, 7, 0))
+			flags |= GUC_WA_ENABLE_TSC_CHECK_ON_RC6;
+		else
+			drm_warn(&xe->drm, "can't apply WA 14018913170, GUC version expected >= 70.7.0, found %us %us %us\n",
+				 version->major, version->minor, version->patch);
+	}
+
 	return flags;
 }
 
diff --git a/drivers/gpu/drm/xe/xe_guc_fwif.h b/drivers/gpu/drm/xe/xe_guc_fwif.h
index 4dd5a88a7826..c281fdbfd2d6 100644
--- a/drivers/gpu/drm/xe/xe_guc_fwif.h
+++ b/drivers/gpu/drm/xe/xe_guc_fwif.h
@@ -97,6 +97,7 @@ struct guc_update_exec_queue_policy {
 #define   GUC_WA_POLLCS			BIT(18)
 #define   GUC_WA_RENDER_RST_RC6_EXIT	BIT(19)
 #define   GUC_WA_RCS_REGS_IN_CCS_REGS_LIST	BIT(21)
+#define   GUC_WA_ENABLE_TSC_CHECK_ON_RC6	BIT(22)
 
 #define GUC_CTL_FEATURE			2
 #define   GUC_CTL_ENABLE_SLPC		BIT(2)
diff --git a/drivers/gpu/drm/xe/xe_wa_oob.rules b/drivers/gpu/drm/xe/xe_wa_oob.rules
index e73b84e01ea1..b138cbd51bdb 100644
--- a/drivers/gpu/drm/xe/xe_wa_oob.rules
+++ b/drivers/gpu/drm/xe/xe_wa_oob.rules
@@ -17,3 +17,8 @@
 14019821291	MEDIA_VERSION_RANGE(1300, 2000)
 14015076503	MEDIA_VERSION(1300)
 16020292621	GRAPHICS_VERSION(2004), GRAPHICS_STEP(A0, B0)
+14018913170	GRAPHICS_VERSION(2004), GRAPHICS_STEP(A0, B0)
+		MEDIA_VERSION(2000), GRAPHICS_STEP(A0, A1)
+		GRAPHICS_VERSION_RANGE(1270, 1274)
+		MEDIA_VERSION(1300)
+		PLATFORM(DG2)
-- 
2.25.1

