Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9733E5DDB
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Aug 2021 16:26:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9AAD6E045;
	Tue, 10 Aug 2021 14:26:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com
 [IPv6:2607:f8b0:4864:20::b2c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 678476E046
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 14:26:08 +0000 (UTC)
Received: by mail-yb1-xb2c.google.com with SMTP id z5so34730241ybj.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 07:26:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LqeWMyRei0CeQr0H/Ya6RvcKvJf7MYCjEyNe0O6vg4s=;
 b=fWDSpDjKIqopGaWqTlWMASrbNade25iLq1jgXlv43KyyJzn2yL6j+r/OvniiD6OCfy
 z68ppxKaKaWxOJLnBnyEejumavmcDiEVFRV42vWg29w+L2Vo/9wAVexJtdfoHRKNqYyE
 SObmO0SB3K1MGV1VE+BwbXo6wX/HOUPo2B3HSrQCXlVrs8BZt9AYUgY6xHPlVVu4FNlR
 Fr+PPu+ECBwhM7LnxAdsMTqW6KtTCQ85YvXEvbEd9dsMoROtCi5T6uIzoHHf9hYnwrJE
 SgAHa34oKr6bsZlYN6DGKHLmgQCMKFet16Xj7f8FJRjAXDT9DrWxdDS3JPeVdKlSaAC7
 zrkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LqeWMyRei0CeQr0H/Ya6RvcKvJf7MYCjEyNe0O6vg4s=;
 b=te2+DPW4bmTQMwETNFXM6tT8eD+TCt4T9/L59FVpDUlMdLDgRIDBaAt3Vk8MS/VDo0
 sub0o7AB58DAaly9rD/883QfEJ7fdvitZf/q5nHCosz5EbtFk/EKYSjm2c36csiWreIq
 yiuFrkeofl1WSHHGonjZa5ri9cChnbu8YWYZJg7KHBs8Hb+GYLGX3dwq73Fdi2lrrNN3
 LrmN0Hder0sPYEYxSb4Kn32eO7+fW2xW++9EEucNHdFetKkt9s3ZWdZvKQiX2r+b6Vnm
 3SLABAhpDLJeIg01MSpuzHRcA4L/mnUCDRuPhY+wzxaYRt2qzZmbaBLETL4/sMypuro0
 cc/g==
X-Gm-Message-State: AOAM531ajwSuRy7qznelXA3FD9KkyAwbh+9Lp9BCYCv7Mx/lVCEpV9Yu
 OyVJsHs8/bSG86EHeSVgd/OuDRgpvfxIYr02hQl/Yw==
X-Google-Smtp-Source: ABdhPJzsdxhaME5TaDhdKG2GEzrauk16886QoZptzGAghxqCp9jVUr+XJJt5dKQXrn6nJL+xvcYZXgTIsXhOoc6/Zik=
X-Received: by 2002:a25:208b:: with SMTP id
 g133mr37196649ybg.211.1628605567160; 
 Tue, 10 Aug 2021 07:26:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210810123408.1870870-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210810123408.1870870-1-daniel.vetter@ffwll.ch>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Tue, 10 Aug 2021 09:25:56 -0500
Message-ID: <CAOFGe96MjBFBLcG5+qrUJvuHG_h-94htO+RRw069PvG5Yc8GGQ@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: DRI Development <dri-devel@lists.freedesktop.org>, 
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>, 
 Matthew Auld <matthew.auld@intel.com>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH] drm/doc/rfc: drop lmem uapi section
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

Acked-by: Jason Ekstrand <jason@jlekstrand.net>

