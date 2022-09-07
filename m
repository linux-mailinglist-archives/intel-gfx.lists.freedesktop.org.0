Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0805B0011
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 11:12:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC06910E4CA;
	Wed,  7 Sep 2022 09:11:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FCD610E4CA
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 09:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662541904; x=1694077904;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pXP9kD1BnkmepwX3kUlVj7M1wTXKDIcnybyyB8JQxKc=;
 b=AS3rb0NVZWeCQpIMO6sXXKYsq8R6lQ9HPE7JQvfP039otLoqqqCAkLJS
 N5GTgwFFhsvOUpR89tC5IuAmqGmTvFAFtTncrzeccSmRSFeGLUCGzfiun
 k9dcMEVk1X92Mpw3IbLSZ8u0A38PSxFOhbsnSxv7OWkoy1VDg4u8gZt1L
 ZH9XkjD7Y/33/CsfvrO6X9Eo8Ghx0ivsJoSnXOais53v+JnuSAQIjq6mS
 K3dhL5Qy0jjsnDOrtbtBul0vqgN71Il2U02IhGxGcAhMGE8aFU3rA7IRx
 7KJPa01HLGG4+hPocZE3BjLLHTpwioHhqwyDNghyp0gVLvVY2y94ojtPG g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="383118230"
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="383118230"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 02:11:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="591612996"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 07 Sep 2022 02:11:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Sep 2022 12:11:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 12:10:50 +0300
Message-Id: <20220907091057.11572-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
References: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 10/17] drm/i915: Make all clock checks
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
index 9f9b7fb46163..10319856ed15 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5673,16 +5673,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
@@ -5801,7 +5791,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_RECT(pch_pfit.dst);
 
 		PIPE_CONF_CHECK_I(scaler_state.scaler_id);
-		PIPE_CONF_CHECK_CLOCK_FUZZY(pixel_rate);
+		PIPE_CONF_CHECK_I(pixel_rate);
 
 		PIPE_CONF_CHECK_X(gamma_mode);
 		if (IS_CHERRYVIEW(dev_priv))
@@ -5871,9 +5861,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >= 5)
 		PIPE_CONF_CHECK_I(pipe_bpp);
 
-	PIPE_CONF_CHECK_CLOCK_FUZZY(hw.pipe_mode.crtc_clock);
-	PIPE_CONF_CHECK_CLOCK_FUZZY(hw.adjusted_mode.crtc_clock);
-	PIPE_CONF_CHECK_CLOCK_FUZZY(port_clock);
+	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_clock);
+	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_clock);
+	PIPE_CONF_CHECK_I(port_clock);
 
 	PIPE_CONF_CHECK_I(min_voltage_level);
 
@@ -5915,7 +5905,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 #undef PIPE_CONF_CHECK_BOOL_INCOMPLETE
 #undef PIPE_CONF_CHECK_P
 #undef PIPE_CONF_CHECK_FLAGS
-#undef PIPE_CONF_CHECK_CLOCK_FUZZY
 #undef PIPE_CONF_CHECK_COLOR_LUT
 #undef PIPE_CONF_CHECK_TIMINGS
 #undef PIPE_CONF_CHECK_RECT
-- 
2.35.1

