Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD441679C58
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 15:47:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 213D210E6A2;
	Tue, 24 Jan 2023 14:47:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9114710E6A2
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 14:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674571618; x=1706107618;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SAhUdxEgzOP6icIn0QyQ+kV/CdQygTD5Yp8eSbSGyU0=;
 b=IXmEAf65ZLG/fdT69kPRDlSmur9mwwv1/Doop4inqyMXdrJNKEvX3mcG
 89GKl053NGQDqZ6Rbdwh3CcpYdKnDOqGddD/SoO8vrpo50WStWlvxx1cv
 GOYI+rNHlYUyZOlSMJ/2IpSF+cptvpHUfw8A2uSMbyXHvfMGFyqSSEvhB
 vf23zfUiJsv6r3PZboZoxrElBlspv3HATKciUbt7H3ZtHrrUYguKZvO+8
 Rf6t9WXnd4u4LI4LRy6atViL+gpSmRMJtd+zadenEU0KY6KlrlMaJ8hgN
 DehzAIhupPDZcLPRBthZCqFBDL3P5rg7XFX4wQhqfk0fgbP8Qv5D85JEj Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="412538889"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="412538889"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 06:46:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="639602397"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="639602397"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 24 Jan 2023 06:46:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Jan 2023 16:46:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Jan 2023 16:46:22 +0200
Message-Id: <20230124144628.4649-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230124144628.4649-1-ville.syrjala@linux.intel.com>
References: <20230124144628.4649-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 07/13] drm/i915/sdvo: Precompute the ELD
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
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 21805c15d5eb..c0d7d5272eb8 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -39,6 +39,7 @@
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_atomic.h"
+#include "intel_audio.h"
 #include "intel_connector.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
@@ -1378,7 +1379,9 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 
 	pipe_config->has_hdmi_sink = intel_has_hdmi_sink(intel_sdvo, conn_state);
 
-	pipe_config->has_audio = intel_sdvo_has_audio(encoder, pipe_config, conn_state);
+	pipe_config->has_audio =
+		intel_sdvo_has_audio(encoder, pipe_config, conn_state) &&
+		intel_audio_compute_config(encoder, pipe_config, conn_state);
 
 	pipe_config->limited_color_range =
 		intel_sdvo_limited_color_range(encoder, pipe_config,
@@ -1753,12 +1756,7 @@ static void intel_sdvo_enable_audio(struct intel_sdvo *intel_sdvo,
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
2.39.1

