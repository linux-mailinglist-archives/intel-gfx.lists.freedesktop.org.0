Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCB4518C30
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 20:23:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DDD010E89D;
	Tue,  3 May 2022 18:23:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1D3F10E882
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 18:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651602181; x=1683138181;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=O6+VvST9ZlWmMf8FB1O/2r1Q9m44f2tCi/Wds7eMZS8=;
 b=f+euTCvNWdWLD7ftlvc0aUt3XTV1kngfULedDeQuYwWZZavjtojp0o7N
 P1mTiAnhv5nnoXHBrl6dBUnKJOzngHFrtOpAgaqehcwZKI85UIsYY6Fpu
 XIgDxosqrXyZe5DzSNZt6VTIRLcUhzavcQJ9evJ5DvZEP9B+koYPdJ0J/
 KcQFj03be8yJh8pOMKS8w2wTFrvzGtMYM+BaLO29wqQ5EeqCd9KWt0JCU
 3tFTwx1EqYa9HYuqQqSXtydOtbCTgGNUkpdQwwpVG25XSw78frZAilx2A
 jaIyAgZrhRaqfTfo5y0a85/siQ0UhnWGrnVPegr86Hlb2kC5Q7YMJeKCi g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="267145864"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="267145864"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 11:23:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="664084739"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga002.fm.intel.com with SMTP; 03 May 2022 11:22:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 May 2022 21:22:58 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 21:22:21 +0300
Message-Id: <20220503182242.18797-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/26] drm/i915: Extract
 PIPE_CONF_CHECK_TIMINGS()
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

Deduplicate the crtc_ timigns comparisons.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 45 ++++++++------------
 1 file changed, 18 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7d488d320762..e38d93beafdd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6073,6 +6073,21 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	} \
 } while (0)
 
+#define PIPE_CONF_CHECK_TIMINGS(name) do { \
+	PIPE_CONF_CHECK_I(name.crtc_hdisplay); \
+	PIPE_CONF_CHECK_I(name.crtc_htotal); \
+	PIPE_CONF_CHECK_I(name.crtc_hblank_start); \
+	PIPE_CONF_CHECK_I(name.crtc_hblank_end); \
+	PIPE_CONF_CHECK_I(name.crtc_hsync_start); \
+	PIPE_CONF_CHECK_I(name.crtc_hsync_end); \
+	PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
+	PIPE_CONF_CHECK_I(name.crtc_vtotal); \
+	PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
+	PIPE_CONF_CHECK_I(name.crtc_vblank_end); \
+	PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
+	PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
+} while (0)
+
 /* This is required for BDW+ where there is only one set of registers for
  * switching between high and low RR.
  * This macro can be used whenever a comparison has to be made between one
@@ -6190,33 +6205,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(framestart_delay);
 	PIPE_CONF_CHECK_I(msa_timing_delay);
 
-	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hdisplay);
-	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_htotal);
-	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hblank_start);
-	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hblank_end);
-	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hsync_start);
-	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hsync_end);
-
-	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vdisplay);
-	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vtotal);
-	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vblank_start);
-	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vblank_end);
-	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vsync_start);
-	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vsync_end);
-
-	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hdisplay);
-	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_htotal);
-	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hblank_start);
-	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hblank_end);
-	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hsync_start);
-	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hsync_end);
-
-	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vdisplay);
-	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vtotal);
-	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vblank_start);
-	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vblank_end);
-	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vsync_start);
-	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vsync_end);
+	PIPE_CONF_CHECK_TIMINGS(hw.pipe_mode);
+	PIPE_CONF_CHECK_TIMINGS(hw.adjusted_mode);
 
 	PIPE_CONF_CHECK_I(pixel_multiplier);
 
@@ -6392,6 +6382,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 #undef PIPE_CONF_CHECK_FLAGS
 #undef PIPE_CONF_CHECK_CLOCK_FUZZY
 #undef PIPE_CONF_CHECK_COLOR_LUT
+#undef PIPE_CONF_CHECK_TIMINGS
 #undef PIPE_CONF_QUIRK
 
 	return ret;
-- 
2.35.1

