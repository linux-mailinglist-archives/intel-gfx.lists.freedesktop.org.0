Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE73D675FB5
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 22:44:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 312E710E0F3;
	Fri, 20 Jan 2023 21:44:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B45010E0F3
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 21:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674251041; x=1705787041;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=BuTQk+0MFdkV6yegOCf2dEQmstqzNQOWt+Qlelj0Z9Q=;
 b=G3A2a7i4iXgxVc1W+G4mY880Su2NOFqcblfUBAEnJMeZuOUPaEBSkAbV
 0XB3Izn8GIX+q98RAyksBaS/ong+eA2g0mSbYp7b2jzpHiGsXYoPTpLJg
 jl9s8qxWMRk1FR5bLkAyjMLg848jqTefu+7y+Z/s5mfP+7gZbjq2R+JO1
 WTCBDA//lNo4J/gH4a/G/DwYcEce0CTJOAtpYLhwXBC8VYL30j4kbdRkP
 PIRx1WWFgUOOwlw9qKwDZ4OnsuLymLMJ5VNwdjlLjG0SHz2iTiVdLYzyM
 bqIBH2RrnFjYg+vDLTk/+lUHUkTqdKR3w+hEywffKUxEcXAb/oqL06smE A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="325741189"
X-IronPort-AV: E=Sophos;i="5.97,233,1669104000"; d="scan'208";a="325741189"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 13:44:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="906103157"
X-IronPort-AV: E=Sophos;i="5.97,233,1669104000"; d="scan'208";a="906103157"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 13:43:59 -0800
Date: Fri, 20 Jan 2023 23:43:56 +0200
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <Y8sLHOZ76VrmJokZ@ideak-desk.fi.intel.com>
References: <20230102183324.862279-1-imre.deak@intel.com>
 <Y7RRcyjbRvS0VhIK@intel.com>
 <20230120205350.2prnvfnkxnhfnnep@gjsousa-mobl2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230120205350.2prnvfnkxnhfnnep@gjsousa-mobl2>
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 20, 2023 at 05:53:50PM -0300, Gustavo Sousa wrote:
> On Tue, Jan 03, 2023 at 11:01:55AM -0500, Rodrigo Vivi wrote:
> > On Mon, Jan 02, 2023 at 08:33:24PM +0200, Imre Deak wrote:
> > > Make sure that PIPEDMCs are enabled whenever the corresponding pipe is
> > > enabled.
> > > 
> > > This is required at least by the latest ADLP v2.18 firmware, which adds
> > > a new handler enabled by default and running whenever the pipe is
> > > enabled at the vertical referesh rate.
> > > 
> > > Bspec: 50344, 67620
> > 
> > mlt hw looks a good register clean-up! why multiple registers for single bits! :)
> > 
> > > 
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > 
> > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> I ran some tests with the fast-feedback IGT testlist and can confirm
> that this patch fixes tests that, without it, would fail or timeout when
> using ADLP DMC v2.18.
> 
> If the above justifies a Tested-by tag, then:
> 
> Tested-by: Gustavo Sousa <gustavo.sousa@intel.com>
> 
> We need this merged before using the new ADLP DMC realease (v2.18).

Ok, I pushed the patch to drm-intel-next, thanks for the testing and
review.

