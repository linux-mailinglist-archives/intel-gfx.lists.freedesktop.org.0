Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BE0914213
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 07:35:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FDB710E352;
	Mon, 24 Jun 2024 05:35:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O8dZIXJw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DCE310E349
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 05:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719207344; x=1750743344;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rTpalVmKiP39CIQuMYOsNruHUj0IcM7L4bcpL7gLRDM=;
 b=O8dZIXJwwxMoVHiVCUlCLOHluOlQboHnLjFSX5WFW2oLktuImZI84tzW
 1M8tvmPgzsp1iWE/juVCzCiKEtaCDs0iWzrzKtCH4QMLHAadYPVD2wY1/
 +qomHf2K2TCHTYNfrYRzV9FLbVK7VhKOSh7SC7ONsucwlDWnflaWOkuEQ
 qPvGQrO0CpjKyDDYsZkuQznFGPs9ufixrlbVCXO4qUeyK7SSd67wpgdRt
 HEXRSFWIwQaam4C1uoCqIr5MCqVrFBfB/1n2eF89m/NedAcCV42HUrS0X
 44Fo4/rI4jTA4odyrj6wFaOn90ZRPvmc8GC4H/bs/8DS84/9h2s24wayX w==;
X-CSE-ConnectionGUID: l+riiwq+SyeSi5BLlqlu5g==
X-CSE-MsgGUID: yyWejoiXSaaGy3e+3KEeXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11112"; a="27567232"
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="27567232"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2024 22:35:44 -0700
X-CSE-ConnectionGUID: OOEF6sm8TWeVjiG45RzYyA==
X-CSE-MsgGUID: lssnC6qnRjeReJZ0Gh7vfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="42994187"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2024 22:35:42 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 3/9] drm/i915/display: Add member fixed_rr to denote Fixed
 refresh rate with VRRTG
Date: Mon, 24 Jun 2024 11:05:54 +0530
Message-Id: <20240624053600.3803116-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240624053600.3803116-1-ankit.k.nautiyal@intel.com>
References: <20240624053600.3803116-1-ankit.k.nautiyal@intel.com>
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
index 60d383c9002e..17d3ecd72f47 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1003,7 +1003,8 @@ static bool vrr_params_changed(const struct intel_crtc_state *old_crtc_state,
 		old_crtc_state->vrr.vmin != new_crtc_state->vrr.vmin ||
 		old_crtc_state->vrr.vmax != new_crtc_state->vrr.vmax ||
 		old_crtc_state->vrr.guardband != new_crtc_state->vrr.guardband ||
-		old_crtc_state->vrr.pipeline_full != new_crtc_state->vrr.pipeline_full;
+		old_crtc_state->vrr.pipeline_full != new_crtc_state->vrr.pipeline_full ||
+		old_crtc_state->vrr.fixed_rr != new_crtc_state->vrr.fixed_rr;
 }
 
 static bool cmrr_params_changed(const struct intel_crtc_state *old_crtc_state,
@@ -5468,6 +5469,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 	if (!fastset) {
 		PIPE_CONF_CHECK_BOOL(vrr.enable);
+		PIPE_CONF_CHECK_BOOL(vrr.fixed_rr);
 		PIPE_CONF_CHECK_I(vrr.vmin);
 		PIPE_CONF_CHECK_I(vrr.vmax);
 		PIPE_CONF_CHECK_I(vrr.flipline);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8fe7942511f8..8515c715440e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1402,7 +1402,7 @@ struct intel_crtc_state {
 
 	/* Variable Refresh Rate state */
 	struct {
-		bool enable, in_range;
+		bool enable, in_range, fixed_rr;
 		u8 pipeline_full;
 		u16 flipline, vmin, vmax, guardband;
 		u32 vsync_end, vsync_start;
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 6430da25957d..6736e8a44faa 100644
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

