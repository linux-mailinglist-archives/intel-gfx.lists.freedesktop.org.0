Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C98A7E7283
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Nov 2023 20:59:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C72C10E02B;
	Thu,  9 Nov 2023 19:59:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 552 seconds by postgrey-1.36 at gabe;
 Tue, 07 Nov 2023 22:05:02 UTC
Received: from smtp.gentoo.org (mail.gentoo.org
 [IPv6:2001:470:ea4a:1:5054:ff:fec7:86e4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DBE810E3B3
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Nov 2023 22:05:02 +0000 (UTC)
From: Sam James <sam@gentoo.org>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Tue,  7 Nov 2023 21:55:33 +0000
Message-ID: <20231107215538.1891359-1-sam@gentoo.org>
X-Mailer: git-send-email 2.42.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 09 Nov 2023 19:59:52 +0000
Subject: [Intel-gfx] [PATCH] drm: i915: Adapt to -Walloc-size
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
Cc: Sam James <sam@gentoo.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

GCC 14 introduces a new -Walloc-size included in -Wextra which errors out
like:
```
drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c: In function ‘eb_copy_relocations’:
drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1681:24: error: allocation of insufficient size ‘1’ for type ‘struct drm_i915_gem_relocation_entry’ with size ‘32’ [-Werror=alloc-size]
 1681 |                 relocs = kvmalloc_array(size, 1, GFP_KERNEL);
      |                        ^

```

So, just swap the number of members and size arguments to match the prototype, as
we're initialising 1 element of size `size`. GCC then sees we're not
doing anything wrong.

Signed-off-by: Sam James <sam@gentoo.org>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 683fd8d3151c..45b9d9e34b8b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1678,7 +1678,7 @@ static int eb_copy_relocations(const struct i915_execbuffer *eb)
 		urelocs = u64_to_user_ptr(eb->exec[i].relocs_ptr);
 		size = nreloc * sizeof(*relocs);
 
-		relocs = kvmalloc_array(size, 1, GFP_KERNEL);
+		relocs = kvmalloc_array(1, size, GFP_KERNEL);
 		if (!relocs) {
 			err = -ENOMEM;
 			goto err;
-- 
2.42.1

