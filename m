Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FFC501BF1
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 21:29:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7683210E2B4;
	Thu, 14 Apr 2022 19:29:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84AD910E230
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 19:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649964568; x=1681500568;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=f1RtptW/eB+VXD/uy/33txufQYgO9SsgPC8EVo1NPIE=;
 b=VjeIUqILU7zIdUVx5ZhnuLGM4GBeHUpgRnn+QfHv2Gpt501nrOFX1Gx+
 BPEO4R4Zfyuk+LZBsEdIDYBI8JEYdm3VFhlinhuDHwWS1R89/coK5Xyx5
 19uMTPixDoKA4h2J1tE4qamyBFaSdm/JbE6PHYsYckDBE/edxShJUVGft
 +sjupswAT1Uu+GI4B9ulGDEfpgk/XtWTN817HHUpyJT6ipgWL/bFyqh36
 U9DHifarwh7uk5Y0V7Nc56e/UEVx2YN6GRQNdaLtk4iZd3NDevo3nhdn7
 WtidvBvRyWjXRIeGzXioa7xZas277UDrpCUet4sYLXIjbWtGUa79zsvD6 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="263191996"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="263191996"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 12:29:28 -0700
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="573960182"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 12:29:27 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Apr 2022 20:31:46 +0200
Message-Id: <20220414183148.15884-2-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220414183148.15884-1-nirmoy.das@intel.com>
References: <20220414183148.15884-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] ALSA: core: Add snd_card_free_on_error()
 helper
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

From: Takashi Iwai <tiwai@suse.de>

This is a small helper function to handle the error path more easily
when an error happens during the probe for the device with the
device-managed card.  Since devres releases in the reverser order of
the creations, usually snd_card_free() gets called at the last in the
probe error path unless it already reached snd_card_register() calls.
Due to this nature, when a driver expects the resource releases in
card->private_free, this might be called too lately.

As a workaround, one should call the probe like:

 static int __some_probe(...) { // do real probe.... }

 static int some_probe(...)
 {
	return snd_card_free_on_error(dev, __some_probe(dev, ...));
 }

so that the snd_card_free() is called explicitly at the beginning of
the error path from the probe.

This function will be used in the upcoming fixes to address the
regressions by devres usages.

Fixes: e8ad415b7a55 ("ALSA: core: Add managed card creation")
Cc: <stable@vger.kernel.org>
Link: https://lore.kernel.org/r/20220412093141.8008-2-tiwai@suse.de
Signed-off-by: Takashi Iwai <tiwai@suse.de>
---
 include/sound/core.h |  1 +
 sound/core/init.c    | 28 ++++++++++++++++++++++++++++
 2 files changed, 29 insertions(+)

diff --git a/include/sound/core.h b/include/sound/core.h
index b7e9b58d3c78..6d4cc49584c6 100644
--- a/include/sound/core.h
+++ b/include/sound/core.h
@@ -284,6 +284,7 @@ int snd_card_disconnect(struct snd_card *card);
 void snd_card_disconnect_sync(struct snd_card *card);
 int snd_card_free(struct snd_card *card);
 int snd_card_free_when_closed(struct snd_card *card);
+int snd_card_free_on_error(struct device *dev, int ret);
 void snd_card_set_id(struct snd_card *card, const char *id);
 int snd_card_register(struct snd_card *card);
 int snd_card_info_init(void);
diff --git a/sound/core/init.c b/sound/core/init.c
index 31ba7024e3ad..726a8353201f 100644
--- a/sound/core/init.c
+++ b/sound/core/init.c
@@ -209,6 +209,12 @@ static void __snd_card_release(struct device *dev, void *data)
  * snd_card_register(), the very first devres action to call snd_card_free()
  * is added automatically.  In that way, the resource disconnection is assured
  * at first, then released in the expected order.
+ *
+ * If an error happens at the probe before snd_card_register() is called and
+ * there have been other devres resources, you'd need to free the card manually
+ * via snd_card_free() call in the error; otherwise it may lead to UAF due to
+ * devres call orders.  You can use snd_card_free_on_error() helper for
+ * handling it more easily.
  */
 int snd_devm_card_new(struct device *parent, int idx, const char *xid,
 		      struct module *module, size_t extra_size,
@@ -235,6 +241,28 @@ int snd_devm_card_new(struct device *parent, int idx, const char *xid,
 }
 EXPORT_SYMBOL_GPL(snd_devm_card_new);
 
+/**
+ * snd_card_free_on_error - a small helper for handling devm probe errors
+ * @dev: the managed device object
+ * @ret: the return code from the probe callback
+ *
+ * This function handles the explicit snd_card_free() call at the error from
+ * the probe callback.  It's just a small helper for simplifying the error
+ * handling with the managed devices.
+ */
+int snd_card_free_on_error(struct device *dev, int ret)
+{
+	struct snd_card *card;
+
+	if (!ret)
+		return 0;
+	card = devres_find(dev, __snd_card_release, NULL, NULL);
+	if (card)
+		snd_card_free(card);
+	return ret;
+}
+EXPORT_SYMBOL_GPL(snd_card_free_on_error);
+
 static int snd_card_init(struct snd_card *card, struct device *parent,
 			 int idx, const char *xid, struct module *module,
 			 size_t extra_size)
-- 
2.35.1

