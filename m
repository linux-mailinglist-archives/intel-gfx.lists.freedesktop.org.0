Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCE75FB8D8
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 19:02:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1416A10E98E;
	Tue, 11 Oct 2022 17:02:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53DCC10E8A9
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 17:02:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665507733; x=1697043733;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ci4a7ErKsHWnDWQqenCfUZAwLxjY0bw1m8gIMeDeMWk=;
 b=GfOS9deTElr7TQGhAo9enqc0gsUD/L4KpZhpeyuzwVqsqHTMT87FhwtX
 I0g4RADaKXTooKLX3qpBfw+4GdUMYHwk9pjxG9fT6Zq7MQcVygdABk0Rj
 YjCQH/wqQTEyFjrnr0bGp8asLsSZLkhd6T8HrMrxD6DR0aR3yIrunckDP
 9PLqEkJb7G9Liz1Bvle9o8tZVooLr2eixjBibPXzGKzcSDy/uGA+5WdCV
 ktWVZ3sKOdScRP8AVjb7cu3c3OwT5bQZ47REVsvRxH+hsSF2fnb2UW/EL
 6lbV1H2pJ7aHD8rZdZVpXoJXZrz7WYALUfxuFAFKkVylvUClNGezBXFw1 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="291885315"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="291885315"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 10:00:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="621475363"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="621475363"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 11 Oct 2022 10:00:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Oct 2022 20:00:22 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 19:59:52 +0300
Message-Id: <20221011170011.17198-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/22] drm/i915/audio: Remove CL/BLC audio stuff
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

We don't use the audio code on crestline (CL) since it doesn't
support native HDMI output, and SDVO has it's own way of doing
audio.

And Bearlake-C (BLC) doesn't even exist in the real world, so
no point it trying to deal with it.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c    | 23 ++++---------------
 .../gpu/drm/i915/display/intel_audio_regs.h   |  8 +------
 2 files changed, 6 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index b6165bb57503..5517e0a6d868 100644
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
2.35.1

