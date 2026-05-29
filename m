Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KG7SDwdzGWogwwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:05:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B623E6014DC
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:05:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 350B110FD55;
	Fri, 29 May 2026 11:05:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DVmALqOi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C2AA10FD51;
 Fri, 29 May 2026 11:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780052739; x=1811588739;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K2k5KS4QWnipxEpQW0mOtlOQ6/DMdkXAqnlAZ55wH+I=;
 b=DVmALqOiuilL/lsbC5JiL+sKJWscmonq+v3Ib88hP5+pdPBEd9efB46j
 EJ24YXoa7itM5TuPVBKTFiIEj1GcEuWl+q8sQUITa6IGe1WpGDHaO4A6C
 BqakppCPDEC1xmH+Os3jVaKTzvZmttbUyBkVjVu63cyQ8Eeog1jOAqg4y
 A2+yqUiO2iP+IHlcfU+JxgIOkuooKgVGKhk5+3RN8eRcK6AzXHlzwjIiM
 kJrIFKZ/6rObC1tO19KX8m3ZkIFli6mWfAezXkE/lWgm8a+hNQPBr0duj
 D8RKqG98aOYjkv60lVCSYBua/TYSotVoaA+CKtQXUnnYk8nZ7JdBsHvaD Q==;
X-CSE-ConnectionGUID: B91Ak6xNRLmlQDhERWm6RA==
X-CSE-MsgGUID: UYO0/flOSjSrycSxiVXnGA==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="92015070"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="92015070"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:05:38 -0700
X-CSE-ConnectionGUID: 06kd+tzSTwCX5ArYTZgQ+w==
X-CSE-MsgGUID: s86elRC9SleydfmONZ7ogw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="280942198"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.147])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:05:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 18/24] drm/{i915,
 xe}: move more stuff to __intel_display_driver_pm_suspend()
Date: Fri, 29 May 2026 14:04:02 +0300
Message-ID: <ed88ac2c6aea7e052e328d7fa7e3c5928a8faf80.1780051905.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1780051905.git.jani.nikula@intel.com>
References: <cover.1780051905.git.jani.nikula@intel.com>
MIME-Version: 1.0
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
X-Spamd-Result: default: False [1.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-0.970];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:mid,intel.com:email]
X-Rspamd-Queue-Id: B623E6014DC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The calls leading up to __intel_display_driver_pm_suspend() are
surrounded by near identical display calls. Move the calls inside
__intel_display_driver_pm_suspend() to clean up and deduplicate.

There's a slight functional change in that
intel_display_driver_pm_suspend() returns early for
!HAS_DISPLAY(). Assume this is what we want, and there are no cases
where display engine is present but all pipes have been fused off.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_driver.c   | 15 ++++++++-------
 drivers/gpu/drm/i915/i915_driver.c                | 10 ----------
 drivers/gpu/drm/xe/display/xe_display.c           | 10 ----------
 3 files changed, 8 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 0dd0b15641eb..bc632ac8c9b4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -690,13 +690,6 @@ void intel_display_driver_shutdown(struct intel_display *display)
 
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
 
@@ -754,6 +747,14 @@ static int __intel_display_driver_pm_suspend(struct intel_display *display, bool
 
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
index 80313ee07b07..209ac512455d 100644
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
@@ -1105,15 +1104,6 @@ static int i915_drm_suspend(struct drm_device *dev)
 
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
index 99bcaa49d11a..561ec1ed6845 100644
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
@@ -276,15 +275,6 @@ void xe_display_pm_suspend(struct xe_device *xe)
 
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

