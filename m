Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1179B3E7F
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 00:33:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02BA710E588;
	Mon, 28 Oct 2024 23:33:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MhpbEJe1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CBA610E588
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2024 23:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730158408; x=1761694408;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aQMrL4SanN5oHTV/8ko446ThHWCuqC8cPzNOqAsT9tM=;
 b=MhpbEJe1upvEQzaJh0E0vUtnzzzasiSioi5Y7+lpRlwUZghje1ImFpdk
 XzZ8PJDP4RyERZz0xdwaIteI2Iq/OukhNxvMrzXvgO28FscxdDkyEp63c
 S0h6vRKlXZ2CoGsh/O+xjPCY75WO01xCd/poGqfZMtze6KkZ70oHrKFxR
 BK5OwhjiuUGOOqdBtpw0AvimfxqaLpZdFf9dyfTQRtucARLh8A/TudJpb
 n0pJk90XtE8S4fPevT1BJimVvPq1zv4yDNd/gSgb+zrNzijF5R3Xj/jsW
 iCNIReRK7mJIPCJS+y06jEqytmbsVgsq3lZwyj+peTNNLfX15szNzQcqS A==;
X-CSE-ConnectionGUID: 64ASfWgeThWIfyuDTb+LAQ==
X-CSE-MsgGUID: St6L7PRMQC6Rv+Ye+K+IJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="47257359"
X-IronPort-AV: E=Sophos;i="6.11,240,1725346800"; d="scan'208";a="47257359"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 16:33:27 -0700
X-CSE-ConnectionGUID: psNONILxROuzKhbsGPt4LQ==
X-CSE-MsgGUID: EImb9zKXQ6Wn7x5bQc9duw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,240,1725346800"; d="scan'208";a="85719321"
Received: from valcore-skull-1.fm.intel.com ([10.1.39.17])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 16:31:41 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 John Harrison <John.C.Harrison@Intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH] drm/i915/gsc: ARL-H and ARL-U need a newer GSC FW.
Date: Mon, 28 Oct 2024 16:31:32 -0700
Message-ID: <20241028233132.149745-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

All MTL and ARL SKUs share the same GSC FW, but the newer platforms are
only supported in newer blobs. In particular, ARL-S is supported
starting from 102.0.10.1878 (which is already the minimum required
version for ARL in the code), while ARL-H and ARL-U are supported from
102.1.15.1926. Therefore, the driver needs to check which specific ARL
subplatform its running on when verifying that the GSC FW is new enough
for it.

Fixes: 2955ae8186c8 ("drm/i915: ARL requires a newer GSC firmware")
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c | 50 +++++++++++++++--------
 drivers/gpu/drm/i915/i915_drv.h           |  8 +++-
 drivers/gpu/drm/i915/intel_device_info.c  | 24 ++++++++---
 drivers/gpu/drm/i915/intel_device_info.h  |  4 +-
 include/drm/intel/i915_pciids.h           | 15 +++++--
 5 files changed, 72 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
index 551b0d7974ff..5dc0ccd07636 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
@@ -80,6 +80,7 @@ int intel_gsc_fw_get_binary_info(struct intel_uc_fw *gsc_fw, const void *data, s
 	const struct intel_gsc_cpd_header_v2 *cpd_header = NULL;
 	const struct intel_gsc_cpd_entry *cpd_entry = NULL;
 	const struct intel_gsc_manifest_header *manifest;
+	struct intel_uc_fw_ver min_ver = { 0 };
 	size_t min_size = sizeof(*layout);
 	int i;
 
@@ -212,33 +213,46 @@ int intel_gsc_fw_get_binary_info(struct intel_uc_fw *gsc_fw, const void *data, s
 		}
 	}
 
-	if (IS_ARROWLAKE(gt->i915)) {
+	/*
+	 * ARL SKUs require newer firmwares, but the blob is actually common
+	 * across all MTL and ARL SKUs, so we need to do an explicit version check
+	 * here rather than using a separate table entry. If a too old version
+	 * is found, then just don't use GSC rather than aborting the driver load.
+	 * Note that the major number in the GSC FW version is used to indicate
+	 * the platform, so we expect it to always be 102 for MTL/ARL binaries.
+	 */
+	if (IS_ARROWLAKE_S(gt->i915))
+		min_ver = (struct intel_uc_fw_ver){ 102, 0, 10, 1878 };
+	else if (IS_ARROWLAKE_H(gt->i915) || IS_ARROWLAKE_U(gt->i915))
+		min_ver = (struct intel_uc_fw_ver){ 102, 1, 15, 1926 };
+
+	if (IS_METEORLAKE(gt->i915) && gsc->release.major != 102) {
+		gt_info(gt, "Invalid GSC firmware for MTL/ARL, got %d.%d.%d.%d but need 102.x.x.x",
+			gsc->release.major, gsc->release.minor,
+			gsc->release.patch, gsc->release.build);
+			return -EINVAL;
+	}
+
+	if (min_ver.major) {
 		bool too_old = false;
 
-		/*
-		 * ARL requires a newer firmware than MTL did (102.0.10.1878) but the
-		 * firmware is actually common. So, need to do an explicit version check
-		 * here rather than using a separate table entry. And if the older
-		 * MTL-only version is found, then just don't use GSC rather than aborting
-		 * the driver load.
-		 */
-		if (gsc->release.major < 102) {
+		if (gsc->release.minor < min_ver.minor) {
 			too_old = true;
-		} else if (gsc->release.major == 102) {
-			if (gsc->release.minor == 0) {
-				if (gsc->release.patch < 10) {
+		} else if (gsc->release.minor == min_ver.minor) {
+			if (gsc->release.patch < min_ver.patch) {
+				too_old = true;
+			} else if (gsc->release.patch == min_ver.patch) {
+				if (gsc->release.build < min_ver.build)
 					too_old = true;
-				} else if (gsc->release.patch == 10) {
-					if (gsc->release.build < 1878)
-						too_old = true;
-				}
 			}
 		}
 
 		if (too_old) {
-			gt_info(gt, "GSC firmware too old for ARL, got %d.%d.%d.%d but need at least 102.0.10.1878",
+			gt_info(gt, "GSC firmware too old for ARL, got %d.%d.%d.%d but need at least %d.%d.%d.%d",
 				gsc->release.major, gsc->release.minor,
-				gsc->release.patch, gsc->release.build);
+				gsc->release.patch, gsc->release.build,
+				min_ver.major, min_ver.minor,
+				min_ver.patch, min_ver.build);
 			return -EINVAL;
 		}
 	}
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a66e5bb078cf..b1f2183aa156 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -539,8 +539,12 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_LUNARLAKE(i915) (0 && i915)
 #define IS_BATTLEMAGE(i915)  (0 && i915)
 
-#define IS_ARROWLAKE(i915) \
-	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL)
+#define IS_ARROWLAKE_H(i915) \
+	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL_H)
+#define IS_ARROWLAKE_U(i915) \
+	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL_U)
+#define IS_ARROWLAKE_S(i915) \
+	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL_S)
 #define IS_DG2_G10(i915) \
 	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G10)
 #define IS_DG2_G11(i915) \
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 3c47c625993e..467999249b9a 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -200,8 +200,16 @@ static const u16 subplatform_g12_ids[] = {
 	INTEL_DG2_G12_IDS(ID),
 };
 
