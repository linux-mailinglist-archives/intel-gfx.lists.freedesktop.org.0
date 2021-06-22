Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFA23B0DF2
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 21:58:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20EE76E1BD;
	Tue, 22 Jun 2021 19:58:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3164C6E1BD
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 19:58:20 +0000 (UTC)
IronPort-SDR: d7DdYkzIcA1cIeoR4TLZXJraMSWrrq8Aql/HOwZzPpWwbMJyPpgeGGm7jJZ5MqwnX7i7LGkUMG
 1SBLpkGfv2fw==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="187514551"
X-IronPort-AV: E=Sophos;i="5.83,292,1616482800"; d="scan'208";a="187514551"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 12:58:19 -0700
IronPort-SDR: 9SyrK++RfignipaiV+5Hs+N4oQOF/UIBMD13hR/I22UjWcdYHrXPeIhBRjVTur5eXBl+iHvl3G
 WTwkZB/YacCQ==
X-IronPort-AV: E=Sophos;i="5.83,292,1616482800"; d="scan'208";a="406443483"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 12:58:17 -0700
Date: Tue, 22 Jun 2021 22:58:13 +0300
From: Imre Deak <imre.deak@intel.com>
To: Takashi Iwai <tiwai@suse.de>
Message-ID: <20210622195813.GE1749688@ideak-desk.fi.intel.com>
References: <20210621174415.1721198-1-imre.deak@intel.com>
 <s5h5yy6q8yh.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <s5h5yy6q8yh.wl-tiwai@suse.de>
Subject: Re: [Intel-gfx] [PATCH] ALSA: hda: Release display power reference
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
Cc: Thomas Voegtle <tv@lio96.de>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 22, 2021 at 04:18:14PM +0200, Takashi Iwai wrote:
> On Mon, 21 Jun 2021 19:44:15 +0200,
> Imre Deak wrote:
> > 
> > Make sure the HDA driver's display power reference is released during
> > shutdown/reboot.
> > 
> > During the shutdown/reboot sequence the pci device core calls the
> > pm_runtime_resume handler for all devices before calling the driver's
> > shutdown callback and so the HDA driver's runtime resume callback will
> > acquire a display power reference (on HSW/BDW). This triggers a power
> > reference held WARN on HSW/BDW in the i915 driver's subsequent shutdown
> > handler, which expects all display power references to be released by
> > that time.
> > 
> > Since the HDA controller is stopped in the shutdown handler in any case,
> > let's follow here the same sequence as the one during runtime suspend.
> > This will also reset the HDA link and drop the display power reference,
> > getting rid of the above WARN.
> 
> As kbuild bot suggested, __azx_runtime_suspend() is defined only with
> CONFIG_PM.  We need either moving the function out of ifdef CONFIG_PM
> block, or having CONFIG_PM conditional call there.

Thanks, missed that. I think we need to drop the power ref in the !CONFIG_PM
case as well (since AFAICS then the ref is held after the device is probed), so
I'd move __azx_runtime_suspend() out of the CONFIG_PM block (and perhaps rename
it to azx_shutdown_chip).

> I myself have no much preference,  but maybe the latter can be easier
> to be cherry-picked to stable kernels.

To my knowledge this only fixes the book-keeping in the i915 driver, so
not sure if it's a stable material.

Trying things now with !CONFIG_PM, I noticed that the HDA codec would still
keep a separate power reference (which was dropped for me with CONFIG_PM, as
the codec was runtime suspended). To fix that we'd need something like the
following (on top of the above changes in a separate patch), any
comments on it?:

diff --git a/include/sound/core.h b/include/sound/core.h
index c4ade121727df..5228dec658ad6 100644
--- a/include/sound/core.h
+++ b/include/sound/core.h
@@ -61,6 +61,7 @@ struct snd_device_ops {
 	int (*dev_free)(struct snd_device *dev);
 	int (*dev_register)(struct snd_device *dev);
 	int (*dev_disconnect)(struct snd_device *dev);
+	void (*dev_shutdown)(struct snd_device *dev);
 };
 
 struct snd_device {
@@ -314,6 +315,7 @@ void snd_device_disconnect(struct snd_card *card, void *device_data);
 void snd_device_disconnect_all(struct snd_card *card);
 void snd_device_free(struct snd_card *card, void *device_data);
 void snd_device_free_all(struct snd_card *card);
+void snd_device_shutdown_all(struct snd_card *card);
 int snd_device_get_state(struct snd_card *card, void *device_data);
 
 /* isadma.c */
diff --git a/sound/core/device.c b/sound/core/device.c
index bf0b04a7ee797..7c695f8a72f5b 100644
--- a/sound/core/device.c
+++ b/sound/core/device.c
@@ -238,6 +238,17 @@ void snd_device_free_all(struct snd_card *card)
 		__snd_device_free(dev);
 }
 
+void snd_device_shutdown_all(struct snd_card *card)
+{
+	struct snd_device *dev;
+
+	list_for_each_entry_reverse(dev, &card->devices, list) {
+		if (dev->ops->dev_shutdown)
+			dev->ops->dev_shutdown(dev);
+	}
+}
+EXPORT_SYMBOL_GPL(snd_device_shutdown_all);
+
 /**
  * snd_device_get_state - Get the current state of the given device
  * @card: the card instance
diff --git a/sound/pci/hda/hda_codec.c b/sound/pci/hda/hda_codec.c
index 5462f771c2f90..6da105bc57f58 100644
--- a/sound/pci/hda/hda_codec.c
+++ b/sound/pci/hda/hda_codec.c
@@ -866,6 +866,13 @@ static void snd_hda_codec_dev_release(struct device *dev)
 		kfree(codec);
 }
 
+static void snd_hda_codec_dev_shutdown(struct snd_device *device)
+{
+	struct hda_codec *codec = device->device_data;
+
+	codec_display_power(codec, false);
+}
+
 #define DEV_NAME_LEN 31
 
 static int snd_hda_codec_device_init(struct hda_bus *bus, struct snd_card *card,
@@ -930,6 +937,7 @@ int snd_hda_codec_device_new(struct hda_bus *bus, struct snd_card *card,
 	static const struct snd_device_ops dev_ops = {
 		.dev_register = snd_hda_codec_dev_register,
 		.dev_free = snd_hda_codec_dev_free,
+		.dev_shutdown = snd_hda_codec_dev_shutdown,
 	};
 
 	dev_dbg(card->dev, "%s: entry\n", __func__);
diff --git a/sound/pci/hda/hda_intel.c b/sound/pci/hda/hda_intel.c
index f5ab0b682adcc..6ca05c6633fc6 100644
--- a/sound/pci/hda/hda_intel.c
+++ b/sound/pci/hda/hda_intel.c
@@ -2382,8 +2382,10 @@ static void azx_shutdown(struct pci_dev *pci)
 	if (!card)
 		return;
 	chip = card->private_data;
-	if (chip && chip->running)
+	if (chip && chip->running) {
+		snd_device_shutdown_all(card);
 		azx_shutdown_chip(chip);
+	}
 }
 
 /* PCI IDs */

> thanks,
> 
> Takashi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
