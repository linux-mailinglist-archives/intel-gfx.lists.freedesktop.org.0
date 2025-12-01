Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26223C9830C
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 17:10:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D27E10E430;
	Mon,  1 Dec 2025 16:10:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="i9x0WkzX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
 [209.85.210.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F099810E42F
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Dec 2025 16:10:32 +0000 (UTC)
Received: by mail-pf1-f171.google.com with SMTP id
 d2e1a72fcca58-7ba92341f83so6706615b3a.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Dec 2025 08:10:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764605432; x=1765210232; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2TX/wlLLmYuma5vOh2NANsRHqz26qzJSEKdm31TE4yc=;
 b=i9x0WkzXXVw5DjDvhV2ZMrzdy3inAU5sVQHN6XBsu6RsbHaZDFZXIHpWdtm0cMR3Fl
 JzYRp8npdErrCgaLyE1Xh4U+P1c8Wbji4wfzdk6BSplV2751RF8WjMRh9zfY0MQXt7ri
 c+UXt32ohliH/4Lzo4yUgtuK0JaBq/mSSWaA5p5/2ebMcdudw4SMbWK9oLGrj9dkmVro
 c2R409HLNTPkgfcBhbXCuuJDePgdPFs/sVdya9eaDYcDYEOeqSr5nVDZLngREs6jUbkN
 4acWkXFL+0IqCrPVSaPZBoY41di+sJPOl3RReWq3hoPoFLTmct4ZbRMvxSPTHn113kc/
 c6dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764605432; x=1765210232;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=2TX/wlLLmYuma5vOh2NANsRHqz26qzJSEKdm31TE4yc=;
 b=AXPubJ9S3U29/Nb2InW/4DiA/lG4OI3/SUmL9T1Sw81y6Jhpj4YoXLyVojNS7lGRqX
 UxnCIQ9TgucfT4cPOJ3eh/aCP2481yngLtwBrkGtnoX1HgKz3Azh61wV4fdi0SI95JKp
 14h1PKinvFVFZfqi08mTT7GG3e5je84AfaYcCarhiVREVP568HDfD6GdFChMbHDh9VTS
 aAk8BPuv/cjrWWoe/S0EDltA0mp5Ofd9Uwd/EPrktspDlF6ekPfr7iZag1a9KA+zU8ky
 /SUKKkeMtSUll/zMm2euX12IpRCe9DlY7ihkA3poD1hwXMUoDXddNujiuisPtpB/Htus
 y2hQ==
X-Gm-Message-State: AOJu0Yxws9MnHSI/gNk3NAe0lvLMpDFV1wX8qjysa3qhQhzu8aICNuIM
 DbVgLOHUsqC0r0rWffG2aEOUwrKsvCjHz2ZDdH/PUxJ5UfnrGyx5EqXJXRHBw/FN
X-Gm-Gg: ASbGnctsDV6V5RZVgYxrALGStZvcrxschHiv74JjDQhlcUD5xC7Igyrhuh8GHDTsN4x
 J0+V7erEHIdYEklYmf6U678p8e0C4IkPMww6SadL34n1vJz5TqBG986vz+oh/msOOSjoNIOwrQz
 KaTCq7rXA/1hYSvz10WgzLqf6kz/snXjhnRi4RjItFMtKcN0RhvVWZrHJ/ZJM2SO/dnP4ocVnAN
 5xLIHvmPN8M8EUdoMuMPGslpzOQFsA+syBieGhqv3wX88THijFaJ8Dx3NEE2nzZD7ZxohwmBYQg
 pgsgehl8UL/ejhDsuyQmayyUqzu7uTxXZhfAPPX0PVu5zU5eU42FM8KW5TIdY6ORQIA7k6/LCr1
 sdV5lrq+pQ5Lu0dPiW38075/JJyPDzWJu/gzgO4T3mTSxzX+cmOsuNJshFEe+n6eA4xI497WXKr
 oz8vrjr8XTG7B2h0w5g/qDhLJKxMWlSDa17SoU9wXRsMjLWDA=
X-Google-Smtp-Source: AGHT+IGZq8fpWMEPWsnnDX3t+xC1ZgvvVa+AlQTV+YqB+ZJvW+bd92dkQfUJNYqJYPhb7y3tpacglQ==
X-Received: by 2002:a05:7022:b81:b0:119:e56b:c74d with SMTP id
 a92af1059eb24-11cb3ed28camr21252756c88.18.1764605431403; 
 Mon, 01 Dec 2025 08:10:31 -0800 (PST)
Received: from localhost ([192.55.54.43]) by smtp.gmail.com with ESMTPSA id
 a92af1059eb24-11dcaed5f6bsm72525103c88.1.2025.12.01.08.10.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Dec 2025 08:10:31 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH 2/2] drm/i915: Add intel_gvt_driver_remove() onto error
 cleanup path
Date: Mon,  1 Dec 2025 18:10:13 +0200
Message-ID: <20251201161013.735943-3-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251201161013.735943-1-juhapekka.heikkila@gmail.com>
References: <20251201161013.735943-1-juhapekka.heikkila@gmail.com>
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

Add intel_gvt_driver_remove() onto error cleanup path.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 0128faf2e483..f8c01d52aba8 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -908,6 +908,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	i915_gem_drain_freed_objects(i915);
 	i915_ggtt_driver_late_release(i915);
 out_cleanup_mmio:
+	intel_gvt_driver_remove(i915);
 	i915_driver_mmio_release(i915);
 out_runtime_pm_put:
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
-- 
2.43.0

