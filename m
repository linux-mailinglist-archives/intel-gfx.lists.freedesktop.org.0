Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0CEF82E038
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jan 2024 19:47:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E354810E381;
	Mon, 15 Jan 2024 18:47:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9111A10E381
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jan 2024 18:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705344442; x=1736880442;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=spLCxGWRlCTHUmXyI+XdwF57qCHCIzbjHe0xFQe1WMg=;
 b=OFofj0b2ENnAESdgV0zjZ4GJqBQhnBAEsvme9Iq0rsWTYxwxn3DPIYhL
 5GaG0mrnx39bL8NE5bAvMvacsRsy4mUi3l8Te2ZXXt6N07WGVB6QBAsHD
 PqaTTsCEzquA/0lXhfh6lt9Kw6csHKZghWnWNPglvwblxtlNpxid3f/9f
 jvuu3fQ9ZmBgz6XePXQsTyl8bWKB7ewtPR4mIQ/WzpbOEuDNDtl2HXnWh
 PKuzqazMQMWs0twweB5T/ShqdkWuaYM+RO+gmptPDMIkumqTud8emjrZW
 Ec9wyf2mXJnNlJSF+5cKDDdezaAvDQE9QPARkJ0Z9Qnp/woWR92Ju3wFl A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="396834990"
X-IronPort-AV: E=Sophos;i="6.04,197,1695711600"; d="scan'208";a="396834990"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 10:47:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="1030720404"
X-IronPort-AV: E=Sophos;i="6.04,197,1695711600"; d="scan'208";a="1030720404"
Received: from sinjan-super-server.iind.intel.com ([10.145.169.153])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 10:47:19 -0800
From: Karthik Poosa <karthik.poosa@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/xe/guc: Enable WA 14018913170
Date: Tue, 16 Jan 2024 00:25:19 +0530
Message-Id: <20240115185519.2246220-1-karthik.poosa@intel.com>
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
index 235d27b17ff9..6dab0c1a6070 100644
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
+						version->major, version->minor, version->patch);
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

