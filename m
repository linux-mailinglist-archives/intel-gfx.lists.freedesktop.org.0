Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDDA8163637
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 23:34:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 483286EACD;
	Tue, 18 Feb 2020 22:34:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 244276EAC9
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 22:33:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 14:33:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,458,1574150400"; d="scan'208";a="434264137"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga005.fm.intel.com with ESMTP; 18 Feb 2020 14:33:49 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Feb 2020 14:33:26 -0800
Message-Id: <20200218223327.11058-9-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200218223327.11058-1-daniele.ceraolospurio@intel.com>
References: <20200218223327.11058-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 09/10] drm/i915/uc: consolidate firmware cleanup
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

We are quite trigger happy in cleaning up the firmware blobs, as we do
so from several error/fini paths in GuC/HuC/uC code. We do have the
__uc_cleanup_firmwares cleanup function, which unwinds
__uc_fetch_firmwares and is already called both from the error path of
gem_init and from gem_driver_release, so let's stop cleaning up from
all the other paths.

The fact that we're not cleaning the firmware immediately means that
we can't consider firmware availability as an indication of
initialization success. A "LOADABLE" status has been added to
indicate that the initialization was successful, to be used to
selectively load HuC only if HuC init has completed (HuC init failure
is not considered a fatal error).

v2: s/ready_to_load/loadable (Michal), only run guc/huc_fini if the
    fw is in loadable state

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com> #v1
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.c   | 12 +++++-------
 drivers/gpu/drm/i915/gt/uc/intel_huc.c   |  5 +++--
 drivers/gpu/drm/i915/gt/uc/intel_uc.c    |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c |  7 +++++--
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h | 18 +++++++++++++++---
 5 files changed, 29 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 97b9c71a6fd4..819f09ef51fc 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -333,7 +333,7 @@ int intel_guc_init(struct intel_guc *guc)
 
 	ret = intel_uc_fw_init(&guc->fw);
 	if (ret)
-		goto err_fetch;
+		goto out;
 
 	ret = intel_guc_log_create(&guc->log);
 	if (ret)
@@ -364,6 +364,8 @@ int intel_guc_init(struct intel_guc *guc)
 	/* We need to notify the guc whenever we change the GGTT */
 	i915_ggtt_enable_guc(gt->ggtt);
 
+	intel_uc_fw_change_status(&guc->fw, INTEL_UC_FIRMWARE_LOADABLE);
+
 	return 0;
 
 err_ct:
@@ -374,8 +376,7 @@ int intel_guc_init(struct intel_guc *guc)
 	intel_guc_log_destroy(&guc->log);
 err_fw:
 	intel_uc_fw_fini(&guc->fw);
-err_fetch:
-	intel_uc_fw_cleanup_fetch(&guc->fw);
+out:
 	i915_probe_error(gt->i915, "failed with %d\n", ret);
 	return ret;
 }
@@ -384,7 +385,7 @@ void intel_guc_fini(struct intel_guc *guc)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
 
-	if (!intel_uc_fw_is_available(&guc->fw))
+	if (!intel_uc_fw_is_loadable(&guc->fw))
 		return;
 
 	i915_ggtt_disable_guc(gt->ggtt);
@@ -397,9 +398,6 @@ void intel_guc_fini(struct intel_guc *guc)
 	intel_guc_ads_destroy(guc);
 	intel_guc_log_destroy(&guc->log);
 	intel_uc_fw_fini(&guc->fw);
-	intel_uc_fw_cleanup_fetch(&guc->fw);
-
-	intel_uc_fw_change_status(&guc->fw, INTEL_UC_FIRMWARE_DISABLED);
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
index 5f448d0e360b..a74b65694512 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
@@ -121,19 +121,20 @@ int intel_huc_init(struct intel_huc *huc)
 	if (err)
 		goto out_fini;
 
+	intel_uc_fw_change_status(&huc->fw, INTEL_UC_FIRMWARE_LOADABLE);
+
 	return 0;
 
 out_fini:
 	intel_uc_fw_fini(&huc->fw);
 out:
