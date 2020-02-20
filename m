Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A6E166614
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 19:17:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 130536EE34;
	Thu, 20 Feb 2020 18:17:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 845C76EE34
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 18:17:36 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id e8so5728876wrm.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 10:17:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=kkpaZ2U5TvafZIBZ+6Qq9oMo8RbsDcFqsliT+ioTLTA=;
 b=ftQN6c90iyAmLBcnuNpnl69tfFT3Cj/3isfIJ9d8yPvjDqIB3eJDwYhad4TU8VZnJ7
 hUq6994zW04D0IwbHol8o8KbB5AI0UhVgxlvJwm0HeB+3c2X5Eqr5hbr7xibPx8G1x3Z
 4IaovCDX0FaF5cV5BoQb2VWxfCI5KjSNFbB1g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=kkpaZ2U5TvafZIBZ+6Qq9oMo8RbsDcFqsliT+ioTLTA=;
 b=Y4bNXieybMc7YYNt3Wy4a58pMRXhofaKrdCZf/o/o73BZrxtyl6iicRvVARR3CwsSI
 m+WeEMjpsf4aiua7PvX7hepHhY6fs1bAsXk4Q4ZdH1WdRAi+8N/StHI1JgFVJledybLs
 e8GG/zKKgKJWv5m1sbc9Z0EkIK0II9HshZG06DviUFUFhRnPZi+rSxLjFiLoH66kvgM1
 F2Qvd3RFWek+wG7xcRSf1bH2KSt8GPECWNWMN8EN3j4c6T80lL+MIC7B78VqXfwZOhuM
 cmMU87/SP+ILWZCckImNTZaX/sg3zmdF/ZHBFwxUh2mr5sM5HCnxwLYMPkkoSy8yRKp/
 sGqA==
X-Gm-Message-State: APjAAAViKNgyDTJ6ZB1hhXC+ZKHNNNo00I/o/UqcSMspHfUQpe7iu0N3
 ipw7x4Szw2lSDe31/56xoQpxhg==
X-Google-Smtp-Source: APXvYqwcjVOxifC7fZBqWBATi734nXV+ymS2y9QxBpvWBSfn1O+3yNEPLn4LEqg2n9AUEkDXdkLN+w==
X-Received: by 2002:a05:6000:128a:: with SMTP id
 f10mr45618519wrx.116.1582222655246; 
 Thu, 20 Feb 2020 10:17:35 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j11sm187961wmi.3.2020.02.20.10.17.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 10:17:34 -0800 (PST)
Date: Thu, 20 Feb 2020 19:17:32 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200220181732.GW2363188@phenom.ffwll.local>
References: <20200219203544.31013-1-ville.syrjala@linux.intel.com>
 <20200219203544.31013-8-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219203544.31013-8-ville.syrjala@linux.intel.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 07/12] drm: Shrink mode->type to u8
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 19, 2020 at 10:35:39PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> We only have 7 bits defined for mode->type. Shrink the storage to u8.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  include/drm/drm_modes.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/include/drm/drm_modes.h b/include/drm/drm_modes.h
> index 2bb2b1a8592a..5c20285cc317 100644
> --- a/include/drm/drm_modes.h
> +++ b/include/drm/drm_modes.h
> @@ -270,7 +270,7 @@ struct drm_display_mode {
>  	 *    which are stuck around for hysterical raisins only. No one has an
>  	 *    idea what they were meant for. Don't use.
>  	 */
> -	unsigned int type;
> +	u8 type;

Unfortunately DRM_MODE_TYPE_DRIVER is the largest and still in use,
otherwise we could have cut off a few more bits here :-)

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

>  =

>  	/**
>  	 * @clock:
> -- =

> 2.24.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
