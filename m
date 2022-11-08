Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B90621809
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 16:23:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6DAE10E4C1;
	Tue,  8 Nov 2022 15:23:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AB6C10E486
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 15:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667920985; x=1699456985;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=erd0ApEfe7bZv/LWQzzLWIyP43a+dbUs5ZcTy59IBpk=;
 b=JWyI3i0EiqjhgpsbhHNaQsZiFE0Dcs6Zzx39+pb4plVVFGlXL91NL313
 pJ9llGhynrKz4ZgPGRPHoHa+e/hMDkDKjSlOGot6mP3W6tWsbvr4nMRvi
 Wk3IzKj4ab0b1V+JS+jNWd31STm0jJJ4Ix+lNbbwgyyAecbqFH54gfGUz
 nS1OvJOQ7oHma5z+VsuwKgGaTXkpyyYt+B+l3Zam5HKju2rNdCNyrA1I7
 45JctEyJUoyUUkl8UAjzoYry8dEjSNmAiPBiGWwZWkxQiRTJYn8dznbJa
 q/jV4DlAHzRT8nAMcDfMuy2uRj/+LouCz/wzFf/gE46HDVvX+ii2N52CZ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="310718779"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="310718779"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 07:18:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="725590605"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="725590605"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 08 Nov 2022 07:18:54 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Nov 2022 17:18:53 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Nov 2022 17:18:28 +0200
Message-Id: <20221108151839.31567-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
References: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 04/15] drm/i915/audio: Realign some function
 arguments
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

Fix up some function argument alignment fails.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 0ac28d28098f..6b0c2b0522fd 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -778,8 +778,8 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 
 	if (i915->display.funcs.audio)
 		i915->display.funcs.audio->audio_codec_enable(encoder,
-								  crtc_state,
-								  conn_state);
+							      crtc_state,
+							      conn_state);
 
 	mutex_lock(&i915->display.audio.mutex);
 	encoder->audio_connector = connector;
@@ -794,7 +794,7 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 		if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
 			pipe = -1;
 		acomp->base.audio_ops->pin_eld_notify(acomp->base.audio_ops->audio_ptr,
-						 (int) port, (int) pipe);
+						      (int)port, (int)pipe);
 	}
 
 	intel_lpe_audio_notify(i915, pipe, port, connector->eld,
@@ -831,8 +831,8 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 
 	if (i915->display.funcs.audio)
 		i915->display.funcs.audio->audio_codec_disable(encoder,
-								   old_crtc_state,
-								   old_conn_state);
+							       old_crtc_state,
+							       old_conn_state);
 
 	mutex_lock(&i915->display.audio.mutex);
 	encoder->audio_connector = NULL;
@@ -845,7 +845,7 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 		if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST))
 			pipe = -1;
 		acomp->base.audio_ops->pin_eld_notify(acomp->base.audio_ops->audio_ptr,
-						 (int) port, (int) pipe);
+						      (int)port, (int)pipe);
 	}
 
 	intel_lpe_audio_notify(i915, pipe, port, NULL, 0, false);
-- 
2.37.4

