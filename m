Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D33BD77992A
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Aug 2023 23:04:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA55B10E111;
	Fri, 11 Aug 2023 21:04:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com
 [IPv6:2607:f8b0:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABFAE10E111
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Aug 2023 21:04:38 +0000 (UTC)
Received: by mail-pf1-x434.google.com with SMTP id
 d2e1a72fcca58-6873a30d02eso1835532b3a.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Aug 2023 14:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1691787878; x=1692392678;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=+tRqAdMFCMf38hx3VIf/1r8T0nE9F3ie+Gm6PCGbD6Q=;
 b=BQBBuy/wK+1rmOtUAlLWs69V5yRms05l7bkDHPlb3VsQKSqEDMKltEPI4QXejFa72L
 CxWlVipPnWgpXulb3IXLTCnzSKSONaV7KlWh7ollpQadFjFUKDXwh1b9/QujM0lUw1vv
 la5vG0s+ku4oAsidc0EmK8IATpTSc5oUF1PXA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691787878; x=1692392678;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+tRqAdMFCMf38hx3VIf/1r8T0nE9F3ie+Gm6PCGbD6Q=;
 b=cXMVAhwtRQLQgYW0M6OnfZO4BwtZHr//NBmRqEEK4maH9sptA8sJq+Sf3V0mx9Ddy0
 ug3f2dQQUWHoijMsUOXCj5gy7BMfXUySUNmLKMRJzjVgJUbKfjM03pbs7ae/teuY0Teb
 3+8rzB2v0Pa8K2pdFzblnT5CNi/Bu1kxX7H/r9+RD1BCB5YAF2g9VhmmzAb4dLSKoio1
 88YIkASDW8eEoB7wI9NmpIUFEkWmgvyD2hH1JyGF+5pdGGgzA4bBp/rQGqcf0jYC+j+G
 3hoC3TRr1sfH8/Jh5aBXVgmmU4Hm/KU8euOGqwZchObkegxwOZJqGZo+FBVSaJ44STRl
 aI5w==
X-Gm-Message-State: AOJu0YwVa94LRc0R3QBJpoAGXXM24QiFDJC0KRIuo8pXqP+sY5Ygaeo5
 SN8RX0rEgnl865UGBDDDlRjh1kQyUrkaa/E7VsI=
X-Google-Smtp-Source: AGHT+IG93EDoZgrnrrIoHWI7MqecED2+fE0eSWscdOyuJCKI504wt3Mvrio+M50X1PqYG7QYAMfJRw==
X-Received: by 2002:a17:902:6945:b0:1b8:28f4:f259 with SMTP id
 k5-20020a170902694500b001b828f4f259mr2341246plt.69.1691787877622; 
 Fri, 11 Aug 2023 14:04:37 -0700 (PDT)
Received: from navaremanasi.c.googlers.com.com
 (199.72.83.34.bc.googleusercontent.com. [34.83.72.199])
 by smtp.gmail.com with ESMTPSA id
 jj14-20020a170903048e00b001b9f7bc3e77sm4366556plb.189.2023.08.11.14.04.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Aug 2023 14:04:37 -0700 (PDT)
From: Manasi Navare <navaremanasi@chromium.org>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Aug 2023 21:04:33 +0000
Message-ID: <20230811210433.2514027-1-navaremanasi@chromium.org>
X-Mailer: git-send-email 2.41.0.640.ga95def55d0-goog
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: Dual refresh rate fastset
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

v2:
Check for pipe config mismatch in crtc clock whenever VRR is enabled

Cc: Drew Davenport <ddavenport@chromium.org>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Sean Paul <seanpaul@chromium.org>
Signed-off-by: Manasi Navare <navaremanasi@chromium.org>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 763ab569d8f3..efc407e11d8e 100644
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
+	if ((!fastset && !pipe_config->seamless_m_n) || pipe_config->vrr.enable) {
+		PIPE_CONF_CHECK_I(vrr.vmin);
+		PIPE_CONF_CHECK_I(vrr.vmax);
+		PIPE_CONF_CHECK_I(vrr.flipline);
+		PIPE_CONF_CHECK_I(vrr.pipeline_full);
+		PIPE_CONF_CHECK_I(vrr.guardband);
+	}
 
 #undef PIPE_CONF_CHECK_X
 #undef PIPE_CONF_CHECK_I
-- 
2.41.0.640.ga95def55d0-goog

