Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A632E982E
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jan 2021 16:16:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B939089FDB;
	Mon,  4 Jan 2021 15:16:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ED20891A1;
 Wed, 30 Dec 2020 15:39:34 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6517C22288;
 Wed, 30 Dec 2020 15:39:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1609342773;
 bh=R+QtqUjZdUsen8XjrwbBijiAfroUZOBF7AE3pnTq3Mg=;
 h=From:To:Cc:Subject:Date:From;
 b=t/LvhBIVwknbkuroGTdJD9EhpS/WiYbw3HrpsiOpHIQps7Ax8kj38V01plDw3z9FD
 WZEBZzWXdRZIkxaIXYgvpCkeItoHbJQnPQ5gtVJNGY3cvuqdrxYC1WgLmIzTHdNkXC
 SNThC2LqzfKzKNnh2jmIlMqiKKzTVAuOr82Dwzve11IRoAAspH4dFzMj2IwuvQOfnb
 BewGRZqFu+oWApmvdqTcaHHKNCMuTgmJMCWTP7WF3E7i1/B13eWiQbowSC+vcnfQ6i
 JWV1qrDo+ALV5AGsd5ChEL5yLK3uiLQrlNsMDKrFCYP3LkcmJnRbzWV2d/Y1b+4s1j
 0v0zU64bBfJrw==
From: Arnd Bergmann <arnd@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 30 Dec 2020 16:39:14 +0100
Message-Id: <20201230153928.456260-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 04 Jan 2021 15:16:05 +0000
Subject: [Intel-gfx] [PATCH] i915: fix shift warning
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
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Arnd Bergmann <arnd@arndb.de>

Randconfig builds on 32-bit machines show lots of warnings for
the i915 driver for incorrect bit masks like:

drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2584:9: error: shift count >= width of type [-Werror,-Wshift-count-overflow]
        return hweight64(VDBOX_MASK(&i915->gt));
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/asm-generic/bitops/const_hweight.h:29:49: note: expanded from macro 'hweight64'
 #define hweight64(w) (__builtin_constant_p(w) ? __const_hweight64(w) : __arch_hweight64(w))

Since this is a 64-bit mask, use GENMASK_ULL instead of GENMASK.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/gpu/drm/i915/i915_drv.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 0a3ee4f9dc0a..ca32fa0d6a57 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1624,7 +1624,7 @@ tgl_revids_get(struct drm_i915_private *dev_priv)
 	unsigned int first__ = (first);					\
 	unsigned int count__ = (count);					\
 	((gt)->info.engine_mask &						\
-	 GENMASK(first__ + count__ - 1, first__)) >> first__;		\
+	 GENMASK_ULL(first__ + count__ - 1, first__)) >> first__;		\
 })
 #define VDBOX_MASK(gt) \
 	ENGINE_INSTANCES_MASK(gt, VCS0, I915_MAX_VCS)
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
