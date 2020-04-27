Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A5A1B955E
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 05:23:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5461289FBC;
	Mon, 27 Apr 2020 03:23:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com
 [IPv6:2607:f8b0:4864:20::832])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 645F589FBC
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 03:23:23 +0000 (UTC)
Received: by mail-qt1-x832.google.com with SMTP id c23so12659181qtp.11
 for <intel-gfx@lists.freedesktop.org>; Sun, 26 Apr 2020 20:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3+fumRnMtF8lWaukoALHZIBEnVC6h1xNs5bb16WfXyI=;
 b=BAIn2ORUNc/bpil30EsIr0HRAbOKGng4fTXig1axDVYSL4J9Fyh8sefonvsI0xYUvu
 4rxzhfMwG6xL7qLe06c8IJvIZUCoeNlsL/aHGAIYAjqIofXLCp0U32mISxdc3hSciafi
 WhcypdfPLs4Q6zSjEkIgowlvWJAZHs2NYiBM7LIyYPuWSuZa4DiswgQX6aBOVA6GByF1
 zq/QEtBPd6ErtUDesNBtieiavLOAeWyja5WYa8qUm6cj6uPgMiFIhx2yTnrtrRoAuWK/
 H2j4NJtZqzpnc0hHtwx1Oem8e7Hi/8MNtqCxFpx/TZYjGiuA3kmQvVTS0Wvt8HZ7f8Ni
 mv3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3+fumRnMtF8lWaukoALHZIBEnVC6h1xNs5bb16WfXyI=;
 b=hBCXhaFc43ZvPdBcE6g6eYer8gz2hOygnG2eUDsT+PcgATcZ94eBeUR1/gO0UB6ZK5
 e/1FR3j1YPmRqEdO1CT9rJeH2bcjdOBHzVW0YPGODA4x3nI5brgvf14euBqSVysruQlk
 luuixAz40x7K9Qm7imp8xJiGF+IsaBGG2L3OAr/aqG4MXhKvmIbgQaVX/2J+ZtAY6WUm
 losRxJt6I3JRfQKrWCQfKfP/quDxHyMs3JQVZ5ByFIYZ2x7YWr/VjtryTgPNp1e+6z5k
 VIm8icf0laT8tLgVn5ufYjrsHPVI3NSDh+fcHIkdrkKKvUeo2X8EUAucyENIAeS9YiLD
 Rvpw==
X-Gm-Message-State: AGi0PuYp79H4e7U0jiOe+af5MFO2wzpx8FTGj++6HQgHhglx0mKU3/nT
 NorMaUE7RKiABgVyxYKf+QHQlO5QEjE=
X-Google-Smtp-Source: APiQypLK7SXggi8Dr6fY1r9y/QYED/ftmO6md5SPl/GoAUCqQHumztdcpyQ7brr/Noq98vx4dnfHMw==
X-Received: by 2002:ac8:4e88:: with SMTP id 8mr20978961qtp.82.1587957802016;
 Sun, 26 Apr 2020 20:23:22 -0700 (PDT)
Received: from prosha.fios-router.home
 (pool-72-92-48-173.phlapa.fios.verizon.net. [72.92.48.173])
 by smtp.gmail.com with ESMTPSA id p22sm9686965qte.2.2020.04.26.20.23.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 20:23:21 -0700 (PDT)
From: Alexei Podtelezhnikov <apodtele@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 26 Apr 2020 23:22:32 -0400
Message-Id: <20200427032232.4307-1-apodtele@gmail.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
Subject: [Intel-gfx] [patch] PCI ID review
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

In reverse order:
- Add SKL GT1.5
- Remove wrong and non-existant devices
- Add Gen3/Gen4 twin IGDs
- Amend historic records 

Signed-off-by: Alexei Podtelezhnikov <apodtele@gmail.com>
---
 src/i915_pciids.h | 72 +++++++++++++++++++++++++++++++++++++------------------
 1 file changed, 49 insertions(+), 23 deletions(-)

diff --git a/src/i915_pciids.h b/src/i915_pciids.h
index 1d2c1221..a9c88eab 100644
--- a/src/i915_pciids.h
+++ b/src/i915_pciids.h
@@ -47,7 +47,11 @@ Amend historic records
 	0x030000, 0xff0000,			\
 	(unsigned long) info }
 
+#define INTEL_I740_IDS(info)					\
+	INTEL_VGA_DEVICE(0x7800, info)  /* I740 */
+
 #define INTEL_I810_IDS(info)					\
