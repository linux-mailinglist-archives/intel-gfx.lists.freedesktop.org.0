Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF5F2794B2
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Sep 2020 01:26:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CA846ED72;
	Fri, 25 Sep 2020 23:26:40 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26F436ED72
 for <Intel-GFX@lists.freedesktop.org>; Fri, 25 Sep 2020 23:26:39 +0000 (UTC)
IronPort-SDR: 8hJsu6zVLMMb1Qyw9ya+GI31iQkB82LrVEf2xagaMBq+bYdY+sHkX6zp/3TSuEEsosdHq8XA6+
 thHlILZ2jqaw==
X-IronPort-AV: E=McAfee;i="6000,8403,9755"; a="162564371"
X-IronPort-AV: E=Sophos;i="5.77,303,1596524400"; d="scan'208";a="162564371"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 16:26:37 -0700
IronPort-SDR: OCEC0mS6FhJinHPazVLhFGFforKdSKRk70mg7ZI91UT6cC70TnCQWoUil8+NFbgFolx8x4X1lH
 07+MefttClmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,303,1596524400"; d="scan'208";a="337048726"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga004.fm.intel.com with ESMTP; 25 Sep 2020 16:26:37 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Fri, 25 Sep 2020 16:26:35 -0700
Message-Id: <20200925232637.1968039-3-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200925232637.1968039-1-John.C.Harrison@Intel.com>
References: <20200925232637.1968039-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/guc: Improved reporting when GuC
 fails to load
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

From: John Harrison <John.C.Harrison@Intel.com>

Rather than just saying 'GuC failed to load: -110', actually print out
the GuC status register and break it down into the individual fields.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c | 31 ++++++++++++++++-------
 1 file changed, 22 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
index d4a87f4c9421..f9d0907ea1a5 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
@@ -76,6 +76,7 @@ static inline bool guc_ready(struct intel_uncore *uncore, u32 *status)
 
 static int guc_wait_ucode(struct intel_uncore *uncore)
 {
+	struct drm_device *drm = &uncore->i915->drm;
 	u32 status;
 	int ret;
 
@@ -90,15 +91,27 @@ static int guc_wait_ucode(struct intel_uncore *uncore)
 	ret = wait_for(guc_ready(uncore, &status), 100);
 	DRM_DEBUG_DRIVER("GuC status %#x\n", status);
 
-	if ((status & GS_BOOTROM_MASK) == GS_BOOTROM_RSA_FAILED) {
-		DRM_ERROR("GuC firmware signature verification failed\n");
-		ret = -ENOEXEC;
-	}
-
-	if ((status & GS_UKERNEL_MASK) == GS_UKERNEL_EXCEPTION) {
-		DRM_ERROR("GuC firmware exception. EIP: %#x\n",
-			  intel_uncore_read(uncore, SOFT_SCRATCH(13)));
-		ret = -ENXIO;
+	if (ret) {
+		drm_err(drm, "GuC load failed: status = 0x%08X\n", status);
+		drm_err(drm, "GuC load failed: status: Reset = %d, "
+			"BootROM = 0x%02X, UKernel = 0x%02X, "
+			"MIA = 0x%02X, Auth = 0x%02X\n",
+			REG_FIELD_GET(GS_MIA_IN_RESET, status),
+			REG_FIELD_GET(GS_BOOTROM_MASK, status),
+			REG_FIELD_GET(GS_UKERNEL_MASK, status),
+			REG_FIELD_GET(GS_MIA_MASK, status),
+			REG_FIELD_GET(GS_AUTH_STATUS_MASK, status));
+
+		if ((status & GS_BOOTROM_MASK) == GS_BOOTROM_RSA_FAILED) {
+			drm_err(drm, "GuC firmware signature verification failed\n");
+			ret = -ENOEXEC;
+		}
+
+		if ((status & GS_UKERNEL_MASK) == GS_UKERNEL_EXCEPTION) {
+			drm_err(drm, "GuC firmware exception. EIP: %#x\n",
+				intel_uncore_read(uncore, SOFT_SCRATCH(13)));
+			ret = -ENXIO;
+		}
 	}
 
 	return ret;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
