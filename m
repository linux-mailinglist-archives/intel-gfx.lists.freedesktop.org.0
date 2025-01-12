Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 411BCA0AC1C
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Jan 2025 23:09:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D851210E322;
	Sun, 12 Jan 2025 22:09:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AOYAo/R9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com
 [IPv6:2607:f8b0:4864:20::631])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D387310E21C;
 Sun, 12 Jan 2025 22:09:03 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id
 d9443c01a7336-216728b1836so62102675ad.0; 
 Sun, 12 Jan 2025 14:09:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1736719743; x=1737324543; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tgq8qwHzvaaLiSf7YyHcpp/r05dJEd2SrR1MLyfoMBs=;
 b=AOYAo/R9vYNpGPoyAvpAg0qo/X3mrnslXl3khKjCeFSU1hL6VbhM5PXN7ZRuDPsILr
 9ESeHB9R6RczaTiyqxvhbjVoxdx0LPEpIUbSGzP9zk5q9NdP8jyav8f+LmgsNMGVWVr4
 U36xZDIuU0Ak0tfKEmCsPgFYqEx6iXaSq1g3bD9afjimlOIBJ2WsbmTXmfxThK4Jvhfa
 ys3sRpd4aAA65BCsOt8AnIllilDSnKfilBSJ7WyX1/Juh7OW9UblQ3iz/xDoa1wJV45a
 Q+uIDGcg6uxRytl4+Dpu73CenZZSfyGwxlfGv7S44hia4j9dCn5VUo71kXpEk63gcC+5
 1FvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736719743; x=1737324543;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=tgq8qwHzvaaLiSf7YyHcpp/r05dJEd2SrR1MLyfoMBs=;
 b=oiKXTPB9Y4bRwEu1dkAPjjO7smqLVE8HNip63eYiE1ZHqLC1mTaTPANU2SzO/0E/Ds
 Ry06aIF2X6WSOr+x+wTNCNWlEm7QhwoujKbl37QSJ+tH4uUpju61WU2PUA2G4CuMYCLF
 kWrrjiSgj3njCrmiwfGu89OXJ+Ln9VgIrooR9+eMXRIXelEeGK78Ap2g6xnPpBLJ43/K
 vpdAD+IU0MpE1vM1pMp1nqOU3wbndULHPtEJRaA7utl1XDpJrdkUJskwN2pIOq/DrHT0
 CR+adPO/tabSW2VU6vUI9rwt4gFPYiI9sn01l00EihlYlgsQo2bXuXc1NCscEmvA7gWX
 h9yg==
X-Forwarded-Encrypted: i=1;
 AJvYcCV2ML60zmzL2BM+f0mfpEFpdczGaJzu6AkBsM4LhdIF9TdWNhvYaxkeWVfzS0Rzo4t6syb2+YTGIw==@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzK3Ksja0huMJzlpsLIxzOyY6PBveC3iD1li4r63uCwiLIGoFqb
 tM93mVoNDQfOyw0V8t9irjn+BG7nzuWSG1kzxLFx9YsX0Ym7cYNHsjT4Wq+c
X-Gm-Gg: ASbGncsVP7vrflqySumwOer82P3HmmqiliALu33X/iXK5ajQnjW791WiiJlBywqrM9z
 JyS/mizfUsEbCcIR3arjH/wZaxHNCFHe5wBZGe5K4JIyvdOHhDZPh9k3r2WLCmh/LwJ8ZQzqC2I
 2qBTZhpAFZe5Z5lgLTd34jvbuFYzIDpFocUrPOXe82lEssOkrmGk505CyO2DEHcWC1FedgzZvO7
 m8YI0LDbjzBEyBi4rFssFisUBgufAMdhbjdD5l0XGLG2UFRdEHHkw7Ncm9CSpY=
X-Google-Smtp-Source: AGHT+IEUDwhSrIZC4t5kjEgqpnWqb/2YxTIzuol+JY5eNMcl8UE/wOxL0tELiq4jVopXfEAHcq2Z/w==
X-Received: by 2002:a17:902:cf0e:b0:216:7c33:8994 with SMTP id
 d9443c01a7336-21a84002cf3mr302813385ad.53.1736719742858; 
 Sun, 12 Jan 2025 14:09:02 -0800 (PST)
