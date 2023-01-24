Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C1C679C5E
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 15:47:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6114910E049;
	Tue, 24 Jan 2023 14:47:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4BAD10E049
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 14:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674571642; x=1706107642;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XOJ+bR6sLZZUkiXjrzopw9t0bg/gxiBth9mC9kHV5UI=;
 b=j8ezJqL8NXiY93Q7sq5bjm1Ws38ay8yggmZST4HqKJvNnju6oMJ1zzcf
 2wx9ELk498rJtErFQvRjjX5ZL8rwjUuV5M7f3emIdeGc7xkne9oi8QWJK
 q8nzKGodzTfekdWOTVjCdJD3sT/icFHrYyLR0IFtdxD/aDBuvMG5XfSIt
 TTZULfxrmJ7+DhNgkcNfbGuJekfXO2Ukg+Sm753fH8zuVI9VL3ihLAGHb
 stQwYtxoW8kxgZL14AvZO54NVcedf/2XC2m3qjkfTrHGiBrScVtTD7VJP
 xbmlJ8l+DOLEZ1aetT4vY/K3oLmaE5Ant9ISq9XfYKDvV163lye/n/+aK Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="412538958"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="412538958"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 06:47:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="639602655"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="639602655"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 24 Jan 2023 06:47:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Jan 2023 16:47:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Jan 2023 16:46:26 +0200
Message-Id: <20230124144628.4649-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230124144628.4649-1-ville.syrjala@linux.intel.com>
References: <20230124144628.4649-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 11/13] drm/i915/audio: Include ELD in the
 state dump
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

Include the ELD has a hex blob in the crtc state dump.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_crtc_state_dump.c    | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index e3273fe8ddac..2422d6ef5777 100644
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
2.39.1

