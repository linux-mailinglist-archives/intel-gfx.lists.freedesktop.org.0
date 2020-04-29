Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1094A1BDADB
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 13:41:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68F436EA99;
	Wed, 29 Apr 2020 11:41:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com
 [IPv6:2607:f8b0:4864:20::72c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 237F36EA99
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 11:41:02 +0000 (UTC)
Received: by mail-qk1-x72c.google.com with SMTP id o19so1559269qkk.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 04:41:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=d5fTNRKLDmo7n9cBN9E48GQ4P6VI2NcLUolGKiSQrsk=;
 b=vd5PXIBgDgVfzNqQU9qgooNanRl40z0sGpH4wHDe8Q3b4zRsiSuBFFLgYu1o9+4wVn
 VDGfLtePJ2v09A01NkpaCPrLWlAA2cXU3jFKZcm3OCRjaZDlOJq99I5vWFJHbkUWh0zA
 g91QF0kERbq9o+5dPdh84X0wMFccGKeqTc83GKRdFtkKSwlEqJq1JtOWo/jK98gTQYm6
 cAKqzTG/r1hNgPRQ+v1+DJVwVQ9U0rMZ6nXdeTOlaewmNpGyPO/I+jK1hJ8b3pDG7oe9
 0N08xfGnChw4waf9Apq/608C5YA1u+YwI7FBAOYIMC8R7yXWykIfTssAQXZFntWB991R
 ApuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=d5fTNRKLDmo7n9cBN9E48GQ4P6VI2NcLUolGKiSQrsk=;
 b=Tb7R6rxQfJUqprlQhKDFZH+Yi3qMavjska4/F7yIGZEuSR7493/JC0BuvfVP4omrxT
 RPozQzEIliEPUmuG3jSvaMZqpfuJTgW4fpJ3Cn0RRrcUVz/AH9XvzuNz3p5uc5RoVS3B
 LxJNuusVuu9QnWZw3vKzMfMWnRM9b8sqgrecRCkRyVahc0dfmQxCrNrVLuNy7y1pB1wa
 D063Nhy00/JWXrQsyjHLjK8NvJRs83U1v8ER9NcJo34eIc8ovJc0prTWiBeAQDc0RriQ
 0VE02Tb9/2f+IjsMZFwcP1OydRrN83hH5Ak+rL/kMPvgitXqZnZPa5SAYmtFW1VBMice
 GF5A==
X-Gm-Message-State: AGi0PuZTTMYDIeKY/j9AxcWn4VZahEiIuA0VXZ3GDhzz27+ggiToDzyp
 HOJZuLv/ZjZiu1BZCjMooWOt+63mKwM=
X-Google-Smtp-Source: APiQypJuNa8NbF0kMLeQq3/oXBtxsqiBw3ColgTjIkZG+BMIIUzBR9OBscoNx2JCVRU1kea7845yNg==
X-Received: by 2002:a37:50d:: with SMTP id 13mr32040501qkf.494.1588160460835; 
 Wed, 29 Apr 2020 04:41:00 -0700 (PDT)
Received: from prosha.fios-router.home
 (pool-72-92-48-173.phlapa.fios.verizon.net. [72.92.48.173])
 by smtp.gmail.com with ESMTPSA id h13sm14101335qti.32.2020.04.29.04.41.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 04:41:00 -0700 (PDT)
From: Alexei Podtelezhnikov <apodtele@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 07:40:48 -0400
Message-Id: <20200429114048.15227-1-apodtele@gmail.com>
X-Mailer: git-send-email 2.26.2
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

Add three new devices 0x1913, 0x1915, and 0x1917 also known as 
iSKLULTGT15, iSKLULXGT15, and iSKLDTGT15. Reclassify 0x1923, 0x1927, 
and 0x192A according to specifications. Of note, the second to last
digit seems to correspond to GT#.

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
