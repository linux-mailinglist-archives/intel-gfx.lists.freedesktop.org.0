Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE251BD2EA
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 05:28:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A881B6E8A3;
	Wed, 29 Apr 2020 03:28:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com
 [IPv6:2607:f8b0:4864:20::832])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53A796E39C
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 03:28:43 +0000 (UTC)
Received: by mail-qt1-x832.google.com with SMTP id s30so783540qth.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 20:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TeTcpsx5W4oBJveEgnLcokmGcrvLa5RcMYDY7psQdW0=;
 b=hx+UxokoGpOldpFoYZ5/GKUvGSgmidGcVQyKeq0l41MnYn/fhzNzkFpC+NH2xjRufy
 OyhPsdfCFH8HGS0wKHHVhkQUWYmm/+P8X2DaMDnpI8y1f5QY9/ahi9a8sBmLmL1pHs1w
 2xoV6hfLskWm2hVDQEOAcVVLFSHYxAi6v+tTStM9vyq1thR+MCc5uniKgxhOkfMNTSf4
 k9PnJJgeUDEAraEQRt6NTzkPyQxX89eyLKgFQFYbuw/4HXd2W0/gH28+SrHcruus1wze
 nVTR9dYeuLSqvCgQxQHj6zxO7JqVkClZ2FZ+tl8l35Np8D68Oc/QT5odEXh5ai/BGxD5
 4BMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TeTcpsx5W4oBJveEgnLcokmGcrvLa5RcMYDY7psQdW0=;
 b=OYr2Z2MdulLlp1MOB6K7g6NbvcylOKXfudHwnX98HvV5g79A9a5t7ValrQzbpub8Bw
 yVy42WH4mgYTGLSHd/958d3i/IhiZLZQDmdZ/NRlm0NgkPc0de2gYmQAqTSctnmtH4qW
 3VrxHe95eWSrcWgfAidyyUMOSx/afjO0vS4Mpy7CwxIQKgeZGkserZIYyzY9nYI0Hiv6
 Ukt3UBUU33zzA7t4gQi7qFAGVkXM8mU5XcCcO+iclEyWgruoPr8+FHessaqrvhDNDnXy
 OgRQw5DwIFSUn2x/a83e4G3Bza8xfajFFGqsG5eMfqIT21XBz7vispkJ/qDa+dNXpal7
 13ZQ==
X-Gm-Message-State: AGi0PuYfcV9DInl7RZUU7j+9YGDIDR7fbwd4MSrtAjFL2EmnZFi6gH7f
 kgyCWgrlWM40K9jFAPRArqX6qXIeCP8=
X-Google-Smtp-Source: APiQypKtSp8JPI2FhawR26ws+eUH/Cm8nhWoJXpd18zYfNRwrRTrK6P+JhZpaDLR3f1oiqAqTCg+uQ==
X-Received: by 2002:ac8:7b27:: with SMTP id l7mr32469527qtu.283.1588130922041; 
 Tue, 28 Apr 2020 20:28:42 -0700 (PDT)
Received: from prosha.fios-router.home
 (pool-72-92-48-173.phlapa.fios.verizon.net. [72.92.48.173])
 by smtp.gmail.com with ESMTPSA id s15sm15581925qtc.31.2020.04.28.20.28.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 20:28:40 -0700 (PDT)
From: Alexei Podtelezhnikov <apodtele@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Apr 2020 23:27:50 -0400
Message-Id: <20200429032750.4836-1-apodtele@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200428135744.GI6112@intel.com>
References: <20200428135744.GI6112@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [patch] drm/i915: Update Slylake PCI IDs
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

Add three new devices 0x1513, 0x1515, and 0x1517 also known as 
iSKLULTGT15, iSKLULXGT15, and iSKLDTGT15. Reclassify 0x1923, 0x1927, 
and 0x192A according to specifications.

Signed-off-by: Alexei Podtelezhnikov <apodtele@gmail.com> 
---
 include/drm/i915_pciids.h | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 1d2c1221..c12bce9e 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -331,15 +331,18 @@
 	INTEL_VGA_DEVICE(0x22b3, info)
 
 #define INTEL_SKL_ULT_GT1_IDS(info) \
-	INTEL_VGA_DEVICE(0x1906, info) /* ULT GT1 */
+	INTEL_VGA_DEVICE(0x1906, info), /* ULT GT1 */ \
+	INTEL_VGA_DEVICE(0x1913, info) /* ULT GT1.5 */
 
 #define INTEL_SKL_ULX_GT1_IDS(info) \
-	INTEL_VGA_DEVICE(0x190E, info) /* ULX GT1 */
+	INTEL_VGA_DEVICE(0x190E, info), /* ULX GT1 */ \
+	INTEL_VGA_DEVICE(0x1915, info) /* ULX GT1.5 */
 
 #define INTEL_SKL_GT1_IDS(info)	\
 	INTEL_SKL_ULT_GT1_IDS(info), \
 	INTEL_SKL_ULX_GT1_IDS(info), \
 	INTEL_VGA_DEVICE(0x1902, info), /* DT  GT1 */ \
+	INTEL_VGA_DEVICE(0x1917, info), /* DT  GT1.5 */ \
 	INTEL_VGA_DEVICE(0x190B, info), /* Halo GT1 */ \
 	INTEL_VGA_DEVICE(0x190A, info) /* SRV GT1 */
 
@@ -359,21 +362,21 @@
 	INTEL_VGA_DEVICE(0x191D, info)  /* WKS GT2 */
 
 #define INTEL_SKL_ULT_GT3_IDS(info) \
-	INTEL_VGA_DEVICE(0x1926, info) /* ULT GT3 */
+	INTEL_VGA_DEVICE(0x1923, info), /* ULT GT3 */ \
+	INTEL_VGA_DEVICE(0x1927, info), /* ULT GT3 28W */ \
+	INTEL_VGA_DEVICE(0x1926, info) /* ULT GT3e */
 
 #define INTEL_SKL_GT3_IDS(info) \
 	INTEL_SKL_ULT_GT3_IDS(info), \
-	INTEL_VGA_DEVICE(0x1923, info), /* ULT GT3 */ \
-	INTEL_VGA_DEVICE(0x1927, info), /* ULT GT3 */ \
+	INTEL_VGA_DEVICE(0x192A, info), /* SRV GT3 */ \
 	INTEL_VGA_DEVICE(0x192B, info), /* Halo GT3 */ \
-	INTEL_VGA_DEVICE(0x192D, info)  /* SRV GT3 */
+	INTEL_VGA_DEVICE(0x192D, info)  /* SRV GT3e */
 
 #define INTEL_SKL_GT4_IDS(info) \
 	INTEL_VGA_DEVICE(0x1932, info), /* DT GT4 */ \
 	INTEL_VGA_DEVICE(0x193B, info), /* Halo GT4 */ \
 	INTEL_VGA_DEVICE(0x193D, info), /* WKS GT4 */ \
-	INTEL_VGA_DEVICE(0x192A, info), /* SRV GT4 */ \
-	INTEL_VGA_DEVICE(0x193A, info)  /* SRV GT4e */
+	INTEL_VGA_DEVICE(0x193A, info)  /* SRV GT4 */
 
 #define INTEL_SKL_IDS(info)	 \
 	INTEL_SKL_GT1_IDS(info), \
--
2.26.2
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
