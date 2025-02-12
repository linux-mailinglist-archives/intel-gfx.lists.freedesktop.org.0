Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E16A9A3206E
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 08:58:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F77010E7F3;
	Wed, 12 Feb 2025 07:58:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G8X5qsB1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DBA710E7F2;
 Wed, 12 Feb 2025 07:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739347091; x=1770883091;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KB7rLDkiTQHzAJDSYoG15l4TlWyHES6rvmfxDHAEoPQ=;
 b=G8X5qsB1O0b8OLRCzV2DtAdxG/Ugg2tifJN+dfUUei+7NTbXIcNwu50N
 gr9waGFTTlr2bPXFRRf0knYYvu0lC7e33vQB9GwC6qDJghZ+wT6rhyJRY
 ElzGNbI8kfgKFZ0FmiIOGRaoiO/ZTbZBqrIbffytPTFn6jwznuxCONni3
 c5XWFo3G0t7YXVb7+QL+Llp0of5IbSvRwFUI9SH26iiJ84VC7LJppwpE4
 rFHFKWrZd4G2sjA3Ge851IpIuImQQ1RPrO4RL5FET38y0T5aGMId+M3H0
 n6kuLpBRFc1/liodtqoCm+TooDI/vDbeloy7H746erbgkFsLFAr/cKqer A==;
X-CSE-ConnectionGUID: 8hTlHUsRQU6cVo7FU2tqFA==
X-CSE-MsgGUID: GTjshTkJQKaKClPGoo+JOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="50973649"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="50973649"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 23:58:11 -0800
X-CSE-ConnectionGUID: PgcogxOeQoSvwhlq2hTmcg==
X-CSE-MsgGUID: KU3yAqkTSqyi2AnCDgoYdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116836939"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.81])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 23:58:09 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v7 11/13] drm/i915/psr: Add function for triggering "Frame
 Change" event
Date: Wed, 12 Feb 2025 09:57:40 +0200
Message-ID: <20250212075742.995022-13-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250212075742.995022-1-jouni.hogander@intel.com>
References: <20250212075742.995022-1-jouni.hogander@intel.com>
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

v2: dsb as a first parameter

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 22 ++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h |  3 +++
 2 files changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index c805ff82e700..427a7d1df1f9 100644
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
+ * @dsb: DSB context
+ * @state: the atomic state
+ * @crtc: the CRTC
+ *
+ * Generate PSR "Frame Change" event.
+ */
+void intel_psr_trigger_frame_change_event(struct intel_dsb *dsb,
+					  struct intel_atomic_state *state,
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
index e6eba6633a92..a43a374cff55 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -64,6 +64,9 @@ bool intel_psr_link_ok(struct intel_dp *intel_dp);
 
 void intel_psr_lock(const struct intel_crtc_state *crtc_state);
 void intel_psr_unlock(const struct intel_crtc_state *crtc_state);
+void intel_psr_trigger_frame_change_event(struct intel_dsb *dsb,
+					  struct intel_atomic_state *state,
+					  struct intel_crtc *crtc);
 void intel_psr_connector_debugfs_add(struct intel_connector *connector);
 void intel_psr_debugfs_register(struct intel_display *display);
 
-- 
2.43.0

