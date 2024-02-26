Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A08867562
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 13:43:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3CBA10F151;
	Mon, 26 Feb 2024 12:43:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BRC9Akz1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 755AF10F151
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 12:43:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708951391; x=1740487391;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HNPW3gZaSH6fjCMtquzM1dI/vEaBhFuoLxGDia1XD9A=;
 b=BRC9Akz1jGmLw5hp/G0P4A7y6k7qu16OQGP5Vb7ifxplDZrF0fLWzh5B
 d2WuPdO9ka5ggKnAsFCRsBsylgAGuS9fL3+aJwXYZ0+k1Aqpv+gdW0ZW+
 5epb10JR81TsSyD7egmbmfD24He8+C/lpxNikopwIz1A+aM/HHOO7lu0b
 LFTr/gN0sEzYVUQ/y/icYD6gQjSL8esWmxkaGoJqtWDnefBhiq7KGKpGa
 lV6zmQES4gdtu+j8MBms8+pok1O4pHqgQfBpcUv7gDEqUTHhCHepq8S+g
 2Nv+S3y1qf5819sFpKTMxqWvWmsJ0NYsudfiV79sPFkxr3AfIt94KvEjY A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10995"; a="28658260"
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; d="scan'208";a="28658260"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 04:43:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; 
   d="scan'208";a="6688619"
Received: from crojewsk-ctrl.igk.intel.com ([10.102.9.28])
 by orviesa009.jf.intel.com with ESMTP; 26 Feb 2024 04:43:07 -0800
From: Cezary Rojewski <cezary.rojewski@intel.com>
To: broonie@kernel.org
Cc: alsa-devel@alsa-project.org, linux-sound@vger.kernel.org, tiwai@suse.com,
 perex@perex.cz, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 tvrtko.ursulin@linux.intel.com, intel-gfx@lists.freedesktop.org,
 amadeuszx.slawinski@linux.intel.com, pierre-louis.bossart@linux.intel.com,
 hdegoede@redhat.com, Cezary Rojewski <cezary.rojewski@intel.com>
Subject: [PATCH v3 4/5] ASoC: codecs: hda: Cleanup error messages
Date: Mon, 26 Feb 2024 13:44:31 +0100
Message-Id: <20240226124432.1203798-5-cezary.rojewski@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240226124432.1203798-1-cezary.rojewski@intel.com>
References: <20240226124432.1203798-1-cezary.rojewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Be cohesive and use same pattern in each error message.

Signed-off-by: Cezary Rojewski <cezary.rojewski@intel.com>
---
 sound/soc/codecs/hda.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/sound/soc/codecs/hda.c b/sound/soc/codecs/hda.c
index 7c6bedeceaa2..5a58723dc0e9 100644
--- a/sound/soc/codecs/hda.c
+++ b/sound/soc/codecs/hda.c
@@ -198,19 +198,19 @@ static int hda_codec_probe(struct snd_soc_component *component)
 	ret = snd_hda_codec_device_new(codec->bus, component->card->snd_card, hdev->addr, codec,
 				       false);
 	if (ret < 0) {
-		dev_err(&hdev->dev, "create hda codec failed: %d\n", ret);
+		dev_err(&hdev->dev, "codec create failed: %d\n", ret);
 		goto device_new_err;
 	}
 
 	ret = snd_hda_codec_set_name(codec, codec->preset->name);
 	if (ret < 0) {
-		dev_err(&hdev->dev, "name failed %s\n", codec->preset->name);
+		dev_err(&hdev->dev, "set name: %s failed: %d\n", codec->preset->name, ret);
 		goto err;
 	}
 
 	ret = snd_hdac_regmap_init(&codec->core);
 	if (ret < 0) {
-		dev_err(&hdev->dev, "regmap init failed\n");
+		dev_err(&hdev->dev, "regmap init failed: %d\n", ret);
 		goto err;
 	}
 
@@ -223,13 +223,13 @@ static int hda_codec_probe(struct snd_soc_component *component)
 
 	ret = patch(codec);
 	if (ret < 0) {
-		dev_err(&hdev->dev, "patch failed %d\n", ret);
+		dev_err(&hdev->dev, "codec init failed: %d\n", ret);
 		goto err;
 	}
 
 	ret = snd_hda_codec_parse_pcms(codec);
 	if (ret < 0) {
-		dev_err(&hdev->dev, "unable to map pcms to dai %d\n", ret);
+		dev_err(&hdev->dev, "unable to map pcms to dai: %d\n", ret);
 		goto parse_pcms_err;
 	}
 
-- 
2.25.1

