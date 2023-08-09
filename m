Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C243776CD2
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Aug 2023 01:27:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B27D210E137;
	Wed,  9 Aug 2023 23:27:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com
 [IPv6:2607:f8b0:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A44DC10E137
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Aug 2023 23:27:15 +0000 (UTC)
Received: by mail-pf1-x42e.google.com with SMTP id
 d2e1a72fcca58-686c06b806cso243446b3a.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Aug 2023 16:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1691623634; x=1692228434;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=0L8spSam5NBm3gRJfrC/qOAKNDXIyL5iSKSe8yoGDRQ=;
 b=XvJb5WxgErEqiSne51pTpUwZ0fM3rpM2VT4sj+Xa5/1PL60+47Aev1so6DyyBO4KhK
 gooNn/DwipbJHCYCb7kEdgQG2Hf2APYAX+3n03Pck0Nc3k+xL2RZvri5q4eBkZLulpWk
 9YdgBQVkgRVADMGdb0A0pTWFoQRvJRsuqI7jI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691623634; x=1692228434;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=0L8spSam5NBm3gRJfrC/qOAKNDXIyL5iSKSe8yoGDRQ=;
 b=S54arQ5Ye/7HGHiu3rE9JQKrgQ1lH64ez88uVC2YLWt19OiDU+fo9OTy7uAe1xxWpZ
 zqhfPXkpXAKSfu6wx/3A/rGKlNVpXHAS8TTansx1Z7tnwMJ+UxdlwpJUgzm11ZZGsyG+
 pE/PTMZcVt6/AtOO28P8kpcR0uru8MI1CYzP+zXXtrprfTg9zLjO/yrO0r/TzdaSlkio
 4yVVKhU+hSdiVPoRZFx/NZFg+C7MsUQNZv2f7eGQkmN5tzv0GV8B8LgMjhk8M33YM38G
 TQanDwH4VQAsPJ9tZ2he/IOsdkmvs4ZxYXKFTAO4Yg3wm1HDPgrMau9O6nLq9xhMnhAi
 TgtA==
X-Gm-Message-State: AOJu0YztRd7iSGT8kQhqJPTr5On38Wy7IN65mB77Cj2HYWnKim2A2WH6
 IE9yOGeRbsmo1LRZH7J11jNTKSc2BMKWcVnG4/E=
X-Google-Smtp-Source: AGHT+IFYkOg4SOelf6oNvoqfj17B7JZWcLh6xxR4JrelDsGHu6eR78BwYH7bpxeDUfksqN1V+2eobg==
X-Received: by 2002:a05:6a00:1908:b0:687:535f:6710 with SMTP id
 y8-20020a056a00190800b00687535f6710mr856846pfi.7.1691623634657; 
 Wed, 09 Aug 2023 16:27:14 -0700 (PDT)
Received: from navaremanasi.c.googlers.com.com
 (199.72.83.34.bc.googleusercontent.com. [34.83.72.199])
 by smtp.gmail.com with ESMTPSA id
 c9-20020a62e809000000b0064aea45b040sm128033pfi.168.2023.08.09.16.27.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Aug 2023 16:27:14 -0700 (PDT)
From: Manasi Navare <navaremanasi@chromium.org>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Aug 2023 23:26:46 +0000
Message-ID: <20230809232646.1947120-1-navaremanasi@chromium.org>
X-Mailer: git-send-email 2.41.0.640.ga95def55d0-goog
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Dual refresh rate fastset
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

Cc: Drew Davenport <ddavenport@chromium.org>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Sean Paul <seanpaul@chromium.org>
Signed-off-by: Manasi Navare <navaremanasi@chromium.org>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 763ab569d8f3..441d5f3e06c0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5352,7 +5352,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >= 5)
 		PIPE_CONF_CHECK_I(pipe_bpp);
 
-	if (!fastset || !pipe_config->seamless_m_n) {
+	if ((!fastset || !pipe_config->seamless_m_n) && !pipe_config->vrr.enable) {
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

