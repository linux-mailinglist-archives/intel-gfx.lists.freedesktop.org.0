Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D522E982F
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jan 2021 16:16:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FB726E027;
	Mon,  4 Jan 2021 15:16:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2D828991A;
 Sun,  3 Jan 2021 13:52:03 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 09EF6208C7;
 Sun,  3 Jan 2021 13:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1609681923;
 bh=fXJteWwKPcvYb6lpdOnO34DEgCFpdo7x5opOVSvacyA=;
 h=From:To:Cc:Subject:Date:From;
 b=c2It6IiNUywAUqc2Wbrh9DYinEIocdBARj1O8wMGCaQzFTzYJ2tDYUkhSxBGZUJzK
 PLy1wLaoXsQTSTVJ7rgQQuzY+ygFcola2F3nHH948AMf69o0Rw+jHeyHB/BQSWFyTU
 wHVH7oPeadg7wkXClFJI2sebl1UldkYvFXSPE9A1nKSm1f8DPbxrwOQr7UpDDUGkAs
 wg0nazETESUpM9bMGQspjt2YEKCPEkR3X2MsyeFLxs3krVlF0fg4SzKD8HG8RzZmKA
 jPG4Zj+GUTs59Z+1NZCbISIgCt2iKh7pRwFshqgY9WtsVhOaJ6neu+hYbZ69OZiXjh
 JmipMujqQGpbw==
From: Arnd Bergmann <arnd@kernel.org>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Date: Sun,  3 Jan 2021 14:51:44 +0100
Message-Id: <20210103135158.3591442-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 04 Jan 2021 15:16:05 +0000
Subject: [Intel-gfx] [PATCH] [v2] i915: fix shift warning
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
Cc: Arnd Bergmann <arnd@arndb.de>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Matthew Auld <matthew.auld@intel.com>, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Arnd Bergmann <arnd@arndb.de>

Randconfig builds on 32-bit machines show lots of warnings for
the i915 driver for passing a 32-bit value into __const_hweight64():

drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2584:9: error: shift count >= width of type [-Werror,-Wshift-count-overflow]
        return hweight64(VDBOX_MASK(&i915->gt));
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/asm-generic/bitops/const_hweight.h:29:49: note: expanded from macro 'hweight64'
 #define hweight64(w) (__builtin_constant_p(w) ? __const_hweight64(w) : __arch_hweight64(w))

Change it to hweight_long() to avoid the warning.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index bcc80f428172..43164a0b0023 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2581,7 +2581,7 @@ static int eb_submit(struct i915_execbuffer *eb, struct i915_vma *batch)
 
 static int num_vcs_engines(const struct drm_i915_private *i915)
 {
-	return hweight64(VDBOX_MASK(&i915->gt));
+	return hweight_long(VDBOX_MASK(&i915->gt));
 }
 
 /*
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
