Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E25A7387495
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 11:04:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B3076EADC;
	Tue, 18 May 2021 09:03:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 255826E069
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 May 2021 09:03:55 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id 62so3959326wmb.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 May 2021 02:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=iDhIGJc3JRfGZycWdpODaa4apRb4vEjSG65+Ph1010I=;
 b=R4xpmkwZeVK19sXXd6Rh0UBUgJxcA8ePs24++LIc6d6SrIy1cjiAclWQ6wTbeOG4nc
 cWHKR8QhNvkggaItvX1yHcpYsDHosop7M2x7pBqPMIXCdABds6TjIWKVHEjHUpG/o4rH
 fZy647FPIxvGupm75RDdAdOo3HG50QBqm65Wg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=iDhIGJc3JRfGZycWdpODaa4apRb4vEjSG65+Ph1010I=;
 b=faS9buFpmhTY1qQtvGNgZKIlhnTzEhlv2C7TmbhSSebldqx5BNrP5CIwI5pnmyZ89K
 LsQyIl4ZPRhKMa1oa3K6p/PxHcYcHT8CbrD4ENYqF2rEiCq6wEFNI6Wm7iDwrG2+1FPJ
 u5w5ZCs8gnkqVA1dEU1yZWqFPVC+NdQ7EEK4UXAkiPzdKgqRjuM39pBZ5o7+ilNwhK6H
 AZrR7pbF+HMNRTyk80r14w6NGhBQsJxeShbS1ZIXX2HhSnmRgh0nEsku0LZ3iijO8exF
 UYZVcYS31dMTTpNFTGEZ7GDTYe/DM8N2cRcbQjfo0Kaw18hr/kM6rCAoBohEIaqV0nIX
 gJEg==
X-Gm-Message-State: AOAM532ZtF2dIA6QbpVOnD0dLjnFCk3ZQa5LiICmMtxCvGHiGalGnsun
 /Xs31kvfgJwrBuS/stfjdKBqxg==
X-Google-Smtp-Source: ABdhPJzKAGHysiGnnTl//jQJkxHO/4BfinDRYqg8WW6OPbG0N0SbBUItCwibducFI2eDSOND8OjeWQ==
X-Received: by 2002:a7b:cb04:: with SMTP id u4mr1521724wmj.146.1621328633742; 
 Tue, 18 May 2021 02:03:53 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id c7sm1915054wml.33.2021.05.18.02.03.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 May 2021 02:03:53 -0700 (PDT)
Date: Tue, 18 May 2021 11:03:51 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <YKOC9/Nn9i9fpgHc@phenom.ffwll.local>
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-5-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210518082701.997251-5-thomas.hellstrom@linux.intel.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH v2 04/15] drm/ttm: Export functions to
 initialize and finalize the ttm range manager standalone
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
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 18, 2021 at 10:26:50AM +0200, Thomas Hellstr=F6m wrote:
> i915 mock selftests are run without the device set up. In order to be able
> to run the region related mock selftests, export functions in order for t=
he
> TTM range manager to be set up without a device to attach it to.
> =

> Cc: Christian K=F6nig <christian.koenig@amd.com>
> Signed-off-by: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>
> ---
>  drivers/gpu/drm/ttm/ttm_range_manager.c | 55 +++++++++++++++++--------
>  include/drm/ttm/ttm_bo_driver.h         | 23 +++++++++++
>  2 files changed, 61 insertions(+), 17 deletions(-)
> =

> diff --git a/drivers/gpu/drm/ttm/ttm_range_manager.c b/drivers/gpu/drm/tt=
m/ttm_range_manager.c
> index b9d5da6e6a81..6957dfb0cf5a 100644
> --- a/drivers/gpu/drm/ttm/ttm_range_manager.c
> +++ b/drivers/gpu/drm/ttm/ttm_range_manager.c
> @@ -125,55 +125,76 @@ static const struct ttm_resource_manager_func ttm_r=
ange_manager_func =3D {
>  	.debug =3D ttm_range_man_debug
>  };
>  =

