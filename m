Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABBE4AD8FF
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 14:16:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E7B510E3B2;
	Tue,  8 Feb 2022 13:16:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B036710E32E
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 13:16:33 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id co28so10297583edb.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Feb 2022 05:16:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=f64ILGGTSPvkUq4wQOkLsCvrb4ZuGkYGc811scBzO5Y=;
 b=T8Wb7BXXP67fgoD4bmk/761gugvMGuHrlOqeOKgdXGRRGA8Hpr66Q0K4mgEPRIcWyJ
 99SM06lNY8yUsYRqseBBtnr/2Sg3IAK1wn9WLmX2y16UBqAGvFB1+36HyV8gEJWjEYQo
 IE4rPfrQyH9DC0prS1LerHepjG3lHs/N7aLXg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=f64ILGGTSPvkUq4wQOkLsCvrb4ZuGkYGc811scBzO5Y=;
 b=XfehgGe93MFIofs4O0kbwWqoNj7olgLbiL2zm4AGvTw+eRUQ+QZKOVWDEg/bDWd82M
 JX92kSxS1TZiiUsgw0Rtmi1af9/Ep9jfKX1huV8OHwN36U/y1ZzwovMDnquZfaLZr477
 MQ4x/4ZxUde6ntCmXel98333/U6NcEAAA815RVmgPBrfiGRKDiIK5s4UDoUpf5wFjUGf
 PI0sZDOlNTZgxmwh1LcBD7TjqMHGD0shAgW8kycNsc5bFzB2+vbi2jY3jSW1xiGgOjYl
 KmwA0MzULVYK26d2Tt7t6j69eUsA/bv3hKqvlmE3ohqddTqoPsDQZX61RaxXtfAuU/E1
 CSQg==
X-Gm-Message-State: AOAM5314NG3awW3NjuxA+V1Fdos1hAoQVRhTIyhWo8xSG0BF0XKv4NRR
 TIT7hGzQzvD76QB6rhAdUcobwQ==
X-Google-Smtp-Source: ABdhPJx2wnD0IuUx8PbRWWTEInm+5xp2l/xeHn+P1ddjGej4NDlto9txCIoI1cAmzs93eMDRYNOmEA==
X-Received: by 2002:a05:6402:5110:: with SMTP id
 m16mr4441191edd.325.1644326191998; 
 Tue, 08 Feb 2022 05:16:31 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id g19sm2001960ejd.62.2022.02.08.05.16.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 05:16:31 -0800 (PST)
Date: Tue, 8 Feb 2022 14:16:29 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <YgJtLSUr61S1Dxvr@phenom.ffwll.local>
References: <20220208113815.314048-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220208113815.314048-1-matthew.auld@intel.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/buddy: fixup potential uaf
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
Cc: intel-gfx@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 dri-devel@lists.freedesktop.org, Arunpravin <Arunpravin.PaneerSelvam@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 08, 2022 at 11:38:15AM +0000, Matthew Auld wrote:
> If we are unlucky and somehow can't allocate enough memory when
> splitting blocks, where we temporarily end up with the given block and
> its buddy on the respective free list, then we need to ensure we delete
> both blocks, and not just the buddy, before potentially freeing them.
> 
> v2: rebase on i915_buddy removal
> 
> Fixes: 14d1b9a6247c ("drm/i915: buddy allocator")
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Arunpravin <Arunpravin.PaneerSelvam@amd.com>
> Cc: Christian K�nig <christian.koenig@amd.com>

btw wrt fixups, can you pls include the drm_buddy.c kerneldoc into
Documentation/gpu/drm-mm.rst? That seems to be missing. Also probably some
kerneldoc to polish to make it warning free and complete.
-Daniel

> ---
>  drivers/gpu/drm/drm_buddy.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_buddy.c b/drivers/gpu/drm/drm_buddy.c
> index d60878bc9c20..2bf75e8abfaa 100644
> --- a/drivers/gpu/drm/drm_buddy.c
> +++ b/drivers/gpu/drm/drm_buddy.c
> @@ -333,8 +333,10 @@ drm_buddy_alloc_blocks(struct drm_buddy *mm, unsigned int order)
>  	return block;
>  
>  out_free:
> -	if (i != order)
> +	if (i != order) {
> +		list_del(&block->link);
>  		__drm_buddy_free(mm, block);
> +	}
>  	return ERR_PTR(err);
>  }
>  EXPORT_SYMBOL(drm_buddy_alloc_blocks);
> @@ -452,8 +454,10 @@ int drm_buddy_alloc_range(struct drm_buddy *mm,
>  	buddy = get_buddy(block);
>  	if (buddy &&
>  	    (drm_buddy_block_is_free(block) &&
> -	     drm_buddy_block_is_free(buddy)))
> +	     drm_buddy_block_is_free(buddy))) {
> +		list_del(&block->link);
>  		__drm_buddy_free(mm, block);
> +	}
>  
>  err_free:
>  	drm_buddy_free_list(mm, &allocated);
> -- 
> 2.34.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
