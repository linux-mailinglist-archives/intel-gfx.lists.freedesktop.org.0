Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B4619B548
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 20:21:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E821E6E979;
	Wed,  1 Apr 2020 18:21:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67D506E979
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 18:21:23 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id 184so547877vsu.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 Apr 2020 11:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TlI0nwb6gmCjtSCjmCeGGpzsXG7a9fjnna1MI8EWDeU=;
 b=tuzMvmfWXd7YL3LonqdHLARZM1Zd1ZMnxBUoZpeKInp2PqZP/DC8Z1Kl9O6vbiz2uy
 q0rGtVmkHvrKkchNL0cKHC3qDGt9V6zb5zMQAtuWlD6NiKOb+iC9tUcsJfxAcpmzYEHE
 6DDPEbNIempf7Vz+UBf87Sk1cgPN4ILerRYNCe8Z80XPlBPxaiQBr3r6Uv4FxhCg5rPx
 gkBYVg4s+KzkZVSqxR2WOPJ2c1Ab8ULhAtgGyg6II/MFCb5lJ5S5SOiprm76jRX3qYYl
 WhguMKV01Sr5+3hLu2HnMfkzcfdrt0aww411J7JEDTIJou0v5spaRxVH/kcMmjTOueMZ
 4q0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TlI0nwb6gmCjtSCjmCeGGpzsXG7a9fjnna1MI8EWDeU=;
 b=MyC3D3aHDlcgd9Tj1nlHTrx9U6aXSEvlN+jjLDzjNZlxYGIW9y5exsc0JdqCmDwAMr
 WyYpTigOFAbih/yD8q8ODIDFroVt1sJfPddU8fZu82Hg/1oOxq+Lviov1b/Gqp90Az5c
 fApDm+q7jpDJ2pwALJaOG/oEqiKqJdx1hUIcC70xMKrjcCfCjiilt4NNjIAQrZuNAKGK
 WY1dpmoyqPa9GIr5yLx2IOy4w444v7dxBOXVbJxBulgk+sHfUdP82Z+m3EbapAsVzgXf
 V/eVT4O6t6N1I1AdJ3Da3+yBUdzMr7icvb/QcjKTFbNOhJ/cRsaSlOMfXdP3WYQ98cVH
 YNBg==
X-Gm-Message-State: AGi0PuY6Qo4sJtMCq9y/pd3edkVZAJJRFJHGTnqMEThSQ77nBgwYsGOb
 2OFaLQYxGnNDEjPYpdA6C55e9N7++kLqOhaPaze/K5cy
X-Google-Smtp-Source: APiQypJSKSAoAvSfAVOSz8S2konxq7cwrKMlMgxZnr3Ciqm1ncFbGpiYuabc5QOHqmpTgyBdSghkgN0gn8FAE7gykWU=
X-Received: by 2002:a05:6102:185:: with SMTP id
 r5mr18266879vsq.164.1585765282490; 
 Wed, 01 Apr 2020 11:21:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200331213108.11340-1-chris@chris-wilson.co.uk>
 <20200331213108.11340-7-chris@chris-wilson.co.uk>
In-Reply-To: <20200331213108.11340-7-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 1 Apr 2020 19:20:56 +0100
Message-ID: <CAM0jSHOwBHMTt7+P-9ROygohsGiGqp=-1N++0vnk0pFKTst0rA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 07/11] drm/i915/gem: Try allocating va from
 free space
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 31 Mar 2020 at 22:31, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> If the current node/entry location is occupied, and the object is not
> pinned, try assigning it some free space. We cannot wait here, so if in
> doubt, we unreserve and try to grab all at once.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index bc8aa9604787..d8c746108d85 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -446,8 +446,17 @@ eb_pin_vma(struct i915_execbuffer *eb,
>         if (unlikely(ev->flags & EXEC_OBJECT_NEEDS_GTT))
>                 pin_flags |= PIN_GLOBAL;
>
> -       if (unlikely(i915_vma_pin(vma, 0, 0, pin_flags)))
> -               return false;
> +       if (unlikely(i915_vma_pin(vma, 0, 0, pin_flags))) {
> +               if (entry->flags & EXEC_OBJECT_PINNED)
> +                       return false;
> +
> +               pin_flags &= ~PIN_OFFSET_FIXED;
> +               if (unlikely(i915_vma_pin(vma,
> +                                         entry->pad_to_size,
> +                                         entry->alignment,
> +                                         pin_flags)))

Just curious, why not just apply the rest of the flags here(MAP, 48B,
BIAS etc) which saves us from having to bind/unbind/bind if it's
trivially misplaced?

Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
