Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C791F90CC87
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 14:52:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 577F010E675;
	Tue, 18 Jun 2024 12:52:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L3lGgTRh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2477910E675;
 Tue, 18 Jun 2024 12:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718715171; x=1750251171;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6tQyt3njKI5rH2SzFNA+peFmF4vZ/fBkIhk8YgO1dEo=;
 b=L3lGgTRhlMGs0MPX9ko9NfAO9pcnzNmBzITlU8MV9xQ4mbSOfx260tk2
 LlLgL5V3H2G/Dgpopwu2TZlsDq0RV27F1pLXg41y+Z6BkgYu889+2l3mS
 9wts2vID+Nj04pzy2g/UsBgeDy14ea30tL24CAgAbyiAjSORc26kIynE7
 Vudrb7WdoGRZCFdtavVo/rNrtYkQA/ywiVVx8bUlZbJ8cupXmIES4zr+4
 591H9aVTcqpITxmOdClOj+6UdwhpOIdbV6QLM7VWoNXx3gQE/MCpumJaC
 oLFNTh+k4vO9HAAnmBAwcaJPiHYb9X7d2W100t0Abb56wJHzpwT/e8nPh g==;
X-CSE-ConnectionGUID: aieitrTFTU6YJI2MMEdZ/Q==
X-CSE-MsgGUID: Zrnc/ExvSTeDw4zpBuLovQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="19409428"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="19409428"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 05:52:50 -0700
X-CSE-ConnectionGUID: fMCVEquzTaKyZLLpzvP7GQ==
X-CSE-MsgGUID: BnsbLphORgyoTG9kEYgX3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="41643561"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 05:52:49 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH v2 3/3] drm/xe: Use the encoder suspend helper also used by
 the i915 driver
Date: Tue, 18 Jun 2024 15:52:55 +0300
Message-ID: <20240618125255.4080303-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240618125255.4080303-1-imre.deak@intel.com>
References: <20240618125255.4080303-1-imre.deak@intel.com>
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

Use the suspend encoders helper which is also used by the i915 driver.
This fixes an issue in the xe driver where the encoder
suspend_complete() hook is not called and was an overlook when this hook
was added in commit b61fad5f7e5d ("drm/i915/tc: Call TypeC port
flush_work/cleanup without modeset locks held") for i915, but not added
to the xe driver (which was still in a separate source tree at the above
point).

v2: Fix checkpatch warn in commit log. (Rodrigo)

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 18 ++----------------
 1 file changed, 2 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 78cccbe289475..8b83dcff72e17 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -23,6 +23,7 @@
 #include "intel_display_types.h"
 #include "intel_dmc.h"
 #include "intel_dp.h"
+#include "intel_encoder.h"
 #include "intel_fbdev.h"
 #include "intel_hdcp.h"
 #include "intel_hotplug.h"
@@ -270,21 +271,6 @@ void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt)
 		gen11_de_irq_postinstall(xe);
 }
 
-static void intel_suspend_encoders(struct xe_device *xe)
-{
-	struct drm_device *dev = &xe->drm;
-	struct intel_encoder *encoder;
-
-	if (has_display(xe))
-		return;
-
-	drm_modeset_lock_all(dev);
-	for_each_intel_encoder(dev, encoder)
-		if (encoder->suspend)
-			encoder->suspend(encoder);
-	drm_modeset_unlock_all(dev);
-}
-
 static bool suspend_to_idle(void)
 {
 #if IS_ENABLED(CONFIG_ACPI_SLEEP)
@@ -315,7 +301,7 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
 
 	intel_hpd_cancel_work(xe);
 
-	intel_suspend_encoders(xe);
+	intel_encoder_suspend_all(&xe->display);
 
 	intel_opregion_suspend(xe, s2idle ? PCI_D1 : PCI_D3cold);
 
-- 
2.43.3

