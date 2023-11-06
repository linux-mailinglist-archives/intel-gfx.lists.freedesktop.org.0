Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADE87E2EE0
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 22:19:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3A3210E438;
	Mon,  6 Nov 2023 21:19:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CB4A10E438
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 21:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699305595; x=1730841595;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=oCkxo8nr8MMMBCYtqp43nsrs9cO6ou5ODSg3enTY74s=;
 b=et5kIdphompVPJLs91DxD+bDwhDwzTMJw/gkgf8pdbDCwYqXLECo+Q15
 ixdQG8j0MY7AXXww/g4tW63pMbHpc5SUbFltyKPl91k2FR9jZaHuOtFD5
 DC0+ntc4dhKXbZmJ33m18tHOkTZDez+uAwYF9qcoUAzGlPlpDYCdbgVeb
 /kPhD+7pabH70pjOMTuZxqwwBKq0SZR27DD2gnqhCB6YZ9XGlF6isZm3D
 3SQqV6OzdBuNfA/KDnW4+65dfrJUhVqtb2B8bgBp5Otnh8VFbzMRMASyu
 Z2XPKcIJOpAJgvnuH6ma+5oHlEqpSA22VlMhKKL6az5n9XEHQDqYkyYAV Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="10911578"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="10911578"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 13:19:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="755964295"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="755964295"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 06 Nov 2023 13:19:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 Nov 2023 23:19:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Nov 2023 23:19:15 +0200
Message-ID: <20231106211915.13406-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
References: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/11] drm/i915: Implement audio fastset
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

There's no real why we'd need a full modeset for audio changes.
So let's allow audio to be toggled during fastset. In case the
ELD changes while has_audio isn't changing state we force both
audio disable and enable so the new ELD gets propagated to the
audio driver.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 32 ++++++--------------
 1 file changed, 10 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 98d4fcd28073..a87a9ac63c4a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -996,7 +996,9 @@ static bool audio_enabling(const struct intel_crtc_state *old_crtc_state,
 	if (!new_crtc_state->hw.active)
 		return false;
 
-	return is_enabling(has_audio, old_crtc_state, new_crtc_state);
+	return is_enabling(has_audio, old_crtc_state, new_crtc_state) ||
+		(new_crtc_state->has_audio &&
+		 memcmp(old_crtc_state->eld, new_crtc_state->eld, MAX_ELD_BYTES) != 0);
 }
 
 static bool audio_disabling(const struct intel_crtc_state *old_crtc_state,
@@ -1005,7 +1007,9 @@ static bool audio_disabling(const struct intel_crtc_state *old_crtc_state,
 	if (!old_crtc_state->hw.active)
 		return false;
 
-	return is_disabling(has_audio, old_crtc_state, new_crtc_state);
+	return is_disabling(has_audio, old_crtc_state, new_crtc_state) ||
+		(old_crtc_state->has_audio &&
+		 memcmp(old_crtc_state->eld, new_crtc_state->eld, MAX_ELD_BYTES) != 0);
 }
 
 #undef is_disabling
@@ -5123,23 +5127,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
@@ -5327,8 +5314,10 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
@@ -5498,7 +5487,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 #undef PIPE_CONF_CHECK_X
 #undef PIPE_CONF_CHECK_I
 #undef PIPE_CONF_CHECK_BOOL
-#undef PIPE_CONF_CHECK_BOOL_INCOMPLETE
 #undef PIPE_CONF_CHECK_P
 #undef PIPE_CONF_CHECK_FLAGS
 #undef PIPE_CONF_CHECK_COLOR_LUT
-- 
2.41.0

