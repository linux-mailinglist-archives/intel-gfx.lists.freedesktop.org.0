Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72ED41849E5
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 15:48:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9E446EBE2;
	Fri, 13 Mar 2020 14:48:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D72D6EBE2
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2020 14:48:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 07:48:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,549,1574150400"; d="scan'208";a="444331182"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmsmga006.fm.intel.com with ESMTP; 13 Mar 2020 07:48:40 -0700
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	ville.syrjala@linux.intel.com
Date: Fri, 13 Mar 2020 16:48:21 +0200
Message-Id: <20200313144821.29592-2-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200313144821.29592-1-kai.vehmanen@linux.intel.com>
References: <20200313144821.29592-1-kai.vehmanen@linux.intel.com>
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: move audio CDCLK constraint setup
 to bind/unbind
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
Cc: tiwai@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When the iDisp HDA interface between display and audio is brought
out from reset, the link parameters must be correctly set before
reset. This requires the audio driver to call i915 get_power()
whenever it brings the HDA audio controller from reset. This is
e.g. done every time audio controller is resumed from runtime
suspend.

The current solution of modifying min_cdclk in get_power()/put_power()
can lead to display flicker as events such as playback of UI sounds
may indirectly cause a modeset change.

As we need to extend the CDCLK>=2*BCLK constraint to more platforms
beyond GLK, a more robust solution is needed to this problem.

This patch moves modifying the min_cdclk at audio component bind
phase and extends coverage to all gen9+ platforms. This effectively
guarantees that whenever audio driver is loaded and bound to i915,
CDCLK is guaranteed to be such that calls to get_power()/put_power()
do not result in display artifacts.

If 2*BCLK is below lowest CDCLK, this patch has no effect.

If a future platform provides means to change CDCLK without
a modeset, the constraint code can be moved to get/put_power()
for these platforms.

Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index e6389b9c2044..4e4832741ecf 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -902,10 +902,6 @@ static unsigned long i915_audio_component_get_power(struct device *kdev)
 				    dev_priv->audio_freq_cntrl);
 		}
 
-		/* Force CDCLK to 2*BCLK as long as we need audio powered. */
-		if (IS_GEMINILAKE(dev_priv))
-			glk_force_audio_cdclk(dev_priv, true);
-
 		if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
 			intel_de_write(dev_priv, AUD_PIN_BUF_CTL,
 				       (intel_de_read(dev_priv, AUD_PIN_BUF_CTL) | AUD_PIN_BUF_ENABLE));
@@ -919,11 +915,7 @@ static void i915_audio_component_put_power(struct device *kdev,
 {
 	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
 
-	/* Stop forcing CDCLK to 2*BCLK if no need for audio to be powered. */
-	if (--dev_priv->audio_power_refcount == 0)
-		if (IS_GEMINILAKE(dev_priv))
-			glk_force_audio_cdclk(dev_priv, false);
-
+	dev_priv->audio_power_refcount--;
 	intel_display_power_put(dev_priv, POWER_DOMAIN_AUDIO, cookie);
 }
 
@@ -1114,6 +1106,13 @@ static int i915_audio_component_bind(struct device *i915_kdev,
 					 DL_FLAG_STATELESS)))
 		return -ENOMEM;
 
+	/*
+	 * To avoid display flicker due to frequent CDCLK changes from
+	 * get/put_power(), set up CDCLK>=2*BCLK constraint here.
+	 */
+	if (INTEL_GEN(dev_priv) >= 9)
+		glk_force_audio_cdclk(dev_priv, true);
+
 	drm_modeset_lock_all(&dev_priv->drm);
 	acomp->base.ops = &i915_audio_component_ops;
 	acomp->base.dev = i915_kdev;
@@ -1132,6 +1131,9 @@ static void i915_audio_component_unbind(struct device *i915_kdev,
 	struct i915_audio_component *acomp = data;
 	struct drm_i915_private *dev_priv = kdev_to_i915(i915_kdev);
 
+	if (INTEL_GEN(dev_priv) >= 9)
+		glk_force_audio_cdclk(dev_priv, false);
+
 	drm_modeset_lock_all(&dev_priv->drm);
 	acomp->base.ops = NULL;
 	acomp->base.dev = NULL;
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
