Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E51A60E60F
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 19:02:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 092E710E603;
	Wed, 26 Oct 2022 17:02:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1006C10E5F5
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 17:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666803741; x=1698339741;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5Vqack/hpnvLTaTJrat1Wz25w+DqvpPsHwSeFTZU1hQ=;
 b=BQce0Fa1MA3E4fgUoG1Nxes+VJ5TYNMK5dOGpvETQDdd5jpWDJtIePgh
 oy01m/AoIhwABIBh4HFoHhfgNZ+JtlaBVcfExnUCw+L2U5LxiPg8822JY
 EnqlNUy7ONQ1xdQPtZUoov937IxKwnMduyF21LQfbPrdynp6YQEqbti/1
 ByUbQiJlkDgvzm5L+830w33dz1PjOQDoE2b4HCKTGvqFn6B7dZvBjWnuQ
 Iy+PQAOzohkKIcJdjMUUhI3K0lK8EmqeKLvx4XmDY/lqtyjInH5nZAHC1
 scPveSVBy5E3n6+c9TfdM7FhOYDvAnfxvdiQ99BjWVtRBc0Rm2750ymxa w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="334624978"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="334624978"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 10:02:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="632090649"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="632090649"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 26 Oct 2022 10:02:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 20:02:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 20:01:42 +0300
Message-Id: <20221026170150.2654-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
References: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/15] drm/i915/audio: Protect singleton
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
Cc: Takashi Iwai <tiwai@suse.de>, Jani Nikula <jani.nikula@intel.com>
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

The hsw codepaths already have the same locking.
g4x should not need it since it can only do audio to a
single port at a time, which means it's actually broken
in more ways than this atm.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 5d545d2ffb33..093283fd1c28 100644
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
2.37.4

