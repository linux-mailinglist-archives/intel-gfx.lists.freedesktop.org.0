Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C379B8D8352
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 15:03:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D44A810E3A9;
	Mon,  3 Jun 2024 13:03:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XxJcIysC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B73BC10E3B5
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 13:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717419779; x=1748955779;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YHb8LZOjTO+kcIEdF5CVWmjCuY9aXe6SIYA5vOp3dks=;
 b=XxJcIysCxx7A9XQptDccxdQbHf1LvlmlY25kSqi3OHQ4H9tz/HqtBA1K
 3Ww9xEabZT9mHCrqNfR7zH75DCJ8+PxcEEPY+8zSdPP3LGrfLpfZBU5IR
 MBoSNejQ2xixWR/UHbQAQY7LQocZTJdm38pYvtpTuh+VqAgIvWTf445Tg
 Rs8MxaeTTAumJQ2H3Q9XmgdaSuvkAiZk415csa6BV7MIOvayO16/29Jhq
 5lE3EQSI86HXGUvL5QwTVPmvVax0N/m3hpTw/zRAis1ktbSv/XmCilAxe
 iP38+FcfD9UMV9owLaOT1/iuAdonxsfb80UABcIQPX3c6vpDQU2M1IQqR w==;
X-CSE-ConnectionGUID: ttnWGZctRtyyMsKiFMv3SA==
X-CSE-MsgGUID: YFTQS/vjRTGAYC7iAWF6CQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="11873385"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="11873385"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:02:59 -0700
X-CSE-ConnectionGUID: LgCHZZboTGGPCvo2lSIblg==
X-CSE-MsgGUID: GSDYxYfVSqemlx5dkBNTbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="41959990"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:02:57 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 2/5] drm/i915/display: Add member fixed_rr to denote Fixed
 refresh rate with VRRTG
Date: Mon,  3 Jun 2024 18:33:16 +0530
Message-Id: <20240603130319.1594872-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240603130319.1594872-1-ankit.k.nautiyal@intel.com>
References: <20240603130319.1594872-1-ankit.k.nautiyal@intel.com>
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
index 7370acdd6b8b..8b3885ef9c85 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1002,7 +1002,8 @@ static bool vrr_params_changed(const struct intel_crtc_state *old_crtc_state,
 		old_crtc_state->vrr.vmin != new_crtc_state->vrr.vmin ||
 		old_crtc_state->vrr.vmax != new_crtc_state->vrr.vmax ||
 		old_crtc_state->vrr.guardband != new_crtc_state->vrr.guardband ||
-		old_crtc_state->vrr.pipeline_full != new_crtc_state->vrr.pipeline_full;
+		old_crtc_state->vrr.pipeline_full != new_crtc_state->vrr.pipeline_full ||
+		old_crtc_state->vrr.fixed_rr != new_crtc_state->vrr.fixed_rr;
 }
 
 static bool vrr_enabling(const struct intel_crtc_state *old_crtc_state,
@@ -5425,6 +5426,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 	if (!fastset) {
 		PIPE_CONF_CHECK_BOOL(vrr.enable);
+		PIPE_CONF_CHECK_BOOL(vrr.fixed_rr);
 		PIPE_CONF_CHECK_I(vrr.vmin);
 		PIPE_CONF_CHECK_I(vrr.vmax);
 		PIPE_CONF_CHECK_I(vrr.flipline);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 77609656317b..eb9061253a4d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1395,7 +1395,7 @@ struct intel_crtc_state {
 
 	/* Variable Refresh Rate state */
 	struct {
-		bool enable, in_range;
+		bool enable, in_range, fixed_rr;
 		u8 pipeline_full;
 		u16 flipline, vmin, vmax, guardband;
 		u32 vsync_end, vsync_start;
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 5f3657aa8313..1a9e10fb396d 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -321,6 +321,9 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
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