On Tue, Aug 10, 2021 at 7:34 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
> We still have quite a bit more work to do with overall reworking of
> the ttm-based dg1 code, but the uapi stuff is now finalized with the
> latest pull. So remove that.
>
> This also fixes kerneldoc build warnings because we've included the
> same headers in two places, resulting in sphinx complaining about
> duplicated symbols. This regression has been created when we moved the
> uapi definitions to the real include/uapi/ folder in 727ecd99a4c9
> ("drm/doc/rfc: drop the i915_gem_lmem.h header")
>
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Cc: Stephen Rothwell <sfr@canb.auug.org.au>
> Fixes: 727ecd99a4c9 ("drm/doc/rfc: drop the i915_gem_lmem.h header")
> Cc: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> ---
>  Documentation/gpu/rfc/i915_gem_lmem.rst | 107 ------------------------
>  1 file changed, 107 deletions(-)
>
> diff --git a/Documentation/gpu/rfc/i915_gem_lmem.rst b/Documentation/gpu/rfc/i915_gem_lmem.rst
> index 675ba8620d66..91be041e68cc 100644
> --- a/Documentation/gpu/rfc/i915_gem_lmem.rst
> +++ b/Documentation/gpu/rfc/i915_gem_lmem.rst
> @@ -22,110 +22,3 @@ real, with all the uAPI bits is:
>          * SET/GET ioctl caching(see `I915 SET/GET CACHING`_)
>  * Send RFC(with mesa-dev on cc) for final sign off on the uAPI
>  * Add pciid for DG1 and turn on uAPI for real
> -
> -New object placement and region query uAPI
> -==========================================
> -Starting from DG1 we need to give userspace the ability to allocate buffers from
> -device local-memory. Currently the driver supports gem_create, which can place
> -buffers in system memory via shmem, and the usual assortment of other
> -interfaces, like dumb buffers and userptr.
> -
> -To support this new capability, while also providing a uAPI which will work
> -beyond just DG1, we propose to offer three new bits of uAPI:
> -
> -DRM_I915_QUERY_MEMORY_REGIONS
> ------------------------------
> -New query ID which allows userspace to discover the list of supported memory
> -regions(like system-memory and local-memory) for a given device. We identify
> -each region with a class and instance pair, which should be unique. The class
> -here would be DEVICE or SYSTEM, and the instance would be zero, on platforms
> -like DG1.
> -
> -Side note: The class/instance design is borrowed from our existing engine uAPI,
> -where we describe every physical engine in terms of its class, and the
> -particular instance, since we can have more than one per class.
> -
> -In the future we also want to expose more information which can further
> -describe the capabilities of a region.
> -
> -.. kernel-doc:: include/uapi/drm/i915_drm.h
> -        :functions: drm_i915_gem_memory_class drm_i915_gem_memory_class_instance drm_i915_memory_region_info drm_i915_query_memory_regions
> -
> -GEM_CREATE_EXT
> ---------------
> -New ioctl which is basically just gem_create but now allows userspace to provide
> -a chain of possible extensions. Note that if we don't provide any extensions and
> -set flags=0 then we get the exact same behaviour as gem_create.
> -
> -Side note: We also need to support PXP[1] in the near future, which is also
> -applicable to integrated platforms, and adds its own gem_create_ext extension,
> -which basically lets userspace mark a buffer as "protected".
> -
> -.. kernel-doc:: include/uapi/drm/i915_drm.h
> -        :functions: drm_i915_gem_create_ext
> -
> -I915_GEM_CREATE_EXT_MEMORY_REGIONS
> -----------------------------------
> -Implemented as an extension for gem_create_ext, we would now allow userspace to
> -optionally provide an immutable list of preferred placements at creation time,
> -in priority order, for a given buffer object.  For the placements we expect
> -them each to use the class/instance encoding, as per the output of the regions
> -query. Having the list in priority order will be useful in the future when
> -placing an object, say during eviction.
> -
> -.. kernel-doc:: include/uapi/drm/i915_drm.h
> -        :functions: drm_i915_gem_create_ext_memory_regions
> -
> -One fair criticism here is that this seems a little over-engineered[2]. If we
> -just consider DG1 then yes, a simple gem_create.flags or something is totally
> -all that's needed to tell the kernel to allocate the buffer in local-memory or
> -whatever. However looking to the future we need uAPI which can also support
> -upcoming Xe HP multi-tile architecture in a sane way, where there can be
> -multiple local-memory instances for a given device, and so using both class and
> -instance in our uAPI to describe regions is desirable, although specifically
> -for DG1 it's uninteresting, since we only have a single local-memory instance.
> -
> -Existing uAPI issues
> -====================
> -Some potential issues we still need to resolve.
> -
> -I915 MMAP
> ----------
> -In i915 there are multiple ways to MMAP GEM object, including mapping the same
> -object using different mapping types(WC vs WB), i.e multiple active mmaps per
> -object. TTM expects one MMAP at most for the lifetime of the object. If it
> -turns out that we have to backpedal here, there might be some potential
> -userspace fallout.
> -
> -I915 SET/GET CACHING
> ---------------------
> -In i915 we have set/get_caching ioctl. TTM doesn't let us to change this, but
> -DG1 doesn't support non-snooped pcie transactions, so we can just always
> -allocate as WB for smem-only buffers.  If/when our hw gains support for
> -non-snooped pcie transactions then we must fix this mode at allocation time as
> -a new GEM extension.
> -
> -This is related to the mmap problem, because in general (meaning, when we're
> -not running on intel cpus) the cpu mmap must not, ever, be inconsistent with
> -allocation mode.
> -
> -Possible idea is to let the kernel picks the mmap mode for userspace from the
> -following table:
> -
> -smem-only: WB. Userspace does not need to call clflush.
> -
> -smem+lmem: We only ever allow a single mode, so simply allocate this as uncached
> -memory, and always give userspace a WC mapping. GPU still does snooped access
> -here(assuming we can't turn it off like on DG1), which is a bit inefficient.
> -
> -lmem only: always WC
> -
> -This means on discrete you only get a single mmap mode, all others must be
> -rejected. That's probably going to be a new default mode or something like
> -that.
> -
> -Links
> -=====
> -[1] https://patchwork.freedesktop.org/series/86798/
> -
> -[2] https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/5599#note_553791
> --
> 2.32.0
>
