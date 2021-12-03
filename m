Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26AB0467D53
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 19:34:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D2317B4FE;
	Fri,  3 Dec 2021 18:33:45 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E2797B4F8;
 Fri,  3 Dec 2021 18:33:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10187"; a="234540247"
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="234540247"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 10:33:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="577578515"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga004.fm.intel.com with ESMTP; 03 Dec 2021 10:33:40 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Fri,  3 Dec 2021 10:33:35 -0800
Message-Id: <20211203183339.3276250-2-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211203183339.3276250-1-John.C.Harrison@Intel.com>
References: <20211203183339.3276250-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/uc: Allow platforms to have GuC
 but not HuC
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

It is possible for platforms to require GuC but not HuC firmware.
Also, the firmware versions for GuC and HuC advance independently. So
split the macros up to allow the lists to be maintained separately.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 93 ++++++++++++++++--------
 1 file changed, 63 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 3aa87be4f2e4..a7788ce50736 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -48,22 +48,39 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
  * Note that RKL and ADL-S have the same GuC/HuC device ID's and use the same
  * firmware as TGL.
  */
-#define INTEL_UC_FIRMWARE_DEFS(fw_def, guc_def, huc_def) \
-	fw_def(ALDERLAKE_P, 0, guc_def(adlp, 62, 0, 3), huc_def(tgl, 7, 9, 3)) \
-	fw_def(ALDERLAKE_S, 0, guc_def(tgl, 62, 0, 0), huc_def(tgl,  7, 9, 3)) \
-	fw_def(DG1,         0, guc_def(dg1, 62, 0, 0), huc_def(dg1,  7, 9, 3)) \
-	fw_def(ROCKETLAKE,  0, guc_def(tgl, 62, 0, 0), huc_def(tgl,  7, 9, 3)) \
-	fw_def(TIGERLAKE,   0, guc_def(tgl, 62, 0, 0), huc_def(tgl,  7, 9, 3)) \
-	fw_def(JASPERLAKE,  0, guc_def(ehl, 62, 0, 0), huc_def(ehl,  9, 0, 0)) \
-	fw_def(ELKHARTLAKE, 0, guc_def(ehl, 62, 0, 0), huc_def(ehl,  9, 0, 0)) \
-	fw_def(ICELAKE,     0, guc_def(icl, 62, 0, 0), huc_def(icl,  9, 0, 0)) \
-	fw_def(COMETLAKE,   5, guc_def(cml, 62, 0, 0), huc_def(cml,  4, 0, 0)) \
-	fw_def(COMETLAKE,   0, guc_def(kbl, 62, 0, 0), huc_def(kbl,  4, 0, 0)) \
-	fw_def(COFFEELAKE,  0, guc_def(kbl, 62, 0, 0), huc_def(kbl,  4, 0, 0)) \
-	fw_def(GEMINILAKE,  0, guc_def(glk, 62, 0, 0), huc_def(glk,  4, 0, 0)) \
-	fw_def(KABYLAKE,    0, guc_def(kbl, 62, 0, 0), huc_def(kbl,  4, 0, 0)) \
-	fw_def(BROXTON,     0, guc_def(bxt, 62, 0, 0), huc_def(bxt,  2, 0, 0)) \
-	fw_def(SKYLAKE,     0, guc_def(skl, 62, 0, 0), huc_def(skl,  2, 0, 0))
+#define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_def) \
+	fw_def(ALDERLAKE_P,  0, guc_def(adlp, 62, 0, 3)) \
+	fw_def(ALDERLAKE_S,  0, guc_def(tgl,  62, 0, 0)) \
+	fw_def(DG1,          0, guc_def(dg1,  62, 0, 0)) \
+	fw_def(ROCKETLAKE,   0, guc_def(tgl,  62, 0, 0)) \
+	fw_def(TIGERLAKE,    0, guc_def(tgl,  62, 0, 0)) \
+	fw_def(JASPERLAKE,   0, guc_def(ehl,  62, 0, 0)) \
+	fw_def(ELKHARTLAKE,  0, guc_def(ehl,  62, 0, 0)) \
+	fw_def(ICELAKE,      0, guc_def(icl,  62, 0, 0)) \
+	fw_def(COMETLAKE,    5, guc_def(cml,  62, 0, 0)) \
+	fw_def(COMETLAKE,    0, guc_def(kbl,  62, 0, 0)) \
+	fw_def(COFFEELAKE,   0, guc_def(kbl,  62, 0, 0)) \
+	fw_def(GEMINILAKE,   0, guc_def(glk,  62, 0, 0)) \
+	fw_def(KABYLAKE,     0, guc_def(kbl,  62, 0, 0)) \
+	fw_def(BROXTON,      0, guc_def(bxt,  62, 0, 0)) \
+	fw_def(SKYLAKE,      0, guc_def(skl,  62, 0, 0))
+
+#define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_def) \
+	fw_def(ALDERLAKE_P,  0, huc_def(tgl,  7, 9, 3)) \
+	fw_def(ALDERLAKE_S,  0, huc_def(tgl,  7, 9, 3)) \
+	fw_def(DG1,          0, huc_def(dg1,  7, 9, 3)) \
+	fw_def(ROCKETLAKE,   0, huc_def(tgl,  7, 9, 3)) \
+	fw_def(TIGERLAKE,    0, huc_def(tgl,  7, 9, 3)) \
+	fw_def(JASPERLAKE,   0, huc_def(ehl,  9, 0, 0)) \
+	fw_def(ELKHARTLAKE,  0, huc_def(ehl,  9, 0, 0)) \
+	fw_def(ICELAKE,      0, huc_def(icl,  9, 0, 0)) \
+	fw_def(COMETLAKE,    5, huc_def(cml,  4, 0, 0)) \
+	fw_def(COMETLAKE,    0, huc_def(kbl,  4, 0, 0)) \
+	fw_def(COFFEELAKE,   0, huc_def(kbl,  4, 0, 0)) \
+	fw_def(GEMINILAKE,   0, huc_def(glk,  4, 0, 0)) \
+	fw_def(KABYLAKE,     0, huc_def(kbl,  4, 0, 0)) \
+	fw_def(BROXTON,      0, huc_def(bxt,  2, 0, 0)) \
+	fw_def(SKYLAKE,      0, huc_def(skl,  2, 0, 0))
 
 #define __MAKE_UC_FW_PATH(prefix_, name_, major_, minor_, patch_) \
 	"i915/" \
