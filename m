Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15316621815
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 16:23:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D015910E4AD;
	Tue,  8 Nov 2022 15:23:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 824B210E48C
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 15:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667920984; x=1699456984;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BsEU5DhvIlVDil4j/t/sS4NEqbpBq52Xbt0cObQf7Sg=;
 b=n7AcwY4vdXWZ+AsPshUCUXCeiDXDuqA2ITqSh8TAPj8Gj8kDsC9lrhB/
 bfPQ/bGdgJSXN6YVKB/9iSSNP+nV/hshQYw87FHrqyyAeqi3K7vRT8EQQ
 DFzGNdwkVyGfE9igr0eEsvk3TkBW/G8Vxegi63SfpamxkKb3sUQO/3SEQ
 DyxS/nVWLxXUCPU2IkTvSlN9srEYD1/5AZ7gCMGj1C0Zj+2t+y3/o8f+Y
 ID+csKy/CgyCuZ7X3EC+dVvsGNpCdZ9gMY73Gv6I1PRbduJpdKeOFhTIf
 MBOwEsckMKqarydOH1lhbJmfzN5DOy2dAFzqVLIp9qiwZOigm8zUcsL/y A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="310718756"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="310718756"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 07:18:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="725590573"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="725590573"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 08 Nov 2022 07:18:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Nov 2022 17:18:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Nov 2022 17:18:26 +0200
Message-Id: <20221108151839.31567-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
References: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/15] drm/i915/audio: Don't program the
 hardware ELD buffer on hsw+
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

Since we use the audio component to transfer the ELD to the audio
driver on hsw+ platforms there is no point in even programming
the hardware ELD buffer. Stop doing so.

The one slight caveat here is that this is not strictly legal
according to the HDA spec. PD=1;ELD=0 is only documented as
an intermediate state during modeset. But if there is no hardware
that depends on that then I guess we're fine. Or we could
perhaps set ELD=1 without actually programming the buffer?

Note that the bspec sequence of PD=0;ELD=0 -> PD=1;ELD=0 ->
PD=1;ELD=1 is also not strictly correct according to the HDA
spec, as the only documented transition from PD=0;ELD=0 is
straight to PD=1;ELD=1.

Additionally on hsw/bdw the hardware buffer is tied in with the
dedicated display HDA controller's power state, so currently
we mostly fail at proramming the buffer anyway. When the HDA
side is not sufficiently powered up the ELD address bits get
stuck and the ELD data register accesses go nowhere.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
References: https://lore.kernel.org/intel-gfx/20221012104936.30911-1-ville.syrjala@linux.intel.com/
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 37 +++-------------------
 1 file changed, 4 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index dbcb4d9ecde7..0a53731a9272 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -459,17 +459,6 @@ hsw_audio_config_update(struct intel_encoder *encoder,
 		hsw_hdmi_audio_config_update(encoder, crtc_state);
 }
 
-/* ELD buffer size in dwords */
-static int hsw_eld_buffer_size(struct drm_i915_private *i915,
-			       enum transcoder cpu_transcoder)
-{
-	u32 tmp;
-
-	tmp = intel_de_read(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder));
-
-	return REG_FIELD_GET(IBX_ELD_BUFFER_SIZE_MASK, tmp);
-}
-
 static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *old_crtc_state,
 				    const struct drm_connector_state *old_conn_state)
@@ -618,10 +607,7 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_connector *connector = conn_state->connector;
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
-	const u32 *eld = (const u32 *)connector->eld;
-	int eld_buffer_size, len, i;
 
 	mutex_lock(&i915->display.audio.mutex);
 
@@ -639,25 +625,10 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
 		     AUDIO_ELD_VALID(cpu_transcoder), 0);
 
-	/* Reset ELD address */
-	intel_de_rmw(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder),
-		     IBX_ELD_ADDRESS_MASK, 0);
-
-	eld_buffer_size = hsw_eld_buffer_size(i915, cpu_transcoder);
-	len = min(drm_eld_size(connector->eld) / 4, eld_buffer_size);
-
-	for (i = 0; i < len; i++)
-		intel_de_write(i915, HSW_AUD_EDID_DATA(cpu_transcoder), eld[i]);
-	for (; i < eld_buffer_size; i++)
-		intel_de_write(i915, HSW_AUD_EDID_DATA(cpu_transcoder), 0);
-
-	drm_WARN_ON(&i915->drm,
-		    (intel_de_read(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder)) &
-		     IBX_ELD_ADDRESS_MASK) != 0);
-
-	/* ELD valid */
-	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
-		     0, AUDIO_ELD_VALID(cpu_transcoder));
+	/*
+	 * The audio componenent is used to convey the ELD
+	 * instead using of the hardware ELD buffer.
+	 */
 
 	/* Enable timestamps */
 	hsw_audio_config_update(encoder, crtc_state);
-- 
2.37.4

