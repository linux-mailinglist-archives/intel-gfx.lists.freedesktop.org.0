Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B52A985FEA4
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 18:06:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28C4F10E9C0;
	Thu, 22 Feb 2024 17:06:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="idnR+VIn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B755610E9BA
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 17:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708621562; x=1740157562;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cewHMOUP9XE8f1iBRQp0XY/AtymJk2wyw8t26geqAWQ=;
 b=idnR+VInpfWfFxED7BZePxD1fnruWRPUpBqNmqG2Y9pAD8nj1k9zztAL
 BdRGw4qHqdwtfCSo1bxAhiQZX+VikG4c/hq39atBf0JGXMISf5KhekdJy
 S2rmKDMWMQdjCyReigtlTdhzcajPIsp+QGU9Uc6ZyJRHijcVxVVfty/H2
 hGywGtAM40gjg/tmYdBNsjleanRYxoJbi7+mm0p1CkCvKqS/PSGJlSpq1
 VzVzY6HNeQ0n4kPRxJWsV6ZGU2uQ8/Fagl9RpdPDfmhBsGqC261BmUV+c
 cKsf/XEiHaL8Vn8V6BALJLgH5oGyh6dqSfa6JXp0GctJI/BoaRz0CjF9J w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="20299275"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="20299275"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 09:05:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="827575250"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="827575250"
Received: from crojewsk-ctrl.igk.intel.com ([10.102.9.28])
 by orsmga001.jf.intel.com with ESMTP; 22 Feb 2024 09:05:04 -0800
From: Cezary Rojewski <cezary.rojewski@intel.com>
To: broonie@kernel.org
Cc: alsa-devel@alsa-project.org, linux-sound@vger.kernel.org, tiwai@suse.com,
 perex@perex.cz, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 tvrtko.ursulin@linux.intel.com, intel-gfx@lists.freedesktop.org,
 amadeuszx.slawinski@linux.intel.com, pierre-louis.bossart@linux.intel.com,
 hdegoede@redhat.com, Cezary Rojewski <cezary.rojewski@intel.com>
Subject: [PATCH 4/4] ALSA: hda: Reuse for_each_pcm_streams()
Date: Thu, 22 Feb 2024 18:06:14 +0100
Message-Id: <20240222170614.884413-5-cezary.rojewski@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240222170614.884413-1-cezary.rojewski@intel.com>
References: <20240222170614.884413-1-cezary.rojewski@intel.com>
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

Use the macro to improve readability.

Signed-off-by: Cezary Rojewski <cezary.rojewski@intel.com>
---
 sound/pci/hda/hda_codec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/pci/hda/hda_codec.c b/sound/pci/hda/hda_codec.c
index 12f02cdc9659..2cac337f5263 100644
--- a/sound/pci/hda/hda_codec.c
+++ b/sound/pci/hda/hda_codec.c
@@ -3313,7 +3313,7 @@ int snd_hda_codec_parse_pcms(struct hda_codec *codec)
 	list_for_each_entry(cpcm, &codec->pcm_list_head, list) {
 		int stream;
 
-		for (stream = 0; stream < 2; stream++) {
+		for_each_pcm_streams(stream) {
 			struct hda_pcm_stream *info = &cpcm->stream[stream];
 
 			if (!info->substreams)
-- 
2.25.1

