Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E826FCA80
	for <lists+intel-gfx@lfdr.de>; Tue,  9 May 2023 17:48:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 229D010E0A5;
	Tue,  9 May 2023 15:48:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7535810E0A5
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 May 2023 15:48:12 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id
 2adb3069b0e04-4f139de8cefso34691060e87.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 May 2023 08:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683647290; x=1686239290;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:from:to:cc:subject:date:message-id:reply-to;
 bh=EjFKsL7LSzITqj81ZI9CdH9UPGEntEzc6HGhjTm0dCs=;
 b=mehSgI+5ev5Ng5hodQeMMxk61NiCXwTBBE1/NLBl7j92KOyy5jyaEapMvJl68PslET
 3M5wK5XmZ/mewwPt5/qNvj87Mgl3pz9sqWPrfrTZQxfJ+Bfw8nvooea5OFqwDoe3f50f
 TSWDN1bQ2/wxxM38KuuM8aB1Nugh3J5h1Zm/IAgk+AHIjmokIWfFqv/hRa6SQ9/3kY6j
 x/zptjJzlYWkQ+T+PZjfwDRqy2iy2UABj+dpWxOyH3MVNEK2GCLX1S3QpWEVMsIWrJDZ
 2EqqLtXPsejJLzqaVn+o8CCynS8Oh84ZCBUZ5AeP5XScyB2NITHWtte/duXk5sJBR8or
 94Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683647290; x=1686239290;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=EjFKsL7LSzITqj81ZI9CdH9UPGEntEzc6HGhjTm0dCs=;
 b=E/ZMM937KFqak7u+5zgLDvzvTp0njQCNNGZwIva75NuQyasMbbX0XNawl20GSlm82g
 WyQcXbbpPDuTcn81GcOC5H7rA9aTnE+UQ5gxG0wg7iIdryy+wZcfqtrRCFoILJMZmWpS
 K2tFsqDptL9zMPtw2yZYJrTdi0IYkv+l0i/o8zbmrxW9XxFA64ADfJa7usNiVYxH4z/K
 kxsWyBxuRIAAVp/E/+vTBhS9UKVOsbewikUmXjiDNrmRLzwBO65I69DyfthGXlpr5iBr
 hmcfDLlALde8rvY/twfA3GntvZJ4GGbrEfaRxYJTJdhmjy4kCFxbyeM+gpiRKdeviS1u
 /nfA==
X-Gm-Message-State: AC+VfDyQWkuDHnKEUUj/WHoOf7j5TEy7pGpNqE3ZLxQNtolwKN1pEQ6r
 aW6tTiP7VvjtNwFeHyH2y3ySOoW1HbSstg==
X-Google-Smtp-Source: ACHHUZ6RK37q1w9huTaZRxbLmD52ClHFf1u7Bh0p5bxh8cXFjJdnzgo1IJKoba4bjLNDpSsjp6FnkA==
X-Received: by 2002:a2e:a377:0:b0:2ac:826a:efae with SMTP id
 i23-20020a2ea377000000b002ac826aefaemr944288ljn.5.1683647289515; 
 Tue, 09 May 2023 08:48:09 -0700 (PDT)
Received: from localhost.localdomain (91-156-196-125.elisa-laajakaista.fi.
 [91.156.196.125]) by smtp.gmail.com with ESMTPSA id
 19-20020a05651c009300b002a6007383a0sm1611508ljq.135.2023.05.09.08.48.08
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 May 2023 08:48:08 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 May 2023 18:48:07 +0300
Message-Id: <20230509154808.3035-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/fourcc: define Intel Meteorlake related
 ccs modifiers
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

Add Tile4 type ccs modifiers with aux buffer needed for MTL

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 include/uapi/drm/drm_fourcc.h | 43 +++++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
index de703c6be969..cbe214adf1e4 100644
--- a/include/uapi/drm/drm_fourcc.h
+++ b/include/uapi/drm/drm_fourcc.h
@@ -657,6 +657,49 @@ extern "C" {
  */
 #define I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC fourcc_mod_code(INTEL, 12)
 
+/*
+ * Intel color control surfaces (CCS) for display ver 14 render compression.
+ *
+ * The main surface is tile4 and at plane index 0, the CCS is linear and
+ * at index 1. A 64B CCS cache line corresponds to an area of 4x1 tiles in
+ * main surface. In other words, 4 bits in CCS map to a main surface cache
+ * line pair. The main surface pitch is required to be a multiple of four
+ * tile4 widths.
+ */
+#define I915_FORMAT_MOD_4_TILED_MTL_RC_CCS fourcc_mod_code(INTEL, 13)
+
+/*
+ * Intel color control surfaces (CCS) for display ver 14 media compression
+ *
+ * The main surface is tile4 and at plane index 0, the CCS is linear and
+ * at index 1. A 64B CCS cache line corresponds to an area of 4x1 tiles in
+ * main surface. In other words, 4 bits in CCS map to a main surface cache
+ * line pair. The main surface pitch is required to be a multiple of four
+ * tile4 widths. For semi-planar formats like NV12, CCS planes follow the
+ * Y and UV planes i.e., planes 0 and 1 are used for Y and UV surfaces,
+ * planes 2 and 3 for the respective CCS.
+ */
+#define I915_FORMAT_MOD_4_TILED_MTL_MC_CCS fourcc_mod_code(INTEL, 14)
+
+/*
+ * Intel Color Control Surface with Clear Color (CCS) for display ver 14 render
+ * compression.
+ *
+ * The main surface is tile4 and is at plane index 0 whereas CCS is linear
+ * and at index 1. The clear color is stored at index 2, and the pitch should
+ * be ignored. The clear color structure is 256 bits. The first 128 bits
+ * represents Raw Clear Color Red, Green, Blue and Alpha color each represented
+ * by 32 bits. The raw clear color is consumed by the 3d engine and generates
+ * the converted clear color of size 64 bits. The first 32 bits store the Lower
+ * Converted Clear Color value and the next 32 bits store the Higher Converted
+ * Clear Color value when applicable. The Converted Clear Color values are
+ * consumed by the DE. The last 64 bits are used to store Color Discard Enable
+ * and Depth Clear Value Valid which are ignored by the DE. A CCS cache line
+ * corresponds to an area of 4x1 tiles in the main surface. The main surface
+ * pitch is required to be a multiple of 4 tile widths.
+ */
+#define I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC fourcc_mod_code(INTEL, 15)
+
 /*
  * Tiled, NV12MT, grouped in 64 (pixels) x 32 (lines) -sized macroblocks
  *
-- 
2.25.1