> 
> --
> Gustavo Sousa
> 
> > 
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c  |  5 ++++
> > >  drivers/gpu/drm/i915/display/intel_dmc.c      | 24 +++++++++++++++++++
> > >  drivers/gpu/drm/i915/display/intel_dmc.h      |  4 ++++
> > >  drivers/gpu/drm/i915/display/intel_dmc_regs.h | 11 +++++++++
> > >  .../drm/i915/display/intel_modeset_setup.c    |  4 +++-
> > >  5 files changed, 47 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > index e75b9b2a0e015..ddbf22d5667a6 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -1918,6 +1918,8 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
> > >  	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
> > >  		return;
> > >  
> > > +	intel_dmc_enable_pipe(dev_priv, crtc->pipe);
> > > +
> > >  	if (!new_crtc_state->bigjoiner_pipes) {
> > >  		intel_encoders_pre_pll_enable(state, crtc);
> > >  
> > > @@ -2053,6 +2055,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
> > >  {
> > >  	const struct intel_crtc_state *old_crtc_state =
> > >  		intel_atomic_get_old_crtc_state(state, crtc);
> > > +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > >  
> > >  	/*
> > >  	 * FIXME collapse everything to one hook.
> > > @@ -2062,6 +2065,8 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
> > >  		intel_encoders_disable(state, crtc);
> > >  		intel_encoders_post_disable(state, crtc);
> > >  	}
> > > +
> > > +	intel_dmc_disable_pipe(i915, crtc->pipe);
> > >  }
> > >  
> > >  static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > index 905b5dcdca14f..fe8a8941dbf3a 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > @@ -108,6 +108,8 @@ MODULE_FIRMWARE(BXT_DMC_PATH);
> > >  #define DMC_V3_MAX_MMIO_COUNT		20
> > >  #define DMC_V1_MMIO_START_RANGE		0x80000
> > >  
> > > +#define PIPE_TO_DMC_ID(pipe)		 (DMC_FW_PIPEA + ((pipe) - PIPE_A))
> > > +
> > >  struct intel_css_header {
> > >  	/* 0x09 for DMC */
> > >  	u32 module_type;
> > > @@ -407,6 +409,28 @@ static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
> > >  				     PIPEDMC_GATING_DIS, 0);
> > >  }
> > >  
> > > +void intel_dmc_enable_pipe(struct drm_i915_private *i915, enum pipe pipe)
> > > +{
> > > +	if (!has_dmc_id_fw(i915, PIPE_TO_DMC_ID(pipe)))
> > > +		return;
> > > +
> > > +	if (DISPLAY_VER(i915) >= 14)
> > > +		intel_de_rmw(i915, MTL_PIPEDMC_CONTROL, 0, PIPEDMC_ENABLE_MTL(pipe));
> > > +	else
> > > +		intel_de_rmw(i915, PIPEDMC_CONTROL(pipe), 0, PIPEDMC_ENABLE);
> > > +}
> > > +
> > > +void intel_dmc_disable_pipe(struct drm_i915_private *i915, enum pipe pipe)
> > > +{
> > > +	if (!has_dmc_id_fw(i915, PIPE_TO_DMC_ID(pipe)))
> > > +		return;
> > > +
> > > +	if (DISPLAY_VER(i915) >= 14)
> > > +		intel_de_rmw(i915, MTL_PIPEDMC_CONTROL, PIPEDMC_ENABLE_MTL(pipe), 0);
> > > +	else
> > > +		intel_de_rmw(i915, PIPEDMC_CONTROL(pipe), PIPEDMC_ENABLE, 0);
> > > +}
> > > +
> > >  /**
> > >   * intel_dmc_load_program() - write the firmware from memory to register.
> > >   * @dev_priv: i915 drm device.
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> > > index 67e03315ef999..c65a5769879fc 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> > > @@ -13,6 +13,8 @@
> > >  struct drm_i915_error_state_buf;
> > >  struct drm_i915_private;
> > >  
> > > +enum pipe;
> > > +
> > >  enum {
> > >  	DMC_FW_MAIN = 0,
> > >  	DMC_FW_PIPEA,
> > > @@ -48,6 +50,8 @@ struct intel_dmc {
> > >  void intel_dmc_ucode_init(struct drm_i915_private *i915);
> > >  void intel_dmc_load_program(struct drm_i915_private *i915);
> > >  void intel_dmc_disable_program(struct drm_i915_private *i915);
> > > +void intel_dmc_enable_pipe(struct drm_i915_private *i915, enum pipe pipe);
> > > +void intel_dmc_disable_pipe(struct drm_i915_private *i915, enum pipe pipe);
> > >  void intel_dmc_ucode_fini(struct drm_i915_private *i915);
> > >  void intel_dmc_ucode_suspend(struct drm_i915_private *i915);
> > >  void intel_dmc_ucode_resume(struct drm_i915_private *i915);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > > index 5e5e41644ddfd..aac4f5465c6a2 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > > @@ -11,6 +11,17 @@
> > >  #define DMC_PROGRAM(addr, i)	_MMIO((addr) + (i) * 4)
> > >  #define DMC_SSP_BASE_ADDR_GEN9	0x00002FC0
> > >  
> > > +#define _PIPEDMC_CONTROL_A		0x45250
> > > +#define _PIPEDMC_CONTROL_B		0x45254
> > > +#define PIPEDMC_CONTROL(pipe)		_MMIO_PIPE(pipe, \
> > > +						   _PIPEDMC_CONTROL_A, \
> > > +						   _PIPEDMC_CONTROL_B)
> > > +#define  PIPEDMC_ENABLE			REG_BIT(0)
> > > +
> > > +#define MTL_PIPEDMC_CONTROL		_MMIO(0x45250)
> > > +#define  PIPEDMC_ENABLE_MTL(pipe)	REG_BIT(((pipe) - PIPE_A) * 4)
> > > +
> > > +
> > >  #define _ADLP_PIPEDMC_REG_MMIO_BASE_A	0x5f000
> > >  #define _TGL_PIPEDMC_REG_MMIO_BASE_A	0x92000
> > >  
> > > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > > index 96395bfbd41df..52cdbd4fc2fa0 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > > @@ -698,8 +698,10 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
> > >  
> > >  		drm_crtc_vblank_reset(&crtc->base);
> > >  
> > > -		if (crtc_state->hw.active)
> > > +		if (crtc_state->hw.active) {
> > > +			intel_dmc_enable_pipe(i915, crtc->pipe);
> > >  			intel_crtc_vblank_on(crtc_state);
> > > +		}
> > >  	}
> > >  
> > >  	intel_fbc_sanitize(i915);
> > > -- 
> > > 2.37.1
> > > 
