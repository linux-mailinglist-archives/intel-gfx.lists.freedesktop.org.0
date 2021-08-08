Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BED783E37BF
	for <lists+intel-gfx@lfdr.de>; Sun,  8 Aug 2021 02:56:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC49A89CD3;
	Sun,  8 Aug 2021 00:56:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com
 [IPv6:2607:f8b0:4864:20::32a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DA0E89CD3
 for <intel-gfx@lists.freedesktop.org>; Sun,  8 Aug 2021 00:56:35 +0000 (UTC)
Received: by mail-ot1-x32a.google.com with SMTP id
 d10-20020a9d4f0a0000b02904f51c5004e3so9285357otl.9
 for <intel-gfx@lists.freedesktop.org>; Sat, 07 Aug 2021 17:56:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:date:message-id:in-reply-to:references:user-agent
 :subject:mime-version;
 bh=i/6vWg32QPyQ4//6RJebPl2hvp7J0WxK/H30S/OTM4o=;
 b=PNqe//k1WmXmza+OTQ8A/Cw2nv0Ak/fv8H3mIjckAMAtHn1edRo0Pfma69vPtiYY9E
 o/4riVqL7LAOFLsChWo9ID/WW+c0IwOadZP/IaOrw9xEzPM9gYqQ5r5YlWLE/WOHF/dg
 obfmW1/A6j2hU7J929ptWVjbirm2aFiwmd54nXnMP5n3SsTHfPqRj8QN0RxHH1DIQrjj
 xKwG12Co5JnGU03opW3io+Y2/TcWwZAefmPRPLw85eJ2VQ4b/4/CiXmwmQD8kR17Dsv9
 M5ST+qh/2G9udbAlvzJ85kCWT4JIZOLe+wEUHPPSlhb8fcaANKcn6CLUfhi8o5XOKnOv
 Q3aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:subject:mime-version;
 bh=i/6vWg32QPyQ4//6RJebPl2hvp7J0WxK/H30S/OTM4o=;
 b=am9fvqR+Jou20LGCA8e3kXCw5feH8ytV7Al8tQwbwleYYLiI52JYJ++9pZN+H7B7Uk
 jrw2Yf1TwUv4YG1Z91Hb3AQmcvXVvj6oeGiWX0XQYqTs7HKrkbGY2sZCAdGHNQnqA8ji
 BPDzIv/OkfknxtbfbhL05T/9IvxLsh+SQLdUjxMtDxJFIt6owbvHWtxhcPE+SULhBlDk
 TORr27pfpZJCRRpK1kCwSgZOpmqfKQuFchnkYm1R0StS8zpOOjr1JaQvMn5G4ZAR+m/M
 99EubTWSAqNNtM1Q9EUIfkPAZthWgXbrsx0lSvOGuWXFmKbAagFxTYcsncoCp4uz7RNq
 9eTw==
X-Gm-Message-State: AOAM530DgjcPGgl6U6h5KTrjNu77XaOMnIXai1DXPIdr9C8wrBiJkZMC
 QMGPT3mNtQtEW9Kb7rreLmk7Xw==
X-Google-Smtp-Source: ABdhPJzDfVkdZ0580/x/YMWLVFiS07sLwtxxd9OOkYVjDfQAnRQYUmimEnvlKvq2hYliTsq4e3AwOw==
X-Received: by 2002:a05:6830:114:: with SMTP id
 i20mr11952964otp.306.1628384194242; 
 Sat, 07 Aug 2021 17:56:34 -0700 (PDT)
Received: from [192.168.5.100] ([68.203.99.148])
 by smtp.gmail.com with ESMTPSA id g1sm2378747otk.21.2021.08.07.17.56.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Aug 2021 17:56:33 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
CC: DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Matthew Brost <matthew.brost@intel.com>, Matthew Auld <matthew.auld@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 =?UTF-8?B?VGhvbWFzIEhlbGxzdHLDtm0=?= <thomas.hellstrom@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Dave Airlie <airlied@redhat.com>
Date: Sat, 07 Aug 2021 19:56:32 -0500
Message-ID: <17b2342e218.2817.c6988b7ea6112e3e892765a0d4287e0c@jlekstrand.net>
In-Reply-To: <20210806201852.1345184-1-daniel.vetter@ffwll.ch>
References: <20210806201852.1345184-1-daniel.vetter@ffwll.ch>
User-Agent: AquaMail/1.30.1-1828 (build: 103001000)
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="17b2342e62f3ecc28176037462"
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Release ctx->syncobj on final put,
 not on ctx close
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

This is a multi-part message in MIME format.
--17b2342e62f3ecc28176037462
Content-Type: text/plain; format=flowed; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On August 6, 2021 15:18:59 Daniel Vetter <daniel.vetter@ffwll.ch> wrote:

> gem context refcounting is another exercise in least locking design it
> seems, where most things get destroyed upon context closure (which can
> race with anything really). Only the actual memory allocation and the
> locks survive while holding a reference.
>
> This tripped up Jason when reimplementing the single timeline feature
> in
>
> commit 00dae4d3d35d4f526929633b76e00b0ab4d3970d
> Author: Jason Ekstrand <jason@jlekstrand.net>
> Date:   Thu Jul 8 10:48:12 2021 -0500
>
>    drm/i915: Implement SINGLE_TIMELINE with a syncobj (v4)
>
> We could fix the bug by holding ctx->mutex, but it's cleaner to just

What bug is this fixing, exactly?

--Jason

>
> make the context object actually invariant over its _entire_ lifetime.
>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Fixes: 00dae4d3d35d ("drm/i915: Implement SINGLE_TIMELINE with a syncobj (v4)")
> Cc: Jason Ekstrand <jason@jlekstrand.net>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: "Thomas Hellström" <thomas.hellstrom@intel.com>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> Cc: Dave Airlie <airlied@redhat.com>
> ---
> drivers/gpu/drm/i915/gem/i915_gem_context.c | 6 +++---
> 1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c 
> b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 754b9b8d4981..93ba0197d70a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -940,6 +940,9 @@ void i915_gem_context_release(struct kref *ref)
>  trace_i915_context_free(ctx);
>  GEM_BUG_ON(!i915_gem_context_is_closed(ctx));
>
> + if (ctx->syncobj)
> + drm_syncobj_put(ctx->syncobj);
> +
>  mutex_destroy(&ctx->engines_mutex);
>  mutex_destroy(&ctx->lut_mutex);
>
> @@ -1159,9 +1162,6 @@ static void context_close(struct i915_gem_context *ctx)
>  if (vm)
>  i915_vm_close(vm);
>
> - if (ctx->syncobj)
> - drm_syncobj_put(ctx->syncobj);
> -
>  ctx->file_priv = ERR_PTR(-EBADF);
>
>  /*
> --
> 2.32.0


--17b2342e62f3ecc28176037462
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.=
w3.org/TR/html4/loose.dtd">
<html>
<body>
<div dir=3D"auto">
<div dir=3D"auto"><span style=3D"font-size: 12pt;">On August 6, 2021 15:18:=
59 Daniel Vetter &lt;daniel.vetter@ffwll.ch&gt; wrote:</span></div><div id=
=3D"aqm-original" style=3D"color: black;">
<div><br></div>
<blockquote type=3D"cite" class=3D"gmail_quote" style=3D"margin: 0 0 0 0.75=
ex; border-left: 1px solid #808080; padding-left: 0.75ex;">
<div dir=3D"auto">gem context refcounting is another exercise in least lock=
ing design it</div>
<div dir=3D"auto">seems, where most things get destroyed upon context closu=
re (which can</div>
<div dir=3D"auto">race with anything really). Only the actual memory alloca=
tion and the</div>
<div dir=3D"auto">locks survive while holding a reference.</div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">This tripped up Jason when reimplementing the single time=
line feature</div>
<div dir=3D"auto">in</div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">commit 00dae4d3d35d4f526929633b76e00b0ab4d3970d</div>
<div dir=3D"auto">Author: Jason Ekstrand &lt;jason@jlekstrand.net&gt;</div>
<div dir=3D"auto">Date: &nbsp; Thu Jul 8 10:48:12 2021 -0500</div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">&nbsp; &nbsp; drm/i915: Implement SINGLE_TIMELINE with a =
syncobj (v4)</div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">We could fix the bug by holding ctx-&gt;mutex, but it's c=
leaner to just</div><div dir=3D"auto"></div></blockquote></div><div dir=3D"=
auto"><br></div><div dir=3D"auto">What bug is this fixing, exactly?</div><d=
iv dir=3D"auto"><br></div><div dir=3D"auto">--Jason</div><div dir=3D"auto">=
<br></div><div id=3D"aqm-original" style=3D"color: black;" dir=3D"auto"><bl=
ockquote type=3D"cite" class=3D"gmail_quote" style=3D"margin: 0 0 0 0.75ex;=
 border-left: 1px solid #808080; padding-left: 0.75ex;"><div dir=3D"auto"><=
br></div>
<div dir=3D"auto">make the context object actually invariant over its _enti=
re_ lifetime.</div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">Signed-off-by: Daniel Vetter &lt;daniel.vetter@intel.com&=
gt;</div>
<div dir=3D"auto">Fixes: 00dae4d3d35d ("drm/i915: Implement SINGLE_TIMELINE=
 with a syncobj (v4)")</div>
<div dir=3D"auto">Cc: Jason Ekstrand &lt;jason@jlekstrand.net&gt;</div>
<div dir=3D"auto">Cc: Chris Wilson &lt;chris@chris-wilson.co.uk&gt;</div>
<div dir=3D"auto">Cc: Tvrtko Ursulin &lt;tvrtko.ursulin@intel.com&gt;</div>
<div dir=3D"auto">Cc: Joonas Lahtinen &lt;joonas.lahtinen@linux.intel.com&g=
t;</div>
<div dir=3D"auto">Cc: Matthew Brost &lt;matthew.brost@intel.com&gt;</div>
<div dir=3D"auto">Cc: Matthew Auld &lt;matthew.auld@intel.com&gt;</div>
<div dir=3D"auto">Cc: Maarten Lankhorst &lt;maarten.lankhorst@linux.intel.c=
om&gt;</div>
<div dir=3D"auto">Cc: "Thomas Hellstr=C3=B6m" &lt;thomas.hellstrom@intel.co=
m&gt;</div>
<div dir=3D"auto">Cc: Lionel Landwerlin &lt;lionel.g.landwerlin@intel.com&g=
t;</div>
<div dir=3D"auto">Cc: Dave Airlie &lt;airlied@redhat.com&gt;</div>
<div dir=3D"auto">---</div>
<div dir=3D"auto">&nbsp;drivers/gpu/drm/i915/gem/i915_gem_context.c | 6 +++=
---</div>
<div dir=3D"auto">&nbsp;1 file changed, 3 insertions(+), 3 deletions(-)</di=
v>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c =
b/drivers/gpu/drm/i915/gem/i915_gem_context.c</div>
<div dir=3D"auto">index 754b9b8d4981..93ba0197d70a 100644</div>
<div dir=3D"auto">--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c</div>
<div dir=3D"auto">+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c</div>
<div dir=3D"auto">@@ -940,6 +940,9 @@ void i915_gem_context_release(struct =
kref *ref)</div>
<div dir=3D"auto">&nbsp;=09trace_i915_context_free(ctx);</div>
<div dir=3D"auto">&nbsp;=09GEM_BUG_ON(!i915_gem_context_is_closed(ctx));</d=
iv>
<div dir=3D"auto">&nbsp;</div>
<div dir=3D"auto">+=09if (ctx-&gt;syncobj)</div>
<div dir=3D"auto">+=09=09drm_syncobj_put(ctx-&gt;syncobj);</div>
<div dir=3D"auto">+</div>
<div dir=3D"auto">&nbsp;=09mutex_destroy(&amp;ctx-&gt;engines_mutex);</div>
<div dir=3D"auto">&nbsp;=09mutex_destroy(&amp;ctx-&gt;lut_mutex);</div>
<div dir=3D"auto">&nbsp;</div>
<div dir=3D"auto">@@ -1159,9 +1162,6 @@ static void context_close(struct i9=
15_gem_context *ctx)</div>
<div dir=3D"auto">&nbsp;=09if (vm)</div>
<div dir=3D"auto">&nbsp;=09=09i915_vm_close(vm);</div>
<div dir=3D"auto">&nbsp;</div>
<div dir=3D"auto">-=09if (ctx-&gt;syncobj)</div>
<div dir=3D"auto">-=09=09drm_syncobj_put(ctx-&gt;syncobj);</div>
<div dir=3D"auto">-</div>
<div dir=3D"auto">&nbsp;=09ctx-&gt;file_priv =3D ERR_PTR(-EBADF);</div>
<div dir=3D"auto">&nbsp;</div>
<div dir=3D"auto">&nbsp;=09/*</div>
<div dir=3D"auto">--&nbsp;</div>
<div dir=3D"auto">2.32.0</div>
</blockquote>
</div><div dir=3D"auto"><br></div>
</div></body>
</html>

--17b2342e62f3ecc28176037462--

