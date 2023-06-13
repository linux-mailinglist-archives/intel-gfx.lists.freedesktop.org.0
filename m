Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C5872F0B9
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jun 2023 01:52:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B201710E3F5;
	Tue, 13 Jun 2023 23:52:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B87A10E3F5
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jun 2023 23:52:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686700357; x=1718236357;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IN1Ulz4n6JIpbybRROsPU/DYKTk6se4+lfko8kT6elA=;
 b=bfm5cwfST5/ZMKuDBnkFd6L+DmlHgJRJ3B0TdyknmDB7/Aq38DLgjQqD
 wc/F0Ou2pNQlrqycFNCG9PQ4CBxtTIbfFMLzmri6RK+q8MA4FW4hI757X
 2vECc9yEyK6/BJKJ1LLgwieQeZ6KM6HWPINT1XYwNfXg/mH8fnFegPjfi
 KUAog47LNJHVi6RgFjAdPv7znADhR59xZkqjmgL+xxmviJtLrlwkVji4Y
 UG7ycvClHcGdkpwJxDQAIMbNa06fxCaBDAzMN9hoCJ8FH854oYKp+xX4E
 VKtM/+W+qf6oV53/F1dBEtPsFYJ+rO7Kadkw01MGRWgi47EF8yivtj2zw g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="361849210"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="361849210"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 16:52:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="711833913"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="711833913"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 16:52:35 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jun 2023 16:52:27 -0700
Message-Id: <20230613235227.2395687-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] drm/i915/gsc: define gsc fw
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
Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---

The GSC team has asked us to hold off sending the GSC FW to the
linux-firmware repo, so we can't merge this to drm-intel-gt-next yet.
However, we do want to start running the GSC code in CI, so this needs
to be merged to topic/core-for-CI for now.

 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 32 ++++++++++++++++++------
 1 file changed, 24 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index d408856ae4c0..08e16017584b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -130,6 +130,17 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
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
@@ -165,6 +176,9 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
 #define MAKE_HUC_FW_PATH_MMP(prefix_, major_, minor_, patch_) \
 	__MAKE_UC_FW_PATH_MMP(prefix_, "huc", major_, minor_, patch_)
 
+#define MAKE_GSC_FW_PATH(prefix_, major_, minor_) \
+	__MAKE_UC_FW_PATH_MAJOR(prefix_, "gsc", major_)
+
 /*
  * All blobs need to be declared via MODULE_FIRMWARE().
  * This first expansion of the table macros is solely to provide
@@ -175,6 +189,7 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
 
 INTEL_GUC_FIRMWARE_DEFS(INTEL_UC_MODULE_FW, MAKE_GUC_FW_PATH_MAJOR, MAKE_GUC_FW_PATH_MMP)
 INTEL_HUC_FIRMWARE_DEFS(INTEL_UC_MODULE_FW, MAKE_HUC_FW_PATH_BLANK, MAKE_HUC_FW_PATH_MMP, MAKE_HUC_FW_PATH_GSC)
+INTEL_GSC_FIRMWARE_DEFS(INTEL_UC_MODULE_FW, MAKE_GSC_FW_PATH)
 
 /*
  * The next expansion of the table macros (in __uc_fw_auto_select below) provides
@@ -224,6 +239,10 @@ struct __packed uc_fw_blob {
 #define HUC_FW_BLOB_GSC(prefix_) \
 	UC_FW_BLOB_NEW(0, 0, 0, true, MAKE_HUC_FW_PATH_GSC(prefix_))
 
+#define GSC_FW_BLOB(prefix_, major_, minor_) \
+	UC_FW_BLOB_NEW(major_, minor_, 0, true, \
+		       MAKE_GSC_FW_PATH(prefix_, major_, minor_))
+
 struct __packed uc_fw_platform_requirement {
 	enum intel_platform p;
 	u8 rev; /* first platform rev using this FW */
@@ -250,9 +269,14 @@ static const struct uc_fw_platform_requirement blobs_huc[] = {
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
@@ -265,14 +289,6 @@ __uc_fw_auto_select(struct drm_i915_private *i915, struct intel_uc_fw *uc_fw)
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
2.40.0