> -int ttm_range_man_init(struct ttm_device *bdev,
> -		       unsigned type, bool use_tt,
> -		       unsigned long p_size)
> +struct ttm_resource_manager *
> +ttm_range_man_init_standalone(unsigned long size, bool use_tt)
>  {
>  	struct ttm_resource_manager *man;
>  	struct ttm_range_manager *rman;
>  =

>  	rman =3D kzalloc(sizeof(*rman), GFP_KERNEL);
>  	if (!rman)
> -		return -ENOMEM;
> +		return ERR_PTR(-ENOMEM);
>  =

>  	man =3D &rman->manager;
>  	man->use_tt =3D use_tt;
>  =

>  	man->func =3D &ttm_range_manager_func;
>  =

> -	ttm_resource_manager_init(man, p_size);
> +	ttm_resource_manager_init(man, size);
>  =

> -	drm_mm_init(&rman->mm, 0, p_size);
> +	drm_mm_init(&rman->mm, 0, size);
>  	spin_lock_init(&rman->lock);
>  =

> -	ttm_set_driver_manager(bdev, type, &rman->manager);
> +	return man;
> +}
> +EXPORT_SYMBOL(ttm_range_man_init_standalone);
> +
> +int ttm_range_man_init(struct ttm_device *bdev,
> +		       unsigned int type, bool use_tt,
> +		       unsigned long p_size)
> +{
> +	struct ttm_resource_manager *man;
> +
> +	man =3D ttm_range_man_init_standalone(p_size, use_tt);
> +	if (IS_ERR(man))
> +		return PTR_ERR(man);
> +
>  	ttm_resource_manager_set_used(man, true);
> +	ttm_set_driver_manager(bdev, type, man);
> +
>  	return 0;
>  }
>  EXPORT_SYMBOL(ttm_range_man_init);
>  =

> +void ttm_range_man_fini_standalone(struct ttm_resource_manager *man)
> +{
> +	struct ttm_range_manager *rman =3D to_range_manager(man);
> +	struct drm_mm *mm =3D &rman->mm;
> +
> +	spin_lock(&rman->lock);
> +	drm_mm_clean(mm);
> +	drm_mm_takedown(mm);
> +	spin_unlock(&rman->lock);
> +
> +	ttm_resource_manager_cleanup(man);
> +	kfree(rman);
> +}
> +EXPORT_SYMBOL(ttm_range_man_fini_standalone);
> +
>  int ttm_range_man_fini(struct ttm_device *bdev,
>  		       unsigned type)
>  {
>  	struct ttm_resource_manager *man =3D ttm_manager_type(bdev, type);
> -	struct ttm_range_manager *rman =3D to_range_manager(man);
> -	struct drm_mm *mm =3D &rman->mm;
>  	int ret;
>  =

>  	ttm_resource_manager_set_used(man, false);
> -
>  	ret =3D ttm_resource_manager_evict_all(bdev, man);
>  	if (ret)
>  		return ret;
>  =

> -	spin_lock(&rman->lock);
> -	drm_mm_clean(mm);
> -	drm_mm_takedown(mm);
> -	spin_unlock(&rman->lock);
> -
> -	ttm_resource_manager_cleanup(man);
>  	ttm_set_driver_manager(bdev, type, NULL);
> -	kfree(rman);
> +	ttm_range_man_fini_standalone(man);
> +
>  	return 0;
>  }
>  EXPORT_SYMBOL(ttm_range_man_fini);
> diff --git a/include/drm/ttm/ttm_bo_driver.h b/include/drm/ttm/ttm_bo_dri=
ver.h
> index dbccac957f8f..734b1712ea72 100644
> --- a/include/drm/ttm/ttm_bo_driver.h
> +++ b/include/drm/ttm/ttm_bo_driver.h
> @@ -321,6 +321,20 @@ int ttm_range_man_init(struct ttm_device *bdev,
>  		       unsigned type, bool use_tt,
>  		       unsigned long p_size);
>  =

> +/**
> + * ttm_range_man_init_standalone - Initialize a ttm range manager without
> + * device interaction.
> + * @size: Size of the area to be managed in pages.
> + * @use_tt: The memory type requires tt backing.
> + *
> + * This function is intended for selftests. It initializes a range manag=
er
> + * without any device interaction.
> + *
> + * Return: pointer to a range manager on success. Error pointer on failu=
re.
> + */

Kerneldoc is great and I'm happy you're updating them (Christian's not so
much good for this), but I think would be good to go one step further with
a prep patch:

- Make sure ttm_bo_driver.h is appropriately included in
  Documentation/gpu/drm-mm.rst.

- Fix up any kerneldoc fallout. Specifically I think common usage at least
  is that for non-inline functions, the kerneldoc is in the .c file, not
  in the headers.

But also this might be way too much work since ttm hasn't been properly
kerneldoc-ified, so maybe later.
-Daniel

> +struct ttm_resource_manager *
> +ttm_range_man_init_standalone(unsigned long size, bool use_tt);
> +
>  /**
>   * ttm_range_man_fini
>   *
> @@ -332,4 +346,13 @@ int ttm_range_man_init(struct ttm_device *bdev,
>  int ttm_range_man_fini(struct ttm_device *bdev,
>  		       unsigned type);
>  =

> +/**
> + * ttm_range_man_fini_standalone
> + * @man: The range manager
> + *
> + * Tear down a range manager initialized with
> + * ttm_range_manager_init_standalone().
> + */
> +void ttm_range_man_fini_standalone(struct ttm_resource_manager *man);
> +
>  #endif
> -- =

> 2.31.1
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
