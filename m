Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B073560E60C
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 19:02:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4000810E5F7;
	Wed, 26 Oct 2022 17:02:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F270010E5F5
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 17:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666803726; x=1698339726;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xR+DNSuHh41zSxTD4TM8wo10GIZSUkQ3OwbYyicS9xg=;
 b=K6N3jCHCCue+dB0Z12DqeKvIztfurCNl3tLEWlBs/2h7fY0rn6oIRnai
 kdQvP73VFEv01UCKRaW+1qCC5CXiJLzi1tRLp1a8ekyb40KXif2n8Zzss
 BA4omXrgGubCmYOMKFrk/fTEU2L3fzfM5GOpQWpmzJY1ffSHLG3RwqOln
 5QHpcU20K9ZnDljv/ci8eK7hoT2/21BFVtWAvyrEq/dPRMO5mkI5CtLqz
 0PHYW+Zfku+tVD9SpC+vZp+FBXXpWg/FCTlkhnfJYjF1UUrQ4OzWaCKyt
 ZLFiL2V35/apActhGgtfno1Gzj9kaFb4x5MDb2rLwCcXAwIs4AU5FVXkd w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="334624851"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="334624851"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 10:02:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="632090467"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="632090467"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 26 Oct 2022 10:02:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 20:02:01 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 20:01:38 +0300
Message-Id: <20221026170150.2654-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
References: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/15] drm/i915/audio: Remove CL/BLC audio stuff
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

We don't use the audio code on crestline (CL) since it doesn't
support native HDMI output, and SDVO has it's own way of doing
audio.

And Bearlake-C (BLC) doesn't even exist in the real world, so
no point it trying to deal with it.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c    | 23 ++++---------------
 .../gpu/drm/i915/display/intel_audio_regs.h   |  8 +------
 2 files changed, 6 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index c6e7cecc6690..b91167eaf71f 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -336,17 +336,11 @@ static void g4x_audio_codec_disable(struct intel_encoder *encoder,
 				    const struct drm_connector_state *old_conn_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	u32 eldv, tmp;
-
-	tmp = intel_de_read(i915, G4X_AUD_VID_DID);
-	if (tmp == INTEL_AUDIO_DEVBLC || tmp == INTEL_AUDIO_DEVCL)
-		eldv = G4X_ELDV_DEVCL_DEVBLC;
-	else
-		eldv = G4X_ELDV_DEVCTG;
+	u32 tmp;
 
 	/* Invalidate ELD */
 	tmp = intel_de_read(i915, G4X_AUD_CNTL_ST);
-	tmp &= ~eldv;
+	tmp &= ~G4X_ELDV;
 	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
 }
 
@@ -357,24 +351,17 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct drm_connector *connector = conn_state->connector;
 	const u8 *eld = connector->eld;
-	u32 eldv;
 	u32 tmp;
 	int len, i;
 
-	tmp = intel_de_read(i915, G4X_AUD_VID_DID);
-	if (tmp == INTEL_AUDIO_DEVBLC || tmp == INTEL_AUDIO_DEVCL)
-		eldv = G4X_ELDV_DEVCL_DEVBLC;
-	else
-		eldv = G4X_ELDV_DEVCTG;
-
 	if (intel_eld_uptodate(connector,
-			       G4X_AUD_CNTL_ST, eldv,
+			       G4X_AUD_CNTL_ST, G4X_ELDV,
 			       G4X_AUD_CNTL_ST, G4X_ELD_ADDR_MASK,
 			       G4X_HDMIW_HDMIEDID))
 		return;
 
 	tmp = intel_de_read(i915, G4X_AUD_CNTL_ST);
-	tmp &= ~(eldv | G4X_ELD_ADDR_MASK);
+	tmp &= ~(G4X_ELDV | G4X_ELD_ADDR_MASK);
 	len = (tmp >> 9) & 0x1f;		/* ELD buffer size */
 	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
 
@@ -384,7 +371,7 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
 			       *((const u32 *)eld + i));
 
 	tmp = intel_de_read(i915, G4X_AUD_CNTL_ST);
-	tmp |= eldv;
+	tmp |= G4X_ELDV;
 	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h b/drivers/gpu/drm/i915/display/intel_audio_regs.h
index e25248cdac51..ebbdd0654919 100644
--- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
@@ -8,14 +8,8 @@
 
 #include "i915_reg_defs.h"
 
-#define G4X_AUD_VID_DID			_MMIO(DISPLAY_MMIO_BASE(i915) + 0x62020)
-#define   INTEL_AUDIO_DEVCL		0x808629FB
-#define   INTEL_AUDIO_DEVBLC		0x80862801
-#define   INTEL_AUDIO_DEVCTG		0x80862802
-
 #define G4X_AUD_CNTL_ST			_MMIO(0x620B4)
-#define   G4X_ELDV_DEVCL_DEVBLC		(1 << 13)
-#define   G4X_ELDV_DEVCTG		(1 << 14)
+#define   G4X_ELDV			(1 << 14)
 #define   G4X_ELD_ADDR_MASK		(0xf << 5)
 #define   G4X_ELD_ACK			(1 << 4)
 #define G4X_HDMIW_HDMIEDID		_MMIO(0x6210C)
-- 
2.37.4

