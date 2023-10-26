Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6F57D8163
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 12:56:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7D2110E7AC;
	Thu, 26 Oct 2023 10:56:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B96AE10E7AC
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 10:56:44 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id
 ffacd0b85a97d-32dff202b4bso540839f8f.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 03:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1698317803; x=1698922603; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=jzx8zJPqdnSI7cMOVXmYNiYspGfExF/RPyaR7yY8Fa0=;
 b=Endl5WKXY16huEeLwq+kR6/PISY54JwtXmiWWfuKpr7DbB4/vCWu2MOufMyJy0XbRc
 XdJzJnvKao4LqnnE0/UY2FjpIVcKzImOdb2LYCyN/5lOszAHjIjkv5KBlStKmYJSy8jZ
 u2ACXOR+TwOPv/YOHQR8t1KBFmPwPhielaqUjL0fV1udeKNJnlg/aqAxPjSiZ98/gBI9
 m5oI+DPF2T6f/gP1F7Fdu6UwY0NkLcxLiZYi5EwOBqQbmq65mHXWE/xu8wPQObWtC6Ra
 y73R3gCjEyOD1F3gLlGXipN3H0ko6qo3FSGEX726o9uRDXlWUTvByuNc9/7/zv5cA4Zp
 r+Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698317803; x=1698922603;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=jzx8zJPqdnSI7cMOVXmYNiYspGfExF/RPyaR7yY8Fa0=;
 b=WRVLquKFWoZDTQv5ffAu04biE9zMzWYNRSpRJFK3mBmfv0veD4JLdZvC/HY44ExfM5
 H5/gSdWVTqOmn2qTn0UxshyHm61ByEp3uXLJ5OXHGo5AHLVr427nZ1+7ytzU7QRKCzG0
 XG6xWlN6JEsle1/M0qcX/hrUzP4FMuPl/6YqT0oPGocdWfxiiYBZO0rX93ZC6+MjHHUG
 yEk00AO13ZVGDdKqAs7Pyv5qGQk3+32n7rtMZXQ759ZNx6dqs3OpG9Q9rhQrqdvT1J13
 Wc3gRygEJ+vBXkoPglALAad7kSrvqVu4UlX+MADOLo4FdM7GxgY5TLoEdTbVVe2IrcGv
 PO3g==
X-Gm-Message-State: AOJu0Yzcvt8s6thG8xOf5s+MHBRkkeVquUyLWL1SkoYpvyz4prz38lK1
 ts6A8nubJGsbQAkiOKr0vdb5UcbOsXaUejJJ
X-Google-Smtp-Source: AGHT+IFzzWgw9crv+jT9ZuIRu1I5k26k+AoS6FrdFWOmZRKktQIFYA9Xb2c9j+DqwtknLLMJzkaghA==
X-Received: by 2002:a5d:4407:0:b0:31f:f1f4:ca8e with SMTP id
 z7-20020a5d4407000000b0031ff1f4ca8emr12211027wrq.36.1698317802925; 
 Thu, 26 Oct 2023 03:56:42 -0700 (PDT)
Received: from gilbert-PC ([105.112.31.135]) by smtp.gmail.com with ESMTPSA id
 o15-20020adfcf0f000000b00327de0173f6sm13922695wrj.115.2023.10.26.03.56.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Oct 2023 03:56:42 -0700 (PDT)
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Oct 2023 11:56:23 +0100
Message-Id: <20231026105623.480172-1-gilbertadikankwu@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Remove unncessary {} from if-else
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
Cc: andi.shyti@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix checkpatch.pl error:

WARNING: braces {} are not necessary for any arm of this statement

Signed-off-by: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
---
 drivers/gpu/drm/i915/gt/intel_sseu.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
index f602895f6d0d..6a3246240e81 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
@@ -849,13 +849,12 @@ void intel_sseu_print_topology(struct drm_i915_private *i915,
 			       const struct sseu_dev_info *sseu,
 			       struct drm_printer *p)
 {
-	if (sseu->max_slices == 0) {
+	if (sseu->max_slices == 0)
 		drm_printf(p, "Unavailable\n");
-	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
+	else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
 		sseu_print_xehp_topology(sseu, p);
-	} else {
+	else
 		sseu_print_hsw_topology(sseu, p);
-	}
 }
 
 void intel_sseu_print_ss_info(const char *type,
-- 
2.34.1

