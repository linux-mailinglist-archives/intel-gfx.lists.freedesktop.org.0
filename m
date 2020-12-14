Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C89BA2D960D
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 11:10:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 712B56E241;
	Mon, 14 Dec 2020 10:10:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66E276E23B
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 10:10:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23317770-1500050 
 for multiple; Mon, 14 Dec 2020 10:09:49 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 10:08:42 +0000
Message-Id: <20201214100949.11387-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201214100949.11387-1-chris@chris-wilson.co.uk>
References: <20201214100949.11387-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/69] drm/i915/uc: Squelch load failure error
 message
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The caller determines if the failure is an error or not, so avoid
warning when we will try again and succeed. For example,

<7> [111.319321] [drm:intel_guc_fw_upload [i915]] GuC status 0x20
<3> [111.319340] i915 0000:00:02.0: [drm] *ERROR* GuC load failed: status = 0x00000020
<3> [111.319606] i915 0000:00:02.0: [drm] *ERROR* GuC load failed: status: Reset = 0, BootROM = 0x10, UKernel = 0x00, MIA = 0x00, Auth = 0x00
<7> [111.320045] [drm:__uc_init_hw [i915]] GuC fw load failed: -110; will reset and retry 2 more time(s)
<7> [111.322978] [drm:intel_guc_fw_upload [i915]] GuC status 0x8002f0ec

should not have been reported as a _test_ failure, as the GuC was
successfully loaded on the second attempt and the system remained
operational.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2797
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
index f9d0907ea1a5..2270d6b3b272 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
@@ -76,7 +76,6 @@ static inline bool guc_ready(struct intel_uncore *uncore, u32 *status)
 
 static int guc_wait_ucode(struct intel_uncore *uncore)
 {
-	struct drm_device *drm = &uncore->i915->drm;
 	u32 status;
 	int ret;
 
@@ -89,11 +88,11 @@ static int guc_wait_ucode(struct intel_uncore *uncore)
 	 * attempt the ucode load again if this happens.)
 	 */
 	ret = wait_for(guc_ready(uncore, &status), 100);
-	DRM_DEBUG_DRIVER("GuC status %#x\n", status);
-
 	if (ret) {
-		drm_err(drm, "GuC load failed: status = 0x%08X\n", status);
-		drm_err(drm, "GuC load failed: status: Reset = %d, "
+		struct drm_device *drm = &uncore->i915->drm;
+
+		drm_dbg(drm, "GuC load failed: status = 0x%08X\n", status);
+		drm_dbg(drm, "GuC load failed: status: Reset = %d, "
 			"BootROM = 0x%02X, UKernel = 0x%02X, "
 			"MIA = 0x%02X, Auth = 0x%02X\n",
 			REG_FIELD_GET(GS_MIA_IN_RESET, status),
@@ -103,12 +102,12 @@ static int guc_wait_ucode(struct intel_uncore *uncore)
 			REG_FIELD_GET(GS_AUTH_STATUS_MASK, status));
 
 		if ((status & GS_BOOTROM_MASK) == GS_BOOTROM_RSA_FAILED) {
-			drm_err(drm, "GuC firmware signature verification failed\n");
+			drm_dbg(drm, "GuC firmware signature verification failed\n");
 			ret = -ENOEXEC;
 		}
 
 		if ((status & GS_UKERNEL_MASK) == GS_UKERNEL_EXCEPTION) {
-			drm_err(drm, "GuC firmware exception. EIP: %#x\n",
+			drm_dbg(drm, "GuC firmware exception. EIP: %#x\n",
 				intel_uncore_read(uncore, SOFT_SCRATCH(13)));
 			ret = -ENXIO;
 		}
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
