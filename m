Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB42F7E824D
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Nov 2023 20:14:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5789210E208;
	Fri, 10 Nov 2023 19:14:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com
 [IPv6:2607:f8b0:4864:20::532])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 853B210E1DB
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Nov 2023 19:14:03 +0000 (UTC)
Received: by mail-pg1-x532.google.com with SMTP id
 41be03b00d2f7-5bcf83a8f6cso1702278a12.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Nov 2023 11:14:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1699643643; x=1700248443;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=MD1dV3f2O7u955hezn07tiOBc51OBGshXDAo/OfAZrA=;
 b=n0LecbDx6m9jpDlQPXFLpcgpIZBEUSxUn1DYqIETpTXvv91+y2+NIpIE2mevNBt56H
 tfsSi1ZHVxRYBjR47aYaoARs2pDYK2fa5UFFu1zeQ2Ubfwm/SLI+fGffBPW8ZiVWJMjX
 ljoX+w9WuEUMYBj5Tj9yMAVS25uH4fMY89vgI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699643643; x=1700248443;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=MD1dV3f2O7u955hezn07tiOBc51OBGshXDAo/OfAZrA=;
 b=YUInFIuV0HOBDqrCi7ct0ybHZOSmGpS73aoyJjgRiA8/bc4lvKd+LkceLp0p/Gl6S8
 5YLohhwnZZ/YWL0q531hqDExJa4l5OytZS9gn/F5eLBPimNnqdklJuDsyTYKi82HF4P8
 JElUmn7WNBcm/clYiVYBQMR1liXlBv8+q101DpklMAenW+3AhPdCnafLj5uo8i8BpXbp
 Jpothc4pQ/LPWpKldtmbtmyI179F5ztfQraRG282eABua/GfyHv0RmOHBfaUHDBxApn3
 dcVQhJ2erJggIdZPCVQYCg5HYhBkOOaZKjXyun5ufoDikxCsFNTvEPSVyb+uLX1TBfRC
 Zcqg==
X-Gm-Message-State: AOJu0Yw6Q5d1KnLbx1LSng5dh7gDEpq3NA8rkhzQcHSFcfOHq2zsS4Fw
 mPb2BpxD/nw4rrIXno06Q5faWuSx5yemkhYGV/Dksg==
X-Google-Smtp-Source: AGHT+IG56L/poRnCSG+JgnV/8FlZGz4mVVijUIZfx7X/ZKyDxkv3Cg5t+LEK6GYKkue8BeIvRwpjsw==
X-Received: by 2002:a17:90b:1c8b:b0:281:5860:12f3 with SMTP id
 oo11-20020a17090b1c8b00b00281586012f3mr5459831pjb.3.1699643642943; 
 Fri, 10 Nov 2023 11:14:02 -0800 (PST)
Received: from ballway1.c.googlers.com.com
 (175.199.125.34.bc.googleusercontent.com. [34.125.199.175])
 by smtp.gmail.com with ESMTPSA id
 t9-20020a17090ad14900b00280976d4ce3sm1960160pjw.37.2023.11.10.11.14.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Nov 2023 11:14:02 -0800 (PST)
From: Allen Ballway <ballway@chromium.org>
To: dmitry.torokhov@gmail.com
Date: Fri, 10 Nov 2023 19:13:37 +0000
Message-ID: <20231110191340.4157610-1-ballway@chromium.org>
X-Mailer: git-send-email 2.42.0.869.gea05f2083d-goog
In-Reply-To: <ZU0fa6fvT4ZWTNXr@google.com>
References: <ZU0fa6fvT4ZWTNXr@google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/quirk: Add quirk for devices with
 incorrect PWM frequency
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
Cc: intel-gfx@lists.freedesktop.org, ballway@chromium.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cyernet T10C has a bad default PWM frequency causing the display to
strobe when the brightness is less than 100%. Create a new quirk to use
the value from the BIOS rather than the default register value.

