Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1917EE3CE
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 16:02:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2472410E618;
	Thu, 16 Nov 2023 15:02:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 714C710E611
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 15:02:36 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id
 2adb3069b0e04-507a5f2193bso976340e87.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 07:02:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1700146954; x=1700751754; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=icY2ED59vLVz/u05dBPuZZW32XDbBgeLiheTHFnk+Pk=;
 b=NkbnOAuiOCJFjVpD/m2B6Atw/mAEFRR66nSDW2lYAblIE5WlCuFA13tpXBsW5myVFO
 EF6IJvH8El5fiy+5MPyS2Hu8LotFSWEHPeNH9+LZwHP6laNWF1msJbWaruLcp/M89Nu/
 LVcTL+3UYKLIyMQUGoUmcbWeFnTtwFIx0g679uFmSBEeQQRX10uSu0Pc658y+twe/GRz
 00CkVsQKHbgoewfqDKPKM/o6drgSFg9aSmhL/VLGU4iObmaYJBYIKPLCFzoM1bkH761v
 FyZcqSGrlmgNwH57b+f1TjM6I7wuj6ZOw3dzXyZi3YBqTk1AE8YkvAFle6eloNUTUsUe
 Co9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700146954; x=1700751754;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=icY2ED59vLVz/u05dBPuZZW32XDbBgeLiheTHFnk+Pk=;
 b=lkt/3V1rky2K465depH8bMdA3MZOJ3t0s1HVkALoetU/1946ruvmIQXS7Yzy55OvQK
 m8juZhGXBuTlGEQZyGzrSnQIyVnlYw064FA0qHlJrKHDaBSOJiE5b8nYEgr0zKYnXp4K
 1OMH3EgwUW6jlRuDlQl7kjaA43jr8mSDREb7/CUlYOal3yHWSr0aA7Aduyxd6Eg9pnSu
 9cKTjkF2a1xERraGv6rpJZwwgc1RoryiaiQvJkHvxr2PRGrozVxS1XUALvg/zHAM9HHI
 qIVrDfN+/ml7fbec13CxKKI+QUjTl1Q2ccBKMBjBBVW4NznYdE5v1kx+BRoGLgeXI18i
 Sswg==
X-Gm-Message-State: AOJu0YxCK56U1qV6gOPWHA2sY+TDqQxG5e7hTW0Y2qmcrt8l6AW8bCyQ
 8lrfgciJDMNHtJAwJMeX8BmrHrog9VBAaWsd
X-Google-Smtp-Source: AGHT+IGit4rqBjqjB5lEW721eEu5ej9YfttUjMFHgwhQGd3lYX7ZIZjcNAY1sHE/3KKbphrwfOgMPw==
X-Received: by 2002:a05:6512:3f07:b0:509:4730:9103 with SMTP id
 y7-20020a0565123f0700b0050947309103mr1056357lfa.6.1700146954257; 
 Thu, 16 Nov 2023 07:02:34 -0800 (PST)
Received: from jheikkil-mobl1.. ([2001:998:22:0:a48a:cde7:e984:4fbc])
 by smtp.gmail.com with ESMTPSA id
 c27-20020ac25f7b000000b00500b561285bsm18055lfc.292.2023.11.16.07.02.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Nov 2023 07:02:33 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Nov 2023 17:02:25 +0200
Message-Id: <20231116150225.204233-3-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231116150225.204233-1-juhapekka.heikkila@gmail.com>
References: <20231116150225.204233-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

We are preparing for Xe driver. I915 and Xe object implementation are
differing. Use intel_bo_to_drm_bo instead of &obj->base.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
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

