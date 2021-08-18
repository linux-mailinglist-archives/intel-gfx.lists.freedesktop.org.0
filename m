Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0183F0100
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 11:54:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71CD26E50B;
	Wed, 18 Aug 2021 09:54:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48B436E509
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 09:54:11 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id v2so2196327edq.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 02:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=MPtXzyI+aWgGW1w1RZ9JyxyyzBrxRSHOI0kbju3M/kI=;
 b=imusSzXVu4v1X2vJDfy+jzwcjQI31kQtjoleUwbK/TwiTagwpCN7cmkcg1i4wivlj1
 og3Y9YMYeUMHiOupTamCg2+vVpddktDDZMYvbc5uSjUHf5+H1SVXA0meoFjla42IfEH0
 DAp5mUWefePjLg8AjpJ6WdpuzD7yK747v7flo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=MPtXzyI+aWgGW1w1RZ9JyxyyzBrxRSHOI0kbju3M/kI=;
 b=Ls76cZrWZiZrT3f02xCLhnQuG/zQxvViZCbTZM4fwsfX0dPfEai92/ZH/0SijZXTPl
 5FO4GcIQNRsM/qVnWgn4YwcECvwBMNTlF67/vuR4AKxrOKIa5ri2MUoB2wkhcZ394AEb
 /8G1IhE1NGDYa+Fh3IltTHS3m8LP/ZtMYidllDvKY3Usc/7wjiWOnAWz8ogWsM80zDE3
 ZJ7eFbomIG9iDD47PrrbvNe/mFjM53usURLrrBjU4ROieZtZYH2J9ycZCSnfJGQQS2+2
 ydnfDM7lJKFFHg80f374dnXjyZF4g3+T8osAqwe8avH4V0bY6Efo7l7qOYMVVW6ZjCgy
 vdhQ==
X-Gm-Message-State: AOAM531LFFgxB/eXna+EGwRxxEVFeUoK3VYwJfZi6CVTWkbh2qTZ11jd
 n7elu6CRpvBn5lUKWvrpdt5u2A==
X-Google-Smtp-Source: ABdhPJx4GNiSGSQs5+4IIpzV0msHvFurszbvl+nDf/kYrv/cHGyLh0tAGQzSSWpEx7/mGZOytrEZfw==
X-Received: by 2002:a05:6402:37b:: with SMTP id
 s27mr9150392edw.55.1629280449878; 
 Wed, 18 Aug 2021 02:54:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l16sm1807197eje.67.2021.08.18.02.54.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Aug 2021 02:54:09 -0700 (PDT)
Date: Wed, 18 Aug 2021 11:54:07 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel.vetter@intel.com>,
 Rob Clark <robdclark@gmail.com>, Deepak Rawat <drawat@vmware.com>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <YRzYv6lj5k3KOrPC@phenom.ffwll.local>
References: <20210817232604.160029-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210817232604.160029-1-jose.souza@intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/damage_helper: Fix handling of cursor
 dirty buffers
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

On Tue, Aug 17, 2021 at 04:26:04PM -0700, José Roberto de Souza wrote:
> Cursors don't have a framebuffer so the fb comparisson was always
> failing and atomic state was being committed without any plane state.
> 
> So here checking if objects match when checking cursors.

This looks extremely backwards ... what exactly is this fixing? If this
isn't based on a real world compositor usage but some igt, then I'd say
the igt here is very wrong.
-Daniel

> Fixes: b9fc5e01d1ce ("drm: Add helper to implement legacy dirtyfb")
> Cc: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Rob Clark <robdclark@gmail.com>
> Cc: Deepak Rawat <drawat@vmware.com>
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/drm_damage_helper.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_damage_helper.c b/drivers/gpu/drm/drm_damage_helper.c
> index 8eeff0c7bdd47..595187d97c131 100644
> --- a/drivers/gpu/drm/drm_damage_helper.c
> +++ b/drivers/gpu/drm/drm_damage_helper.c
> @@ -157,12 +157,18 @@ int drm_atomic_helper_dirtyfb(struct drm_framebuffer *fb,
>  retry:
>  	drm_for_each_plane(plane, fb->dev) {
>  		struct drm_plane_state *plane_state;
> +		bool match;
>  
>  		ret = drm_modeset_lock(&plane->mutex, state->acquire_ctx);
>  		if (ret)
>  			goto out;
>  
> -		if (plane->state->fb != fb) {
> +		match = plane->state->fb == fb;
> +		/* Check if objs match to handle dirty buffers of cursors */
> +		if (plane->type == DRM_PLANE_TYPE_CURSOR && plane->state->fb)
> +			match |= fb->obj[0] == plane->state->fb->obj[0];
> +
> +		if (!match) {
>  			drm_modeset_unlock(&plane->mutex);
>  			continue;
>  		}
> -- 
> 2.32.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
