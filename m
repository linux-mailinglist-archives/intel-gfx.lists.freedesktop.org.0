Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7DE345F5A
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Mar 2021 14:17:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFED86E8D1;
	Tue, 23 Mar 2021 13:17:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1910B6E8D1
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Mar 2021 13:17:26 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 u5-20020a7bcb050000b029010e9316b9d5so10813104wmj.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Mar 2021 06:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=XZmR1eV+3O7/Tsje8SZsKRyfuAaEwgP+4U3l6tsT/AQ=;
 b=HtUB2ulYLAWr/xD/rfRmg4+9cGaNsi51f+2niAxNkFcxLkOqOANu75MNOdh0rxM/v5
 KXTG1lnlln/OF7OYCCDZt8X6UKd0wCkdkpMU0PogzARoPh/xHGkpy9YetOxk0f6O/d8p
 2rplN7VsWlzNEEBFAM4ZVXwx0cIuOmWOQYNDU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XZmR1eV+3O7/Tsje8SZsKRyfuAaEwgP+4U3l6tsT/AQ=;
 b=nTYacZgFCiUntz+eFIIqsemPB55iLZqgIrOsJgehOKh9UuEOzJdjmVqC7F2TlDIhmh
 QzNM/CnIofXx6m/cGZlYxd2vFTVNWfvif9m0t4njRgASMDeZfNTqcirfvfdY1zERMH2d
 Bn1rYCgOHkeAYIFUxPcvyBh3r5obTX9HKQQp0zcFhyOHvu8/UE+pHgBkqFZ0JRXor0X2
 stV8sgD9XcvaNVqQA1dkiWWE16nHnFDg/LJK3ol55mf8SSZq0zD8jFGi88wLuZmfeXva
 nhGh6UmUUiA15igUqOjG+fVwlZN4PuMXOrXPbdt1DB7W60i3RmdZCv/miQhBfCdKIvzR
 McXw==
X-Gm-Message-State: AOAM532ObJZ8ap/PUJUS6y3RZtJgfJvt8OtqmS28j46kYl+dMla8iurf
 6jT6eimHl5L0gjv5ERrx+bteHQ==
X-Google-Smtp-Source: ABdhPJxRxeINx9NqP8W9IbxuZKEKNrsWCAvYXhCC/gHICtaT2IsWa0zbfAq46mIUz5/jvcaTIM4Rmg==
X-Received: by 2002:a1c:f614:: with SMTP id w20mr3303642wmc.70.1616505444675; 
 Tue, 23 Mar 2021 06:17:24 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id n6sm27102034wrw.63.2021.03.23.06.17.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 06:17:24 -0700 (PDT)
Date: Tue, 23 Mar 2021 14:17:22 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Message-ID: <YFnqYj3geFFLFJac@phenom.ffwll.local>
References: <20210323084453.366863-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210323084453.366863-1-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: add gem/gt TODO
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 23, 2021 at 09:44:52AM +0100, Daniel Vetter wrote:
> We've discussed a bit how to get the gem/gt team better integrated
> and collaborate more with the wider community and agreed to the
> following:
> 
> - all gem/gt patches are reviewed on dri-devel for now. That's
>   overkill, but in the past there was definitely too little of that.
> 
> - i915-gem folks are encouraged to cross review core patches from
>   other teams
> 
> - big features (especially uapi changes) need to be discussed in an
>   rfc patch that documents the interface and big picture design,
>   before we get lost in the details of the code
> 
> - Also a rough TODO (can be refined as we go ofc) to get gem/gt back
>   on track, like we've e.g. done with DAL/DC to get that in shape.
> 
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Jason Ekstrand <jason@jlekstrand.net>
> Cc: Dave Airlie <airlied@redhat.com>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> ---
>  drivers/gpu/drm/i915/TODO.txt | 36 +++++++++++++++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/TODO.txt
> 
> diff --git a/drivers/gpu/drm/i915/TODO.txt b/drivers/gpu/drm/i915/TODO.txt
> new file mode 100644
> index 000000000000..d2e5bbb6339d
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/TODO.txt
> @@ -0,0 +1,36 @@
> +gem/gt TODO items
> +-----------------
> +
> +- For discrete memory manager, merge enough dg1 to be able to refactor it to
> +  TTM. Then land pci ids (just in case that turns up an uapi problem). TTM has
> +  improved a lot the past 2 years, there's no reason anymore not to use it.
> +
> +- Come up with a plan what to do with drm/scheduler and how to get there.
> +
> +- There's a lot of complexity added past few years to make relocations faster.
> +  That doesn't make sense given hw and gpu apis moved away from this model years
> +  ago:
> +  1. Land a modern pre-bound uapi like VM_BIND
> +  2. Any complexity added in this area past few years which can't be justified
> +  with VM_BIND using userspace should be removed. Looking at amdgpu dma_resv on
> +  the bo and vm, plus some lru locks is all that needed. No complex rcu,
> +  refcounts, caching, ... on everything.
> +  This is the matching task on the vm side compared to ttm/dma_resv on the
> +  backing storage side.
> +
> +- i915_sw_fence seems to be the main structure for the i915-gem dma_fence model.
> +  How-to-dma_fence is core and drivers really shouldn't build their own world
> +  here, treating everything else as a fixed platform. i915_sw_fence concepts
> +  should be moved to dma_fence, drm/scheduler or atomic commit helpers. Or
> +  removed if dri-devel consensus is that it's not a good idea. Once that's done
> +  maybe even remove it if there's nothing left.
> +
> +Smaller things:
> +- i915_utils.h needs to be moved to the right places.
> +
> +- dma_fence_work should be in drivers/dma-buf
> +
> +- i915_mm.c should be moved to the right places. Some of the helpers also look a
> +  bit fishy:
> +
> +  https://lore.kernel.org/linux-mm/20210301083320.943079-1-hch@lst.de/

Jani just pointed me at another small helper that we should look at:

- tasklet helpers in i915_gem.h also look a bit misplaced and should
  probably be moved to tasklet headers.

Spotted through https://lore.kernel.org/lkml/20210323092221.awq7g5b2muzypjw3@flow/

I'll add that one in v2.

There is also the i915 ww locking context helpers from Maarten in there,
but right now those truly are i915 specific. Plus as part of the ttm
conversion they're already on the list of things we have to move. So I
think redundant to add the entire file.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