-static const u16 subplatform_arl_ids[] = {
-	INTEL_ARL_IDS(ID),
+static const u16 subplatform_arl_h_ids[] = {
+	INTEL_ARL_H_IDS(ID),
+};
+
+static const u16 subplatform_arl_u_ids[] = {
+	INTEL_ARL_U_IDS(ID),
+};
+
+static const u16 subplatform_arl_s_ids[] = {
+	INTEL_ARL_S_IDS(ID),
 };
 
 static bool find_devid(u16 id, const u16 *p, unsigned int num)
@@ -261,9 +269,15 @@ static void intel_device_info_subplatform_init(struct drm_i915_private *i915)
 	} else if (find_devid(devid, subplatform_g12_ids,
 			      ARRAY_SIZE(subplatform_g12_ids))) {
 		mask = BIT(INTEL_SUBPLATFORM_G12);
-	} else if (find_devid(devid, subplatform_arl_ids,
-			      ARRAY_SIZE(subplatform_arl_ids))) {
-		mask = BIT(INTEL_SUBPLATFORM_ARL);
+	} else if (find_devid(devid, subplatform_arl_h_ids,
+			      ARRAY_SIZE(subplatform_arl_h_ids))) {
+		mask = BIT(INTEL_SUBPLATFORM_ARL_H);
+	} else if (find_devid(devid, subplatform_arl_u_ids,
+			      ARRAY_SIZE(subplatform_arl_u_ids))) {
+		mask = BIT(INTEL_SUBPLATFORM_ARL_U);
+	} else if (find_devid(devid, subplatform_arl_s_ids,
+			      ARRAY_SIZE(subplatform_arl_s_ids))) {
+		mask = BIT(INTEL_SUBPLATFORM_ARL_S);
 	}
 
 	GEM_BUG_ON(mask & ~INTEL_SUBPLATFORM_MASK);
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 4f4aa4ff9963..ef84eea9ba0b 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -128,7 +128,9 @@ enum intel_platform {
 #define INTEL_SUBPLATFORM_RPLU  2
 
 /* MTL */
-#define INTEL_SUBPLATFORM_ARL	0
+#define INTEL_SUBPLATFORM_ARL_H	0
+#define INTEL_SUBPLATFORM_ARL_U	1
+#define INTEL_SUBPLATFORM_ARL_S	2
 
 enum intel_ppgtt_type {
 	INTEL_PPGTT_NONE = I915_GEM_PPGTT_NONE,
diff --git a/include/drm/intel/i915_pciids.h b/include/drm/intel/i915_pciids.h
index 6b92f8c3731b..ae64e8ec1adc 100644
--- a/include/drm/intel/i915_pciids.h
+++ b/include/drm/intel/i915_pciids.h
@@ -765,13 +765,22 @@
 	INTEL_ATS_M75_IDS(MACRO__, ## __VA_ARGS__)
 
 /* ARL */
-#define INTEL_ARL_IDS(MACRO__, ...) \
-	MACRO__(0x7D41, ## __VA_ARGS__), \
+#define INTEL_ARL_H_IDS(MACRO__, ...) \
 	MACRO__(0x7D51, ## __VA_ARGS__), \
+	MACRO__(0x7DD1, ## __VA_ARGS__)
+
+#define INTEL_ARL_U_IDS(MACRO__, ...) \
+	MACRO__(0x7D41, ## __VA_ARGS__) \
+
+#define INTEL_ARL_S_IDS(MACRO__, ...) \
 	MACRO__(0x7D67, ## __VA_ARGS__), \
-	MACRO__(0x7DD1, ## __VA_ARGS__), \
 	MACRO__(0xB640, ## __VA_ARGS__)
 
+#define INTEL_ARL_IDS(MACRO__, ...) \
+	INTEL_ARL_H_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_ARL_U_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_ARL_S_IDS(MACRO__, ## __VA_ARGS__)
+
 /* MTL */
 #define INTEL_MTL_IDS(MACRO__, ...) \
 	MACRO__(0x7D40, ## __VA_ARGS__), \
-- 
2.43.0

