Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5F8273138
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Sep 2020 19:54:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C7426E516;
	Mon, 21 Sep 2020 17:54:30 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E3C26E511
 for <Intel-GFX@lists.freedesktop.org>; Mon, 21 Sep 2020 17:54:29 +0000 (UTC)
IronPort-SDR: g65uTHsEb91ahVToZdlU39I8waUeYP2fchrVMS3N8hPL7I9g1rbrszbLItBE1qAA+0aFYSbXWr
 He4JezBdleMw==
X-IronPort-AV: E=McAfee;i="6000,8403,9751"; a="224596830"
X-IronPort-AV: E=Sophos;i="5.77,287,1596524400"; d="scan'208";a="224596830"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2020 10:54:28 -0700
IronPort-SDR: EVeRlMQ0biX8lqnwQFM+2krJhyG1BWCObqWSLqyDoetJlDVG5bQnJnlLn/r8djtlTn+306+0Bp
 PjZrIH8zcAbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,287,1596524400"; d="scan'208";a="321863512"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga002.jf.intel.com with ESMTP; 21 Sep 2020 10:54:28 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Mon, 21 Sep 2020 10:54:26 -0700
Message-Id: <20200921175428.2914478-3-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200921175428.2914478-1-John.C.Harrison@Intel.com>
References: <20200921175428.2914478-1-John.C.Harrison@Intel.com>
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
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c | 27 ++++++++++++++++++-----
 1 file changed, 22 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
index d4a87f4c9421..eac84baf34e6 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
@@ -74,8 +74,9 @@ static inline bool guc_ready(struct intel_uncore *uncore, u32 *status)
 		((val & GS_MIA_CORE_STATE) && (uk_val == GS_UKERNEL_LAPIC_DONE));
 }
 
-static int guc_wait_ucode(struct intel_uncore *uncore)
+static int guc_wait_ucode(struct intel_gt *gt)
 {
+	struct intel_uncore *uncore = gt->uncore;
 	u32 status;
 	int ret;
 
@@ -91,16 +92,32 @@ static int guc_wait_ucode(struct intel_uncore *uncore)
 	DRM_DEBUG_DRIVER("GuC status %#x\n", status);
 
 	if ((status & GS_BOOTROM_MASK) == GS_BOOTROM_RSA_FAILED) {
-		DRM_ERROR("GuC firmware signature verification failed\n");
+		drm_err(&gt->i915->drm, "GuC firmware signature verification failed\n");
 		ret = -ENOEXEC;
+		goto out;
 	}
 
 	if ((status & GS_UKERNEL_MASK) == GS_UKERNEL_EXCEPTION) {
-		DRM_ERROR("GuC firmware exception. EIP: %#x\n",
-			  intel_uncore_read(uncore, SOFT_SCRATCH(13)));
+		drm_err(&gt->i915->drm, "GuC firmware exception. EIP: %#x\n",
+			intel_uncore_read(uncore, SOFT_SCRATCH(13)));
 		ret = -ENXIO;
+		goto out;
 	}
 
+	if (ret) {
+		drm_err(&gt->i915->drm, "GuC load failed: status: Reset = %d, "
+			"BootROM = 0x%02X, UKernel = 0x%02X, "
+			"MIA = 0x%02X, Auth = 0x%02X\n",
+			(status >> GS_RESET_SHIFT) & 1,
+			(status & GS_BOOTROM_MASK) >> GS_BOOTROM_SHIFT,
+			(status & GS_UKERNEL_MASK) >> GS_UKERNEL_SHIFT,
+			(status & GS_MIA_MASK) >> GS_MIA_SHIFT,
+			(status & GS_AUTH_STATUS_MASK) >> GS_AUTH_STATUS_SHIFT);
+	}
+
+out:
+	if (ret)
+		drm_err(&gt->i915->drm, "GuC load failed: status = 0x%08X\n", status);
 	return ret;
 }
 
@@ -139,7 +156,7 @@ int intel_guc_fw_upload(struct intel_guc *guc)
 	if (ret)
 		goto out;
 
-	ret = guc_wait_ucode(uncore);
+	ret = guc_wait_ucode(gt);
 	if (ret)
 		goto out;
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
