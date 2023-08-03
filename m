Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B32DF76ECB5
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Aug 2023 16:35:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 281A710E1CC;
	Thu,  3 Aug 2023 14:35:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F66A10E1CC
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Aug 2023 14:35:36 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id
 2adb3069b0e04-4fe48d0ab0fso1779296e87.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 03 Aug 2023 07:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1691073334; x=1691678134;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=5xWjRt5Z71lmALeZCWyIzZYOuEnQjY9vnnkZ6I+9w2s=;
 b=sadMtiZK+iYJNQsfeeE/W+z3AOlbwSmuE2bU2gChf+Lb/AOTPUnjxswRoEgYX+rWBG
 LTMsWnb+EJh5BrGLiMRHgg7DAHt8nreQuIUfuVl29qUOIMnQFvIhzAfRHkF7AlmNmW6y
 bInq9l8fF3SDjK5DfFJnUvczM0K2zUQtEit7gxeOUR1c5b+v6edwYX202OLadyR/LxOS
 oLBSCyIbBw2UrDB4akUAGZYCBMCZTBaVfWmBQPC5Y2idoYa+lR+i84Kw/mCPkF1pO0RZ
 QYJLxwgHUElFH668b+M0B06D/lEX4SjO4dhfuX5qlVaqr+kFtMfW1EU/Q1HW3MDUkBgt
 94TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691073334; x=1691678134;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=5xWjRt5Z71lmALeZCWyIzZYOuEnQjY9vnnkZ6I+9w2s=;
 b=jrDR/f/jEy1qQPpNdO/ckjpQuPNaeFz9IGh/B2EHwrqgeuRnxEto0nW2POFllv3/Xu
 nEh9Rql9fuhiWxmarqOi8724KW3HCHgtU39ZH4xFB8KUwZ6l3W8C3CHXIcyC9nq+PtVS
 Y1cXOd7hIaJnUXpdgzy8bvgx80A6J78IijilpW+w7Swp8V0dcmVTy0yDs95SdMU3mMyk
 1h3JjxZ50tPf92560J1dlp7rdy23FjRGJw/Y7hu5Zc6IC751a4V7sqLGMj28+gLZ5rAW
 nckUAPz4klSt2lY0YbvPv8MyRfgb9CdSYXKl++4w0LvgoZQwfLyj3/9EaMvACsOqKNqg
 TVwg==
X-Gm-Message-State: ABy/qLZUcqncNdyjgKk+1zdFEilvNQ3opYhK6YXD8h9O+asyeA2QSX0M
 0wtmrp4azx1J7c2p/hsYZWaEeSgxyP3wvQ==
X-Google-Smtp-Source: APBJJlGgwQVENDEHAB7CLzLR+x4y2aY2LOrr1Iy0mI0FDWiEyxJKfwVn2Oq9zWJN4vKO+Jo1WnQ7yA==
X-Received: by 2002:a05:6512:2356:b0:4fd:d002:ddad with SMTP id
 p22-20020a056512235600b004fdd002ddadmr8005362lfu.12.1691073334142; 
 Thu, 03 Aug 2023 07:35:34 -0700 (PDT)
Received: from localhost.localdomain ([2001:998:22:0:28b9:849d:263a:2326])
 by smtp.gmail.com with ESMTPSA id
 t24-20020ac25498000000b004fe2a88b271sm2342394lfk.139.2023.08.03.07.35.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Aug 2023 07:35:33 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Aug 2023 17:35:30 +0300
Message-Id: <20230803143530.27601-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/sdvo: ignore returned broken edid on
 intel_sdvo_tmds_sink_detect
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If drm_edid_raw returned NULL on error don't try accessing anything behind
that NULL

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 8298a86d1334..065e619f934f 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2097,7 +2097,7 @@ intel_sdvo_tmds_sink_detect(struct drm_connector *connector)
 		const struct edid *edid = drm_edid_raw(drm_edid);
 
 		/* DDC bus is shared, match EDID to connector type */
-		if (edid->input & DRM_EDID_INPUT_DIGITAL)
+		if (edid && edid->input & DRM_EDID_INPUT_DIGITAL)
 			status = connector_status_connected;
 		else
 			status = connector_status_disconnected;
-- 
2.40.0

