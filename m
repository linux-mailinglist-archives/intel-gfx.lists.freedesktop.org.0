Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8AFA1D481
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 11:29:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D13010E4FC;
	Mon, 27 Jan 2025 10:29:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C0beCqBN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 979E110E4FC;
 Mon, 27 Jan 2025 10:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737973765; x=1769509765;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vbgwOTJbZvoLS4cgKgE8k5WkUwdEKgNvR3chx7SZw5g=;
 b=C0beCqBNzxGdgytaY3nkZnUXsFzlnHq0xKya8p0MbUNQwgK6ujdokRgg
 gXfOc3NFQEjgZkXbPuikOS5JkQB/INwI3eiQk4FmEck5BLXJrI8awzDut
 ajcn7zVPTRRZPMH4G/8EiW32iko3KppQDvXcj8QSGDUpIiXeAS77hZ+TH
 mM9z9IIBoL9ayKDgBhF18rPyLfaz8YHAfw2U/8/VfcFexDTNtXyndpENi
 Dmq00Ovnr1zPFTHRnD0YAEubq/6OO3aqOvJsyD3kgExasJs9sbKcW9z8w
 ez4faqXTugjlj4Tkg/XRfRRUnSAYFBWQO38A+VBNIoGA4XHnNi4ZA5GDJ w==;
X-CSE-ConnectionGUID: 3HVLZvSYQj2FFs8674f/2g==
X-CSE-MsgGUID: LXQ3DIXRS/yTQmndBr3YbA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="38529883"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="38529883"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 02:29:25 -0800
X-CSE-ConnectionGUID: xDaJ6XLSRomoGkCY9nkHfQ==
X-CSE-MsgGUID: 7nQ6PNv5TJuiPl0/jWzeKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108837923"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.95])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 02:29:24 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, ville.syrjala@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 10/12] drm/i915/psr: Add function for triggering "Frame
 Change" event
Date: Mon, 27 Jan 2025 12:28:44 +0200
Message-ID: <20250127102846.1237560-11-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250127102846.1237560-1-jouni.hogander@intel.com>
References: <20250127102846.1237560-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Add new function to trigger "Frame Change" event for ensuring we are waking
up before vblank evasion.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 22 ++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h |  3 +++
 2 files changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index c6712312a04d4..945cab1537732 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -44,6 +44,7 @@
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
 #include "intel_snps_phy.h"
+#include "intel_vblank.h"
 #include "skl_universal_plane.h"
 
 /**
@@ -2289,6 +2290,27 @@ bool intel_psr_needs_block_dc_vblank(const struct intel_crtc_state *crtc_state)
 	return false;
 }
 
+/**
+ * intel_psr_trigger_frame_change_event - Trigger "Frame Change" event
+ * @state: the atomic state
+ * @dsb: DSB context
+ * @crtc: the CRTC
+ *
+ * Generate PSR "Frame Change" event.
+ */
+void intel_psr_trigger_frame_change_event(struct intel_atomic_state *state,
+					  struct intel_dsb *dsb,
+					  struct intel_crtc *crtc)
+{
+	const struct intel_crtc_state *crtc_state =
+		intel_pre_commit_crtc_state(state, crtc);
+	struct intel_display *display = to_intel_display(crtc);
+
+	if (crtc_state->has_psr)
+		intel_de_write_dsb(display, dsb,
+				   CURSURFLIVE(display, crtc->pipe), 0);
+}
+
 static u32 man_trk_ctl_enable_bit_get(struct intel_display *display)
 {
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index e6eba6633a92b..1cd9ab8aa6e81 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -64,6 +64,9 @@ bool intel_psr_link_ok(struct intel_dp *intel_dp);
 
 void intel_psr_lock(const struct intel_crtc_state *crtc_state);
 void intel_psr_unlock(const struct intel_crtc_state *crtc_state);
+void intel_psr_trigger_frame_change_event(struct intel_atomic_state *state,
+					  struct intel_dsb *dsb,
+					  struct intel_crtc *crtc);
 void intel_psr_connector_debugfs_add(struct intel_connector *connector);
 void intel_psr_debugfs_register(struct intel_display *display);
 
-- 
2.43.0

