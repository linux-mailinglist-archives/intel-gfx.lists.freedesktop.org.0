Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8975B5FB8D4
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 19:02:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3718810E97D;
	Tue, 11 Oct 2022 17:01:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5942710E981
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 17:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665507694; x=1697043694;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Tdttd7hv2tQJojg0eDjGpgCpQoM9XAVtVebls3Y1YZg=;
 b=Igb+IKTkaq1HSrjM6GLb128BtIKvsEGjdLVcrGacVoD7n5jc13MCtIeR
 n2r7rS2nVd5y8MoOhxKmpmZyEe5vVT8TjenofCkqXypUj/Wv/Gv7Qv/Ti
 CoCJa7wqinyk6O4f7Z/5vRQ+1XnySBevGB/au6LIPzGCNwbexAfQwY1Px
 P1F0MJk912rUP0KjA4ulAL5sKcaQqCy2EDCUFD6amfpPTeq7P44NbfjOX
 T9pxNxcRWCLVjRchDM167cciiCysP+uA/L6zSK16vwrkEwksaaPsxnebk
 uL4nehkNjKSYXLtST1TUFM3cr+fRQDH9mCQlqX1tv0/p1ZiJwUVIbynLk w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="302178267"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="302178267"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 10:01:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="628771916"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="628771916"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 11 Oct 2022 10:01:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Oct 2022 20:01:27 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 20:00:09 +0300
Message-Id: <20221011170011.17198-21-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 20/22] drm/i915/audio: Hook up ELD into the
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
Cc: Takashi Iwai <tiwai@suse.de>
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
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 43 ++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c52da2a21896..ef5087af9405 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5419,6 +5419,12 @@ intel_compare_dp_vsc_sdp(const struct drm_dp_vsc_sdp *a,
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
@@ -5469,6 +5475,30 @@ pipe_config_dp_vsc_sdp_mismatch(struct drm_i915_private *dev_priv,
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
@@ -5701,6 +5731,18 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
@@ -5779,6 +5821,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_BOOL(fec_enable);
 
 	PIPE_CONF_CHECK_BOOL_INCOMPLETE(has_audio);
+	PIPE_CONF_CHECK_BUFFER(eld, MAX_ELD_BYTES);
 
 	PIPE_CONF_CHECK_X(gmch_pfit.control);
 	/* pfit ratios are autocomputed by the hw on gen4+ */
-- 
2.35.1

