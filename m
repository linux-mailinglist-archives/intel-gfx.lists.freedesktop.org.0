Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B65125FB8C6
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 19:01:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7973210E8DB;
	Tue, 11 Oct 2022 17:00:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B5E010E8A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 17:00:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665507646; x=1697043646;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lJUHTE1SLsQalRdEUvbaQlLkjVcK7hkzLyLyTqDeFNI=;
 b=DYv08oOFP5EGGVAOPTGKvDWm+YkNRCCygusevFPb7HLewnlsNyCI/OrG
 01hAVtIsoWT6AM+CuP017lcytVL0nixFzOhNvhAQepUaUwAB6Qd3qm4Ti
 cMeSY8gUhFFmrlag9i15T2jbgO1YCKKvfavo+BQPgnNUWvHZOLK05c3+s
 3LC+n+yqjEvyxXZr3q+fUxfp2TFhab9sbSm//BSNIY65VTss14fW8tUvq
 e6hjr2f/Of9ZAi3S5DTVZ0NwAS0SAjqEC9zE1lwkeIsT/2kMPqCWpOFKp
 DPxXX7sYLQBFyRQkVjoFlej94rK/FvbojQGkJ8tjdXmhBMw64lzKLcXLm w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="390871949"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="390871949"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 10:00:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="621475604"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="621475604"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 11 Oct 2022 10:00:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Oct 2022 20:00:41 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 19:59:57 +0300
Message-Id: <20221011170011.17198-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/22] drm/i915/audio: Nuke intel_eld_uptodate()
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

No idea why we do this ELD comparions on g4x before loading
the new ELD. Seems entirely pointless so just get rid of it.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 33 ----------------------
 1 file changed, 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 9a286d70e281..3f328913fc90 100644
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
2.35.1

