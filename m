Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YDKCJ2aVHmrPlAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 10:33:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DAE62A9C3
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 10:33:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D513811392A;
	Tue,  2 Jun 2026 08:33:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DzKuyamW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C55BE11392A;
 Tue,  2 Jun 2026 08:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780389220; x=1811925220;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SJlqwgbyJJkf99h9xRKNhz6ulppVaPE8XY+Mq82B564=;
 b=DzKuyamWRWhsCAU3yeeE3lSEmDtBjc2hSu0ToQwj4TltaeZKpjTr6tnc
 06fKwUWbGiM+YJTm6FDaky0+y2csUsEVVuaV517kalpD/0JraqKcMN2hM
 gSzpx9PTO2/jn1mTs8dB+aSkgRYN2zLJHTi1v5P+b91Nz0qp4DHI9tgZh
 DAiBk8YClQMuEJsRJ9gRLbNyKZCQsFEvQAKv1Mm8kpNZnG0v8pOY94pFd
 e+m8VSd1t00j4LXYsLvOBrkH/Jr66f9M9lj3XiciRow1cgxS7hyxKB/13
 oVhfuKCKSYQoJptD4UWN/gl9Iwr7j0SMiE24I4jvIfEb3tTvZ+RL3YGz/ g==;
X-CSE-ConnectionGUID: ePAptOnIRbi8EBnYFh4JKA==
X-CSE-MsgGUID: KayeEgBaSjqH/qpRTnG2IA==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="85056701"
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="85056701"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 01:33:40 -0700
X-CSE-ConnectionGUID: cZwb64jRTYG+IPEh+7THYA==
X-CSE-MsgGUID: cGhDb1c2QIKBVfhcXYRqbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="281953317"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.253])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 01:33:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, imre.deak@intel.com, jani.nikula@intel.com
Subject: [CI 09/12] drm/i915: add intel_display_driver_shutdown()
Date: Tue,  2 Jun 2026 11:32:49 +0300
Message-ID: <b6a3ed62d11b4b4999611e9b34c0bd1c531c1069.1780389001.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 50DAE62A9C3
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

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   | 28 +++++++++++++++++++
 .../drm/i915/display/intel_display_driver.h   |  1 +
 drivers/gpu/drm/i915/i915_driver.c            | 24 +---------------
 3 files changed, 30 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 0326a292ee1e..ab0639e8101a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -675,6 +675,34 @@ void intel_display_driver_unregister(struct intel_display *display)
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
index 99fa42561989..2458a8a684e9 100644
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
@@ -1044,29 +1043,8 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 
 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
 	intel_runtime_pm_disable(&i915->runtime_pm);
-	intel_display_power_disable(display);
-
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
 
-	if (intel_display_device_present(display))
-		intel_display_driver_suspend_access(display);
-
-	intel_encoder_suspend_all(display);
-	intel_encoder_shutdown_all(display);
+	intel_display_driver_shutdown(display);
 
 	intel_irq_suspend(i915);
 
-- 
2.47.3

