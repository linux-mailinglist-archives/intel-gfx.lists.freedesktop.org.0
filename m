Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qNd1BWjsFmruvgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 15:06:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5DF5E49F5
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 15:06:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 407ED10E268;
	Wed, 27 May 2026 13:06:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MgJ45qpQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A43AD10E268;
 Wed, 27 May 2026 13:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779887205; x=1811423205;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SusK43KGb8yYBZwjCgsNq6ZdUyA9CAxMiOBC1MFdT0s=;
 b=MgJ45qpQCQWsDFuJRhuesD2uuO0R8KRgwLo6ffHkLbk/EfTUzcHVtCFl
 SoLmBrk1VooKDBgLB42FVloTaNgI6JAsHFbpe1LzpGNy8wEhl4UgPzVT8
 FB3neyUQa9BT4IOQoYi4hZ39YY0Ofb8i/IUJFMSS/sObTS9YuxFUpLmmE
 Mvn2gy2rQ9qW/g649/Nuj6PfxKUiY65oUMb/YPCXHrhlt53ieUEkeMpoN
 PCbfjE9Y2PC/bjCZKAaJ34ptvClFhEcryuqQ333DZbvmNRJiRnxBb/lk8
 XhoOh8I0WJ53yfz8wwmR0MpFiGCb4x244OXOX1WvLunrK9F3rS2YEGj+n w==;
X-CSE-ConnectionGUID: DrEWo5aUQ+SU58CFSKUVrw==
X-CSE-MsgGUID: 1OfdyJTcRoOEarT/0R6+sA==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="79751368"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="79751368"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 06:06:44 -0700
X-CSE-ConnectionGUID: Ltd/To2tSQuwlSxear/Mgg==
X-CSE-MsgGUID: q/fi0Pa7QG2+0zurcf9FVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="246512551"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.38])
 by orviesa004-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2026 06:06:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/3] drm/i915/display: move d3cold allowed handling to parent
 interface
Date: Wed, 27 May 2026 16:06:26 +0300
Message-ID: <787950d9bda9fbea5e6821c9e1db58afd42c6e23.1779887154.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1779887154.git.jani.nikula@intel.com>
References: <cover.1779887154.git.jani.nikula@intel.com>
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
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: AD5DF5E49F5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Move more of the d3cold logic into display runtime pm functions. Add
intel_parent_d3cold_allowed() to query whether d3cold is allowed or not.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   | 18 ++++++++++++++--
 .../drm/i915/display/intel_display_driver.h   |  2 --
 drivers/gpu/drm/i915/display/intel_parent.c   |  5 +++++
 drivers/gpu/drm/i915/display/intel_parent.h   |  1 +
 drivers/gpu/drm/xe/display/xe_display.c       | 21 +++++++------------
 include/drm/intel/display_parent_interface.h  |  3 +++
 6 files changed, 33 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 15ba4c2ac985..0ca5344cd50d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -58,6 +58,7 @@
 #include "intel_modeset_setup.h"
 #include "intel_opregion.h"
 #include "intel_overlay.h"
+#include "intel_parent.h"
 #include "intel_pmdemand.h"
 #include "intel_pps.h"
 #include "intel_psr.h"
@@ -834,7 +835,7 @@ static bool suspend_to_idle(void)
 	return false;
 }
 
