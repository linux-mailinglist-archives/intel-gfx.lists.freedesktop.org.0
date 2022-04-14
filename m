Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42328501BF3
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 21:29:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 470E210E2BD;
	Thu, 14 Apr 2022 19:29:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A30310E284
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 19:29:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649964570; x=1681500570;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZF2/PHtfK1GxT/2LolrD2CSpVMLbSqinmkSNWWZJGck=;
 b=IUgesFsNgsd0ScDA1QAixJdz7iwu1Q1BuK8Kfam3GQAXe/4PKMM+/YJH
 SnH0CsiBehzMa8koxrbwz/RUBhOHXrxuIjttpXHxqAvxx7RoFhh8CbYZL
 Rde8xysxNmxNUDAzSWtsPGw0mHcaDaT+1OdhKJL+WTblkckvQYDratpUM
 sIYRf3Fbi+NfxrOCUf8HxjhQkMG7ZZKNwBb1xHmrp7eIqbV1ozaRup/ZI
 UuwjQqOU/hUkcdu2RyuzdPd3a8XKirFwRSQQL1S0DBHVIXsr/pDdS2cRc
 1VQFbh3t5/3IyQ0HVNEK4wiYX4y+Xf0mo+a8A3Bjeqi4hE/TVMvIojfpA w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="263191999"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="263191999"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 12:29:30 -0700
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="573960193"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 12:29:29 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Apr 2022 20:31:48 +0200
Message-Id: <20220414183148.15884-4-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220414183148.15884-1-nirmoy.das@intel.com>
References: <20220414183148.15884-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] ALSA: hda: handle UAF at probe error
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

