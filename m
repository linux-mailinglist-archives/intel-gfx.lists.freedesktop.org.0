Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C01077C08C
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 21:16:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69FD510E227;
	Mon, 14 Aug 2023 19:16:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86CDF10E227
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Aug 2023 19:16:19 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id
 d9443c01a7336-1bcad794ad4so29753855ad.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Aug 2023 12:16:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1692040578; x=1692645378;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=kd5HsGtF1lQAMED6spMuB0gY8t3cXevNW03dhPfc2sU=;
 b=V1ZHF5091ElHMxzBhKjpY1wBFM4DNXOZie/xR/LW21SrAESXsNQinxrs0BwHOZBbbX
 uDEJYpQykxlUYy9Atr4s+jgHBWbRuPLLpqG7KhEDmJod3wa4G++cahm7jqYJntH9t111
 dm/kpEjScHMup3dO1E5SEaS2w48Or1lD8fNYw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692040578; x=1692645378;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=kd5HsGtF1lQAMED6spMuB0gY8t3cXevNW03dhPfc2sU=;
 b=XEajK0st++DLoWrjLWxqc/dhFv3hdpu8LPWubolY4XWgsCmoZ4vNztbsG64EM7llxj
 XrS/JrtsIYJTR90vaUXkNJ3+gq2Eowx0Cvt1tQEj0T22lOeVfZx+XqscQ2WaCcQUxhDZ
 GNwSZ23285vLN4j+tJf7U9JdxQIkV1N2ogvaueFRcN/w4n1Lot6DX7WubknQMNjdvgJF
 kLwcbuCQRwaUMyDiuQBC2HdCV4vXAcENi46Yt8bgA6OBR5fTwaQaCCJScgicFSJjsZ2J
 13v+PiTpAk7QIEMF+EBjLUtRK4tN9m6X6SQcas1AardDGHWbUPV8MRp0gtYwTH8vwxmY
 eGpQ==
X-Gm-Message-State: AOJu0YxarnRmHqQxk3NwNubwHQy6n0hEdgR7YxznbAFvCNTYvw+1UlDd
 SVW0GnJ1q9rG+/NccClJ8XIC+jyfL0HMQlFPxHs=
X-Google-Smtp-Source: AGHT+IESGe0SnNPcvJrBF0FBwiaUC78Q2Tc2kGeuMQuDl87UgTlGgkRUO8fAJTphSPc95iEgQifByg==
X-Received: by 2002:a17:90a:e651:b0:263:f4cc:a988 with SMTP id
 ep17-20020a17090ae65100b00263f4cca988mr7180909pjb.5.1692040578570; 
 Mon, 14 Aug 2023 12:16:18 -0700 (PDT)
Received: from navaremanasi.c.googlers.com.com
 (199.72.83.34.bc.googleusercontent.com. [34.83.72.199])
 by smtp.gmail.com with ESMTPSA id
 u10-20020a17090ae00a00b0026b3f76a063sm4395755pjy.44.2023.08.14.12.16.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Aug 2023 12:16:18 -0700 (PDT)
From: Manasi Navare <navaremanasi@chromium.org>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Aug 2023 19:16:09 +0000
Message-ID: <20230814191609.3299378-1-navaremanasi@chromium.org>
X-Mailer: git-send-email 2.41.0.694.ge786442a9b-goog
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/display: Dual refresh rate fastset
 fixes with VRR fastset
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
Cc: Drew Davenport <ddavenport@chromium.org>, Sean Paul <seanpaul@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Dual refresh rate (DRR) fastset seamlessly lets refresh rate
throttle without needing a full modeset.
However with the recent VRR fastset patches that got merged this
logic was broken. This is broken because now with VRR fastset
VRR parameters are calculated by default at the nominal refresh rate say 120Hz.
Now when DRR throttle happens to switch refresh rate to 60Hz, crtc clock
changes and this throws a mismatch in VRR parameters and fastset logic
for DRR gets thrown off and full modeset is indicated.

This patch fixes this by ignoring the pipe mismatch for VRR parameters
in the case of DRR and when VRR is not enabled. With this fix, DRR
will still throttle seamlessly as long as VRR is not enabled.

This will still need a full modeset for both DRR and VRR operating together
during the refresh rate throttle and then enabling VRR since now VRR
parameters need to be recomputed with new crtc clock and written to HW.

This DRR + VRR fastset in conjunction needs more work in the driver and
will be fixed in later patches.

v3:
Compute new VRR params whenever there is fastset and its non DRRS.
This will ensure it computes while switching to a fixed RR (Mitul)

v2:
Check for pipe config mismatch in crtc clock whenever VRR is enabled

Cc: Drew Davenport <ddavenport@chromium.org>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Sean Paul <seanpaul@chromium.org>
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Signed-off-by: Manasi Navare <navaremanasi@chromium.org>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 763ab569d8f3..2cf3b22adaf7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5352,7 +5352,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >= 5)
 		PIPE_CONF_CHECK_I(pipe_bpp);
 
-	if (!fastset || !pipe_config->seamless_m_n) {
+	if (!fastset || !pipe_config->seamless_m_n || pipe_config->vrr.enable) {
 		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_clock);
 		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_clock);
 	}
@@ -5387,11 +5387,13 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 	if (!fastset)
 		PIPE_CONF_CHECK_BOOL(vrr.enable);
-	PIPE_CONF_CHECK_I(vrr.vmin);
-	PIPE_CONF_CHECK_I(vrr.vmax);
-	PIPE_CONF_CHECK_I(vrr.flipline);
-	PIPE_CONF_CHECK_I(vrr.pipeline_full);
-	PIPE_CONF_CHECK_I(vrr.guardband);
+	if ((fastset && !pipe_config->seamless_m_n) || pipe_config->vrr.enable) {
+		PIPE_CONF_CHECK_I(vrr.vmin);
+		PIPE_CONF_CHECK_I(vrr.vmax);
+		PIPE_CONF_CHECK_I(vrr.flipline);
+		PIPE_CONF_CHECK_I(vrr.pipeline_full);
+		PIPE_CONF_CHECK_I(vrr.guardband);
+	}
 
 #undef PIPE_CONF_CHECK_X
 #undef PIPE_CONF_CHECK_I
-- 
2.41.0.694.ge786442a9b-goog

