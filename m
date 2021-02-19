Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D0631FBAC
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Feb 2021 16:08:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED20F6EB4B;
	Fri, 19 Feb 2021 15:08:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1E5A6EB4B
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Feb 2021 15:08:25 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id n8so8961059wrm.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Feb 2021 07:08:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=AVaHiqCBWpa3sn53CnUC3gnynkEvYUvLWFAAgIl96NE=;
 b=Z+4J1OdJEXgdIH8kdfnwpNHN1F0uXJVic9JS1PHaFghcWMrxj1n8VxiZM43pKFfA0h
 4CozxdeuHTasp1kxqj58Lls8+CsqdgEaTpXfSGbHrwrFAmT9bRSypAPgqLA7A39+arr0
 pckX7czk12soI/eGl9jCzUUo6WD22TFu0QNPU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=AVaHiqCBWpa3sn53CnUC3gnynkEvYUvLWFAAgIl96NE=;
 b=sswngNyYJjrf4HZh+SkS62yQQ3idUc4IFSYP53i/suspw8bywsMgU33YM6CYlkS9pS
 XwnVoRd2npmL34PX4JJLG9lDvn9VdiGVdLdl0yI2v6ga7FOa405498zNCqsGeEPOPWpQ
 eqVWVNwCeLr8KttY17ssrLR5ru/Y7Ek0Q3Wy6E+z2P7RGXHI3/PSwnVRTaMVzVLD7CkA
 FmHF2mipJ5gbL/4vObfsxvhTwha2lfSgb2FNnWOBujItLaDBBhjOnV2J40mTuh/EvoVv
 JAW0mPtwRoi2ushRuw5VkWbaS790YJosxc3cacSAYgs3eRZj8O9eFzwXeNFu+6DN7sRT
 wBfw==
X-Gm-Message-State: AOAM530p/YgpC9fEhZ+F77+dOC8sBRcn8SMgMuS4+2xPa6BOfPNyLVSU
 I2YrjQH2W6h6pLv0IDY6k2BKFQ==
X-Google-Smtp-Source: ABdhPJxNglxC03Ek4RlRlwQpI6ethPZvO1D1OpnfB/FFRQJKNjzIpGzLrzjJpRwfX0ZngxKtc23j4A==
X-Received: by 2002:adf:fb03:: with SMTP id c3mr9630594wrr.395.1613747304064; 
 Fri, 19 Feb 2021 07:08:24 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 36sm14140232wrj.97.2021.02.19.07.08.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Feb 2021 07:08:23 -0800 (PST)
Date: Fri, 19 Feb 2021 16:08:09 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <YC/UWTfV6tFSwluS@phenom.ffwll.local>
References: <20210204020400.29628-1-ville.syrjala@linux.intel.com>
 <20210218160305.16711-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210218160305.16711-1-ville.syrjala@linux.intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH v2] drm/vblank: Do not store a new vblank
 timestamp in drm_vblank_restore()
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

On Thu, Feb 18, 2021 at 06:03:05PM +0200, Ville Syrjala wrote:
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

> To avoid that let's not update the stored timestamp at all,
> and instead we just fix up the last recorded hw vblank counter
> value such that the already stored timestamp/seq number will
> match. Thus the next time a vblank irq happens it will calculate
> the correct diff between the current and stored hw vblank counter
> values.
> =

> Sidenote: Another possible idea that came to mind would be to
> do this correction only if the power really was removed since
> the last time we sampled the hw frame counter. But to do that
> we would need a robust way to detect when it has occurred. Some
> possibilities could involve some kind of hardare power well
> transition counter, or potentially we could store a magic value
> in a scratch register that lives in the same power well. But
> I'm not sure either of those exist, so would need an actual
> investigation to find out. All of that is very hardware specific
> of course, so would have to be done in the driver code.
> =

> Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

For testing, there's nothing else than hsw psr that needs this, or that's
just the box you have locally?
-Daniel

> ---
>  drivers/gpu/drm/drm_vblank.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
> index 2bd989688eae..3417e1ac7918 100644
> --- a/drivers/gpu/drm/drm_vblank.c
> +++ b/drivers/gpu/drm/drm_vblank.c
> @@ -1478,6 +1478,7 @@ static void drm_vblank_restore(struct drm_device *d=
ev, unsigned int pipe)
>  	u64 diff_ns;
>  	u32 cur_vblank, diff =3D 1;
>  	int count =3D DRM_TIMESTAMP_MAXRETRIES;
> +	u32 max_vblank_count =3D drm_max_vblank_count(dev, pipe);
>  =

>  	if (drm_WARN_ON(dev, pipe >=3D dev->num_crtcs))
>  		return;
> @@ -1504,7 +1505,7 @@ static void drm_vblank_restore(struct drm_device *d=
ev, unsigned int pipe)
>  	drm_dbg_vbl(dev,
>  		    "missed %d vblanks in %lld ns, frame duration=3D%d ns, hw_diff=3D%=
d\n",
>  		    diff, diff_ns, framedur_ns, cur_vblank - vblank->last);
> -	store_vblank(dev, pipe, diff, t_vblank, cur_vblank);
> +	vblank->last =3D (cur_vblank - diff) & max_vblank_count;
>  }
>  =

>  /**
> -- =

> 2.26.2
> =

> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