+	INTEL_VGA_DEVICE(0x1240, info), /* I752 */		\
 	INTEL_VGA_DEVICE(0x7121, info), /* I810 */		\
 	INTEL_VGA_DEVICE(0x7123, info), /* I810_DC100 */	\
 	INTEL_VGA_DEVICE(0x7125, info)  /* I810_E */
@@ -62,57 +66,79 @@ Add Gen3/Gen4 twin IGDs
 	INTEL_VGA_DEVICE(0x2562, info)
 
 #define INTEL_I85X_IDS(info)				\
-	INTEL_VGA_DEVICE(0x3582, info), /* I855_GM */ \
-	INTEL_VGA_DEVICE(0x358e, info)
+	INTEL_VGA_DEVICE(0x3582, info), /* I855_GM */   \
+	INTEL_VGA_DEVICE(0x358e, info)  /* I854 */
 
 #define INTEL_I865G_IDS(info)				\
 	INTEL_VGA_DEVICE(0x2572, info) /* I865_G */
 
 #define INTEL_I915G_IDS(info)				\
-	INTEL_VGA_DEVICE(0x2582, info), /* I915_G */ \
+	INTEL_VGA_DEVICE(0x2582, info), /* I915_G */    \
+	INTEL_VGA_DEVICE(0x2782, info), /* I915_G */    \
 	INTEL_VGA_DEVICE(0x258a, info)  /* E7221_G */
 
 #define INTEL_I915GM_IDS(info)				\
-	INTEL_VGA_DEVICE(0x2592, info) /* I915_GM */
+	INTEL_VGA_DEVICE(0x2592, info), /* I915_GM */   \
+	INTEL_VGA_DEVICE(0x2792, info)  /* I915_GM */
 
 #define INTEL_I945G_IDS(info)				\
-	INTEL_VGA_DEVICE(0x2772, info) /* I945_G */
+	INTEL_VGA_DEVICE(0x2772, info), /* I945_G */    \
+	INTEL_VGA_DEVICE(0x2776, info)  /* I945_G */
 
 #define INTEL_I945GM_IDS(info)				\
-	INTEL_VGA_DEVICE(0x27a2, info), /* I945_GM */ \
+	INTEL_VGA_DEVICE(0x27a2, info), /* I945_GM */   \
+	INTEL_VGA_DEVICE(0x27a6, info), /* I945_GM */   \
 	INTEL_VGA_DEVICE(0x27ae, info)  /* I945_GME */
 
 #define INTEL_I965G_IDS(info)				\
 	INTEL_VGA_DEVICE(0x2972, info), /* I946_GZ */	\
+	INTEL_VGA_DEVICE(0x2973, info), /* I946_GZ */	\
 	INTEL_VGA_DEVICE(0x2982, info),	/* G35_G */	\
+	INTEL_VGA_DEVICE(0x2983, info),	/* G35_G */	\
 	INTEL_VGA_DEVICE(0x2992, info),	/* I965_Q */	\
-	INTEL_VGA_DEVICE(0x29a2, info)	/* I965_G */
+	INTEL_VGA_DEVICE(0x2993, info),	/* I965_Q */	\
+	INTEL_VGA_DEVICE(0x29a2, info),	/* I965_G */    \
+	INTEL_VGA_DEVICE(0x29a3, info)	/* I965_G */
 
 #define INTEL_G33_IDS(info)				\
 	INTEL_VGA_DEVICE(0x29b2, info), /* Q35_G */ \
+	INTEL_VGA_DEVICE(0x29b3, info), /* Q35_G */ \
 	INTEL_VGA_DEVICE(0x29c2, info),	/* G33_G */ \
-	INTEL_VGA_DEVICE(0x29d2, info)	/* Q33_G */
+	INTEL_VGA_DEVICE(0x29c3, info),	/* G33_G */ \
+	INTEL_VGA_DEVICE(0x29d2, info),	/* Q33_G */ \
+	INTEL_VGA_DEVICE(0x29d3, info)	/* Q33_G */
 
 #define INTEL_I965GM_IDS(info)				\
-	INTEL_VGA_DEVICE(0x2a02, info),	/* I965_GM */ \
-	INTEL_VGA_DEVICE(0x2a12, info)  /* I965_GME */
+	INTEL_VGA_DEVICE(0x2a02, info),	/* I965_GM */   \
+	INTEL_VGA_DEVICE(0x2a03, info),	/* I965_GM */   \
+	INTEL_VGA_DEVICE(0x2a12, info), /* I965_GME */  \
+	INTEL_VGA_DEVICE(0x2a13, info)  /* I965_GME */
 
 #define INTEL_GM45_IDS(info)				\
