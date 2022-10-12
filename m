Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6995C5FC3F0
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 12:49:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB61210E3CC;
	Wed, 12 Oct 2022 10:49:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C688210E3CC
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 10:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665571780; x=1697107780;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nRBYW1V4AryzK+c2y1TbL52MWDkbAiZ1lOqhA8kgLoM=;
 b=BSKMHtnnHqlBb8vbZjWxa50h6FGEg6qNC9aHPs3fFkoEoFJFNVqzF3LB
 yBJtBCkAe0ZbJNJQxd/95lW0eS8xM+kOKZ1WXZwI6p5gcHM/fH+yT/Xu4
 yAgPQnV/bZ/9rUAUSpXmbi9lt/1PHGvChpXNSaMrEDIWHKGAyvL5xGjVS
 tnbqgrWVncllukR7laq6HZUvW0o/0zyhFJDCeL8HlF5df9c+88PuQjdrF
 NR2dd3XFr8mtFLy4uhQVJvh3PX3rV5X9qH0/nlBYDpKyHRkw140hYx30Z
 v8ywZ5q6Fj3UhvhdW01LzwUAPsZiW3Uujd/5O32fAO6eGjl0ygf3G+QRJ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="285142859"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="285142859"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 03:49:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="629064781"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="629064781"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 12 Oct 2022 03:49:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Oct 2022 13:49:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Oct 2022 13:49:36 +0300
Message-Id: <20221012104936.30911-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221011170011.17198-23-ville.syrjala@linux.intel.com>
References: <20221011170011.17198-23-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 22/22] drm/i915/audio: Resume HSW/BDW HDA
 controller around ELD access
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

On HSW/BDW the hardware ELD buffer does not work if the controller
is suspended. I'm not 100% which thing in there is needed to make it
work (at least just forcing the controller into D0 with setpci is
not enough). But a full runtime resume seems to do the trick here
at least, and so far it looks like this doesn't even deadlock or
anything.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 38 ++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 328c47719fd8..467f3f260969 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -23,6 +23,7 @@
 
 #include <linux/component.h>
 #include <linux/kernel.h>
+#include <linux/pm_runtime.h>
 
 #include <drm/drm_edid.h>
 #include <drm/i915_component.h>
@@ -480,6 +481,16 @@ hsw_audio_config_update(struct intel_encoder *encoder,
 		hsw_hdmi_audio_config_update(encoder, crtc_state);
 }
 
+static struct pci_dev *hsw_hda_controller(struct drm_i915_private *i915)
+{
+	int domain = pci_domain_nr(to_pci_dev(i915->drm.dev)->bus);
+
+	if (!IS_HASWELL(i915) && !IS_BROADWELL(i915))
+		return NULL;
+
+	return pci_get_domain_bus_and_slot(domain, 0, PCI_DEVFN(3, 0));
+}
+
 static int hsw_eld_buffer_size(struct drm_i915_private *i915,
 			       enum transcoder cpu_transcoder)
 {
@@ -497,8 +508,14 @@ static void hsw_audio_codec_get_config(struct intel_encoder *encoder,
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 *eld = (u32 *)crtc_state->eld;
 	int eld_buffer_size, len, i;
+	struct pci_dev *hsw_hdac;
 	u32 tmp;
 
+	/* on HSW/BDW ELD access doesn't work if the HDA controller is supended */
+	hsw_hdac = hsw_hda_controller(i915);
+	if (hsw_hdac)
+		pm_runtime_get_sync(&hsw_hdac->dev);
+
 	tmp = intel_de_read(i915, HSW_AUD_PIN_ELD_CP_VLD);
 	if ((tmp & AUDIO_ELD_VALID(cpu_transcoder)) == 0)
 		return;
@@ -511,6 +528,9 @@ static void hsw_audio_codec_get_config(struct intel_encoder *encoder,
 
 	for (i = 0; i < len; i++)
 		eld[i] = intel_de_read(i915, HSW_AUD_EDID_DATA(cpu_transcoder));
+
+	if (hsw_hdac)
+		pm_runtime_put(&hsw_hdac->dev);
 }
 
 static void hsw_audio_codec_disable(struct intel_encoder *encoder,
@@ -520,6 +540,12 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
+	struct pci_dev *hsw_hdac;
+
+	/* on HSW/BDW ELD access doesn't work if the HDA controller is supended */
+	hsw_hdac = hsw_hda_controller(i915);
+	if (hsw_hdac)
+		pm_runtime_get_sync(&hsw_hdac->dev);
 
 	mutex_lock(&i915->display.audio.mutex);
 
@@ -544,6 +570,9 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
 
 	mutex_unlock(&i915->display.audio.mutex);
+
+	if (hsw_hdac)
+		pm_runtime_put(&hsw_hdac->dev);
 }
 
 static unsigned int calc_hblank_early_prog(struct intel_encoder *encoder,
@@ -664,6 +693,12 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	const u32 *eld = (const u32 *)crtc_state->eld;
 	int eld_buffer_size, len, i;
+	struct pci_dev *hsw_hdac;
+
+	/* on HSW/BDW ELD access doesn't work if the HDA controller is supended */
+	hsw_hdac = hsw_hda_controller(i915);
+	if (hsw_hdac)
+		pm_runtime_get_sync(&hsw_hdac->dev);
 
 	mutex_lock(&i915->display.audio.mutex);
 
@@ -705,6 +740,9 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	hsw_audio_config_update(encoder, crtc_state);
 
 	mutex_unlock(&i915->display.audio.mutex);
+
+	if (hsw_hdac)
+		pm_runtime_put(&hsw_hdac->dev);
 }
 
 struct ilk_audio_regs {
-- 
2.35.1

