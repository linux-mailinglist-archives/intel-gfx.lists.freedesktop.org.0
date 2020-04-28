Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CF21BB4CE
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 05:48:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E7C76E2A0;
	Tue, 28 Apr 2020 03:48:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com
 [IPv6:2607:f8b0:4864:20::f31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AA6F6E2A0
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 03:48:15 +0000 (UTC)
Received: by mail-qv1-xf31.google.com with SMTP id v38so9740610qvf.6
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 20:48:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=spPHDwN75WX6PyhHBaKkcWZyjuU3NOGM9P3vGiLO+KE=;
 b=m8GR9PGkoWRjZx31D5quj8z14nmOoletTZIqf27/It5Sq6V1smXC00uU3ex4RwHEuI
 d06Pidj4pAgQfBDbRyYH1lnphdW0WvXTyc+XiZNiWwKYkvnTxQXwchnKpe4mKdnMydyW
 5ozdjRS5vqK6hqcm4cTEM1OMurjE+hAk279CN1jUhFIiPmp6GisnXRlU3WxFNshMeQPQ
 HKMDI2zxeC47Eizow42rEJEuc5GFTMK9suCXB1Ub0bi3qDADRz5ZODpnOEPUwiw3hrNA
 +w0OEBQ4CSySq2XKQ5BuOv9RGaaB/aWsfe59ji5VhVu6h6YIjZxKyyMS5FHaca8A+r7K
 qApA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=spPHDwN75WX6PyhHBaKkcWZyjuU3NOGM9P3vGiLO+KE=;
 b=ld3TsOzvGxb5cl8Q2nvmXDzBZB2jrH48KNoap8ulTJR+dVz0AEg1MD6A8N7rdy7Ka8
 8JSRE0bRQsS3wFM572X18GnzdkbOKg2elxPfASWsM8jyVD2duYQ7x6MnxuC78w8FgTWd
 nU3sovHq4mcwyVxTpY4QJZsWTcPVrdCAQZoPuxZQ06Lo0OLSiI5T4mYtNtdX3byeMn5T
 q5dd3kEUYO7lybtpPNh7C6P80xS2gj8UGJ4TTCW8EWFoZS3EfFykpvFqmbpZtA5Eosrc
 ZHMeIDpuK9bXiUD7gplqncqI0GZVLuX8a5q2lWGB03zbinxFikfWJfMOmdKzNQvQ9ec5
 x2Sg==
X-Gm-Message-State: AGi0PuanfV4ZuIXqkTW+Hhz2r0SZDJyrSIeEUK9WFRmaBJljWMWyX/Xd
 4dTkjxycAI/Pz3yDKKcba74obCtg/O0=
X-Google-Smtp-Source: APiQypLoBwsFNo7u00YcjfOHoT3bkWA5sEM2aHSeOgGpznjje7R9/C9iHPT5yC/Pws9Co/m2n/93FQ==
X-Received: by 2002:ad4:5633:: with SMTP id cb19mr25400390qvb.98.1588045693938; 
 Mon, 27 Apr 2020 20:48:13 -0700 (PDT)
Received: from prosha.fios-router.home
 (pool-72-92-48-173.phlapa.fios.verizon.net. [72.92.48.173])
 by smtp.gmail.com with ESMTPSA id v27sm13297022qtb.35.2020.04.27.20.48.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 20:48:13 -0700 (PDT)
From: Alexei Podtelezhnikov <apodtele@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Apr 2020 23:47:52 -0400
Message-Id: <20200428034752.3975-1-apodtele@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [patch] drm/i915: Remove dubious Valleyview PCI IDs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

0x0155 is rather Ivy Bridge PCI-E Root Port.
0x0157 from the same commit ff049b6ce21d2814451afd4a116d001712e0116b
is likely wrong too. Nowhere is it independetly confirmed or mentioned.

Signed-off-by: Alexei Podtelezhnikov <apodtele@gmail.com>
---
 include/drm/i915_pciids.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/src/i915_pciids.h b/src/i915_pciids.h
index 1d2c1221..a9c88eab 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -258,9 +284,7 @@ Remove wrong and non-existent devices
 	INTEL_VGA_DEVICE(0x0f30, info), \
 	INTEL_VGA_DEVICE(0x0f31, info), \
 	INTEL_VGA_DEVICE(0x0f32, info), \
-	INTEL_VGA_DEVICE(0x0f33, info), \
-	INTEL_VGA_DEVICE(0x0157, info), \
-	INTEL_VGA_DEVICE(0x0155, info)
+	INTEL_VGA_DEVICE(0x0f33, info)
 
 #define INTEL_BDW_ULT_GT1_IDS(info) \
 	INTEL_VGA_DEVICE(0x1606, info), /* GT1 ULT */ \
--
2.26.2
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
