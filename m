Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DEBA7CCA47
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Oct 2023 20:03:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 656F110E30D;
	Tue, 17 Oct 2023 18:03:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com
 [IPv6:2607:f8b0:4864:20::536])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6243510E30D
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Oct 2023 18:03:46 +0000 (UTC)
Received: by mail-pg1-x536.google.com with SMTP id
 41be03b00d2f7-5ab2cb900fcso2678625a12.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Oct 2023 11:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1697565826; x=1698170626;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=FZe4Izl0NOH1/nIrnEIDX6DLuh+4li4EhUKl+KwsF4Q=;
 b=GOv2HhW3qATByIK15LKXA8jcBEYGXHtje058pgARiAf7iyRpSrAXKavrsDyjeg1TOR
 aGOy90+tj2sEuE1NZD0J9QFe8ObF1C+Kjc2xdB6CVnRudN+jaj5lGJXmdBJOC6NjLK1E
 PvxpgpT0X+8VfVOS0fZ3p2uM9VMsPNyXfS880=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697565826; x=1698170626;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=FZe4Izl0NOH1/nIrnEIDX6DLuh+4li4EhUKl+KwsF4Q=;
 b=ZFzM3rimqgY2Vi03mlHHtb+ViLLQ3A9pbugEqv+J7T49UeCT2a/v/V+qz5z7V/IkUT
 BnV81CEUelYMyjtAj8uJ/x1KoPq0l3kl0wdqwmY8nKOOZkeXPLmCCe/479fBt+2t4hD/
 14hzQtuzZ10IVdp/6blb5txohSIe5vFZUuJlVihKpedB0FO3shYodyBgtVhDhEtZ1F9j
 or0gFjwV4FUowZZ5JsVgjKMzjkJU3cW9GbYtnKHFcw3kxXzIWtKbSW8V/i7r3KMwF7bM
 RBQWSMi4Y6FeyDHhYp8ClcbBnuvw4g8TsMhZycK3xYC4/e4mMABvfeDfbG8hiWAGdCbI
 S1Bg==
X-Gm-Message-State: AOJu0YxVFEcRcmFeUYl96xZzKOCClX1BBq8xe8LDNIV6owohwlANjblz
 MYOoAci9YBuyuYKXtHxkkZaUVg==
X-Google-Smtp-Source: AGHT+IGAc29rrHQbeX1Qn4Vt4Mo3SzXJt7OCYsLTl7p8+z8Pzk6oL2HpCWvQ7yd7NptpYo6WTzRrqA==
X-Received: by 2002:a17:90a:1dd:b0:27d:4282:e3d2 with SMTP id
 29-20020a17090a01dd00b0027d4282e3d2mr2754844pjd.30.1697565825722; 
 Tue, 17 Oct 2023 11:03:45 -0700 (PDT)
Received: from ballway1.c.googlers.com.com
 (155.248.125.34.bc.googleusercontent.com. [34.125.248.155])
 by smtp.gmail.com with ESMTPSA id
 gz24-20020a17090b0ed800b0027d0af2e9c3sm6675469pjb.40.2023.10.17.11.03.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Oct 2023 11:03:45 -0700 (PDT)
From: Allen Ballway <ballway@chromium.org>
To: dri-devel@lists.freedesktop.org
Date: Tue, 17 Oct 2023 18:01:39 +0000
Message-ID: <20231017175728.1.Ibc6408a8ff1f334974104c5bcc25f2f35a57f36e@changeid>
X-Mailer: git-send-email 2.42.0.655.g421f12c284-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/quirk: Add quirk for devices with
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
Cc: intel-gfx@lists.freedesktop.org, Allen Ballway <ballway@chromium.org>,
 linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cyernet T10C has a bad default PWM frequency causing the display to
strobe when the brightness is less than 100%. Create a new quirk to use
the value from the BIOS rather than the default register value.

Signed-off-by: Allen Ballway <ballway@chromium.org>

---

 .../gpu/drm/i915/display/intel_backlight.c    |  3 ++-
 drivers/gpu/drm/i915/display/intel_quirks.c   | 26 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_quirks.h   |  1 +
 3 files changed, 29 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 2e8f17c045222..c4dcfece9deca 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -1388,7 +1388,8 @@ static int vlv_setup_backlight(struct intel_connector *connector, enum pipe pipe
 	ctl = intel_de_read(i915, VLV_BLC_PWM_CTL(pipe));
 	panel->backlight.pwm_level_max = ctl >> 16;

-	if (!panel->backlight.pwm_level_max)
+	if (!panel->backlight.pwm_level_max ||
+	    intel_has_quirk(i915, QUIRK_IGNORE_DEFAULT_PWM_FREQUENCY))
 		panel->backlight.pwm_level_max = get_backlight_max_vbt(connector);

 	if (!panel->backlight.pwm_level_max)
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
index 10a4d163149fd..70589505e5a0e 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.h
+++ b/drivers/gpu/drm/i915/display/intel_quirks.h
@@ -17,6 +17,7 @@ enum intel_quirk_id {
 	QUIRK_INVERT_BRIGHTNESS,
 	QUIRK_LVDS_SSC_DISABLE,
 	QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK,
+	QUIRK_IGNORE_DEFAULT_PWM_FREQUENCY
 };

 void intel_init_quirks(struct drm_i915_private *i915);
--
2.42.0.655.g421f12c284-goog

