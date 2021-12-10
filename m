Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA99147028A
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 15:17:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D6CA10E3D9;
	Fri, 10 Dec 2021 14:17:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com
 [IPv6:2607:f8b0:4864:20::532])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 185EF10E22B;
 Fri, 10 Dec 2021 06:12:26 +0000 (UTC)
Received: by mail-pg1-x532.google.com with SMTP id 133so7159612pgc.12;
 Thu, 09 Dec 2021 22:12:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id;
 bh=/LgIoqp+9eCFXsSIrUddR1cUnlEA0gr3FDJwt9FwpB4=;
 b=F/DKMOqCADZ2iys8N9RMtDYqvtaevKIV8kYJyzYWwlm3CrgaNQHO6yt7PgDEiHDMQq
 uuiWG0jnT8jE5egMgW/BwiUqsf8fHa1DOyj50L26Ty+hWnBNh2a30CWPM3rTp6gRYd46
 KdJrc+eZY2R8KoU48ukES6FztFrsS7msrqHRYDm66WVXn5xawk+NG5d67Z6ijoaTMSvg
 kc2U9KVyd/nD427OvpfABNrZ0Nfem/E7jWg9BRMYf8u/6fiCT4wLJHYvlCfVG6yABruU
 JW6m1F6Z2DnYjQxv4fGHiLBKVcJaZ/eboqnQ7WwNGTWrKAYzAJ1K7oTPdaGuviR6/vqG
 ttqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=/LgIoqp+9eCFXsSIrUddR1cUnlEA0gr3FDJwt9FwpB4=;
 b=AjGBJtlYN5n1pOG3ossKYWYtZ9Q8Kimsndw5hD/XLJkdpLCQfpJoAc77kbPTu3yFjo
 4VLCtNPbhBFLvULNX5yvVq7bfvHERoUAJRHyBhMndF3XMPNAPqyOuOyo0l96KwPmGEHv
 rDMGnxaTCXRPSDV7V9SjoaPRAqYEIOcgVWUGkgnkb3pe4RdFLlhWrkB66+AoFENXcoBu
 ZkSH6MibOf2Fi0w+HC+3bsw5XKPm+YXyn9ow6HQQwHMvNRlRgQlwcJ90dCBxsShcmGvn
 ecU5NLNys19ZVBhhXQXhttWWhulxJizxHOxmjw5CZsQabeZQUFT/VSQXiTUjpSZH5gSZ
 Vr/w==
X-Gm-Message-State: AOAM5326SKzDqb8lU68abp46EEveUGmJbrAuKKA28Ezp2wEE0mCSNGC0
 7dda5AE/J479dECt/PTsu9U=
X-Google-Smtp-Source: ABdhPJwjyoGaZ8qyg+I7MEr/BNnu9mrOaLLSZfkwqNoALutrr6ljVlILgf7r7M9mA00KxdlS0cTOBw==
X-Received: by 2002:a63:6848:: with SMTP id d69mr36797444pgc.496.1639116745620; 
 Thu, 09 Dec 2021 22:12:25 -0800 (PST)
Received: from localhost.localdomain ([159.226.95.43])
 by smtp.googlemail.com with ESMTPSA id i2sm1792234pfg.90.2021.12.09.22.12.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Dec 2021 22:12:25 -0800 (PST)
From: Miaoqian Lin <linmq006@gmail.com>
To: 
Date: Fri, 10 Dec 2021 06:11:48 +0000
Message-Id: <20211210061152.29087-1-linmq006@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Fri, 10 Dec 2021 14:17:02 +0000
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Fix inconsistent object in
 IS_ERR and PTR_ERR
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
Cc: dri-devel@lists.freedesktop.org,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 linmq006@gmail.com, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Nathan Chancellor <nathan@kernel.org>, Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix inconsistent object in IS_ERR and PTR_ERR in
igt_dmabuf_import_same_driver and igt_dmabuf_import_same_driver_lmem.
As obj is the return value of __i915_gem_object_create_user,
the proper object to be passed as argument to PTR_ERR is obj.

Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
index 4a6bb64c3a35..3cc74b0fed06 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
@@ -102,7 +102,7 @@ static int igt_dmabuf_import_same_driver_lmem(void *arg)
 	obj = __i915_gem_object_create_user(i915, PAGE_SIZE, &lmem, 1);
 	if (IS_ERR(obj)) {
 		pr_err("__i915_gem_object_create_user failed with err=%ld\n",
-		       PTR_ERR(dmabuf));
+		       PTR_ERR(obj));
 		err = PTR_ERR(obj);
 		goto out_ret;
 	}
@@ -158,7 +158,7 @@ static int igt_dmabuf_import_same_driver(struct drm_i915_private *i915,
 					    regions, num_regions);
 	if (IS_ERR(obj)) {
 		pr_err("__i915_gem_object_create_user failed with err=%ld\n",
-		       PTR_ERR(dmabuf));
+		       PTR_ERR(obj));
 		err = PTR_ERR(obj);
 		goto out_ret;
 	}
-- 
2.17.1

