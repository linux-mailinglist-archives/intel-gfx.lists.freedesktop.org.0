Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E4F82DCCC
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jan 2024 16:58:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AEBC10E04E;
	Mon, 15 Jan 2024 15:58:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EBB410E04E
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jan 2024 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705334296; x=1736870296;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Cl0pZWVaWVOJYDwctxhGmaB6i2ASbVPS/ERRqGHBP7U=;
 b=ZejILAZNdGVXv+kkDED8FwrZUQO/UhA7GIWaURiGFU9znFuIA4BgOunU
 XuC9Cyg15w/o9n4kHo0fvsddSrUsRA5TmGGhpYiknf1zEi7OZIOmylhD/
 g6yfFLPRxwCx0cyevHAs9kCQ/0koexM25GTjDQhA3tYeGz85kX/UFOrIT
 2r2clnPZ5BbL/Er51wzSwXkUZhwn9zGcmehWNEVNgbAAgEdpsURPkU6tr
 UZlaZ8DN1CM1NRvNtU7H0PH8dPFfv0zkXrRUk4x4lGVFPtEgyHRnezlit
 CjCxOHRvvkz7QEz+OBXtq1CaRdjxDS+VaRf3eXULNKkLylYg9v/9V0Goa A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="390095225"
X-IronPort-AV: E=Sophos;i="6.04,196,1695711600"; d="scan'208";a="390095225"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 07:58:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="902814159"
X-IronPort-AV: E=Sophos;i="6.04,196,1695711600"; d="scan'208";a="902814159"
Received: from sinjan-super-server.iind.intel.com ([10.145.169.153])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 07:58:11 -0800
From: Karthik Poosa <karthik.poosa@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/xe/guc: Enable WA 14018913170
Date: Mon, 15 Jan 2024 21:36:15 +0530
Message-Id: <20240115160615.2235819-1-karthik.poosa@intel.com>
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

Signed-off-by: Karthik Poosa <karthik.poosa@intel.com>
---
 drivers/gpu/drm/xe/xe_guc.c        | 13 +++++++++++++
 drivers/gpu/drm/xe/xe_guc_fwif.h   |  1 +
 drivers/gpu/drm/xe/xe_wa_oob.rules |  5 +++++
 3 files changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/xe/xe_guc.c b/drivers/gpu/drm/xe/xe_guc.c
index 235d27b17ff9..9411bd9d4325 100644
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
+				version->major, version->minor, version->patch);
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

