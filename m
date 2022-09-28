Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2335ED21D
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 02:40:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F7F510E1FD;
	Wed, 28 Sep 2022 00:40:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5B9710E1F3
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 00:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664325627; x=1695861627;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=wCQxwfrzT4D4vRybXR7U19+c9Bd5Ew1qbVsejGWj3MM=;
 b=eLXRAgSvZMbkdW0+T4GmsWjH4i1ujEa6V0utjQslAfVfh1wgdYx/lDBV
 zk0hBvjUcMq6IfIdCOOgizRIxuJXaCDUQ1O6GX54Vnk9B71IBi5cZYVll
 Vmhc6961IFBEzYpMocWNwwQChP/IhqpXq39LOZdcZZk2uifFNA3PI0nlL
 JEseKMIqWXyO6Wsk2GEHXfdb3pn3WPyzAtkVuDWqjLAT3NT87F2DGUOtz
 zwx9aGgDZCp1IQiB9rYYR5ZCs+V/l3m3oFKS0pwqqDNLCZIHJn9aUigDy
 D2/XMAW2LgHmEtIshCLEn+oZbwZ58WcFGXmE73zEw7YP6C2P/ZF6V/Npb g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="387752089"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="387752089"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 17:40:27 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="572841196"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="572841196"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 17:40:27 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Sep 2022 17:41:44 -0700
Message-Id: <20220928004145.745803-15-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
References: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 14/15] drm/i915/huc: define gsc-compatible HuC fw
 for DG2
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

The fw name is different and we need to record the fact that the blob is
gsc-loaded, so add a new macro to help.

Note: A-step DG2 G10 does not support HuC loading via GSC and would
require a separate firmware to be loaded the legacy way, but that's
not a production stepping so we're not going to bother.

v2: rebase on new fw fetch logic

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Tony Ye <tony.ye@intel.com>
Acked-by: Tony Ye <tony.ye@intel.com>
Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 23 ++++++++++++++++-------
 1 file changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 9fae911026d5..de2843dc1307 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -93,7 +93,8 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
 	fw_def(BROXTON,      0, guc_mmp(bxt,  70, 1, 1)) \
 	fw_def(SKYLAKE,      0, guc_mmp(skl,  70, 1, 1))
 
-#define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_raw, huc_mmp) \
+#define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_raw, huc_mmp, huc_gsc) \
+	fw_def(DG2,          0, huc_gsc(dg2)) \
 	fw_def(ALDERLAKE_P,  0, huc_raw(tgl)) \
 	fw_def(ALDERLAKE_P,  0, huc_mmp(tgl,  7, 9, 3)) \
 	fw_def(ALDERLAKE_S,  0, huc_raw(tgl)) \
@@ -141,6 +142,9 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
 #define MAKE_HUC_FW_PATH_BLANK(prefix_) \
 	__MAKE_UC_FW_PATH_BLANK(prefix_, "_huc")
 
+#define MAKE_HUC_FW_PATH_GSC(prefix_) \
+	__MAKE_UC_FW_PATH_BLANK(prefix_, "_huc_gsc")
+
 #define MAKE_HUC_FW_PATH_MMP(prefix_, major_, minor_, patch_) \
 	__MAKE_UC_FW_PATH_MMP(prefix_, "_huc_", major_, minor_, patch_)
 
@@ -153,7 +157,7 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
 	MODULE_FIRMWARE(uc_);
 
 INTEL_GUC_FIRMWARE_DEFS(INTEL_UC_MODULE_FW, MAKE_GUC_FW_PATH_MAJOR, MAKE_GUC_FW_PATH_MMP)
