Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A403AF23B
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jun 2021 19:44:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9DF96E303;
	Mon, 21 Jun 2021 17:44:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D84F6E303
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Jun 2021 17:44:19 +0000 (UTC)
IronPort-SDR: GzUpvkf/WR0/t2p9BgGAjIScZ86IpTSlW3/PFiGQvwquTak5gxnTaYM+gKNkUXqchWNjvZz1Yl
 d//AuQuPIpmQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="194207363"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="194207363"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 10:44:18 -0700
IronPort-SDR: 9Gx63T2pVN19EQBf3AascBveZkqbJf6j51ZxTPUsQPOweazR3Cc4lICRHMNNAIXOz3BEAx2EOt
 Ri4B/RI0q4mw==
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="486577073"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 10:44:17 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Jun 2021 20:44:15 +0300
Message-Id: <20210621174415.1721198-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] ALSA: hda: Release display power reference
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
Cc: Takashi Iwai <tiwai@suse.de>, Thomas Voegtle <tv@lio96.de>
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

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3618
Reported-and-tested-by: Thomas Voegtle <tv@lio96.de>
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 sound/pci/hda/hda_intel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/pci/hda/hda_intel.c b/sound/pci/hda/hda_intel.c
index 7f8f11536a3dc..d0993c22c5e60 100644
--- a/sound/pci/hda/hda_intel.c
+++ b/sound/pci/hda/hda_intel.c
@@ -2383,7 +2383,7 @@ static void azx_shutdown(struct pci_dev *pci)
 		return;
 	chip = card->private_data;
 	if (chip && chip->running)
-		azx_stop_chip(chip);
+		__azx_runtime_suspend(chip);
 }
 
 /* PCI IDs */
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
