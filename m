Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A13596463A
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2024 15:17:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 317E010E6A2;
	Thu, 29 Aug 2024 13:17:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lBrMTr6U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35F3810E69C;
 Thu, 29 Aug 2024 13:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724937446; x=1756473446;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/UBYnHdpQuGpoDI3ffQ+SXbFLwNmVqy8EH8GNzOy58w=;
 b=lBrMTr6UqqtJa9jtRmbZwEXTzpnMAlcsBy+A27BQwFF50iqZGWNfEzi7
 wY1e7gqNuWIZfzreFFS0mNZM2hHt/YhB68Uif2d+eOFA2qQw4yjrYaBzD
 lLEssaR4C0Cd9q7vMfEcijA8MfYBzW0QsSIqUEsQoiTa2WjNz/hcEKTOb
 Ulwzvt7oiL3Ia5YDiHw3s1U3YRyZONgTZqjcaekSmR4joCa2lyahrkfIX
 dNxzJuiGe0bF2+P3cd4KCF/WHNGmj46EOVB+tElrLE/uSNEuTFxgQnvSg
 lmN3OqAGSMvBsSvpnDRsm+1xOaKjmEYeEctBvpIvH+ya239VAgTpjZUsK g==;
X-CSE-ConnectionGUID: XKehXmbETHGqDRK4nEDT+w==
X-CSE-MsgGUID: 5BjR09bBSNyqkV1l85Usmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23667282"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="23667282"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 06:17:26 -0700
X-CSE-ConnectionGUID: TQT8QyHFRu6V0vkzucMlpg==
X-CSE-MsgGUID: vEVWHoqRQxWIj3mi2g725A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63261708"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 06:17:23 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 15/19] drm/i915/display: Move helpers for primary joiner to
 intel_joiner
Date: Thu, 29 Aug 2024 18:48:23 +0530
Message-ID: <20240829131828.2350930-16-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240829131828.2350930-1-ankit.k.nautiyal@intel.com>
References: <20240829131828.2350930-1-ankit.k.nautiyal@intel.com>
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

Move helpers to get/check primary joiner pipes to intel_joiner.
Rename them to align with other intel_joiner helpers.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c |  3 ++-
 drivers/gpu/drm/i915/display/intel_display.c         |  8 --------
 drivers/gpu/drm/i915/display/intel_display.h         |  1 -
 drivers/gpu/drm/i915/display/intel_joiner.c          | 10 +++++++++-
 drivers/gpu/drm/i915/display/intel_joiner.h          |  1 +
 5 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 705ec5ad385c..606fa069c93c 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -10,6 +10,7 @@
 #include "intel_crtc_state_dump.h"
 #include "intel_display_types.h"
 #include "intel_hdmi.h"
+#include "intel_joiner.h"
 #include "intel_vdsc.h"
 #include "intel_vrr.h"
 
@@ -225,7 +226,7 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 
 	drm_printf(&p, "joiner: %s, pipes: 0x%x\n",
 		   intel_crtc_is_joiner_secondary(pipe_config) ? "secondary" :
-		   intel_crtc_is_joiner_primary(pipe_config) ? "primary" : "no",
+		   intel_joiner_crtc_is_joiner_primary(pipe_config) ? "primary" : "no",
 		   pipe_config->joiner_pipes);
 
 	drm_printf(&p, "splitter: %s, link count %d, overlap %d\n",
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e1d5178dc4ec..3bee34575fc3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -266,14 +266,6 @@ bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state)
 		crtc->pipe != intel_joiner_get_primary_pipe(crtc_state);
 }
 
-bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-
-	return crtc_state->joiner_pipes &&
-		crtc->pipe == intel_joiner_get_primary_pipe(crtc_state);
-}
-
 struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index f39bd00d69fb..5167ddee2d39 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -423,7 +423,6 @@ enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port);
 bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
 bool is_trans_port_sync_master(const struct intel_crtc_state *state);
 bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state);
-bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
 u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
 struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_joiner.c b/drivers/gpu/drm/i915/display/intel_joiner.c
index e6dfed812564..d36df20f811f 100644
--- a/drivers/gpu/drm/i915/display/intel_joiner.c
+++ b/drivers/gpu/drm/i915/display/intel_joiner.c
@@ -225,7 +225,7 @@ int intel_joiner_add_affected_crtcs(struct intel_atomic_state *state)
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
 		/* Kill old joiner link, we may re-establish afterwards */
 		if (intel_crtc_needs_modeset(crtc_state) &&
-		    intel_crtc_is_joiner_primary(crtc_state))
+		    intel_joiner_crtc_is_joiner_primary(crtc_state))
 			intel_crtc_kill_joiner_secondaries(state, crtc);
 	}
 
@@ -238,3 +238,11 @@ u8 intel_joiner_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state)
 
 	return BIT(crtc->pipe) | crtc_state->joiner_pipes;
 }
+
+bool intel_joiner_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	return crtc_state->joiner_pipes &&
+		crtc->pipe == intel_joiner_get_primary_pipe(crtc_state);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_joiner.h b/drivers/gpu/drm/i915/display/intel_joiner.h
index f8c0cd27536c..4f19d623558a 100644
--- a/drivers/gpu/drm/i915/display/intel_joiner.h
+++ b/drivers/gpu/drm/i915/display/intel_joiner.h
@@ -29,5 +29,6 @@ void intel_joiner_get_config(struct intel_crtc_state *crtc_state);
 int intel_joiner_add_affected_planes(struct intel_atomic_state *state);
 int intel_joiner_add_affected_crtcs(struct intel_atomic_state *state);
 u8 intel_joiner_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state);
+bool intel_joiner_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
 
 #endif/* __INTEL_JOINER_H__ */
-- 
2.45.2

