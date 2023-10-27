Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D6E7D9CA1
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 17:09:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A03E310E9E2;
	Fri, 27 Oct 2023 15:09:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBCCF10E9E2
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 15:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698419390; x=1729955390;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=l9pXJNQshqJAXiUQduZVHDsh6WcTl5eSuTwIu2b1vXw=;
 b=hzsTMSLanhM9cixooN/aq9d0WKxfyl44d42P+s/dZoskTIvmL8nepLZx
 sm2S8mcHhvRC08y6YzGSjm/yAcvv9BDrVZ7QH6YUTkx5N4h3ppnw6tsiI
 l8CEaqc12kM2m8DHpZMJcyXYkoq1PqgHV+2GZglMaTYb8et2ngDYgf8Zv
 NUnuPVoVq0Wx9LJtxCN+SUJqqyjrn07ipXWBJLp6Um+UMN+9mmRXyZx1K
 Hd2gXopOlXoG4kISdt9MyeLqEEqqcNO+9LbJBMCxjBWUQuX8LZqJSQ7gk
 l5vfQD7JlH+gxsk6QpJ71H+v4vN+f3wpNeWH0W7Zq2eG3Thnt8KNBW26n w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10876"; a="378156162"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="378156162"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 08:09:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10876"; a="794599758"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="794599758"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 08:09:42 -0700
Date: Fri, 27 Oct 2023 18:10:12 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <ZTvS1K4hEeQxRXor@ideak-desk.fi.intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
 <20231024010925.3949910-24-imre.deak@intel.com>
 <ZTvOoUQPrhnyMoLN@intel.com>
 <ZTvQkdDYAMRcMnuA@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZTvQkdDYAMRcMnuA@ideak-desk.fi.intel.com>
Subject: Re: [Intel-gfx] [PATCH 23/29] drm/i915/dp_mst: Enable DSC
 passthrough
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 27, 2023 at 06:00:33PM +0300, Imre Deak wrote:
> On Fri, Oct 27, 2023 at 05:52:17PM +0300, Ville Syrjälä wrote:
> > On Tue, Oct 24, 2023 at 04:09:19AM +0300, Imre Deak wrote:
> > > Enable passing through DSC streams to the sink in last branch devices.
> > > 
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c | 26 ++++++++++++++++++++++++-
> > >  1 file changed, 25 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index a7eb31b489947..bb8951f89f61f 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -2950,6 +2950,24 @@ intel_dp_sink_set_dsc_decompression(struct intel_connector *connector,
> > >  			    str_enable_disable(enable));
> > >  }
> > >  
> > > +static void
> > > +intel_dp_sink_set_dsc_passthrough(const struct intel_connector *connector,
> > > +				  bool enable)
> > > +{
> > > +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> > > +	struct drm_dp_aux *aux = connector->port ?
> > > +				 connector->port->passthrough_aux : NULL;
> > 
> > I was worried that we're now setting conflicting compress+passthrough
> > bits at the same time, but looks like this magic passthrough_aux thing
> > gets sneakily populated by drm_dp_mst_dsc_aux_for_port() whereas the 
> > decompression_aux gets just returned directly and tracked by the driver.
> > Very confusing.
> 
> Yes, probably would be better to have both tracked in connector->port
> only.
> > 
> > But I guess it kinda works
> 
> The reason they don't conflict is because a passthrough_aux will be set
> only for a DP-to-DP peer branch device if the sink supports this (so not
> in a UFP DPCD for instance), in which case decompression_aux will be
> NULL. 

Err, not NULL but point to the sink's AUX device.

> > Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > > +
> > > +	if (!aux)
> > > +		return;
> > > +
> > > +	if (drm_dp_dpcd_writeb(aux, DP_DSC_PASSTHROUGH_EN,
> > > +			       enable ? DP_DSC_PASSTHROUGH_EN : 0) < 0)
> > > +		drm_dbg_kms(&i915->drm,
> > > +			    "Failed to %s sink compression passthrough state\n",
> > > +			    str_enable_disable(enable));
> > > +}
> > > +
> > >  void intel_dp_sink_set_decompression_state(struct intel_connector *connector,
> > >  					   const struct intel_crtc_state *crtc_state,
> > >  					   bool enable)
> > > @@ -2962,7 +2980,13 @@ void intel_dp_sink_set_decompression_state(struct intel_connector *connector,
> > >  	if (drm_WARN_ON(&i915->drm, !connector->dp.dsc_decompression_aux))
> > >  		return;
> > >  
> > > -	intel_dp_sink_set_dsc_decompression(connector, enable);
> > > +	if (enable) {
> > > +		intel_dp_sink_set_dsc_passthrough(connector, true);
> > > +		intel_dp_sink_set_dsc_decompression(connector, true);
> > > +	} else {
> > > +		intel_dp_sink_set_dsc_decompression(connector, false);
> > > +		intel_dp_sink_set_dsc_passthrough(connector, false);
> > > +	}
> > >  }
> > >  
> > >  static void
> > > -- 
> > > 2.39.2
> > 
> > -- 
> > Ville Syrjälä
> > Intel
