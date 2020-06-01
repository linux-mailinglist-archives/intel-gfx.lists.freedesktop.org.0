Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 652821EA57D
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 16:02:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14ADC89EA6;
	Mon,  1 Jun 2020 14:02:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf43.google.com (mail-qv1-xf43.google.com
 [IPv6:2607:f8b0:4864:20::f43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 972F289DFA
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 14:02:24 +0000 (UTC)
Received: by mail-qv1-xf43.google.com with SMTP id e20so48398qvu.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Jun 2020 07:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=mW02zzuOr16mPZJm2itcCCjrTYGwnpsAij7awL7hCSQ=;
 b=MffQyk5gTdqB176GKHU0nC2N01AtPhnEt1GATofbCH8N8l0q6X5HlSfmpTC3Po+WYR
 1CV2s4YJ7x7IQhIkTAFCU5di+nQeR7sct0DCes/9hVLw61STNU3tHKDvMbym1hHVC1Ki
 z8rGaUkmu5khvkg4AyMab38Zy0EMH3jkBvSRzVuTxY7Lp86lzox3494UWVSNV8P9Imop
 CrkKiITCWlbedjToec/URsux7P6ThNMfN6//36gymF0w62++c8g7JcNXtC8gZyWX2Cmz
 u+E9fXhJEr7nxdzEuY4+BGGdnZ5dQ2F5w2JT7nbLAINxE/7Xl5ZDJExGTP9djpCTGrWx
 TYmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=mW02zzuOr16mPZJm2itcCCjrTYGwnpsAij7awL7hCSQ=;
 b=Gt7z9ej2iOA2f76d3J0FbywRWdwiOWWcJe3RBhs447Um6+XWTqD4xKSpSTWZz++3rI
 Y81QaBCvKQ6/SfMbPxC18aVlUz7Uu+pCc5ytwXxKPh5ZjjQYPDG9jlLYPSiNrdyHzErc
 XE0ZqDfkoSq20MTfDFbwco/30P7leNGMVG59Sv4DYQegkbHHtpJlcayKep4R8hxnkhe2
 SnTCnjJfiWMUYcuQJ5QrCnTLYAoNl4i1hO3tlUuWWCAu5UXhBcvpixUfhMcZXwPM3wfB
 +YxIx0gcjn8YKbuibDl9+Sv5IONR44xk94dKQJGRPABanLCQXRcaeBdXmjBR+VQQv+zZ
 bTRw==
X-Gm-Message-State: AOAM531U0uO5wViwA0a+gjKiEnQ9wICbaad3lxLGVxQWRB6/udL0Izag
 N2dgr1h2KGq2vBCndUufmOFTnQ==
X-Google-Smtp-Source: ABdhPJy/KrxKXKjKetBXghKiWMcCW10QUrtNsWULrX810oXNnLv0Je+okGaP+jlgwuU2mUjS1PA7yw==
X-Received: by 2002:ad4:47b1:: with SMTP id a17mr20358633qvz.16.1591020143522; 
 Mon, 01 Jun 2020 07:02:23 -0700 (PDT)
Received: from localhost (mobile-166-170-56-31.mycingular.net. [166.170.56.31])
 by smtp.gmail.com with ESMTPSA id j5sm13108612qtr.73.2020.06.01.07.02.22
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 01 Jun 2020 07:02:22 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jun 2020 10:02:17 -0400
Message-Id: <20200601140217.51709-1-sean@poorly.run>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/panel: Reduce race window between
 bl_update_status and bl_enable
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
Cc: seanpaul@chromium.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

If the backlight is updated while the panel is being enabled, the value
from userspace (which is stored in panel->backlight.device->props.brightness)
can be replaced by the hardware's minimum level. There's really no good
way to tell if this is happening in enable_backlight() since
props.brightness can be initialized to the same value as is being set by
userspace. So we'll try to reduce the race window as much as possible.

Signed-off-by: Sean Paul <seanpaul@chromium.org>
---

I don't think there's any way to eliminate this race since grabbing
bd->op_lock in panel_enable would cause a lock inversion deadlock with
the connection_mutex lock in backlight_device_update_status

Suggestions very much welcome!

 drivers/gpu/drm/i915/display/intel_panel.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 3c5056dbf607..abdfb9cc281b 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -1285,8 +1285,22 @@ static int intel_backlight_device_update_status(struct backlight_device *bd)
 	struct intel_connector *connector = bl_get_data(bd);
 	struct intel_panel *panel = &connector->panel;
 	struct drm_device *dev = connector->base.dev;
+	int value;
+
+	/*
+	 * Before we attempt to grab the connection mutex, cache the incoming
+	 * brightness value. If we're in the middle of a modeset,
+	 * intel_panel_enable_backlight will be called and could pave over
+	 * props.brightness. This is still racey, but the race window should be
+	 * significantly smaller and reflects the inherent raceyness of the
+	 * updating props.brightness outside of bd->op_lock.
+	 */
+	value = bd->props.brightness;
 
 	drm_modeset_lock(&dev->mode_config.connection_mutex, NULL);
+
+	bd->props.brightness = value;
+
 	DRM_DEBUG_KMS("updating intel_backlight, brightness=%d/%d\n",
 		      bd->props.brightness, bd->props.max_brightness);
 	intel_panel_set_backlight(connector->base.state, bd->props.brightness,
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
