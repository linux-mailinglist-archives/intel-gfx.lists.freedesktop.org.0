Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 201F86407DB
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 14:44:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F73810E0C0;
	Fri,  2 Dec 2022 13:44:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87CF410E703
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Dec 2022 13:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669988664; x=1701524664;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=GxTklNifmeRYgh0OQQFTSmPTRiWoPkuWokpWQseeUxY=;
 b=cFaPBQuriQu92WJt3TeOWjrR65mkrIpHuVRN3MNoHlfy/DkUezqkovd8
 JLKK9nRifXDcBq46rHPnuTlm6G4qbIIZnyyaT3B/EbzlUBj9c8lBtkltp
 yM9Dl9m1sucnK/Y+Z1zbfDYliQedOvqr8aWBJHHa0Aus0QqQKvf7g56Bl
 0CVA1WVRgrybPulJDl2pQUu3/Dr3Da+OL/0VOeIyiVfC3OayI+SL7cTAX
 52zKLF1UdaiYjjPk1UIhBZ5OtIPiukylm/9pbeeJh5l6YmK/bPaAJU2F/
 /iwgw7JwYhhqd7sdq9p2qAIcVDW2URd5ZjkuxWn++/OZvo7NbDsKFjx5c w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="317102429"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="317102429"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 05:44:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="622704012"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="622704012"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 02 Dec 2022 05:44:22 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 02 Dec 2022 15:44:21 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Dec 2022 15:44:11 +0200
Message-Id: <20221202134412.21943-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221202134412.21943-1-ville.syrjala@linux.intel.com>
References: <20221202134412.21943-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/vrr: Reorder transcoder vs. vrr
 enable/disable
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

On mtl it looks like disabling VRR after the transcoder has
been disabled can cause the pipe/transcoder to get stuck
when re-enabled in non-vrr mode. Reversing the order seems to
help.

Bspec is extremely confused about the VRR enable/disable sequence
anyway, and this now more closely matches the non-modeset VRR
sequence, whereas the full modeset sequence still claims that
the original order is fine. But since we eventually want to toggle
VRR without a full modeset anyway this seems like the better order
to follow.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 5f9a2410fc4c..69595cbb2766 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2726,10 +2726,10 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
 	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST)) {
 		intel_crtc_vblank_off(old_crtc_state);
 
-		intel_disable_transcoder(old_crtc_state);
-
 		intel_vrr_disable(old_crtc_state);
 
+		intel_disable_transcoder(old_crtc_state);
+
 		intel_ddi_disable_transcoder_func(old_crtc_state);
 
 		intel_dsc_disable(old_crtc_state);
@@ -2946,13 +2946,13 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 	if (!intel_crtc_is_bigjoiner_slave(crtc_state))
 		intel_ddi_enable_transcoder_func(encoder, crtc_state);
 
-	intel_vrr_enable(encoder, crtc_state);
-
 	/* Enable/Disable DP2.0 SDP split config before transcoder */
 	intel_audio_sdp_split_update(encoder, crtc_state);
 
 	intel_enable_transcoder(crtc_state);
 
+	intel_vrr_enable(encoder, crtc_state);
+
 	intel_crtc_vblank_on(crtc_state);
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
-- 
2.37.4

