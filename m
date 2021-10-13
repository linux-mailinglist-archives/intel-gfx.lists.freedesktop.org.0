Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 265ED42C1B0
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 15:47:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9469B6E087;
	Wed, 13 Oct 2021 13:47:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB50B6E063
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 13:47:02 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id o20so8676697wro.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 06:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=YZh8AhTGxGeYNvwzNhyFBnxSWOoBOzTeWfFnP+fKct8=;
 b=U4EwWlAcU/EVqIS3dui60Kf6v/hExcHAvu7XT5Su4o0SxU0G2CYsvT/RWgvJxm2zhU
 Tha/FFeMab/KWTrN3FOx9ShBBJpRPCH+dWviO1zYz6Od2kaq0kJUuWDEp8gLQT1IlJSh
 /yRUC9ew+VINXEWca2McdsA5FwEUjB3C5U+JE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YZh8AhTGxGeYNvwzNhyFBnxSWOoBOzTeWfFnP+fKct8=;
 b=3LJ8ci/Fh+xeXbkiwUH14hoAUKJiF7ETFgTfWUxq6TgdMKLrwLEyG+p0ZQxRBy7bet
 P+K7fRi5k3OR/lVJ+0pTBsfeaOYea0DNr4jUKYxE6hOUsd82GPgi889Gr3DI57tsDG/t
 zjQnDdxAhMyYvPg3DzCSVYWuRiF+4yyTYPqbJh23gFUOfSYVWvOH04AqrQS/kTSrpOvm
 caYLiOuNxa2huDiXugKYayAGncjHad6y1UXU1JRMMxMoGeL1byJPmgdooAkf0DeYYUsN
 wgIMcni6Ek1ml4zBcllunuwZha3u2D5KqNSuqmGdE2dOk69Kt+FSMp4VJ7yMeLk2nuFQ
 EWYw==
X-Gm-Message-State: AOAM5328OGeFGuGNi5Bv4/yxMPECPGD9tyt/OoJXaVj8Q7NQMRkDSv8P
 pSgPOGN4Fo5J+19T0kLiisycoA==
X-Google-Smtp-Source: ABdhPJwYdwGKVCTfVGjxohAuBriYpdEp/xfbKwbxwvKqZrc6EE8y+yeUpSM3FiIyOncZtZsgkgGrJw==
X-Received: by 2002:a1c:9dd1:: with SMTP id g200mr12885124wme.42.1634132820685; 
 Wed, 13 Oct 2021 06:47:00 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id c17sm5194106wmr.15.2021.10.13.06.46.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 06:47:00 -0700 (PDT)
Date: Wed, 13 Oct 2021 15:46:58 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Ramalingam C <ramalingam.c@intel.com>
Cc: dri-devel <dri-devel@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Matthew Auld <matthew.auld@intel.com>, CQ Tang <cq.tang@intel.com>,
 Hellstrom Thomas <thomas.hellstrom@intel.com>
Message-ID: <YWbjUv3LHyCRQ1xS@phenom.ffwll.local>
References: <20211011161155.6397-1-ramalingam.c@intel.com>
 <20211011161155.6397-14-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211011161155.6397-14-ramalingam.c@intel.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 13/14] drm/i915/uapi: document behaviour for
 DG2 64K support
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

