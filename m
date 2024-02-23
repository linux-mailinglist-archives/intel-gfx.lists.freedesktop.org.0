Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2827C8610AC
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Feb 2024 12:45:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9DF210E045;
	Fri, 23 Feb 2024 11:44:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jkh6fR8t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70A5510E083
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Feb 2024 11:44:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708688697; x=1740224697;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZmPygFGWtyXY/k7V0UYpP1keYvjjSFA7st8mQ7lnUbE=;
 b=Jkh6fR8t8sKJiMvpjoyxZjM3uwxSq4takJhwhMLIfdu8zQcSvZ8uxReD
 AsvjHmIoKpUmwky/RhRjy3eBNRaMZpBtIx0SH4I9Kyst6P+ElehGiSLvZ
 WfuYf3US/bhnKqjy7VmSdmyT8Ne8v08UXW6sii4DhxJjHMogGziHLxeTx
 cp+TF8lTkhsn78b54c9r848gfLol1S4YuYpk0cyO3rpfzy9lfxOJuGR+p
 cOXckxOr24391FVqD6y2oXhZyEOB2Eu4+1qJ/asxE8SvStGlrkXLgX9ZH
 wHqG8Q4kiWvh9EwnSF9rICxuzFQvfJORYMFLXNBywF1yzA5RtLBcYjsy3 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="3504604"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="3504604"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2024 03:44:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="6092905"
Received: from crojewsk-ctrl.igk.intel.com ([10.102.9.28])
 by fmviesa006.fm.intel.com with ESMTP; 23 Feb 2024 03:44:54 -0800
From: Cezary Rojewski <cezary.rojewski@intel.com>
To: broonie@kernel.org
Cc: alsa-devel@alsa-project.org, linux-sound@vger.kernel.org, tiwai@suse.com,
 perex@perex.cz, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 tvrtko.ursulin@linux.intel.com, intel-gfx@lists.freedesktop.org,
 amadeuszx.slawinski@linux.intel.com, pierre-louis.bossart@linux.intel.com,
 hdegoede@redhat.com, Cezary Rojewski <cezary.rojewski@intel.com>
Subject: [PATCH v2 2/4] ASoC: codecs: hda: Skip HDMI/DP registration if i915
 is missing
Date: Fri, 23 Feb 2024 12:46:24 +0100
Message-Id: <20240223114626.1052784-3-cezary.rojewski@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240223114626.1052784-1-cezary.rojewski@intel.com>
References: <20240223114626.1052784-1-cezary.rojewski@intel.com>
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

If i915 does not support given platform but the hardware i.e.: HDAudio
codec is still there, the codec-probing procedure will succeed for such
device but the follow up initialization will always end up with -ENODEV.

While bus could filter out address '2' which Intel's HDMI/DP codecs
always enumerate on, more robust approach is to check for i915 presence
before registering display codecs.

Signed-off-by: Cezary Rojewski <cezary.rojewski@intel.com>
---
 sound/soc/codecs/hda.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/sound/soc/codecs/hda.c b/sound/soc/codecs/hda.c
index d2117e36ddd1..d9e7cd8aada2 100644
--- a/sound/soc/codecs/hda.c
+++ b/sound/soc/codecs/hda.c
@@ -350,6 +350,11 @@ static int hda_hdev_attach(struct hdac_device *hdev)
 	struct hda_codec *codec = dev_to_hda_codec(&hdev->dev);
 	struct snd_soc_component_driver *comp_drv;
 
+	if (hda_codec_is_display(codec) && !hdev->bus->audio_component) {
+		dev_dbg(&hdev->dev, "no i915, skip registration for 0x%08x\n", hdev->vendor_id);
+		return 0;
+	}
+
 	comp_drv = devm_kzalloc(&hdev->dev, sizeof(*comp_drv), GFP_KERNEL);
 	if (!comp_drv)
 		return -ENOMEM;
-- 
2.25.1

