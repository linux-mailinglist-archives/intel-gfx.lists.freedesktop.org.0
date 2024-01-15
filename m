Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F9E82D5C9
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jan 2024 10:24:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88B0D10E116;
	Mon, 15 Jan 2024 09:24:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8996910E116
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jan 2024 09:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705310655; x=1736846655;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=tHCW2zz8wo+xl4Ovrw2Lc2Rn+4RBC8IhNgBUY/Zr54o=;
 b=UDDULbf+7+Cnj8fESAvcX0xtnC4NUVCQeKrQFHyUQN99QI/bwsxVIENS
 XKMEYwbRelpxHGnWLGb123mOyoMnFjZzalP0jS1r7eLfse5oMPddYn4YM
 ydpRDuiki/vSyR9molj20JBN99B7PvqWrj54LwZ90ioesF9df5HHvn97i
 MkcDvTpleqQ8YYo0wuU+ER1EG+IMA8wvTgZ9egRJXEQ3XKH6x3yPIHtzu
 8Zzs4Tu6iOQSFViyusdeNGIrVqmRrfuglGJxwG5ZSMNq1ElI32OUaoBvL
 CCsxDTMj9mHyX0nvZYShFvuRBktc3AemcgaYfwvsVpLVlf3ezrbAecnzI w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10953"; a="485734069"
X-IronPort-AV: E=Sophos;i="6.04,196,1695711600"; d="scan'208";a="485734069"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 01:24:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10953"; a="776685388"
X-IronPort-AV: E=Sophos;i="6.04,196,1695711600"; d="scan'208";a="776685388"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 01:24:09 -0800
Date: Mon, 15 Jan 2024 11:24:06 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 2/3] drm/i915/bigjoiner: Refactor bigjoiner state readout
Message-ID: <ZaT5tuo4FA/pZnjN@intel.com>
References: <20240108120725.20057-1-stanislav.lisovskiy@intel.com>
 <20240108120725.20057-3-stanislav.lisovskiy@intel.com>
 <ZaFr58MjVk261ADO@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZaFr58MjVk261ADO@intel.com>
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

On Fri, Jan 12, 2024 at 06:42:15PM +0200, Ville Syrjälä wrote:
> On Mon, Jan 08, 2024 at 02:07:24PM +0200, Stanislav Lisovskiy wrote:
> > Don't call enabled_bigjoiner_pipes twice, lets just move
> > intel_get_bigjoiner_config earlier, because it is anyway
> > calling same function.
> > Also cleanup hsw_enabled_transcoders from irrelevant bigjoiner code.
> 
> It's not irrelevant. The function is supposed to return the set of
> enabled transcoders associated with the pipe. With this change the
> function no longer does what it says on the tin.

Yes, but I guess it is just a matter what we define to be higher in a
logical hierarchy: a pipe or a bigjoiner?
I thought it won't harm hsw_enabled_transcoders won't have any excess
logic and will return only transcoders naturally associated with a
physical pipe, while for higher complexity level constructs like bigjoiner
we would have some logic on top. 
In fact my main motivation was to avoid calling enabled_bigjoiner_pipe as 
it is quite heavy and call intel_crtc_is_bigjoiner_slave here instead. 

enabled_bigjoiner_pipes reads too much information, which 
we don't need in that function(here we just need to know if we are slave or master)

The absolute need for calling enabled_bigjoiner_pipes happens in 
intel_bigjoiner_get_config, which we moved earlier, which seems to be
logical since hsw_get_transcoder_state needs to have bigjoiner info and
now we can use its results to call more lightweight intel_crtc_is_bigjoiner_slave there
because pipe_config->bigjoiner_pipes is now initialized, so we avoid calling enabled_bigjoiner_pipes
second time..

> 
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 22 ++++++++++----------
> >  1 file changed, 11 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 927d124457b61..eec76ec167069 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -3525,7 +3525,6 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
> >  	struct drm_i915_private *dev_priv = to_i915(dev);
> >  	u8 panel_transcoder_mask = hsw_panel_transcoders(dev_priv);
> >  	enum transcoder cpu_transcoder;
> > -	u8 master_pipes, slave_pipes;
> >  	u8 enabled_transcoders = 0;
> >  
> >  	/*
> > @@ -3576,15 +3575,6 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
> >  	if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
> >  		enabled_transcoders |= BIT(cpu_transcoder);
> >  
> > -	/* bigjoiner slave -> consider the master pipe's transcoder as well */
> > -	enabled_bigjoiner_pipes(dev_priv, &master_pipes, &slave_pipes);
> > -	if (slave_pipes & BIT(crtc->pipe)) {
> > -		cpu_transcoder = (enum transcoder)
> > -			get_bigjoiner_master_pipe(crtc->pipe, master_pipes, slave_pipes);
> > -		if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
> > -			enabled_transcoders |= BIT(cpu_transcoder);
> > -	}
> > -
> >  	return enabled_transcoders;
> >  }
> >  
> > @@ -3631,6 +3621,15 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
> >  	u32 tmp;
> >  
> >  	enabled_transcoders = hsw_enabled_transcoders(crtc);
> > +
> > +	/* bigjoiner slave -> consider the master pipe's transcoder as well */
> > +	if (intel_crtc_is_bigjoiner_slave(pipe_config)) {
> > +		unsigned long cpu_transcoder = (enum transcoder)
> > +			bigjoiner_master_pipe(pipe_config);
> > +		if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
> > +			enabled_transcoders |= BIT(cpu_transcoder);
> > +	}
> > +
> >  	if (!enabled_transcoders)
> >  		return false;
> >  
> > @@ -3735,6 +3734,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
> >  
> >  	pipe_config->shared_dpll = NULL;
> >  
> > +	intel_bigjoiner_get_config(pipe_config);
> 
> So this is what avoids the "call it twice" part, but it also makes the
> state potentially inconsistent as in all other cases we leave everything
> zeroed if the transcoder is not enabled. So I'm not sure this is
> entirely safe or whether we could end up with some weird state
> mismatches due to the inconsistency.

Isn't it vice versa? intel_bigjoiner_get_config is now called way earlier,
before hsw_get_transcoder_state is called(previously it was called later),
the only difference is just that we now have pipe_config->bigjoiner_pipes
filled and enabled_bigjoiner_pipes was called there, so we can now
use that info to call intel_crtc_is_bigjoiner_slave in hsw_get_transcoder_state,
as I mentioned above.

Also if none of the transcoders are enabled, we now in fact have more information
filled than before this change(before we had only enabled_bigjoiner_pipes called
in hsw_get_transcoder_state, but now we have also pipe_config->bigjoiner_pipes
initialized), otherwise if none of the transcoders are active everything should
be pretty much the same.

Stan


> 
> Why do you think calling it twice is problematic? It's supposed to be 
> idempotent (ignoring the actual register reads/etc.).
> 
> > +
> >  	active = hsw_get_transcoder_state(crtc, pipe_config, &crtc->hw_readout_power_domains);
> >  
> >  	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
> > @@ -3746,7 +3747,6 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
> >  	if (!active)
> >  		goto out;
> >  
> > -	intel_bigjoiner_get_config(pipe_config);
> >  	intel_dsc_get_config(pipe_config);
> >  
> >  	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
> > -- 
> > 2.37.3
> 
> -- 
> Ville Syrjälä
> Intel
