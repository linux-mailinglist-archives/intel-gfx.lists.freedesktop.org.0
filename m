Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 758E69BBE52
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 20:57:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A074110E4BE;
	Mon,  4 Nov 2024 19:57:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux.dev header.i=@linux.dev header.b="cAQ0lG44";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 317 seconds by postgrey-1.36 at gabe;
 Mon, 04 Nov 2024 19:57:47 UTC
Received: from out-187.mta0.migadu.com (out-187.mta0.migadu.com
 [91.218.175.187])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26FB310E4BE
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2024 19:57:47 +0000 (UTC)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
 t=1730749948;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=EGVrayaSxuajQ0X9yfhxdRUCreSD+4GY2Mj0JWo6b5E=;
 b=cAQ0lG44JiIahSI5ZJeZ43i3ciy/9XtFdb4qqvYIBxUQuHUjiUNooulBW2GhInqpBzKKWl
 9ZnxIzDYZM9QzLebFZ1HHOHqBxoiWxmq7H76jAyMARCFvUyqFIT91djElI5IeNi+i9EeFe
 7eLgxYLWxSevUT2cx41ou/QzbPwdUNw=
From: Sui Jingfeng <sui.jingfeng@linux.dev>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Sui Jingfeng <sui.jingfeng@linux.dev>
Subject: [PATCH] drm/i915: Use sg_set_buf(), sg_dma_address() helper
Date: Tue,  5 Nov 2024 03:52:20 +0800
Message-Id: <20241104195220.655343-1-sui.jingfeng@linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
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

This patch switch to use sg_set_buf() and sg_dma_address() helpers, no
function change.

Signed-off-by: Sui Jingfeng <sui.jingfeng@linux.dev>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 135ded17334e..9680cde47b5a 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -66,10 +66,8 @@
 static void __sg_set_buf(struct scatterlist *sg,
 			 void *addr, unsigned int len, loff_t it)
 {
-	sg->page_link = (unsigned long)virt_to_page(addr);
-	sg->offset = offset_in_page(addr);
-	sg->length = len;
-	sg->dma_address = it;
+	sg_set_buf(sg, addr, len);
+	sg_dma_address(sg) = it;
 }
 
 static bool __i915_error_grow(struct drm_i915_error_state_buf *e, size_t len)
-- 
2.34.1