-INTEL_HUC_FIRMWARE_DEFS(INTEL_UC_MODULE_FW, MAKE_HUC_FW_PATH_BLANK, MAKE_HUC_FW_PATH_MMP)
+INTEL_HUC_FIRMWARE_DEFS(INTEL_UC_MODULE_FW, MAKE_HUC_FW_PATH_BLANK, MAKE_HUC_FW_PATH_MMP, MAKE_HUC_FW_PATH_GSC)
 
 /*
  * The next expansion of the table macros (in __uc_fw_auto_select below) provides
@@ -168,6 +172,7 @@ struct __packed uc_fw_blob {
 	u8 major;
 	u8 minor;
 	u8 patch;
+	bool loaded_via_gsc;
 };
 
 #define UC_FW_BLOB_BASE(major_, minor_, patch_, path_) \
@@ -176,16 +181,16 @@ struct __packed uc_fw_blob {
 	.patch = patch_, \
 	.path = path_,
 
-#define UC_FW_BLOB_NEW(major_, minor_, patch_, path_) \
+#define UC_FW_BLOB_NEW(major_, minor_, patch_, gsc_, path_) \
 	{ UC_FW_BLOB_BASE(major_, minor_, patch_, path_) \
-	  .legacy = false }
+	  .legacy = false, .loaded_via_gsc = gsc_ }
 
 #define UC_FW_BLOB_OLD(major_, minor_, patch_, path_) \
 	{ UC_FW_BLOB_BASE(major_, minor_, patch_, path_) \
 	  .legacy = true }
 
 #define GUC_FW_BLOB(prefix_, major_, minor_) \
-	UC_FW_BLOB_NEW(major_, minor_, 0, \
+	UC_FW_BLOB_NEW(major_, minor_, 0, false, \
 		       MAKE_GUC_FW_PATH_MAJOR(prefix_, major_, minor_))
 
 #define GUC_FW_BLOB_MMP(prefix_, major_, minor_, patch_) \
@@ -193,12 +198,15 @@ struct __packed uc_fw_blob {
 		       MAKE_GUC_FW_PATH_MMP(prefix_, major_, minor_, patch_))
 
 #define HUC_FW_BLOB(prefix_) \
-	UC_FW_BLOB_NEW(0, 0, 0, MAKE_HUC_FW_PATH_BLANK(prefix_))
+	UC_FW_BLOB_NEW(0, 0, 0, false, MAKE_HUC_FW_PATH_BLANK(prefix_))
 
 #define HUC_FW_BLOB_MMP(prefix_, major_, minor_, patch_) \
 	UC_FW_BLOB_OLD(major_, minor_, patch_, \
 		       MAKE_HUC_FW_PATH_MMP(prefix_, major_, minor_, patch_))
 
+#define HUC_FW_BLOB_GSC(prefix_) \
+	UC_FW_BLOB_NEW(0, 0, 0, true, MAKE_HUC_FW_PATH_GSC(prefix_))
+
 struct __packed uc_fw_platform_requirement {
 	enum intel_platform p;
 	u8 rev; /* first platform rev using this FW */
@@ -224,7 +232,7 @@ __uc_fw_auto_select(struct drm_i915_private *i915, struct intel_uc_fw *uc_fw)
 		INTEL_GUC_FIRMWARE_DEFS(MAKE_FW_LIST, GUC_FW_BLOB, GUC_FW_BLOB_MMP)
 	};
 	static const struct uc_fw_platform_requirement blobs_huc[] = {
-		INTEL_HUC_FIRMWARE_DEFS(MAKE_FW_LIST, HUC_FW_BLOB, HUC_FW_BLOB_MMP)
+		INTEL_HUC_FIRMWARE_DEFS(MAKE_FW_LIST, HUC_FW_BLOB, HUC_FW_BLOB_MMP, HUC_FW_BLOB_GSC)
 	};
 	static const struct fw_blobs_by_type blobs_all[INTEL_UC_FW_NUM_TYPES] = {
 		[INTEL_UC_FW_TYPE_GUC] = { blobs_guc, ARRAY_SIZE(blobs_guc) },
@@ -272,6 +280,7 @@ __uc_fw_auto_select(struct drm_i915_private *i915, struct intel_uc_fw *uc_fw)
 		uc_fw->file_wanted.path = blob->path;
 		uc_fw->file_wanted.major_ver = blob->major;
 		uc_fw->file_wanted.minor_ver = blob->minor;
+		uc_fw->loaded_via_gsc = blob->loaded_via_gsc;
 		found = true;
 		break;
 	}
-- 
2.37.3

