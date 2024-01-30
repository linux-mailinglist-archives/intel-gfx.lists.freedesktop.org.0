Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD95A84269E
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 15:05:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59BB811311C;
	Tue, 30 Jan 2024 14:05:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EB7011311C
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 14:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706623540; x=1738159540;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=LiViBOHvjNPwfgGPyZyBeeimZz9I9KLdwmtymlRiWcE=;
 b=gP2reZ6ycv2I50fv37xqo0GiSuyx7Takz6ZUSfwlBX239PUX8otp4iA5
 FRsUY0jaaGsazYrQp07eoGnwiOfqmUH1YbAsZjTE+UVo3IlN9LAQzxi0V
 g5YdgQ/FySu4RbFGq6OKyQa6L44pqG5GXXRKwJXKtVY1XwzpEfOP160BZ
 JqUKSMZ58Rl4eBIUqfp4XIErUpMcZ/WykrbliYDTjU1C2FoeF49PZh7aU
 TJ+re+lZsThGUDiuReU4lndvAs/AsxqiAnHQ64hmCKJTrwzHQHJcKer7+
 cQixtOBqFlcW8UKs6k8GgSp+CdWPyzz0lsUcRTK1UBXQ0Cu6yg0cjISs4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="2223554"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; 
   d="scan'208";a="2223554"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 06:05:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="858499520"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="858499520"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 06:05:36 -0800
Date: Tue, 30 Jan 2024 16:05:53 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 1/6] drm/i915/adlp: Add MST FEC BS jitter WA
 (Wa_14013163432)
Message-ID: <ZbkB9NHc2cO5Te7R@ideak-desk.fi.intel.com>
References: <20240129175533.904590-1-imre.deak@intel.com>
 <20240129175533.904590-2-imre.deak@intel.com>
 <03994206-48f4-4784-be85-fedacdded17e@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <03994206-48f4-4784-be85-fedacdded17e@intel.com>
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

On Tue, Jan 30, 2024 at 07:18:25PM +0530, Nautiyal, Ankit K wrote:
> 
> On 1/29/2024 11:25 PM, Imre Deak wrote:
> > Add a workaround to fix BS (blank start) to BS jitter issues on MST
> > links when FEC is enabled. Neither Bspec requires this nor Windows
> > clears the WA when disabling the output - presumedly because
> > CHICKEN_MISC_3 gets reset after disabling the pipe/transcoder - so
> > follow suit.
> > 
> > Bspec: 50050, 55424
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_dp_mst.c | 24 +++++++++++++++++++++
> >   drivers/gpu/drm/i915/i915_reg.h             |  3 +++
> >   2 files changed, 27 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 5fa25a5a36b55..22c1759f912db 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -1106,6 +1106,28 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
> >   	intel_ddi_set_dp_msa(pipe_config, conn_state);
> >   }
> > +static void enable_bs_jitter_was(const struct intel_crtc_state *crtc_state)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> > +	u32 clear = 0;
> > +	u32 set = 0;
> > +
> > +	if (!IS_ALDERLAKE_P(i915))
> > +		return;
> > +
> > +	if (!IS_DISPLAY_STEP(i915, STEP_D0, STEP_FOREVER))
> > +		return;
> > +
> > +	/* Wa_14013163432:adlp */
> > +	if (crtc_state->fec_enable || intel_dp_is_uhbr(crtc_state))
> 
> Is this for DP MST + UHBR and DP MST + FEC?
> 
> From Bspec it seems this is meant only for MST+ FEC case, unless I am
> missing something.

You mean not meant for UHBR? The register description is clearer than
the modeset page, requiring it for both non-UHBR and UHBR. Windows also
enables it for both.

> > +		set |= DP_MST_FEC_BS_JITTER_WA(crtc_state->cpu_transcoder);
> > +
> > +	if (!clear && !set)
> > +		return;
> > +
> > +	intel_de_rmw(i915, CHICKEN_MISC_3, clear, set);
> > +}
> > +
> >   static void intel_mst_enable_dp(struct intel_atomic_state *state,
> >   				struct intel_encoder *encoder,
> >   				const struct intel_crtc_state *pipe_config,
> > @@ -1134,6 +1156,8 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
> >   			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz & 0xffffff));
> >   	}
> > +	enable_bs_jitter_was(pipe_config);
> > +
> >   	intel_ddi_enable_transcoder_func(encoder, pipe_config);
> >   	clear_act_sent(encoder, pipe_config);
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index 75bc08081fce9..67b7d02ea37bf 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -4555,6 +4555,9 @@
> >   #define   GLK_CL1_PWR_DOWN		REG_BIT(11)
> >   #define   GLK_CL0_PWR_DOWN		REG_BIT(10)
> > +#define CHICKEN_MISC_3		_MMIO(0x42088)
> > +#define   DP_MST_FEC_BS_JITTER_WA(trans)	REG_BIT(0 + (trans) - TRANSCODER_A)
> 
> 
> Should we mention /* adlp */ here?

In the register description the flag is valid for other platforms too,
even though it's only enabled for ADLP/RPLP.

> Regards,
> 
> Ankit
> 
> > +
> >   #define CHICKEN_MISC_4		_MMIO(0x4208c)
> >   #define   CHICKEN_FBC_STRIDE_OVERRIDE	REG_BIT(13)
> >   #define   CHICKEN_FBC_STRIDE_MASK	REG_GENMASK(12, 0)
