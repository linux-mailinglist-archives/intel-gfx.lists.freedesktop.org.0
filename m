Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D5D14BCAF
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 16:18:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8479D6E094;
	Tue, 28 Jan 2020 15:18:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 631066E0AF
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 15:18:02 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id b2so2989752wma.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 07:18:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=+ugay+ke6KBm4Js6RYD8fb7xRAwFXwf7jRAw1vE1c5M=;
 b=GvMS5o2iVBlC7YM4SIPG+klEk+VpltwHFwIBSIBx6vFLWYLKHlPXRpN4064pPRZGzU
 /BqMEi/j04uUnDSYWT3rsEW87uYM8Q5dwmK5tp/OxcGY5yMTGHkutrxGbpYjUk1mVCoj
 p5Jn5fpEi/hu/LqCIn0qyu+ixiLbMRQzZQSIM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=+ugay+ke6KBm4Js6RYD8fb7xRAwFXwf7jRAw1vE1c5M=;
 b=s8zg09bAQqVM5+cc+npTfYa7NWu0l1M37O9VWvojCw+x5w/5B5vCvB0xKeIEQ8scng
 QChqUXbEVINnHApTZ1HoWbyRCKHmvbAyY7D+Dz4RW5qQtemRnHo1QpIpyTk4Y6k4JWtj
 +wUkCFZBSExd6bqRz8f4H2M5sEPczAtjS9hrj8vRUACr/mdrwl1uRFetlWdCTlD5ngFi
 sUotedFNtS+xxFCM4ObvvCA4qkvVVD3+HOvUlVS94Bi7JVumrluMLpu/xmhwXrfWPi+2
 QEteqSt6RiAVdJUO1xT7O1iseLndoRUuxP3SOiwnmv8dZGZd0R3fuHf74rRFgv9RD2IP
 e9Kg==
X-Gm-Message-State: APjAAAVrBh1G8etWVh5wNdsLyjq9hQyfqhW4KfaDYwMqtgq21fb5vLjc
 FFpXcN5ViikQ1IuJuW3xKrmwl6AVXYYD2Q==
X-Google-Smtp-Source: APXvYqwMj+YC049OBVOXAJwf4CwpN+iHBV4IJgpa8HZdtxAje5fXuw3dxAE63tjJ+sjvhlJleN5noQ==
X-Received: by 2002:a7b:cf01:: with SMTP id l1mr5579039wmg.86.1580224681002;
 Tue, 28 Jan 2020 07:18:01 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id i8sm26182035wro.47.2020.01.28.07.17.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jan 2020 07:18:00 -0800 (PST)
Date: Tue, 28 Jan 2020 16:17:58 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200128151758.GI43062@phenom.ffwll.local>
References: <20200124200231.10517-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200124200231.10517-1-ville.syrjala@linux.intel.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/edid: Check the number of detailed
 timing descriptors in the CEA ext block
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
Cc: Allen Chen <allen.chen@ite.com.tw>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 24, 2020 at 10:02:24PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> CEA-861 says :
> "d =3D offset for the byte following the reserved data block.
>  If no data is provided in the reserved data block, then d=3D4.
>  If no DTDs are provided, then d=3D0."
> =

> So let's not look for DTDs when d=3D=3D0. In fact let's just make that
> <4 since those values would just mean that he DTDs overlap the block
> header. And let's also check that d isn't so big as to declare
> the descriptors to live past the block end, although the code
> does already survive that case as we'd just end up with a negative
> number of descriptors and the loop would not do anything.
> =

> Cc: Allen Chen <allen.chen@ite.com.tw>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Hm I think edid parsing is like the perfect use-case for some in-kernel
unit tests ... In case anyone feels motivated?
-Daniel

> ---
>  drivers/gpu/drm/drm_edid.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
> index 99769d6c9f84..1b6e544cf5c7 100644
> --- a/drivers/gpu/drm/drm_edid.c
> +++ b/drivers/gpu/drm/drm_edid.c
> @@ -2201,10 +2201,13 @@ typedef void detailed_cb(struct detailed_timing *=
timing, void *closure);
>  static void
>  cea_for_each_detailed_block(u8 *ext, detailed_cb *cb, void *closure)
>  {
> -	int i, n =3D 0;
> +	int i, n;
>  	u8 d =3D ext[0x02];
>  	u8 *det_base =3D ext + d;
>  =

> +	if (d < 4 || d > 127)
> +		return;
> +
>  	n =3D (127 - d) / 18;
>  	for (i =3D 0; i < n; i++)
>  		cb((struct detailed_timing *)(det_base + 18 * i), closure);
> -- =

> 2.24.1
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
