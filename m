Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C314A953C1
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Apr 2025 17:51:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77C4110E48F;
	Mon, 21 Apr 2025 15:51:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="amcE3I0w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD7F010E490;
 Mon, 21 Apr 2025 15:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745250687; x=1776786687;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qZnaR1oTLnbE4AMxxnuwoOIvpnt/4rtxpdbwaozjmC8=;
 b=amcE3I0wDLryamzAIpeTAY5G83CqOXkEG0ZUW8L9G7lyZ1u1tgPzziS3
 PBhGuH/mVA3MCI154WgjDruIlRkupMmLijp7WHQg7DunF7cigDyaZhdR2
 H21MpVd4zljeE4Zkehb5lAF7VTEKcqhBP+Z3unUuQciGfcNaawA0FYJ4c
 EA8QFxdWetEPNdUjFhMrtzZUolpfx18mF8sCn80RuuiqPCz8F20ts3C/F
 ZSXw7hNym48P5klwa+qhTE0ITzVYjkkRKzfEJk8Y9KASflruUSn+bik8l
 eY+I4b4dQJgA2drvEX/bg0mqIYPtzBQUUA3wiEDn1XhUQNzp2O2nzI3zP A==;
X-CSE-ConnectionGUID: vJra04GSSa+kmsaCmnLDDw==
X-CSE-MsgGUID: F34Bug5DRwynlG7MJWG9UA==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="57434083"
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="57434083"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 08:51:26 -0700
X-CSE-ConnectionGUID: s8rlrkXbQOOLDd50DcchFA==
X-CSE-MsgGUID: Waf+e9rKQKWKGu26gZrLvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="162725663"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa002.jf.intel.com with ESMTP; 21 Apr 2025 08:51:25 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	ankit.k.nautiyal@intel.com
Subject: [PATCH v2 11/13] drm/i915/vrr: Add state checker for dc balance params
Date: Mon, 21 Apr 2025 21:18:58 +0530
Message-ID: <20250421154900.2095202-12-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add state checker for dc balance params. Also add macro to
check source support.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  7 +++++++
 drivers/gpu/drm/i915/display/intel_vrr.c     | 20 +++++++++++++++++++-
 2 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 274d01552ccf..4a21acb88aa7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5402,6 +5402,13 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
 		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
 		PIPE_CONF_CHECK_BOOL(cmrr.enable);
+		PIPE_CONF_CHECK_I(vrr.dc_balance.vmin);
+		PIPE_CONF_CHECK_I(vrr.dc_balance.vmax);
+		PIPE_CONF_CHECK_I(vrr.dc_balance.guardband);
+		PIPE_CONF_CHECK_I(vrr.dc_balance.slope);
+		PIPE_CONF_CHECK_I(vrr.dc_balance.max_increase);
+		PIPE_CONF_CHECK_I(vrr.dc_balance.max_decrease);
+		PIPE_CONF_CHECK_I(vrr.dc_balance.vblank_target);
 	}
 
 	if (!fastset || intel_vrr_always_use_vrr_tg(display)) {
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index fb96d03bbf03..e8802348e5fa 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -740,7 +740,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
-	u32 trans_vrr_ctl, trans_vrr_vsync;
+	u32 trans_vrr_ctl, trans_vrr_vsync, dcb_ctl;
 	bool vrr_enable;
 
 	trans_vrr_ctl = intel_de_read(display,
@@ -802,6 +802,24 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 	else
 		crtc_state->vrr.enable = vrr_enable;
 
+	if (HAS_DC_BALANCE(display)) {
+		dcb_ctl = intel_de_read(display, PIPEDMC_DCB_CTL(display, cpu_transcoder));
+		crtc_state->vrr.dc_balance.vmin =
+			intel_de_read(display, PIPEDMC_DCB_VMIN(display, cpu_transcoder)) + 1;
+		crtc_state->vrr.dc_balance.vmax =
+			intel_de_read(display, PIPEDMC_DCB_VMAX(display, cpu_transcoder)) + 1;
+		crtc_state->vrr.dc_balance.guardband =
+			intel_de_read(display, PIPEDMC_DCB_GUARDBAND(display, cpu_transcoder));
+		crtc_state->vrr.dc_balance.max_increase =
+			intel_de_read(display, PIPEDMC_DCB_MAX_INCREASE(display, cpu_transcoder));
+		crtc_state->vrr.dc_balance.max_decrease =
+			intel_de_read(display, PIPEDMC_DCB_MAX_DECREASE(display, cpu_transcoder));
+		crtc_state->vrr.dc_balance.slope =
+			intel_de_read(display, PIPEDMC_DCB_SLOPE(display, cpu_transcoder));
+		crtc_state->vrr.dc_balance.vblank_target =
+			intel_de_read(display, PIPEDMC_DCB_VBLANK(display, cpu_transcoder));
+	}
+
 	/*
 	 * #TODO: For Both VRR and CMRR the flag I915_MODE_FLAG_VRR is set for mode_flags.
 	 * Since CMRR is currently disabled, set this flag for VRR for now.
-- 
2.48.1

