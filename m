Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8B160E60D
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 19:02:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3267710E5F5;
	Wed, 26 Oct 2022 17:02:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A80110E5F5
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 17:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666803737; x=1698339737;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZM4vhf5r4WmHn/rz/Da8+znzxS05dGZ7vE4Bza0ZXso=;
 b=NMTYLahKLL/HMSgqbOVun8aaKeUHyudO/PTMfOQP+Y7SEu2Bn9g/3nk+
 ziTIO/+iFxNSJlrcrf/q8Rql8OInwSaCIqBBmeX8dBcf/RAy0ZXgfqlMv
 GfLU/cgtmlKub9/gabbGWhFQsUGFssXl2av1ScuTxqbb/Nzm+t0/Gyc3f
 Cpa4p97PLHS9DxZP3zke+omb8iR5CGyBqdHr0qfwDURbOsQIux0UettIf
 WheETJMhGLyQMI7slVU6rrJ3CLqlpwHaXlqZ7DLijN2EgjvTdtTPOR/df
 DlKHL1gEoikaorpfQqgCQk1F4qExkMD3/m6CwXA32eb2PSnI6Y4OazxAX Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="334624954"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="334624954"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 10:02:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="632090618"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="632090618"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 26 Oct 2022 10:02:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 20:02:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 20:01:41 +0300
Message-Id: <20221026170150.2654-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
References: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/15] drm/i915/audio: Unify register bit naming
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

Rename a few g4x bits to match the ibx+ bits.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c      | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_audio_regs.h |  4 ++--
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 29f2820c94c3..5d545d2ffb33 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -340,7 +340,7 @@ static void g4x_audio_codec_disable(struct intel_encoder *encoder,
 
 	/* Invalidate ELD */
 	tmp = intel_de_read(i915, G4X_AUD_CNTL_ST);
-	tmp &= ~G4X_ELDV;
+	tmp &= ~G4X_ELD_VALID;
 	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
 }
 
@@ -355,13 +355,13 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
 	int len, i;
 
 	if (intel_eld_uptodate(connector,
-			       G4X_AUD_CNTL_ST, G4X_ELDV,
-			       G4X_AUD_CNTL_ST, G4X_ELD_ADDR_MASK,
+			       G4X_AUD_CNTL_ST, G4X_ELD_VALID,
+			       G4X_AUD_CNTL_ST, G4X_ELD_ADDRESS_MASK,
 			       G4X_HDMIW_HDMIEDID))
 		return;
 
 	tmp = intel_de_read(i915, G4X_AUD_CNTL_ST);
-	tmp &= ~(G4X_ELDV | G4X_ELD_ADDR_MASK);
+	tmp &= ~(G4X_ELD_VALID | G4X_ELD_ADDRESS_MASK);
 	len = REG_FIELD_GET(G4X_ELD_BUFFER_SIZE_MASK, tmp);
 	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
 
@@ -371,7 +371,7 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
 			       *((const u32 *)eld + i));
 
 	tmp = intel_de_read(i915, G4X_AUD_CNTL_ST);
-	tmp |= G4X_ELDV;
+	tmp |= G4X_ELD_VALID;
 	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h b/drivers/gpu/drm/i915/display/intel_audio_regs.h
index b5684ed839be..4f432c2eb543 100644
--- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
@@ -9,9 +9,9 @@
 #include "i915_reg_defs.h"
 
 #define G4X_AUD_CNTL_ST			_MMIO(0x620B4)
-#define   G4X_ELDV			REG_BIT(14)
+#define   G4X_ELD_VALID			REG_BIT(14)
 #define   G4X_ELD_BUFFER_SIZE_MASK	REG_GENMASK(13, 9)
-#define   G4X_ELD_ADDR_MASK		REG_GENMASK(8, 5)
+#define   G4X_ELD_ADDRESS_MASK		REG_GENMASK(8, 5)
 #define   G4X_ELD_ACK			REG_BIT(4)
 #define G4X_HDMIW_HDMIEDID		_MMIO(0x6210C)
 
-- 
2.37.4

