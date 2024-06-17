Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF11E90B757
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2024 19:03:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B66FA10E471;
	Mon, 17 Jun 2024 17:03:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZO24A1Ti";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D516210E471;
 Mon, 17 Jun 2024 17:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718643830; x=1750179830;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=A4bLPR+CpHzChW5Tz87YnQ4c1xt2GXD+ettaLJP5jHI=;
 b=ZO24A1Ti2ITHKvxpK8GoAbvXUZkDmE/52YGNOYVPCLxpXuRpfjhHYcp9
 KLMUSLm965mmloTLqvEuyLTeNRy2sYV3Qb2uJZeOas6vslWnFup85oc42
 h3pLyIdnOXydmV/d0noEeGDP0mwqGILHyPNxCPVBGrYJqF5uECihy6Jrl
 XEZmbRDZGgWY3M7QBIr8aIxSW71UqMp2meZCBZWDmqEh3NHqrGmpPtjx7
 XkQF811FwQyhlmsgIKH69Ce2FYbX7m7jVq0Jz73de57ad6XWqalt3tlMk
 4lrMlftxztKFl6jmeGD3f4hbN+4gaYJhjqedy6tDCfxKfe6Orq5Xdahs3 w==;
X-CSE-ConnectionGUID: hbb7fhhkQx+Qgqm7MwCgSA==
X-CSE-MsgGUID: dZLEDLZFRaa1Brr8WjlUwQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="32951786"
X-IronPort-AV: E=Sophos;i="6.08,245,1712646000"; d="scan'208";a="32951786"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 10:03:50 -0700
X-CSE-ConnectionGUID: exFwygazS0uKEOQX1JwaZA==
X-CSE-MsgGUID: Cof/49EsTWO5wys7hN95nQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,245,1712646000"; d="scan'208";a="45690949"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 10:03:49 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 3/3] drm/xe: Use the encoder suspend helper also used by the
 i915 driver
Date: Mon, 17 Jun 2024 20:03:56 +0300
Message-ID: <20240617170356.4000251-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240617170356.4000251-1-imre.deak@intel.com>
References: <20240617170356.4000251-1-imre.deak@intel.com>
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
was added in

Commit b61fad5f7e5d ("drm/i915/tc: Call TypeC port flush_work/cleanup without modeset locks held")

for i915, but not added to the xe driver (which was still in a separate
source tree at the above point).

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

