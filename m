Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B90C314C79
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 11:08:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 233436EAB2;
	Tue,  9 Feb 2021 10:08:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B6D16EAAC
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 10:07:58 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id 7so20945020wrz.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Feb 2021 02:07:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=o6btqCtBjDkTkKrltfjWljoE+f3868iQEL2l9rgH7/U=;
 b=KLdo7gxNUxZZq2B0KDYl749joZ28GVqFxb6a6pdHb7gJ6YasgzlSP35k2GlZvGNTba
 e217nSsl562dQT5cCp3wlB43yRvVZTgewNfhE1O/KE+oquxouyBL5P9UWra34L9YOssC
 8eRWh4iVx/K9U3tXdJWhmzUjWDxUqAb3fl0To=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=o6btqCtBjDkTkKrltfjWljoE+f3868iQEL2l9rgH7/U=;
 b=rTm+6EsDukQ8WM1jT8u8yOWktRGG4LIeHH9jgMZbSnYaW01kJ2fgGt4O6L2AiDTJ1p
 EJeeqq3CXtaeFs5XHMeFk1X3A0jGvWEmpvjNOEdngX6dby/uegZ/uzEmYJfwd6LMRa5r
 KgHcaOdYuJGwe8xgpY4Ayl5U1lMJAuHnLokViH965zmou25Q+AUEuconY2+zYI/zCGF9
 5zGuq8jV7DAHlKyxE4ceFwbrHCJ4ptujdB46XXz6RgpGgnsywI+YUhP58DDtPLTp/xtO
 jf4B3hrvg56auEGPicV0qQGIf81UYglON/pXM+mF8TbzPEDz9bL1n1iqmEojBANKjmSx
 wyAA==
X-Gm-Message-State: AOAM531ZvDDaXnEXLiyjkyTEG94Da6ONSmYnq8ArXcOUufiYCZK7t7Y2
 uocQCQ4icysyz8fRG+JxYd0sRQ==
X-Google-Smtp-Source: ABdhPJwX7BBiXGrPMa7oglLjbYxXFAMe33QZwIsdfb6aB5xbnZk5kjQUrebqbPtBbR6KOYRcXeSqpA==
X-Received: by 2002:a5d:6684:: with SMTP id l4mr25201563wru.111.1612865276261; 
 Tue, 09 Feb 2021 02:07:56 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o13sm7484873wrs.45.2021.02.09.02.07.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 02:07:55 -0800 (PST)
Date: Tue, 9 Feb 2021 11:07:53 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <YCJe+dVzmREc25Jw@phenom.ffwll.local>
References: <20210204020400.29628-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210204020400.29628-1-ville.syrjala@linux.intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/vblank: Avoid storing a timestamp for
 the same frame twice
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 04, 2021 at 04:04:00AM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> drm_vblank_restore() exists because certain power saving states
> can clobber the hardware frame counter. The way it does this is
> by guesstimating how many frames were missed purely based on
> the difference between the last stored timestamp vs. a newly
> sampled timestamp.
> =

> If we should call this function before a full frame has
> elapsed since we sampled the last timestamp we would end up
> with a possibly slightly different timestamp value for the
> same frame. Currently we will happily overwrite the already
> stored timestamp for the frame with the new value. This
> could cause userspace to observe two different timestamps
> for the same frame (and the timestamp could even go
> backwards depending on how much error we introduce when
> correcting the timestamp based on the scanout position).
> =

> To avoid that let's not update the stored timestamp unless we're
> also incrementing the sequence counter. We do still want to update
> vblank->last with the freshly sampled hw frame counter value so
> that subsequent vblank irqs/queries can actually use the hw frame
> counter to determine how many frames have elapsed.
> =

> Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Ok, top-posting because lol I got confused. I mixed up the guesstimation
work we do for when we don't have a vblank counter with the precise vblank
timestamp stuff.

I think it'd still be good to maybe lock down/document a bit better the
requirements for drm_crtc_vblank_restore, but I convinced myself now that
your patch looks correct.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/drm_vblank.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> =

> diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
> index 893165eeddf3..e127a7db2088 100644
> --- a/drivers/gpu/drm/drm_vblank.c
> +++ b/drivers/gpu/drm/drm_vblank.c
> @@ -176,6 +176,17 @@ static void store_vblank(struct drm_device *dev, uns=
igned int pipe,
>  =

>  	vblank->last =3D last;
>  =

> +	/*
> +	 * drm_vblank_restore() wants to always update
> +	 * vblank->last since we can't trust the frame counter
> +	 * across power saving states. But we don't want to alter
> +	 * the stored timestamp for the same frame number since
> +	 * that would cause userspace to potentially observe two
> +	 * different timestamps for the same frame.
> +	 */
> +	if (vblank_count_inc =3D=3D 0)
> +		return;
> +
>  	write_seqlock(&vblank->seqlock);
>  	vblank->time =3D t_vblank;
>  	atomic64_add(vblank_count_inc, &vblank->count);
> -- =

> 2.26.2
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
