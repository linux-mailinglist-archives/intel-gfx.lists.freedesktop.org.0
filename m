Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 953021BEEA2
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 05:22:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D44006EA7A;
	Thu, 30 Apr 2020 03:22:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2a.google.com (mail-qv1-xf2a.google.com
 [IPv6:2607:f8b0:4864:20::f2a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9984D6EA7A
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 03:22:27 +0000 (UTC)
Received: by mail-qv1-xf2a.google.com with SMTP id v10so2338806qvr.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 20:22:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uLqlqKdmeAsYE10X6tsDSrZ8IZ47ptK/HRsAYbpDu3Y=;
 b=FC9sW50/RjWOO6T773iGYOm60gucmyhFNQ+zYjns729e45U7MkdKTDrROzV2++RF3/
 MwE/uAl+97hGvLGOT5nKSIcCJuaqp4/YYbio8wutOvVTKRIZCr+MXG+8v9weJKEE3i58
 NIW35IyP0gg6ObR30GEJ8lugBWUUs1mVGH3HmF9Dy6yrlfnpfu2C/UQ5zEFhnqgaKwBk
 WsTcZZ5dWk601PTofGq1fIlJ3AMQBSauuP3NYmieMJQK07ux7KpjZRGj0Ucim1ie8RYE
 2GGATixU1LaJCYJQVVNm+15qyDNpeerY7j2ZkNyXs5sa8KtkhzbGOH/ChbDSYNvLao8Z
 UuLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uLqlqKdmeAsYE10X6tsDSrZ8IZ47ptK/HRsAYbpDu3Y=;
 b=sYPIK9CBlx0Enc1/sgwAs7vwCwINseP1YH7Kq9aaKnvlAKlIltYVorECViMVJfBgEz
 dCRkAyCBgeWzNsSpNLsFEIysOVu+1TED9DS+x5/hZnjNwdkO18wBmwMZf0HVfAL9rVkP
 RALC9+2suqeJCkzI/xVSVjW5BGXL1zJIMBRgGAojfT2GBT+FqLc4qD5VjvlfYk8LU0Xd
 MN7u4CJ+uLFuf63fReVY1wkBJ2YcKIdAZ1Dpjhok53P4c+qcxgdpnpHCUhPAgZKPL0N0
 k0SM1c/yjVw9NV/BVqjw7H8CxTB5FGfyw5Cu4JPauq9vvsJWBN8jlca5qDianzQARZ0v
 xSAA==
X-Gm-Message-State: AGi0PuZiD4UpeHf/FfjaU8NUmj/wC7t5Dbpu3NoB5ndFMJuFvmaxNcoq
 /UKgzgu8WVtrEPEd9CXy163ysBdNFXo=
X-Google-Smtp-Source: APiQypL7FbniGKXAx8esqDtTnfArkAgzLmMTso3zo+w+DhynRqojJNVcN729B5yjQmiNh59FBY4COg==
X-Received: by 2002:a0c:ea28:: with SMTP id t8mr977119qvp.174.1588216946297;
 Wed, 29 Apr 2020 20:22:26 -0700 (PDT)
Received: from prosha.fios-router.home
 (pool-72-92-48-173.phlapa.fios.verizon.net. [72.92.48.173])
 by smtp.gmail.com with ESMTPSA id a22sm828123qko.81.2020.04.29.20.22.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 20:22:25 -0700 (PDT)
From: Alexei Podtelezhnikov <apodtele@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 23:22:11 -0400
Message-Id: <20200430032211.4039-1-apodtele@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <CAJU=AjWPvKA5vdgWuY6hMcq7dnZD0Zzjm0eDQBKU5TouvdL=Aw@mail.gmail.com>
References: <CAJU=AjWPvKA5vdgWuY6hMcq7dnZD0Zzjm0eDQBKU5TouvdL=Aw@mail.gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [patch v2] drm/i915: Update Slylake PCI IDs
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

Add three new devices 0x1913, 0x1915, and 0x1917 also known as
iSKLULTGT15, iSKLULXGT15, and iSKLDTGT15; GT1.5 looks closer to GT2.
Reclassify 0x1923, 0x1927, and 0x192A according to specifications and
the second least significant digit, which points to GT3 as appropriate tier.

Signed-off-by: Alexei Podtelezhnikov <apodtele@gmail.com> 
---
 include/drm/i915_pciids.h | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 1d2c1221..ec6c6ff0 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -344,36 +344,39 @@
 	INTEL_VGA_DEVICE(0x190A, info) /* SRV GT1 */
 
 #define INTEL_SKL_ULT_GT2_IDS(info) \
+	INTEL_VGA_DEVICE(0x1913, info), /* ULT GT1.5 */ \
 	INTEL_VGA_DEVICE(0x1916, info), /* ULT GT2 */ \
 	INTEL_VGA_DEVICE(0x1921, info)  /* ULT GT2F */
 
 #define INTEL_SKL_ULX_GT2_IDS(info) \
+	INTEL_VGA_DEVICE(0x1915, info), /* ULX GT1.5 */ \
 	INTEL_VGA_DEVICE(0x191E, info) /* ULX GT2 */
 
 #define INTEL_SKL_GT2_IDS(info)	\
 	INTEL_SKL_ULT_GT2_IDS(info), \
 	INTEL_SKL_ULX_GT2_IDS(info), \
+	INTEL_VGA_DEVICE(0x1917, info), /* DT  GT1.5 */ \
 	INTEL_VGA_DEVICE(0x1912, info), /* DT  GT2 */ \
 	INTEL_VGA_DEVICE(0x191B, info), /* Halo GT2 */ \
 	INTEL_VGA_DEVICE(0x191A, info), /* SRV GT2 */ \
 	INTEL_VGA_DEVICE(0x191D, info)  /* WKS GT2 */
 
 #define INTEL_SKL_ULT_GT3_IDS(info) \
-	INTEL_VGA_DEVICE(0x1926, info) /* ULT GT3 */
+	INTEL_VGA_DEVICE(0x1923, info), /* ULT GT3 */ \
+	INTEL_VGA_DEVICE(0x1927, info), /* ULT GT3 */ \
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
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
