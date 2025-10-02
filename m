Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 200B4BB3FE0
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Oct 2025 15:12:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57DAF10E19F;
	Thu,  2 Oct 2025 13:12:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="amW3cF3C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
 [209.85.208.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA00D10E7A2
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Oct 2025 08:48:34 +0000 (UTC)
Received: by mail-lj1-f179.google.com with SMTP id
 38308e7fff4ca-373a1ab2081so6996921fa.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 Oct 2025 01:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1759394913; x=1759999713; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=z69FFVofVQpQbXPazzIrMIWvZw9YVt4e5mOAMA1/qQ0=;
 b=amW3cF3C6ZKw/q7Yx8thL8NgHr2N24pfoIvmC2f311h72cp+hbJgS0CZ3Ci99SRriQ
 MF8nac6sOi1f9UlgxkUp4RMUT8+71Zj5TkUUW8Sx/UUi28fYJtijlhipmdiJUR/4jXMv
 KnnOgdq81zE/+JFJuJ/kdb/DTuNopQRBewvP7qvFDrkkgsNmMk09SLoCPgV7lAtc1HZN
 J8BUKj0anytvichfyeSm/trtzkP1nXWPIy5P9urvOVe9vaWEo34dDEJ8xcm8XAaPLyeL
 sEuSNGpJx3T73zacSZzN7ObuUv1/Jz+NzOtfWFYR/cy/gRLTYAIiqPr0gwXofCnIYy/b
 SC5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759394913; x=1759999713;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=z69FFVofVQpQbXPazzIrMIWvZw9YVt4e5mOAMA1/qQ0=;
 b=INSxoV7rXHYXZIbj8RI55sgCnRqRo3A8ciXZcKFn4kHoQwvCYRWTadAhO6hk2AqEay
 JAHE6mJv93QKuWcVGJFq/QhSz+ZSVKL8Nw9MCsJ/RuozEFgwq3Hi4V0xbXxgJThuxU4B
 MwBPzpEZn/gzteWMKwSsbAwexyq7cGJ8zWhaPdOkSiZbMb3F9mAPrIrRjzP0eHvlU01C
 RzhbGhoA6PwlvGhCNPIq+ljzUlKfujOkT0FH2O4YY7AGREBTA9im4MtSN/EvUT7m95X3
 OncgWVg5vAECX/yKKiddh+7lzB6ZvZjMAK9nS3JAe+on4BqhUWW37fq6SwXj+JAMxQut
 wagQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXfJS8qVmcRLqI9L9+V/xBc9/MtjZ+4AQNXeU6SgotQDHwMJntiNoubpWmyNIQZ25WHaFg/qM7Ml00=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw+aNYQiII3aar6QwvOVzWQtXLXS2w1f2abQP+gEIMqhLZXFcsp
 QR1cGBKdBMWzLefeVzPxC9/SRiJe9xiXPj53WHFYkq+QgkgvhdEWtBD7
X-Gm-Gg: ASbGnctQ81sLe99gSE0lGbNRE5s/EgqabJvC8RsK0UEXjGLCGsksU3KR93ItmbO+lvr
 KNW6YshRh5UhPawOWCEQolZrnZkPJLTVG/3eMoo3jS18r3+2Jy4IyflTXDN/IyF+LRCKncPtVSV
 7RugVVApSHG35OS+toNAcKvENiYLJrgO+K3CcCllaPmFUSKx96byNrF96um5Gq1En2T4c//zSYt
 SORe9KVrQYzBFzshBWQJT/M5pqUBtocOjnCYptlEMRnR3oJ4iwLdLDKhzQJaQKSnObVhH942Le6
 QWD3AJ5v2OySiHTXiVwMb6llCYa63flKUQ2JqBMU0C4DF9KGsV5cFi9+bEPTlkXtISyddZJ0xVG
 iNFz6xVoxdPRhAlLKIpqu8C7yoWKY/Lml7uAM3Mdkz+r1u46xEaedRBh0xqcDRU2U+lsoTkA38a
 0PnX8N+icdqmyif5lV/b2FQ6x5zm+v+nNCM6+g+Yic
X-Google-Smtp-Source: AGHT+IHSpWYO4jWecZ3WaJ5bbAKSHrzDEFpF/Bo9oTWfMoBxUJCFoeCGVTF74e3XeZ0egpGJ1oJ8eA==
X-Received: by 2002:a2e:a912:0:b0:36d:501:76d8 with SMTP id
 38308e7fff4ca-373a7430622mr20975301fa.31.1759394912620; 
 Thu, 02 Oct 2025 01:48:32 -0700 (PDT)
Received: from localhost.localdomain
 (broadband-109-173-93-221.ip.moscow.rt.ru. [109.173.93.221])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-373ba4cdf62sm5338621fa.51.2025.10.02.01.48.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Oct 2025 01:48:32 -0700 (PDT)
From: Alexandr Sapozhnkiov <alsp705@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Cc: Alexandr Sapozhnikov <alsp705@gmail.com>, linux-media@vger.kernel.org,
 lvc-project@linuxtesting.org
Subject: [PATCH 5.10] gpu/i915: fix error return in mmap_offset_attach()
Date: Thu,  2 Oct 2025 11:48:26 +0300
Message-ID: <20251002084828.11-1-alsp705@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 02 Oct 2025 13:12:48 +0000
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

From: Alexandr Sapozhnikov <alsp705@gmail.com>

In the drm_vma_node_allow function, kmalloc may 
return NULL, in which case the file element will not be 
added to the mmo->vma_node list. It would be good to 
not ignore this event, but at least log an error message.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Signed-off-by: Alexandr Sapozhnikov <alsp705@gmail.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index a2195e28b625..adaef8f09d59 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -706,8 +706,11 @@ mmap_offset_attach(struct drm_i915_gem_object *obj,
 	mmo = insert_mmo(obj, mmo);
 	GEM_BUG_ON(lookup_mmo(obj, mmap_type) != mmo);
 out:
-	if (file)
-		drm_vma_node_allow_once(&mmo->vma_node, file);
+	if (file) {
+		err = drm_vma_node_allow_once(&mmo->vma_node, file);
+		if (err)
+			goto err;
+	}
 	return mmo;
 
 err:
-- 
2.43.0

