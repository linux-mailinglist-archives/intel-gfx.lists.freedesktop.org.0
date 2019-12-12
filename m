Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F309C11D615
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 19:44:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C6E26E0E2;
	Thu, 12 Dec 2019 18:44:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 732826E0E0
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 18:44:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 10:44:22 -0800
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="204063433"
Received: from unknown (HELO pachecof-ubuntu.fm.intel.com) ([10.1.27.25])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 12 Dec 2019 10:44:22 -0800
From: Fernando Pacheco <fernando.pacheco@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 10:43:59 -0800
Message-Id: <20191212184359.16280-2-fernando.pacheco@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191212184359.16280-1-fernando.pacheco@intel.com>
References: <20191212184359.16280-1-fernando.pacheco@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] HAX: force enable_guc=2 and WA i915#571
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

To get a full run with GuC loading and HuC auth enabled.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c | 9 +++++++++
 drivers/gpu/drm/i915/i915_params.h       | 2 +-
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
index 09ff8e4f88af..86b176c887b4 100644
--- a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
@@ -12,8 +12,11 @@ static int live_gt_resume(void *arg)
 {
 	struct intel_gt *gt = arg;
 	IGT_TIMEOUT(end_time);
+	intel_wakeref_t wakeref;
 	int err;
 
+	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
+
 	/* Do several suspend/resume cycles to check we don't explode! */
 	do {
 		intel_gt_suspend_prepare(gt);
@@ -26,6 +29,10 @@ static int live_gt_resume(void *arg)
 			break;
 		}
 
+		err = intel_gt_init_hw(gt);
+		if (err)
+			break;
+
 		err = intel_gt_resume(gt);
 		if (err)
 			break;
@@ -45,6 +52,8 @@ static int live_gt_resume(void *arg)
 		}
 	} while (!__igt_timeout(end_time, NULL));
 
+	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
+
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 31b88f297fbc..acda9f2a1207 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -54,7 +54,7 @@ struct drm_printer;
 	param(int, disable_power_well, -1) \
 	param(int, enable_ips, 1) \
 	param(int, invert_brightness, 0) \
-	param(int, enable_guc, 0) \
+	param(int, enable_guc, 2) \
 	param(int, guc_log_level, -1) \
 	param(char *, guc_firmware_path, NULL) \
 	param(char *, huc_firmware_path, NULL) \
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
