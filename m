Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D04E7EA4DB
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 21:32:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0507310E17C;
	Mon, 13 Nov 2023 20:32:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com
 [IPv6:2a00:1450:4864:20::129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 969B810E030
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Nov 2023 20:32:48 +0000 (UTC)
Received: by mail-lf1-x129.google.com with SMTP id
 2adb3069b0e04-507be298d2aso6504195e87.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Nov 2023 12:32:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1699907566; x=1700512366; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=64v2egvvEQFC8ruAQJJVyobLG50m1/my/axjd2/1lto=;
 b=UNuN62JmlYaTX2xUwRHEEn47I+1AfUc3Y+52BTU0RvEkF8EDURqaFnuFAjx2xGwxyz
 ExHItkNKJDBX4Q/9k1ZZBs0B8F0CSH2YkhlXmcY18xKBuVaHPD+y4zSNxegwu40fnhBN
 OXeUBbP8hgXq9n41IE4Q2/Y2meZgZc5ljmsb+NUTn0TZ409LbuuhBwgQ+fc5HSiCMM5L
 nKo78OV2wqszpRTfsERzZqucYo4/IiW42R7wI3FyFZ6DeuazRM2mfjgt0vJU1jlqSugo
 +n0z6gWa29TqsiU2ox/2JQ7Q9n7+f5Kv2/LUn/LaJD5RYzJc8KPnMP9jyfV6nAFBun9x
 0ntQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699907566; x=1700512366;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=64v2egvvEQFC8ruAQJJVyobLG50m1/my/axjd2/1lto=;
 b=sOp52OBp4QVxLspl+Ze+bO/Vq8444kt+9hl/qQKcAQD0bMNALDTynz0aZ1G0ULCfUD
 zKu6o8kyh8JLhtX+0RXaoQruk3DvE3/6Y247GYKg42Jji6TQ9EWg0zIIAOgobG05au93
 o/TyHReseoaw8CbyMgK0oQUep64Oj9U9tOyugcq0RcFH0mslk6MzWivSDDI2NibE6QX0
 qSMZRHwP+CvrqjNf+W/1pnQRJdWLqUVikPltJBK39d9qHC9mrgV3QeFxVQ5w4EbwdDBq
 OSMvAfUV5XpCQiitENFWmCpUlHupe0ECttQN9cNhCGX5jAtEqvgsbMJRkBuUxIPQX/G9
 LTtw==
X-Gm-Message-State: AOJu0YzabkBsXcY5LzU4JPPPj406UUfssATbL7EOZ9UcVRJfO5HtBmgl
 6TbqBK5mzQJK9pjioBjcaoOSt0qe8N7z3A==
X-Google-Smtp-Source: AGHT+IF3ZDR+82kQKl/ZMCHcSjCJ1Q65K+dOcFFCyMDxgJwov1uV9k4gV9PvM7CxXKpM2gBSykmg+Q==
X-Received: by 2002:a05:6512:ac6:b0:500:b2f6:592 with SMTP id
 n6-20020a0565120ac600b00500b2f60592mr7211464lfu.50.1699907566346; 
 Mon, 13 Nov 2023 12:32:46 -0800 (PST)
Received: from jheikkil-mobl1.. (91-156-196-125.elisa-laajakaista.fi.
 [91.156.196.125]) by smtp.gmail.com with ESMTPSA id
 c26-20020a19761a000000b0050422588213sm1082521lff.209.2023.11.13.12.32.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Nov 2023 12:32:45 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Nov 2023 22:32:39 +0200
Message-Id: <20231113203239.128207-3-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231113203239.128207-1-juhapekka.heikkila@gmail.com>
References: <20231113203239.128207-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/display: In intel_framebuffer_init
 switch to use intel_bo_to_drm_bo
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

Use intel_bo_to_drm_bo instead of &obj->base.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index c1777ea35761..6d48aa3af95a 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -2093,7 +2093,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 			}
 		}
 
-		fb->obj[i] = &obj->base;
+		fb->obj[i] = intel_bo_to_drm_bo(obj);
 	}
 
 	ret = intel_fill_fb_info(dev_priv, intel_fb);
-- 
2.25.1

