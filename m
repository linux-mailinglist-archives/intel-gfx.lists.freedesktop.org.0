Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uGRdMNAS82k4xAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 10:29:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5C849F3E2
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 10:29:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CFBE10F272;
	Thu, 30 Apr 2026 08:29:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n2OfIIPX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECB5910F272;
 Thu, 30 Apr 2026 08:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777537741; x=1809073741;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TN/87jowGV06VLotagJCvbUejnSZ1uYxKEG6Q8Ytv5Y=;
 b=n2OfIIPXvJ8fR2ESPBKeFpzwEY65FimCUxjvgolPEceHlbo4RAaKC/sW
 Cw34p9efWT4j6lN7IkS0/DHvd1ZxjA11MPNTEY3oK8ZgNamJgb3wJ485s
 IqcEK7xNhtPmj9tQDMQsDq9I1UGewTNdRv/uYP0LHER263m0M3jY6bw0o
 Lcwexw9ppfyv3+AyhJAwuL5k20o5SAkvXbCt6KGyuI+FaKbvaNV0eAoYX
 eHBjjTjhKHJKZ5kfnpv+j5q0Vt8+RkwBzwYx8Mgw+Ppizg9qkmamT6HTA
 TaU1I2DaLPupKZWEeoKSQYDsIYeL75n8cLMSchyNV5GJghP+YYeUnENLg A==;
X-CSE-ConnectionGUID: OKSrNGXBSkOJZLL3AyvsJA==
X-CSE-MsgGUID: tLSrfgWpRTq6xF9CgZ71jg==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="88793346"
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="88793346"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 01:29:01 -0700
X-CSE-ConnectionGUID: xcH7sqXBR7CQ3kBsRKw3Qg==
X-CSE-MsgGUID: HLjObiHMTkyEgjFUxT3VqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="228015300"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.68])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 01:29:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/8] drm/i915/display: move audio funcs under audio sub-struct
Date: Thu, 30 Apr 2026 11:28:45 +0300
Message-ID: <60d626286b77c2faa9ff0518855dd083906b24be.1777537663.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1777537663.git.jani.nikula@intel.com>
References: <cover.1777537663.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Queue-Id: 5A5C849F3E2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

Move audio related functions under audio sub-struct of struct
intel_display.

The funcs sub-struct of struct intel_display seems unnecessary. Instead
of display->funcs.FEATURE, prefer display->FEATURE.funcs.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c    | 22 ++++++++-----------
 .../gpu/drm/i915/display/intel_display_core.h |  6 ++---
 .../gpu/drm/i915/display/intel_display_irq.c  |  4 ++++
 3 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 081627e0d917..2a6476ccc85b 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -754,10 +754,8 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 		    crtc->base.base.id, crtc->base.name,
 		    drm_eld_size(crtc_state->eld));
 
-	if (display->funcs.audio)
-		display->funcs.audio->audio_codec_enable(encoder,
-							      crtc_state,
-							      conn_state);
+	if (display->audio.funcs)
+		display->audio.funcs->audio_codec_enable(encoder, crtc_state, conn_state);
 
 	mutex_lock(&display->audio.mutex);
 
@@ -813,10 +811,8 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 		    encoder->base.base.id, encoder->base.name,
 		    crtc->base.base.id, crtc->base.name);
 
-	if (display->funcs.audio)
-		display->funcs.audio->audio_codec_disable(encoder,
-							       old_crtc_state,
-							       old_conn_state);
+	if (display->audio.funcs)
+		display->audio.funcs->audio_codec_disable(encoder, old_crtc_state, old_conn_state);
 
 	mutex_lock(&display->audio.mutex);
 
@@ -864,8 +860,8 @@ void intel_audio_codec_get_config(struct intel_encoder *encoder,
 	if (!crtc_state->has_audio)
 		return;
 
-	if (display->funcs.audio)
-		display->funcs.audio->audio_codec_get_config(encoder, crtc_state);
+	if (display->audio.funcs)
+		display->audio.funcs->audio_codec_get_config(encoder, crtc_state);
 }
 
 static const struct intel_audio_funcs g4x_audio_funcs = {
@@ -893,12 +889,12 @@ static const struct intel_audio_funcs hsw_audio_funcs = {
 void intel_audio_hooks_init(struct intel_display *display)
 {
 	if (display->platform.g4x)
-		display->funcs.audio = &g4x_audio_funcs;
+		display->audio.funcs = &g4x_audio_funcs;
 	else if (display->platform.valleyview || display->platform.cherryview ||
 		 HAS_PCH_CPT(display) || HAS_PCH_IBX(display))
-		display->funcs.audio = &ibx_audio_funcs;
+		display->audio.funcs = &ibx_audio_funcs;
 	else if (display->platform.haswell || DISPLAY_VER(display) >= 8)
-		display->funcs.audio = &hsw_audio_funcs;
+		display->audio.funcs = &hsw_audio_funcs;
 }
 
 struct aud_ts_cdclk_m_n {
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index c5a07090cba6..c61990ca9e29 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -100,6 +100,9 @@ struct intel_audio_state {
 };
 
 struct intel_audio {
+	/* internal display audio functions */
+	const struct intel_audio_funcs *funcs;
+
 	/* hda/i915 audio component */
 	struct i915_audio_component *component;
 	bool component_registered;
@@ -319,9 +322,6 @@ struct intel_display {
 
 		/* Display internal color functions */
 		const struct intel_color_funcs *color;
-
-		/* Display internal audio functions */
-		const struct intel_audio_funcs *audio;
 	} funcs;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 70c1bba7c0a8..b5bfdebc66ca 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -2458,6 +2458,10 @@ void dg1_de_irq_postinstall(struct intel_display *display)
 	intel_de_write(display, GEN11_DISPLAY_INT_CTL, GEN11_DISPLAY_IRQ_ENABLE);
 }
 
+struct intel_display_irq_funcs {
+	void (*reset)(struct intel_display *display);
+};
+
 void intel_display_irq_init(struct intel_display *display)
 {
 	spin_lock_init(&display->irq.lock);
-- 
2.47.3

