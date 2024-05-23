Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D472E8CD0C6
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 12:58:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A3F610E214;
	Thu, 23 May 2024 10:58:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DdXc3vau";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9781510E214
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716461914; x=1747997914;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=0ehaOl9yWEhg1IwAPfFKtC1GFJF5HUSKGFeGDYBfyEw=;
 b=DdXc3vaublWHKVlGl8oZrKf54ra36uHB594eLqAYcicY4ukJm3zfcS+/
 eNKwyi1wewOhviiagKZIwu3DUSe/v9rysu8ZH6ebfIJokRkkEdecm2Iw7
 8893p/XUW73JMtFarotO3q3wcCXnsNvUrshmWd67/kSWwZBP3VE/96TVc
 ZiXs9P1o5WeQWdajluQvUgYWKuWzkwCnOI4ObMydyP77i10V86oKemaKK
 Q3bFH7QqB0Np54omqEbdVe8a69hGNq+Adsu+UWe/SSr0vipl8ju0nN7Xn
 4P0WWQRuhH4uIMnJ6+Jcu8pISgp3gVkNyvsYa3B/kpvs9X6Xet3DIyL1N Q==;
X-CSE-ConnectionGUID: qVXMQm4qS1yGlqV2+JD2/A==
X-CSE-MsgGUID: z+pjthXdRYK10Ud8COHvqg==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="12946435"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="12946435"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 03:58:32 -0700
X-CSE-ConnectionGUID: R32RwwrJQFyxNSqdmjynuQ==
X-CSE-MsgGUID: poWRccT0SyyIR/ugwYVDkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33475183"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 03:58:31 -0700
Date: Thu, 23 May 2024 13:58:34 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: Fix audio component initialization
Message-ID: <Zk8hWi8gT9liz2Fj@ideak-desk.fi.intel.com>
References: <20240521143022.3784539-1-imre.deak@intel.com>
 <87ed9sq303.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87ed9sq303.fsf@intel.com>
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

On Thu, May 23, 2024 at 12:41:32PM +0300, Jani Nikula wrote:
> On Tue, 21 May 2024, Imre Deak <imre.deak@intel.com> wrote:
> > After registering the audio component in i915_audio_component_init()
> > the audio driver may call i915_audio_component_get_power() via the
> > component ops. This could program AUD_FREQ_CNTRL with an uninitialized
> > value if the latter function is called before display.audio.freq_cntrl
> > gets initialized. The get_power() function also does a modeset which in
> > the above case happens too early before the initialization step and
> > triggers the
> >
> > "Reject display access from task"
> >
> > error message added by the Fixes: commit below.
> >
> > Fix the above issue by registering the audio component only after the
> > initialization step.
> >
> > Fixes: bd738d859e71 ("drm/i915: Prevent modesets during driver init/shutdown")
> 
> I think the race condition exists before that commit, actually.
> 
> Already commit 87c1694533c9 ("drm/i915: save AUD_FREQ_CNTRL state at
> audio domain suspend") adds freq_cntrl init after component register,
> and the order should be different, right?

The audio side initialization sequence has changed since 87c1694533c9,
but yes the incorrect (rare) sequence could've happened the same way
already at that point. I'll change the Fixes: line.

> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10291
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_audio.c    | 32 ++++++++++++-------
> >  drivers/gpu/drm/i915/display/intel_audio.h    |  1 +
> >  .../drm/i915/display/intel_display_driver.c   |  2 ++
> >  3 files changed, 24 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> > index adde87900557f..4c031e97f9a55 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio.c
> > +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> > @@ -1267,17 +1267,6 @@ static const struct component_ops i915_audio_component_bind_ops = {
> >  static void i915_audio_component_init(struct drm_i915_private *i915)
> >  {
> >  	u32 aud_freq, aud_freq_init;
> > -	int ret;
> > -
> > -	ret = component_add_typed(i915->drm.dev,
> > -				  &i915_audio_component_bind_ops,
> > -				  I915_COMPONENT_AUDIO);
> > -	if (ret < 0) {
> > -		drm_err(&i915->drm,
> > -			"failed to add audio component (%d)\n", ret);
> > -		/* continue with reduced functionality */
> > -		return;
> > -	}
> >  
> >  	if (DISPLAY_VER(i915) >= 9) {
> >  		aud_freq_init = intel_de_read(i915, AUD_FREQ_CNTRL);
> > @@ -1300,6 +1289,21 @@ static void i915_audio_component_init(struct drm_i915_private *i915)
> >  
> >  	/* init with current cdclk */
> >  	intel_audio_cdclk_change_post(i915);
> > +}
> > +
> > +static void i915_audio_component_register(struct drm_i915_private *i915)
> > +{
> > +	int ret;
> > +
> > +	ret = component_add_typed(i915->drm.dev,
> > +				  &i915_audio_component_bind_ops,
> > +				  I915_COMPONENT_AUDIO);
> > +	if (ret < 0) {
> > +		drm_err(&i915->drm,
> > +			"failed to add audio component (%d)\n", ret);
> > +		/* continue with reduced functionality */
> > +		return;
> > +	}
> >  
> >  	i915->display.audio.component_registered = true;
> >  }
> > @@ -1332,6 +1336,12 @@ void intel_audio_init(struct drm_i915_private *i915)
> >  		i915_audio_component_init(i915);
> >  }
> >  
> > +void intel_audio_register(struct drm_i915_private *i915)
> > +{
> > +	if (!i915->display.audio.lpe.platdev)
> > +		i915_audio_component_register(i915);
> > +}
> > +
> >  /**
> >   * intel_audio_deinit() - deinitialize the audio driver
> >   * @i915: the i915 drm device private data
> > diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
> > index 9327954b801e5..576c061d72a45 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio.h
> > +++ b/drivers/gpu/drm/i915/display/intel_audio.h
> > @@ -28,6 +28,7 @@ void intel_audio_codec_get_config(struct intel_encoder *encoder,
> >  void intel_audio_cdclk_change_pre(struct drm_i915_private *dev_priv);
> >  void intel_audio_cdclk_change_post(struct drm_i915_private *dev_priv);
> >  void intel_audio_init(struct drm_i915_private *dev_priv);
> > +void intel_audio_register(struct drm_i915_private *i915);
> >  void intel_audio_deinit(struct drm_i915_private *dev_priv);
> >  void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state);
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > index 89bd032ed995e..794b4af380558 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > @@ -540,6 +540,8 @@ void intel_display_driver_register(struct drm_i915_private *i915)
> >  
> >  	intel_display_driver_enable_user_access(i915);
> >  
> > +	intel_audio_register(i915);
> > +
> 
> It's a bit silly that intel_display_driver_register() now calls both
> intel_audio_init() and intel_audio_register(). We should probably move
> the init earlier. The register part shouldn't really be doing any
> hardware initialization stuff, just expose the software interfaces to
> the world.

Yes, agreed this could be done as a follow-up after this change.

> Regardless,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks.

> 
> >  	intel_display_debugfs_register(i915);
> >  
> >  	/*
> 
> -- 
> Jani Nikula, Intel
