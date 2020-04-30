Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2A21BEE9D
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 05:20:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ABC76EA78;
	Thu, 30 Apr 2020 03:20:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2e.google.com (mail-qv1-xf2e.google.com
 [IPv6:2607:f8b0:4864:20::f2e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88A086EA78
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 03:20:36 +0000 (UTC)
Received: by mail-qv1-xf2e.google.com with SMTP id 59so2294123qva.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 20:20:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tbdi+4qdmsYnElm6wsyARpMiPSOs38XU4O30S5ZuuUY=;
 b=JpDZjtTO3JS43TkPcJytxAGVY39yO2i4/zsVMbbOBF/jHp34PNWmASf2E0cD2V/7y1
 9kwypSXFkIulW1nnk4BqMd9fq66g7RWJN5QyCNpfFbRyDbBJi6Kvo+NfgjqN0I664F8G
 nyvXAkVA63aHkGAebuBQi/OkVjVmAwNOd+aMIfF343QEijaqFTVQSuA4vfyPR+V5o3ra
 s0UN1wOD31lCs4otjoGx6LpeoxKoC5R2SQy8VB2YeLzIA/F0fvlW+CQKxXkKgS6PybSP
 MrVDQw7DIFdA8dKmml/VbYlt4izKTRfMgU9rVGBAdeLBxVU4/MLLG24MrRRe7amAHlOq
 R1nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tbdi+4qdmsYnElm6wsyARpMiPSOs38XU4O30S5ZuuUY=;
 b=W53Y3DOjhnOsl79zrYTIwRcnkXgpW2OJ5worpUtGko7LipeSqfPFcq6hg7ZB21i3Mn
 hsrpunp27k/O5FO1EBh+UUlrZ65NzW5xt/sdpl+9kXamXDBHX3jBPGNb00oXQfKmiPBb
 rliLcUsY0I0UL780o7RAigoXfC6/zsE7Qi5Dr7OoMk5E+wKVvkRv/G1Hfomc5kkK+ULl
 IqKW8l7ID03c9nxJm0Sz5QGRpPabipCZX1bIhkD+NzDLmDCgDDJJhGqpgRbNbX+vyht5
 MSTSNI6+bK3fXDHCOW54o+7vjJhlxu7YWTNny6AIB1uNlaH+R4CqJ8aEWS4im8JD/iYL
 E3Mg==
X-Gm-Message-State: AGi0PuYZdKPd1R8Akf/DVWCxB26q5B6bwrgRpVGsTFOtb61ah9uJxGQ8
 LUr1nDW1dTsjs0tR9tSPjWVuLEuF2cQ=
X-Google-Smtp-Source: APiQypK4xhTuSAABIbNaAJzUEC6VjAj/60Vbc+K9sdhnoA9UdBZD+0g8iCokygFys/MRJcRPvt3XMQ==
X-Received: by 2002:a0c:9c4b:: with SMTP id w11mr976769qve.213.1588216835194; 
 Wed, 29 Apr 2020 20:20:35 -0700 (PDT)
Received: from prosha.fios-router.home
 (pool-72-92-48-173.phlapa.fios.verizon.net. [72.92.48.173])
 by smtp.gmail.com with ESMTPSA id 63sm881654qkl.64.2020.04.29.20.20.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 20:20:34 -0700 (PDT)
From: Alexei Podtelezhnikov <apodtele@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 23:20:21 -0400
Message-Id: <20200430032021.3938-1-apodtele@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <CAJU=AjWPvKA5vdgWuY6hMcq7dnZD0Zzjm0eDQBKU5TouvdL=Aw@mail.gmail.com>
References: <CAJU=AjWPvKA5vdgWuY6hMcq7dnZD0Zzjm0eDQBKU5TouvdL=Aw@mail.gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [patch] drm/i915: Update Haswell PCI IDs
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

Reclassify 0x0426 as GT3 (GT2+) according to specifications and the second
least significant digit.

Signed-off-by: Alexei Podtelezhnikov <apodtele@gmail.com> 
---
 include/drm/i915_pciids.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 1d2c1221..ec6c6ff0 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -221,7 +221,6 @@
 	INTEL_VGA_DEVICE(0x0D1B, info), /* CRW GT2 reserved */ \
 	INTEL_VGA_DEVICE(0x0D1E, info), /* CRW GT2 reserved */ \
 	INTEL_VGA_DEVICE(0x0416, info), /* GT2 mobile */ \
-	INTEL_VGA_DEVICE(0x0426, info), /* GT2 mobile */ \
 	INTEL_VGA_DEVICE(0x0C16, info), /* SDV GT2 mobile */ \
 	INTEL_VGA_DEVICE(0x0D16, info)  /* CRW GT2 mobile */
 
@@ -246,6 +245,7 @@
 	INTEL_VGA_DEVICE(0x0D2A, info), /* CRW GT3 server */ \
 	INTEL_VGA_DEVICE(0x0D2B, info), /* CRW GT3 reserved */ \
 	INTEL_VGA_DEVICE(0x0D2E, info), /* CRW GT3 reserved */ \
+	INTEL_VGA_DEVICE(0x0426, info), /* GT2 mobile */ \
 	INTEL_VGA_DEVICE(0x0C26, info), /* SDV GT3 mobile */ \
 	INTEL_VGA_DEVICE(0x0D26, info)  /* CRW GT3 mobile */
 
--
2.26.2
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
