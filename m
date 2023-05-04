Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8876F690A
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 12:28:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43E5D10E421;
	Thu,  4 May 2023 10:28:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6EAB10E421
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 10:28:18 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id
 2adb3069b0e04-4f00c33c3d6so347120e87.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 May 2023 03:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683196096; x=1685788096;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=jEBRUwDLpFcnXrlbigezC2oCjVBKtjOYIID+uAK03II=;
 b=e/FgJRw8f6WfrB6YMwlxVlh9QADotisTsB1L2B7pXL0GACDFZzdzcpf8BOORdtCY3Y
 ly59hiK8X/1ChOpqHEMrteqMRZNDYoVUSl2xtXIyfEdzW9WjVss7QUutGahYiExIJJks
 QmRTKoEDIpL/XnAs+DgaxsxamkbgadkbLzThD7aJ/lU9L6oAVNdVD+iGlBskScJ6lTvR
 PuNq+Zfao6mypJzSLVZWa6r/qeRcyRtHRPl/7HMyNHuG0ypLHKZExHa9r9+n6yWAS21r
 gll+4KYhBmn/5NTiR3Yxqck9NZRQvSwTfhBIKRvBUtxkPtPw8rmEDw97laDQ9clCPge6
 PlDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683196096; x=1685788096;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=jEBRUwDLpFcnXrlbigezC2oCjVBKtjOYIID+uAK03II=;
 b=JVt6Jq1Q5DyEYFrRfFp2YoiSfvT47kY7UIl8AWxoGB7YYnZLdAVsl3AP+vNV8lOzAF
 9rQwdYeB90vOVteYCQEtx8lBH+HPDIjBNVY54oLG3i1689NXJITv6QvML34nVB+WiSyM
 VyKAP+yZkOQgYhV1O8MBKzHgZZN9RTCJ0sGD/nkv8RTIZNvwPewx+ETZy7AGW0qWg668
 JgUN+16sJBfwCjmgTfiROPZCOujaMFIwbi9RSvzmM2dRQLSOJr8SciQLJ+wDYpUV0Axp
 oqC/Hw3BJ4okWVBCxQChbeUKpcxq81Pbu9MkcmcVYfSge4fvXCkYcdygwNXu4dvD5Udv
 BdPQ==
X-Gm-Message-State: AC+VfDyLXPzhLu6rkafTpIda3tQTEhq94w8IAb1+egF6Q1ncjEzQl76m
 NC/W/++6YqQth8pfwd1gGByiSLdprb5vh9of
X-Google-Smtp-Source: ACHHUZ41VvAUUN+BN2N9eXUvf4+ZTyrTJivN+cK8/0Ym6H62zp5CNFyXz2Bid7uSInWTRd/snH7kpw==
X-Received: by 2002:ac2:5142:0:b0:4ef:ed49:fcc2 with SMTP id
 q2-20020ac25142000000b004efed49fcc2mr2147517lfd.26.1683196095550; 
 Thu, 04 May 2023 03:28:15 -0700 (PDT)
Received: from localhost.localdomain ([2001:998:22:0:60cb:8180:a416:f400])
 by smtp.gmail.com with ESMTPSA id
 v25-20020a056512049900b004eff32d6a21sm5097416lfq.121.2023.05.04.03.28.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 May 2023 03:28:14 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 May 2023 13:28:02 +0300
Message-Id: <20230504102805.18645-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/mtl: Drop FLAT CCS check
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
Cc: Pallavi Mishra <pallavi.mishra@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Pallavi Mishra <pallavi.mishra@intel.com>

Remove FLAT CCS check from XY_FAST_COLOR_BLT usage, thus
enabling MTL to use it.

Signed-off-by: Pallavi Mishra <pallavi.mishra@intel.com>
Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/gt/intel_migrate.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
index 3f638f198796..e0998879a0e1 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.c
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
@@ -920,7 +920,7 @@ static int emit_clear(struct i915_request *rq, u32 offset, int size,
 
 	GEM_BUG_ON(size >> PAGE_SHIFT > S16_MAX);
 
-	if (HAS_FLAT_CCS(i915) && ver >= 12)
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
 		ring_sz = XY_FAST_COLOR_BLT_DW;
 	else if (ver >= 8)
 		ring_sz = 8;
@@ -931,7 +931,7 @@ static int emit_clear(struct i915_request *rq, u32 offset, int size,
 	if (IS_ERR(cs))
 		return PTR_ERR(cs);
 
-	if (HAS_FLAT_CCS(i915) && ver >= 12) {
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
 		*cs++ = XY_FAST_COLOR_BLT_CMD | XY_FAST_COLOR_BLT_DEPTH_32 |
 			(XY_FAST_COLOR_BLT_DW - 2);
 		*cs++ = FIELD_PREP(XY_FAST_COLOR_BLT_MOCS_MASK, mocs) |
-- 
2.25.1

