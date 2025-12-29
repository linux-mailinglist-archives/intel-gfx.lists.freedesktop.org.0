Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC99CE83FB
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Dec 2025 22:59:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF83610E73B;
	Mon, 29 Dec 2025 21:59:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=broadcom.com header.i=@broadcom.com header.b="Iq0zqbRI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-f97.google.com (mail-qv1-f97.google.com
 [209.85.219.97])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 955D910E73B
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Dec 2025 21:59:47 +0000 (UTC)
Received: by mail-qv1-f97.google.com with SMTP id
 6a1803df08f44-8888a444300so102285766d6.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Dec 2025 13:59:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767045586; x=1767650386;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=eqxbMiL7ohe4dc/pwMvCfPcqWUGF7TjyIlnwnpMs1gk=;
 b=ke4KNPyMhSsTvagUZd34MXBE+g4Xrzqd6sHg4bHyhZn3zBX3qzXIf0pkq0o3N/xtCK
 rcI4fNaoMoM3NSgxOAvf7zbU5uFg5+LksnA5h33kfB5HF8+0jiX1eE+xHFQ89go/qnuk
 aKpbJcEFH/u2AaMmRf/BBOwK/g2wuO0XmVXAcgvGP0GRtNT4IqMT7rflc5b+WLMIk/PV
 IRUgUFGD956nCZD9XxJg9PpycRsYXYPMjV9TYi1jyOIgoh0gtcT3TYGJEsqYkhmr/neB
 E5rnI3ZtALFKKQL+ZOoVujGb5j4Wj8SzfRUyt5XANMcb7ynitp0jT5sz/DdeYWBYDhNu
 xZmw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX8ioZeBP5jY9xdQm/SH8D5HY6etJlSlcaIhDsiUfj7TVH7E7Uwo/ZZsK9/pEsUS0y+F7e2gPbv0yo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwS7G2U13HGhPyGCGfnD5JMTRHhMsMi12K5bd2yM/2pTij26LnA
 NMVnP2ZvK2i4xINhSwh/11IFk7alIDdKbgMn9/qPDvnpy+rr2U3Zmd1qSgKAw4wA1SrmYiJPJ7l
 OKbTYrOaCpICzYBrfw8kGCcf6PmnXFZZEbYWv864JsiFBNY5g5nQQGGXDnkujFq3RvG92YBJKV9
 Q7WyHoKuuqpbtfxjBlix3eWhSswEogDEjtIJd/LGuoDkX3Gs3821wxc4PuMV+Asl4aYOtfIE9cT
 23nHfsHhfDAeZhjPJMi
X-Gm-Gg: AY/fxX5E8euez372aTS8/CN/GD5ka+bbnmrLRSIO0/EgU74oO0cEBl9MtguC9VUmeoh
 T2KcgtAek4QMcx2pxs6XxTl08zl8p10dT1gvqA7uUmU4LIQ5LUMIey0kVR2HWogXyNxE9dA9rn+
 OWUZNyrDPMKOxqemoMb36AetwRelxvTznQG+n0bQtXGAb2fHSBnfy7kDXrOvPyJ5En72Ops+ail
 OEm8tiQEksQ9d34McvTng59vWTKzxXhh9VktlmRaXRlSgxQNZ4X3+sqIb9r8LnUjuG5C2R/jARU
 4u1ct6k59eHD/EicrsCws2LfdiJliC+oOxyoyliw8yrIrpLleyz1Q1JcMLhv1xIk07QBJTZq5zx
 Ecn8GD6E1tC3uoRwkkNJ6P9eZ1MQpod0oo088mfFTq5IwjA7O9VywWV0jxc6+c54cv+1SWB+ngq
 35OtF99Ou72LqeKLSa1w/SWerRrCDRbGAHICv8tpGXLG8G
