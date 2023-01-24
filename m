Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5050B679C5C
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 15:47:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D246210E6A5;
	Tue, 24 Jan 2023 14:47:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C650E10E692
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 14:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674571635; x=1706107635;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KO2ytF2jJRqED3i1Iu/viAxWQmEZPL8sXPlTvlp5ROE=;
 b=ccUq1qE8IGwngqdcXEr0AYSKGvo8hyV2U6pnPt3J7p7QEaauge8/s/dV
 SbKxYs6VlgLcWqN5eiEbX04WB/uhDOAdrdrCTMOdYh2QgfHJ7ru9Tv4Ln
 umyNfMz5nLQxXwu79VTzxQ3AHBIUrIme9Lss/dJWXJvD4hyO0p/yJEWVY
 TfeYpDySWMYOGdScGWUelxfeCL3k5v9pPeIFtR/9ZYAmGUxaCydHGsbOF
 4jR1/eNlC9tTeT+mL3A3V2VMK+X4EfEEuOxsx5O8sabHayc/I57AAFXrZ
 TZBdc3w3tq12yAd1YOwWNFQgq1+1Ohz/DITmAINPCLkClGlLkmC0Bq2pI g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="412538949"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="412538949"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 06:47:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="639602610"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="639602610"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 24 Jan 2023 06:47:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Jan 2023 16:47:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Jan 2023 16:46:25 +0200
Message-Id: <20230124144628.4649-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230124144628.4649-1-ville.syrjala@linux.intel.com>
References: <20230124144628.4649-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 10/13] drm/i915/audio: Hook up ELD into the
 state checker
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
Cc: Takashi Iwai <tiwai@suse.de>, Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Have the state checker validate the ELD. For now we'll
just dump it out as a hex buffer on a mismatch, maybe
someone will get inspired to decode it properly at some
point...

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 43 ++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e37cca6b18c6..717ca3d7890d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5383,6 +5383,12 @@ intel_compare_dp_vsc_sdp(const struct drm_dp_vsc_sdp *a,
 	return memcmp(a, b, sizeof(*a)) == 0;
 }
 
+static bool
+intel_compare_buffer(const u8 *a, const u8 *b, size_t len)
+{
+	return memcmp(a, b, len) == 0;
+}
+
 static void
 pipe_config_infoframe_mismatch(struct drm_i915_private *dev_priv,
 			       bool fastset, const char *name,
@@ -5433,6 +5439,30 @@ pipe_config_dp_vsc_sdp_mismatch(struct drm_i915_private *dev_priv,
 	}
 }
 
+static void
+pipe_config_buffer_mismatch(struct drm_i915_private *dev_priv,
+			    bool fastset, const char *name,
+			    const u8 *a, const u8 *b, size_t len)
+{
+	if (fastset) {
+		if (!drm_debug_enabled(DRM_UT_KMS))
+			return;
+
+		drm_dbg_kms(&dev_priv->drm,
+			    "fastset mismatch in %s buffer\n", name);
+		print_hex_dump(KERN_DEBUG, "expected: ", DUMP_PREFIX_NONE,
+			       16, 0, a, len, false);
+		print_hex_dump(KERN_DEBUG, "found: ", DUMP_PREFIX_NONE,
+			       16, 0, b, len, false);
+	} else {
+		drm_err(&dev_priv->drm, "mismatch in %s buffer\n", name);
+		print_hex_dump(KERN_ERR, "expected: ", DUMP_PREFIX_NONE,
+			       16, 0, a, len, false);
+		print_hex_dump(KERN_ERR, "found: ", DUMP_PREFIX_NONE,
+			       16, 0, b, len, false);
+	}
+}
+
 static void __printf(4, 5)
 pipe_config_mismatch(bool fastset, const struct intel_crtc *crtc,
 		     const char *name, const char *format, ...)
@@ -5631,6 +5661,18 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	} \
 } while (0)
 
+#define PIPE_CONF_CHECK_BUFFER(name, len) do { \
+	BUILD_BUG_ON(sizeof(current_config->name) != (len)); \
+	BUILD_BUG_ON(sizeof(pipe_config->name) != (len)); \
+	if (!intel_compare_buffer(current_config->name, pipe_config->name, (len))) { \
+		pipe_config_buffer_mismatch(dev_priv, fastset, __stringify(name), \
+					    current_config->name, \
+					    pipe_config->name, \
+					    (len)); \
+		ret = false; \
+	} \
+} while (0)
+
 #define PIPE_CONF_CHECK_COLOR_LUT(lut, is_pre_csc_lut) do { \
 	if (current_config->gamma_mode == pipe_config->gamma_mode && \
 	    !intel_color_lut_equal(current_config, \
@@ -5702,6 +5744,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_BOOL(fec_enable);
 
 	PIPE_CONF_CHECK_BOOL_INCOMPLETE(has_audio);
+	PIPE_CONF_CHECK_BUFFER(eld, MAX_ELD_BYTES);
 
 	PIPE_CONF_CHECK_X(gmch_pfit.control);
 	/* pfit ratios are autocomputed by the hw on gen4+ */
-- 
2.39.1

