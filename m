Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED9BF621817
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 16:23:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD00210E2B4;
	Tue,  8 Nov 2022 15:23:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8E4810E498
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 15:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667920984; x=1699456984;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5WgNJvw5gV7i6QMRGACXqWFM1rMlcr8aMXGFZM5p4n8=;
 b=L8uFSe+cQ7s14PUESKbARqJIO5cRHA1Xkmj/817gcpY0u0ey8LRNZ4kH
 IfTFXXcrkXUtUb1EQVA55vSdy75M9RDdP0NZLQMh8FgXrKkZ8oRqZ9hHp
 /Nus9XB8PVwl4YD6GgwnQglIGdcLWc7yXMuK3obFfyE9k4k+eRClKhNqU
 27z2lGNgVBofD3hDSg8oDoRIV5E33ORvyOgUyKIPKMgXSQkkOilWs2Yxb
 I/2CHztGLNFrn+davLC8wSiFlQE+L6JjPHlgzNpT5QJzy64IahiDTRMe2
 LGOISUQw2HXr9XQliqEDpvQy+XdVCSr7UUHBx1rVKcmK6NxWa1zxuOPme A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="310718768"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="310718768"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 07:18:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="725590588"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="725590588"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 08 Nov 2022 07:18:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Nov 2022 17:18:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Nov 2022 17:18:27 +0200
Message-Id: <20221108151839.31567-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
References: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/15] drm/i915/audio: Unify get_saved_enc()
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

Make the two branches of get_saved_enc() look alike. Currently
they look different even though they do exactly the same thing
apart from == vs. != for the MST comparison.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 0a53731a9272..0ac28d28098f 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -1069,10 +1069,10 @@ static int i915_audio_component_get_cdclk_freq(struct device *kdev)
 static struct intel_encoder *get_saved_enc(struct drm_i915_private *i915,
 					   int port, int pipe)
 {
-	struct intel_encoder *encoder;
-
 	/* MST */
 	if (pipe >= 0) {
+		struct intel_encoder *encoder;
+
 		if (drm_WARN_ON(&i915->drm,
 				pipe >= ARRAY_SIZE(i915->display.audio.encoder_map)))
 			return NULL;
@@ -1083,7 +1083,7 @@ static struct intel_encoder *get_saved_enc(struct drm_i915_private *i915,
 		 * MST or not. So it will poll all the port & pipe
 		 * combinations
 		 */
-		if (encoder != NULL && encoder->port == port &&
+		if (encoder && encoder->port == port &&
 		    encoder->type == INTEL_OUTPUT_DP_MST)
 			return encoder;
 	}
@@ -1093,14 +1093,12 @@ static struct intel_encoder *get_saved_enc(struct drm_i915_private *i915,
 		return NULL;
 
 	for_each_pipe(i915, pipe) {
+		struct intel_encoder *encoder;
+
 		encoder = i915->display.audio.encoder_map[pipe];
-		if (encoder == NULL)
-			continue;
 
-		if (encoder->type == INTEL_OUTPUT_DP_MST)
-			continue;
-
-		if (port == encoder->port)
+		if (encoder && encoder->port == port &&
+		    encoder->type != INTEL_OUTPUT_DP_MST)
 			return encoder;
 	}
 
-- 
2.37.4