-	intel_uc_fw_cleanup_fetch(&huc->fw);
 	i915_probe_error(i915, "failed with %d\n", err);
 	return err;
 }
 
 void intel_huc_fini(struct intel_huc *huc)
 {
-	if (!intel_uc_fw_is_available(&huc->fw))
+	if (!intel_uc_fw_is_loadable(&huc->fw))
 		return;
 
 	intel_huc_rsa_data_destroy(huc);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 1c74518c2459..a4cbe06e06bd 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -417,7 +417,7 @@ static int __uc_init_hw(struct intel_uc *uc)
 	GEM_BUG_ON(!intel_uc_supports_guc(uc));
 	GEM_BUG_ON(!intel_uc_wants_guc(uc));
 
-	if (!intel_uc_fw_is_available(&guc->fw)) {
+	if (!intel_uc_fw_is_loadable(&guc->fw)) {
 		ret = __uc_check_hw(uc) ||
 		      intel_uc_fw_is_overridden(&guc->fw) ||
 		      intel_uc_wants_guc_submission(uc) ?
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index c9c094a73399..5434c07aefa1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -501,7 +501,7 @@ int intel_uc_fw_upload(struct intel_uc_fw *uc_fw, u32 dst_offset, u32 dma_flags)
 	if (err)
 		return err;
 
-	if (!intel_uc_fw_is_available(uc_fw))
+	if (!intel_uc_fw_is_loadable(uc_fw))
 		return -ENOEXEC;
 
 	/* Call custom loader */
@@ -544,7 +544,10 @@ int intel_uc_fw_init(struct intel_uc_fw *uc_fw)
 
 void intel_uc_fw_fini(struct intel_uc_fw *uc_fw)
 {
-	intel_uc_fw_cleanup_fetch(uc_fw);
+	if (i915_gem_object_has_pinned_pages(uc_fw->obj))
+		i915_gem_object_unpin_pages(uc_fw->obj);
+
+	intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_AVAILABLE);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
index 1f30543d0d2d..888ff0de0244 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
@@ -29,8 +29,11 @@ struct intel_gt;
  * |            |                 SELECTED                          |
  * +------------+-               /   |   \                         -+
  * |            |    MISSING <--/    |    \--> ERROR                |
- * |   fetch    |                    |                              |
- * |            |        /------> AVAILABLE <---<-----------\       |
+ * |   fetch    |                    V                              |
+ * |            |                 AVAILABLE                         |
+ * +------------+-                   |                             -+
+ * |   init     |                    V                              |
+ * |            |        /------> LOADABLE <----<-----------\       |
  * +------------+-       \         /    \        \           \     -+
  * |            |         FAIL <--<      \--> TRANSFERRED     \     |
  * |   upload   |                  \           /   \          /     |
@@ -46,6 +49,7 @@ enum intel_uc_fw_status {
 	INTEL_UC_FIRMWARE_MISSING, /* blob not found on the system */
 	INTEL_UC_FIRMWARE_ERROR, /* invalid format or version */
 	INTEL_UC_FIRMWARE_AVAILABLE, /* blob found and copied in mem */
+	INTEL_UC_FIRMWARE_LOADABLE, /* all fw-required objects are ready */
 	INTEL_UC_FIRMWARE_FAIL, /* failed to xfer or init/auth the fw */
 	INTEL_UC_FIRMWARE_TRANSFERRED, /* dma xfer done */
 	INTEL_UC_FIRMWARE_RUNNING /* init/auth done */
@@ -115,6 +119,8 @@ const char *intel_uc_fw_status_repr(enum intel_uc_fw_status status)
 		return "ERROR";
 	case INTEL_UC_FIRMWARE_AVAILABLE:
 		return "AVAILABLE";
+	case INTEL_UC_FIRMWARE_LOADABLE:
+		return "LOADABLE";
 	case INTEL_UC_FIRMWARE_FAIL:
 		return "FAIL";
 	case INTEL_UC_FIRMWARE_TRANSFERRED:
@@ -143,6 +149,7 @@ static inline int intel_uc_fw_status_to_error(enum intel_uc_fw_status status)
 	case INTEL_UC_FIRMWARE_SELECTED:
 		return -ESTALE;
 	case INTEL_UC_FIRMWARE_AVAILABLE:
+	case INTEL_UC_FIRMWARE_LOADABLE:
 	case INTEL_UC_FIRMWARE_TRANSFERRED:
 	case INTEL_UC_FIRMWARE_RUNNING:
 		return 0;
@@ -184,6 +191,11 @@ static inline bool intel_uc_fw_is_available(struct intel_uc_fw *uc_fw)
 	return __intel_uc_fw_status(uc_fw) >= INTEL_UC_FIRMWARE_AVAILABLE;
 }
 
+static inline bool intel_uc_fw_is_loadable(struct intel_uc_fw *uc_fw)
+{
+	return __intel_uc_fw_status(uc_fw) >= INTEL_UC_FIRMWARE_LOADABLE;
+}
+
 static inline bool intel_uc_fw_is_loaded(struct intel_uc_fw *uc_fw)
 {
 	return __intel_uc_fw_status(uc_fw) >= INTEL_UC_FIRMWARE_TRANSFERRED;
@@ -202,7 +214,7 @@ static inline bool intel_uc_fw_is_overridden(const struct intel_uc_fw *uc_fw)
 static inline void intel_uc_fw_sanitize(struct intel_uc_fw *uc_fw)
 {
 	if (intel_uc_fw_is_loaded(uc_fw))
-		intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_AVAILABLE);
+		intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_LOADABLE);
 }
 
 static inline u32 __intel_uc_fw_get_upload_size(struct intel_uc_fw *uc_fw)
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
