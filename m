Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0762C42BF66
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 14:03:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03F3C89B18;
	Wed, 13 Oct 2021 12:03:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B74B46E0DB
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 12:03:03 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id r18so7533804wrg.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 05:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=tLMtiaHO43y3nZZshtTm1xT7kRLw5WpBRX2eSuhKUj0=;
 b=kmZj81uy861bpMjBye/XcqKh/h82Uru7HCl1UBwZFDOfLWJGjWyTgPcN2aeCNeYBiX
 PSuIDKfNf4n9hisq0MELwZvUOMD8lADDtBH2rvUIPR0NO+ccxQ4z2Th6hA0x3zQHAjTp
 uhcJRTT4XiugY7PmzbCR8/6rNTOz4CH595lQo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=tLMtiaHO43y3nZZshtTm1xT7kRLw5WpBRX2eSuhKUj0=;
 b=QkL5SlvlCUG5pl3IDHlgFNHs3TmbYn2omMD/3QH42tgHBFdlFL2GIjOUN7NVXJNM9b
 H6AyLDOGOjoTW50en+oRcIjxymz9H4il2qzk5R2CTY1XmuAmVxDO83OeiZmjMuACEX5q
 814jkCY1RjuN6vqwkJ9xvYNzycH2wtkXTYxrCDW2Bx3+5o/S+2rqHhBshWRfBa4dHvTk
 YeGnhTv4iFBbKNesNDF3aImCHmugzweogD1r0zu3hY400weOwao2UWgm9ylNBrI6oRwl
 kCBVeqdgKUz3zyY1DyJZbM2x82QzzKhzF7Cl7yFKBRWFj+XRvOX7axvipMBRcbdOzu9Q
 qf0w==
X-Gm-Message-State: AOAM5307rN0aHHXk8E5ZtuMMe/uD3+MMPOQAjAhenmtdQ9RI7zfdwm36
 Ib60ijPrUx7DT33g2rBG27fFzQ==
X-Google-Smtp-Source: ABdhPJx3MXAtTuNLmxeCU0+cNNDo/Nq15XI7ieE88hvub+RRcIIIJu/idT8/5brRjKh4b79q5KKBLg==
X-Received: by 2002:a1c:7e87:: with SMTP id z129mr12089968wmc.75.1634126582210; 
 Wed, 13 Oct 2021 05:03:02 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id w11sm4949814wmc.44.2021.10.13.05.03.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 05:03:01 -0700 (PDT)
Date: Wed, 13 Oct 2021 14:02:59 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Gleixner <tglx@linutronix.de>
Message-ID: <YWbK8wSxNjVu9OLm@phenom.ffwll.local>
References: <20211005065151.828922-1-bigeasy@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211005065151.828922-1-bigeasy@linutronix.de>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [RFC PATCH] drm: Increase DRM_OBJECT_MAX_PROPERTY
 by 18.
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

On Tue, Oct 05, 2021 at 08:51:51AM +0200, Sebastian Andrzej Siewior wrote:
> The warning poped up, it says it increase it by the number of occurrence.
> I saw it 18 times so here it is.
> It started to up since commit
>    2f425cf5242a0 ("drm: Fix oops in damage self-tests by mocking damage property")
> 
> Increase DRM_OBJECT_MAX_PROPERTY by 18.
> 
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

Which driver where? Whomever added that into upstream should also have
realized this (things will just not work) and include it in there. So if
things are tested correctly this should be part of a larger series to add
these 18 props somewhere.

Also maybe we should just dynamically allocate this array if people have
this many properties on their objects.
-Daniel

> ---
> 
> I have no idea whether this is correct or just a symptom of another
> problem. This has been observed with i915 and full debug.
> 
>  include/drm/drm_mode_object.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/drm/drm_mode_object.h b/include/drm/drm_mode_object.h
> index c34a3e8030e12..1e5399e47c3a5 100644
> --- a/include/drm/drm_mode_object.h
> +++ b/include/drm/drm_mode_object.h
> @@ -60,7 +60,7 @@ struct drm_mode_object {
>  	void (*free_cb)(struct kref *kref);
>  };
>  
> -#define DRM_OBJECT_MAX_PROPERTY 24
> +#define DRM_OBJECT_MAX_PROPERTY 42
>  /**
>   * struct drm_object_properties - property tracking for &drm_mode_object
>   */
> -- 
> 2.33.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
