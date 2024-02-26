Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A206867560
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 13:43:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B775010F152;
	Mon, 26 Feb 2024 12:43:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jbo7vgTr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF5AC10F151
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 12:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708951384; x=1740487384;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z8lPSEjbSrtzAuUskaODEdGF5O7WHGh3H8vOdHVof2M=;
 b=jbo7vgTrntm1NQeHWbG0VCFXwoPAiAPToQ8S9qugayQSZHLKlU/Rz2Kc
 mPsJ4nUUT1xEAvdLJhhg61nEeCE2HMnQyVfjsSLNDVoMEkXjkT1ON9sI4
 NZJ8U/cZCglXsVcIlRpNjKfs1r+kB9XI581adLLgWmacPXmPERUZN/kLg
 WHyM5XDLho8o4qFTIoYveiRYTI9S4c14tyXl6uF7kRAeibrG0dDiVYzJV
 ryxzE+G9j/SHzRxPjRGARXDef4YED5D46XrsPZ3TZZUPdvmf9rfz0WX+S
 o0y1FWv5KFDri2sfTIYDTmwW8uz/imItPotph4m+FZXk1Fx9ptHDlUIX8 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10995"; a="28658241"
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; d="scan'208";a="28658241"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 04:43:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; 
   d="scan'208";a="6688613"
Received: from crojewsk-ctrl.igk.intel.com ([10.102.9.28])
 by orviesa009.jf.intel.com with ESMTP; 26 Feb 2024 04:43:01 -0800
From: Cezary Rojewski <cezary.rojewski@intel.com>
To: broonie@kernel.org
Cc: alsa-devel@alsa-project.org, linux-sound@vger.kernel.org, tiwai@suse.com,
 perex@perex.cz, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 tvrtko.ursulin@linux.intel.com, intel-gfx@lists.freedesktop.org,
 amadeuszx.slawinski@linux.intel.com, pierre-louis.bossart@linux.intel.com,
 hdegoede@redhat.com, Cezary Rojewski <cezary.rojewski@intel.com>
Subject: [PATCH v3 2/5] ASoC: codecs: hda: Skip HDMI/DP registration if i915
 is missing
Date: Mon, 26 Feb 2024 13:44:29 +0100
Message-Id: <20240226124432.1203798-3-cezary.rojewski@intel.com>
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
index d2117e36ddd1..7c6bedeceaa2 100644
--- a/sound/soc/codecs/hda.c
+++ b/sound/soc/codecs/hda.c
@@ -350,6 +350,11 @@ static int hda_hdev_attach(struct hdac_device *hdev)
 	struct hda_codec *codec = dev_to_hda_codec(&hdev->dev);
 	struct snd_soc_component_driver *comp_drv;
 
+	if (hda_codec_is_display(codec) && !hdev->bus->audio_component) {
+		dev_dbg(&hdev->dev, "no i915, skip registration for 0x%08x\n", hdev->vendor_id);
+		return -ENODEV;
+	}
+
 	comp_drv = devm_kzalloc(&hdev->dev, sizeof(*comp_drv), GFP_KERNEL);
 	if (!comp_drv)
 		return -ENOMEM;
-- 
2.25.1

