Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 459A61A083E
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 09:28:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F14D6E544;
	Tue,  7 Apr 2020 07:28:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F066F6E544
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 07:28:05 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id z7so679234wmk.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Apr 2020 00:28:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=5t/iCaVvW+zJ3zKkpbSptgd7RNl9LISM6/Ns+sSiUQA=;
 b=jj9lpTRQ3p82A3+BUGRg7LfScg/C8jgF7jiBgc+34qlToVnSIIFp7w1abZeorL8mQ7
 3Y0+oYlJW4SPhGL4eA+9L4eOeIteVY+hU8Yk/wCIG0QeUcPIbCbly3L5lYlJBe3aqNn1
 ghHY61yV5DfI3of/WcZ13hVdtmJ44l40N5w58=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=5t/iCaVvW+zJ3zKkpbSptgd7RNl9LISM6/Ns+sSiUQA=;
 b=BGYys5LI+VPE2a+DU1vwLWR9N4Ks3cC9ejIdDoWuSHZYP9PNP2I9ePPYwTxSCLkqWJ
 OLk2+38WjKVdsK+9v9PYUghYZTrtEH9wS0BIRDOWQahGaXVZCvc0sf9wPdwx5N9C/3Fn
 11aEtAlptZgD+Ke7nP8eRLHFy2beLLsrLlDfLMkanKlORxx0cQSuAAtJNdNnoVJVH/qY
 0jUqPVMG9zjLp84pM9dl8gwgJ7s4W76l7HFndBcHALiB6QTOdPXoHDmu7FTNm2rke0fo
 E0C+0bbukX7GENM5sk2twThVSw0pN7gfcPXYMwhKSyHx0uG2jsqeSobeG/oD18XE7oVN
 lROw==
X-Gm-Message-State: AGi0Pub3hSL4NbPNSJYrxMNOGrrbwGqDBWnYZ0doz6av+88BZ2CbT1ww
 H12JHOusZLuAlTLTwNlBOVg7ww==
X-Google-Smtp-Source: APiQypJ5G1yV+ymy/BMzfGVNMchEOT3WoOSFkSmhLFWrBtx1G0dQntohcaN9XUe/w4DJxvIqK+X0fA==
X-Received: by 2002:a1c:770e:: with SMTP id t14mr883666wmi.187.1586244484558; 
 Tue, 07 Apr 2020 00:28:04 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a14sm30388856wrv.76.2020.04.07.00.28.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 00:28:04 -0700 (PDT)
Date: Tue, 7 Apr 2020 09:27:57 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200407072757.GA3456981@phenom.ffwll.local>
References: <20200403204008.14864-1-ville.syrjala@linux.intel.com>
 <20200403204008.14864-13-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403204008.14864-13-ville.syrjala@linux.intel.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH v2 12/17] drm/mcde: Use mode->clock instead
 of reverse calculating it from the vrefresh
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
Cc: intel-gfx@lists.freedesktop.org, Sam Ravnborg <sam@ravnborg.org>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 03, 2020 at 11:40:03PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> htotal*vtotal*vrefresh ~=3D clock. So just say "clock" when we mean it.

Glorious.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> =

> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/mcde/mcde_dsi.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/mcde/mcde_dsi.c b/drivers/gpu/drm/mcde/mcde_=
dsi.c
> index 52031d826f2c..c07a8e273b6f 100644
> --- a/drivers/gpu/drm/mcde/mcde_dsi.c
> +++ b/drivers/gpu/drm/mcde/mcde_dsi.c
> @@ -537,8 +537,7 @@ static void mcde_dsi_setup_video_mode(struct mcde_dsi=
 *d,
>  	 * porches and sync.
>  	 */
>  	/* (ps/s) / (pixels/s) =3D ps/pixels */
> -	pclk =3D DIV_ROUND_UP_ULL(1000000000000,
> -				(drm_mode_vrefresh(mode) * mode->htotal * mode->vtotal));
> +	pclk =3D DIV_ROUND_UP_ULL(1000000000000, mode->clock);
>  	dev_dbg(d->dev, "picoseconds between two pixels: %llu\n",
>  		pclk);
>  =

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