@@ -79,11 +96,11 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
 	__MAKE_UC_FW_PATH(prefix_, "_huc_", major_, minor_, bld_num_)
 
 /* All blobs need to be declared via MODULE_FIRMWARE() */
-#define INTEL_UC_MODULE_FW(platform_, revid_, guc_, huc_) \
-	MODULE_FIRMWARE(guc_); \
-	MODULE_FIRMWARE(huc_);
+#define INTEL_UC_MODULE_FW(platform_, revid_, uc_) \
+	MODULE_FIRMWARE(uc_);
 
-INTEL_UC_FIRMWARE_DEFS(INTEL_UC_MODULE_FW, MAKE_GUC_FW_PATH, MAKE_HUC_FW_PATH)
+INTEL_GUC_FIRMWARE_DEFS(INTEL_UC_MODULE_FW, MAKE_GUC_FW_PATH)
+INTEL_HUC_FIRMWARE_DEFS(INTEL_UC_MODULE_FW, MAKE_HUC_FW_PATH)
 
 /* The below structs and macros are used to iterate across the list of blobs */
 struct __packed uc_fw_blob {
@@ -106,31 +123,47 @@ struct __packed uc_fw_blob {
 struct __packed uc_fw_platform_requirement {
 	enum intel_platform p;
 	u8 rev; /* first platform rev using this FW */
-	const struct uc_fw_blob blobs[INTEL_UC_FW_NUM_TYPES];
+	const struct uc_fw_blob blob;
 };
 
-#define MAKE_FW_LIST(platform_, revid_, guc_, huc_) \
+#define MAKE_FW_LIST(platform_, revid_, uc_) \
 { \
 	.p = INTEL_##platform_, \
 	.rev = revid_, \
-	.blobs[INTEL_UC_FW_TYPE_GUC] = guc_, \
-	.blobs[INTEL_UC_FW_TYPE_HUC] = huc_, \
+	.blob = uc_, \
 },
 
+struct fw_blobs_by_type {
+	const struct uc_fw_platform_requirement *blobs;
+	u32 count;
+};
+
 static void
 __uc_fw_auto_select(struct drm_i915_private *i915, struct intel_uc_fw *uc_fw)
 {
-	static const struct uc_fw_platform_requirement fw_blobs[] = {
-		INTEL_UC_FIRMWARE_DEFS(MAKE_FW_LIST, GUC_FW_BLOB, HUC_FW_BLOB)
+	static const struct uc_fw_platform_requirement blobs_guc[] = {
+		INTEL_GUC_FIRMWARE_DEFS(MAKE_FW_LIST, GUC_FW_BLOB)
+	};
+	static const struct uc_fw_platform_requirement blobs_huc[] = {
+		INTEL_HUC_FIRMWARE_DEFS(MAKE_FW_LIST, HUC_FW_BLOB)
 	};
+	static const struct fw_blobs_by_type blobs_all[INTEL_UC_FW_NUM_TYPES] = {
+		[INTEL_UC_FW_TYPE_GUC] = { blobs_guc, ARRAY_SIZE(blobs_guc) },
+		[INTEL_UC_FW_TYPE_HUC] = { blobs_huc, ARRAY_SIZE(blobs_huc) },
+	};
+	static const struct uc_fw_platform_requirement *fw_blobs;
 	enum intel_platform p = INTEL_INFO(i915)->platform;
+	u32 fw_count;
 	u8 rev = INTEL_REVID(i915);
 	int i;
 
-	for (i = 0; i < ARRAY_SIZE(fw_blobs) && p <= fw_blobs[i].p; i++) {
+	GEM_BUG_ON(uc_fw->type >= ARRAY_SIZE(blobs_all));
+	fw_blobs = blobs_all[uc_fw->type].blobs;
+	fw_count = blobs_all[uc_fw->type].count;
+
+	for (i = 0; i < fw_count && p <= fw_blobs[i].p; i++) {
 		if (p == fw_blobs[i].p && rev >= fw_blobs[i].rev) {
-			const struct uc_fw_blob *blob =
-					&fw_blobs[i].blobs[uc_fw->type];
+			const struct uc_fw_blob *blob = &fw_blobs[i].blob;
 			uc_fw->path = blob->path;
 			uc_fw->major_ver_wanted = blob->major;
 			uc_fw->minor_ver_wanted = blob->minor;
@@ -140,7 +173,7 @@ __uc_fw_auto_select(struct drm_i915_private *i915, struct intel_uc_fw *uc_fw)
 
 	/* make sure the list is ordered as expected */
 	if (IS_ENABLED(CONFIG_DRM_I915_SELFTEST)) {
-		for (i = 1; i < ARRAY_SIZE(fw_blobs); i++) {
+		for (i = 1; i < fw_count; i++) {
 			if (fw_blobs[i].p < fw_blobs[i - 1].p)
 				continue;
 
-- 
2.25.1