-	INTEL_VGA_DEVICE(0x2a42, info) /* GM45_G */
+	INTEL_VGA_DEVICE(0x2a42, info), /* GM45_G */    \
+	INTEL_VGA_DEVICE(0x2a43, info)  /* GM45_G */
 
 #define INTEL_G45_IDS(info)				\
-	INTEL_VGA_DEVICE(0x2e02, info), /* IGD_E_G */ \
-	INTEL_VGA_DEVICE(0x2e12, info), /* Q45_G */ \
-	INTEL_VGA_DEVICE(0x2e22, info), /* G45_G */ \
-	INTEL_VGA_DEVICE(0x2e32, info), /* G41_G */ \
-	INTEL_VGA_DEVICE(0x2e42, info), /* B43_G */ \
-	INTEL_VGA_DEVICE(0x2e92, info)	/* B43_G.1 */
+	INTEL_VGA_DEVICE(0x2e02, info), /* IGD_E_G */   \
+	INTEL_VGA_DEVICE(0x2e03, info), /* IGD_E_G */   \
+	INTEL_VGA_DEVICE(0x2e12, info), /* Q45_G */     \
+	INTEL_VGA_DEVICE(0x2e13, info), /* Q45_G */     \
+	INTEL_VGA_DEVICE(0x2e22, info), /* G45_G */     \
+	INTEL_VGA_DEVICE(0x2e23, info), /* G45_G */     \
+	INTEL_VGA_DEVICE(0x2e32, info), /* G41_G */     \
+	INTEL_VGA_DEVICE(0x2e33, info), /* G41_G */     \
+	INTEL_VGA_DEVICE(0x2e42, info), /* B43_G */     \
+	INTEL_VGA_DEVICE(0x2e43, info), /* B43_G */     \
+	INTEL_VGA_DEVICE(0x2e92, info),	/* B43_G.1 */   \
+	INTEL_VGA_DEVICE(0x2e93, info)	/* B43_G.1 */
 
 #define INTEL_PINEVIEW_G_IDS(info) \
-	INTEL_VGA_DEVICE(0xa001, info)
+	INTEL_VGA_DEVICE(0xa001, info), \
+	INTEL_VGA_DEVICE(0xa002, info)
 
 #define INTEL_PINEVIEW_M_IDS(info) \
-	INTEL_VGA_DEVICE(0xa011, info)
+	INTEL_VGA_DEVICE(0xa011, info), \
+	INTEL_VGA_DEVICE(0xa012, info)
 
 #define INTEL_IRONLAKE_D_IDS(info) \
 	INTEL_VGA_DEVICE(0x0042, info)
@@ -258,9 +284,7 @@ Remove wrong and non-existant devices
 	INTEL_VGA_DEVICE(0x0f30, info), \
 	INTEL_VGA_DEVICE(0x0f31, info), \
 	INTEL_VGA_DEVICE(0x0f32, info), \
-	INTEL_VGA_DEVICE(0x0f33, info), \
-	INTEL_VGA_DEVICE(0x0157, info), \
-	INTEL_VGA_DEVICE(0x0155, info)
+	INTEL_VGA_DEVICE(0x0f33, info)
 
 #define INTEL_BDW_ULT_GT1_IDS(info) \
 	INTEL_VGA_DEVICE(0x1606, info), /* GT1 ULT */ \
@@ -331,7 +355,8 @@ Add SKL GT1.5
 	INTEL_VGA_DEVICE(0x22b3, info)
 
 #define INTEL_SKL_ULT_GT1_IDS(info) \
-	INTEL_VGA_DEVICE(0x1906, info) /* ULT GT1 */
+	INTEL_VGA_DEVICE(0x1906, info), /* ULT GT1 */ \
+	INTEL_VGA_DEVICE(0x1913, info) /* ULT GT1.5 */
 
 #define INTEL_SKL_ULX_GT1_IDS(info) \
 	INTEL_VGA_DEVICE(0x190E, info) /* ULX GT1 */
@@ -340,6 +365,7 @@ Add SKL GT1.5
 	INTEL_SKL_ULT_GT1_IDS(info), \
 	INTEL_SKL_ULX_GT1_IDS(info), \
 	INTEL_VGA_DEVICE(0x1902, info), /* DT  GT1 */ \
+	INTEL_VGA_DEVICE(0x1917, info), /* DT  GT1.5 */ \
 	INTEL_VGA_DEVICE(0x190B, info), /* Halo GT1 */ \
 	INTEL_VGA_DEVICE(0x190A, info) /* SRV GT1 */
 
--
2.26.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
