Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF5162180B
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 16:23:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5AE810E48B;
	Tue,  8 Nov 2022 15:23:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7630010E4A3
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 15:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667920993; x=1699456993;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QK/29yQXDezfVjhdmaRCXbIlHvXIi5/GQBh66H7SKoQ=;
 b=GfL+QkosxIKPPjk9PMZZAmjoo4oNaxay7uhGizhdDnNULCgkooIrLHSI
 GXXB2q3ZSVoH9PFf2tauw5IvqHCBRrxgSmbld2RuKzNCaKoC07Cw5R76H
 k3AFx3niKDqBB0KI2RpslmObA8GXzzqwPrhKW1MQXFfsV0ijXtH+qAFwl
 RZaL9eFZ5jONSM7YTrlFmYRzvdLrr8ooHb44dtaUqBW88OHoJKR2w1mCn
 4+B921DTLGVKRxNmKWuBYoi34NCIVIuCnYwOKt7dVVhsoO04ZXsVzMoSI
 dtfSN7LcHWWaXDpbjzk2E9QPIu3qI6Dl879l6IG9H0fwX1W69F5yFka59 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="310718905"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="310718905"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 07:19:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="725590927"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="725590927"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 08 Nov 2022 07:19:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Nov 2022 17:19:25 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Nov 2022 17:18:37 +0200
Message-Id: <20221108151839.31567-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
References: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 13/15] drm/i915/audio: Include ELD in the
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
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
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
2.37.4

