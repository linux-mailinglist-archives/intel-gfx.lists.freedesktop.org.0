Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A897B545895
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 01:21:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2E6112B244;
	Thu,  9 Jun 2022 23:21:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80F3812B07D
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jun 2022 23:21:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654816871; x=1686352871;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DETHsutTsJB3SA+XbB5rJWNC/0jJQ3e9+0lcWvHo+kI=;
 b=CuGXeOQzVJcICdlUStzLhB4OBq2DG6ZbRPIu9+yQkhAcgIV5Xt2wnNA/
 ToWOXYSvX8PuaiOa+0CKCrr638gBcu/ZAHXMJsGF0JSYY8fLXRB6KuZJh
 JM6ZAOtUy8OCi+ty6XN7cCgFsx7H2lG/96pM9sXwm9DAYBpbQvcmY1kQp
 fcg1VTFA40b6VTWHuYCqb+IUl2uN7id0Kuex5wJm+ZMbXPHqkQ3xM6MD+
 H87QTIiUT2qS/PbkrBze3pysfGFR/EAzZe8tDeeffNGKBDkV2XvXT4DkB
 Qu8/29GHT7Wzrz5dE17XGpPxAMOVXGKAc+uCt2/4BQ00dW3yo/9CzC2ii A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="277481335"
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="277481335"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 16:21:11 -0700
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="908586501"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 16:21:11 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jun 2022 16:19:54 -0700
Message-Id: <20220609231955.3632596-15-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/15] drm/i915/huc: define gsc-compatible HuC
 fw for DG2
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
Cc: alan.previn.teres.alexis@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The fw name is different and we need to record the fact that the blob is
gsc-loaded, so add a new macro to help.

Note: A-step DG2 G10 does not support HuC loading via GSC and would
require a separate firmware to be loaded the legacy way, but that's
not a production stepping so we're not going to bother.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Tony Ye <tony.ye@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 64 ++++++++++++++----------
 1 file changed, 37 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index d2c5c9367cc4..fe6be7edbc72 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -70,61 +70,70 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
 	fw_def(BROXTON,      0, guc_def(bxt,  70, 1, 1)) \
 	fw_def(SKYLAKE,      0, guc_def(skl,  70, 1, 1))
 
-#define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_def) \
-	fw_def(ALDERLAKE_P,  0, huc_def(tgl,  7, 9, 3)) \
-	fw_def(ALDERLAKE_S,  0, huc_def(tgl,  7, 9, 3)) \
-	fw_def(DG1,          0, huc_def(dg1,  7, 9, 3)) \
-	fw_def(ROCKETLAKE,   0, huc_def(tgl,  7, 9, 3)) \
-	fw_def(TIGERLAKE,    0, huc_def(tgl,  7, 9, 3)) \
-	fw_def(JASPERLAKE,   0, huc_def(ehl,  9, 0, 0)) \
-	fw_def(ELKHARTLAKE,  0, huc_def(ehl,  9, 0, 0)) \
-	fw_def(ICELAKE,      0, huc_def(icl,  9, 0, 0)) \
-	fw_def(COMETLAKE,    5, huc_def(cml,  4, 0, 0)) \
-	fw_def(COMETLAKE,    0, huc_def(kbl,  4, 0, 0)) \
-	fw_def(COFFEELAKE,   0, huc_def(kbl,  4, 0, 0)) \
-	fw_def(GEMINILAKE,   0, huc_def(glk,  4, 0, 0)) \
-	fw_def(KABYLAKE,     0, huc_def(kbl,  4, 0, 0)) \
-	fw_def(BROXTON,      0, huc_def(bxt,  2, 0, 0)) \
-	fw_def(SKYLAKE,      0, huc_def(skl,  2, 0, 0))
-
-#define __MAKE_UC_FW_PATH(prefix_, name_, major_, minor_, patch_) \
+#define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_dma_def, huc_gsc_def) \
+	fw_def(DG2,          0, huc_gsc_def(dg2,  7, 10, 0)) \
+	fw_def(ALDERLAKE_P,  0, huc_dma_def(tgl,  7, 9, 3)) \
+	fw_def(ALDERLAKE_S,  0, huc_dma_def(tgl,  7, 9, 3)) \
+	fw_def(DG1,          0, huc_dma_def(dg1,  7, 9, 3)) \
+	fw_def(ROCKETLAKE,   0, huc_dma_def(tgl,  7, 9, 3)) \
+	fw_def(TIGERLAKE,    0, huc_dma_def(tgl,  7, 9, 3)) \
+	fw_def(JASPERLAKE,   0, huc_dma_def(ehl,  9, 0, 0)) \
+	fw_def(ELKHARTLAKE,  0, huc_dma_def(ehl,  9, 0, 0)) \
+	fw_def(ICELAKE,      0, huc_dma_def(icl,  9, 0, 0)) \
+	fw_def(COMETLAKE,    5, huc_dma_def(cml,  4, 0, 0)) \
+	fw_def(COMETLAKE,    0, huc_dma_def(kbl,  4, 0, 0)) \
+	fw_def(COFFEELAKE,   0, huc_dma_def(kbl,  4, 0, 0)) \
+	fw_def(GEMINILAKE,   0, huc_dma_def(glk,  4, 0, 0)) \
+	fw_def(KABYLAKE,     0, huc_dma_def(kbl,  4, 0, 0)) \
+	fw_def(BROXTON,      0, huc_dma_def(bxt,  2, 0, 0)) \
+	fw_def(SKYLAKE,      0, huc_dma_def(skl,  2, 0, 0))
+
+#define __MAKE_UC_FW_PATH(prefix_, name_, major_, minor_, patch_, postfix_) \
 	"i915/" \
 	__stringify(prefix_) name_ \
 	__stringify(major_) "." \
 	__stringify(minor_) "." \
