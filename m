Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1CC788D33
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 18:28:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 115A110E6D4;
	Fri, 25 Aug 2023 16:28:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2825510E6D4
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 16:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692980890; x=1724516890;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=81qtgvuey2noZKl6Kn04W8byrADMucpq4SxTB8L5FVo=;
 b=Xmcv4VtgirGft3Kjln+15BvcIGLkAO8OBrfMB++ZkV/el/hwOy6Icefq
 gvLR7mE6Eleait7i+7pnsFbI05GkJPbmkYNKcei/CjeHJ7kBCf0GpAdqQ
 Ss7EUoSrzQeQ5NtPwSBHhpXtfM+e8BMs28XfAxujaTD10Go3Py1PWTaKl
 IjplZd0earlrTYAgKz6uO9e2+fw6+xAinRhmXjYW2I+tbi+a3ltNFHnAm
 1+FjTD6D4hGvS6BdBpr49+U4pJv+2ypKynaP8ZFB4rNCkTAigx5uJxUsz
 6jvAKN+91zPZUil0IQxWVtCCMt9A3Y9Kko/ydJGfy8sJ9ZxLM4ItY6V1s g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="373618336"
X-IronPort-AV: E=Sophos;i="6.02,201,1688454000"; d="scan'208";a="373618336"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 09:28:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="803028256"
X-IronPort-AV: E=Sophos;i="6.02,201,1688454000"; d="scan'208";a="803028256"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 09:28:09 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Aug 2023 09:27:53 -0700
Message-ID: <20230825162754.1949838-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gsc: define gsc fw
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add FW definition and the matching override modparam.

The GSC FW has both a release version, based on platform and a rolling
counter, and a compatibility version, which is the one tracking
interface changes. Since what we care about is the interface, we use
the compatibility version in the binary names.

Same as with the GuC, a major version bump indicate a
backward-incompatible change, while a minor version bump indicates a
backward-compatible one, so we use only the former in the file name.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---

This patch is already merged in topic/core-for-CI. It was merged there
because we didn't have a GSC FW ready to ship to linux-firmware, but we
still wanted to start testing what we had in CI. We finally have a FW
in flight towards linux-firmware [1], so we can transition this patch
to drm-intel-gt-next. The patch is unchanged since it was first sent
and reviewed [2], so I kept the r-b and I'm looking for an ack on the
move.
Note that since this patch is already applied, pre-merge CI won't
correctly run on it (which is not a problem given that the patch is
already included in all current runs).

References: https://gitlab.freedesktop.org/drm/intel/-/issues/8705
[1] https://lists.freedesktop.org/archives/intel-gfx/2023-August/333322.html
[2] https://patchwork.freedesktop.org/patch/544638/

 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 32 ++++++++++++++++++------
 1 file changed, 24 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 9e833f499ac7..fc0d05d2df59 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -131,6 +131,17 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
 	fw_def(BROXTON,      0, huc_mmp(bxt,  2, 0, 0)) \
 	fw_def(SKYLAKE,      0, huc_mmp(skl,  2, 0, 0))
 
+/*
+ * The GSC FW has multiple version (see intel_gsc_uc.h for details); since what
+ * we care about is the interface, we use the compatibility version in the
+ * binary names.
+ * Same as with the GuC, a major version bump indicate a
+ * backward-incompatible change, while a minor version bump indicates a
+ * backward-compatible one, so we use only the former in the file name.
+ */
+#define INTEL_GSC_FIRMWARE_DEFS(fw_def, gsc_def) \
+	fw_def(METEORLAKE,   0, gsc_def(mtl, 1, 0))
+
 /*
  * Set of macros for producing a list of filenames from the above table.
  */
@@ -166,6 +177,9 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
 #define MAKE_HUC_FW_PATH_MMP(prefix_, major_, minor_, patch_) \
 	__MAKE_UC_FW_PATH_MMP(prefix_, "huc", major_, minor_, patch_)
 
+#define MAKE_GSC_FW_PATH(prefix_, major_, minor_) \
+	__MAKE_UC_FW_PATH_MAJOR(prefix_, "gsc", major_)
+
 /*
  * All blobs need to be declared via MODULE_FIRMWARE().
  * This first expansion of the table macros is solely to provide
@@ -176,6 +190,7 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
 
 INTEL_GUC_FIRMWARE_DEFS(INTEL_UC_MODULE_FW, MAKE_GUC_FW_PATH_MAJOR, MAKE_GUC_FW_PATH_MMP)
 INTEL_HUC_FIRMWARE_DEFS(INTEL_UC_MODULE_FW, MAKE_HUC_FW_PATH_BLANK, MAKE_HUC_FW_PATH_MMP, MAKE_HUC_FW_PATH_GSC)
+INTEL_GSC_FIRMWARE_DEFS(INTEL_UC_MODULE_FW, MAKE_GSC_FW_PATH)
 
 /*
  * The next expansion of the table macros (in __uc_fw_auto_select below) provides
@@ -225,6 +240,10 @@ struct __packed uc_fw_blob {
 #define HUC_FW_BLOB_GSC(prefix_) \
 	UC_FW_BLOB_NEW(0, 0, 0, true, MAKE_HUC_FW_PATH_GSC(prefix_))
 
+#define GSC_FW_BLOB(prefix_, major_, minor_) \
+	UC_FW_BLOB_NEW(major_, minor_, 0, true, \
+		       MAKE_GSC_FW_PATH(prefix_, major_, minor_))
+
 struct __packed uc_fw_platform_requirement {
 	enum intel_platform p;
 	u8 rev; /* first platform rev using this FW */
@@ -251,9 +270,14 @@ static const struct uc_fw_platform_requirement blobs_huc[] = {
 	INTEL_HUC_FIRMWARE_DEFS(MAKE_FW_LIST, HUC_FW_BLOB, HUC_FW_BLOB_MMP, HUC_FW_BLOB_GSC)
 };
 
+static const struct uc_fw_platform_requirement blobs_gsc[] = {
+	INTEL_GSC_FIRMWARE_DEFS(MAKE_FW_LIST, GSC_FW_BLOB)
+};
+
 static const struct fw_blobs_by_type blobs_all[INTEL_UC_FW_NUM_TYPES] = {
 	[INTEL_UC_FW_TYPE_GUC] = { blobs_guc, ARRAY_SIZE(blobs_guc) },
 	[INTEL_UC_FW_TYPE_HUC] = { blobs_huc, ARRAY_SIZE(blobs_huc) },
+	[INTEL_UC_FW_TYPE_GSC] = { blobs_gsc, ARRAY_SIZE(blobs_gsc) },
 };
 
 static void
@@ -266,14 +290,6 @@ __uc_fw_auto_select(struct drm_i915_private *i915, struct intel_uc_fw *uc_fw)
 	int i;
 	bool found;
 
-	/*
-	 * GSC FW support is still not fully in place, so we're not defining
-	 * the FW blob yet because we don't want the driver to attempt to load
-	 * it until we're ready for it.
-	 */
-	if (uc_fw->type == INTEL_UC_FW_TYPE_GSC)
-		return;
-
 	/*
 	 * The only difference between the ADL GuC FWs is the HWConfig support.
 	 * ADL-N does not support HWConfig, so we should use the same binary as
-- 
2.41.0

