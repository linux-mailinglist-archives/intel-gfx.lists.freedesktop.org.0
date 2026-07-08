Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id p3eqHJU4TmrzJAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 13:46:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A24E725FDE
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 13:46:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=lEzw0oXY;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0238310F0F2;
	Wed,  8 Jul 2026 11:46:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 544B610E59C;
 Wed,  8 Jul 2026 11:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783511186; x=1815047186;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+AfyJMpRSzJKVcV7NrivS/0hwEej9AOOUJThNHfKDxM=;
 b=lEzw0oXYrzf5LV1MpjrL0VMHkm3F2SpHvtZst8QuPPLSyUnm6qvrn29t
 aV1NylNb9pJqdlV/+qE3k4x+YsFx608wxb/rt96FmJdwB6l/L2SIspwQc
 rNaxqFGg6KiP95iRniEKjNNPowbTTsR+/mncrwEYbceby+IY9K4Pcgdki
 KjO2qU0N39fdP2xH5U4HKl/Ytef5b2EDH7PtUVvgdHYaAewaFuQL5+H6H
 SKKVOS3waMW1W/j4pwasWX0AIH84CRTdT7jIyM7emLlagfK3Lic42MjES
 ZMTj9J4hIZukwoB3Yv8QE88/yvdimCe1yUS0if7kcN/PdS0Xft55alZ+o w==;
X-CSE-ConnectionGUID: LPcN50dhTCatkwOplMx5bg==
X-CSE-MsgGUID: WQ3vOFiyTiWJohs3Yz6NUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11840"; a="87852911"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="87852911"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 04:46:25 -0700
X-CSE-ConnectionGUID: pRoqb8cdQoCv+o4smWvung==
X-CSE-MsgGUID: Hib+z2C6R/2LYxcd7UbJvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="247897208"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa009.fm.intel.com with ESMTP; 08 Jul 2026 04:46:22 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, uma.shankar@intel.com,
 shawn.c.lee@intel.com, kai.vehmanen@intel.com, ankit.k.nautiyal@intel.com,
 chaitanya.kumar.borah@intel.com, suraj.kandpal@intel.com
Subject: [PATCH v3] drm/i915/audio: treat UHBR SST like MST for cpu_transcoder
 signalling
Date: Wed,  8 Jul 2026 17:05:58 +0530
Message-ID: <20260708113558.1863316-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[mitulkumar.ajitkumar.golani@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8A24E725FDE

Both DP MST and UHBR SST require the audio component to use a real
cpu_transcoder (>= 0) value to identify the audio stream on a port.
For DP MST this was already handled; for UHBR SST it was not, causing
pin_eld_notify() to signal cpu_transcoder = -1 (the legacy SST sentinel)
and find_audio_state() to skip the per-transcoder entry for the UHBR
stream.

After suspend/resume or replug, the ELD lookup fails and audio goes
silent. Fix by detecting UHBR SST alongside DP MST when deciding
whether a real cpu_transcoder value must be used for audio state
addressing, in both the pin_eld_notify() signalling and the
find_audio_state() lookup paths.

--v2:
- Commit message and comment update. (Suraj)
- Change function name has_mst_transcoder. (Suraj)
- Avoid Live crtc access in find_audio_state. (Suraj)

--v3:
- Minor comment changes to avoid MST over 128b/132b confusion. (Suraj)

Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c    | 55 ++++++++++++++-----
 .../gpu/drm/i915/display/intel_display_core.h |  1 +
 2 files changed, 41 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 9729f1837d2c..fb0d7ed6fbd6 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -38,6 +38,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_display_wa.h"
+#include "intel_dp.h"
 #include "intel_lpe_audio.h"
 
 /**
@@ -696,6 +697,13 @@ static void ibx_audio_codec_enable(struct intel_encoder *encoder,
 	mutex_unlock(&display->audio.mutex);
 }
 
+static
+bool intel_audio_needs_cpu_transcoder_id(const struct intel_crtc_state *crtc_state)
+{
+	return intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) ||
+	       intel_dp_is_uhbr(crtc_state);
+}
+
 bool intel_audio_compute_config(struct intel_encoder *encoder,
 				struct intel_crtc_state *crtc_state,
 				struct drm_connector_state *conn_state)
@@ -762,6 +770,8 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 	audio_state = &display->audio.state[cpu_transcoder];
 
 	audio_state->encoder = encoder;
+	audio_state->needs_cpu_transcoder_id =
+			intel_audio_needs_cpu_transcoder_id(crtc_state);
 	BUILD_BUG_ON(sizeof(audio_state->eld) != sizeof(crtc_state->eld));
 	memcpy(audio_state->eld, crtc_state->eld, sizeof(audio_state->eld));
 
@@ -769,8 +779,12 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 
 	if (acomp && acomp->base.audio_ops &&
 	    acomp->base.audio_ops->pin_eld_notify) {
-		/* audio drivers expect cpu_transcoder = -1 to indicate Non-MST cases */
-		if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
+		/*
+		 * Audio drivers expect cpu_transcoder = -1 to indicate
+		 * Non-MST/HBR cases. MST and UHBR SST are addressed by
+		 * a real cpu_transcoder.
+		 */
+		if (!intel_audio_needs_cpu_transcoder_id(crtc_state))
 			cpu_transcoder = -1;
 		acomp->base.audio_ops->pin_eld_notify(acomp->base.audio_ops->audio_ptr,
 						      (int)port, (int)cpu_transcoder);
@@ -819,14 +833,19 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 	audio_state = &display->audio.state[cpu_transcoder];
 
 	audio_state->encoder = NULL;
+	audio_state->needs_cpu_transcoder_id = false;
 	memset(audio_state->eld, 0, sizeof(audio_state->eld));
 
 	mutex_unlock(&display->audio.mutex);
 
 	if (acomp && acomp->base.audio_ops &&
 	    acomp->base.audio_ops->pin_eld_notify) {
-		/* audio drivers expect cpu_transcoder = -1 to indicate Non-MST cases */
-		if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST))
+		/*
+		 * Audio drivers expect cpu_transcoder = -1 to indicate
+		 * Non-MST/HBR cases. MST and UHBR SST are addressed by
+		 * a real cpu_transcoder.
+		 */
+		if (!intel_audio_needs_cpu_transcoder_id(old_crtc_state))
 			cpu_transcoder = -1;
 		acomp->base.audio_ops->pin_eld_notify(acomp->base.audio_ops->audio_ptr,
 						      (int)port, (int)cpu_transcoder);
