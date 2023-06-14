Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A3972FED9
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jun 2023 14:38:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5EF110E12A;
	Wed, 14 Jun 2023 12:38:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E95C10E12A
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jun 2023 12:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686746298; x=1718282298;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=3LojbKOqpcPdp4IIXLoe9sYR8H81c3jS26WX/RGvCtY=;
 b=XBKbTjbqDkoq4hI6DUhZvSlmZp4mIYv4ZyNYL3ToTKejRR89naJd5oPe
 kk7qLWZZEwHSiRz6zUxTtW1RpvUqrFvM3teZ6zS/8f7q3HO1kdmFUwJr/
 JkBDHmLJOmXrv97jGTjCdGxNSkiiaMDk7wwlmjD7vrpVve4FBwCU7xW/H
 eaa1DGaNV4slpz/I+vFdOEj1zxLi0r35fNjJS92Z2kS9gDhqK1G0hVu50
 3e/DY+ZQVMWNhY9i4sS0tINkzjcUktFhwJDXh2665qxD4LZQ9/ZEn6Rsk
 Nuysi1sSFetyUP7llsbNI7VyUpaHnLqQrJJeAXB58lkIErdwCrH6cx8qy w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="338234611"
X-IronPort-AV: E=Sophos;i="6.00,242,1681196400"; d="scan'208";a="338234611"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 05:38:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="715186422"
X-IronPort-AV: E=Sophos;i="6.00,242,1681196400"; d="scan'208";a="715186422"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga007.fm.intel.com with SMTP; 14 Jun 2023 05:38:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 14 Jun 2023 15:38:14 +0300
Date: Wed, 14 Jun 2023 15:38:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <ZIm0tjXL3sR6xwPf@intel.com>
References: <20230614040749.1702127-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230614040749.1702127-1-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display : Remove support for
 interlace mode
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 14, 2023 at 09:37:49AM +0530, Ankit Nautiyal wrote:
> There are multiple panels with which Interlace mode is seen to cause
> flickering (interlacing artifacts) with different platforms.
> 
> The issue is seen with both HDMI, DP with CML, CFL, ICL, EHL with
> different display models from Acer, Benq, Dell etc.
> There are some models where the issue is not seen with same setup.
> 
> Due to this, cases where multiple display are configured in clone mode,
> sometimes interlaced mode gets picked up in one of the displays
> and flickers are seen.
> 
> Since its difficult to pin point if issue is due to the HW or due to
> panels, removing interlace mode for DP and HDMI till this is
> root caused.

I though people already confirmewd the problem on non-Intel hw?
So seems pretty clear that it's the displays themselves that are
garbage.

> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8395
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c   | 3 ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 3 ---
>  2 files changed, 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f4192fda1a76..78d8ceb590a3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5665,9 +5665,6 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  	drm_connector_init(dev, connector, &intel_dp_connector_funcs, type);
>  	drm_connector_helper_add(connector, &intel_dp_connector_helper_funcs);
>  
> -	if (!HAS_GMCH(dev_priv) && DISPLAY_VER(dev_priv) < 12)
> -		connector->interlace_allowed = true;
> -
>  	intel_connector->polled = DRM_CONNECTOR_POLL_HPD;
>  
>  	intel_dp_aux_init(intel_dp);
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 7ac5e6c5e00d..9b3ea307ef40 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2998,9 +2998,6 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
>  				    ddc);
>  	drm_connector_helper_add(connector, &intel_hdmi_connector_helper_funcs);
>  
> -	if (DISPLAY_VER(dev_priv) < 12)
> -		connector->interlace_allowed = true;
> -
>  	connector->stereo_allowed = true;
>  
>  	if (DISPLAY_VER(dev_priv) >= 10)
> -- 
> 2.40.1

-- 
Ville Syrjälä
Intel
