Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE18399C94
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 10:29:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2805B6F421;
	Thu,  3 Jun 2021 08:29:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDC576F421
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 08:29:20 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id a11so7283639ejf.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 03 Jun 2021 01:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=fqgNBT/kGHD0VaaWvfrMvQRbPLUK/41dS90Woxjlx3w=;
 b=DcKRE3Zhi+TUnaraTHRMTgEGXPecRIkcIav4i3lf1/Mc2iWIT0hdUL5x+eVCWRTIsD
 AnUIL2G1bDD5uMTZLSH+GTIu0aSNBi4EWWX+99vxxR+T+Y9GpGwlUQoYRlPjNnbXKE1R
 UyZ1Hbrj+A6tnUhJTtdn6IFIgK1auS9NPxJEQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fqgNBT/kGHD0VaaWvfrMvQRbPLUK/41dS90Woxjlx3w=;
 b=f7jZOTLUC1164v0Fkg2KIJ1u2kB6IERu4G2vSNTmtILQaUm7CnJsdwoa55XnH1kNmQ
 TQV+ythykRCD7u16QUvcl5ywTN5In30lZYa9TWGiKGtwm4gu2mgELfMl7NWEyB1TQA7T
 zU5+lvEM7HWh3+rjmrmihNGLauT+Cid1eOHfPIlAmfBVT2Bk+WP+Ed6gQzUmjZW2BuUg
 zgfGSZoIb1FSbm47AWWQkHesiz4+zOiwY6nwIyz7ufzBU51Zp9e41ZeSuqAQbOlKiXle
 /W2Z3oLYQpBjJ640MpQc2oKLwvd+3eooH7VP/1NjmoelamfemSsTXJRnUnDZgkjO8lqH
 Ls8g==
X-Gm-Message-State: AOAM5313Qdr00e6xDNUfmdjx0ESjnUiQBVVLPBuIKb0o8JYguwz2Unym
 kFYqpWcGJ/xlVOIbpZnHNtJUdA==
X-Google-Smtp-Source: ABdhPJwD6iG9FPJGNRpydXgFkGsjB8Z2iL5GJaLZ267K9rpM+LuCupyhCArth5pdNpsZHK02G7e9rg==
X-Received: by 2002:a17:906:b307:: with SMTP id
 n7mr20399417ejz.261.1622708959488; 
 Thu, 03 Jun 2021 01:29:19 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id e25sm1217903eja.15.2021.06.03.01.29.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Jun 2021 01:29:19 -0700 (PDT)
Date: Thu, 3 Jun 2021 10:29:17 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YLiS3ZaDm/nttAKi@phenom.ffwll.local>
References: <20210602164149.391653-1-jason@jlekstrand.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210602164149.391653-1-jason@jlekstrand.net>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 0/5] drm/i915: Get rid of fence error
 propagation
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 02, 2021 at 11:41:44AM -0500, Jason Ekstrand wrote:
> Fence error propagation is sketchy at best.  Instead of explicitly handling
> fences which might have errors set in the code which is aware of errors, we
> just kick them down the line and hope that userspace knows what to do when
> a wait eventually fails.  This is sketchy at best because most userspace
> isn't prepared to handle errors in those places.  To make things worse, it
> allows errors to propagate across processes in unpredictable ways.  This is
> causing hangs in one client to kill X11.
> 
> Unfortunately, there's no quick path from here to there thanks to the fact
> that we're now running the command parser asynchronously and relying on
> fence errors for when it fails.  This series first gets rid of asynchronous
> command parsing and then cleans up from there.  There was never any real
> use-case for asynchronous parsing and the platforms that rely heavily on
> the command parser are old enough (Gen7) that, when we changed the way the
> command parser works, it wasn't really a change anyone was asking for
> anyway.
> 
> I think we probably want this whole mess back-ported.  I'm happy to take
> suggestions on the strategy there because the history there is a bit
> annoying and I'm not 100% sure where the Linux release cuts land.  In any
> case, I'm happy to make a version of this series per-release if needed for
> Greg to back-port.

I think just the two reversts are enough to be backported, other 3 are
cleanups.

Also I guess this will need to come with an igt patch to adjust the
cmdparser test.

With all the nits addressed, on the series.

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> 
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> 
> Jason Ekstrand (5):
>   drm/i915: Revert "drm/i915/gem: Asynchronous cmdparser"
>   drm/i915: Remove allow_alloc from i915_gem_object_get_sg*
>   drm/i915: Drop error handling from dma_fence_work
>   Revert "drm/i915: Propagate errors on awaiting already signaled
>     fences"
>   Revert "drm/i915: Skip over MI_NOOP when parsing"
> 
>  drivers/gpu/drm/i915/gem/i915_gem_clflush.c   |   4 +-
>  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 227 +-----------------
>  drivers/gpu/drm/i915/gem/i915_gem_object.h    |  10 +-
>  drivers/gpu/drm/i915/gem/i915_gem_pages.c     |  21 +-
>  .../i915/gem/selftests/i915_gem_execbuffer.c  |   4 +
>  drivers/gpu/drm/i915/gt/intel_ggtt.c          |   2 +-
>  drivers/gpu/drm/i915/i915_cmd_parser.c        | 199 ++++++++-------
>  drivers/gpu/drm/i915/i915_drv.h               |   7 +-
>  drivers/gpu/drm/i915/i915_request.c           |   8 +-
>  drivers/gpu/drm/i915/i915_sw_fence_work.c     |   5 +-
>  drivers/gpu/drm/i915/i915_sw_fence_work.h     |   2 +-
>  drivers/gpu/drm/i915/i915_vma.c               |   3 +-
>  12 files changed, 141 insertions(+), 351 deletions(-)
> 
> -- 
> 2.31.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
