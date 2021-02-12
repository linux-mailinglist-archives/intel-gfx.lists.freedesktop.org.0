Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5E431A0F2
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 15:56:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F39206E192;
	Fri, 12 Feb 2021 14:56:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 577C56E192
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 14:56:33 +0000 (UTC)
IronPort-SDR: DctXkZ+1R4ihyAmX9ELKDKNcuNlnM8vJBF7Ei9uxj6CQilQ3uiUIKD4Qs/2vNna+4fKW/MdgkY
 Klsy1u01vdaw==
X-IronPort-AV: E=McAfee;i="6000,8403,9892"; a="182555815"
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="182555815"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 06:56:32 -0800
IronPort-SDR: HVJ1G1loTqr5MqU88BcoUq5lJUOgtqzh+HZZPOBhEdCAqUM40ulInQja3LXISniBepPzGtBl86
 19ixALlUasKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="376373941"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga002.jf.intel.com with ESMTP; 12 Feb 2021 06:56:31 -0800
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Feb 2021 16:53:02 +0200
Message-Id: <20210212145302.2461406-1-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] Revert "HAX sound: Disable probing snd_hda with
 DG1"
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
Cc: lucas.demarchi@intel.com, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts commit 3632610d38316bca9b0cd9d649ce3cefab58520a.

DG1 has been supported in upstream since v5.10 with commit
69b08bdfa818 ("ALSA: hda - add Intel DG1 PCI and HDMI ids").

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
---
 sound/hda/hdac_i915.c     | 23 -----------------------
 sound/pci/hda/hda_intel.c |  2 ++
 2 files changed, 2 insertions(+), 23 deletions(-)

diff --git a/sound/hda/hdac_i915.c b/sound/hda/hdac_i915.c
index fbca4bf53a47..454474ac5716 100644
--- a/sound/hda/hdac_i915.c
+++ b/sound/hda/hdac_i915.c
@@ -128,26 +128,6 @@ static bool i915_gfx_present(void)
 	return pci_dev_present(ids);
 }
 
-static bool dg1_gfx_present(void)
-{
-	static const struct pci_device_id ids[] = {
-		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x4905),
-		  .class = PCI_BASE_CLASS_DISPLAY << 16,
-		  .class_mask = 0xff << 16 },
-		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x4906),
-		  .class = PCI_BASE_CLASS_DISPLAY << 16,
-		  .class_mask = 0xff << 16 },
-		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x4907),
-		  .class = PCI_BASE_CLASS_DISPLAY << 16,
-		  .class_mask = 0xff << 16 },
-		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x4908),
-		  .class = PCI_BASE_CLASS_DISPLAY << 16,
-		  .class_mask = 0xff << 16 },
-		{}
-	};
-	return pci_dev_present(ids);
-}
-
 /**
  * snd_hdac_i915_init - Initialize i915 audio component
  * @bus: HDA core bus
@@ -168,9 +148,6 @@ int snd_hdac_i915_init(struct hdac_bus *bus)
 	if (!i915_gfx_present())
 		return -ENODEV;
 
-	if (dg1_gfx_present())
-		return -ENODEV;
-
 	err = snd_hdac_acomp_init(bus, NULL,
 				  i915_component_master_match,
 				  sizeof(struct i915_audio_component) - sizeof(*acomp));
diff --git a/sound/pci/hda/hda_intel.c b/sound/pci/hda/hda_intel.c
index bdd5b01b0222..5a50d3a46445 100644
--- a/sound/pci/hda/hda_intel.c
+++ b/sound/pci/hda/hda_intel.c
@@ -2293,6 +2293,8 @@ static int azx_probe_continue(struct azx *chip)
 			 * codecs can be on the same link.
 			 */
 			if (CONTROLLER_IN_GPU(pci)) {
+				dev_err(chip->card->dev,
+					"HSW/BDW HD-audio HDMI/DP requires binding with gfx driver\n");
 				goto out_free;
 			} else {
 				/* don't bother any longer */

base-commit: be9bde5a8b7b5cff58bd01c8ca094d571295c40b
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
