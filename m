Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 284CE99413E
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 10:24:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5E7E10E4A1;
	Tue,  8 Oct 2024 08:23:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M5ECNFLP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 088DD10E49C
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2024 08:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728375838; x=1759911838;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PV2JdRk0e+fT2kOUpiLv98R0RvXr3lRbvPjpyXdG1u4=;
 b=M5ECNFLPb3ESockpMt4DfnC6MqAVl5g0AZTcDULrPvSo+kgcBb20IEYY
 BSrSaDT/OCJLMXlMPsGJVwf3RrHPKfpmMN5Qp70QmMiapWVvJrxj35nJa
 dFOfQri9RyqF1IG/NHM50jw9kO/Q1whGH/wjmEGNDAAnMOggtOKPYafiB
 8LDgm7tFyZTPq9ZtsXx83gwX1ALYXHVjVInv85HI7wOElIj/l9f/uKH1s
 88MczKjbhcd/e/DROBRNvH5cUtIVXrt8WKkToKBNNT2MHlNvoCnqyIBNG
 ykfb6ojempN5TTiQLUatNijuuplEYlQHV8yhQeR7w0AaRBtv2qZigDHpw A==;
X-CSE-ConnectionGUID: D7e7N37MQ86P/AzNl97IMg==
X-CSE-MsgGUID: +CMHuplvSRaD1OdWve7UYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="45079139"
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="45079139"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 01:23:58 -0700
X-CSE-ConnectionGUID: t4dWzqYyRz+gAX+dUEoalw==
X-CSE-MsgGUID: VqApmebTRv2lZNKxU3C3VQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="75755773"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.245.51])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 01:23:56 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 ville.syrjala@intel.com, kai.vehmanen@intel.com, jani.saarinen@intel.com
Subject: [PATCH 6/9] drm/i915/display: iterare through channels if no feasible
 frequencies
Date: Tue,  8 Oct 2024 11:23:24 +0300
Message-Id: <20241008082327.342020-7-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241008082327.342020-1-vinod.govindapillai@intel.com>
References: <20241008082327.342020-1-vinod.govindapillai@intel.com>
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

Bspec: 67768
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 32 ++++++++++++++++------
 1 file changed, 24 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index e84101ef9531..14fabbcbf5da 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -766,16 +766,28 @@ static void intel_audio_compute_sad(struct drm_i915_private *i915,
 				    int avail_overhead, int req_overhead,
 				    struct cea_sad *sad)
 {
-	u8 sad_channels = sad->channels + 1;
+	u8 channels;
 	u8 sad_freq;
 
-	sad_freq = intel_audio_get_pruned_audfreq(i915, line_freq_khz,
-						  hblank_slots_lanes,
-						  avail_overhead,
-						  req_overhead, sad_channels,
-						  sad->freq);
+	/*
+	 * If we don't find any supported audio frequencies for a channel,
+	 * reduce the channel and try
+	 */
+	for (channels = sad->channels + 1; channels >= 1; channels--) {
+		sad_freq = intel_audio_get_pruned_audfreq(i915, line_freq_khz,
+							  hblank_slots_lanes,
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
 
 bool intel_audio_compute_eld_config(struct drm_connector_state *conn_state,
@@ -793,19 +805,23 @@ bool intel_audio_compute_eld_config(struct drm_connector_state *conn_state,
 	for (int i = 0; i < drm_eld_sad_count(eld); i++) {
 		struct cea_sad sad;
 		u8 sad_freq;
+		u8 sad_channels;
 
 		if (drm_eld_sad_get(eld, i, &sad))
 			continue;
 
 		sad_freq = sad.freq;
+		sad_channels = sad.channels;
 		intel_audio_compute_sad(i915, line_freq_khz,
 					hblank_slots_lanes,
 					avail_overhead, req_overhead, &sad);
 
 		/* Update the eld with new sad data if any changes in the list */
-		if (sad_freq != sad.freq) {
+		if (sad_freq != sad.freq || sad_channels != sad.channels) {
 			drm_eld_sad_set(eld, i, &sad);
-			drm_dbg_kms(&i915->drm, "sad updated. Pruned freq list: 0x%x\n", sad.freq);
+			drm_dbg_kms(&i915->drm,
+				    "SAD updated. Freq: 0x%x(0x%x) Channels: %d(%d)\n",
+				    sad.freq, sad_freq, sad.channels, sad_channels);
 		}
 	}
 
-- 
2.34.1

