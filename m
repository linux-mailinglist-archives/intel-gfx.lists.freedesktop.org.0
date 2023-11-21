Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1487E7F2578
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 06:44:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 769E810E27B;
	Tue, 21 Nov 2023 05:44:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1EA310E27B
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Nov 2023 05:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700545443; x=1732081443;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AqK+WDgX9uNJby88D6en1YEASI9SiIVQ+ZEh74jyruE=;
 b=FPiwal6MIgFM4z8QObgl9h6jKjJaN3eLx9Ihp3ynTOMUz/7Arbbb2d/0
 HhzLMdZKTAVAE093f8k5NT6hqarxD4rpgcvNQ/XdArFS2F0GY34gehv2G
 PmI3T/RbxGK2OiV3Z3TLSsHGgh/wzeLQbk8l5FDfW60QfoJd+yOHoadVf
 YtPdZSYMk0Qcbo3V/UFYDxxoEvK6pgm1A8un6t6DH2nC9luOhm1RpwDtX
 zomAJ/RA9AFM66bI0xGbHCsMgJj/mdrFunnqPpJ93rz/fyKsxj7B22vPd
 mOZDpqkMWFPKbiW/McelsAcmDZN7Nt4TlvsXRtZfSGp03uKbNxEKe7iED Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="394611884"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="394611884"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 21:44:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="760002192"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="760002192"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 20 Nov 2023 21:44:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Nov 2023 07:44:00 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Nov 2023 07:43:24 +0200
Message-ID: <20231121054324.9988-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231121054324.9988-1-ville.syrjala@linux.intel.com>
References: <20231121054324.9988-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 11/11] drm/i915: Implement audio fastset
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

There's no real reason why we'd need a full modeset for audio
changes. So let's allow audio to be toggled during fastset.
In case the ELD changes while has_audio isn't changing state
we force both audio disable and enable so the new ELD gets
propagated to the audio driver.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 32 ++++++--------------
 1 file changed, 10 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5987e74b7a85..dde9f79063dd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -995,7 +995,9 @@ static bool audio_enabling(const struct intel_crtc_state *old_crtc_state,
 	if (!new_crtc_state->hw.active)
 		return false;
 
-	return is_enabling(has_audio, old_crtc_state, new_crtc_state);
+	return is_enabling(has_audio, old_crtc_state, new_crtc_state) ||
+		(new_crtc_state->has_audio &&
+		 memcmp(old_crtc_state->eld, new_crtc_state->eld, MAX_ELD_BYTES) != 0);
 }
 
 static bool audio_disabling(const struct intel_crtc_state *old_crtc_state,
@@ -1004,7 +1006,9 @@ static bool audio_disabling(const struct intel_crtc_state *old_crtc_state,
 	if (!old_crtc_state->hw.active)
 		return false;
 
-	return is_disabling(has_audio, old_crtc_state, new_crtc_state);
+	return is_disabling(has_audio, old_crtc_state, new_crtc_state) ||
+		(old_crtc_state->has_audio &&
+		 memcmp(old_crtc_state->eld, new_crtc_state->eld, MAX_ELD_BYTES) != 0);
 }
 
 #undef is_disabling
@@ -4981,23 +4985,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	} \
 } while (0)
 
-/*
- * Checks state where we only read out the enabling, but not the entire
- * state itself (like full infoframes or ELD for audio). These states
- * require a full modeset on bootup to fix up.
- */
-#define PIPE_CONF_CHECK_BOOL_INCOMPLETE(name) do { \
-	if (!fixup_inherited || (!current_config->name && !pipe_config->name)) { \
-		PIPE_CONF_CHECK_BOOL(name); \
-	} else { \
-		pipe_config_mismatch(fastset, crtc, __stringify(name), \
-				     "unable to verify whether state matches exactly, forcing modeset (expected %s, found %s)", \
-				     str_yes_no(current_config->name), \
-				     str_yes_no(pipe_config->name)); \
-		ret = false; \
-	} \
-} while (0)
-
 #define PIPE_CONF_CHECK_P(name) do { \
 	if (current_config->name != pipe_config->name) { \
 		pipe_config_mismatch(fastset, crtc, __stringify(name), \
@@ -5185,8 +5172,10 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_BOOL(enhanced_framing);
 	PIPE_CONF_CHECK_BOOL(fec_enable);
 
-	PIPE_CONF_CHECK_BOOL_INCOMPLETE(has_audio);
-	PIPE_CONF_CHECK_BUFFER(eld, MAX_ELD_BYTES);
+	if (!fastset) {
+		PIPE_CONF_CHECK_BOOL(has_audio);
+		PIPE_CONF_CHECK_BUFFER(eld, MAX_ELD_BYTES);
+	}
 
 	PIPE_CONF_CHECK_X(gmch_pfit.control);
 	/* pfit ratios are autocomputed by the hw on gen4+ */
@@ -5356,7 +5345,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 #undef PIPE_CONF_CHECK_X
 #undef PIPE_CONF_CHECK_I
 #undef PIPE_CONF_CHECK_BOOL
-#undef PIPE_CONF_CHECK_BOOL_INCOMPLETE
 #undef PIPE_CONF_CHECK_P
 #undef PIPE_CONF_CHECK_FLAGS
 #undef PIPE_CONF_CHECK_COLOR_LUT
-- 
2.41.0

