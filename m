Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F4E6480CC
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Dec 2022 11:19:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C819D10E519;
	Fri,  9 Dec 2022 10:18:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE5ED10E519
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Dec 2022 10:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670581130; x=1702117130;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pxUMBLjt7yZoC5tJjDbXBzENM6MF7qHjgkxlHXw784A=;
 b=lSm/hNszwOv9Ikt6vh0STnjvkGg6EIeqbFSI6IzAWJS5nMUgO00nx1MS
 jJ/hP1K9mbryl5FD69nZMrOwrPmU/OrZf0dea+tmROtl52F6THECaZvfN
 SMVPxWELc9eY1OpFib1jYW3XHlP5NpC+copAtI3tfpuxZwo12bnc8LOeE
 157dHLzlUL1duxuzzdRM431VxCIVg7R19t4NHIK9arnb5E8SkoyWO/KXi
 kJ2EdOcCIPrM1DtGOcDfytVZwfBB7sWW/MCj6qWbcU+F+Cd+Dco4wNUvy
 o62c5w7xkiYZdXyMS8yJfcF02Cz3TmR4/HGdySTP+zg42cqdL8oq+dBJR Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="316135201"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="316135201"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 02:18:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="649510770"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="649510770"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmsmga007.fm.intel.com with ESMTP; 09 Dec 2022 02:18:48 -0800
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: alsa-devel@alsa-project.org,
	tiwai@suse.de
Date: Fri,  9 Dec 2022 12:18:21 +0200
Message-Id: <20221209101822.3893675-3-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221209101822.3893675-1-kai.vehmanen@linux.intel.com>
References: <20221209101822.3893675-1-kai.vehmanen@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/3] ALSA: hda/hdmi: set default audio
 parameters for KAE silent-stream
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
Cc: intel-gfx@lists.freedesktop.org,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If the stream-id is zero, the keep-alive (KAE) will only ensure clock is
generated, but no audio samples are sent over display link. This happens
before first real audio stream is played out to a newly connected
receiver.

Reuse the code in silent_stream_enable() to set up stream parameters
to sane defaults values, also when using the newer keep-alive flow.

Fixes: 15175a4f2bbb ("ALSA: hda/hdmi: add keep-alive support for ADL-P and DG2")
Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Reviewed-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Tested-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 sound/pci/hda/patch_hdmi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/pci/hda/patch_hdmi.c b/sound/pci/hda/patch_hdmi.c
index 48bb23745ed3..f8e6ff7f8820 100644
--- a/sound/pci/hda/patch_hdmi.c
+++ b/sound/pci/hda/patch_hdmi.c
@@ -1738,6 +1738,7 @@ static void silent_stream_enable(struct hda_codec *codec,
 
 	switch (spec->silent_stream_type) {
 	case SILENT_STREAM_KAE:
+		silent_stream_enable_i915(codec, per_pin);
 		silent_stream_set_kae(codec, per_pin, true);
 		break;
 	case SILENT_STREAM_I915:
-- 
2.38.1

