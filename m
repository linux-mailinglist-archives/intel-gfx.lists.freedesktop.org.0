Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B399C724EC8
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 23:28:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9861710E3CE;
	Tue,  6 Jun 2023 21:28:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com
 [IPv6:2607:f8b0:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60CFE10E3CE
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 21:28:29 +0000 (UTC)
Received: by mail-pf1-x42a.google.com with SMTP id
 d2e1a72fcca58-650c89c7e4fso6784168b3a.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 Jun 2023 14:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1686086908; x=1688678908;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=2sxRgoat8T+i5BlkEmmYkTauekQlW2JTibKZA6oBH7A=;
 b=KOlMnU2csedCuB+1N3G5sryayb2bGRmTmpeKSm7Db0/Yce0WZlnRrfipyKn3YaL9YB
 Gh9Mg52A/JXAKuTUNb0GJxYurFksnJ6ReX19vi5D1ZG1vz5L4RkBT9q4cU5a8eQVWG1w
 4Ajg7TegZnd7DSSTzd8BjqIPevIDAyAmqOz5o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686086908; x=1688678908;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=2sxRgoat8T+i5BlkEmmYkTauekQlW2JTibKZA6oBH7A=;
 b=kLtfHWVuZbek/+0Du3TYzBlcQhrF/9KtG7C0E3OXz0PDJqRRNwJNRycYZ6QfIgPabM
 xfjjuVcWoPTE5rOL6zux7IgxzLJbDEhEBMO+i0INUSy0v6VuCOYzY9TAyD9wT0vlQ5BO
 BUeOppWjMeqq5wdtMaAcMcxVrZoeVMhFB4gIFpR+/uoyxaUSvcmz7FM4J16qCciXb7Od
 SEOIlcQLu4xjVIqV6R4p1E9NgKRK145zIItAXx7WBeNyFdnN1RDd2ndL3SmuX3mazHNN
 X5oIVt7xqWDDIfXY+/XZEpN2EGf8mtESjr60FbddtH5AmtJu9f3k3il3SLP5LeuZUL4Q
 jaCw==
X-Gm-Message-State: AC+VfDy0WTOHX9ysMEx8fDMYuvOOR5KyLSrfVE4T8XJV4Rj8ugzB8on4
 5cDChO1dhe8POXTYtOZ6EEJOjA==
X-Google-Smtp-Source: ACHHUZ6eVUGZvSc9BvXgHjP7hdptxeL7cYFm1fPWsO5lOhIXnPYN0sjI0aNLWvnZWtY+hKL8M+USsg==
X-Received: by 2002:a05:6a00:1585:b0:652:c336:e63e with SMTP id
 u5-20020a056a00158500b00652c336e63emr4458187pfk.31.1686086908535; 
 Tue, 06 Jun 2023 14:28:28 -0700 (PDT)
Received: from ballway1.c.googlers.com.com
 (97.173.125.34.bc.googleusercontent.com. [34.125.173.97])
 by smtp.gmail.com with ESMTPSA id
 m3-20020aa78a03000000b005a8173829d5sm7283325pfa.66.2023.06.06.14.28.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jun 2023 14:28:28 -0700 (PDT)
From: Allen Ballway <ballway@chromium.org>
To: jani.nikula@linux.intel.com
Date: Tue,  6 Jun 2023 21:25:13 +0000
Message-ID: <20230606211901.1.I06e778109090b5dc85c44da7b742d185aa6adb59@changeid>
X-Mailer: git-send-email 2.41.0.162.gfafddb0af9-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/quirk: Add quirk for devices that
 cannot be dimmed
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
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cybernet T10C cannot be dimmed without the backlight strobing. Create a
new quirk to lock the minimum brightness to the highest supported value.
This aligns the device with its behavior on Windows, which will not
lower the brightness below maximum.

Signed-off-by: Allen Ballway <ballway@chromium.org>
---

 .../gpu/drm/i915/display/intel_backlight.c    |  6 +++++
 drivers/gpu/drm/i915/display/intel_quirks.c   | 27 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_quirks.h   |  1 +
 3 files changed, 34 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 2e8f17c045222..863a33245a3d7 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -1192,6 +1192,11 @@ static u32 get_backlight_min_vbt(struct intel_connector *connector)

 	drm_WARN_ON(&i915->drm, panel->backlight.pwm_level_max == 0);

+	if (intel_has_quirk(i915, QUIRK_NO_DIM)) {
+		/* Cannot dim backlight, set minimum to hightest value */
+		return panel->backlight.pwm_level_max - 1;
+	}
+
 	/*
 	 * XXX: If the vbt value is 255, it makes min equal to max, which leads
 	 * to problems. There are such machines out there. Either our
@@ -1206,6 +1211,7 @@ static u32 get_backlight_min_vbt(struct intel_connector *connector)
 			    connector->panel.vbt.backlight.min_brightness, min);
 	}

+
 	/* vbt value is a coefficient in range [0..255] */
 	return scale(min, 0, 255, 0, panel->backlight.pwm_level_max);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index a280448df771a..910c95840a539 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -65,6 +65,12 @@ static void quirk_no_pps_backlight_power_hook(struct drm_i915_private *i915)
 	drm_info(&i915->drm, "Applying no pps backlight power quirk\n");
 }

+static void quirk_no_dim(struct drm_i915_private *i915)
+{
+	intel_set_quirk(i915, QUIRK_NO_DIM);
+	drm_info(&i915->drm, "Applying no dim quirk\n");
+}
+
 struct intel_quirk {
 	int device;
 	int subsystem_vendor;
@@ -90,6 +96,12 @@ static int intel_dmi_no_pps_backlight(const struct dmi_system_id *id)
 	return 1;
 }

+static int intel_dmi_no_dim(const struct dmi_system_id *id)
+{
+	DRM_INFO("No dimming allowed on %s\n", id->ident);
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
+				.callback = intel_dmi_no_dim,
+				.ident = "Cybernet T10C Tablet",
+				.matches = {DMI_EXACT_MATCH(DMI_BOARD_VENDOR,
+							    "Cybernet Manufacturing Inc."),
+					    DMI_EXACT_MATCH(DMI_BOARD_NAME, "T10C Tablet"),
+				},
+			},
+			{ }
+		},
+		.hook = quirk_no_dim,
+	},
 };

 static struct intel_quirk intel_quirks[] = {
@@ -218,6 +244,7 @@ void intel_init_quirks(struct drm_i915_private *i915)
 		     q->subsystem_device == PCI_ANY_ID))
 			q->hook(i915);
 	}
+
 	for (i = 0; i < ARRAY_SIZE(intel_dmi_quirks); i++) {
 		if (dmi_check_system(*intel_dmi_quirks[i].dmi_id_list) != 0)
 			intel_dmi_quirks[i].hook(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/drm/i915/display/intel_quirks.h
index 10a4d163149fd..b41c7bbf0a5e3 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.h
+++ b/drivers/gpu/drm/i915/display/intel_quirks.h
@@ -17,6 +17,7 @@ enum intel_quirk_id {
 	QUIRK_INVERT_BRIGHTNESS,
 	QUIRK_LVDS_SSC_DISABLE,
 	QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK,
+	QUIRK_NO_DIM,
 };

 void intel_init_quirks(struct drm_i915_private *i915);
--
2.41.0.162.gfafddb0af9-goog

