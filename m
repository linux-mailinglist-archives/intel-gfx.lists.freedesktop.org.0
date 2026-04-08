Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4HGRIf4a1mkxBAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 11:08:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E29013B99AB
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 11:08:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D70A810E5AC;
	Wed,  8 Apr 2026 09:08:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="WWt25n1Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 773B410E5AC
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2026 09:08:11 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id
 ffacd0b85a97d-43cf8fe9c2aso3474366f8f.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Apr 2026 02:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1775639289; x=1776244089; darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=dKTBatq0cvZCVrBhAkZ8dIwEDJYjd8kVDmfDtYpfCw0=;
 b=WWt25n1Yiv9bQEs68tvMmntlKPtAJiS1WUDOUfLfuyODtE4wKnGFQ1PCJX/kpIMCkB
 PHF1u+W0BBGZiIDExNjIW4hbzPpMdAqLJAv35ttVFcqRDUbr/2Xl09MYdGd4uDqxuVWX
 v27c7HnjLA2TTpDiONYkoJ5M/boT7mwB4vnOw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775639289; x=1776244089;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=dKTBatq0cvZCVrBhAkZ8dIwEDJYjd8kVDmfDtYpfCw0=;
 b=ELD55+lkK1jVwqFKzzaGxwGNH2kAsaTqS4MJ96+HX6fuEzDFrTvVjU39wM2WPOIY+Z
 bs1sL0MUBS5YZqcc5R7zLaXIQw3UFnwmKUoyVFUtCm0rAnnAi9R6PHBrSid+GgdSI/KO
 El6m6B8UQD5xoXxV1D02jpiRRUn5my7Xbz8P2aMKklUlal298Hx58cyNY4nTA3Nbfom3
 VCd5OdgYrl1puD1E+jVX9fwEiwIU3MqWTMkYDXN4+JLKJWbZZvrv0UucL5FZ7PqR7UtK
 VcZVhyvJLG9ecp5nz1/G2z9VprBVnLctlLD789bFK+h73fbIL67Be2paif/Su3EyxeCr
 vCfg==
X-Gm-Message-State: AOJu0YweB8jIOFl9TS/soUVh4ittkQZw+ewV3OBZ3WGlY37ckYCKRmOF
 yk1VlFp9f4fwmOvy0irDqJjCQlBXv6bLpryUilNbvUlRkFD+zPTKyGCGaNkuKdRRQAQ=
X-Gm-Gg: AeBDievrb32arSOOxZDQXFYWfYBjUlJFsA+sKum0lb8vMHy8FSH72D1vyRipRPZpBom
 Ik2uJeIs3YktwrgcrcTLiV2W391lFr72FA8+/Uk3MqqEeE3/95I4u/YupYaOwbuXxl2HbYRWjgU
 xJVh1KJ9iBZqth72W3WoaqXBO91hvzKyVBoZZDamKDnyxY6gBszvTav7riLYeOOhSgHguGgRYPi
 aG+Sc/NSGF+RtCxbaHyBxvfPBjHltxz5Q49gbywIn1p+GRnyUfRVksZNXy+lrueqczR41gf6biz
 GRNAQARQttT00P+xPVHYDZVIy4BwNx4bccE8b8BGZMQHQkCp90EvK85Mz/FngfoauRqv9jjepLB
 wfm4Si3Rr2KOO4vDmOZ4S6bfDRSfqW8RtISLlgMCVBrxUDuf7biLLlOeAeADYWLL8YTn6yML7/y
 0+mHVxHhBHGZMnXTWcOZtFvUp5hMbSY5pZjYY=
X-Received: by 2002:a05:6000:208a:b0:43c:fe0e:5bbc with SMTP id
 ffacd0b85a97d-43d292a0309mr28660057f8f.19.1775639289373; 
 Wed, 08 Apr 2026 02:08:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43d1e4f7d4esm49900832f8f.34.2026.04.08.02.08.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2026 02:08:08 -0700 (PDT)
Date: Wed, 8 Apr 2026 11:08:06 +0200
From: Simona Vetter <simona.vetter@ffwll.ch>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>, 
 Direct Rendering Infrastructure - Development
 <dri-devel@lists.freedesktop.org>, 
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Linus Torvalds <torvalds@linuxfoundation.org>
Subject: Re: [PATCH] drm/i915/gem: Don't use VMA from wrong VM in EXECBUF
Message-ID: <adYa9rf5fgL8-DVq@phenom.ffwll.local>
References: <20260408082859.69823-1-joonas.lahtinen@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260408082859.69823-1-joonas.lahtinen@linux.intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[ffwll.ch];
	FORGED_RECIPIENTS(0.00)[m:joonas.lahtinen@linux.intel.com,m:dri-devel@lists.freedesktop.org,m:ville.syrjala@linux.intel.com,m:torvalds@linuxfoundation.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[simona.vetter@ffwll.ch,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[simona.vetter@ffwll.ch,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,phenom.ffwll.local:mid,ffwll.ch:dkim,ffwll.ch:email,ffwll.ch:url,linuxfoundation.org:email]
X-Rspamd-Queue-Id: E29013B99AB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 08, 2026 at 11:28:59AM +0300, Joonas Lahtinen wrote:
> Do not pick VMA with non-matching VM (ppGTT) on quick path
> of BO handle lookup for a given EXECBUF call. VMA from wrong VM
> could be picked if same BO is repeatedly used in EXECBUF
> calls on same context with alternating VMs (ppGTTs).
> 
> Also avoids returning a VMA without increasing the refcount,
> which may potentially lead to UAF.
> 
> References: https://lore.kernel.org/all/20260324151741.29338-1-sosohero200@gmail.com/
> Reported-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Linus Torvalds <torvalds@linuxfoundation.org>
> Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index bd608cea396f..7463c3262651 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -897,6 +897,8 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
>  		vma = radix_tree_lookup(&eb->gem_context->handles_vma, handle);
>  		if (likely(vma && vma->vm == vm))

This check was added in f7ce8639f6ff ("drm/i915/gem: Split the context's
obj:vma lut into its own mutex") but without any hint in the commit
message as to why. In another hunk of that commit there's a hint though in
__eb_add_lut:

	/* user racing with ctx set-vm */

This would mean that this bug was introduced in e0695db7298e ("drm/i915:
Create/destroy VM (ppGTT) for use with contexts"), which allowed to change
the gem_ctx->vm at runtime, opening up the race that was partially fixed
in the earlier referenced commit about a year later.

But it cannot be exploited anymore in anything remotely recent because
with the introduction of proto-contexts we've made gem_ctx->vm invariant
again, exactly to preemptively close all these potential issues.
Specifically d4433c7600f7 ("drm/i915/gem: Use the proto-context to handle
create parameters (v5)") is the vm specific part of the proto-context
work.

Despite that this is impossible to exploit I think it's still good to fix,
but I think for paranoia's sake we should put a WARN_ON_ONCE(vma->vm !=
vm) in there, since this really should be impossible.

I don't think there's a  harm in backporting this though, since there's a
2 year window between the introduction of the ctx->vm change and it's
complete fix with the proto-ctx work between 2019 and 2021. It's not
realistic to backport the latter and this here is trivial in case anyone
is foolish enough to run such an old kernel.

With the WARN_ON_ONCE added and the above analysis included this is

Reviewed-by: Simona Vetter <simona.vetter@ffwll.ch>

Cheers, Sima

PS: Caught a cold, brain's not entirely working, this might be all very
wrong so please check my history digging.

>  			vma = i915_vma_tryget(vma);
> +		else
> +			vma = NULL;
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
