Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8B5C97789
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 14:06:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 518FE10E3D4;
	Mon,  1 Dec 2025 13:06:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gpVOP2FC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-dl1-f42.google.com (mail-dl1-f42.google.com [74.125.82.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69DCF10E3D4
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Dec 2025 13:06:27 +0000 (UTC)
Received: by mail-dl1-f42.google.com with SMTP id
 a92af1059eb24-11beb0a7bd6so5375190c88.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Dec 2025 05:06:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764594386; x=1765199186; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2TX/wlLLmYuma5vOh2NANsRHqz26qzJSEKdm31TE4yc=;
 b=gpVOP2FCsGyS61Y4qDsJ0FC0Zy+6Jzl5h96+JDgDlVvW5h2kBOtMb89hflYBL5XT8U
 ds1GVwMItEYLMb8s0ZzbpvsIeuV5NHIN6BimOE/VCCTuW34l98OCqqM5gpjESz5SL/Xw
 kpOeIrfBkPW8cbQ0NrC3/z7z4GCuGbUGmh1X8SraNJow9fzI3DLIcOHtwRayR82Akwwt
 +KmHcB0XPDcbl9R6T66YvoXZ/nkXirPPRzykqtY/SCBRz0jptHPf9P6VwIjF4PphqztI
 16MSwkVlgYehEbINBnobi86YLKE+CpmBxsgOcwVT2hlyudIsWLIVPC9iW9hIa+cG8PtO
 jEVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764594386; x=1765199186;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=2TX/wlLLmYuma5vOh2NANsRHqz26qzJSEKdm31TE4yc=;
 b=iKK2fuKYqX8VZ0zHcP+HNDZafoEa0hezDvSwom02mp3eh6PfxTuNRiP//5C5m8lkY3
 5511dc/dbUyv18HWoVCo7EJHjKk/UVzzziQwJvsTOC8LrJmBcr+GxADASbBEkT0oo67n
 exBVcwYV+L2NxDO9ShIDFlm3iVkJdcJ/7yAcrx4gqhtfw4ObGtKWmHixjI4aFlwBSge5
 bJ9KIrsW53n/qa6pcL/ofVVYaJ0hjTSVenM3GIpEPOftoZ63V+Y18EUldpWS4PpWTEtw
 HoYcEG1VzIonD1pyXzfGYUKqQy1kgVcWgp1PideatU0iGnr4mZfgsh09IIxSqsj1s1N6
 LSSQ==
X-Gm-Message-State: AOJu0Yy29r57V9y1K7sB3LVXJfefAjAU7715TzE0CpwqH1/QCHv0wMoD
 PZ8ROhoYth6nLhxU0jkmXIBMpPabpohjVefr5p3D81mru5ihtXSDVzcXlxRlipgr
X-Gm-Gg: ASbGnctELKuLEL1G61rL3UhSb6AwOEqlYKtHAi3HTLCfwKDxHXgEBhrkZcfshmsHQ/G
 layqUKA1lSk75L20e+yycy+PbBg5rjTKvby7glYwDeyffBVCyCHc2poF0q7XgRVqisKTkOXbbJB
 waF878M2N4BvD21SiAHRr2TwdWaRXkx+V4+/Vn3jyjGUHJTPop+y9Wf95fQL4ci5mws7nybr3On
 bTeWh9BwWi4BvHuJPtScdyeCGjYfswumi8tKt3Q61HZCzSWIg2rpw+zw+orFrwy8eX8KKoy9EK2
 AaFxbLdCNhfNuuBjV2Bfc7BXvN4z0MrYUQGneykzj3bKMnuYatqs5ivKQWNuIFBOJpskd3r+7mP
 JSF3rCOZRpSRAeF8JAaRj7bLvr4HeGJ0Hm8uyeUbPk3ldZKdQD3jO253Oy2h34ElF7S4LwEfqLd
 v3XFox4lqvBgdkIf9JUgEsmBn2wa5KbBS6Llqt0ZeRKy557T0=
X-Google-Smtp-Source: AGHT+IELXHCwA4zfY6/EPmdmiBp604fd3PcNwoTG3b6FC8M4GQ1wwLwNMb9fat2fyJpUq/i7DQD1Rw==
X-Received: by 2002:a05:7022:418b:b0:11a:468a:cf9b with SMTP id
 a92af1059eb24-11c94b0b693mr24400618c88.9.1764594386364; 
 Mon, 01 Dec 2025 05:06:26 -0800 (PST)
Received: from localhost ([192.55.54.43]) by smtp.gmail.com with ESMTPSA id
 a92af1059eb24-11dcaed5f6bsm70822054c88.1.2025.12.01.05.06.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Dec 2025 05:06:25 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH 2/2] drm/i915: Add intel_gvt_driver_remove() onto error
 cleanup path
Date: Mon,  1 Dec 2025 15:05:59 +0200
Message-ID: <20251201130559.731361-3-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251201130559.731361-1-juhapekka.heikkila@gmail.com>
References: <20251201130559.731361-1-juhapekka.heikkila@gmail.com>
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

