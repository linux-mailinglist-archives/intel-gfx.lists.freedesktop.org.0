Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55212679C4F
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 15:46:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DCF710E049;
	Tue, 24 Jan 2023 14:46:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B08E10E694
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 14:46:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674571595; x=1706107595;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ndNQvVI33GgKc8rm/4HbU8Yotlcv8I+L81lUjIx2hrU=;
 b=hQifQiIiKx7MooGIbmuZfbDMtTdLVile/5wgH1KgpZlF6x4yY3amteuL
 vPNMo4zSGVaFkzKrn7xSYbjxyNAEIDM5FMoY460zcb2mYHt/GlsARu/5n
 jV56MByKg/GIUuqqyaOqR9QznWnkbvsjzihCHCJznF96H0uQ8PrkxZVLB
 qe5w8IYIomF7xqhMr9HN/VGyfYidMKsj8NJF1LrxZArpekMFODv/cH26r
 mtN5r50FQiWR3eX1BZLlHRosoPijZ19+O1Y92Pgf8odpOeLjaaBQvof8d
 acwxaxNo9uYJeuoViGys6LjhPCTTpB0F4XHFy6QR+o7rlN4omfX+Z/lND A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="412538816"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="412538816"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 06:46:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="639602193"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="639602193"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 24 Jan 2023 06:46:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Jan 2023 16:46:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Jan 2023 16:46:16 +0200
Message-Id: <20230124144628.4649-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230124144628.4649-1-ville.syrjala@linux.intel.com>
References: <20230124144628.4649-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 01/13] drm/i915/audio: Don't program the
 hardware ELD buffer on ilk+
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
driver on ilk+ platforms there is no point in even programming
the hardware ELD buffer. Stop doing so.

The one slight caveat here is that this is not strictly legal
according to the HDA spec. PD=1;ELD=0 is only documented as
an intermediate state during modeset. But if there is no hardware
that depends on that then I guess we're fine. Or we could
perhaps set ELD=1 without actually programming the buffer?

Note that the bspec sequence of PD=0;ELD=0 -> PD=1;ELD=0 ->
PD=1;ELD=1 is also not strictly correct according to the HDA
spec, as the only documented transition from PD=0;ELD=0 is
straight to PD=1;ELD=1. But that is not even possible on
these platforms as the bits live in different registers.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 39 +++-------------------
 1 file changed, 4 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 626c47e96a6d..fb8a960a4b3d 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -691,20 +691,6 @@ static void ilk_audio_regs_init(struct drm_i915_private *i915,
 	}
 }
 
-/* ELD buffer size in dwords */
-static int ilk_eld_buffer_size(struct drm_i915_private *i915,
-			       enum pipe pipe)
-{
-	struct ilk_audio_regs regs;
-	u32 tmp;
-
-	ilk_audio_regs_init(i915, pipe, &regs);
-
-	tmp = intel_de_read(i915, regs.aud_cntl_st);
-
-	return REG_FIELD_GET(IBX_ELD_BUFFER_SIZE_MASK, tmp);
-}
-
 static void ilk_audio_codec_disable(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *old_crtc_state,
 				    const struct drm_connector_state *old_conn_state)
@@ -747,11 +733,8 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_connector *connector = conn_state->connector;
-	const u32 *eld = (const u32 *)connector->eld;
 	enum port port = encoder->port;
 	enum pipe pipe = crtc->pipe;
-	int eld_buffer_size, len, i;
 	struct ilk_audio_regs regs;
 
 	if (drm_WARN_ON(&i915->drm, port == PORT_A))
@@ -767,24 +750,10 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 	intel_de_rmw(i915, regs.aud_cntrl_st2,
 		     IBX_ELD_VALID(port), 0);
 
-	/* Reset ELD address */
-	intel_de_rmw(i915, regs.aud_cntl_st,
-		     IBX_ELD_ADDRESS_MASK, 0);
-
-	eld_buffer_size = ilk_eld_buffer_size(i915, pipe);
-	len = min(drm_eld_size(connector->eld) / 4, eld_buffer_size);
-
-	for (i = 0; i < len; i++)
-		intel_de_write(i915, regs.hdmiw_hdmiedid, eld[i]);
-	for (; i < eld_buffer_size; i++)
-		intel_de_write(i915, regs.hdmiw_hdmiedid, 0);
-
-	drm_WARN_ON(&i915->drm,
-		    (intel_de_read(i915, regs.aud_cntl_st) & IBX_ELD_ADDRESS_MASK) != 0);
-
-	/* ELD valid */
-	intel_de_rmw(i915, regs.aud_cntrl_st2,
-		     0, IBX_ELD_VALID(port));
+	/*
+	 * The audio componenent is used to convey the ELD
+	 * instead using of the hardware ELD buffer.
+	 */
 
 	/* Enable timestamps */
 	intel_de_rmw(i915, regs.aud_config,
-- 
2.39.1

