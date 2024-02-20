Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5015B85C782
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Feb 2024 22:13:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A936D10E05E;
	Tue, 20 Feb 2024 21:13:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="AJMQjjM9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
 [209.85.222.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90F0B10E05E
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Feb 2024 21:13:34 +0000 (UTC)
Received: by mail-qk1-f176.google.com with SMTP id
 af79cd13be357-785bdb57dfaso555549985a.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Feb 2024 13:13:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1708463613; x=1709068413;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=LFUM0XDK0ZVTj4kCTskFg/BdpgZIKaoWZSjy/zINkgc=;
 b=AJMQjjM9LnlVWQ9TEUBqTijfUUShL09P+Z9+OeLAlQpgsz3TDAPf5lxlO0/3a3qAUH
 2hlGUlZdYYeLIYcuw3FuDwOIQ2r3jtGOsaY6lI/9CpQi2r9HTyb66uGrHkVuh0oI3Wda
 FUuk5YYAbrAFReByvfoxeWF4gj6kH24JgjweA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708463613; x=1709068413;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=LFUM0XDK0ZVTj4kCTskFg/BdpgZIKaoWZSjy/zINkgc=;
 b=jX9rL9Ba8y0LBZlYXrVPtuHxad51kIATKUDU7WZ3ErauwoYVljBEhE26MK4AHekOT8
 Zj414KiQxVROc0vC07qG6e9uqUx3WZgQ+XYtv8mKZFbQuXXBEpLP8A4pORua7hbvhfh4
 TwN5WdOkSrIqqUvdj6XR9aZnwmnWw42RHYj15Erp/WKvIl9ogGgcPATiS1JVMJP9Q4tM
 FolDn2zY/SeuU9etK6fDvmKMHlenuUcywSrLopwhXLmCswCR9orJ68uVSXo6zTN1Aq1R
 WRjkeGRY/qhKwP5O9jeXiZYdxT4aqk6ff8lW1IHp64y2S3p8wVQd5ve+mO4W2nmqUEf8
 TXoQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVUlQcPRGbkktoQP7c37Ajtm2v4eh+BXpkHXCigZF5OMq39AKQviikVihSvTR3fcf55RxHZX8sAZO9r/TA2UDvrg6RVyeg8G3wtvbFmJgVP
X-Gm-Message-State: AOJu0Yx6gzFpBhfdZ8fwEHXsxuJ+IgH14XeBPie/jC2HL4qP+nKCwj7n
 n5QYSGFFEKCSTV/hSH6rqPuZsXixlFZH8P7+Cs/OP+KbT/oRxweVJFw98mEpCQ==
X-Google-Smtp-Source: AGHT+IGb3TRgQ5pvEKeyUOQD9tS5jn+SqfoEY02pd04BL8Wl35Z1DguYO4ZJspag7M1nm0GQDt/d2Q==
X-Received: by 2002:a05:620a:e8b:b0:787:38a4:7bdd with SMTP id
 w11-20020a05620a0e8b00b0078738a47bddmr22892813qkm.2.1708463613174; 
 Tue, 20 Feb 2024 13:13:33 -0800 (PST)
Received: from kramasub2.cros.corp.google.com ([100.107.108.189])
 by smtp.gmail.com with ESMTPSA id
 c1-20020a05620a134100b0078726621376sm3701207qkl.118.2024.02.20.13.13.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Feb 2024 13:13:32 -0800 (PST)
From: Karthikeyan Ramasubramanian <kramasub@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Karthikeyan Ramasubramanian <kramasub@chromium.org>,
 stable@vger.kernel.org, Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: [PATCH v1] drivers/i915/intel_bios: Fix parsing backlight BDB data
Date: Tue, 20 Feb 2024 14:12:57 -0700
Message-ID: <20240220141256.v1.1.I0690aa3e96a83a43b3fc33f50395d334b2981826@changeid>
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Starting BDB version 239, hdr_dpcd_refresh_timeout is introduced to
backlight BDB data. Commit 700034566d68 ("drm/i915/bios: Define more BDB
contents") updated the backlight BDB data accordingly. This broke the
parsing of backlight BDB data in VBT for versions 236 - 238 (both
inclusive) and hence the backlight controls are not responding on units
with the concerned BDB version.

backlight_control information has been present in backlight BDB data
from at least BDB version 191 onwards, if not before. Hence this patch
extracts the backlight_control information if the block size of
backlight BDB is >= version 191 backlight BDB block size.
Tested on Chromebooks using Jasperlake SoC (reports bdb->version = 236).
Tested on Chromebooks using Raptorlake SoC (reports bdb->version = 251).

Fixes: 700034566d68 ("drm/i915/bios: Define more BDB contents")
Cc: stable@vger.kernel.org
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Karthikeyan Ramasubramanian <kramasub@chromium.org>
---

 drivers/gpu/drm/i915/display/intel_bios.c     | 22 +++++--------------
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  2 --
 2 files changed, 6 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index aa169b0055e97..4ec50903b9e64 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1041,23 +1041,13 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 
 	panel->vbt.backlight.type = INTEL_BACKLIGHT_DISPLAY_DDI;
 	panel->vbt.backlight.controller = 0;
-	if (i915->display.vbt.version >= 191) {
-		size_t exp_size;
+	if (i915->display.vbt.version >= 191 &&
+	    get_blocksize(backlight_data) >= EXP_BDB_LFP_BL_DATA_SIZE_REV_191) {
+		const struct lfp_backlight_control_method *method;
 
-		if (i915->display.vbt.version >= 236)
-			exp_size = sizeof(struct bdb_lfp_backlight_data);
-		else if (i915->display.vbt.version >= 234)
-			exp_size = EXP_BDB_LFP_BL_DATA_SIZE_REV_234;
-		else
-			exp_size = EXP_BDB_LFP_BL_DATA_SIZE_REV_191;
-
-		if (get_blocksize(backlight_data) >= exp_size) {
-			const struct lfp_backlight_control_method *method;
-
-			method = &backlight_data->backlight_control[panel_type];
-			panel->vbt.backlight.type = method->type;
-			panel->vbt.backlight.controller = method->controller;
-		}
+		method = &backlight_data->backlight_control[panel_type];
+		panel->vbt.backlight.type = method->type;
+		panel->vbt.backlight.controller = method->controller;
 	}
 
 	panel->vbt.backlight.pwm_freq_hz = entry->pwm_freq_hz;
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index a9f44abfc9fc2..aeea5635a37ff 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -899,8 +899,6 @@ struct lfp_brightness_level {
 
 #define EXP_BDB_LFP_BL_DATA_SIZE_REV_191 \
 	offsetof(struct bdb_lfp_backlight_data, brightness_level)
-#define EXP_BDB_LFP_BL_DATA_SIZE_REV_234 \
-	offsetof(struct bdb_lfp_backlight_data, brightness_precision_bits)
 
 struct bdb_lfp_backlight_data {
 	u8 entry_size;
-- 
2.44.0.rc0.258.g7320e95886-goog

