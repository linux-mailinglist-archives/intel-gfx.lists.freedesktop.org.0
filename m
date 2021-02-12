Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA1631A130
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 16:12:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D0816E5D3;
	Fri, 12 Feb 2021 15:12:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EBFE6E5D3
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 15:12:11 +0000 (UTC)
IronPort-SDR: TIG6Yo9RHewofVDokP0lVm3DXYQXZ/WGRfqjzU5dup8TqZuNvW+fytxaZfik2S1n59RAx7St6N
 1YAq0BjajOIA==
X-IronPort-AV: E=McAfee;i="6000,8403,9892"; a="162184770"
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="162184770"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 07:12:09 -0800
IronPort-SDR: 4ut0JG22D/T+3oYgxdtxkMtroN7GEu/AikDTrB67QQCca2E0MRr+M11e8dc+jM+1wPYhGqqTxV
 aB2ErBHpEU2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="376377240"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga002.jf.intel.com with ESMTP; 12 Feb 2021 07:12:08 -0800
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Feb 2021 17:08:38 +0200
Message-Id: <20210212150838.2568483-1-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/audio: set HDA link parameters in
 driver
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Update logic to program AUD_FREQ_CNTRL register based on new guidance.
Earlier this register was configured by BIOS and driver discovered the
value at init. This is no longer recommended and instead driver should
set the values based on the hardware revision.

Add the recommended values for all supported hardware. This change applies
for all GEN12+ hardware. For TGL, some special case handling is needed
to not break existing systems.

Extend the debug print to also include values of the register as written
by BIOS. This can help debug rare cases where BIOS has configured the link
settings to incorrect values.

Bspec: 49279
Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 30 ++++++++++++++++++----
 1 file changed, 25 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index f7de55707746..2c486284396d 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -1266,6 +1266,15 @@ static const struct component_ops i915_audio_component_bind_ops = {
 	.unbind	= i915_audio_component_unbind,
 };
 
+#define AUD_FREQ_TMODE_SHIFT	14
+#define AUD_FREQ_4T		0
+#define AUD_FREQ_8T		(2 << AUD_FREQ_TMODE_SHIFT)
+#define AUD_FREQ_PULLCLKS(x)	(((x) & 0x3) << 11)
+#define AUD_FREQ_BCLK_96M	BIT(4)
+
+#define AUD_FREQ_GEN12          (AUD_FREQ_8T | AUD_FREQ_PULLCLKS(0) | AUD_FREQ_BCLK_96M)
+#define AUD_FREQ_TGL_BROKEN     (AUD_FREQ_8T | AUD_FREQ_PULLCLKS(2) | AUD_FREQ_BCLK_96M)
+
 /**
  * i915_audio_component_init - initialize and register the audio component
  * @dev_priv: i915 device instance
@@ -1284,6 +1293,7 @@ static const struct component_ops i915_audio_component_bind_ops = {
  */
 static void i915_audio_component_init(struct drm_i915_private *dev_priv)
 {
+	u32 aud_freq, aud_freq_init;
 	int ret;
 
 	ret = component_add_typed(dev_priv->drm.dev,
@@ -1297,11 +1307,21 @@ static void i915_audio_component_init(struct drm_i915_private *dev_priv)
 	}
 
 	if (INTEL_GEN(dev_priv) >= 9) {
-		dev_priv->audio_freq_cntrl = intel_de_read(dev_priv,
-							   AUD_FREQ_CNTRL);
-		drm_dbg_kms(&dev_priv->drm,
-			    "init value of AUD_FREQ_CNTRL of 0x%x\n",
-			    dev_priv->audio_freq_cntrl);
+		aud_freq_init = intel_de_read(dev_priv, AUD_FREQ_CNTRL);
+
+		if (INTEL_GEN(dev_priv) >= 12)
+			aud_freq = AUD_FREQ_GEN12;
+		else
+			aud_freq = aud_freq_init;
+
+		/* use BIOS provided value for TGL unless it is a known bad value */
+		if (IS_TIGERLAKE(dev_priv) && aud_freq_init != AUD_FREQ_TGL_BROKEN)
+			aud_freq = aud_freq_init;
+
+		drm_dbg_kms(&dev_priv->drm, "use AUD_FREQ_CNTRL of 0x%x (init value 0x%x)\n",
+			    aud_freq, aud_freq_init);
+
+		dev_priv->audio_freq_cntrl = aud_freq;
 	}
 
 	dev_priv->audio_component_registered = true;

base-commit: 9d8fddf8579a2a20d0e8a8b631547069a62b953e
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
