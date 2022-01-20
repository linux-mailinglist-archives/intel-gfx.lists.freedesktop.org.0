Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 107F9494CF8
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 12:30:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5918310E33C;
	Thu, 20 Jan 2022 11:29:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com
 [IPv6:2607:f8b0:4864:20::c2a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BBD910E3EC
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 11:29:58 +0000 (UTC)
Received: by mail-oo1-xc2a.google.com with SMTP id
 b20-20020a4a3414000000b002dda566aba7so2007404ooa.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 03:29:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=W7JXjaqm7V3bpzDwilXPUfypdE73x8aOPswbWUwlTsQ=;
 b=eauMCDS5eHDDXshj/qy653Hr66VZ2+1x6Hp8thmwfHUadyvdSok4bFlO/owXeELQ7N
 DjCImWp/bl7DkgHNaooO1ia8CF95FTpLxFfCErimFy6mdxglW+YJw4rvNn6YVhMsZxcu
 QwF/lWxymtg9EWpvEFTx7MYTuxNSwnMgvfB3E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W7JXjaqm7V3bpzDwilXPUfypdE73x8aOPswbWUwlTsQ=;
 b=iaKFOCHtBGKh8fQK/BZASU6cWdOSpioY6QsynvXWBZKQqr8vkXjhNjd9TjGY7s8lZZ
 kmopWLXZoZX55szY9LshxzTpj1R6ti4+ZIDnRB2URvSn2ZdBnv0iZavS+hXJ66rAufWK
 br9lwIVPJSUUVBLK7otFpbBlqT328ADe/LEGU3BGK1n1cjLjdxPlM+nhMB5b2cKbd115
 O4OCTwZdY10eECZkEUcY8UvNeVefwySjjvYB4RZOmIQXMn4mPlNTCPpqYxZRUfen0fvF
 UKkMNwfTW728VLenYe2WVyJbjOyAA3nZ2dMSyZopKRVlj/GbFJY1meH/Z9FlVEP31tr9
 P0SA==
X-Gm-Message-State: AOAM530R7dbgj/YdDdmG1KKIJc+/637N4JXMJXlgUoR3CtmsMMbmGKeF
 kjT0Juo58bITO4CefAReydQdGgfMhCVNKsGVIQQ9/g==
X-Google-Smtp-Source: ABdhPJxVwI2BoMgc3LExtZr6VpT3lQegMHi4gnCqqSe4FEHYk/5dXqPo6rJ7nFXeJGJUab/chYIHKv8xPFnkmBumDjc=
X-Received: by 2002:aca:b103:: with SMTP id a3mr7188831oif.14.1642678197514;
 Thu, 20 Jan 2022 03:29:57 -0800 (PST)
MIME-Version: 1.0
References: <20220120094856.3004147-1-jani.nikula@intel.com>
In-Reply-To: <20220120094856.3004147-1-jani.nikula@intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 20 Jan 2022 12:29:46 +0100
Message-ID: <CAKMK7uHqf_Cn02WuZtx7m4_fe-rDKZ=cz0OoHusvEwYBGmVSiA@mail.gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH] drm/locking: fix drm_modeset_acquire_ctx
 kernel-doc
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 20, 2022 at 10:49 AM Jani Nikula <jani.nikula@intel.com> wrote:
>
> The stack_depot member was added without kernel-doc, leading to below
> warning. Fix it.
>
> ./include/drm/drm_modeset_lock.h:74: warning: Function parameter or
> member 'stack_depot' not described in 'drm_modeset_acquire_ctx'
>
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Fixes: cd06ab2fd48f ("drm/locking: add backtrace for locking contended locks without backoff")
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  include/drm/drm_modeset_lock.h | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/include/drm/drm_modeset_lock.h b/include/drm/drm_modeset_lock.h
> index b84693fbd2b5..ec4f543c3d95 100644
> --- a/include/drm/drm_modeset_lock.h
> +++ b/include/drm/drm_modeset_lock.h
> @@ -34,6 +34,7 @@ struct drm_modeset_lock;
>   * struct drm_modeset_acquire_ctx - locking context (see ww_acquire_ctx)
>   * @ww_ctx: base acquire ctx
>   * @contended: used internally for -EDEADLK handling
> + * @stack_depot: used internally for contention debugging

Uh would be nice to switch to the inline style, since we already have
inline comments (just not kerneldoc). Either way:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>


>   * @locked: list of held locks
>   * @trylock_only: trylock mode used in atomic contexts/panic notifiers
>   * @interruptible: whether interruptible locking should be used.
> --
> 2.30.2
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
