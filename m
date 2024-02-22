Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F8F85EE6D
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 02:06:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6B7810E846;
	Thu, 22 Feb 2024 01:06:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="dzgg7vhb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F8E310E847
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 01:06:55 +0000 (UTC)
Received: by mail-qk1-f174.google.com with SMTP id
 af79cd13be357-785d57056b0so412802085a.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 17:06:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1708564014; x=1709168814;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=po77JXYuDK3AKWrYAL7OCKeGjP7qQRekYB5EzyekFyU=;
 b=dzgg7vhbxKjBJgVboadX1kQN02Z8TnzVpeVfFyGtDeTR5b9njd7RmogmUKZ3eMB/7R
 PRwZ2oAhS9xmXB+i8w7jApRk+fHH6Y7Jv46dcQn7uH4jHwmdVyr6kwqaoLDYXe88jyqP
 dXdLQkaTelqquruuWu8tZnLuzIFai1FcUORXw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708564014; x=1709168814;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=po77JXYuDK3AKWrYAL7OCKeGjP7qQRekYB5EzyekFyU=;
 b=ICBLByLA3iJsfTOpFwsDvoPgZtJuVM/rR1BlEBaQWF3BlNcrPfk2Q/NNfxplpjqK7G
 d0Z6DAmmaESV+GzZMtIdigEHlTnUPO5xH2gxVEqB0c+ieIDyzmR3Xy+hRgeo6GBuUgPT
 e004SpknEzYTdI5AYYxSzhCXHibKvyFnucbTNm7Qh6/tCCWj5GSm0i5haS35pHjNtvEQ
 Fhze1hNa941aDtNA7YikP5AkteJAmqfPAxKQy447lFkybqTdknG8J+dqJSsmsJ93dlTZ
 fAINHllsiQvVNIxG84GajH8TlHh5gQdn7aRLnLLtl0msu/WQR5LZepFctU80o9/+y9Qu
 qytQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXY6ROamnrqqVj3ho8IwiemKvcSG154G05WGmT61r/O8seUuYw/xFYP/yfMts7HAUIP+VSwm5VvFXjn1DGDXCktmZrVhP2KhLN7lxErdw4g
X-Gm-Message-State: AOJu0YxDvgThqhaSZH4LuYEFQtVUQSJ9SuTrX8GuNjZ1VTpuyeWX7UBi
 iBfE8RWMtrZjW4azQDPnbzhjZ98iZpp/T/A3VxS8Zqk/r0ZILkNV3qOSABHl9Q==
X-Google-Smtp-Source: AGHT+IEp7Fn0i4KJjuMnYv+dMkHmf+oY47g69f2lZyjT0/QpWePXbGK3ufigwAivUZ7J5jtwbH3koA==
X-Received: by 2002:a05:620a:167c:b0:787:1fb5:7e61 with SMTP id
 d28-20020a05620a167c00b007871fb57e61mr21927202qko.46.1708564014394; 
 Wed, 21 Feb 2024 17:06:54 -0800 (PST)
Received: from kramasub2.cros.corp.google.com ([100.107.108.189])
 by smtp.gmail.com with ESMTPSA id
 h1-20020a05620a21c100b0078597896394sm4789415qka.51.2024.02.21.17.06.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Feb 2024 17:06:53 -0800 (PST)
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
Subject: [PATCH v2] drivers/i915/intel_bios: Fix parsing backlight BDB data
Date: Wed, 21 Feb 2024 18:06:24 -0700
Message-ID: <20240221180622.v2.1.I0690aa3e96a83a43b3fc33f50395d334b2981826@changeid>
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
extracts the backlight_control information for BDB version 191 or newer.
Tested on Chromebooks using Jasperlake SoC (reports bdb->version = 236).
Tested on Chromebooks using Raptorlake SoC (reports bdb->version = 251).

Fixes: 700034566d68 ("drm/i915/bios: Define more BDB contents")
Cc: stable@vger.kernel.org
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Karthikeyan Ramasubramanian <kramasub@chromium.org>
---

Changes in v2:
- removed checking the block size of the backlight BDB data

 drivers/gpu/drm/i915/display/intel_bios.c     | 19 ++++---------------
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  5 -----
 2 files changed, 4 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index aa169b0055e97..8c1eb05fe77d2 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1042,22 +1042,11 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 	panel->vbt.backlight.type = INTEL_BACKLIGHT_DISPLAY_DDI;
 	panel->vbt.backlight.controller = 0;
 	if (i915->display.vbt.version >= 191) {
-		size_t exp_size;
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
index a9f44abfc9fc2..b50cd0dcabda9 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -897,11 +897,6 @@ struct lfp_brightness_level {
 	u16 reserved;
 } __packed;
 
-#define EXP_BDB_LFP_BL_DATA_SIZE_REV_191 \
-	offsetof(struct bdb_lfp_backlight_data, brightness_level)
-#define EXP_BDB_LFP_BL_DATA_SIZE_REV_234 \
-	offsetof(struct bdb_lfp_backlight_data, brightness_precision_bits)
-
 struct bdb_lfp_backlight_data {
 	u8 entry_size;
 	struct lfp_backlight_data_entry data[16];
-- 
2.44.0.rc0.258.g7320e95886-goog

