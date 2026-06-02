Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SFg1JXSVHmrPlAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 10:33:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2020862A9D9
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 10:33:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A241411393B;
	Tue,  2 Jun 2026 08:33:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KQ8sLbmM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98F6211393B;
 Tue,  2 Jun 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780389234; x=1811925234;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/5vRqpv3EGCCDwpFt0MIDoPXFyhm18sJqQzAmRMuMNw=;
 b=KQ8sLbmMZTB9OlgTk8bFtfacXHzFyxJvf+agu3lYfB3g9PzVhnfcqZTG
 H8siigXm1at0I1y0JX9bKpxTpEHIalYh27tZTTWRX/hFsjCVfOLfKvumf
 aiIANFY1ZAWfGF2N//A+ezxA6Lqo0lo5dg2x+rR51MFI/sr2QQ7LOhGEk
 cGgO+b4dzDm23mo5/FUVndXJTrFfuVWUNKAXzv6xjYuC7mpJ8ZHVewv++
 aADXiE4IWIIvPhWSzzPjvWZqa/JRm/Q0gGOTsMa9lOGoaPQk77MEj7Cqm
 KOtyV7GG5S0XaWVfgPhmmHJkLcfEoIkEp1L+Hjfl6q4W8mMAlK+GDveXF w==;
X-CSE-ConnectionGUID: jZ+m5U9cTQyWF2YKnzREUQ==
X-CSE-MsgGUID: 0oQ3/ubyTwylQzIkWzDb+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="103830289"
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="103830289"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 01:33:53 -0700
X-CSE-ConnectionGUID: jy5zISxdRt6YHvVPMY4DHg==
X-CSE-MsgGUID: ZtDhDP5/S2a6fK4xA3aK7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="267484467"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.253])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 01:33:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, imre.deak@intel.com, jani.nikula@intel.com
Subject: [CI 12/12] drm/{i915,
 xe}: move more stuff to __intel_display_driver_pm_suspend()
Date: Tue,  2 Jun 2026 11:32:52 +0300
Message-ID: <fdca3720537b6b79a754a83811d07b97d47e0db0.1780389001.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1780389001.git.jani.nikula@intel.com>
References: <cover.1780389001.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.420];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 2020862A9D9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The calls leading up to __intel_display_driver_pm_suspend() are
surrounded by near identical display calls. Move the calls inside
__intel_display_driver_pm_suspend() to clean up and deduplicate.

There's a slight functional change in that
intel_display_driver_pm_suspend() returns early for
!HAS_DISPLAY(). Assume this is what we want, and there are no cases
where display engine is present but all pipes have been fused off.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_driver.c   | 15 ++++++++-------
 drivers/gpu/drm/i915/i915_driver.c                | 10 ----------
 drivers/gpu/drm/xe/display/xe_display.c           | 10 ----------
 3 files changed, 8 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 5f6c3d741196..462f78d5b020 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -684,13 +684,6 @@ void intel_display_driver_shutdown(struct intel_display *display)
 
 	__intel_display_driver_pm_suspend(display, true);
 
-	intel_encoder_block_all_hpds(display);
-
-	intel_hpd_cancel_work(display);
-
-	intel_display_driver_suspend_access(display);
-
-	intel_encoder_suspend_all(display);
 	intel_encoder_shutdown_all(display);
 }
 
@@ -748,6 +741,14 @@ static int __intel_display_driver_pm_suspend(struct intel_display *display, bool
 
 	intel_dp_mst_suspend(display);
 
+	intel_encoder_block_all_hpds(display);
+
+	intel_hpd_cancel_work(display);
+
+	intel_display_driver_suspend_access(display);
+
+	intel_encoder_suspend_all(display);
+
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 2458a8a684e9..0520cd124686 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -61,7 +61,6 @@
 #include "display/intel_dp.h"
 #include "display/intel_dpt.h"
 #include "display/intel_dram.h"
-#include "display/intel_encoder.h"
 #include "display/intel_fbdev.h"
 #include "display/intel_gmbus.h"
 #include "display/intel_hotplug.h"
@@ -1107,15 +1106,6 @@ static int i915_drm_suspend(struct drm_device *dev)
 
 	intel_display_driver_pm_suspend(display);
 
-	intel_encoder_block_all_hpds(display);
-
-	intel_hpd_cancel_work(display);
-
-	if (intel_display_device_present(display))
-		intel_display_driver_suspend_access(display);
-
-	intel_encoder_suspend_all(display);
-
 	intel_irq_suspend(dev_priv);
 
 	/* Must be called before GGTT is suspended. */
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 4460438b966f..a5768736dbbc 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -30,7 +30,6 @@
 #include "intel_dmc_wl.h"
 #include "intel_dp.h"
 #include "intel_dram.h"
-#include "intel_encoder.h"
 #include "intel_fbdev.h"
 #include "intel_hdcp.h"
 #include "intel_hotplug.h"
@@ -278,15 +277,6 @@ void xe_display_pm_suspend(struct xe_device *xe)
 
 	intel_display_driver_pm_suspend(display);
 
-	intel_encoder_block_all_hpds(display);
-
-	intel_hpd_cancel_work(display);
-
-	if (intel_display_device_present(display)) {
-		intel_display_driver_suspend_access(display);
-		intel_encoder_suspend_all(display);
-	}
-
 	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
 
 	intel_dmc_suspend(display);
-- 
2.47.3

