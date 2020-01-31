Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC8614EFB7
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 16:37:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E857C6E9C1;
	Fri, 31 Jan 2020 15:37:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 408646E9C1
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 15:37:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 07:37:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,386,1574150400"; d="scan'208";a="262577539"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga002.fm.intel.com with ESMTP; 31 Jan 2020 07:37:27 -0800
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.138])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 00VFbQD8009783; Fri, 31 Jan 2020 15:37:27 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jan 2020 15:37:06 +0000
Message-Id: <20200131153706.109528-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/guc: Introduce guc_is_ready
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

We already have guc_is_running function, but it only reflects
firmware status, while to fully use GuC we need to know if we've
already established communication with it.

v2: also s/intel_guc_is_running/intel_guc_is_fw_running (Chris)

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h    |  7 ++++++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c     | 10 +++++-----
 drivers/gpu/drm/i915/i915_debugfs.c       |  2 +-
 drivers/gpu/drm/i915/i915_drv.h           |  2 +-
 5 files changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 910d49590068..7ca9e5159f05 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -148,11 +148,16 @@ static inline bool intel_guc_is_enabled(struct intel_guc *guc)
 	return intel_uc_fw_is_enabled(&guc->fw);
 }
 
-static inline bool intel_guc_is_running(struct intel_guc *guc)
+static inline bool intel_guc_is_fw_running(struct intel_guc *guc)
 {
 	return intel_uc_fw_is_running(&guc->fw);
 }
 
+static inline bool intel_guc_is_ready(struct intel_guc *guc)
+{
+	return intel_guc_is_fw_running(guc) && intel_guc_ct_enabled(&guc->ct);
+}
+
 static inline int intel_guc_sanitize(struct intel_guc *guc)
 {
 	intel_uc_fw_sanitize(&guc->fw);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index d84812683364..11742fca0e9e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -279,7 +279,7 @@ void intel_guc_ct_disable(struct intel_guc_ct *ct)
 
 	ct->enabled = false;
 
-	if (intel_guc_is_running(guc)) {
+	if (intel_guc_is_fw_running(guc)) {
 		ct_deregister_buffer(ct, INTEL_GUC_CT_BUFFER_TYPE_SEND);
 		ct_deregister_buffer(ct, INTEL_GUC_CT_BUFFER_TYPE_RECV);
 	}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 64934a876a50..affc4d6f9ead 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -505,7 +505,7 @@ static void __uc_fini_hw(struct intel_uc *uc)
 {
 	struct intel_guc *guc = &uc->guc;
 
-	if (!intel_guc_is_running(guc))
+	if (!intel_guc_is_fw_running(guc))
 		return;
 
 	if (intel_uc_supports_guc_submission(uc))
@@ -527,7 +527,7 @@ void intel_uc_reset_prepare(struct intel_uc *uc)
 {
 	struct intel_guc *guc = &uc->guc;
 
-	if (!intel_guc_is_running(guc))
+	if (!intel_guc_is_ready(guc))
 		return;
 
 	guc_disable_communication(guc);
@@ -539,7 +539,7 @@ void intel_uc_runtime_suspend(struct intel_uc *uc)
 	struct intel_guc *guc = &uc->guc;
 	int err;
 
-	if (!intel_guc_is_running(guc))
+	if (!intel_guc_is_ready(guc))
 		return;
 
 	err = intel_guc_suspend(guc);
@@ -554,7 +554,7 @@ void intel_uc_suspend(struct intel_uc *uc)
 	struct intel_guc *guc = &uc->guc;
 	intel_wakeref_t wakeref;
 
-	if (!intel_guc_is_running(guc))
+	if (!intel_guc_is_ready(guc))
 		return;
 
 	with_intel_runtime_pm(uc_to_gt(uc)->uncore->rpm, wakeref)
@@ -566,7 +566,7 @@ static int __uc_resume(struct intel_uc *uc, bool enable_communication)
 	struct intel_guc *guc = &uc->guc;
 	int err;
 
-	if (!intel_guc_is_running(guc))
+	if (!intel_guc_is_fw_running(guc))
 		return 0;
 
 	/* Make sure we enable communication if and only if it's disabled */
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 2d76138c349f..e329503b68c2 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1914,7 +1914,7 @@ static int i915_guc_log_relay_open(struct inode *inode, struct file *file)
 	struct intel_guc *guc = &i915->gt.uc.guc;
 	struct intel_guc_log *log = &guc->log;
 
-	if (!intel_guc_is_running(guc))
+	if (!intel_guc_is_ready(guc))
 		return -ENODEV;
 
 	file->private_data = log;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a8a08c63278e..404699382ac6 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -2033,7 +2033,7 @@ i915_coherent_map_type(struct drm_i915_private *i915)
 static inline bool intel_guc_submission_is_enabled(struct intel_guc *guc)
 {
 	return intel_guc_is_submission_supported(guc) &&
-		intel_guc_is_running(guc);
+	       intel_guc_is_ready(guc);
 }
 
 #endif
-- 
2.19.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
