Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E49A7172AE1
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 23:09:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B53646E988;
	Thu, 27 Feb 2020 22:09:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1ED389C03
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 22:09:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582841359;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=3gjhjVUPXNwQpqDYUVUeBbAw6akdfak24W+Lj13RneY=;
 b=QYj3Hg1KwaTdw8Iv8tgm2j3k7VkbPwbHdrzT5ZZLXbwOSmYcrgZJNrZGA8rQFAsvKy0AWb
 jfPyflKaLSdbRdEalYtdg33NCPWdRS2XoK+3LOQiXGo7M8B2FDYls86d2OXWeF9WpWczwR
 MlBgmxQ1k7wDHH7CNzIQvf6gMPMzBqk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-17-FADPfeCwPky93i4Zls6JDw-1; Thu, 27 Feb 2020 17:09:17 -0500
X-MC-Unique: FADPfeCwPky93i4Zls6JDw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2F0BE1005512;
 Thu, 27 Feb 2020 22:09:16 +0000 (UTC)
Received: from treble.redhat.com (ovpn-121-128.rdu2.redhat.com [10.10.121.128])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5CDDA10001BD;
 Thu, 27 Feb 2020 22:09:15 +0000 (UTC)
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Thu, 27 Feb 2020 16:08:26 -0600
Message-Id: <ed52cfb852d2772bf20f48614d75f1d1b1451995.1582841072.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Subject: [Intel-gfx] [PATCH] drm/i915: Minimize uaccess exposure in
 i915_gem_execbuffer2_ioctl()
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
Cc: Peter Zijlstra <peterz@infradead.org>, intel-gfx@lists.freedesktop.org,
 Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With CONFIG_CC_OPTIMIZE_FOR_SIZE, objtool reports:

  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: i915_gem_execbuffer2_ioctl()+0x5b7: call to gen8_canonical_addr() with UACCESS enabled

This means i915_gem_execbuffer2_ioctl() is calling gen8_canonical_addr()
-- and indirectly, sign_extend64() -- from the user_access_begin/end
critical region (i.e, with SMAP disabled).

While it's probably harmless in this case, in general we like to avoid
extra function calls in SMAP-disabled regions because it can open up
inadvertent security holes.

Fix it by moving the gen8_canonical_addr() conversion to a separate loop
before user_access_begin() is called.

Note that gen8_canonical_addr() is now called *before* masking off the
PIN_OFFSET_MASK bits.  That should be ok because it just does a sign
extension and ignores the masked lower bits anyway.

Reported-by: Randy Dunlap <rdunlap@infradead.org>
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d5a0f5ae4a8b..183cab13e028 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2947,6 +2947,13 @@ i915_gem_execbuffer2_ioctl(struct drm_device *dev, void *data,
 			u64_to_user_ptr(args->buffers_ptr);
 		unsigned int i;
 
+		/*
+		 * Do the call to gen8_canonical_addr() outside the
+		 * uaccess-enabled region to minimize uaccess exposure.
+		 */
+		for (i = 0; i < args->buffer_count; i++)
+			exec2_list[i].offset = gen8_canonical_addr(exec2_list[i].offset);
+
 		/* Copy the new buffer offsets back to the user's exec list. */
 		/*
 		 * Note: count * sizeof(*user_exec_list) does not overflow,
@@ -2962,9 +2969,7 @@ i915_gem_execbuffer2_ioctl(struct drm_device *dev, void *data,
 			if (!(exec2_list[i].offset & UPDATE))
 				continue;
 
-			exec2_list[i].offset =
-				gen8_canonical_addr(exec2_list[i].offset & PIN_OFFSET_MASK);
-			unsafe_put_user(exec2_list[i].offset,
+			unsafe_put_user(exec2_list[i].offset & PIN_OFFSET_MASK,
 					&user_exec_list[i].offset,
 					end_user);
 		}
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
