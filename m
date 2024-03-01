Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A1086DF28
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 11:22:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA89C10EC75;
	Fri,  1 Mar 2024 10:22:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GWvF4eQB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71E9510EC73
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 10:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709288575; x=1740824575;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Yf7oc5/YjMr9wRp62dOvEs6hwV2yB8bbwNnjxqRqDY8=;
 b=GWvF4eQB7h2drqb1J+a5EtPKIu6bKWn8DTe/5JGH7eEiAmgHGgPKBHS0
 YMiBdgJksEMsqXzRjTLQrPxxgmdhCHQ9rSg/FnzfHEx906j/voyu+Q8AL
 3E3OROF06hDdlS24Z8sd25d+5DeCDhflacacHoQiGeP6M9+HPi1miiQ6M
 W1+x6i8Dsr/EtP2z7SGC6tX/Uu6H9vleKnLeYsgoTlLmh8kEApOVUM9Z7
 Z1ReuR8h1CWxBmQeCCAAZHv5BDZzjVeiHH7mhSvERBIYuimq/nT4u8L4e
 AzpFr+u00JoOSKcskF6vAiWxHwsis3SuRfaqAbChV9MNzuU4G6kKfa6zM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="3706318"
X-IronPort-AV: E=Sophos;i="6.06,195,1705392000"; 
   d="scan'208";a="3706318"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 02:22:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,195,1705392000"; d="scan'208";a="12841553"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 02:22:53 -0800
Date: Fri, 1 Mar 2024 12:22:44 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com,
 vidya.srinivas@intel.com
Subject: Re: [PATCH 1/3] drm/i915/bigjoiner: Refactor bigjoiner state readout
Message-ID: <ZeGsdHvpqfvB3oLF@intel.com>
References: <20240221192010.25413-1-stanislav.lisovskiy@intel.com>
 <20240221192010.25413-2-stanislav.lisovskiy@intel.com>
 <ZeGpi9tGZ1a2CAqw@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZeGpi9tGZ1a2CAqw@intel.com>
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

On Fri, Mar 01, 2024 at 12:10:19PM +0200, Ville Syrjälä wrote:
> On Wed, Feb 21, 2024 at 09:20:08PM +0200, Stanislav Lisovskiy wrote:
> > Don't call enabled_bigjoiner_pipes twice, lets just move
> > intel_get_bigjoiner_config earlier, because it is anyway
> > calling same function.
> > Also cleanup hsw_enabled_transcoders from irrelevant bigjoiner code.
> 
> I still don't like this.

As of current state of things, I didn't touch this since our last discussion.
This is not critical improvement, so lets drop this until the main issues are
solved.

> 
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 22 ++++++++++----------
> >  1 file changed, 11 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 00ac65a140298..916c13a149fd5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -3535,7 +3535,6 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
> >  	struct drm_i915_private *dev_priv = to_i915(dev);
> >  	u8 panel_transcoder_mask = hsw_panel_transcoders(dev_priv);
> >  	enum transcoder cpu_transcoder;
> > -	u8 master_pipes, slave_pipes;
> >  	u8 enabled_transcoders = 0;
> >  
> >  	/*
> > @@ -3586,15 +3585,6 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
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
> > @@ -3641,6 +3631,15 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
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
> > @@ -3745,6 +3744,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
> >  
> >  	pipe_config->shared_dpll = NULL;
> >  
> > +	intel_bigjoiner_get_config(pipe_config);
> > +
> >  	active = hsw_get_transcoder_state(crtc, pipe_config, &crtc->hw_readout_power_domains);
> >  
> >  	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
> > @@ -3756,7 +3757,6 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
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
