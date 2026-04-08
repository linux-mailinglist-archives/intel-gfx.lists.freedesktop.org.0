Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eP7KMRaY12lNQAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 14:14:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCB03CA3C9
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 14:14:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF39A10E7DB;
	Thu,  9 Apr 2026 12:14:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ficMmKKl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E582210E0FD
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2026 22:49:46 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id
 5b1f17b1804b1-48374014a77so3041985e9.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Apr 2026 15:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1775688585; x=1776293385; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=7OdNfoZnqr0v4RceVf6TB8CrzAVNeGuw2KpT1xVp+LI=;
 b=ficMmKKljJ7ckLaB8mz4CgwsJK2bjQgUKxrjZYJBwYNvxbXml4jBgH9pL38Y5r0Qsc
 aUCAJqgCiSYEoUmpvSXWKdtUmZXdghaKcEzSQvIP1HD3XcJvtaMFlfBtLY/Qt2rarH+F
 cZ6Pw8IwoFtcZKnScj/txuQxEICPO6IaMKlMcneK+PomqFex/07307FO2ljX70RB9/XC
 z0SVilHmd2uGHj2XKeCirnhRHci6Hz5u9eyPxzaTRP0rBL4BlxfzrDRieosi9vDKQqza
 ehmC3k7N1ujmsgBF80MGsHE4lbW/WcC++lRirCI3QuoYe7+0jiPEm8vLjcs3u70DfgA9
 DLPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775688585; x=1776293385;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=7OdNfoZnqr0v4RceVf6TB8CrzAVNeGuw2KpT1xVp+LI=;
 b=Vm/TzfD9dku5sRui/mYHH22ql0Gtq53CaWtzlBVgb724B8W9RzC/voKouL7cVEUUEw
 x5S39ytDPsXuBP/goYq4/4R90QprzNogzn0X93+PzomiLNu7FFXUE7cBUjAWaA7y4Cov
 3cmp7m1gZwuXH/Dv4g2Oxii8lkNCfSzSdsGgtIk+3qAeIADzuyrpoIfxC8m+QfukgtoP
 WaR4KlQ6jPgJfI9GTOjzjrHb54nzUgP7Zo+mpXDOBVBA4b2OVd/BvKmcUVj4OmV/DlZv
 8MFohjxILDyAsiakoOlHM+nEvLzWOAETMY5BgVu47hqvDWbuRkq+eu2m+3u74l5U0ZVM
 tJBw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVtx/hyqjWf6iwvmNHJ3M4XbILSPhH0ls1DPohvsXHjHzyED6OwKR5kokHt2C29sngo8TUzM9aMbNE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxvfrJJialtgq+lIg2qZz+qrhwpmGKhQoc7hqS+gGRJ1YRD7alm
 XLDTAr15bYV6HO1rasxJefXQKfNF6KaRXXPzuoXzUYmrxji64i4zecfO
X-Gm-Gg: AeBDietqaNnGedObkPcklgR7vWxm7LQmkBEtS7LZAWZ/d+9bQmY8FdqKKGLW+0QUMXQ
 VwbKi8disLlzKae01XlsvqEHaL3T5BVDRQi3cA4F8Sp6L3u22KyB8VVuMQ8LEzC9EWHlLBGuDWt
 tkupOFUwrqs6AIC1mCgE6LXDeEwRI/CWccmG98IP0s63jNyoDY2aB2uQ+jipHdKDKzhGQCJNwEX
 j6RbZ4X+GCqIooqbxSZRaRrs/BRtzPEqrizx20ICMc7ejWeDwRjNrzl2LwdWzsWYSkFW1RHbt4+
 27X8njfrtfmVpcbLk07Ny6+kI7sYx/K1znadW1E4ru4HfBg2phu0u7L3U/UdvNKXoODk+GC4bIh
 YjU5GcnNLVSv+etESjk45InVmWqjR/FVOBMWEw0G/DGRbMrsCnm3k/sVEpZAv6a0UHtmUTTcpfc
 Ik9gDkPUwKrVYYkt8A1stFAVXvIL/imETYgR0BA2kldV3I9lE=
X-Received: by 2002:a5d:67cb:0:b0:43b:4d25:95ac with SMTP id
 ffacd0b85a97d-43d29281058mr23466724f8f.1.1775688584962; 
 Wed, 08 Apr 2026 15:49:44 -0700 (PDT)
Received: from DESKTOP-K4142FH.localdomain ([197.146.147.164])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43d1e4d2738sm63318408f8f.24.2026.04.08.15.49.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2026 15:49:44 -0700 (PDT)
From: Yassine Mounir <sosohero200@gmail.com>
To: joonas.lahtinen@linux.intel.com
Cc: ville.syrjala@linux.intel.com, torvalds@linuxfoundation.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Yassine Mounir <sosohero200@gmail.com>
Subject: [PATCH v4] drm/i915/gem: Fix relocation race and simplify VMA lookup
Date: Wed,  8 Apr 2026 23:49:05 +0100
Message-ID: <20260408224905.5918-1-sosohero200@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 09 Apr 2026 12:14:10 +0000
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:joonas.lahtinen@linux.intel.com,m:ville.syrjala@linux.intel.com,m:torvalds@linuxfoundation.org,m:linux-kernel@vger.kernel.org,m:sosohero200@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sosohero200@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sosohero200@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[linux.intel.com,linuxfoundation.org,lists.freedesktop.org,vger.kernel.org,gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: 7BCB03CA3C9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Pin the object lifetime in eb_relocate_vma() using i915_gem_object_get()
and i915_gem_object_put() to prevent a Use-After-Free (UAF) if the
handle is closed concurrently during relocation.

Additionally, simplify eb_lookup_vma() by removing the redundant
vma->vm == vm check. As noted by Joonas, this check is unnecessary since
commit d4433c7600f7. Removing it also avoids the "insane" logic of
returning a VMA without a reference, satisfying the sanity requirements
requested by Linus.

Fixes: d4433c7600f7 ("drm/i915: Multi-vm support")
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Suggested-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Signed-off-by: Yassine Mounir <sosohero200@gmail.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 942f4eed8..50eeb4771 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -896,10 +896,8 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
 
 		rcu_read_lock();
 		vma = radix_tree_lookup(&eb->gem_context->handles_vma, handle);
-		if (likely(vma && vma->vm == vm))
+		if (likely(vma))
 			vma = i915_vma_tryget(vma);
-		else
-			vma = NULL;
 		rcu_read_unlock();
 		if (likely(vma))
 			return vma;
@@ -1529,7 +1527,7 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 	 */
 	if (unlikely(!access_ok(urelocs, remain * sizeof(*urelocs))))
 		return -EFAULT;
-
+	i915_gem_object_get(ev->vma->obj);
 	do {
 		struct drm_i915_gem_relocation_entry *r = stack;
 		unsigned int count =
@@ -1590,6 +1588,7 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 		urelocs += ARRAY_SIZE(stack);
 	} while (remain);
 out:
+	i915_gem_object_put(ev->vma->obj);
 	reloc_cache_reset(&eb->reloc_cache, eb);
 	return remain;
 }
-- 
2.51.0

