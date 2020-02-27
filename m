Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 713DB172B11
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 23:26:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFB946ED69;
	Thu, 27 Feb 2020 22:26:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 717606ED69
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 22:26:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20377596-1500050 for multiple; Thu, 27 Feb 2020 22:26:02 +0000
MIME-Version: 1.0
To: Josh Poimboeuf <jpoimboe@redhat.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <ed52cfb852d2772bf20f48614d75f1d1b1451995.1582841072.git.jpoimboe@redhat.com>
References: <ed52cfb852d2772bf20f48614d75f1d1b1451995.1582841072.git.jpoimboe@redhat.com>
Message-ID: <158284236096.19174.6917853940060252533@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 27 Feb 2020 22:26:00 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Minimize uaccess exposure in
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

Quoting Josh Poimboeuf (2020-02-27 22:08:26)
> With CONFIG_CC_OPTIMIZE_FOR_SIZE, objtool reports:
> 
>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: i915_gem_execbuffer2_ioctl()+0x5b7: call to gen8_canonical_addr() with UACCESS enabled
> 
> This means i915_gem_execbuffer2_ioctl() is calling gen8_canonical_addr()
> -- and indirectly, sign_extend64() -- from the user_access_begin/end
> critical region (i.e, with SMAP disabled).
> 
> While it's probably harmless in this case, in general we like to avoid
> extra function calls in SMAP-disabled regions because it can open up
> inadvertent security holes.
> 
> Fix it by moving the gen8_canonical_addr() conversion to a separate loop
> before user_access_begin() is called.
> 
> Note that gen8_canonical_addr() is now called *before* masking off the
> PIN_OFFSET_MASK bits.  That should be ok because it just does a sign
> extension and ignores the masked lower bits anyway.
> 
> Reported-by: Randy Dunlap <rdunlap@infradead.org>
> Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index d5a0f5ae4a8b..183cab13e028 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -2947,6 +2947,13 @@ i915_gem_execbuffer2_ioctl(struct drm_device *dev, void *data,
>                         u64_to_user_ptr(args->buffers_ptr);
>                 unsigned int i;
>  
> +               /*
> +                * Do the call to gen8_canonical_addr() outside the
> +                * uaccess-enabled region to minimize uaccess exposure.
> +                */
> +               for (i = 0; i < args->buffer_count; i++)
> +                       exec2_list[i].offset = gen8_canonical_addr(exec2_list[i].offset);


Another loop over all the objects, where we intentionally try and skip
unmodified entries? To save 2 instructions from inside the second loop?

Colour me skeptical.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
