Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0834CA2A315
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 09:21:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F1C910E7F6;
	Thu,  6 Feb 2025 08:21:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="EPr79xPC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2132B10E7F4
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2025 08:17:08 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id
 ffacd0b85a97d-38dc33931d3so10510f8f.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 06 Feb 2025 00:17:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1738829826; x=1739434626; darn=lists.freedesktop.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ubql9r1omCt43g1m4gjLWGeKKiFiLncoJpuHUqF935k=;
 b=EPr79xPCrfaXbagBBBE8uMIJG6tdfuTcspkUhE5tGPvTAqV6G9b8osCeEkCTygOxc9
 9TMT8nXCLGpFf29bhpHFlK0wDnEgzYaw6kjyFTeE0fWZ/dj9DgzKeLXNt3/Yb8XfQIP8
 J41xuRmfn5xSZ/ceL2uzCtF6dreLz8ed6y+S256TqVEqrIO7sJf1i4Lh5Zi0SYyGYItk
 scAxx9hKIU4lRIVcjeCSUzJM53xuTJbAcTJ5BRqmV4rL7Gh9ADaE4QeSAFfKho48NWmJ
 iQLVPuu7tdTsjeeoOyreoneFWwH2aKPSyJl1/60gOe293gkIRtgWezfQMRw8A8/BLd+j
 vaEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738829826; x=1739434626;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ubql9r1omCt43g1m4gjLWGeKKiFiLncoJpuHUqF935k=;
 b=mgW1yXvTuUdlJTPsYmObxyeI7pTAAuVziK+IS37Yg1ySw2Of2FQTXu/Y5PlILukOrz
 MZG8PKfHt7vOl6fedYYTx/V2vOwway27OZa7Lkb6JTPM4Co4bbEMn55AxGxvQEEHpGJp
 xEfng6T0/dZ/XzkgUbyK1vgC4sb+vCcYY4A96HAQc01EPaw3bTzZzBjtDIeIbbc+BRKX
 e3ETNbRYo5OiwoP5n0YrAFNtP7VuEKMtKa0lDTWrZWIVIMKuQN+awZAo/Gu/raTyYmHf
 dtvli0xiC0e4vNoCGFdqpl9cMbLTNuEJ7AhFMKY5eBp+g7KtdrYvcu/EU5JT67waFPbC
 W3Lg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXJq2rhw2gU2c4CuvBpHJXr+pJX7XWzbvPttMZiZ/DuSalUmxlBaxAfPz0gB3iowoFCkvqqp4RS96o=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YznV4MS7KdJy1MCQ6u5N1ORVtIZhbqzk4vvEwPpAzErUm25Rckb
 qy4ZTtTIJ6uhppGNvFOzfmtn1SUs9MSZpFd1D+ENJYjoQ4eFdyfg5dJ+Eyqg8a4=
X-Gm-Gg: ASbGncs1aAjBVX2jnxAEOui7YHq6zAWO1t2FX9H9RvhIrqHTRmBTWN4lx95H0gdxsmn
 uFfxX0wvEnMkTNYPGf9XTLWG7ss3HkwKDTBrXnRSHc68l3AQUoagxg+GV/URZua09QcRcxWIPX5
 NuJg26vM0BZT0yM8Wzjp0O14YQLZEUvjgslbsb2sL9R6R01cChro0IPuDTxtTSNrPa/Fmv0Rgp+
 IZRWrvyDhBdPrD2nnLI8kURDqoIydRes+FNyaXenia+07VUKxLySPVgr9rpDhxMiahjvAdlsHWh
 RAFa1bAr24HcSLYJ/I2L
X-Google-Smtp-Source: AGHT+IF7c/c3cT8gIKlZmV09tdvJuSUhNmFcmUl5w0RwgKRFabBb32VFjSdJlhbFnDoNrb4CYnO3Bw==
X-Received: by 2002:a5d:64ec:0:b0:385:f7a3:fea6 with SMTP id
 ffacd0b85a97d-38db48ba435mr3619651f8f.13.1738829826339; 
 Thu, 06 Feb 2025 00:17:06 -0800 (PST)
Received: from localhost ([196.207.164.177])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-38dbde1de32sm1040103f8f.83.2025.02.06.00.17.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2025 00:17:05 -0800 (PST)
Date: Thu, 6 Feb 2025 11:17:02 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Andrew Morton <akpm@linux-foundation.org>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 David Hildenbrand <david@redhat.com>, Josef Bacik <josef@toxicpanda.com>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Brian Geffon <bgeffon@google.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org
Subject: [PATCH next] drm/i915: Fix NULL vs IS_ERR() check in
 __shmem_writeback()
Message-ID: <7f99a56b-d517-40b0-92b7-421c4fd813f2@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
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

The filemap_lock_folio() function doesn't return NULL, it returns error
pointers.

Fixes: 25dd342f0cc8 ("drm/i915/gem: convert __shmem_writeback() to folios")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index a784fb44e59c..fb263b421958 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -319,7 +319,7 @@ void __shmem_writeback(size_t size, struct address_space *mapping)
 		struct folio *folio;
 
 		folio = filemap_lock_folio(mapping, i);
-		if (!folio)
+		if (IS_ERR(folio))
 			continue;
 
 		if (!folio_mapped(folio) && folio_clear_dirty_for_io(folio)) {
-- 
2.47.2

