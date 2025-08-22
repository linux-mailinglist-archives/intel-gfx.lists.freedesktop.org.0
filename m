Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79844B31F24
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Aug 2025 17:43:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11AC110E0C4;
	Fri, 22 Aug 2025 15:43:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IDO1HASG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
 [209.85.210.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8746D10E0C4;
 Fri, 22 Aug 2025 15:43:35 +0000 (UTC)
Received: by mail-pf1-f178.google.com with SMTP id
 d2e1a72fcca58-76e4f2e4c40so2101876b3a.2; 
 Fri, 22 Aug 2025 08:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1755877415; x=1756482215; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=sLndkoQiB2hNHuHUXpM8gDVjp+RpnhTgJmWIA9FJrRk=;
 b=IDO1HASGqxfmq9NNtd9ZPWiq7t0a6Ga8SaNHkjmFd6ljqSEiZRN4xsM4AxIqIsNeTC
 p1CZFn1P37D5SVCZjYB4tS9YXMZyLI8nUufqE55JsLe6b+dcIYHMqOGUobIS6AVXcxFy
 iI3NEhN28LtSn1x2CBJYJufDvqp0k+tBK3n7mUKY7pj99t0ARkyC96Yu+n1IkTVRZEid
 okhl0Qdh7mujY0cbGHrUiy9+VcZqXfiDX9XzwWH6/Qf/Int+8YHur8meveCO8CeuaRnJ
 yfNg8I6m7gtKkCgeg9mgp7ZnBTSreUihLIurjbpo60GXn7thlwNym+lgwYe4skFwa+fA
 ZbTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755877415; x=1756482215;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=sLndkoQiB2hNHuHUXpM8gDVjp+RpnhTgJmWIA9FJrRk=;
 b=XsjN+gdeWthhoXyZN1un3uLDNSPVgANIITpszb6IWLOxucWIu+DMldpxLMb8tedtVu
 RZ/XqHyebCbUUu8u2FmO8Algq9j6f1txIxpvKwXR/clne6SmYe5RQxNyBxjzyFH4bYeD
 wRzNy3dc4v0NxmQHW3oWXlZbPL6nBGm19fR8v4VStaU2ZzX+y3Mgr2X0ixk0Ksf8PuXM
 OOiPn4Awg7uU6m2PBjOD0/5SNif38gN+49/4hpaZ8Qs5S3H421a/zUqL/EeAXDFlbIzP
 C11QQQwuzDoFVPlMaYHlb6st+L0EA+l1vwipgPEBKM4W3MbeSMDrvmudzW/14ynVUAHJ
 hdqw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX6xqpzn+ALV9/FlQ0wSW1Mq3kLVoEDYnLEHtUS3mMY+qQQqsoh6+c+LqWjlzviF545z2pFhgJqgQ==@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwAE+J/394rclxXNSbq1ecR/KrQAM7RI1amLDkwd0anz3b+71+C
 eU1qLgsqdQWQLYxKpzXe5ioLneShDWVee6fnFs159PN3XQAgLh/OYzj40Ptwbau9
X-Gm-Gg: ASbGncsmLDlGwW4VBgN1UKSR7i2S3lAxwt0rIavfRHZDRMxrPQ5DOPc4gZDKw7Bg0un
 sfX1/8O2PBSWEQqEE6a4JIWqBX6rCR8R3bnamFw2wXndB071V3rll22n1PHkXwjVEKbuhDHA5x2
 3VMo84n6qUO2Gut+DEeXjKEp2fO4yqxKAFXdpKcx9RCLhSR3wKnH6puNlaJN9Ag1YbVMz2F57pK
 SRe2vpyrwh0Haz24Qkj++YGfqe31P9B/dHq3clZL8sAVZomhNgLT4sHA3SojPBmORk7YLMjjT66
 o8U/8KV1Fdf17jX+RDIR0jZ9RDyr95FBM2i4AJ7YP/OGuXS+qn/jkWldvwgvNUpIUobqNzk1NCr
 ydYyB5bFW8g4CynPZ0+rhnUwdJj52RHwN6vb5hojuRA==
X-Google-Smtp-Source: AGHT+IGgftubBUKDyKfSrFhSStVX6lDDJny4VhW6gJTesG3Z+3B08u/dNHuyzBBTnW+dkMTZiwQl+w==
X-Received: by 2002:a05:6a00:3a02:b0:769:a6a2:fe1e with SMTP id
 d2e1a72fcca58-7702fa38835mr4047899b3a.11.1755877414553; 
 Fri, 22 Aug 2025 08:43:34 -0700 (PDT)
Received: from localhost ([134.134.139.73]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-770401afb87sm238035b3a.63.2025.08.22.08.43.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Aug 2025 08:43:34 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH] drm/i915/display: handle return value in
 intel_sdvo_enable_hotplug
Date: Fri, 22 Aug 2025 18:43:26 +0300
Message-ID: <20250822154327.109766-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.43.0
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

Report in log if intel_sdvo_enable_hotplug failed

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 87aff2754f69..99a5ef1401a8 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2052,8 +2052,10 @@ static void intel_sdvo_enable_hotplug(struct intel_encoder *encoder)
 {
 	struct intel_sdvo *intel_sdvo = to_sdvo(encoder);
 
-	intel_sdvo_write_cmd(intel_sdvo, SDVO_CMD_SET_ACTIVE_HOT_PLUG,
-			     &intel_sdvo->hotplug_active, 2);
+	if (!intel_sdvo_write_cmd(intel_sdvo, SDVO_CMD_SET_ACTIVE_HOT_PLUG,
+				  &intel_sdvo->hotplug_active, 2))
+		drm_warn(intel_sdvo->base.base.dev,
+			 "Failed to enable hotplug on SDVO encoder\n");
 }
 
 static enum intel_hotplug_state
-- 
2.43.0

