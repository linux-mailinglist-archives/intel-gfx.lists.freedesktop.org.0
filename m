Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QFxjFDpE1mkFCwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 14:04:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5833BBB64
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 14:04:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE3D210E623;
	Wed,  8 Apr 2026 12:04:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="TwbVrcDC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE10810E61F
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2026 12:04:06 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id
 5b1f17b1804b1-488af9fdaa7so19893355e9.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Apr 2026 05:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1775649845; x=1776254645; darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=67FUvuUYw3FdlK6qJZvlH40hk371TsgTNRnsmwrbeHA=;
 b=TwbVrcDCohhfSbcghHn/c/Uo+AaKaGfMIDBzV0D8nCUH8Sw02WFJVQk3TDUIQY8jsU
 cvXeIU2sSPWLNLG4ZTLqJ8lzPqqi1sT3z88R7eHim7JfNP0UO6j0dEPkzV65T9x6ggHy
 0qyt6EgHRN9M6cLG1z898XhBUGXJV8PwbD6Ck=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775649845; x=1776254645;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=67FUvuUYw3FdlK6qJZvlH40hk371TsgTNRnsmwrbeHA=;
 b=JvsWuQnvyzkjH40E1o5lFwynxItUk/OPIMvw2Gk/gLWfDqSzQwzY91ad7QbRwMIJv9
 piX7gJ8kpF3VWWYTTn6NeHeEJgqU43c5R34mP//dZElesGvGKEk636IbftSK2QlVDojD
 4yxwSjiaXqGTMLeIU/E/XRh3VxPYCXcVGDPq88/c60B/ULf54qv3+05RXLl37/KhI0MI
 qQLF67mifVoeKJyja7h2ihaczWl7nXa4cLCVTHL9JFDzG79eWlaOW1u4ds7ktISKpEcQ
 13xaegfxNCUhg71DD8iRU11DnhCm6ulOVV/M+fBHuyd91zJMpogMQSDdBhRNlaL/UBYE
 sxIQ==
X-Gm-Message-State: AOJu0Yy6J7HWn9gY+iwMPb308/ll3ogpbjbIsF2hpq6NnaHujEfk6pE2
 JTJDePtTCIAGvS6K6Wg9LhfF9YzmfQh4u45JeKSp09cgsLaXuFhvxKvlALDoqVnUzVnG+kkdh6C
 YC7pV
X-Gm-Gg: AeBDieuWTj1Z+NPDZ2C8sjyamWz798Jwcq7mpTCYAmsv/NB7Op7foTClqMkV5Cyzd7o
 smpkCwtaqui/T4UrmOEbr4h9x1O+JjSaeH3nkWVCzsjup+AMfWj1RkNIe7JKz2Co5CtasrkGd+H
 4UyfIQes7+z1N1qnJpD6Rctn36Wt2xEheHL1uU+grKrzMizjHz9XNC4YZMTsbVwV8WtSQyGzZ9z
 dSCQs/acVEzhNZ5jFe2V/xeQFxDV1pyE2W7LAAPj/Vji7+u5di4+28ysvBsUsmpxUMePyZqn0xc
 vqXuU6lS2GIBkeeIS9ti/wP9FpoEjlCDdQx0x68wrDHYviPs9R8N/5NoqPWd0gmlH4wAQmVWSER
 JqtR0R1gopC0PIF0JTLqAsOBqjk2x1z1tNSDe+7YqKrBbW7un/9UKoaUM4JBL1MAKLSCjuoSrGZ
 ckLbQ+hDpHXd62vALAGZiEGd8br0vvlJAHHGlMw3Dfs5VMWg==
X-Received: by 2002:a05:600c:1d1d:b0:488:7ebd:78 with SMTP id
 5b1f17b1804b1-4889977cbb7mr287621565e9.14.1775649844715; 
 Wed, 08 Apr 2026 05:04:04 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-48893f39027sm439570295e9.2.2026.04.08.05.04.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2026 05:04:04 -0700 (PDT)
Date: Wed, 8 Apr 2026 14:04:02 +0200
From: Simona Vetter <simona.vetter@ffwll.ch>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>, 
 Direct Rendering Infrastructure - Development
 <dri-devel@lists.freedesktop.org>, 
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Linus Torvalds <torvalds@linuxfoundation.org>,
 Simona Vetter <simona.vetter@ffwll.ch>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Andi Shyti <andi.shyti@kernel.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [PATCH v3] drm/i915/gem: Don't use VMA from wrong VM in EXECBUF
