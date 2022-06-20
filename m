Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF35552314
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 19:52:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16C1210EDB9;
	Mon, 20 Jun 2022 17:52:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DB6310EDB7
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 17:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655747564; x=1687283564;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Q7B3WWBKHr8fbG6Nh4n1O2iFwVuyTqjcX9daveH9XpE=;
 b=XiGiPlGzU2GUpBC5QDilhL4rGtCbkMJiDxhHsdWL7gtH4Fuo5WuD1exO
 tOCmSWquK71mE0pFYPVxsWzZFS2ogetmGkg35p54gCfgey7odDFYCQ9jz
 ea3vi9Y7e+Kp9D9ydLByBxMNu114jxscbM21ZThqjmhqdxmPDuKRO5uWp
 P5Bf5CbYPWWQnQy1cjX65B0eCcUovWoCiQAc0Hwvv1o4x9z4+p02Fh6o/
 DjIRLUyqhgRL/W5giaakba0p0BY8tJuYPdC2b3ygG5lOxHpt4P9LgeeFU
 HY6qrSDYdPiW+X4hpwfGlqKQx0Bhkl294D9Is6mtq0VL8s08yhArjn6NQ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="277496925"
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="277496925"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 10:52:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="689558672"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga002.fm.intel.com with SMTP; 20 Jun 2022 10:52:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Jun 2022 20:52:41 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 20:52:03 +0300
Message-Id: <20220620175210.28788-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
References: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 10/17] drm/i915: Make all clock checks
 non-fuzzy
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

Now that we backfeed the actual DPLL frequency into the
compute crtc state all our clocks should come out exact.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 19 ++++---------------
 1 file changed, 4 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5a2030211439..9bf132707306 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5663,16 +5663,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	} \
 } while (0)
 
-#define PIPE_CONF_CHECK_CLOCK_FUZZY(name) do { \
-	if (!intel_fuzzy_clock_check(current_config->name, pipe_config->name)) { \
-		pipe_config_mismatch(fastset, crtc, __stringify(name), \
-				     "(expected %i, found %i)", \
-				     current_config->name, \
-				     pipe_config->name); \
-		ret = false; \
-	} \
-} while (0)
-
 #define PIPE_CONF_CHECK_INFOFRAME(name) do { \
 	if (!intel_compare_infoframe(&current_config->infoframes.name, \
 				     &pipe_config->infoframes.name)) { \
@@ -5791,7 +5781,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_RECT(pch_pfit.dst);
 
 		PIPE_CONF_CHECK_I(scaler_state.scaler_id);
-		PIPE_CONF_CHECK_CLOCK_FUZZY(pixel_rate);
+		PIPE_CONF_CHECK_I(pixel_rate);
 
 		PIPE_CONF_CHECK_X(gamma_mode);
 		if (IS_CHERRYVIEW(dev_priv))
@@ -5861,9 +5851,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >= 5)
 		PIPE_CONF_CHECK_I(pipe_bpp);
 
-	PIPE_CONF_CHECK_CLOCK_FUZZY(hw.pipe_mode.crtc_clock);
-	PIPE_CONF_CHECK_CLOCK_FUZZY(hw.adjusted_mode.crtc_clock);
-	PIPE_CONF_CHECK_CLOCK_FUZZY(port_clock);
+	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_clock);
+	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_clock);
+	PIPE_CONF_CHECK_I(port_clock);
 
 	PIPE_CONF_CHECK_I(min_voltage_level);
 
@@ -5905,7 +5895,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 #undef PIPE_CONF_CHECK_BOOL_INCOMPLETE
 #undef PIPE_CONF_CHECK_P
 #undef PIPE_CONF_CHECK_FLAGS
-#undef PIPE_CONF_CHECK_CLOCK_FUZZY
 #undef PIPE_CONF_CHECK_COLOR_LUT
 #undef PIPE_CONF_CHECK_TIMINGS
 #undef PIPE_CONF_CHECK_RECT
-- 
2.35.1

