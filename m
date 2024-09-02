Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A65E896814B
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 10:05:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BC4110E235;
	Mon,  2 Sep 2024 08:05:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iGgd1LzS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BD2D10E234
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 08:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725264305; x=1756800305;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=++O6zAt69isyTM34KXFVgnl90IcyWWavrsmciZHeCfQ=;
 b=iGgd1LzSfhyaY7gTkm7UTVtHRdPTsy/rQ0Uoyfj9KKtwFX63BWZJxVpF
 emsNkQDxkzKKgMWO3LQG2vJPS34SdIJ13KukWyGr249HFGOK96K0uFt0R
 C/Ki0Z/fsqNJEKzyCxa7sa1NPdqtG4BiWI35bIlSgKSsz7s1otrtwWa8W
 9RO1FICz8N7x4FsPIJfFXt5p1acz4/+3izHsaxBVIoahEyE8q5XdFKJYH
 yt8F3EE/GYlt7NOKD/pjgg0ysqTa5zm1+Qf0ebvHHkEhX9B/0yrKQDm5s
 5teeCKMvD0vPiiBfW0bqMOA59EnhcZrEcnH8YLtX/JZxYQk39yjjIAZ6x A==;
X-CSE-ConnectionGUID: g+TtThl0Tui2+ks3p+irNw==
X-CSE-MsgGUID: /FcLVs7fSlC/znD0LpTiAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="23967386"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="23967386"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 01:05:05 -0700
X-CSE-ConnectionGUID: PcdrRiluSr27KKF6yNfN1A==
X-CSE-MsgGUID: p9C5Sq1BS1eQ6Zv/T4FWOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="65039837"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 01:05:03 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 03/13] drm/i915/display: Add member fixed_rr to denote Fixed
 refresh rate with VRRTG
Date: Mon,  2 Sep 2024 13:36:24 +0530
Message-ID: <20240902080635.2946858-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
References: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
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

v2: Move get_config change where vrr.fixed is actually set. (Mitul)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       | 4 +++-
 drivers/gpu/drm/i915/display/intel_display_types.h | 2 +-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 78ce402a5cd0..8b437e79c8df 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1005,7 +1005,8 @@ static bool vrr_params_changed(const struct intel_crtc_state *old_crtc_state,
 		old_crtc_state->vrr.vmin != new_crtc_state->vrr.vmin ||
 		old_crtc_state->vrr.vmax != new_crtc_state->vrr.vmax ||
 		old_crtc_state->vrr.guardband != new_crtc_state->vrr.guardband ||
-		old_crtc_state->vrr.pipeline_full != new_crtc_state->vrr.pipeline_full;
+		old_crtc_state->vrr.pipeline_full != new_crtc_state->vrr.pipeline_full ||
+		old_crtc_state->vrr.fixed_rr != new_crtc_state->vrr.fixed_rr;
 }
 
 static bool cmrr_params_changed(const struct intel_crtc_state *old_crtc_state,
@@ -5480,6 +5481,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 	if (!fastset) {
 		PIPE_CONF_CHECK_BOOL(vrr.enable);
+		PIPE_CONF_CHECK_BOOL(vrr.fixed_rr);
 		PIPE_CONF_CHECK_I(vrr.vmin);
 		PIPE_CONF_CHECK_I(vrr.vmax);
 		PIPE_CONF_CHECK_I(vrr.flipline);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 868ff8976ed9..62a796f61d20 100644
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
-- 
2.45.2

