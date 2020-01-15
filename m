Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA2113D3F6
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 06:50:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC0746EBF0;
	Thu, 16 Jan 2020 05:50:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 335 seconds by postgrey-1.36 at gabe;
 Wed, 15 Jan 2020 02:33:41 UTC
Received: from trent.utfs.org (trent.utfs.org [IPv6:2a03:3680:0:3::67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A813E6E09C
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 02:33:41 +0000 (UTC)
Received: from localhost (localhost [IPv6:::1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by trent.utfs.org (Postfix) with ESMTPS id 5AA0C5FFED;
 Wed, 15 Jan 2020 03:28:04 +0100 (CET)
Date: Tue, 14 Jan 2020 18:28:04 -0800 (PST)
From: Christian Kujau <lists@nerdbynature.de>
To: intel-gfx@lists.freedesktop.org
Message-ID: <alpine.DEB.2.21.99999.375.2001141825300.21037@trent.utfs.org>
User-Agent: Alpine 2.21.99999 (DEB 375 2019-10-29)
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 16 Jan 2020 05:50:43 +0000
Subject: [Intel-gfx] [PATCH] drm: bugs.freedesktop.org is no longer
 accepting bugs
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello,

this should apply cleanly to drm-tip.


    drm: bugs.freedesktop.org is no longer accepting bugs.
    
    freedesktop.org Bugzilla is no longer in use and new DRM bugs
    should be reported to https://gitlab.freedesktop.org/drm/intel
    instead. While we're at it, update some URLs of still-open bugs
    that have been moved to the new bug tracker.
    
     drivers/gpu/drm/i915/Kconfig           | 3 +--
     drivers/gpu/drm/i915/i915_gpu_error.c  | 2 +-
     drivers/gpu/drm/i915/i915_utils.c      | 2 +-
     drivers/gpu/drm/radeon/radeon_device.c | 2 +-
     4 files changed, 4 insertions(+), 5 deletions(-)
    
    Signed-off-by: Christian Kujau <lists@nerdbynature.de>

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index ba9595960bbe..f2f4bcaaa1d5 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -75,8 +75,7 @@ config DRM_I915_CAPTURE_ERROR
 	help
 	  This option enables capturing the GPU state when a hang is detected.
 	  This information is vital for triaging hangs and assists in debugging.
-	  Please report any hang to
-	    https://bugs.freedesktop.org/enter_bug.cgi?product=DRI
+	  Please report any hang to https://gitlab.freedesktop.org/drm/intel
 	  for triaging.
 
 	  If in doubt, say "Y".
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 4c1836f0a991..9fba5ac9020d 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1852,7 +1852,7 @@ void i915_error_state_store(struct i915_gpu_coredump *error)
 	if (!xchg(&warned, true) &&
 	    ktime_get_real_seconds() - DRIVER_TIMESTAMP < DAY_AS_SECONDS(180)) {
 		pr_info("GPU hangs can indicate a bug anywhere in the entire gfx stack, including userspace.\n");
-		pr_info("Please file a _new_ bug report on bugs.freedesktop.org against DRI -> DRM/Intel\n");
+		pr_info("Please file a new bug report on https://gitlab.freedesktop.org/drm/intel\n");
 		pr_info("drm/i915 developers can then reassign to the right component if it's not a kernel issue.\n");
 		pr_info("The GPU crash dump is required to analyze GPU hangs, so please always attach it.\n");
 		pr_info("GPU crash dump saved to /sys/class/drm/card%d/error\n",
diff --git a/drivers/gpu/drm/i915/i915_utils.c b/drivers/gpu/drm/i915/i915_utils.c
index c47261ae86ea..f93a4c005d7a 100644
--- a/drivers/gpu/drm/i915/i915_utils.c
+++ b/drivers/gpu/drm/i915/i915_utils.c
@@ -8,7 +8,7 @@
 #include "i915_drv.h"
 #include "i915_utils.h"
 
-#define FDO_BUG_URL "https://bugs.freedesktop.org/enter_bug.cgi?product=DRI"
+#define FDO_BUG_URL "https://gitlab.freedesktop.org/drm/intel"
 #define FDO_BUG_MSG "Please file a bug at " FDO_BUG_URL " against DRM/Intel " \
 		    "providing the dmesg log by booting with drm.debug=0xf"
 
diff --git a/drivers/gpu/drm/radeon/radeon_device.c b/drivers/gpu/drm/radeon/radeon_device.c
index a522e092038b..b044dd912239 100644
--- a/drivers/gpu/drm/radeon/radeon_device.c
+++ b/drivers/gpu/drm/radeon/radeon_device.c
@@ -144,7 +144,7 @@ static struct radeon_px_quirk radeon_px_quirk_list[] = {
 	 */
 	{ PCI_VENDOR_ID_ATI, 0x6840, 0x1043, 0x2122, RADEON_PX_QUIRK_DISABLE_PX },
 	/* Asus K53TK laptop with AMD A6-3420M APU and Radeon 7670m GPU
-	 * https://bugs.freedesktop.org/show_bug.cgi?id=101491
+	 * https://gitlab.freedesktop.org/drm/amd/issues/803
 	 */
 	{ PCI_VENDOR_ID_ATI, 0x6741, 0x1043, 0x2122, RADEON_PX_QUIRK_DISABLE_PX },
 	/* Asus K73TK laptop with AMD A6-3420M APU and Radeon 7670m GPU

-- 
BOFH excuse #397:

T-1's congested due to porn traffic to the news server.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
