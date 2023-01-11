Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F29F866666D
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 23:50:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1455A10E82C;
	Wed, 11 Jan 2023 22:50:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6754310E830
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 22:50:20 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 g19-20020a05600c4ed300b003d9eb1dbc0aso10816858wmq.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 14:50:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=+sQGs0x5broQ060QblgxdkojwSBGm6c9FifhWg0Fh6c=;
 b=bCZ6q6Ng37YThePYLToZ7UZCUEVKTGd+x9Jav7Yuj9c44zg/kzbHK6bfbRDkFpqX2h
 AOhC3rMtzc2Mjd7BO7rHu6k35iRDmYm3sK5fTSbxvpa0LihB7BJNCS+SEbDhIFPmJEVs
 9sIFR3IuM+9ogXWM4NUiVFhJCqmAdfcUnaQNo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=+sQGs0x5broQ060QblgxdkojwSBGm6c9FifhWg0Fh6c=;
 b=zY/hnIyK6kGZ9EVMYG5n4YyNR263yRT0D3lVQg+0GuCMveVS6Ee2c97Yj5pPfbVaVS
 6sU7qgcaf7ysnj9yewAJ6ZJ1Cz4fhp8Ydm+wxOovZq2AT0NAJ+L3yb181PBVe6iME/tB
 tm6mSmQhglzaD0bEx9Z1gObS9f6Fr8OXmg2KgNiskGaJECm1q9sqqYa3+rXb8Y1jjTiN
 YjcWTp8wiW5bn/Txy4PVKKuTu1Y/yqJn+u2KDXqqirRVEDQf7eXe45fhRi10LJVNZLru
 kdyVgZB2EdmT/JXpKn+msc+xEj3TlTxXcLUBZXKzJmF4N/IHdnnS6hImIlOneyBUxCfl
 ApdA==
X-Gm-Message-State: AFqh2kpF8ji0O6i8UiQ8wyJiB2+eIbOnsuyP4ODeL4YrAjuSG+lI6L5c
 j3jKsiQ347ZnBn+L4OoEDegWxw==
X-Google-Smtp-Source: AMrXdXspeQJHJT9AVEAbvVxV9Me8z0LaalWZChGsvYCqMMnkIdi3e4pfpWQIJflhA0h2wwXyL1PQWg==
X-Received: by 2002:a05:600c:4fcc:b0:3d9:f91c:4bfc with SMTP id
 o12-20020a05600c4fcc00b003d9f91c4bfcmr5990323wmq.31.1673477418756; 
 Wed, 11 Jan 2023 14:50:18 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 o21-20020a1c7515000000b003d995a704fdsm19544026wmc.33.2023.01.11.14.50.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Jan 2023 14:50:17 -0800 (PST)
Date: Wed, 11 Jan 2023 23:50:15 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: =?iso-8859-1?Q?Ma=EDra?= Canal <mcanal@igalia.com>
Message-ID: <Y789J/xm++6lfad7@phenom.ffwll.local>
References: <20230109105807.18172-1-mcanal@igalia.com>
 <20230109105807.18172-6-mcanal@igalia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230109105807.18172-6-mcanal@igalia.com>
X-Operating-System: Linux phenom 5.19.0-2-amd64 
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/plane: Unexport
 drm_any_plane_has_format()
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
Cc: =?iso-8859-1?Q?Andr=E9?= Almeida <andrealmeid@igalia.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, intel-gfx@lists.freedesktop.org,
 Simon Ser <contact@emersion.fr>, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Melissa Wen <mwen@igalia.com>,
 VMware Graphics Reviewers <linux-graphics-maintainer@vmware.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Zack Rusin <zackr@vmware.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 09, 2023 at 07:58:08AM -0300, Maíra Canal wrote:
> As the format validation is being dealt with exclusively
> inside framebuffer_check(), there is no need to export the
> drm_any_plane_has_format() symbol.
> 
> Therefore, unexport the drm_any_plane_has_format() symbol, reinforcing
> that format validation is being dealt with by the DRM API.
> 
> Signed-off-by: Maíra Canal <mcanal@igalia.com>

Usually we also delete the kerneldoc at that point, since that's mainly
for driver authors and they don't need this anymore. With that

Also please move the function decl to the drm_crtc_internal.h since this
is no longer used outside of drm core/helper code.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/drm_plane.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_plane.c b/drivers/gpu/drm/drm_plane.c
> index 24e7998d1731..67c0ab60c7b6 100644
> --- a/drivers/gpu/drm/drm_plane.c
> +++ b/drivers/gpu/drm/drm_plane.c
> @@ -837,7 +837,6 @@ bool drm_any_plane_has_format(struct drm_device *dev,
>  
>  	return false;
>  }
> -EXPORT_SYMBOL(drm_any_plane_has_format);
>  
>  /*
>   * __setplane_internal - setplane handler for internal callers
> -- 
> 2.39.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
