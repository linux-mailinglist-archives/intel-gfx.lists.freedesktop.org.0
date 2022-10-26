Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 933B260E611
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 19:02:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34F9410E607;
	Wed, 26 Oct 2022 17:02:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F32AA10E607
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 17:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666803745; x=1698339745;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gnP+JCdbpXj/JYU6ohUZAOsi6Nb1x+8bLU2fm0YIdp0=;
 b=KcFUuMnZiT2D9VfIw9Rer0nUN4l1DWdit2h2gz6omHPXOcBGKG+5rz1M
 kj2cAksQO+wVNjLqU8QKRIztBd+CqRvVoo7SWrR+W8lfOOnQKLlmkOqHa
 U/YEoXUPvOfsF3twHhOrDfyTJxa34PTLWs/IO7HyRRddIG6+6yXPPgeE1
 GqpStR29h5gc3SQHmJnhShIkFQUayxoGQeSVeUPZCyMkju+/38gz0vwGi
 mqRRJt8eZhvxJIPvyoZoho6voIw3XtNlOL+HOjG20yRHNcsMLnzc1RzJx
 QP4a6U8nfmEvmYyLdyJ+e3LrjAD8DdlyuMBSewRK1XcQo24qjTTakGU04 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="334625001"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="334625001"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 10:02:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="632090682"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="632090682"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 26 Oct 2022 10:02:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 20:02:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 20:01:43 +0300
Message-Id: <20221026170150.2654-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
References: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/15] drm/i915/audio: Nuke intel_eld_uptodate()
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

No idea why we do this ELD comparions on g4x before loading
the new ELD. Seems entirely pointless so just get rid of it.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 33 ----------------------
 1 file changed, 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 093283fd1c28..7867eb670560 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -304,33 +304,6 @@ static int audio_config_hdmi_get_n(const struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
-static bool intel_eld_uptodate(struct drm_connector *connector,
-			       i915_reg_t reg_eldv, u32 bits_eldv,
-			       i915_reg_t reg_elda, u32 bits_elda,
-			       i915_reg_t reg_edid)
-{
-	struct drm_i915_private *i915 = to_i915(connector->dev);
-	const u8 *eld = connector->eld;
-	u32 tmp;
-	int i;
-
-	tmp = intel_de_read(i915, reg_eldv);
-	tmp &= bits_eldv;
-
-	if (!tmp)
-		return false;
-
-	tmp = intel_de_read(i915, reg_elda);
-	tmp &= ~bits_elda;
-	intel_de_write(i915, reg_elda, tmp);
-
-	for (i = 0; i < drm_eld_size(eld) / 4; i++)
-		if (intel_de_read(i915, reg_edid) != *((const u32 *)eld + i))
-			return false;
-
-	return true;
-}
-
 static void g4x_audio_codec_disable(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *old_crtc_state,
 				    const struct drm_connector_state *old_conn_state)
@@ -354,12 +327,6 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
 	u32 tmp;
 	int len, i;
 
-	if (intel_eld_uptodate(connector,
-			       G4X_AUD_CNTL_ST, G4X_ELD_VALID,
-			       G4X_AUD_CNTL_ST, G4X_ELD_ADDRESS_MASK,
-			       G4X_HDMIW_HDMIEDID))
-		return;
-
 	tmp = intel_de_read(i915, G4X_AUD_CNTL_ST);
 	tmp &= ~(G4X_ELD_VALID | G4X_ELD_ADDRESS_MASK);
 	len = REG_FIELD_GET(G4X_ELD_BUFFER_SIZE_MASK, tmp);
-- 
2.37.4

