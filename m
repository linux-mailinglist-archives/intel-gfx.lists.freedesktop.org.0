Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8B63478B3
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Mar 2021 13:41:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE40E6E9F9;
	Wed, 24 Mar 2021 12:41:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D19EE6E9F9
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 12:41:33 +0000 (UTC)
IronPort-SDR: Y7sEeV2Sx3YXLc6AzTr0yKf9T3HBJHTK70ASitFYdsqxok00ScVwuVIg07AWDDpE66tGVF3OkQ
 fyVZV2PC2ddw==
X-IronPort-AV: E=McAfee;i="6000,8403,9932"; a="178251222"
X-IronPort-AV: E=Sophos;i="5.81,274,1610438400"; d="scan'208";a="178251222"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2021 05:41:31 -0700
IronPort-SDR: e/lfci7ism2fZgPg4RWYfloboJ//g9AmR4buU/a5xELrRymFhl+p0J5uF4vpCRQXh0R3d94+HD
 7jcxGG0sRf9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,274,1610438400"; d="scan'208";a="442951942"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Mar 2021 05:41:26 -0700
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Mar 2021 14:37:25 +0200
Message-Id: <20210324123725.4170214-1-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/audio: set HDA link parameters in
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
index 3ea20c857440..9671c8f6e892 100644
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
 
 	if (DISPLAY_VER(dev_priv) >= 9) {
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

base-commit: 9d58aa46291d4d696bb1eac3436d3118f7bf2573
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
