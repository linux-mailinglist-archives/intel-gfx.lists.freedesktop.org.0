Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 835B34AFE07
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 21:11:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3C6710E58C;
	Wed,  9 Feb 2022 20:11:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66C7F10E1B8
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 20:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644437466; x=1675973466;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5FIO6tF/RfAQQHO1EDGMoxh8vdGSv5PohOScppSmPV8=;
 b=dLFO5hN0wH/Wgv2osInl8TDok1S6iQKkmyD3335mZeF+lDipy/J1YAr/
 B3t0GaCi+ENsLJKmNwF2iIIkkwgl1LGNYkUF8mC2PJ8NCBQLipUWTdV6g
 yQjjc3XM7ZT/k9kwUwOEnSSirstP/SwL3jvO+x1AQ3WEO80ofvvui6WLW
 95QrSsIRS3AziK2YGSPa7Nn0HEidzJjBZxsV0C7LkxqTOYWBM+mpiuHD8
 s9vKGgkl5OnYChlow/IB4sgxSMBSmwlL91pTj2CsDFSlpaHGpCVNAYHX9
 YOQ2OHTAlrGQjBezY7FCsh0b2Pu8YuD73+a+TbkD+Kq2BRmbI4sYWKOhb Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="249533641"
X-IronPort-AV: E=Sophos;i="5.88,356,1635231600"; d="scan'208";a="249533641"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 12:10:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,356,1635231600"; d="scan'208";a="585703409"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga008.fm.intel.com with SMTP; 09 Feb 2022 12:10:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Feb 2022 22:10:42 +0200
Date: Wed, 9 Feb 2022 22:10:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <YgQfwpQxueke3AX2@intel.com>
References: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
 <20220203183823.22890-10-ville.syrjala@linux.intel.com>
 <20220209200026.GC31646@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220209200026.GC31646@labuser-Z97X-UD5H>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 09/10] drm/i915: Return both master and
 slave pipes from enabled_bigjoiner_pipes()
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

On Wed, Feb 09, 2022 at 12:00:26PM -0800, Navare, Manasi wrote:
> On Thu, Feb 03, 2022 at 08:38:22PM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Return both the master and slave pipe bitmasks from
> > enabled_bigjoiner_pipes(). We'll have use for both during
> > readout soon.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> This looks good, can this be just combined with the patch that would use the slave and mastr pipes
> in the readout ?

I think that patch is already far too big. But I couldn't immediately
think how to split it up even more.

> 
> Either way,
> 
> Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
> 
> Manasi
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 25 +++++++++++---------
> >  1 file changed, 14 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 6df498fc720a..34b6b4ab3a1b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -4064,11 +4064,14 @@ static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
> >  	return tmp & TRANS_DDI_FUNC_ENABLE;
> >  }
> >  
> > -static u8 enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv)
> > +static void enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv,
> > +				    u8 *master_pipes, u8 *slave_pipes)
> >  {
> > -	u8 master_pipes = 0, slave_pipes = 0;
> >  	struct intel_crtc *crtc;
> >  
> > +	*master_pipes = 0;
> > +	*slave_pipes = 0;
> > +
> >  	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
> >  					 bigjoiner_pipes(dev_priv)) {
> >  		enum intel_display_power_domain power_domain;
> > @@ -4083,9 +4086,9 @@ static u8 enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv)
> >  				continue;
> >  
> >  			if (tmp & MASTER_BIG_JOINER_ENABLE)
> > -				master_pipes |= BIT(pipe);
> > +				*master_pipes |= BIT(pipe);
> >  			else
> > -				slave_pipes |= BIT(pipe);
> > +				*slave_pipes |= BIT(pipe);
> >  		}
> >  
> >  		if (DISPLAY_VER(dev_priv) < 13)
> > @@ -4096,18 +4099,16 @@ static u8 enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv)
> >  			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
> >  
> >  			if (tmp & UNCOMPRESSED_JOINER_MASTER)
> > -				master_pipes |= BIT(pipe);
> > +				*master_pipes |= BIT(pipe);
> >  			if (tmp & UNCOMPRESSED_JOINER_SLAVE)
> > -				slave_pipes |= BIT(pipe);
> > +				*slave_pipes |= BIT(pipe);
> >  		}
> >  	}
> >  
> >  	/* Bigjoiner pipes should always be consecutive master and slave */
> > -	drm_WARN(&dev_priv->drm, slave_pipes != master_pipes << 1,
> > +	drm_WARN(&dev_priv->drm, *slave_pipes != *master_pipes << 1,
> >  		 "Bigjoiner misconfigured (master pipes 0x%x, slave pipes 0x%x)\n",
> > -		 master_pipes, slave_pipes);
> > -
> > -	return slave_pipes;
> > +		 *master_pipes, *slave_pipes);
> >  }
> >  
> >  static u8 hsw_panel_transcoders(struct drm_i915_private *i915)
> > @@ -4126,6 +4127,7 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
> >  	struct drm_i915_private *dev_priv = to_i915(dev);
> >  	u8 panel_transcoder_mask = hsw_panel_transcoders(dev_priv);
> >  	enum transcoder cpu_transcoder;
> > +	u8 master_pipes, slave_pipes;
> >  	u8 enabled_transcoders = 0;
> >  
> >  	/*
> > @@ -4177,7 +4179,8 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
> >  		enabled_transcoders |= BIT(cpu_transcoder);
> >  
> >  	/* bigjoiner slave -> consider the master pipe's transcoder as well */
> > -	if (enabled_bigjoiner_pipes(dev_priv) & BIT(crtc->pipe)) {
> > +	enabled_bigjoiner_pipes(dev_priv, &master_pipes, &slave_pipes);
> > +	if (slave_pipes & BIT(crtc->pipe)) {
> >  		cpu_transcoder = (enum transcoder) crtc->pipe - 1;
> >  		if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
> >  			enabled_transcoders |= BIT(cpu_transcoder);
> > -- 
> > 2.34.1
> > 

-- 
Ville Syrjälä
Intel
