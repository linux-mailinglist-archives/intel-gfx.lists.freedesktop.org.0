Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 756673DEE2F
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Aug 2021 14:49:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B45446E0EC;
	Tue,  3 Aug 2021 12:49:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA8CE6E1A8
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Aug 2021 12:49:11 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id c9so4922386wri.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Aug 2021 05:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=m3MXCvzEqyo9ndGDHESV6jxPo7OYmzg239P5qATHijY=;
 b=J52wYPGV1lANlow572zAMYnlHUxBZ6xUiIZ8jdP2w0KHnT1AcXKL4E3nzFAd/0ATSO
 30X6LR5HSnH+R/8cvLvHhGDWPJyLVaDJQXVFlY/cUrum+QE7xd7C3C+5ZSCUc/QzXDAG
 2oPKdcXGc4W1H/BzswXNi6cqUwA8RtSq6Ozns=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=m3MXCvzEqyo9ndGDHESV6jxPo7OYmzg239P5qATHijY=;
 b=DanUFQ7vYILPRZjE18b/X/z5/9SvJkcwI3bUoYx6NvEJ5neLuWio211RvNoqbqZpvB
 wX6Z+EEeFSuTn85agY0roeMPkxfFHBqjtvpGBhC30CwIbKa7Xa8kG35bG5EvL3qn5XVA
 rS2eFEcrI+zu3ez01ekmumpc+HwFtd5tF09YPXOr54AGzJ47lYJIISJiFtjS7t+sVmfx
 IcJmx8F3/rc/zJ14UzVI3yHBmLf9OMEf1ZBIis8G1VbpHlipqJk5y3S15q4T+7iDeTHY
 8C/nA64SJpSaViR4+7IAhvkrmcIsHWZdrfv02hGu7+wVVistH6DFkWY4V+/iRLX9RJXH
 PglA==
X-Gm-Message-State: AOAM532zkocu2jJJmuMPo1LEBwY0TOc4nvX29K1UWj8NXGohndiwQahn
 YwKMX89bZNjQ/KaC99ZnmHtNDe1/FqgHRg==
X-Google-Smtp-Source: ABdhPJwQWv+MBGD8S7cGOR5oxPkRM/EwzNAdKKl89DrUugbMuNNXnptFjkYMTCfYRw8bhzh6O41GdQ==
X-Received: by 2002:adf:e10c:: with SMTP id t12mr22598899wrz.36.1627994950421; 
 Tue, 03 Aug 2021 05:49:10 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z2sm13101678wma.45.2021.08.03.05.49.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Aug 2021 05:49:09 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Cc: DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Dave Airlie <airlied@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Jon Bloomfield <jon.bloomfield@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Jason Ekstrand <jason@jlekstrand.net>
Date: Tue,  3 Aug 2021 14:48:32 +0200
Message-Id: <20210803124833.3817354-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Disable gpu relocations
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

Media userspace was the last userspace to still use them, and they
converted now too:

https://github.com/intel/media-driver/commit/144020c37770083974bedf59902b70b8f444c799

This means no reason anymore to make relocations faster than they've
been for the first 9 years of gem. This code was added in

commit 7dd4f6729f9243bd7046c6f04c107a456bda38eb
Author: Chris Wilson <chris@chris-wilson.co.uk>
Date:   Fri Jun 16 15:05:24 2017 +0100

    drm/i915: Async GPU relocation processing

Furthermore there's pretty strong indications it's buggy, since the
code to use it by default as the only option had to be reverted:

commit ad5d95e4d538737ed3fa25493777decf264a3011
Author: Dave Airlie <airlied@redhat.com>
Date:   Tue Sep 8 15:41:17 2020 +1000

    Revert "drm/i915/gem: Async GPU relocations only"

This code just disables gpu relocations, leaving the garbage
collection for later patches and more importantly, much less confusing
diff. Also given how much headaches this code has caused in the past,
letting this soak for a bit seems justified.

Acked-by: Dave Airlie <airlied@redhat.com>
Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: "Thomas Hellström" <thomas.hellstrom@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Cc: Dave Airlie <airlied@redhat.com>
Cc: Jason Ekstrand <jason@jlekstrand.net>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 43 ++++++++-----------
 1 file changed, 18 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 25ba2765d27d..e4dc4c3b4df3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1588,7 +1588,7 @@ static int __reloc_entry_gpu(struct i915_execbuffer *eb,
 	return true;
 }
 
-static int reloc_entry_gpu(struct i915_execbuffer *eb,
+static int __maybe_unused reloc_entry_gpu(struct i915_execbuffer *eb,
 			    struct i915_vma *vma,
 			    u64 offset,
 			    u64 target_addr)
@@ -1610,32 +1610,25 @@ relocate_entry(struct i915_vma *vma,
 {
 	u64 target_addr = relocation_target(reloc, target);
 	u64 offset = reloc->offset;
-	int reloc_gpu = reloc_entry_gpu(eb, vma, offset, target_addr);
-
-	if (reloc_gpu < 0)
-		return reloc_gpu;
-
-	if (!reloc_gpu) {
-		bool wide = eb->reloc_cache.use_64bit_reloc;
-		void *vaddr;
+	bool wide = eb->reloc_cache.use_64bit_reloc;
+	void *vaddr;
 
 repeat:
-		vaddr = reloc_vaddr(vma->obj, eb,
-				    offset >> PAGE_SHIFT);
-		if (IS_ERR(vaddr))
-			return PTR_ERR(vaddr);
-
-		GEM_BUG_ON(!IS_ALIGNED(offset, sizeof(u32)));
-		clflush_write32(vaddr + offset_in_page(offset),
-				lower_32_bits(target_addr),
-				eb->reloc_cache.vaddr);
-
-		if (wide) {
-			offset += sizeof(u32);
-			target_addr >>= 32;
-			wide = false;
-			goto repeat;
-		}
+	vaddr = reloc_vaddr(vma->obj, eb,
+			    offset >> PAGE_SHIFT);
+	if (IS_ERR(vaddr))
+		return PTR_ERR(vaddr);
+
+	GEM_BUG_ON(!IS_ALIGNED(offset, sizeof(u32)));
+	clflush_write32(vaddr + offset_in_page(offset),
+			lower_32_bits(target_addr),
+			eb->reloc_cache.vaddr);
+
+	if (wide) {
+		offset += sizeof(u32);
+		target_addr >>= 32;
+		wide = false;
+		goto repeat;
 	}
 
 	return target->node.start | UPDATE;
-- 
2.32.0

