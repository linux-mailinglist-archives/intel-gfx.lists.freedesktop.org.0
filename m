Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14FC5679C50
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 15:46:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A25E10E697;
	Tue, 24 Jan 2023 14:46:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30A6A10E697
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 14:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674571599; x=1706107599;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hXRYmo3z6omen+yxQqIDHWRHthDTYH+/c2LMJswP9Co=;
 b=kq0MNxq8dVhESrqQJMtsDBP6sLcej/5LVbJvZSi+woN9AdvvDQoGmkO6
 mHVexVV0RbxDO7GLGyV1anWfMUuzOmlMDdWac8qAS8VbxKfC+m53Vzndj
 JZt5tMt1w3BRurmtFHnmhj22KKaJzfCx1OhIMNkJZ8TduN0Iy5w7rydNC
 P3e0+sKYk85p6a9mD2S6DayL5Vy/L8DOjWROYXyt8eCnzwDpECFq+o8iY
 QROGSeTQYECQlHsG+H/BbWbq8oOMz4ErPkCUvk2fJGLJ+KXptDufyh8Vm
 H2Gei0o8MQlwI/qQymb5sM18gdcvvYob4GrP5k/pwpW0udG8+Ibv/7qnI A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="412538822"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="412538822"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 06:46:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="639602215"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="639602215"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 24 Jan 2023 06:46:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Jan 2023 16:46:35 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Jan 2023 16:46:17 +0200
Message-Id: <20230124144628.4649-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230124144628.4649-1-ville.syrjala@linux.intel.com>
References: <20230124144628.4649-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 02/13] drm/i915/audio: Don't program the
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
Cc: Takashi Iwai <tiwai@suse.de>
References: https://lore.kernel.org/intel-gfx/20221012104936.30911-1-ville.syrjala@linux.intel.com/
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 37 +++-------------------
 1 file changed, 4 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index fb8a960a4b3d..afebae999c50 100644
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
2.39.1

