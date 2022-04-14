Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0345501BF2
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 21:29:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 067BC10E284;
	Thu, 14 Apr 2022 19:29:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF90C10E284
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 19:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649964569; x=1681500569;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZF2/PHtfK1GxT/2LolrD2CSpVMLbSqinmkSNWWZJGck=;
 b=IJCbAamCld7yJHnPqOEAZremEepwXeuFyISW0m8UqGoTvRor4y/nfRuH
 aTIEVqQAtwr9xFEEuEplyot16rjDiJlz72t2aD1+KXAHz3IqnpXoo5W5q
 soqpIh7vsprKEAhrNrmHm/a15xGNITWZlfh9Msh98Pc1TeNQpKloQs6Wc
 Raqbu/NJ/3Aska7Oe2ewBc4QYnl/mDqhX1HypxEUMflZ1WFvfEo9Vr1TA
 C29fU2i7S1mo7Z7+s7bVbkxU0CxLzQMSYg0+sOrlEfZYRvc40LfcBbj5R
 2zJV48J+VpTGeG5gCmpWVm0/cS4UEE4Dj6+RuMsMSptMEW8QmapR/+kpx g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="263191998"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="263191998"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 12:29:29 -0700
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="573960186"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 12:29:28 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Apr 2022 20:31:47 +0200
Message-Id: <20220414183148.15884-3-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220414183148.15884-1-nirmoy.das@intel.com>
References: <20220414183148.15884-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] ALSA: hda: handle UAF at probe error
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Call snd_card_free_on_error() on probe error instead of
calling snd_card_free() which should handle devres call orders.

Issues: https://gitlab.freedesktop.org/drm/intel/-/issues/5701
Fixes: e8ad415b7a55 ("ALSA: core: Add managed card creation")
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 sound/pci/hda/hda_intel.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/sound/pci/hda/hda_intel.c b/sound/pci/hda/hda_intel.c
index 82a45f2b31c4..eb4228c9e37f 100644
--- a/sound/pci/hda/hda_intel.c
+++ b/sound/pci/hda/hda_intel.c
@@ -1730,7 +1730,9 @@ static void azx_check_snoop_available(struct azx *chip)
 static void azx_probe_work(struct work_struct *work)
 {
 	struct hda_intel *hda = container_of(work, struct hda_intel, probe_work.work);
-	azx_probe_continue(&hda->chip);
+	struct azx *chip = &hda->chip;
+
+	snd_card_free_on_error(&chip->pci->dev, azx_probe_continue(chip));
 }
 
 static int default_bdl_pos_adj(struct azx *chip)
@@ -2028,7 +2030,7 @@ static void azx_firmware_cb(const struct firmware *fw, void *context)
 		dev_err(card->dev, "Cannot load firmware, continue without patching\n");
 	if (!chip->disabled) {
 		/* continue probing */
-		azx_probe_continue(chip);
+		snd_card_free_on_error(&chip->pci->dev, azx_probe_continue(chip));
 	}
 }
 #endif
@@ -2338,7 +2340,6 @@ static int azx_probe_continue(struct azx *chip)
 out_free:
 	if (err < 0) {
 		pci_set_drvdata(pci, NULL);
-		snd_card_free(chip->card);
 		return err;
 	}
 
-- 
2.35.1

