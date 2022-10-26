Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9920C60E61A
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 19:03:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63DFC10E61E;
	Wed, 26 Oct 2022 17:03:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C27110E60A
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 17:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666803764; x=1698339764;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RrfmpIJt2se4t5ceW1Lx7Nsq/TBgP/L80n4NZrwgsaM=;
 b=SspjH0qf/p26fwWH+ScekdTbT5Ljk+M9Qge5cFuntHXLahiFDGXKhgi1
 d2F4gyHS4fb8sQRCMO3RiOJLoXq3d9aF54ivGHDMLrbVHRtxQfV5J/bJ7
 1BlPdWfANbkKO9e7h9CTL2F72E/M/rfDWsswcX2gZ0yWldWdYi5vdrKU7
 GuHlvAq/b697X5FkBKnTKfG08uO1naGfUvrQp9rr66F6VaUxsf2SzPJGO
 S3dChHpKCojwUv8YuZJu8K78DzP2ZE1gex50bTZgmep/rxNzlpwc4vyM8
 k71mA4irW9g0hAWvUL1k0DixRwtmHVE7nZ7SJUvJnWjr1sk4wwTj8PRAF g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="334625150"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="334625150"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 10:02:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="632090930"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="632090930"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 26 Oct 2022 10:02:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 20:02:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 20:01:48 +0300
Message-Id: <20221026170150.2654-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
References: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/15] drm/i915/audio: Split "ELD valid" vs.
 audio PD on hsw+
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

On the older platforms the audio presence detect bit is in
the port register, so it gets written outside audio codec hooks
and is this separate from the ELD valid toggling. Split the
operations into two steps on hsw+ to be more consistent with
both the other platforms and the spec. Also according to the
spec we might need some vblank waits between the two which
definitely needs them done separately.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 9ba1351f2c6d..cbc5615f43bf 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -481,9 +481,12 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 		     (intel_crtc_has_dp_encoder(old_crtc_state) ?
 		      AUD_CONFIG_N_VALUE_INDEX : 0));
 
-	/* Disable audio presence detect, invalidate ELD */
+	/* Invalidate ELD */
+	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
+		     AUDIO_ELD_VALID(cpu_transcoder), 0);
+
+	/* Disable audio presence detect */
 	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
-		     AUDIO_ELD_VALID(cpu_transcoder) |
 		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
 
 	mutex_unlock(&i915->display.audio.mutex);
@@ -614,10 +617,13 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
 		enable_audio_dsc_wa(encoder, crtc_state);
 
-	/* Enable audio presence detect, invalidate ELD */
+	/* Enable audio presence detect */
 	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
-		     AUDIO_ELD_VALID(cpu_transcoder),
-		     AUDIO_OUTPUT_ENABLE(cpu_transcoder));
+		     0, AUDIO_OUTPUT_ENABLE(cpu_transcoder));
+
+	/* Invalidate ELD */
+	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
+		     AUDIO_ELD_VALID(cpu_transcoder), 0);
 
 	/*
 	 * FIXME: We're supposed to wait for vblank here, but we have vblanks
-- 
2.37.4

