Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EB45FB8CA
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 19:01:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C13BF10E8D3;
	Tue, 11 Oct 2022 17:01:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C542A10E8D8
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 17:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665507690; x=1697043690;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CzDVQjGWMsEg1nFSlXPzXAlYaLkXamFrwn2l5PgMzwE=;
 b=SBmYZ6ZFZGrSOPqiGsZ1ZMe25V7fiOUHorQL8Yx2uWGgJB8SOsfLS9/x
 HZF5pO82I99cvLeHYOtPAa/8LdP78VnHFgxOOgbCpwvl1jJyFw9YQNbr9
 raq8/zLY6/BenzfXzpzR85UL1iqqkBiPcQf+r8wBKII4HSxabnLRUN4Ka
 uesIhWJm2Krw+ZBVXTgGMVSYGJht8kXqCT8AZPHAv8dRsOO1tEjOLqzXR
 niBF0cm7PAQr+XrSPeiEtufYKwkJC/Pn0OVJISP8Z5ghYaDw9eUD0/Aug
 nEfzHtAoAyuh8xWJT+Tzx7TT0megLZnUi5w30duetIk2bH5vsKa8s3O/a A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="302178223"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="302178223"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 10:01:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="628771863"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="628771863"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 11 Oct 2022 10:01:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Oct 2022 20:01:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 20:00:07 +0300
Message-Id: <20221011170011.17198-19-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 18/22] drm/i915/sdvo: Precompute the ELD
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

Use the precomputed crtc_state->eld for audio setup on SDVO
just like we do with native HDMI.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 8852564b5fbf..d9a54ed4623a 100644
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
2.35.1

