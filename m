Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B05388993E3
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 05:32:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12C3610E210;
	Fri,  5 Apr 2024 03:32:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="sxY8n0Vx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
 [209.85.167.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B937B10E210
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 03:32:50 +0000 (UTC)
Received: by mail-lf1-f51.google.com with SMTP id
 2adb3069b0e04-516cbf3fe68so1739431e87.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Apr 2024 20:32:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1712287969; x=1712892769; darn=lists.freedesktop.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=Lc1AatObWw5nKNqq6p0nrFivv03qQmupYiSYZ6HXmyg=;
 b=sxY8n0Vx5OB0a9HlfbJS7DoyTeSCLeRHTXjXHCsrfoCmUsb2w4CHyXslMIKxslfyNy
 gYhIzQZRhPe6Xkz9JttpYa6sazM1j1REV10U81DxEJpksNkmvtjR0ZvKusfLO+Z4LCcR
 gF1dGDEuqNfHJScZ7CkOKOg/pjHFtkO/Ih2yGXJBy0q2e6gbz7O1aDlHn8XsyP7qWq44
 apjLfdBlA2qFgp9rHxiR/VrRgTUyG8zf9vLCprzpKVPjiEElP2iZdxG0Fy+MM45NOOJC
 1Byb4b0FV9qk9pnMBMaOBKRbu9oa9wgJq0jYleSJP6EqOmgGk2HLy/facZslb8SFSeOA
 P1BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712287969; x=1712892769;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Lc1AatObWw5nKNqq6p0nrFivv03qQmupYiSYZ6HXmyg=;
 b=wuvuKHcbwh9RIQmmyhcW2Y00yP2DaeFPNl0DtMjEasoBc9JzGrOEbg9sLDgw3UndjO
 6v8XW0EwWOZdAkyQtNah85gFIWlgZHlzojlcdLg7SCUwPgiNPqdXMCTNbjrR2E8FCfXO
 2VaZ8j/33poMEMKYeAdmgxhyYK0t3aGTiIEwAs5QmFJLVPlT26bFk0K2Y+7GfIoTBKnd
 sk+GhVcwBo7NhgJIgnNkxpqQe14Fm9HoG4mwB9UK/vo8hNr/rtoh8d6voerFZPFw/s9m
 fz/AMtY5VFPtMbcmodRsndDyGfjlaHzCbdUo3+fAeej+7q5mZXsr/BEPqp0BLkbxUpp1
 tN7Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCUyAMdVdUz+DTozaZmOzpW5LPODBTb6HPOS9T6gmvthKPncCXzPbOQbbWxNLcXGJNylYlLILBhfspwbzw0aBfw8Jmt6Ok9kyYbKgHMPvNq6
X-Gm-Message-State: AOJu0Yz1wQBmnUl9Wxa7PNQW6olWUXnbCBMJI9LSTZ+uUlcn343EfoPm
 tojeQQ/AxVRnHKTbDDhbo9t/ntOHNaZ86UVUZz1aJNMI8g/a3FjSma+OD0q6Oc8YV8SRKBLbjZM
 O
X-Google-Smtp-Source: AGHT+IF9sabq+V7KkGSPq0Q3BgduAt44a0vhi2EkFMsp4/l7uwqEg2K1GmwCS1H4C2sGqG/naFEZMA==
X-Received: by 2002:a19:5e51:0:b0:513:cd70:8db0 with SMTP id
 z17-20020a195e51000000b00513cd708db0mr120851lfi.65.1712287968573; 
 Thu, 04 Apr 2024 20:32:48 -0700 (PDT)
Received: from eriador.lumag.spb.ru
 (dzyjmhyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a00e:a300::227])
 by smtp.gmail.com with ESMTPSA id
 3-20020ac24823000000b00516d05c9cbesm74687lft.82.2024.04.04.20.32.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Apr 2024 20:32:48 -0700 (PDT)
Date: Fri, 5 Apr 2024 06:32:46 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 04/12] drm/client: Add a FIXME around crtc->mode usage
Message-ID: <7ksd67gkxalnslnssqsrc75lqbxks35zsuc5lvqpqmb2nbyf3j@lgf3svop3mbx>
References: <20240404203336.10454-1-ville.syrjala@linux.intel.com>
 <20240404203336.10454-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240404203336.10454-5-ville.syrjala@linux.intel.com>
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

On Thu, Apr 04, 2024 at 11:33:28PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> crtc->mode is legacy junk and shouldn't really be used with
> atomic drivers.
> 
> Most (all?) atomic drivers do end up still calling
> drm_atomic_helper_update_legacy_modeset_state() at some
> point, so crtc->mode does still get populated, and this
> does work for now. But eventually would be nice to eliminate
> all the legacy stuff from atomic drivers.
> 
> Switching to crtc->state->mode would require some bigger
> changes however, as we currently drop the crtc->mutex
> before we're done using the mode. So leave the junk in
> for now and just add a FIXME to remind us that this
> needs fixing.


What about using allocated duplicate modes to fill modes[] array? This
requires additional allocations, but it will solve most if not all modes
lifetime issues.

> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/drm_client_modeset.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_client_modeset.c b/drivers/gpu/drm/drm_client_modeset.c
> index 2b7d0be04911..8ef03608b424 100644
> --- a/drivers/gpu/drm/drm_client_modeset.c
> +++ b/drivers/gpu/drm/drm_client_modeset.c
> @@ -699,6 +699,10 @@ static bool drm_client_firmware_config(struct drm_client_dev *client,
>  			 *
>  			 * This is crtc->mode and not crtc->state->mode for the
>  			 * fastboot check to work correctly.
> +			 *
> +			 * FIXME using legacy crtc->mode with atomic drivers
> +			 * is dodgy. Switch to crtc->state->mode, after taking
> +			 * care of the resulting locking/lifetime issues.
>  			 */
>  			DRM_DEBUG_KMS("looking for current mode on connector %s\n",
>  				      connector->name);
> -- 
> 2.43.2
> 

-- 
With best wishes
Dmitry
