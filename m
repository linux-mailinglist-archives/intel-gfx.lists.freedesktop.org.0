Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21AE13C7154
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 15:38:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CE9189DED;
	Tue, 13 Jul 2021 13:38:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 980A089DA6
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 13:38:20 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 l18-20020a1ced120000b029014c1adff1edso1653891wmh.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 06:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=JXgLaEMV9AycbR+aBsr1GEHEZTKsPIe+O8bYHgn0+8A=;
 b=No9W2eV0gFGsdgaro083xZsih7wNstPq317G3RZvMpcFHmxf+pyZR97e3sdDZPr5wQ
 f6MnmfXpXs3IPPIkrYmd/nJSHVq2Hh1s8VHYZ2RiBZM+J1MscUgt3ntRRPyWX3coys6A
 55WmXn1nAjqEbJEy0iBM+f3mK82hSB2zmQxCs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JXgLaEMV9AycbR+aBsr1GEHEZTKsPIe+O8bYHgn0+8A=;
 b=syzWMw7mRYZO31eekNoYJ64QX3wieT7wgtNkizVOD/Z7GD7NHGeeC/ivyS9d/dViBq
 IKN1T8bKDx75i/ToNLxkcmmaFKkssVU18I0bo+/G3wST0Fpfo1q/TbNn3Z0lK/hqg11I
 /GEyhqaIrBu56te18BiVlafBjy2Rp0Oxj+jy+B38oHK06cahLLuzoWGa15OAh4KBer4X
 UY6qARi7K/NNbDE4hLGF/qGT5sa23cwKkdGYtT87k+viag4EEEjGTWSBeZJMy8O7A0uO
 mdQpfDJGmCiJjYhPqyasJiZvfctQeWsHvZDmAwjhvEH1FEYBjT8nlWC0lXOVsdmDyZdG
 mWIQ==
X-Gm-Message-State: AOAM532Kuq1rdm4qsE5Q60O2D9rrYjR93vCKoVfSf9AgqAg+gexK9HAB
 ak9I9F75rTuk7IWG0jBSiFJx5Q==
X-Google-Smtp-Source: ABdhPJwKGByb0HrM4b/cEyIP5bovAUjTfz49C8V5J0SWHVircUw7X9KjQ7WgW7xM6dnU5pGOBEJrdw==
X-Received: by 2002:a1c:9d8f:: with SMTP id g137mr72380wme.13.1626183499233;
 Tue, 13 Jul 2021 06:38:19 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id d24sm2408801wmb.42.2021.07.13.06.38.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jul 2021 06:38:18 -0700 (PDT)
Date: Tue, 13 Jul 2021 15:38:16 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <YO2XSKyCe5FIBwYS@phenom.ffwll.local>
References: <20210713130431.2392740-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210713130431.2392740-1-matthew.auld@intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gtt: drop the page table
 optimisation
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
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 stable@vger.kernel.org, Chris Wilson <chris.p.wilson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 13, 2021 at 02:04:31PM +0100, Matthew Auld wrote:
> We skip filling out the pt with scratch entries if the va range covers
> the entire pt, since we later have to fill it with the PTEs for the
> object pages anyway. However this might leave open a small window where
> the PTEs don't point to anything valid for the HW to consume.
> 
> When for example using 2M GTT pages this fill_px() showed up as being
> quite significant in perf measurements, and ends up being completely
> wasted since we ignore the pt and just use the pde directly.
> 
> Anyway, currently we have our PTE construction split between alloc and
> insert, which is probably slightly iffy nowadays, since the alloc
> doesn't actually allocate anything anymore, instead it just sets up the
> page directories and points the PTEs at the scratch page. Later when we
> do the insert step we re-program the PTEs again. Better might be to
> squash the alloc and insert into a single step, then bringing back this
> optimisation(along with some others) should be possible.
> 
> Fixes: 14826673247e ("drm/i915: Only initialize partially filled pagetables")
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> Cc: Chris Wilson <chris.p.wilson@intel.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: <stable@vger.kernel.org> # v4.15+

This is some impressively convoluted code, and I'm scared.

But as far as I managed to convince myself, your story here checks out.
Problem will be a bit that this code moved around a _lot_ so we'll need a
lot of dedicated backports :-(

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> index 3d02c726c746..6e0e52eeb87a 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> @@ -303,10 +303,7 @@ static void __gen8_ppgtt_alloc(struct i915_address_space * const vm,
>  			__i915_gem_object_pin_pages(pt->base);
>  			i915_gem_object_make_unshrinkable(pt->base);
>  
> -			if (lvl ||
> -			    gen8_pt_count(*start, end) < I915_PDES ||
> -			    intel_vgpu_active(vm->i915))
> -				fill_px(pt, vm->scratch[lvl]->encode);
> +			fill_px(pt, vm->scratch[lvl]->encode);
>  
>  			spin_lock(&pd->lock);
>  			if (likely(!pd->entry[idx])) {
> -- 
> 2.26.3
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
