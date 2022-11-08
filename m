Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9CC621805
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 16:23:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE5F810E4D5;
	Tue,  8 Nov 2022 15:23:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5839F10E498
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 15:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667920989; x=1699456989;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ha4O5Q+HdAiKh88AQmiTddJo5vl7mGYEU7ibFDwx9kM=;
 b=Lf95b9kGAGDK46ocex0kKIUms4Cyvhk9a+MT7HGFJJoMY+bjLaoAK9NY
 unOp+Bz5fGW1gc2B4VM/YjxzBl2DAHf3u2JN1mQXlmj9e42ksu3xMhhtP
 adYvux9Uae9udECspRbImc44ElQwaXhkVzVkEWBTbctIzI5RMXvPawQ7z
 LjThtsFiXw1NsWHiHRHdjPo2Dp/bheSta6Ld/Kyzk1H9VAYf74GrRzPqa
 JgJ5hM9MCQNfV20t07eUDRiA6PWHdxet6/GDbN1T6++Vv8R3Z/UUVfAfq
 8lRq93UeSXc58g4npwhO6zbcyZj4eIAmtovvYcQhUIFynmLoA1mMF59XS Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="310718850"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="310718850"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 07:19:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="725590781"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="725590781"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 08 Nov 2022 07:19:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Nov 2022 17:19:11 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Nov 2022 17:18:33 +0200
Message-Id: <20221108151839.31567-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
References: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/15] drm/i915/sdvo: Precompute the ELD
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

Use the precomputed crtc_state->eld for audio setup on SDVO
just like we do with native HDMI.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 48b7b1aa37b2..55aa8f2ed7da 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -38,6 +38,7 @@
 
 #include "i915_drv.h"
 #include "intel_atomic.h"
+#include "intel_audio.h"
 #include "intel_connector.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
@@ -1377,7 +1378,9 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 
 	pipe_config->has_hdmi_sink = intel_has_hdmi_sink(intel_sdvo, conn_state);
 
-	pipe_config->has_audio = intel_sdvo_has_audio(encoder, pipe_config, conn_state);
+	pipe_config->has_audio =
+		intel_sdvo_has_audio(encoder, pipe_config, conn_state) &&
+		intel_audio_compute_config(encoder, pipe_config, conn_state);
 
 	pipe_config->limited_color_range =
 		intel_sdvo_limited_color_range(encoder, pipe_config,
@@ -1752,12 +1755,7 @@ static void intel_sdvo_enable_audio(struct intel_sdvo *intel_sdvo,
 				    const struct intel_crtc_state *crtc_state,
 				    const struct drm_connector_state *conn_state)
 {
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
-	struct drm_connector *connector = conn_state->connector;
-	u8 *eld = connector->eld;
-
-	eld[6] = drm_av_sync_delay(connector, adjusted_mode) / 2;
+	const u8 *eld = crtc_state->eld;
 
 	intel_sdvo_set_audio_state(intel_sdvo, 0);
 
-- 
2.37.4