-	__stringify(patch_) ".bin"
+	__stringify(patch_) postfix_ ".bin"
 
 #define MAKE_GUC_FW_PATH(prefix_, major_, minor_, patch_) \
-	__MAKE_UC_FW_PATH(prefix_, "_guc_", major_, minor_, patch_)
+	__MAKE_UC_FW_PATH(prefix_, "_guc_", major_, minor_, patch_, "")
 
 #define MAKE_HUC_FW_PATH(prefix_, major_, minor_, bld_num_) \
-	__MAKE_UC_FW_PATH(prefix_, "_huc_", major_, minor_, bld_num_)
+	__MAKE_UC_FW_PATH(prefix_, "_huc_", major_, minor_, bld_num_, "")
+
+#define MAKE_HUC_GSC_FW_PATH(prefix_, major_, minor_, bld_num_) \
+	__MAKE_UC_FW_PATH(prefix_, "_huc_", major_, minor_, bld_num_, "_gsc")
 
 /* All blobs need to be declared via MODULE_FIRMWARE() */
 #define INTEL_UC_MODULE_FW(platform_, revid_, uc_) \
 	MODULE_FIRMWARE(uc_);
 
 INTEL_GUC_FIRMWARE_DEFS(INTEL_UC_MODULE_FW, MAKE_GUC_FW_PATH)
-INTEL_HUC_FIRMWARE_DEFS(INTEL_UC_MODULE_FW, MAKE_HUC_FW_PATH)
+INTEL_HUC_FIRMWARE_DEFS(INTEL_UC_MODULE_FW, MAKE_HUC_FW_PATH, MAKE_HUC_GSC_FW_PATH)
 
 /* The below structs and macros are used to iterate across the list of blobs */
 struct __packed uc_fw_blob {
 	u8 major;
 	u8 minor;
+	bool loaded_via_gsc;
 	const char *path;
 };
 
-#define UC_FW_BLOB(major_, minor_, path_) \
-	{ .major = major_, .minor = minor_, .path = path_ }
+#define UC_FW_BLOB(major_, minor_, gsc_, path_) \
+	{ .major = major_, .minor = minor_, .loaded_via_gsc = gsc_, .path = path_ }
 
 #define GUC_FW_BLOB(prefix_, major_, minor_, patch_) \
-	UC_FW_BLOB(major_, minor_, \
+	UC_FW_BLOB(major_, minor_, false, \
 		   MAKE_GUC_FW_PATH(prefix_, major_, minor_, patch_))
 
 #define HUC_FW_BLOB(prefix_, major_, minor_, bld_num_) \
-	UC_FW_BLOB(major_, minor_, \
+	UC_FW_BLOB(major_, minor_, false, \
 		   MAKE_HUC_FW_PATH(prefix_, major_, minor_, bld_num_))
 
+#define HUC_GSC_FW_BLOB(prefix_, major_, minor_, bld_num_) \
+	UC_FW_BLOB(major_, minor_, true, \
+		   MAKE_HUC_GSC_FW_PATH(prefix_, major_, minor_, bld_num_))
+
 struct __packed uc_fw_platform_requirement {
 	enum intel_platform p;
 	u8 rev; /* first platform rev using this FW */
@@ -150,7 +159,7 @@ __uc_fw_auto_select(struct drm_i915_private *i915, struct intel_uc_fw *uc_fw)
 		INTEL_GUC_FIRMWARE_DEFS(MAKE_FW_LIST, GUC_FW_BLOB)
 	};
 	static const struct uc_fw_platform_requirement blobs_huc[] = {
-		INTEL_HUC_FIRMWARE_DEFS(MAKE_FW_LIST, HUC_FW_BLOB)
+		INTEL_HUC_FIRMWARE_DEFS(MAKE_FW_LIST, HUC_FW_BLOB, HUC_GSC_FW_BLOB)
 	};
 	static const struct fw_blobs_by_type blobs_all[INTEL_UC_FW_NUM_TYPES] = {
 		[INTEL_UC_FW_TYPE_GUC] = { blobs_guc, ARRAY_SIZE(blobs_guc) },
@@ -172,6 +181,7 @@ __uc_fw_auto_select(struct drm_i915_private *i915, struct intel_uc_fw *uc_fw)
 			uc_fw->path = blob->path;
 			uc_fw->major_ver_wanted = blob->major;
 			uc_fw->minor_ver_wanted = blob->minor;
+			uc_fw->loaded_via_gsc = blob->loaded_via_gsc;
 			break;
 		}
 	}
-- 
2.25.1

