Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B3674174D
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jun 2023 19:37:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97F1110E0BA;
	Wed, 28 Jun 2023 17:37:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAB2010E0BA
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jun 2023 17:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687973838; x=1719509838;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dw69rmaY0fCzWq9G3TropjEH6FburcHC4hcvkKW9V1s=;
 b=j7mODPftQI663HuSoKlgyOhu5B2v+PB5kqeS6XXB0FAUbI/kbxjLVzy5
 zv2m6OONOiOO+o1xwsjOw6JnVPGrEcxKVX2gktOKyj4OeTX3WaZAeSZeI
 219sAepkmS72reO4cYsKuP7UaSAFApZJqzWWVIxqXMCXtExPTEjpuKTqj
 Z+t0xgcdW7IbqMAcE5mspUxffDKdPGNON1c8Xi1zz31fY55hLRwf8iRYu
 Q0xBHFbXTkHjqBO0c04vhJB9VoTCEbEhZIUoeRNB+0GGsC5yjOKvL/36A
 atqcf395ZB+xnVOjqZPDu0k10plbo93S6EWUN1jM75u/M1jXt8lsYGi9q w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="359404553"
X-IronPort-AV: E=Sophos;i="6.01,166,1684825200"; d="scan'208";a="359404553"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 10:37:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="963701188"
X-IronPort-AV: E=Sophos;i="6.01,166,1684825200"; d="scan'208";a="963701188"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 10:37:17 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Jun 2023 10:37:08 -0700
Message-ID: <20230628173708.3239698-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [topic/core-for-CI] drm/i915/gsc: define gsc fw
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
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

topic/core-for-CI note: the GSC team has asked us to hold off sending
the GSC FW to the linux-firmware repo, so we can't merge this to
drm-intel-gt-next yet. However, we do want to start running the GSC
code in CI, hence merging to topic/core-for-CI for now. See the gitlab
issue for expected FW availability.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/8705
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
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
2.41.0