X-Google-Smtp-Source: AGHT+IHDQylBQ6zBaI2CmnWIrFb1wbYVQgDG6EHytAZ5Pesk9sggJ8wTvaY98TLO+DSdQibWuR7fJXzljA0k
X-Received: by 2002:a05:6214:3f8a:b0:720:3cd9:1f7e with SMTP id
 6a1803df08f44-88d7f5ae5e9mr489965776d6.0.1767045586606; 
 Mon, 29 Dec 2025 13:59:46 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com
 (address-144-49-247-117.dlp.protect.broadcom.com. [144.49.247.117])
 by smtp-relay.gmail.com with ESMTPS id
 6a1803df08f44-88d980511f3sm41230176d6.26.2025.12.29.13.59.46
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Dec 2025 13:59:46 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qk1-f197.google.com with SMTP id
 af79cd13be357-8b1d8f56e24so2399905785a.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Dec 2025 13:59:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=broadcom.com; s=google; t=1767045586; x=1767650386;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=eqxbMiL7ohe4dc/pwMvCfPcqWUGF7TjyIlnwnpMs1gk=;
 b=Iq0zqbRIZSL0AvPFaKhVU4W2DP4DTuTpV/Ggos+mufsNE525pVssCdCFZ11ooTxKKh
 NgrmXaPtgFx+ukEeDAUwthLnTf0s3m4e2Bt+cg2ueLWogAF95FBJsMNYhddkVV4LTdYu
 vwegevyZj3fn5Wmnr59XLtd49N8BA7jqUnAj0=
X-Forwarded-Encrypted: i=1;
 AJvYcCVHk/2zvNdiLlkpGQNcUG6I+SrP9ZSBac1liGCcMg88a3+Bk7iIhxGTISq+19dH2jyiUl/zFSaAeh4=@lists.freedesktop.org
X-Received: by 2002:a05:620a:44d5:b0:8b2:e179:feb7 with SMTP id
 af79cd13be357-8c08fa99a77mr5321267085a.49.1767045585849; 
 Mon, 29 Dec 2025 13:59:45 -0800 (PST)
X-Received: by 2002:a05:620a:44d5:b0:8b2:e179:feb7 with SMTP id
 af79cd13be357-8c08fa99a77mr5321265485a.49.1767045585459; 
 Mon, 29 Dec 2025 13:59:45 -0800 (PST)
Received: from localhost.localdomain
 (pool-173-49-113-140.phlapa.fios.verizon.net. [173.49.113.140])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-88d9759f164sm231530026d6.24.2025.12.29.13.59.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Dec 2025 13:59:44 -0800 (PST)
From: Zack Rusin <zack.rusin@broadcom.com>
To: dri-devel@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 12/12] drm/i915: Use devm aperture helpers for sysfb restore
 on probe failure
Date: Mon, 29 Dec 2025 16:58:18 -0500
Message-ID: <20251229215906.3688205-13-zack.rusin@broadcom.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251229215906.3688205-1-zack.rusin@broadcom.com>
References: <20251229215906.3688205-1-zack.rusin@broadcom.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
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

Use devm_aperture_remove_conflicting_pci_devices() instead of the
non-devm variant to automatically restore the system framebuffer
(efifb/simpledrm) if the driver's probe fails after removing the
firmware framebuffer.

Call devm_aperture_remove_conflicting_pci_devices_done() after
successful probe to cancel the automatic restore, as the driver
is now responsible for display output.

This ensures users don't lose display output if the i915 driver
fails to probe after removing the firmware framebuffer.

Signed-off-by: Zack Rusin <zack.rusin@broadcom.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tursulin@ursulin.net>
Cc: David Airlie <airlied@gmail.com>
Cc: Simona Vetter <simona@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/gpu/drm/i915/i915_driver.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index c97b76771917..f9efeb825064 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -506,7 +506,12 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 	if (ret)
 		goto err_perf;
 
-	ret = aperture_remove_conflicting_pci_devices(pdev, dev_priv->drm.driver->name);
+	/*
+	 * Use devm variant to automatically restore sysfb if probe fails.
+	 * This ensures the user doesn't lose display if our probe fails
+	 * after removing the firmware framebuffer (efifb/simpledrm).
+	 */
+	ret = devm_aperture_remove_conflicting_pci_devices(pdev, dev_priv->drm.driver->name);
 	if (ret)
 		goto err_ggtt;
 
@@ -866,6 +871,12 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	i915->do_release = true;
 
+	/*
+	 * Probe succeeded - cancel the automatic sysfb restore action.
+	 * We're now responsible for display output.
+	 */
+	devm_aperture_remove_conflicting_pci_devices_done(pdev);
+
 	return 0;
 
 out_cleanup_gem:
-- 
2.48.1

