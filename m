Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB2F65C48D
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jan 2023 18:05:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AD2A10E270;
	Tue,  3 Jan 2023 17:05:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3810410E270
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Jan 2023 17:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672765545; x=1704301545;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=Eozm1CzI33ucPGJfpcseyegPNFo+hRwi09FQuyCM2yk=;
 b=I7IG+yQt28JQNZCkI/4LOU570n7eVmddFYg8PnWXsEfNGWHAIEHAM2DH
 x28K8ShrR+XOMA3POUpdpSfGO8fr1gFCKzXBm0LckrkKVr0x5m3M3LrmF
 T/Mwqfdxe4XeI+/48l4Oc+R+vD2td+iyc016thJFWXwXfr3qmTGA59Xqz
 9RyDUtpFyRmcRRL26RCLL1nkTlPtaM7bMrvIkTHlHzu7jtLYj0uSwmBbI
 o4gGh9Q/SD1Fzvf8peNXtJzaifcurDFH/9kI6i5p7I47wPAuBcrfrN/Ra
 aMJt4D5KoATxLwff4lKBppm3k9+L96VDBaIjHk4hEVbOujEhrEaYDdPH+ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="319414057"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="319414057"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 09:04:02 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="632505977"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="632505977"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 09:04:00 -0800
Date: Tue, 3 Jan 2023 19:03:56 +0200
From: Imre Deak <imre.deak@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <Y7Rf/LbD7qWSRSdS@ideak-desk.fi.intel.com>
References: <20230102183324.862279-1-imre.deak@intel.com>
 <Y7RRcyjbRvS0VhIK@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y7RRcyjbRvS0VhIK@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Enable a PIPEDMC whenever its
 corresponding pipe is enabled
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 03, 2023 at 11:01:55AM -0500, Rodrigo Vivi wrote:
> On Mon, Jan 02, 2023 at 08:33:24PM +0200, Imre Deak wrote:
> > Make sure that PIPEDMCs are enabled whenever the corresponding pipe is
> > enabled.
> > 
> > This is required at least by the latest ADLP v2.18 firmware, which adds
> > a new handler enabled by default and running whenever the pipe is
> > enabled at the vertical referesh rate.
> > 
> > Bspec: 50344, 67620
> 
> mlt hw looks a good register clean-up! why multiple registers for single bits! :)

That change was probably due to power gating, where those registers were
backed by pipe power wells. On MTL this changed so the single register
doesn't depend on those power wells.

> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> 
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks.

> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  |  5 ++++
> >  drivers/gpu/drm/i915/display/intel_dmc.c      | 24 +++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_dmc.h      |  4 ++++
> >  drivers/gpu/drm/i915/display/intel_dmc_regs.h | 11 +++++++++
> >  .../drm/i915/display/intel_modeset_setup.c    |  4 +++-
> >  5 files changed, 47 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index e75b9b2a0e015..ddbf22d5667a6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1918,6 +1918,8 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
> >  	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
> >  		return;
> >  
> > +	intel_dmc_enable_pipe(dev_priv, crtc->pipe);
> > +
> >  	if (!new_crtc_state->bigjoiner_pipes) {
> >  		intel_encoders_pre_pll_enable(state, crtc);
> >  
> > @@ -2053,6 +2055,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
> >  {
> >  	const struct intel_crtc_state *old_crtc_state =
> >  		intel_atomic_get_old_crtc_state(state, crtc);
> > +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> >  
> >  	/*
> >  	 * FIXME collapse everything to one hook.
> > @@ -2062,6 +2065,8 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
> >  		intel_encoders_disable(state, crtc);
> >  		intel_encoders_post_disable(state, crtc);
> >  	}
> > +
> > +	intel_dmc_disable_pipe(i915, crtc->pipe);
> >  }
> >  
> >  static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index 905b5dcdca14f..fe8a8941dbf3a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -108,6 +108,8 @@ MODULE_FIRMWARE(BXT_DMC_PATH);
> >  #define DMC_V3_MAX_MMIO_COUNT		20
> >  #define DMC_V1_MMIO_START_RANGE		0x80000
> >  
> > +#define PIPE_TO_DMC_ID(pipe)		 (DMC_FW_PIPEA + ((pipe) - PIPE_A))
> > +
> >  struct intel_css_header {
> >  	/* 0x09 for DMC */
> >  	u32 module_type;
> > @@ -407,6 +409,28 @@ static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
> >  				     PIPEDMC_GATING_DIS, 0);
> >  }
> >  
> > +void intel_dmc_enable_pipe(struct drm_i915_private *i915, enum pipe pipe)
> > +{
> > +	if (!has_dmc_id_fw(i915, PIPE_TO_DMC_ID(pipe)))
> > +		return;
> > +
> > +	if (DISPLAY_VER(i915) >= 14)
> > +		intel_de_rmw(i915, MTL_PIPEDMC_CONTROL, 0, PIPEDMC_ENABLE_MTL(pipe));
> > +	else
> > +		intel_de_rmw(i915, PIPEDMC_CONTROL(pipe), 0, PIPEDMC_ENABLE);
> > +}
> > +
> > +void intel_dmc_disable_pipe(struct drm_i915_private *i915, enum pipe pipe)
> > +{
> > +	if (!has_dmc_id_fw(i915, PIPE_TO_DMC_ID(pipe)))
> > +		return;
> > +
> > +	if (DISPLAY_VER(i915) >= 14)
> > +		intel_de_rmw(i915, MTL_PIPEDMC_CONTROL, PIPEDMC_ENABLE_MTL(pipe), 0);
> > +	else
> > +		intel_de_rmw(i915, PIPEDMC_CONTROL(pipe), PIPEDMC_ENABLE, 0);
> > +}
> > +
> >  /**
> >   * intel_dmc_load_program() - write the firmware from memory to register.
> >   * @dev_priv: i915 drm device.
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> > index 67e03315ef999..c65a5769879fc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> > @@ -13,6 +13,8 @@
> >  struct drm_i915_error_state_buf;
> >  struct drm_i915_private;
> >  
> > +enum pipe;
> > +
> >  enum {
> >  	DMC_FW_MAIN = 0,
> >  	DMC_FW_PIPEA,
> > @@ -48,6 +50,8 @@ struct intel_dmc {
> >  void intel_dmc_ucode_init(struct drm_i915_private *i915);
> >  void intel_dmc_load_program(struct drm_i915_private *i915);
> >  void intel_dmc_disable_program(struct drm_i915_private *i915);
> > +void intel_dmc_enable_pipe(struct drm_i915_private *i915, enum pipe pipe);
> > +void intel_dmc_disable_pipe(struct drm_i915_private *i915, enum pipe pipe);
> >  void intel_dmc_ucode_fini(struct drm_i915_private *i915);
> >  void intel_dmc_ucode_suspend(struct drm_i915_private *i915);
> >  void intel_dmc_ucode_resume(struct drm_i915_private *i915);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > index 5e5e41644ddfd..aac4f5465c6a2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > @@ -11,6 +11,17 @@
> >  #define DMC_PROGRAM(addr, i)	_MMIO((addr) + (i) * 4)
> >  #define DMC_SSP_BASE_ADDR_GEN9	0x00002FC0
> >  
> > +#define _PIPEDMC_CONTROL_A		0x45250
> > +#define _PIPEDMC_CONTROL_B		0x45254
> > +#define PIPEDMC_CONTROL(pipe)		_MMIO_PIPE(pipe, \
> > +						   _PIPEDMC_CONTROL_A, \
> > +						   _PIPEDMC_CONTROL_B)
> > +#define  PIPEDMC_ENABLE			REG_BIT(0)
> > +
> > +#define MTL_PIPEDMC_CONTROL		_MMIO(0x45250)
> > +#define  PIPEDMC_ENABLE_MTL(pipe)	REG_BIT(((pipe) - PIPE_A) * 4)
> > +
> > +
> >  #define _ADLP_PIPEDMC_REG_MMIO_BASE_A	0x5f000
> >  #define _TGL_PIPEDMC_REG_MMIO_BASE_A	0x92000
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > index 96395bfbd41df..52cdbd4fc2fa0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > @@ -698,8 +698,10 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
> >  
> >  		drm_crtc_vblank_reset(&crtc->base);
> >  
> > -		if (crtc_state->hw.active)
> > +		if (crtc_state->hw.active) {
> > +			intel_dmc_enable_pipe(i915, crtc->pipe);
> >  			intel_crtc_vblank_on(crtc_state);
> > +		}
> >  	}
> >  
> >  	intel_fbc_sanitize(i915);
> > -- 
> > 2.37.1
> > 
