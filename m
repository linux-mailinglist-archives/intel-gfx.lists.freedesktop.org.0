Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA8592AEB0
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2024 05:26:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7770E10E338;
	Tue,  9 Jul 2024 03:26:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d9oh2k+B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39F1510E338
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2024 03:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720495563; x=1752031563;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1AGZoUKuFORD93QklvEolhhpG4TQOy39AnVi+Xvfcec=;
 b=d9oh2k+BgP0ZEkrCKKsUIVUArwzPq/UdwRzNuf8Z5lWNDWkS0Abj747U
 ZRsER8kVNbMsonIZzmiHPoJBVlZmggc9gMA7FV9B3Ps5/Zha16vOJJzmo
 49pTe2Qz66Mal/LOl3UCWY0spYAF2mlJ7lSqyiFPoDpqwLCGEWAhqN2Lw
 XH8FWEfRf0aLiVmUt5BPA75PwDO3BIQKTqZ5pdP5YUA7OCGjRfyTuAQHr
 aoR3qKvqdS9VU/r/29dzP4rdoJVk2bdb+5h+jH8iM2y5s9aCfdK6IFG97
 pzvRfqXkLtwoMaeF08A/PhL4o6fhiZ/K8Qts/gvM9gMETSpaLyQ8Vz01x A==;
X-CSE-ConnectionGUID: kvkByD07R5CSfEtlUohfCA==
X-CSE-MsgGUID: G0PD/1zMT1GCjoX0nFxtlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="21536454"
X-IronPort-AV: E=Sophos;i="6.09,193,1716274800"; d="scan'208";a="21536454"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 20:26:03 -0700
X-CSE-ConnectionGUID: 2pijD5zhQ9iRY2iAD2c/eA==
X-CSE-MsgGUID: 07shsBrXTI26s2cdCA+qPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,193,1716274800"; d="scan'208";a="48374172"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 20:26:01 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 02/10] drm/i915/display: Add member fixed_rr to denote Fixed
 refresh rate with VRRTG
Date: Tue,  9 Jul 2024 08:56:43 +0530
Message-Id: <20240709032651.1824185-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240709032651.1824185-1-ankit.k.nautiyal@intel.com>
References: <20240709032651.1824185-1-ankit.k.nautiyal@intel.com>
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

Add fixed_rr member to struct vrr to represent the case where a
fixed refresh rate with VRR timing generator is required.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       | 4 +++-
 drivers/gpu/drm/i915/display/intel_display_types.h | 2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c           | 3 +++
 3 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c2c388212e2e..85695dc2b2e5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1004,7 +1004,8 @@ static bool vrr_params_changed(const struct intel_crtc_state *old_crtc_state,
 		old_crtc_state->vrr.vmin != new_crtc_state->vrr.vmin ||
 		old_crtc_state->vrr.vmax != new_crtc_state->vrr.vmax ||
 		old_crtc_state->vrr.guardband != new_crtc_state->vrr.guardband ||
-		old_crtc_state->vrr.pipeline_full != new_crtc_state->vrr.pipeline_full;
+		old_crtc_state->vrr.pipeline_full != new_crtc_state->vrr.pipeline_full ||
+		old_crtc_state->vrr.fixed_rr != new_crtc_state->vrr.fixed_rr;
 }
 
 static bool cmrr_params_changed(const struct intel_crtc_state *old_crtc_state,
@@ -5469,6 +5470,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 	if (!fastset) {
 		PIPE_CONF_CHECK_BOOL(vrr.enable);
+		PIPE_CONF_CHECK_BOOL(vrr.fixed_rr);
 		PIPE_CONF_CHECK_I(vrr.vmin);
 		PIPE_CONF_CHECK_I(vrr.vmax);
 		PIPE_CONF_CHECK_I(vrr.flipline);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8713835e2307..875370219892 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1407,7 +1407,7 @@ struct intel_crtc_state {
 
 	/* Variable Refresh Rate state */
 	struct {
-		bool enable, in_range;
+		bool enable, in_range, fixed_rr;
 		u8 pipeline_full;
 		u16 flipline, vmin, vmax, guardband;
 		u32 vsync_end, vsync_start;
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 5a0da64c7db3..24568dae717a 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -421,6 +421,9 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 						     TRANS_VRR_VMAX(dev_priv, cpu_transcoder)) + 1;
 		crtc_state->vrr.vmin = intel_de_read(dev_priv,
 						     TRANS_VRR_VMIN(dev_priv, cpu_transcoder)) + 1;
+		if (crtc_state->vrr.vmax == crtc_state->vrr.flipline &&
+		    crtc_state->vrr.vmin == crtc_state->vrr.flipline)
+			crtc_state->vrr.fixed_rr = true;
 	}
 
 	if (crtc_state->vrr.enable) {
-- 
2.40.1

