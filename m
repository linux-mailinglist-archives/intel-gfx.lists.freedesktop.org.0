Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dKlnKj6vS2r5YQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 15:35:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F61711579
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 15:35:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=fgKwO+NK;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0ED710E95E;
	Mon,  6 Jul 2026 13:35:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61B4E10E95E;
 Mon,  6 Jul 2026 13:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783344955; x=1814880955;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jvbNe5eKjdGvr6xWNgbqGR9X3Yh4/Z+nNShaVz5iPqQ=;
 b=fgKwO+NKSdcQe7bYU1aLwUREwlNgXWEC2UVIIqM9OymbKVv5IqPZFrM0
 RtykdTonrF4T6hwBrnk5nMja+iNOmJvRrrwC1hgRc+wVk1oHYUHVt8bHv
 ytNcoVS/r8lgHomGB1Os3easHtMg3De9mzd2fsZdljvIpa4db00ltl/Sq
 wEJ9OiwyOOaqCdUBa+MGH2WGl0qOMgH+EfX2NgxBE9OfXZqBltBzoDThY
 vmRNQzvnl4MC4Vufhrzcj4NU5TRYpC5ao1nYCeWDlD9L29bHypyx++Fue
 kKAuw2fk30h9ICryry6WX9Qc+4gm68E4sZgV86Rr0IGP4jY1rYCyclAo2 A==;
X-CSE-ConnectionGUID: hvQaTBcCREGEQhBEh7IAoQ==
X-CSE-MsgGUID: yIUHQFojStSuLJ/X+xs20g==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="106776580"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="106776580"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 06:35:55 -0700
X-CSE-ConnectionGUID: c334WF7NTiOgG9qlog2fcw==
X-CSE-MsgGUID: Bzy6ckGDSouuXPMbrlZRRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="257588050"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa004.jf.intel.com with ESMTP; 06 Jul 2026 06:35:53 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, uma.shankar@intel.com,
 shawn.c.lee@intel.com, kai.vehmanen@intel.com, ankit.k.nautiyal@intel.com,
 chaitanya.kumar.borah@intel.com
Subject: [PATCH v1] drm/i915/audio: treat UHBR SST like MST for cpu_transcoder
 signalling
Date: Mon,  6 Jul 2026 18:55:27 +0530
Message-ID: <20260706132527.1687075-1-mitulkumar.ajitkumar.golani@intel.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitulkumar.ajitkumar.golani@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 11F61711579

UHBR SST uses the same 128b/132b transport as DP MST, so its audio also
lives on a meaningful cpu_transcoder (>= 0), not the -1 used for legacy
SST. Treating it as Non-MST made pin_eld_notify() signal -1 and made
find_audio_state() skip the per-transcoder entry, so after suspend/resume
or replug the ELD lookup failed and audio went silent.

Detect UHBR SST alongside DP MST when deciding how to address audio
state, in both the pin_eld_notify() signalling and the find_audio_state()
lookup paths.

Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 67 ++++++++++++++++++----
 1 file changed, 55 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 9729f1837d2c..4586bf981255 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -37,6 +37,7 @@
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_dp.h"
 #include "intel_display_wa.h"
 #include "intel_lpe_audio.h"
 
@@ -696,6 +697,42 @@ static void ibx_audio_codec_enable(struct intel_encoder *encoder,
 	mutex_unlock(&display->audio.mutex);
 }
 
+/*
+ * 128b/132b transport is used for both DP MST and UHBR SST. As far as audio
+ * is concerned the hardware behaves identically in both cases: the port can
+ * carry multiple streams and the cpu_transcoder is a meaningful (>= 0,
+ * possibly > 0) identifier of the audio stream on that port. Legacy 8b/10b
+ * SST instead carries a single stream per port, for which the audio drivers
+ * expect the cpu_transcoder to be signalled as -1.
+ */
+static bool intel_audio_has_mst_transcoder(const struct intel_crtc_state *crtc_state)
+{
+	return intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) ||
+	       intel_dp_is_uhbr(crtc_state);
+}
+
+/*
+ * Same as intel_audio_has_mst_transcoder(), but derived from a stored encoder
+ * for which only the (legacy) crtc pointer is available. DP MST is detected
+ * from the encoder type without dereferencing the crtc, so that the MST path
+ * keeps working exactly as before; UHBR SST is detected from the active crtc
+ * state of the port encoder.
+ */
+static bool intel_audio_encoder_has_mst_transcoder(struct intel_encoder *encoder)
+{
+	struct intel_crtc *crtc;
+
+	if (encoder->type == INTEL_OUTPUT_DP_MST)
+		return true;
+
+	if (!encoder->base.crtc)
+		return false;
+
+	crtc = to_intel_crtc(encoder->base.crtc);
+
+	return intel_dp_is_uhbr(crtc->config);
+}
+
 bool intel_audio_compute_config(struct intel_encoder *encoder,
 				struct intel_crtc_state *crtc_state,
 				struct drm_connector_state *conn_state)
