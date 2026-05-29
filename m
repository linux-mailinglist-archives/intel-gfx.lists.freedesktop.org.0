Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wCHkL/lyGWogwwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:05:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA2D6014B0
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:05:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D7C910FD45;
	Fri, 29 May 2026 11:05:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VxxVROq1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 799C310FD3D;
 Fri, 29 May 2026 11:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780052725; x=1811588725;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HfZvhqR5PTszOiHGdP7jICAcB8b/2kGcGawLcDvpVPk=;
 b=VxxVROq1x3u5jDi+LoWnakPkOgq4MJA+IXhRROPMfLSo4X5ecvXHmiY/
 ivZ/ubAYOCdYm9GICE1Wum2YDp6J4VolLpA6A23oD0ZZKUg2TQdfUs/87
 frNTB1c7BK0B8U3BAcaMFgjbzBNwDJKPyBA5u4uZ3iV+ukHsHmy9X/F6A
 +2YfqGi1oNBnYuYHuorzHbOJj9m/iKTr/OtY7/UdG6zV8bhatK7/evEF5
 zc7R71QTNAUZCn4BX1FYe5Hp5Cfe67EjlYNT42/MuUjmjn1oky69Mx0U/
 CYbv0F05ZsqRP6VdYj5YEBMB4pIkX0qFT5HySONYb+rVPqYBJ8tSn5DpV Q==;
X-CSE-ConnectionGUID: GJndQsLVTbeCiaUlHwru7g==
X-CSE-MsgGUID: +p3Z4zzNSRSk1aWWfZpxAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="92015037"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="92015037"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:05:25 -0700
X-CSE-ConnectionGUID: 1cIsY3LrTQGW89avMtMrOw==
X-CSE-MsgGUID: yZ37uoqvSo2PgWJPZsuyYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="280942072"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.147])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:05:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 15/24] drm/i915: add intel_display_driver_shutdown()
Date: Fri, 29 May 2026 14:03:59 +0300
Message-ID: <90d1c7e307340748b7f18a15c6900ae515be5b41.1780051905.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
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
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 5DA2D6014B0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add intel_display_driver_shutdown() to be called from the struct
pci_driver .shutdown path. Initially, only migrate i915, as there are
some subtle differences with xe that will be addressed later.

Pick up as much as we can at this point without making major functional
changes.

There's a slight functional change in that
intel_display_driver_shutdown() returns early for !HAS_DISPLAY(). Assume
this is what we want, and there are no cases where display engine is
present but all pipes have been fused off.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   | 28 +++++++++++++++++++
 .../drm/i915/display/intel_display_driver.h   |  1 +
 drivers/gpu/drm/i915/i915_driver.c            | 24 +---------------
 3 files changed, 30 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 7f2d191b9ef0..90b2a62798c1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -681,6 +681,34 @@ void intel_display_driver_unregister(struct intel_display *display)
 	intel_vga_unregister(display);
 }
 
+void intel_display_driver_shutdown(struct intel_display *display)
+{
+	if (!HAS_DISPLAY(display))
+		return;
+
+	intel_display_power_disable(display);
+
+	drm_client_dev_suspend(display->drm);
+	drm_kms_helper_poll_disable(display->drm);
+
+	intel_display_driver_disable_user_access(display);
+
+	drm_atomic_helper_shutdown(display->drm);
+
+	flush_workqueue(display->wq.cleanup);
+
+	intel_dp_mst_suspend(display);
+
+	intel_encoder_block_all_hpds(display);
+
+	intel_hpd_cancel_work(display);
+
+	intel_display_driver_suspend_access(display);
+
+	intel_encoder_suspend_all(display);
+	intel_encoder_shutdown_all(display);
+}
+
 void intel_display_driver_shutdown_late(struct intel_display *display)
 {
 	if (!HAS_DISPLAY(display))
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
index 61515577758b..7eca3d17dd82 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.h
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
@@ -24,6 +24,7 @@ void intel_display_driver_remove(struct intel_display *display);
 void intel_display_driver_remove_noirq(struct intel_display *display);
 void intel_display_driver_remove_nogem(struct intel_display *display);
 void intel_display_driver_unregister(struct intel_display *display);
+void intel_display_driver_shutdown(struct intel_display *display);
 void intel_display_driver_shutdown_late(struct intel_display *display);
 
 int intel_display_driver_pm_suspend(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 140c562a8627..80313ee07b07 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -54,7 +54,6 @@
 #include "display/intel_bw.h"
 #include "display/intel_cdclk.h"
 #include "display/intel_crtc.h"
-#include "display/intel_display_core.h"
 #include "display/intel_display_device.h"
 #include "display/intel_display_driver.h"
 #include "display/intel_display_power.h"
@@ -1042,29 +1041,8 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 
 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
 	intel_runtime_pm_disable(&i915->runtime_pm);
-	intel_display_power_disable(display);
 
-	drm_client_dev_suspend(&i915->drm);
-	if (intel_display_device_present(display)) {
-		drm_kms_helper_poll_disable(&i915->drm);
-		intel_display_driver_disable_user_access(display);
-
-		drm_atomic_helper_shutdown(&i915->drm);
-	}
-
-	flush_workqueue(display->wq.cleanup);
-
-	intel_dp_mst_suspend(display);
-
-	intel_encoder_block_all_hpds(display);
-
-	intel_hpd_cancel_work(display);
-
-	if (intel_display_device_present(display))
-		intel_display_driver_suspend_access(display);
-
-	intel_encoder_suspend_all(display);
-	intel_encoder_shutdown_all(display);
+	intel_display_driver_shutdown(display);
 
 	intel_irq_suspend(i915);
 
-- 
2.47.3

