Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 247EB867561
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 13:43:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A09810E71D;
	Mon, 26 Feb 2024 12:43:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jXwEre8t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39CDA10F151
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 12:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708951387; x=1740487387;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oTHR95JWcz0ap604v+zFjYvXKhk2SC2e8b03VMGFeXk=;
 b=jXwEre8tnQe4YpbceKbF4QkyvJnmiFxy/iSKZQU79bYXa1L2TYjM3mVa
 00Xk6QYT4Oy/s9lYIyIpQWF3YcCfSifsGPHQ3j73RscpAkzG1p/NMJ6O+
 CoXIBDrbEG4d+B4BNiWhn50ScbISDtgDDQBY8QPNTfLod1VOBNGxADxS9
 x8k955PjCmNu1R/2s9UxceXctvwlW6pRBZVYk893JiJQ5gX4icdmeriCY
 YO95t/zruPnAOwSi40A9J6WV3jTENh2nR7oRPDmG7+J4qoI+sGVtQookF
 CxTTiiDduoiJwziUC+LAiXHugIlLJNEs9LBoBIHSiQlsMHBy7ZNCQbhlD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10995"; a="28658250"
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; d="scan'208";a="28658250"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 04:43:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; 
   d="scan'208";a="6688616"
Received: from crojewsk-ctrl.igk.intel.com ([10.102.9.28])
 by orviesa009.jf.intel.com with ESMTP; 26 Feb 2024 04:43:04 -0800
From: Cezary Rojewski <cezary.rojewski@intel.com>
To: broonie@kernel.org
Cc: alsa-devel@alsa-project.org, linux-sound@vger.kernel.org, tiwai@suse.com,
 perex@perex.cz, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 tvrtko.ursulin@linux.intel.com, intel-gfx@lists.freedesktop.org,
 amadeuszx.slawinski@linux.intel.com, pierre-louis.bossart@linux.intel.com,
 hdegoede@redhat.com, Cezary Rojewski <cezary.rojewski@intel.com>
Subject: [PATCH v3 3/5] ASoC: Intel: avs: Ignore codecs with no suppoting
 driver
Date: Mon, 26 Feb 2024 13:44:30 +0100
Message-Id: <20240226124432.1203798-4-cezary.rojewski@intel.com>
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

HDMI codecs which are present and functional from audio perspective lack
i915 support on drm side what results in -ENODEV during the probing
sequence. There is no reason to perform recovery procedure e.g.: reset
the HDAudio controller if this is the case.

Signed-off-by: Cezary Rojewski <cezary.rojewski@intel.com>
---
 sound/soc/intel/avs/core.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/sound/soc/intel/avs/core.c b/sound/soc/intel/avs/core.c
index b3e5a5012167..a61ce42b426c 100644
--- a/sound/soc/intel/avs/core.c
+++ b/sound/soc/intel/avs/core.c
@@ -150,7 +150,7 @@ static int probe_codec(struct hdac_bus *bus, int addr)
 	/* configure effectively creates new ASoC component */
 	ret = snd_hda_codec_configure(codec);
 	if (ret < 0) {
-		dev_err(bus->dev, "failed to config codec %d\n", ret);
+		dev_warn(bus->dev, "failed to config codec #%d: %d\n", addr, ret);
 		return ret;
 	}
 
@@ -159,15 +159,16 @@ static int probe_codec(struct hdac_bus *bus, int addr)
 
 static void avs_hdac_bus_probe_codecs(struct hdac_bus *bus)
 {
-	int c;
+	int ret, c;
 
 	/* First try to probe all given codec slots */
 	for (c = 0; c < HDA_MAX_CODECS; c++) {
 		if (!(bus->codec_mask & BIT(c)))
 			continue;
 
-		if (!probe_codec(bus, c))
-			/* success, continue probing */
+		ret = probe_codec(bus, c);
+		/* Ignore codecs with no supporting driver. */
+		if (!ret || ret == -ENODEV)
 			continue;
 
 		/*
-- 
2.25.1

