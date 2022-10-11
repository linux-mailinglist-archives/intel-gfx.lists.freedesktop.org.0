Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 246395FB8C3
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 19:00:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4464D10E8A6;
	Tue, 11 Oct 2022 17:00:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FFFA10E89B
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 17:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665507641; x=1697043641;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gWLCoSRTGa0wnX6gAn/s1XxIu5Ac97tTE9MAG1QV2m4=;
 b=GS1lR1g4rMli/39MgG9wZDO+44Mi8hucGeA41sNzx1J1VhFTWt25UMAs
 6dCqYGFH6TkF3UwL4v3iKSavdsuQXqGSy5eM0S+cLDc44ziRXSLvo6SQ6
 0sNbVgCWkNTPaworxnVSyo5G2/ip+YsVm2GRcRBLdWlngbwib/tLRTsYA
 BQ9CAz9MbKBHy5SqyM2RMCffuMNHNIvPcwlvVenaKKmGnPSCDIoDD9Iol
 3BPgjHoWx0WnpmZbvkMy/kqEQuquEzV6z8AMEyrQANJx0IhPS7fjoPoWf
 xsK39oRHDgbtNGtlNfiO7YdiB0omK+rC0h8HV1l4eaW92DgHZp0Cf1Yxa g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="390871916"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="390871916"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 10:00:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="621475579"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="621475579"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 11 Oct 2022 10:00:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Oct 2022 20:00:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 19:59:56 +0300
Message-Id: <20221011170011.17198-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/22] drm/i915/audio: Protect singleton
 register with a lock
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
Cc: Takashi Iwai <tiwai@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

On the "ilk" platforms AUD_CNTL_ST2 is a singleton. Protect
it with the audio mutex in case we ever want to do parallel
RMW access to it.

Currently that should not happen since we only do audio
enable/disable from full modesets, and those are fully
serialized. But we probably want to think about toggling
audio on/off from fastsets too.

The hsw codepaths alreayd already have the same locking.
g4x should not need it since it can only do audio to a
single port at a time, which means it's actually broken
in more ways than this atm.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index c6f0c8be82b2..9a286d70e281 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -707,6 +707,8 @@ static void ilk_audio_codec_disable(struct intel_encoder *encoder,
 
 	ilk_audio_regs_init(i915, pipe, &regs);
 
+	mutex_lock(&i915->display.audio.mutex);
+
 	/* Disable timestamps */
 	tmp = intel_de_read(i915, regs.aud_config);
 	tmp &= ~AUD_CONFIG_N_VALUE_INDEX;
@@ -721,6 +723,8 @@ static void ilk_audio_codec_disable(struct intel_encoder *encoder,
 	tmp = intel_de_read(i915, regs.aud_cntrl_st2);
 	tmp &= ~IBX_ELD_VALID(port);
 	intel_de_write(i915, regs.aud_cntrl_st2, tmp);
+
+	mutex_unlock(&i915->display.audio.mutex);
 }
 
 static void ilk_audio_codec_enable(struct intel_encoder *encoder,
@@ -749,6 +753,7 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 
 	ilk_audio_regs_init(i915, pipe, &regs);
 
+	mutex_lock(&i915->display.audio.mutex);
 
 	/* Invalidate ELD */
 	tmp = intel_de_read(i915, regs.aud_cntrl_st2);
@@ -781,6 +786,8 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
 	else
 		tmp |= audio_config_hdmi_pixel_clock(crtc_state);
 	intel_de_write(i915, regs.aud_config, tmp);
+
+	mutex_unlock(&i915->display.audio.mutex);
 }
 
 /**
-- 
2.35.1

