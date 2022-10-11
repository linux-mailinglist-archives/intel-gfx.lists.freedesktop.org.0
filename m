Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 228415FB8D3
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 19:01:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87F9610E984;
	Tue, 11 Oct 2022 17:01:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF8FF10E97D
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 17:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665507699; x=1697043699;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Qgkb/UGfJdaQO2v+1K3cmnBXu4BhUYSfiKJ/Vx1R+mA=;
 b=EXRwgtdeFIbMN+R+fHvOH9/yCuvARDljzjg6Yf6L/qOglDtVEog+Wjip
 I2tg6ZD4UgvR46XDDrEXHKZxTTV8y4FWpgYL5sasJqEl8+wTLYvzA6AAo
 xOsWoL/YJ/35FCf39TLz5Y7Scn+YDwLt5sCctOXjHaDBhXl/CPValQ6uH
 qwg/wRFR1zK+XBr3mSuP0JDbh6RZOp9WF//NqMBXTIrQ8DR0dNfA5NLkn
 LsQrEwYkh+UA6X4oXuqbsRTRQ1gd4hoKDeiDjA72zVo8J0+YJZK+nH8l5
 RYfx5ZLJmSwfxodhQnieKIYBfK0juAj//SrjeNuqiqyYHO7mbtZPuyrrN g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="302178334"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="302178334"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 10:01:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="628772083"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="628772083"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 11 Oct 2022 10:01:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Oct 2022 20:01:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 20:00:11 +0300
Message-Id: <20221011170011.17198-23-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 22/22] hax: drm/i915/audio: Make HSW hardware
 ELD buffer sort of work
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

On HSW (at least) the ELD buffer seems to live in the codec, and
when the codec isn't suitably powered up the ELD buffer does not
work at all (address is stuck at 0, data goes nowhere).

So we have this fun chicken and egg problem where we need to
power up the codec before doing the ELD update, but in order
to get the audio driver to do stuff we sort of need the ELD
buffer prefilled. Apparently reordering the .pin_eld_notify()
to happen before .audio_codec_enable() is sufficient to trigger
pulseaudio (lols) to kick the codec out of its slumber and then
we just wait in .audio_codec_enable() until the ELD buffer
operates normally.

Took me a while to figure out what the heck is going on, with
ELD buffer sometimes kinda working, something taking random
amount of time to become operational, etc. Initially didn't
even realize pulseaudio was enabled on this systems and part
of the "solution".

If we really want to poke at the ELD hw buffer, then it seems
we'd need some kind of synchronous codec power up call first
(while avoiding all the fun deadlocks), then do the ELD write,
and finally notify the audio driver about stuff.

Maybe the answer is to just stop poking at the ELD buffer
altogether? For which hw can we do that on? ilk+? Though then
we also don't get the state checker, but does it matter at
that point even? Also I have no idea if the "ELD valid" bit
does something else in hardware besides trigger the unsolicited
event for the audio driver?

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c    | 23 +++++++++++++++----
 .../gpu/drm/i915/display/intel_audio_regs.h   |  1 +
 2 files changed, 19 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 328c47719fd8..d7c63dd2f2a7 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -655,6 +655,16 @@ static void enable_audio_dsc_wa(struct intel_encoder *encoder,
 	intel_de_write(i915, AUD_CONFIG_BE, val);
 }
 
+static bool hsw_audio_coded_ready(struct drm_i915_private *i915,
+				  enum transcoder cpu_transcoder)
+{
+	intel_de_rmw(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder),
+		     IBX_ELD_ADDRESS_MASK, IBX_ELD_ADDRESS(1));
+
+	return (intel_de_read(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder)) &
+		IBX_ELD_ADDRESS_MASK) == IBX_ELD_ADDRESS(1);
+}
+
 static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 				   const struct intel_crtc_state *crtc_state,
 				   const struct drm_connector_state *conn_state)
@@ -681,6 +691,9 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
 		     AUDIO_ELD_VALID(cpu_transcoder), 0);
 
+	if (wait_for(hsw_audio_coded_ready(i915, cpu_transcoder), 100))
+		drm_dbg_kms(&i915->drm, "codec didn't power up\n");
+
 	/* Reset ELD address */
 	intel_de_rmw(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder),
 		     IBX_ELD_ADDRESS_MASK, 0);
@@ -917,11 +930,6 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 		    encoder->base.base.id, encoder->base.name,
 		    pipe_name(pipe), drm_eld_size(crtc_state->eld));
 
-	if (i915->display.funcs.audio)
-		i915->display.funcs.audio->audio_codec_enable(encoder,
-								  crtc_state,
-								  conn_state);
-
 	mutex_lock(&i915->display.audio.mutex);
 	encoder->audio_connector = connector;
 
@@ -941,6 +949,11 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 	intel_lpe_audio_notify(i915, pipe, port, crtc_state->eld,
 			       crtc_state->port_clock,
 			       intel_crtc_has_dp_encoder(crtc_state));
+
+	if (i915->display.funcs.audio)
+		i915->display.funcs.audio->audio_codec_enable(encoder,
+								  crtc_state,
+								  conn_state);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h b/drivers/gpu/drm/i915/display/intel_audio_regs.h
index 4f432c2eb543..69a09017f834 100644
--- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
@@ -25,6 +25,7 @@
 						  _IBX_AUD_CNTL_ST_B)
 #define   IBX_ELD_BUFFER_SIZE_MASK	REG_GENMASK(14, 10)
 #define   IBX_ELD_ADDRESS_MASK		REG_GENMASK(9, 5)
+#define   IBX_ELD_ADDRESS(dw)		REG_FIELD_PREP(IBX_ELD_ADDRESS_MASK, (dw))
 #define   IBX_ELD_ACK			REG_BIT(4)
 #define IBX_AUD_CNTL_ST2		_MMIO(0xE20C0)
 #define   IBX_CP_READY(port)		REG_BIT(((port) - 1) * 4 + 1)
-- 
2.35.1

