Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D4E732180
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 23:20:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16E9710E550;
	Thu, 15 Jun 2023 21:20:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47E9110E086;
 Thu, 15 Jun 2023 21:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686864006; x=1718400006;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rOKpsUZ4EhToXSsNTuRvop6y9p2vO9hsjtt5wsrYN9A=;
 b=nrqvWEn/p2ytnhjzC1GxTcL7EpnPo20jn5aF3IXDjBEbJg2loIBSA6mo
 MOFO69uswPIYCHGe0Huv7+vApJgs3mqrfyaxDvruZQfCYC68pOx/dBK13
 hHnX5jMvpRxgGi5b+FLU3s0fU7qRb+pvYr6Oymz7Rh9Fogrt+2l60ADrb
 PB9UQcfZG0XMZSiZoY8OfCqHvhG0luvvfA8As6KIBEX3zsanpA3sQHHel
 tq1MMGKYir0SKwgbFQ7B9n+Jnah+WdtuG1bmzhHnx1dgOdIZmdp/Kz9gW
 FE6DjShYw0OHx2t/iYlmiGcBUgoZfDVpwR0ODC3wHkXP9j5DZi6AjkOtI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="387637007"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="387637007"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 14:19:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="959353040"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="959353040"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga006.fm.intel.com with ESMTP; 15 Jun 2023 14:19:42 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jun 2023 14:19:40 -0700
Message-Id: <20230615211940.4061378-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1] drm/i915/gsc: Fix
 intel_gsc_uc_fw_proxy_init_done with directed wakerefs
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
Cc: dri-devel@lists.freedesktop.org,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

intel_gsc_uc_fw_proxy_init_done is used by a few code paths
and usages. However, certain paths need a wakeref while others
can't take a wakeref such as from the runtime_pm_resume callstack.

Add a param into this helper to allow callers to direct whether
to take the wakeref or not. This resolves the following bug:

   INFO: task sh:2607 blocked for more than 61 seconds.
   Not tainted 6.3.0-pxp-gsc-final-jun14+ #297
   "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
   task:sh              state:D stack:13016 pid:2607  ppid:2602   flags:0x00004000
   Call Trace:
      <TASK>
      __schedule+0x47b/0xe10
      schedule+0x58/0xd0
      rpm_resume+0x1cc/0x800
      ? __pfx_autoremove_wake_function+0x10/0x10
      __pm_runtime_resume+0x42/0x80
      __intel_runtime_pm_get+0x19/0x80 [i915]
      gsc_uc_get_fw_status+0x10/0x50 [i915]
      intel_gsc_uc_fw_init_done+0x9/0x20 [i915]
      intel_gsc_uc_load_start+0x5b/0x130 [i915]
      __uc_resume+0xa5/0x280 [i915]
      intel_runtime_resume+0xd4/0x250 [i915]
      ? __pfx_pci_pm_runtime_resume+0x10/0x10
   __rpm_callback+0x3c/0x160

Fixes: 8c33c3755b75 ("drm/i915/gsc: take a wakeref for the proxy-init-completion check")
Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c  | 17 +++++++++++------
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h  |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c  |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c |  2 +-
 4 files changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
index 856de9af1e3a..ab1a456f833d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
@@ -22,27 +22,32 @@ static bool gsc_is_in_reset(struct intel_uncore *uncore)
 			HECI1_FWSTS1_CURRENT_STATE_RESET;
 }
 
-static u32 gsc_uc_get_fw_status(struct intel_uncore *uncore)
+static u32 gsc_uc_get_fw_status(struct intel_uncore *uncore, bool needs_wakeref)
 {
 	intel_wakeref_t wakeref;
 	u32 fw_status = 0;
 
-	with_intel_runtime_pm(uncore->rpm, wakeref)
-		fw_status = intel_uncore_read(uncore, HECI_FWSTS(MTL_GSC_HECI1_BASE, 1));
+	if (needs_wakeref)
+		wakeref = intel_runtime_pm_get(uncore->rpm);
 
+	fw_status = intel_uncore_read(uncore, HECI_FWSTS(MTL_GSC_HECI1_BASE, 1));
+
+	if (needs_wakeref)
+		intel_runtime_pm_put(uncore->rpm, wakeref);
 	return fw_status;
 }
 
-bool intel_gsc_uc_fw_proxy_init_done(struct intel_gsc_uc *gsc)
+bool intel_gsc_uc_fw_proxy_init_done(struct intel_gsc_uc *gsc, bool needs_wakeref)
 {
 	return REG_FIELD_GET(HECI1_FWSTS1_CURRENT_STATE,
-			     gsc_uc_get_fw_status(gsc_uc_to_gt(gsc)->uncore)) ==
+			     gsc_uc_get_fw_status(gsc_uc_to_gt(gsc)->uncore,
+						  needs_wakeref)) ==
 	       HECI1_FWSTS1_PROXY_STATE_NORMAL;
 }
 
 bool intel_gsc_uc_fw_init_done(struct intel_gsc_uc *gsc)
 {
-	return gsc_uc_get_fw_status(gsc_uc_to_gt(gsc)->uncore) &
+	return gsc_uc_get_fw_status(gsc_uc_to_gt(gsc)->uncore, false) &
 	       HECI1_FWSTS1_INIT_COMPLETE;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h
index 8d7b9e4f1ffc..ad2167ce9137 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h
@@ -15,6 +15,6 @@ struct intel_uncore;
 int intel_gsc_fw_get_binary_info(struct intel_uc_fw *gsc_fw, const void *data, size_t size);
 int intel_gsc_uc_fw_upload(struct intel_gsc_uc *gsc);
 bool intel_gsc_uc_fw_init_done(struct intel_gsc_uc *gsc);
-bool intel_gsc_uc_fw_proxy_init_done(struct intel_gsc_uc *gsc);
+bool intel_gsc_uc_fw_proxy_init_done(struct intel_gsc_uc *gsc, bool needs_wakeref);
 
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
index 85d90f0a15e3..75a3a0790ef3 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
@@ -72,7 +72,7 @@ static void gsc_work(struct work_struct *work)
 			 * complete the request handling cleanly, so we need to check the
 			 * status register to check if the proxy init was actually successful
 			 */
-			if (intel_gsc_uc_fw_proxy_init_done(gsc)) {
+			if (intel_gsc_uc_fw_proxy_init_done(gsc, false)) {
 				drm_dbg(&gt->i915->drm, "GSC Proxy initialized\n");
 				intel_uc_fw_change_status(&gsc->fw, INTEL_UC_FIRMWARE_RUNNING);
 			} else {
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
index f13890ec7db1..c7df47364013 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
@@ -197,7 +197,7 @@ bool intel_pxp_gsccs_is_ready_for_sessions(struct intel_pxp *pxp)
 	 * are out of order) will suffice.
 	 */
 	if (intel_huc_is_authenticated(&pxp->ctrl_gt->uc.huc, INTEL_HUC_AUTH_BY_GSC) &&
-	    intel_gsc_uc_fw_proxy_init_done(&pxp->ctrl_gt->uc.gsc))
+	    intel_gsc_uc_fw_proxy_init_done(&pxp->ctrl_gt->uc.gsc, true))
 		return true;
 
 	return false;

base-commit: 134d180cacae82fadbc5ee32f86014cc290f5e0c
-- 
2.39.0

