Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F473B1B7B
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 15:46:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D13896E8E8;
	Wed, 23 Jun 2021 13:46:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB56C6E8E8
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Jun 2021 13:46:06 +0000 (UTC)
IronPort-SDR: S0TN2TtP3VGm/qeG03jUzmXv0YTHSwRwDqomOIziVv3IEG6igjhrS/J+Fyep5Xh0zzvWzmFFjv
 N2itDN5uJbWw==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="194568430"
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="194568430"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 06:46:05 -0700
IronPort-SDR: lc/6KHCN2Sbrc8eQqTIdKMvL2kU5TG4vhfg37NL00WwxvcCTImDx9ygKR34uR+qcgMlDUNPaDr
 6IeZmYJy+n/A==
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="453039185"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 06:46:03 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Jun 2021 16:46:00 +0300
Message-Id: <20210623134601.2128663-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] ALSA: hda: Release controller display power
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
Cc: Takashi Iwai <tiwai@suse.de>, Thomas Voegtle <tv@lio96.de>,
 alsa-devel@alsa-project.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Make sure the HDA driver's display power reference is released during
shutdown/reboot.

During the shutdown/reboot sequence the pci device core calls the
pm_runtime_resume handler for all devices before calling the driver's
shutdown callback and so the HDA driver's runtime resume callback will
acquire a display power reference (on HSW/BDW). This triggers a power
reference held WARN on HSW/BDW in the i915 driver's subsequent shutdown
handler, which expects all display power references to be released by
that time.

Since the HDA controller is stopped in the shutdown handler in any case,
let's follow here the same sequence as the one during runtime suspend.
This will also reset the HDA link and drop the display power reference,
getting rid of the above WARN.

Tested on HSW.

v2:
- Fix the build for CONFIG_PM=n (Takashi)
- s/__azx_runtime_suspend/azx_shutdown_chip/

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3618
References: https://lore.kernel.org/lkml/cea1f9a-52e0-b83-593d-52997fe1aaf6@er-systems.de
Reported-and-tested-by: Thomas Voegtle <tv@lio96.de>
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 sound/pci/hda/hda_intel.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/sound/pci/hda/hda_intel.c b/sound/pci/hda/hda_intel.c
index 7f8f11536a3dc..f5ab0b682adcc 100644
--- a/sound/pci/hda/hda_intel.c
+++ b/sound/pci/hda/hda_intel.c
@@ -883,6 +883,14 @@ static unsigned int azx_get_pos_skl(struct azx *chip, struct azx_dev *azx_dev)
 	return azx_get_pos_posbuf(chip, azx_dev);
 }
 
+static void azx_shutdown_chip(struct azx *chip)
+{
+	azx_stop_chip(chip);
+	azx_enter_link_reset(chip);
+	azx_clear_irq_pending(chip);
+	display_power(chip, false);
+}
+
 #ifdef CONFIG_PM
 static DEFINE_MUTEX(card_list_lock);
 static LIST_HEAD(card_list);
@@ -942,14 +950,6 @@ static bool azx_is_pm_ready(struct snd_card *card)
 	return true;
 }
 
-static void __azx_runtime_suspend(struct azx *chip)
-{
-	azx_stop_chip(chip);
-	azx_enter_link_reset(chip);
-	azx_clear_irq_pending(chip);
-	display_power(chip, false);
-}
-
 static void __azx_runtime_resume(struct azx *chip)
 {
 	struct hda_intel *hda = container_of(chip, struct hda_intel, chip);
@@ -1028,7 +1028,7 @@ static int azx_suspend(struct device *dev)
 
 	chip = card->private_data;
 	bus = azx_bus(chip);
-	__azx_runtime_suspend(chip);
+	azx_shutdown_chip(chip);
 	if (bus->irq >= 0) {
 		free_irq(bus->irq, chip);
 		bus->irq = -1;
@@ -1107,7 +1107,7 @@ static int azx_runtime_suspend(struct device *dev)
 	/* enable controller wake up event */
 	azx_writew(chip, WAKEEN, azx_readw(chip, WAKEEN) | STATESTS_INT_MASK);
 
-	__azx_runtime_suspend(chip);
+	azx_shutdown_chip(chip);
 	trace_azx_runtime_suspend(chip);
 	return 0;
 }
@@ -2383,7 +2383,7 @@ static void azx_shutdown(struct pci_dev *pci)
 		return;
 	chip = card->private_data;
 	if (chip && chip->running)
-		azx_stop_chip(chip);
+		azx_shutdown_chip(chip);
 }
 
 /* PCI IDs */
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