Signed-off-by: Allen Ballway <ballway@chromium.org>
---
V1 -> V2: Fix style issues.

 .../gpu/drm/i915/display/intel_backlight.c    |  6 +++--
 drivers/gpu/drm/i915/display/intel_quirks.c   | 26 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_quirks.h   |  1 +
 3 files changed, 31 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 2e8f17c045222..b4171952343eb 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -1385,8 +1385,10 @@ static int vlv_setup_backlight(struct intel_connector *connector, enum pipe pipe
 	ctl2 = intel_de_read(i915, VLV_BLC_PWM_CTL2(pipe));
 	panel->backlight.active_low_pwm = ctl2 & BLM_POLARITY_I965;

-	ctl = intel_de_read(i915, VLV_BLC_PWM_CTL(pipe));
-	panel->backlight.pwm_level_max = ctl >> 16;
+	if (!intel_has_quirk(i915, QUIRK_IGNORE_DEFAULT_PWM_FREQUENCY)) {
+		ctl = intel_de_read(i915, VLV_BLC_PWM_CTL(pipe));
+		panel->backlight.pwm_level_max = ctl >> 16;
+	}

 	if (!panel->backlight.pwm_level_max)
 		panel->backlight.pwm_level_max = get_backlight_max_vbt(connector);
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index a280448df771a..ff6cb499428ce 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -65,6 +65,12 @@ static void quirk_no_pps_backlight_power_hook(struct drm_i915_private *i915)
 	drm_info(&i915->drm, "Applying no pps backlight power quirk\n");
 }

+static void quirk_ignore_default_pwm_frequency(struct drm_i915_private *i915)
+{
+	intel_set_quirk(i915, QUIRK_IGNORE_DEFAULT_PWM_FREQUENCY);
+	drm_info(&i915->drm, "Applying ignore default pwm frequency quirk");
+}
+
 struct intel_quirk {
 	int device;
 	int subsystem_vendor;
@@ -90,6 +96,12 @@ static int intel_dmi_no_pps_backlight(const struct dmi_system_id *id)
 	return 1;
 }

+static int intel_dmi_ignore_default_pwm_frequency(const struct dmi_system_id *id)
+{
+	DRM_INFO("Default PWM frequency is incorrect and is overridden on %s\n", id->ident);
+	return 1;
+}
+
 static const struct intel_dmi_quirk intel_dmi_quirks[] = {
 	{
 		.dmi_id_list = &(const struct dmi_system_id[]) {
@@ -136,6 +148,20 @@ static const struct intel_dmi_quirk intel_dmi_quirks[] = {
 		},
 		.hook = quirk_no_pps_backlight_power_hook,
 	},
+	{
+		.dmi_id_list = &(const struct dmi_system_id[]) {
+			{
+				.callback = intel_dmi_ignore_default_pwm_frequency,
+				.ident = "Cybernet T10C Tablet",
+				.matches = {DMI_EXACT_MATCH(DMI_BOARD_VENDOR,
+							    "Cybernet Manufacturing Inc."),
+					    DMI_EXACT_MATCH(DMI_BOARD_NAME, "T10C Tablet"),
+				},
+			},
+			{ }
+		},
+		.hook = quirk_ignore_default_pwm_frequency,
+	},
 };

 static struct intel_quirk intel_quirks[] = {
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/drm/i915/display/intel_quirks.h
index 10a4d163149fd..ca34dacf0c242 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.h
+++ b/drivers/gpu/drm/i915/display/intel_quirks.h
@@ -17,6 +17,7 @@ enum intel_quirk_id {
 	QUIRK_INVERT_BRIGHTNESS,
 	QUIRK_LVDS_SSC_DISABLE,
 	QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK,
+	QUIRK_IGNORE_DEFAULT_PWM_FREQUENCY,
 };

 void intel_init_quirks(struct drm_i915_private *i915);
--
2.42.0.869.gea05f2083d-goog

