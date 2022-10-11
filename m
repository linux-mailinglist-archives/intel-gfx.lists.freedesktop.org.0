Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C3E5FB8D5
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 19:02:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEF5F10E98D;
	Tue, 11 Oct 2022 17:01:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D296510E97D
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 17:01:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665507696; x=1697043696;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SDkumx9WiJWjcoERYaXzBUMfJN4Wy1X8cfhSOE5E4nQ=;
 b=aIXMwDGCr1HmkMRBp+9H+7/Q0ADy/G/fm788ov4lZmrjxZBIcW1k2+w5
 nJilMwpY9+zxQVagT1CTFY9kine8TaneKHKrZUAfLbwbbmxsjlifvJ61q
 4Mv5SGqdXB4xOJeeBAzp69NjirpyWdkHxgqeKL/oPOJVeCaN1Xazfk6kQ
 1mRRCxFf7SzWV+8DECWYo+beyGLfqvw9H7/gLzXkidtt7MGMu5BMILCSL
 yzA21gPj/40f2yYSGvsj6cTc1x1HYzNBxxy1RL/p73/3Ze1mwvsUfOWAN
 KZ6XaZF/nuAAPZxRT/6hR+jKoo77Xq3d/V0vvopktKfOvIQEY9U1mudGN Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="302178297"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="302178297"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 10:01:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="628771993"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="628771993"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 11 Oct 2022 10:01:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Oct 2022 20:01:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 20:00:10 +0300
Message-Id: <20221011170011.17198-22-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 21/22] drm/i915/audio: Include ELD in the state
 dump
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

Include the ELD has a hex blob in the crtc state dump.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_crtc_state_dump.c    | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index e9212f69c360..0f9d3bf32129 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -3,6 +3,8 @@
  * Copyright © 2022 Intel Corporation
  */
 
+#include <drm/drm_edid.h>
+
 #include "i915_drv.h"
 #include "intel_crtc_state_dump.h"
 #include "intel_display_types.h"
@@ -56,6 +58,17 @@ intel_dump_dp_vsc_sdp(struct drm_i915_private *i915,
 	drm_dp_vsc_sdp_log(KERN_DEBUG, i915->drm.dev, vsc);
 }
 
+static void
+intel_dump_buffer(struct drm_i915_private *i915,
+		  const char *prefix, const u8 *buf, size_t len)
+{
+	if (!drm_debug_enabled(DRM_UT_KMS))
+		return;
+
+	print_hex_dump(KERN_DEBUG, prefix, DUMP_PREFIX_NONE,
+		       16, 0, buf, len, false);
+}
+
 #define OUTPUT_TYPE(x) [INTEL_OUTPUT_ ## x] = #x
 
 static const char * const output_type_str[] = {
@@ -236,6 +249,10 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 	    intel_hdmi_infoframe_enable(DP_SDP_VSC))
 		intel_dump_dp_vsc_sdp(i915, &pipe_config->infoframes.vsc);
 
+	if (pipe_config->has_audio)
+		intel_dump_buffer(i915, "ELD: ", pipe_config->eld,
+				  drm_eld_size(pipe_config->eld));
+
 	drm_dbg_kms(&i915->drm, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
 		    str_yes_no(pipe_config->vrr.enable),
 		    pipe_config->vrr.vmin, pipe_config->vrr.vmax,
-- 
2.35.1

