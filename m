Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC20630CDD7
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 22:20:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BA216E9A1;
	Tue,  2 Feb 2021 21:20:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68CD16E0A2
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 21:20:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23777330-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Feb 2021 21:20:10 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Feb 2021 21:20:11 +0000
Message-Id: <20210202212011.28814-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210202212011.28814-1-chris@chris-wilson.co.uk>
References: <20210202212011.28814-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] Oops with "ALSA: jack: implement software jack
 injection via debugfs"
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

From: Takashi Iwai <tiwai@suse.de>

On Tue, 02 Feb 2021 17:30:36 +0100,
Chris Wilson wrote:
>
> commit 2d670ea2bd53 ("ALSA: jack: implement software jack injection via
> debugfs") is causing issues for our CI as we see a use-after-free on
> module unload (on all machines):
>
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9715/fi-skl-6700k2/pstore0-1612277467_Oops_1.txt

Could you try the patch below?  The unload test was completely
forgotten.

thanks,

Takashi

-- 8< --
From: Takashi Iwai <tiwai@suse.de>
Subject: [PATCH] ALSA: core: Fix the debugfs removal at snd_card_free()

The debugfs_remove() call should have been done at the right place
before the card object gets freed.

Fixes: 2d670ea2bd53 ("ALSA: jack: implement software jack injection via debugfs")
Signed-off-by: Takashi Iwai <tiwai@suse.de>
---
 sound/core/init.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/sound/core/init.c b/sound/core/init.c
index d4e78b176793..84b573e9c1f9 100644
--- a/sound/core/init.c
+++ b/sound/core/init.c
@@ -487,6 +487,10 @@ static int snd_card_do_free(struct snd_card *card)
 		dev_warn(card->dev, "unable to free card info\n");
 		/* Not fatal error */
 	}
+#ifdef CONFIG_SND_DEBUG
+	debugfs_remove(card->debugfs_root);
+	card->debugfs_root = NULL;
+#endif
 	if (card->release_completion)
 		complete(card->release_completion);
 	kfree(card);
@@ -537,11 +541,6 @@ int snd_card_free(struct snd_card *card)
 	/* wait, until all devices are ready for the free operation */
 	wait_for_completion(&released);
 
-#ifdef CONFIG_SND_DEBUG
-	debugfs_remove(card->debugfs_root);
-	card->debugfs_root = NULL;
-#endif
-
 	return 0;
 }
 EXPORT_SYMBOL(snd_card_free);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