@@ -1118,18 +1137,24 @@ static int intel_audio_component_get_cdclk_freq(struct device *kdev)
 }
 
 /*
- * get the intel audio state according to the parameter port and cpu_transcoder
- * MST & (cpu_transcoder >= 0): return the audio.state[cpu_transcoder].encoder],
- *   when port is matched
- * MST & (cpu_transcoder < 0): this is invalid
- * Non-MST & (cpu_transcoder >= 0): only cpu_transcoder = 0 (the first device entry)
- *   will get the right intel_encoder with port matched
- * Non-MST & (cpu_transcoder < 0): get the right intel_encoder with port matched
+ * Get the intel audio state for a given (port, cpu_transcoder).
+ *
+ * Streams are addressed either by a real cpu_transcoder (DP MST and UHBR SST,
+ * i.e. entries whose stored needs_cpu_transcoder_id is true) or by port alone
+ * (legacy SST). Both the signalling side (pin_eld_notify()) and the lookup
+ * side use the same predicate, so the two are symmetric.
+ *
+ * cpu_transcoder >= 0 & needs_cpu_transcoder_id: return audio.state[cpu_transcoder]
+ *   when the port matches.
+ * cpu_transcoder <  0 & !needs_cpu_transcoder_id: return the first port-matching
+ *   entry.
+ * cpu_transcoder =  0 & !needs_cpu_transcoder_id: falls through to the port-only
+ *   loop so the first device entry of a legacy SST port is still found.
  */
 static struct intel_audio_state *find_audio_state(struct intel_display *display,
 						  int port, int cpu_transcoder)
 {
-	/* MST */
+	/* MST, or UHBR SST. */
 	if (cpu_transcoder >= 0) {
 		struct intel_audio_state *audio_state;
 		struct intel_encoder *encoder;
@@ -1142,11 +1167,11 @@ static struct intel_audio_state *find_audio_state(struct intel_display *display,
 		encoder = audio_state->encoder;
 
 		if (encoder && encoder->port == port &&
-		    encoder->type == INTEL_OUTPUT_DP_MST)
+		    audio_state->needs_cpu_transcoder_id)
 			return audio_state;
 	}
 
-	/* Non-MST */
+	/* Legacy SST. */
 	if (cpu_transcoder > 0)
 		return NULL;
 
@@ -1158,7 +1183,7 @@ static struct intel_audio_state *find_audio_state(struct intel_display *display,
 		encoder = audio_state->encoder;
 
 		if (encoder && encoder->port == port &&
-		    encoder->type != INTEL_OUTPUT_DP_MST)
+		    !audio_state->needs_cpu_transcoder_id)
 			return audio_state;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 17f7d3abdb9c..a6129d0b523f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -97,6 +97,7 @@ struct intel_wm_funcs {
 struct intel_audio_state {
 	struct intel_encoder *encoder;
 	u8 eld[MAX_ELD_BYTES];
+	bool needs_cpu_transcoder_id;  /* MST, or SST on UHBR link */
 };
 
 struct intel_audio {
-- 
2.48.1

