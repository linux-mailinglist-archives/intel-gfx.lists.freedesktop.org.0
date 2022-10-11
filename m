Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 950265FB8E4
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 19:03:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 013BE10E98B;
	Tue, 11 Oct 2022 17:03:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD7BA10E984
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 17:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665507826; x=1697043826;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nWY28pNHCVeh7B/N5+GhS8WmWlc1KQbFVjMlyM/+gHI=;
 b=dHpo5eWOpWCrAptQqUJuYABqoKEd1xXeeoOXkT81q9mO8b/pGd9ZfqdN
 semBWdRTuUwKNJTYlt0d9VpjgorZrQrvAQ3hfyfymZlztvlrsb+UyFBCl
 3FqLhB+00O/gKsGnQltWl6UMYtqTUecGI3lFK4JEdr++YX+WY//UvRUM2
 8/6Yyr3LpZpSr1L7ipO+HUVtKyyos3ZHAVm07V6zLyeHMgCmA84MDy9tE
 NDz5xbMDlcOjUlrahW+n6QRecFQCaBmDnBtmdgEaRxlkY7HsVDl8M7RDZ
 Bz5VVDZUlCQTRy6hTREV214TXVfKb7mNqfnUkywNFovAU7kVJU+91M6iS g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="305624027"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="305624027"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 10:01:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="621475826"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="621475826"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 11 Oct 2022 10:01:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Oct 2022 20:01:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 20:00:02 +0300
Message-Id: <20221011170011.17198-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/22] drm/i915/audio: Split "ELD valid" vs.
 audio PD on hsw+
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

On the older platforms the audio presence detect bit is in
the port register, so it gets written outside audio codec hooks
and is this separate from the ELD valid toggling. Split the
operations into two steps on hsw+ to be more consistent with
both the other platforms and the spec. Also according to the
spec we might need some vblank waits between the two which
definitely needs them done separately.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 1b928d283b8d..0a1ba10fc20d 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -479,9 +479,12 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
 		     intel_crtc_has_dp_encoder(old_crtc_state) ?
 		     AUD_CONFIG_N_VALUE_INDEX : 0);
 
-	/* Disable audio presence detect, invalidate ELD */
+	/* Invalidate ELD */
+	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
+		     AUDIO_ELD_VALID(cpu_transcoder), 0);
+
+	/* Disable audio presence detect */
 	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
-		     AUDIO_ELD_VALID(cpu_transcoder) |
 		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
 
 	mutex_unlock(&i915->display.audio.mutex);
@@ -612,10 +615,13 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
 		enable_audio_dsc_wa(encoder, crtc_state);
 
-	/* Enable audio presence detect, invalidate ELD */
+	/* Enable audio presence detect */
 	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
-		     AUDIO_ELD_VALID(cpu_transcoder),
-		     AUDIO_OUTPUT_ENABLE(cpu_transcoder));
+		     0, AUDIO_OUTPUT_ENABLE(cpu_transcoder));
+
+	/* Invalidate ELD */
+	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
+		     AUDIO_ELD_VALID(cpu_transcoder), 0);
 
 	/*
 	 * FIXME: We're supposed to wait for vblank here, but we have vblanks
-- 
2.35.1

