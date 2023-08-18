Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1551781331
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 21:05:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD1CD10E0E3;
	Fri, 18 Aug 2023 19:05:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com
 [IPv6:2607:f8b0:4864:20::52f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 852A110E0DA
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 19:05:08 +0000 (UTC)
Received: by mail-pg1-x52f.google.com with SMTP id
 41be03b00d2f7-53fbf2c42bfso964438a12.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 12:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1692385507; x=1692990307;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=eYuBX+Zu9n60TNSoN//pAl2ik4vEH+glLh9ChEd8dGY=;
 b=B8wGJ9pvMOpjWNDKowtC/k8YOGebBXoeZdxn2CxE/4GiZJXCYGYl9PPoO8bi7wh63S
 1bo3wRL7ur8tpjuSi57qYw+eF0shSJ123pNy/AhRRHHrkBowB/l/t3ZbtbWIuhoI/YKu
 hv0qjJxnHIv21vCwctpkwEpMwWKzfbExGTB1U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692385507; x=1692990307;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=eYuBX+Zu9n60TNSoN//pAl2ik4vEH+glLh9ChEd8dGY=;
 b=X+ePV0O0crhGjaqHREva3zl6MVC545/UZRnAVKUPv5ztIl4K1D9YWpHkvgNwVZdhfG
 51LyJacCX1H5ohPRzX+Dp1VHqcChSDAVJQfZJWYvM4Ii6zdPlfI7r5WqvTj+rLMjLt39
 Wbd/SYxocKQWvYPKEmSlDf3eJ2yFwPhPU/dbzYomRCtY3+sXKxmVYIm4NH1488bVWLPA
 3g/p+UzRtyhVWUZ9MgWK6giETJ/nG8pHjJcf7WLV+5/QxONOYa6M6nkrJKIN8+xfVfZH
 gdFmcQBB4wOfyJvNp5oP2cjS+P64QWEKjoHT4TECeYSq4Zm6G0n7q6ZyKdMFueSN5QY5
 xHzw==
X-Gm-Message-State: AOJu0YyfYazSdjKNv2acUuJc6+KAzYoFYkRed7Iodw7ThgMELFKInCrF
 J5r4X6x56ZisT8kDyJWOuKBh2h14NRRz+cwEu/4=
X-Google-Smtp-Source: AGHT+IGNSeUqgw6haaBAVnqqD8VG/j2Y3Vge9rTNrFLSmXuBH9KpJxJZ3EHrJlHda9kk5X0P71EoEA==
X-Received: by 2002:a17:90a:6941:b0:25b:c454:a366 with SMTP id
 j1-20020a17090a694100b0025bc454a366mr88214pjm.5.1692385507375; 
 Fri, 18 Aug 2023 12:05:07 -0700 (PDT)
Received: from navaremanasi.c.googlers.com.com
 (199.72.83.34.bc.googleusercontent.com. [34.83.72.199])
 by smtp.gmail.com with ESMTPSA id
 jk8-20020a170903330800b001b672af624esm2101512plb.164.2023.08.18.12.05.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Aug 2023 12:05:06 -0700 (PDT)
From: Manasi Navare <navaremanasi@chromium.org>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Aug 2023 19:05:01 +0000
Message-ID: <20230818190501.241062-1-navaremanasi@chromium.org>
X-Mailer: git-send-email 2.42.0.rc1.204.g551eb34607-goog
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4] drm/i915/display: Dual refresh rate fastset
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

Fixes: 1af1d18825d3 ("drm/i915/vrr: Allow VRR to be toggled during fastsets")
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9154
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
2.42.0.rc1.204.g551eb34607-goog

