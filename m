Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FA0651136
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Dec 2022 18:30:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44A5810E2E4;
	Mon, 19 Dec 2022 17:30:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF4A510E2E7
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Dec 2022 17:29:58 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id i7so9396983wrv.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Dec 2022 09:29:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rOw5k73l/JdJ6a9QZPLJWQFhsZVF2zLczwHGYQ3IoZI=;
 b=AgjZmTcbf3R4w7M49WSegUVCrUAIp8q5dxxmToskreg1vYXDOn0ceWEGF1w9PV7Ymx
 t56/5sS8dUNM6J0JiQnjjjE8VgnY++abG+cJl0faMPfB25BWc16QJPgga4PUczE963cH
 qaaPk3dV4UrIBy54wVfjy8TkZ9RZtmjCP5FDyOlgVHwKm8og0YR00nukeoxQSVmlj2DC
 I2a7nmpP7+sb2xBp1x9GVDGSBDraVlwJUwyTwnZ1Hi49QMuLF9k6sjhRMuLP1sn2CzKz
 OoSxSzJIOYAZKK+p0o+5BNTCem34bsLzlOWbKhTe2qPMiwE9aZqPERiHxYNepdq4T0oK
 ThdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=rOw5k73l/JdJ6a9QZPLJWQFhsZVF2zLczwHGYQ3IoZI=;
 b=h/ROP/2rlEHmAkoCa1OUVyQOMmtpWPgSh2SQtyniDIhj0klPcTymKQBQ+q7ymv3hiT
 FHoQE/+y2vWUzdjicvyxBmfFNTfZfAxe7z+2YaczO4kzwAdtB5VimXQhSHcydbZfRCsW
 hc9MKIQnZIy0PUj5TwJPNf5Q/DYKcIIWjpk4OF/hMnkIu6Xec4/nvVcq5tuMqc4fu7Uw
 RfSF9Sjm0iYV+VqwEIH4Q8pJLk74L7W0vXhzu+G7m9t3oNuDGXjc3wO4bMu9ZdZcTC69
 k8NhikrWqcxkvgIV1AP7KFP5XcvsrOppti+s0FIL/V4V+wZLg1F74o8LTU5T8qmt3SqJ
 KdXQ==
X-Gm-Message-State: AFqh2kqDsVoRC1nnghrY6c2PCxjJzeoJguxZJl4hcmfaT7J7k3OZHSFQ
 hpVGiW91I7izOeuja6de0clab+UwuhQ=
X-Google-Smtp-Source: AMrXdXtKDzv9pLBsrtlJvzppfqFFUn98YzLX4s5meQcc80rtRx50QYO/lXtVcoRRukSkdiZUnlWQhQ==
X-Received: by 2002:a05:6000:1ace:b0:25e:f503:7db7 with SMTP id
 i14-20020a0560001ace00b0025ef5037db7mr6631271wry.37.1671470996804; 
 Mon, 19 Dec 2022 09:29:56 -0800 (PST)
Received: from localhost.localdomain (89-172-43-12.adsl.net.t-com.hr.
 [89.172.43.12]) by smtp.googlemail.com with ESMTPSA id
 x18-20020adfec12000000b00236488f62d6sm10532978wrn.79.2022.12.19.09.29.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Dec 2022 09:29:56 -0800 (PST)
From: Sasa Dragic <sasa.dragic@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Dec 2022 18:29:27 +0100
Message-Id: <20221219172927.9603-2-sasa.dragic@gmail.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20221219172927.9603-1-sasa.dragic@gmail.com>
References: <20221219172927.9603-1-sasa.dragic@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915: re-disable RC6p on Sandy Bridge
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

RC6p on Sandy Bridge got re-enabled over time, causing visual glitches
and GPU hangs.

Disabled originally in commit 1c8ecf80fdee ("drm/i915: do not enable
RC6p on Sandy Bridge").

Signed-off-by: Sasa Dragic <sasa.dragic@gmail.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 668e9da52584..69377564028a 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -423,7 +423,8 @@ static const struct intel_device_info ilk_m_info = {
 	.has_coherent_ggtt = true, \
 	.has_llc = 1, \
 	.has_rc6 = 1, \
-	.has_rc6p = 1, \
+	/* snb does support rc6p, but enabling it causes various issues */ \
+	.has_rc6p = 0, \
 	.has_rps = true, \
 	.dma_mask_size = 40, \
 	.__runtime.ppgtt_type = INTEL_PPGTT_ALIASING, \
-- 
2.37.2

