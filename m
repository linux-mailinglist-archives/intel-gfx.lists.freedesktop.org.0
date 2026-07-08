Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hmChFlQhTmojDwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 12:07:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0567240AB
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 12:07:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ASDYgENK;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1597D10F08D;
	Wed,  8 Jul 2026 10:07:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8AE410F088;
 Wed,  8 Jul 2026 10:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783505232; x=1815041232;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LdAT/g8oMuTjYfjIEHF99wgarBEfTFmIXU5cNCF11O0=;
 b=ASDYgENKrTxGqRCgMRBzy3zyoSbvF9MH1x8ix/URHfXxo1AfSRSZchBq
 +q6rCiTs7ACjX8tu5VXHcchINlz6KRNvb3m8qSs62eVBS6EJQjdIz0uo8
 QB5JJUWFSDo9b2MQR268NI6HCtYm0iafZLJFATtO2Sh89RMxLBZXh1i/b
 NPtNEfHd7gGqP0QB72a6IUZtw6TRCj0PkTqty9LwXXsC58wEAgKQ+NZVO
 Ohrpwp11ze+O2HzGZNBm9xMgIWJN8OZMiQ6SxmAb0Ucn9Bst11cH9HaHI
 7qrYTTPM1WUS0e/R8TVSFN3FoGTZVFrzLA4QeNJf24BEc5iLMqO8UhCJM Q==;
X-CSE-ConnectionGUID: k+BkmSvjSomkJKWNcrTzzQ==
X-CSE-MsgGUID: n7krqNNlT7WLaxwLPMBOAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11840"; a="71684543"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="71684543"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 03:07:11 -0700
X-CSE-ConnectionGUID: 1UgFmiLSSOiGQ4SkSOaUmA==
X-CSE-MsgGUID: dKDJF7HET8Czn4Os8t5xMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="253165724"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa010.jf.intel.com with ESMTP; 08 Jul 2026 03:07:08 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, uma.shankar@intel.com,
 shawn.c.lee@intel.com, kai.vehmanen@intel.com, ankit.k.nautiyal@intel.com,
 chaitanya.kumar.borah@intel.com, suraj.kandpal@intel.com
Subject: [PATCH v2] drm/i915/audio: treat UHBR SST like MST for cpu_transcoder
 signalling
Date: Wed,  8 Jul 2026 15:26:24 +0530
Message-ID: <20260708095624.1838706-1-mitulkumar.ajitkumar.golani@intel.com>
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
	RCPT_COUNT_SEVEN(0.00)[8];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8A0567240AB

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

Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c    | 61 ++++++++++++++-----
 .../gpu/drm/i915/display/intel_display_core.h |  1 +
 2 files changed, 48 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 9729f1837d2c..7a2bc73744a3 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -38,6 +38,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_display_wa.h"
+#include "intel_dp.h"
 #include "intel_lpe_audio.h"
 
 /**
@@ -696,6 +697,21 @@ static void ibx_audio_codec_enable(struct intel_encoder *encoder,
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
@@ -762,6 +778,8 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 	audio_state = &display->audio.state[cpu_transcoder];
 
 	audio_state->encoder = encoder;
+	audio_state->needs_cpu_transcoder_id =
+			intel_audio_needs_cpu_transcoder_id(crtc_state);
 	BUILD_BUG_ON(sizeof(audio_state->eld) != sizeof(crtc_state->eld));
 	memcpy(audio_state->eld, crtc_state->eld, sizeof(audio_state->eld));
 
@@ -769,8 +787,12 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 
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
@@ -819,14 +841,19 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
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
@@ -1118,18 +1145,24 @@ static int intel_audio_component_get_cdclk_freq(struct device *kdev)
 }
 
 /*
- * get the intel audio state according to the parameter port and cpu_transcoder
- * MST & (cpu_transcoder >= 0): return the audio.state[cpu_transcoder].encoder],
+ * Get the intel audio state according to the parameter port and cpu_transcoder
+ *
+ * A "MST transcoder" below means 128b/132b transport, i.e. either DP MST or
+ * UHBR SST, both of which use a meaningful (>= 0) cpu_transcoder to identify
+ * the audio stream on a port (see intel_audio_needs_cpu_transcoder_id()):
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
+	/* MST, or UHBR SST. */
 	if (cpu_transcoder >= 0) {
 		struct intel_audio_state *audio_state;
 		struct intel_encoder *encoder;
@@ -1142,11 +1175,11 @@ static struct intel_audio_state *find_audio_state(struct intel_display *display,
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
 
@@ -1158,7 +1191,7 @@ static struct intel_audio_state *find_audio_state(struct intel_display *display,
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