Received: from localhost ([192.55.55.46]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-21a9f10dddfsm43006545ad.23.2025.01.12.14.09.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Jan 2025 14:09:02 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH 2/2] drm/xe/display: Move dpt allocation to helper
Date: Mon, 13 Jan 2025 00:13:44 +0200
Message-ID: <20250112221344.644836-2-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250112221344.644836-1-juhapekka.heikkila@gmail.com>
References: <20250112221344.644836-1-juhapekka.heikkila@gmail.com>
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

Simplify __xe_pin_fb_vma_dpt() by moving dpt allocation into helper.
This also fixes bug where dpt could have been allocated from system
memory when on dgfx.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c | 67 +++++++++++++++++---------
 1 file changed, 43 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 9cc7bd97d4a4..cddfda1743f4 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -62,6 +62,47 @@ static void write_dpt(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs,
 	*dpt_ofs = ALIGN(*dpt_ofs, 4096);
 }
 
+static struct xe_bo *xe_alloc_dpt_bo(struct xe_device *xe,
+				     struct xe_tile *tile0, u64 size,
+				     u64 physical_alignment)
+{
+	struct xe_bo *dpt;
+
+	/*
+	 * If DGFX: try VRAM0 only
+	 */
+	if (IS_DGFX(xe)) {
+		dpt = xe_bo_create_pin_map_at_aligned(xe, tile0, NULL,
+						      size, ~0ull,
+						      ttm_bo_type_kernel,
+						      XE_BO_FLAG_VRAM0 |
+						      XE_BO_FLAG_GGTT |
+						      XE_BO_FLAG_PAGETABLE,
+						      physical_alignment);
+	} else {
+		/*
+		 * For IGFX: first try STOLEN. on fail try SYSTEM.
+		 */
+		dpt = xe_bo_create_pin_map_at_aligned(xe, tile0, NULL,
+						      size, ~0ull,
+						      ttm_bo_type_kernel,
+						      XE_BO_FLAG_STOLEN |
+						      XE_BO_FLAG_GGTT |
+						      XE_BO_FLAG_PAGETABLE,
+						      physical_alignment);
+		if (IS_ERR(dpt)) {
+			dpt = xe_bo_create_pin_map_at_aligned(xe, tile0, NULL,
+							      size, ~0ull,
+							      ttm_bo_type_kernel,
+							      XE_BO_FLAG_SYSTEM |
+							      XE_BO_FLAG_GGTT |
+							      XE_BO_FLAG_PAGETABLE,
+							      physical_alignment);
+		}
+	}
+	return dpt;
+}
+
 static int __xe_pin_fb_vma_dpt(const struct intel_framebuffer *fb,
 			       const struct i915_gtt_view *view,
 			       struct i915_vma *vma,
@@ -98,30 +139,8 @@ static int __xe_pin_fb_vma_dpt(const struct intel_framebuffer *fb,
 		plane_count = ARRAY_SIZE(view->rotated.plane);
 	}
 
-	if (IS_DGFX(xe))
-		dpt = xe_bo_create_pin_map_at_aligned(xe, tile0, NULL,
-						      dpt_size, ~0ull,
-						      ttm_bo_type_kernel,
-						      XE_BO_FLAG_VRAM0 |
-						      XE_BO_FLAG_GGTT |
-						      XE_BO_FLAG_PAGETABLE,
-						      physical_alignment);
-	else
-		dpt = xe_bo_create_pin_map_at_aligned(xe, tile0, NULL,
-						      dpt_size,  ~0ull,
-						      ttm_bo_type_kernel,
-						      XE_BO_FLAG_STOLEN |
-						      XE_BO_FLAG_GGTT |
-						      XE_BO_FLAG_PAGETABLE,
-						      physical_alignment);
-	if (IS_ERR(dpt))
-		dpt = xe_bo_create_pin_map_at_aligned(xe, tile0, NULL,
-						      dpt_size,  ~0ull,
-						      ttm_bo_type_kernel,
-						      XE_BO_FLAG_SYSTEM |
-						      XE_BO_FLAG_GGTT |
-						      XE_BO_FLAG_PAGETABLE,
-						      physical_alignment);
+	dpt = xe_alloc_dpt_bo(xe, tile0, dpt_size, physical_alignment);
+
 	if (IS_ERR(dpt))
 		return PTR_ERR(dpt);
 
-- 
2.45.2