-void intel_display_driver_pm_enable_d3cold(struct intel_display *display)
+static void intel_display_driver_pm_enable_d3cold(struct intel_display *display)
 {
 	/*
 	 * We do a lot of poking in a lot of registers, make sure they work
@@ -852,7 +853,7 @@ void intel_display_driver_pm_enable_d3cold(struct intel_display *display)
 		intel_hpd_poll_enable(display);
 }
 
-void intel_display_driver_pm_disable_d3cold(struct intel_display *display)
+static void intel_display_driver_pm_disable_d3cold(struct intel_display *display)
 {
 	intel_dmc_resume(display);
 
@@ -950,11 +951,19 @@ void intel_display_driver_pm_resume(struct intel_display *display)
 
 void intel_display_driver_pm_runtime_suspend(struct intel_display *display)
 {
+	if (intel_parent_d3cold_allowed(display)) {
+		intel_display_driver_pm_enable_d3cold(display);
+		return;
+	}
+
 	intel_hpd_poll_enable(display);
 }
 
 void intel_display_driver_pm_runtime_suspend_late(struct intel_display *display)
 {
+	if (intel_parent_d3cold_allowed(display))
+		intel_display_driver_pm_suspend_late(display);
+
 	/*
 	 * If xe_display_pm_suspend_late() is not called, it is likely
 	 * that we will be on dynamic DC states with DMC wakelock enabled. We
@@ -965,6 +974,11 @@ void intel_display_driver_pm_runtime_suspend_late(struct intel_display *display)
 
 void intel_display_driver_pm_runtime_resume(struct intel_display *display)
 {
+	if (intel_parent_d3cold_allowed(display)) {
+		intel_display_driver_pm_disable_d3cold(display);
+		return;
+	}
+
 	intel_hpd_init(display);
 	intel_hpd_poll_disable(display);
 	skl_watermark_ipc_update(display);
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
index e4ce17efe793..31e4d7624400 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.h
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
@@ -40,8 +40,6 @@ void intel_display_driver_suspend_access(struct intel_display *display);
 void intel_display_driver_resume_access(struct intel_display *display);
 bool intel_display_driver_check_access(struct intel_display *display);
 
-void intel_display_driver_pm_enable_d3cold(struct intel_display *display);
-void intel_display_driver_pm_disable_d3cold(struct intel_display *display);
 void intel_display_driver_pm_suspend(struct intel_display *display);
 void intel_display_driver_pm_suspend_late(struct intel_display *display);
 void intel_display_driver_pm_resume_early(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index a5816561be40..e7acd5231a2e 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -439,6 +439,11 @@ void intel_parent_fence_priority_display(struct intel_display *display, struct d
 		display->parent->fence_priority_display(fence);
 }
 
+bool intel_parent_d3cold_allowed(struct intel_display *display)
+{
+	return display->parent->d3cold_allowed && display->parent->d3cold_allowed(display->drm);
+}
+
 bool intel_parent_has_auxccs(struct intel_display *display)
 {
 	return display->parent->has_auxccs && display->parent->has_auxccs(display->drm);
diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
index 27e35f891a6b..6f940390aa8d 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -151,6 +151,7 @@ u32 intel_parent_vlv_iosf_read(struct intel_display *display, enum vlv_iosf_sb_u
 int intel_parent_vlv_iosf_write(struct intel_display *display, enum vlv_iosf_sb_unit unit, u32 addr, u32 val);
 
 /* generic */
+bool intel_parent_d3cold_allowed(struct intel_display *display);
 bool intel_parent_has_auxccs(struct intel_display *display);
 bool intel_parent_has_fenced_regions(struct intel_display *display);
 bool intel_parent_vgpu_active(struct intel_display *display);
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 6aba5668e4df..68773032c1b8 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -248,11 +248,6 @@ void xe_display_pm_runtime_suspend(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	if (xe->d3cold.allowed) {
-		intel_display_driver_pm_enable_d3cold(display);
-		return;
-	}
-
 	intel_display_driver_pm_runtime_suspend(display);
 }
 
@@ -273,9 +268,6 @@ void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	if (xe->d3cold.allowed)
-		intel_display_driver_pm_suspend_late(display);
-
 	intel_display_driver_pm_runtime_suspend_late(display);
 }
 
@@ -316,11 +308,6 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	if (xe->d3cold.allowed) {
-		intel_display_driver_pm_disable_d3cold(display);
-		return;
-	}
-
 	intel_display_driver_pm_runtime_resume(display);
 }
 
@@ -350,6 +337,13 @@ static const struct intel_display_irq_interface xe_display_irq_interface = {
 	.synchronize = irq_synchronize,
 };
 
+static bool d3cold_allowed(struct drm_device *drm)
+{
+	struct xe_device *xe = to_xe_device(drm);
+
+	return xe->d3cold.allowed;
+}
+
 static bool has_auxccs(struct drm_device *drm)
 {
 	struct xe_device *xe = to_xe_device(drm);
@@ -369,6 +363,7 @@ static const struct intel_display_parent_interface parent = {
 	.pcode = &xe_display_pcode_interface,
 	.rpm = &xe_display_rpm_interface,
 	.stolen = &xe_display_stolen_interface,
+	.d3cold_allowed = d3cold_allowed,
 	.has_auxccs = has_auxccs,
 };
 
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 39991afeb173..8ea1c0dae783 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -294,6 +294,9 @@ struct intel_display_parent_interface {
 		/** @fence_priority_display: Set display priority. Optional. */
 		void (*fence_priority_display)(struct dma_fence *fence);
 
+		/** @d3cold_allowed: Is d3cold allowed. Optional. */
+		bool (*d3cold_allowed)(struct drm_device *drm);
+
 		/** @has_auxccs: Are AuxCCS formats supported by the parent. Optional. */
 		bool (*has_auxccs)(struct drm_device *drm);
 
-- 
2.47.3

