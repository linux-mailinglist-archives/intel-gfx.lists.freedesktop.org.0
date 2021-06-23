Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 170D53B1B7A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 15:46:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DEA86E8E6;
	Wed, 23 Jun 2021 13:46:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B1526E8E6
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Jun 2021 13:46:07 +0000 (UTC)
IronPort-SDR: hg04hwAlJVLC5XIIxgdI+Z30WGq6nJlw12PfmDglyFg4jbQYN+51xe/n8gl6sRZ6obshh+DrLd
 Az0V/gSEKK9g==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="194568442"
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="194568442"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 06:46:07 -0700
IronPort-SDR: QmmaNyHPt/kDF2exNRI2+7bBZe9G4nt/yVAQCu1fTk9gokGRCW0YPhozcX57YLRoNMcZcoj8xy
 XKITrhfi37tA==
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="453039198"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 06:46:06 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Jun 2021 16:46:01 +0300
Message-Id: <20210623134601.2128663-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210623134601.2128663-1-imre.deak@intel.com>
References: <20210623134601.2128663-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] ALSA: hda: Release codec display power
 during shutdown/reboot
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
Cc: Takashi Iwai <tiwai@suse.de>, alsa-devel@alsa-project.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Similarly to the previous patch for the HDA controller make sure here
that codecs also drop the display power reference during shutdown and
reboot.

This fixes a power ref leaked WARN in i915 during shutdown if the HDA
driver is built with CONFIG_PM=n.

Suggested-by: Takashi Iwai <tiwai@suse.de>
References: https://gitlab.freedesktop.org/drm/intel/-/issues/3618
References: https://lore.kernel.org/intel-gfx/s5hzgvhngw6.wl-tiwai@suse.de
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 sound/pci/hda/hda_bind.c  |  7 +++++--
 sound/pci/hda/hda_codec.c | 10 +++++-----
 sound/pci/hda/hda_local.h |  2 ++
 3 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/sound/pci/hda/hda_bind.c b/sound/pci/hda/hda_bind.c
index 17a25e453f60c..e8dee24c309da 100644
--- a/sound/pci/hda/hda_bind.c
+++ b/sound/pci/hda/hda_bind.c
@@ -167,8 +167,11 @@ static void hda_codec_driver_shutdown(struct device *dev)
 {
 	struct hda_codec *codec = dev_to_hda_codec(dev);
 
-	if (!pm_runtime_suspended(dev) && codec->patch_ops.reboot_notify)
-		codec->patch_ops.reboot_notify(codec);
+	if (!pm_runtime_suspended(dev)) {
+		if (codec->patch_ops.reboot_notify)
+			codec->patch_ops.reboot_notify(codec);
+		snd_hda_codec_display_power(codec, false);
+	}
 }
 
 int __hda_codec_driver_register(struct hda_codec_driver *drv, const char *name,
diff --git a/sound/pci/hda/hda_codec.c b/sound/pci/hda/hda_codec.c
index 5462f771c2f90..7a717e1511569 100644
--- a/sound/pci/hda/hda_codec.c
+++ b/sound/pci/hda/hda_codec.c
@@ -798,7 +798,7 @@ static unsigned int hda_set_power_state(struct hda_codec *codec,
 				unsigned int power_state);
 
 /* enable/disable display power per codec */
-static void codec_display_power(struct hda_codec *codec, bool enable)
+void snd_hda_codec_display_power(struct hda_codec *codec, bool enable)
 {
 	if (codec->display_power_control)
 		snd_hdac_display_power(&codec->bus->core, codec->addr, enable);
@@ -810,7 +810,7 @@ void snd_hda_codec_register(struct hda_codec *codec)
 	if (codec->registered)
 		return;
 	if (device_is_registered(hda_codec_dev(codec))) {
-		codec_display_power(codec, true);
+		snd_hda_codec_display_power(codec, true);
 		pm_runtime_enable(hda_codec_dev(codec));
 		/* it was powered up in snd_hda_codec_new(), now all done */
 		snd_hda_power_down(codec);
@@ -836,7 +836,7 @@ static int snd_hda_codec_dev_free(struct snd_device *device)
 	 */
 	if (codec->core.type == HDA_DEV_LEGACY)
 		snd_hdac_device_unregister(&codec->core);
-	codec_display_power(codec, false);
+	snd_hda_codec_display_power(codec, false);
 
 	/*
 	 * In the case of ASoC HD-audio bus, the device refcount is released in
@@ -2893,7 +2893,7 @@ static int hda_codec_runtime_suspend(struct device *dev)
 	    (codec_has_clkstop(codec) && codec_has_epss(codec) &&
 	     (state & AC_PWRST_CLK_STOP_OK)))
 		snd_hdac_codec_link_down(&codec->core);
-	codec_display_power(codec, false);
+	snd_hda_codec_display_power(codec, false);
 	return 0;
 }
 
@@ -2905,7 +2905,7 @@ static int hda_codec_runtime_resume(struct device *dev)
 	if (!codec->card)
 		return 0;
 
-	codec_display_power(codec, true);
+	snd_hda_codec_display_power(codec, true);
 	snd_hdac_codec_link_up(&codec->core);
 	hda_call_codec_resume(codec);
 	pm_runtime_mark_last_busy(dev);
diff --git a/sound/pci/hda/hda_local.h b/sound/pci/hda/hda_local.h
index 4c5589c10f1d6..8d2503e8dad86 100644
--- a/sound/pci/hda/hda_local.h
+++ b/sound/pci/hda/hda_local.h
@@ -709,6 +709,8 @@ void snd_hdmi_write_eld_info(struct hdmi_eld *eld,
 #define SND_PRINT_CHANNEL_ALLOCATION_ADVISED_BUFSIZE 80
 void snd_print_channel_allocation(int spk_alloc, char *buf, int buflen);
 
+void snd_hda_codec_display_power(struct hda_codec *codec, bool enable);
+
 /*
  */
 #define codec_err(codec, fmt, args...) \
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
