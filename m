Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 595AC9DA764
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 13:07:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0229D10EABF;
	Wed, 27 Nov 2024 12:07:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WRh84qIg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B49910EABF;
 Wed, 27 Nov 2024 12:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732709266; x=1764245266;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ry18WdMblMIAgPceaNkHXpcJI0Bs97iZ6u0R/Eh54Fo=;
 b=WRh84qIgployqsTvkyhmUZJDmfKFRQVXn8LhHIn3oVet/NXAe9Het/0V
 n2dKZjys3FtL+OHCQHpomzLoloJ28Ci+v12cb1WuxAzhq/nrGrTMePKjj
 xgEzfU9ei9otYxkbCN+YAOc71hz2zE6cGnHDNMaZHotbjtuDhfpcUXzEC
 tqGa/JnThKGFfqtY7Kg2hDq7amECqoVsS4VdWTPEOAZTk2mRThhT8Jkga
 UdeN3rb59NRD0zWhbbaKUw9ftCSQXZbCh6RqXscIj21kMeELLrePhfb1s
 nvyW4IQTPs/NFGFi2vQ8UqxGwl3SLnf8nbYUcceOrhPDQIGlj3esIJI2k w==;
X-CSE-ConnectionGUID: AQAa7sVBQa+eW7iZDdkR9Q==
X-CSE-MsgGUID: Rdxml5YjR5mmCKaLM45AwQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="43972825"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="43972825"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 04:07:46 -0800
X-CSE-ConnectionGUID: 9At0aylIQkqaqqnMRC1Ikw==
X-CSE-MsgGUID: cFFupRy6RiqQw8t2uqjLIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="92754974"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.244.60])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 04:07:44 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, kai.vehmanen@linux.intel.co,
 jani.saarinen@intel.com
Subject: [PATCH v2 4/6] drm/i915/display: iterate through channels if no
 feasible frequencies
Date: Wed, 27 Nov 2024 14:07:13 +0200
Message-Id: <20241127120715.185348-5-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241127120715.185348-1-vinod.govindapillai@intel.com>
References: <20241127120715.185348-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

For a pipe configuration, if no supported audio frequencies are
found, then start reducing the audio channels and try assess the
sad audio frequency list again.

v2: fix commit description (Kai)
    uninitialized variable "sad_freq" (kernel test robot)
    use intel_display instead of i915

Bspec: 67768
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 35 +++++++++++++++-------
 1 file changed, 25 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index b4eef6d60ca1..cf88728b8f80 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -765,16 +765,28 @@ static void intel_audio_compute_sad(struct intel_encoder *encoder,
 				    int avail_overhead, int req_overhead,
 				    struct cea_sad *sad)
 {
-	u8 sad_channels = sad->channels + 1;
-	u8 sad_freq;
+	u8 sad_freq = 0;
+	u8 channels;
 
-	sad_freq = intel_audio_get_pruned_audfreq(line_freq_khz,
-						  hblank_slots_lanes_bytes,
-						  avail_overhead,
-						  req_overhead, sad_channels,
-						  sad->freq);
+	/*
+	 * If we don't find any supported audio frequencies for a channel,
+	 * reduce the channel and try
+	 */
+	for (channels = sad->channels + 1; channels >= 1; channels--) {
+		sad_freq = intel_audio_get_pruned_audfreq(line_freq_khz,
+							  hblank_slots_lanes_bytes,
+							  avail_overhead,
+							  req_overhead,
+							  channels,
+							  sad->freq);
+
+		/* Supported frequencies exist! No need to proceed further */
+		if (sad_freq)
+			break;
+	}
 
 	sad->freq = sad_freq;
+	sad->channels = channels ? channels - 1 : 0;
 }
 
 bool intel_audio_compute_eld_config(struct intel_encoder *encoder,
@@ -794,22 +806,25 @@ bool intel_audio_compute_eld_config(struct intel_encoder *encoder,
 	for (int i = 0; i < drm_eld_sad_count(eld); i++) {
 		struct cea_sad sad;
 		u8 sad_freq;
+		u8 sad_channels;
 
 		if (drm_eld_sad_get(eld, i, &sad))
 			continue;
 
 		sad_freq = sad.freq;
+		sad_channels = sad.channels;
 		intel_audio_compute_sad(encoder, line_freq_khz,
 					hblank_slots_lanes_bytes,
 					avail_overhead, req_overhead, &sad);
 
 		/* Update the eld with new sad data if any changes in the list */
-		if (sad_freq != sad.freq) {
+		if (sad_freq != sad.freq || sad_channels != sad.channels) {
 			drm_eld_sad_set(eld, i, &sad);
 			drm_dbg_kms(display->drm,
-				    "[CONNECTOR:%d:%s] SAD updated. Freq: 0x%x(0x%x)\n",
+				    "[CONNECTOR:%d:%s] SAD updated. Freq: 0x%x(0x%x) Channels: %d(%d)\n",
 				    connector->base.base.id, connector->base.name,
-				    sad.freq, sad_freq);
+				    sad.freq, sad_freq, sad.channels,
+				    sad_channels);
 		}
 	}
 
-- 
2.34.1