@@ -769,8 +806,8 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 
 	if (acomp && acomp->base.audio_ops &&
 	    acomp->base.audio_ops->pin_eld_notify) {
-		/* audio drivers expect cpu_transcoder = -1 to indicate Non-MST cases */
-		if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
+		/* audio drivers expect cpu_transcoder = -1 to indicate Non-MST/HBR cases */
+		if (!intel_audio_has_mst_transcoder(crtc_state))
 			cpu_transcoder = -1;
 		acomp->base.audio_ops->pin_eld_notify(acomp->base.audio_ops->audio_ptr,
 						      (int)port, (int)cpu_transcoder);
@@ -825,8 +862,8 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 
 	if (acomp && acomp->base.audio_ops &&
 	    acomp->base.audio_ops->pin_eld_notify) {
-		/* audio drivers expect cpu_transcoder = -1 to indicate Non-MST cases */
-		if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST))
+		/* audio drivers expect cpu_transcoder = -1 to indicate Non-MST/HBR cases */
+		if (!intel_audio_has_mst_transcoder(old_crtc_state))
 			cpu_transcoder = -1;
 		acomp->base.audio_ops->pin_eld_notify(acomp->base.audio_ops->audio_ptr,
 						      (int)port, (int)cpu_transcoder);
@@ -1119,17 +1156,23 @@ static int intel_audio_component_get_cdclk_freq(struct device *kdev)
 
 /*
  * get the intel audio state according to the parameter port and cpu_transcoder
- * MST & (cpu_transcoder >= 0): return the audio.state[cpu_transcoder].encoder],
+ *
+ * A "MST transcoder" below means 128b/132b transport, i.e. either DP MST or
+ * UHBR SST, both of which use a meaningful (>= 0) cpu_transcoder to identify
+ * the audio stream on a port (see intel_audio_has_mst_transcoder()):
+ *
+ * MST transcoder & (cpu_transcoder >= 0): return the audio.state[cpu_transcoder],
  *   when port is matched
- * MST & (cpu_transcoder < 0): this is invalid
- * Non-MST & (cpu_transcoder >= 0): only cpu_transcoder = 0 (the first device entry)
- *   will get the right intel_encoder with port matched
- * Non-MST & (cpu_transcoder < 0): get the right intel_encoder with port matched
+ * MST transcoder & (cpu_transcoder < 0): this is invalid
+ * Non-MST transcoder & (cpu_transcoder >= 0): only cpu_transcoder = 0 (the first
+ *   device entry) will get the right intel_encoder with port matched
+ * Non-MST transcoder & (cpu_transcoder < 0): get the right intel_encoder with
+ *   port matched
  */
 static struct intel_audio_state *find_audio_state(struct intel_display *display,
 						  int port, int cpu_transcoder)
 {
-	/* MST */
+	/* MST or UHBR SST */
 	if (cpu_transcoder >= 0) {
 		struct intel_audio_state *audio_state;
 		struct intel_encoder *encoder;
@@ -1142,7 +1185,7 @@ static struct intel_audio_state *find_audio_state(struct intel_display *display,
 		encoder = audio_state->encoder;
 
 		if (encoder && encoder->port == port &&
-		    encoder->type == INTEL_OUTPUT_DP_MST)
+		    intel_audio_encoder_has_mst_transcoder(encoder))
 			return audio_state;
 	}
 
@@ -1158,7 +1201,7 @@ static struct intel_audio_state *find_audio_state(struct intel_display *display,
 		encoder = audio_state->encoder;
 
 		if (encoder && encoder->port == port &&
-		    encoder->type != INTEL_OUTPUT_DP_MST)
+		    !intel_audio_encoder_has_mst_transcoder(encoder))
 			return audio_state;
 	}
 
-- 
2.48.1

