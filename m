Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A35F4621818
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 16:23:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15A1710E491;
	Tue,  8 Nov 2022 15:23:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26D7710E4AB
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 15:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667920992; x=1699456992;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=adE7FSmEd1+MZcE/tL5/tdtPyAk5+QayAoPRs8d0ZAw=;
 b=hsZNJtfMfkYE8TCFY4oqJUkOwXnHDdwXbWGBAsHfTtsrvaVMUcOqTT1A
 aiULCV8Od2cusfCgfieeCH7vqj8DyJ4ffkcnzy6FG2TSlBRJRoYAQpwF/
 m1exmJ6bSxWEfW5PcaZjqTnyl9ynQyHgcY56hQwD589WiIUL0mnesSFg7
 iGRnPV1ojjkVbQ63UDIwp7byObw0QNnqg1LVfeK+1PnjcTRob2jqwHGck
 2JHqVyDxpxJ6OG828F1E09GXNp6zaY0hRPpoim5uskNIWnhuImP45gnFS
 Fvb7yS7da+h/HlzGE7a1xyBGSYrRlmEfmJ8yATd3nQpkjVeartJWtrOVk w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="310718889"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="310718889"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 07:19:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="725590902"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="725590902"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 08 Nov 2022 07:19:22 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Nov 2022 17:19:21 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Nov 2022 17:18:36 +0200
Message-Id: <20221108151839.31567-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
References: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 12/15] drm/i915/audio: Hook up ELD into the
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
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 43 ++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0d3353c403af..01ddda65be0f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5428,6 +5428,12 @@ intel_compare_dp_vsc_sdp(const struct drm_dp_vsc_sdp *a,
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
@@ -5478,6 +5484,30 @@ pipe_config_dp_vsc_sdp_mismatch(struct drm_i915_private *dev_priv,
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
@@ -5677,6 +5707,18 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
 #define PIPE_CONF_CHECK_COLOR_LUT(name1, name2, bit_precision) do { \
 	if (current_config->name1 != pipe_config->name1) { \
 		pipe_config_mismatch(fastset, crtc, __stringify(name1), \
@@ -5755,6 +5797,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_BOOL(fec_enable);
 
 	PIPE_CONF_CHECK_BOOL_INCOMPLETE(has_audio);
+	PIPE_CONF_CHECK_BUFFER(eld, MAX_ELD_BYTES);
 
 	PIPE_CONF_CHECK_X(gmch_pfit.control);
 	/* pfit ratios are autocomputed by the hw on gen4+ */
-- 
2.37.4

