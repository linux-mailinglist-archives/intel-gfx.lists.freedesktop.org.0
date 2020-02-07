Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B39C155BC5
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 17:30:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D450E6EAFB;
	Fri,  7 Feb 2020 16:30:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E5CA6E07D
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 16:30:31 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id a9so3450047wmj.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 Feb 2020 08:30:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=jasN3K/BS5GdXYFNlm0vTJMNtwQ4dm/SRKkXDuR1x/0=;
 b=Te34lkrEeV3WlUdGqFu3/rDcx4qIs+MsfRd30E+R9ooZJxc7ph8nP/pMho093+zmBn
 lsg+8WHDmoeT6qew3VV8NtSjAPC4mt1nVbvf3UqpnZC3Zd6H7ag11KYMfFheFBL2Uibj
 XlfgxLMLsDsI27glkHL1BlTv318+x97+Ybe2w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=jasN3K/BS5GdXYFNlm0vTJMNtwQ4dm/SRKkXDuR1x/0=;
 b=E5Az0vhOmxZtad4zEsSxjKC4ZreKR32ZeKESQdrpgzARFGavQKc9zZxyTkDxeAosqc
 xpWcz+ahDQfOf+EqfxlMJ4jQ3A/JKBiq4FAVRSIBTmE7wiXdYiX30L5EIerbMwluq2VD
 oQxOFaumY/L2eTdGwzLBWQg5TCRD1xhAGANG6YG9VHJjfEML3e4mzbzrYpl8i4UHiM0S
 +ou1/mFMqCFiTnIO4i/uMUc4T7Tv2qsnl6hf1K5m8Ey8dtHaX65L4xN6qsh1kv6uki75
 2T4TdswqsN5za0X6ChS9Qoz4aKxs/SJqGcZ5QyWVCQhOoBjCyiQNSlVERXG5nGVJ0aAf
 ADSw==
X-Gm-Message-State: APjAAAVR9uceUDSX5yxNX2+yPNgIriZ10OYVnRrKzMhFtkA/dX08sl7k
 3fFdbbUNfkb3pwMzli0tgk/4aQ==
X-Google-Smtp-Source: APXvYqyIrAOqPdQYd/MPYzOSABElbOeZdZ6QTl7wAqvHWX/8Q3JgUtBAoVuapcTZq7odjIHb8LiZOA==
X-Received: by 2002:a1c:4d18:: with SMTP id o24mr5105119wmh.35.1581093030193; 
 Fri, 07 Feb 2020 08:30:30 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z3sm3904689wrs.32.2020.02.07.08.30.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 08:30:29 -0800 (PST)
Date: Fri, 7 Feb 2020 17:30:27 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200207163027.GK43062@phenom.ffwll.local>
References: <20200207135950.6655-1-ville.syrjala@linux.intel.com>
 <20200207135950.6655-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200207135950.6655-3-ville.syrjala@linux.intel.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH v2 2/6] drm/gma500: Sanitize possible_clones
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

On Fri, Feb 07, 2020 at 03:59:46PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> I doubt the DP+DP and SDVO+SDVO cloning works for this driver.
> i915 at least doesn't do those. Truthfully there could be some very
> specific circumstances where some of them would do doable, but
> genereally it's too much pain to deal with so we've chose not to
> bother. Let's use the same approach for gma500.
> =

> Also the LVDS+LVDS and DSI+DSI cases probably don't really exist as
> there is one of each at most.
> =

> This does mean we'll now leave possible_clones at 0 for these encoder
> types whereas previosuly we included the encoder itself in the bitmask.
> But that's fine as the core now treaks 0 as a special case and adds
> the encoder itself into the final bitmask reported to userspace.
> =

> Cc: Patrik Jakobsson <patrik.r.jakobsson@gmail.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Looks reasonable.

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> ---
>  drivers/gpu/drm/gma500/framebuffer.c   | 16 ++++++++--------
>  drivers/gpu/drm/gma500/mdfld_dsi_dpi.c |  4 ++--
>  2 files changed, 10 insertions(+), 10 deletions(-)
> =

> diff --git a/drivers/gpu/drm/gma500/framebuffer.c b/drivers/gpu/drm/gma50=
0/framebuffer.c
> index 1459076d1980..6ca4e6ded96c 100644
> --- a/drivers/gpu/drm/gma500/framebuffer.c
> +++ b/drivers/gpu/drm/gma500/framebuffer.c
> @@ -581,31 +581,31 @@ static void psb_setup_outputs(struct drm_device *de=
v)
>  			break;
>  		case INTEL_OUTPUT_SDVO:
>  			crtc_mask =3D dev_priv->ops->sdvo_mask;
> -			clone_mask =3D (1 << INTEL_OUTPUT_SDVO);
> +			clone_mask =3D 0;
>  			break;
>  		case INTEL_OUTPUT_LVDS:
> -		        crtc_mask =3D dev_priv->ops->lvds_mask;
> -			clone_mask =3D (1 << INTEL_OUTPUT_LVDS);
> +			crtc_mask =3D dev_priv->ops->lvds_mask;
> +			clone_mask =3D 0;
>  			break;
>  		case INTEL_OUTPUT_MIPI:
>  			crtc_mask =3D (1 << 0);
> -			clone_mask =3D (1 << INTEL_OUTPUT_MIPI);
> +			clone_mask =3D 0;
>  			break;
>  		case INTEL_OUTPUT_MIPI2:
>  			crtc_mask =3D (1 << 2);
> -			clone_mask =3D (1 << INTEL_OUTPUT_MIPI2);
> +			clone_mask =3D 0;
>  			break;
>  		case INTEL_OUTPUT_HDMI:
> -		        crtc_mask =3D dev_priv->ops->hdmi_mask;
> +			crtc_mask =3D dev_priv->ops->hdmi_mask;
>  			clone_mask =3D (1 << INTEL_OUTPUT_HDMI);
>  			break;
>  		case INTEL_OUTPUT_DISPLAYPORT:
>  			crtc_mask =3D (1 << 0) | (1 << 1);
> -			clone_mask =3D (1 << INTEL_OUTPUT_DISPLAYPORT);
> +			clone_mask =3D 0;
>  			break;
>  		case INTEL_OUTPUT_EDP:
>  			crtc_mask =3D (1 << 1);
> -			clone_mask =3D (1 << INTEL_OUTPUT_EDP);
> +			clone_mask =3D 0;
>  		}
>  		encoder->possible_crtcs =3D crtc_mask;
>  		encoder->possible_clones =3D
> diff --git a/drivers/gpu/drm/gma500/mdfld_dsi_dpi.c b/drivers/gpu/drm/gma=
500/mdfld_dsi_dpi.c
> index d4c65f268922..187817e0c004 100644
> --- a/drivers/gpu/drm/gma500/mdfld_dsi_dpi.c
> +++ b/drivers/gpu/drm/gma500/mdfld_dsi_dpi.c
> @@ -1006,10 +1006,10 @@ struct mdfld_dsi_encoder *mdfld_dsi_dpi_init(stru=
ct drm_device *dev,
>  	/*set possible crtcs and clones*/
>  	if (dsi_connector->pipe) {
>  		encoder->possible_crtcs =3D (1 << 2);
> -		encoder->possible_clones =3D (1 << 1);
> +		encoder->possible_clones =3D 0;
>  	} else {
>  		encoder->possible_crtcs =3D (1 << 0);
> -		encoder->possible_clones =3D (1 << 0);
> +		encoder->possible_clones =3D 0;
>  	}
>  =

>  	dsi_connector->base.encoder =3D &dpi_output->base.base;
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