On Mon, Oct 11, 2021 at 09:41:54PM +0530, Ramalingam C wrote:
> From: Matthew Auld <matthew.auld@intel.com>
> 
> On discrete platforms like DG2, we need to support a minimum page size
> of 64K when dealing with device local-memory. This is quite tricky for
> various reasons, so try to document the new implicit uapi for this.
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> ---
>  include/uapi/drm/i915_drm.h | 61 ++++++++++++++++++++++++++++++++++---
>  1 file changed, 56 insertions(+), 5 deletions(-)
> 
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index aa2a7eccfb94..d62e8b7ed8b6 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -1118,10 +1118,16 @@ struct drm_i915_gem_exec_object2 {
>  	/**
>  	 * When the EXEC_OBJECT_PINNED flag is specified this is populated by
>  	 * the user with the GTT offset at which this object will be pinned.
> +	 *
>  	 * When the I915_EXEC_NO_RELOC flag is specified this must contain the
>  	 * presumed_offset of the object.
> +	 *
>  	 * During execbuffer2 the kernel populates it with the value of the
>  	 * current GTT offset of the object, for future presumed_offset writes.
> +	 *
> +	 * See struct drm_i915_gem_create_ext for the rules when dealing with
> +	 * alignment restrictions with I915_MEMORY_CLASS_DEVICE, on devices with
> +	 * minimum page sizes, like DG2.
>  	 */
>  	__u64 offset;
>  
> @@ -3001,11 +3007,56 @@ struct drm_i915_gem_create_ext {
>  	 *

I think a heading here (or a bit earlier) about Page alignment would be
good. Just mark it up as bold or something (since real sphinx headings
won't work).

>  	 * The (page-aligned) allocated size for the object will be returned.
>  	 *
> -	 * Note that for some devices we have might have further minimum
> -	 * page-size restrictions(larger than 4K), like for device local-memory.
> -	 * However in general the final size here should always reflect any
> -	 * rounding up, if for example using the I915_GEM_CREATE_EXT_MEMORY_REGIONS
> -	 * extension to place the object in device local-memory.
> +	 * On discrete platforms, starting from DG2, we have to contend with GTT
> +	 * page size restrictions when dealing with I915_MEMORY_CLASS_DEVICE
> +	 * objects.  Specifically the hardware only supports 64K or larger GTT
> +	 * page sizes for such memory. The kernel will already ensure that all
> +	 * I915_MEMORY_CLASS_DEVICE memory is allocated using 64K or larger page
> +	 * sizes underneath.
> +	 *
> +	 * Note that the returned size here will always reflect any required
> +	 * rounding up done by the kernel, i.e 4K will now become 64K on devices
> +	 * such as DG2. The GTT alignment will also need be at least 64K for
> +	 * such objects.
> +	 *

I think here we should have a "Special DG2 placement restrictions" heading
for clarity

> +	 * Note that due to how the hardware implements 64K GTT page support, we
> +	 * have some further complications:
> +	 *
> +	 *   1.) The entire PDE(which covers a 2M virtual address range), must

Does this really format into a nice list in the html output? Also not both
. and ), usually in text it's just )

> +	 *   contain only 64K PTEs, i.e mixing 4K and 64K PTEs in the same
> +	 *   PDE is forbidden by the hardware.
> +	 *
> +	 *   2.) We still need to support 4K PTEs for I915_MEMORY_CLASS_SYSTEM
> +	 *   objects.
> +	 *
> +	 * To handle the above the kernel implements a memory coloring scheme to
> +	 * prevent userspace from mixing I915_MEMORY_CLASS_DEVICE and
> +	 * I915_MEMORY_CLASS_SYSTEM objects in the same PDE. If the kernel is
> +	 * ever unable to evict the required pages for the given PDE(different
> +	 * color) when inserting the object into the GTT then it will simply
> +	 * fail the request.
> +	 *
> +	 * Since userspace needs to manage the GTT address space themselves,
> +	 * special care is needed to ensure this doesn't happen. The simplest
> +	 * scheme is to simply align and round up all I915_MEMORY_CLASS_DEVICE
> +	 * objects to 2M, which avoids any issues here. At the very least this
> +	 * is likely needed for objects that can be placed in both
> +	 * I915_MEMORY_CLASS_DEVICE and I915_MEMORY_CLASS_SYSTEM, to avoid
> +	 * potential issues when the kernel needs to migrate the object behind
> +	 * the scenes, since that might also involve evicting other objects.
> +	 *
> +	 * To summarise the GTT rules, on platforms like DG2:
> +	 *
> +	 *   1.) All objects that can be placed in I915_MEMORY_CLASS_DEVICE must
> +	 *   have 64K alignment. The kernel will reject this otherwise.
> +	 *
> +	 *   2.) All I915_MEMORY_CLASS_DEVICE objects must never be placed in
> +	 *   the same PDE with other I915_MEMORY_CLASS_SYSTEM objects. The
> +	 *   kernel will reject this otherwise.
> +	 *
> +	 *   3.) Objects that can be placed in both I915_MEMORY_CLASS_DEVICE and
> +	 *   I915_MEMORY_CLASS_SYSTEM should probably be aligned and padded out
> +	 *   to 2M.

I think this is good for the 64k side of things. Ofc the patch needs as
many acks as you can get, so please cc all the userspace people you can
get hold of (Jason, Ken on the mesa side, plus media and compute people
too).

>  	 */
>  	__u64 size;
>  	/**
> -- 
> 2.20.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
