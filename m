Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F220ABA3078
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 10:55:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3519E10E2FF;
	Fri, 26 Sep 2025 08:55:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=canonical.com header.i=@canonical.com header.b="Wal81h3D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2578910E062
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Sep 2025 08:55:39 +0000 (UTC)
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 835473FCFE
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Sep 2025 08:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1758876938;
 bh=QPvssfoU/In85UShRKppyAS4KS/HDcgMvFxB88IBvIA=;
 h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
 MIME-Version;
 b=Wal81h3DRZzRPo3WOK3OndaM2Gyz/yKkSnnyMVhDTlb5aeXHw4sqbpZk6OJhco73q
 u7hNRk6UTYGO7L5njVMkTI5dso9DDYwXGLQhuse1mmYSvOoLSVRgTwbCHH676PJA4V
 Hz/STvyHWIk85W1y/bK+1/M7GsTyHnjExv3qV91cLq+hiGQZcFxd+XKM0cdMY/8PYB
 Ue0keUkxNQvuVroJezEDdQ2MTR6IqdiXT8jIrOYny9RbwW+s0sxAvA2PKgoWAQ2yyI
 FEpttWBaRjAR09EbwxioSb5KjWUNRSmNHKnDfwxp1TihDJksIb8dfPfHJXLcRsGSjo
 sZESTh8vC8vCA==
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-b2cc0d644bcso128574666b.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Sep 2025 01:55:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758876938; x=1759481738;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=QPvssfoU/In85UShRKppyAS4KS/HDcgMvFxB88IBvIA=;
 b=RfwN/oKOl5uGcvuudOPb9q7IETc5i1/GqZKQyRnGo0C702FbF6ObYYtFiBxMVHzqIA
 ZWweQKRzwIPw5LkXQoTYoVB8vwXcb2JEJOH5haDHSoVFqbO4fO5aRLUF2KpJA1e+HBx7
 1dUDPERdXRtDyHgipbjAQpt6ehHY8Z8DVdN1x2GZdYzhUVsXPQB9wQWZzUbOtstBviuk
 sPoetv/l0h931cfKPCFvawlFe7gC+4bHuJkjiZgbwWzX0Cj9e4VzndfZoT88KpxfVddE
 q5ji4mHMl4vkbKJFa0blrUhamRHB8sUsERrmU1eQ6ZpyJmQoys7EeMsTKcXw24tnKV4t
 y5Kw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWcC3eSl8sBtq5uUgXPGzckMdgUFGfTToexRCBo2PLrr7WB5O2rgckIeK3I/774cLe1S+e1jhoAbN0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwXT+yFzTUwvr9hrmrSv2DmuSUZIyCVxbRXlZglwp4guVgqNUQj
 LeyUyc4IHUlo3ZJVf3Mu1ftb4dCtpFts95ATbedytXfhRqcBVxT/Hqn27vuRgfQns4FFSOmVfah
 UuCxYh8Fscr/ZKUhxrzp0nDihvomEQX358Xzp+uWz9Wfz3UZXnwrngakjbZ9qQLqqkQZp20UO+U
 vQ3anBHoKYHg==
X-Gm-Gg: ASbGnctFY8MoZ3zGKpP4ny33HG+l7Yauwgc8ioMjU5s64S8CxMOe6oBdXls5vSPzRz1
 msZBS2D4NCPsTXmCmtwLviGjg9ozaStWdCru3tkJChkQxaiB7zM9ad8uZ97TZQgx9FXcqk0LUmg
 Fa8oI3+Ju9IccEfB0wI7GtyCfAuijCTcpERycKnSKfnFJDy9qkolu70wEWMZc9h8LBrd5sCwb5Q
 ydgKTLC+MOlZH3kC7o7SIO2fiArBEJ0sLl9KKEpO0azZ0/piKFuCHrMydVV2oXm9pHwCyQTsyUn
 q4x/es5PoZGx3btyzrTJo4Qv4BQlgHqBcIoO4cKPZkONmb/M6D2f0CNg
X-Received: by 2002:a17:906:f597:b0:b21:6dce:785 with SMTP id
 a640c23a62f3a-b34b7209d39mr684713066b.1.1758876937767; 
 Fri, 26 Sep 2025 01:55:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHKOuBVYc49IRA7cnoojgLB1GU9kfFCS1Pkn55N8wl2zqripG2XOg0L/N0FVk2bCqkw2RK7OA==
X-Received: by 2002:a17:906:f597:b0:b21:6dce:785 with SMTP id
 a640c23a62f3a-b34b7209d39mr684709066b.1.1758876937337; 
 Fri, 26 Sep 2025 01:55:37 -0700 (PDT)
Received: from localhost.localdomain ([103.155.100.15])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b35446f7746sm328087966b.59.2025.09.26.01.55.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Sep 2025 01:55:36 -0700 (PDT)
From: Aaron Ma <aaron.ma@canonical.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, jani.nikula@linux.intel.com,
 rodrigo.vivi@intel.com, suraj.kandpal@intel.com, imre.deak@intel.com,
 joonas.lahtinen@linux.intel.com, aaron.ma@canonical.com
Subject: [PATCH 2/2] drm/i915/backlight: Add get brightness support of DPCD
 via AUX
Date: Fri, 26 Sep 2025 16:54:01 +0800
Message-ID: <20250926085401.2808634-2-aaron.ma@canonical.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250926085401.2808634-1-aaron.ma@canonical.com>
References: <20250926085401.2808634-1-aaron.ma@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Use drm common helper to read brightness from
both luminance and AUX mode to support get_brightness from
DPCD via AUX.

Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
---
 .../drm/i915/display/intel_dp_aux_backlight.c | 20 ++++++-------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 0a3a3f6a5f9d8..0ee6fd0f41ef0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -454,24 +454,16 @@ static u32 intel_dp_aux_vesa_get_backlight(struct intel_connector *connector, en
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
 	struct intel_panel *panel = &connector->panel;
-	u8 buf[3];
-	u32 val = 0;
-	int ret;
 
-	if (panel->backlight.edp.vesa.luminance_control_support) {
-		ret = drm_dp_dpcd_read(&intel_dp->aux, DP_EDP_PANEL_TARGET_LUMINANCE_VALUE, buf,
-				       sizeof(buf));
-		if (ret < 0) {
-			drm_err(intel_dp->aux.drm_dev,
-				"[CONNECTOR:%d:%s] Failed to read Luminance from DPCD\n",
-				connector->base.base.id, connector->base.name);
-			return 0;
-		}
+	if (!panel->backlight.edp.vesa.info.aux_set) {
+		u32 pwm_level = panel->backlight.pwm_funcs->get(connector, unused);
 
-		val |= buf[0] | buf[1] << 8 | buf[2] << 16;
-		return val / 1000;
+		return intel_backlight_level_from_pwm(connector, pwm_level);
 	}
 
+	connector->panel.backlight.level =
+		drm_edp_backlight_get_level(&intel_dp->aux, &panel->backlight.edp.vesa.info);
+
 	return connector->panel.backlight.level;
 }
 
-- 
2.43.0

