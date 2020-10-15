Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DCA28F895
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 20:29:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E4586E20F;
	Thu, 15 Oct 2020 18:29:11 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2764A6E077
 for <Intel-GFX@lists.freedesktop.org>; Thu, 15 Oct 2020 18:29:03 +0000 (UTC)
IronPort-SDR: k7uyHV+fxQcZh9q8TiCk9swykDqLq6I9bEin7bnkyBxIy7JJ+dlA1TkTuxPh1HZCFOm2NgOmp8
 xgFviDm++S3Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9775"; a="163805179"
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="163805179"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 11:29:02 -0700
IronPort-SDR: ACdggvVdUMdHgBe3ZG3xR5CjyMU2HM/IAJeA6+n+aWHDXi0HzgfZ6ScWf8RajbVz2i/hCzykBr
 U63q4/cu18ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="531364117"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga005.jf.intel.com with ESMTP; 15 Oct 2020 11:29:02 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Thu, 15 Oct 2020 11:28:59 -0700
Message-Id: <20201015182901.3197788-3-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201015182901.3197788-1-John.C.Harrison@Intel.com>
References: <20201015182901.3197788-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH CI v2 2/4] drm/i915/guc: Improved reporting when
 GuC fails to load
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
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
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
