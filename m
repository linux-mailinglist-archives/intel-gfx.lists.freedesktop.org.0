Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADF45AFC28
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 08:10:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A461810E32F;
	Wed,  7 Sep 2022 06:09:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E891C10E32F
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 06:09:50 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id fg1so5889973ejc.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 Sep 2022 23:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date; bh=aHLnGYDFyf002uP87dLW7T4DlcNjggm7WzOBlYUHesM=;
 b=GYPPKJo4fKfKSPYIOWUbod1cc/fB+KpTWhNhVJlIsS4asZ3qAyGTIoDRxrFaQ+UyyI
 0FiEqDMS1NzZMTZIrLLdHa9s+fneFH6yuumFd2SsH/JuHVlz7PgFwUDkM8Sy0CpQTeRv
 uCw6qbXGUhD2sVDH57m5QgMxLAbjfet1rWc3o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date;
 bh=aHLnGYDFyf002uP87dLW7T4DlcNjggm7WzOBlYUHesM=;
 b=nrcwehCxHciVjM2sp6cOTu5A29FH5sab3+n1mBpR7w0zJMVxmjKCxGkHSFvWMQgTrN
 vPeu/IEW9VTa8xZsveT1juhkLMqQW/UIwyZ8XU222AM3QeU4CtUjeNtFc+X6PvH4tbI3
 b6Wp1IixZ1Z8Ggyl0zbyEKYETFVe3Oys+usJSHAo+7AyNUEQXYButO589HhPtMR9WlfD
 wxpzeZwg/24nbKk+kAEyII3U44Q3rpEHGJpFgEXwrBAmplVfq6sah3UcvNOi3CR2Mag8
 9yT1OuYEt+RoIBQfEjPxCrVSOxNeJcxYnrJ3tYVVcHGfpLvVB+wNkt2StN2ZZDSA0PXe
 6jOA==
X-Gm-Message-State: ACgBeo0KWwQ9BXmcabBuYkUM/clV5agGTci6hf+5sU/HthGsaZxCTwsc
 PJTQ+54UPkTWt645Znhz9F/kMg==
X-Google-Smtp-Source: AA6agR7J0T3fKKGB0sCAbHDAHkXdAkQ27Aw/uDDAPCl1dXFnwMheZyZKs981ydBswzyfqDEeWSdjIQ==
X-Received: by 2002:a17:907:7da8:b0:730:fdad:4af8 with SMTP id
 oz40-20020a1709077da800b00730fdad4af8mr1275966ejc.401.1662530989455; 
 Tue, 06 Sep 2022 23:09:49 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 ez19-20020a056402451300b0043df042bfc6sm9770073edb.47.2022.09.06.23.09.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Sep 2022 23:09:48 -0700 (PDT)
Date: Wed, 7 Sep 2022 08:09:46 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jim Cromie <jim.cromie@gmail.com>
Message-ID: <Yxg1qgrTIKxcJ7HE@phenom.ffwll.local>
Mail-Followup-To: Jim Cromie <jim.cromie@gmail.com>, jbaron@akamai.com,
 gregkh@linuxfoundation.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 seanpaul@chromium.org, robdclark@gmail.com,
 linux@rasmusvillemoes.dk, joe@perches.com
References: <20220904214134.408619-1-jim.cromie@gmail.com>
 <20220904214134.408619-23-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220904214134.408619-23-jim.cromie@gmail.com>
X-Operating-System: Linux phenom 5.18.0-4-amd64 
Subject: Re: [Intel-gfx] [PATCH v6 22/57] drm_print: condense enum
 drm_debug_category
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
Cc: gregkh@linuxfoundation.org, intel-gfx@lists.freedesktop.org,
 linux@rasmusvillemoes.dk, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, jbaron@akamai.com, seanpaul@chromium.org,
 dri-devel@lists.freedesktop.org, daniel.vetter@ffwll.ch, joe@perches.com,
 intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Sep 04, 2022 at 03:40:59PM -0600, Jim Cromie wrote:
> enum drm_debug_category has 10 categories, but is initialized with
> bitmasks which require 10 bits of underlying storage.  By using
> natural enumeration, and moving the BIT(cat) into drm_debug_enabled(),
> the enum fits in 4 bits, allowing the category to be represented
> directly in pr_debug callsites, via the ddebug.class_id field.
> 
> While this slightly pessimizes the bit-test in drm_debug_enabled(),
> using dyndbg with JUMP_LABEL will avoid the function entirely.
> 
> NOTE: this change forecloses the possibility of doing:
> 
>   drm_dbg(DRM_UT_CORE|DRM_UT_KMS, "weird 2-cat experiment")
> 
> but thats already strongly implied by the use of the enum itself; its
> not a normal enum if it can be 2 values simultaneously.
> 
> Signed-off-by: Jim Cromie <jim.cromie@gmail.com>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

I guess this would also be a good patch to apply already, so we reduce the
patch set size somewhat?
-Daniel

> ---
>  include/drm/drm_print.h | 22 +++++++++++-----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
> index 22fabdeed297..b3b470440e46 100644
> --- a/include/drm/drm_print.h
> +++ b/include/drm/drm_print.h
> @@ -279,49 +279,49 @@ enum drm_debug_category {
>  	 * @DRM_UT_CORE: Used in the generic drm code: drm_ioctl.c, drm_mm.c,
>  	 * drm_memory.c, ...
>  	 */
> -	DRM_UT_CORE		= 0x01,
> +	DRM_UT_CORE,
>  	/**
>  	 * @DRM_UT_DRIVER: Used in the vendor specific part of the driver: i915,
>  	 * radeon, ... macro.
>  	 */
> -	DRM_UT_DRIVER		= 0x02,
> +	DRM_UT_DRIVER,
>  	/**
>  	 * @DRM_UT_KMS: Used in the modesetting code.
>  	 */
> -	DRM_UT_KMS		= 0x04,
> +	DRM_UT_KMS,
>  	/**
>  	 * @DRM_UT_PRIME: Used in the prime code.
>  	 */
> -	DRM_UT_PRIME		= 0x08,
> +	DRM_UT_PRIME,
>  	/**
>  	 * @DRM_UT_ATOMIC: Used in the atomic code.
>  	 */
> -	DRM_UT_ATOMIC		= 0x10,
> +	DRM_UT_ATOMIC,
>  	/**
>  	 * @DRM_UT_VBL: Used for verbose debug message in the vblank code.
>  	 */
> -	DRM_UT_VBL		= 0x20,
> +	DRM_UT_VBL,
>  	/**
>  	 * @DRM_UT_STATE: Used for verbose atomic state debugging.
>  	 */
> -	DRM_UT_STATE		= 0x40,
> +	DRM_UT_STATE,
>  	/**
>  	 * @DRM_UT_LEASE: Used in the lease code.
>  	 */
> -	DRM_UT_LEASE		= 0x80,
> +	DRM_UT_LEASE,
>  	/**
>  	 * @DRM_UT_DP: Used in the DP code.
>  	 */
> -	DRM_UT_DP		= 0x100,
> +	DRM_UT_DP,
>  	/**
>  	 * @DRM_UT_DRMRES: Used in the drm managed resources code.
>  	 */
> -	DRM_UT_DRMRES		= 0x200,
> +	DRM_UT_DRMRES
>  };
>  
>  static inline bool drm_debug_enabled(enum drm_debug_category category)
>  {
> -	return unlikely(__drm_debug & category);
> +	return unlikely(__drm_debug & BIT(category));
>  }
>  
>  /*
> -- 
> 2.37.2
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