Message-ID: <adZEMi0ps3vK9-xt@phenom.ffwll.local>
References: <20260408110551.84120-1-joonas.lahtinen@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260408110551.84120-1-joonas.lahtinen@linux.intel.com>
X-Operating-System: Linux phenom 6.19.10+deb14-amd64 
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[ffwll.ch];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:joonas.lahtinen@linux.intel.com,m:dri-devel@lists.freedesktop.org,m:ville.syrjala@linux.intel.com,m:torvalds@linuxfoundation.org,m:simona.vetter@ffwll.ch,m:tursulin@ursulin.net,m:andi.shyti@kernel.org,m:chris@chris-wilson.co.uk,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[simona.vetter@ffwll.ch,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[simona.vetter@ffwll.ch,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linuxfoundation.org:email,chris-wilson.co.uk:email,phenom.ffwll.local:mid,ffwll.ch:dkim,ffwll.ch:email,ffwll.ch:url]
X-Rspamd-Queue-Id: 5D5833BBB64
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 08, 2026 at 02:05:51PM +0300, Joonas Lahtinen wrote:
> Do not pick a VMA with non-matching VM (ppGTT) on quick path
> of BO handle lookup for a given EXECBUF call. VMA from wrong VM
> could be picked if same BO is repeatedly used in EXECBUF
> calls on same context with alternating VMs (ppGTTs). However due
> to the introduction of proto-ctx that should not be possible since
> d4433c7600f7 ("drm/i915/gem: Use the proto-context to handle
>  create parameters (v5)").
> 
> Also avoids returning a VMA without increasing the refcount,
> which may potentially lead to UAF since f7ce8639f6ff ("drm/i915/gem:
> Split the context's obj:vma lut into its own mutex") and until
> d4433c7600f7 ("drm/i915/gem: Use the proto-context to handle
>  create parameters (v5)").

Reviewed-by: Simona Vetter <simona.vetter@ffwll.ch>

Also, much more succinct summary above than my babbling below :-)

Cheers, Sima

> 
> Sima's analysis:
> 
>   This check was added in f7ce8639f6ff ("drm/i915/gem: Split the context's
>   obj:vma lut into its own mutex") but without any hint in the commit
>   message as to why. In another hunk of that commit there's a hint though in
>   __eb_add_lut:
> 
>           /* user racing with ctx set-vm */
> 
>   This would mean that this bug was introduced in e0695db7298e ("drm/i915:
>   Create/destroy VM (ppGTT) for use with contexts"), which allowed to change
>   the gem_ctx->vm at runtime, opening up the race that was partially fixed
>   in the earlier referenced commit about a year later.
> 
>   But it cannot be exploited anymore in anything remotely recent because
>   with the introduction of proto-contexts we've made gem_ctx->vm invariant
>   again, exactly to preemptively close all these potential issues.
>   Specifically d4433c7600f7 ("drm/i915/gem: Use the proto-context to handle
>   create parameters (v5)") is the vm specific part of the proto-context
>   work.
> 
>   Despite that this is impossible to exploit I think it's still good to fix,
>   but I think for paranoia's sake we should put a WARN_ON_ONCE(vma->vm !=
>   vm) in there, since this really should be impossible.
> 
>   I don't think there's a  harm in backporting this though, since there's a
>   2 year window between the introduction of the ctx->vm change and it's
>   complete fix with the proto-ctx work between 2019 and 2021. It's not
>   realistic to backport the latter and this here is trivial in case anyone
>   is foolish enough to run such an old kernel.
> 
> v3:
> - Include Sima's analysis and WARN_ON_ONCE
> 
> Fixes: f7ce8639f6ff ("drm/i915/gem: Split the context's obj:vma lut into its own mutex")
> References: https://lore.kernel.org/all/20260324151741.29338-1-sosohero200@gmail.com/
> Reported-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Linus Torvalds <torvalds@linuxfoundation.org>
> Cc: Simona Vetter <simona.vetter@ffwll.ch>
> Cc: Tvrtko Ursulin <tursulin@ursulin.net>
> Cc: Andi Shyti <andi.shyti@kernel.org>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index bd608cea396f..16f7c2fac143 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -895,8 +895,12 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
>  
>  		rcu_read_lock();
>  		vma = radix_tree_lookup(&eb->gem_context->handles_vma, handle);
> -		if (likely(vma && vma->vm == vm))
> +		if (likely(vma && vma->vm == vm)) {
>  			vma = i915_vma_tryget(vma);
> +		} else {
> +			WARN_ON_ONCE(vma && vma->vm != vm);
> +			vma = NULL;
> +		}
>  		rcu_read_unlock();
>  		if (likely(vma))
>  			return vma;
> -- 
> 2.53.0
> 

-- 
Simona Vetter
Software Engineer
http://blog.ffwll.ch
