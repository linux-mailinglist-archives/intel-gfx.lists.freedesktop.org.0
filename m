Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C029E39B53E
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 10:54:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFE356F5D1;
	Fri,  4 Jun 2021 08:54:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD9856F5D1
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 08:54:25 +0000 (UTC)
IronPort-SDR: jm/GK3FVHgn1uvEt/vloECsFQvLAwX4Hp7mmBnIntJufH82FAnjhLtvBEUBSIHXsU6KkBohjP4
 VxT6Pw7lldFQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10004"; a="225566884"
X-IronPort-AV: E=Sophos;i="5.83,247,1616482800"; d="scan'208";a="225566884"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 01:54:25 -0700
IronPort-SDR: Qi/OjTPFjle0h2Ux4ALtI5aKRUECmyLH7dwrgXbZQ0TWg/yinfd9SO7XIpCRTuf1NXWUPO2W9/
 XiE1MqYX8AWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,247,1616482800"; d="scan'208";a="618199786"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga005.jf.intel.com with ESMTP; 04 Jun 2021 01:54:22 -0700
Received: from bgsmsx601.gar.corp.intel.com (10.109.78.80) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 4 Jun 2021 01:54:21 -0700
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 BGSMSX601.gar.corp.intel.com (10.109.78.80) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 4 Jun 2021 14:24:18 +0530
Received: from bgsmsx606.gar.corp.intel.com ([10.67.234.8]) by
 BGSMSX606.gar.corp.intel.com ([10.67.234.8]) with mapi id 15.01.2242.008;
 Fri, 4 Jun 2021 14:24:18 +0530
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [CI 15/19] drm/i915/bigjoiner: atomic commit changes
 for uncompressed joiner
Thread-Index: AQHXSNc9FInWnuQIb0SjW/tIEOKo3qsByukAgACVrkD//89mAIABe6sA
Date: Fri, 4 Jun 2021 08:54:18 +0000
Message-ID: <ed77f7820f534b209af7248ed70025be@intel.com>
References: <20210514153711.2359617-1-matthew.d.roper@intel.com>
 <20210514153711.2359617-16-matthew.d.roper@intel.com>
 <87fsxzp9qx.fsf@intel.com> <2a72b3e624e748ca9fd22e84b644d2fa@intel.com>
 <87zgw7nefj.fsf@intel.com>
In-Reply-To: <87zgw7nefj.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [CI 15/19] drm/i915/bigjoiner: atomic commit
 changes for uncompressed joiner
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Thursday, June 3, 2021 9:12 PM
> To: Manna, Animesh <animesh.manna@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Navare, Manasi D <manasi.d.navare@intel.com>; Kulkarni, Vandita
> <vandita.kulkarni@intel.com>
> Subject: RE: [Intel-gfx] [CI 15/19] drm/i915/bigjoiner: atomic commit changes
> for uncompressed joiner
> 
> On Thu, 03 Jun 2021, "Manna, Animesh" <animesh.manna@intel.com> wrote:
> >> -----Original Message-----
> >> From: Jani Nikula <jani.nikula@linux.intel.com>
> >> Sent: Thursday, June 3, 2021 3:10 PM
> >> To: Roper, Matthew D <matthew.d.roper@intel.com>; intel-
> >> gfx@lists.freedesktop.org
> >> Cc: Manna, Animesh <animesh.manna@intel.com>; Navare, Manasi D
> >> <manasi.d.navare@intel.com>; Kulkarni, Vandita
> >> <vandita.kulkarni@intel.com>
> >> Subject: Re: [Intel-gfx] [CI 15/19] drm/i915/bigjoiner: atomic commit
> >> changes for uncompressed joiner
> >>
> >> On Fri, 14 May 2021, Matt Roper <matthew.d.roper@intel.com> wrote:
> >> > From: Animesh Manna <animesh.manna@intel.com>
> >> >
> >> > Respective bit for master or slave to be set for uncompressed
> >> > bigjoiner in dss_ctl1 register.
> >>
> >> I was looking at the changes here due to a static checker complaint,
> >> and I think there are a number of issues here. Some more serious than
> >> others, and some predate the patch.
> >>
> >> Comments inline.
> >>
> >> > Cc: Manasi Navare <manasi.d.navare@intel.com>
> >> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> >> > Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
> >> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> >> > Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_display.c |  6 +++
> >> >  drivers/gpu/drm/i915/display/intel_vdsc.c    | 40 +++++++++++++++++++-
> >> >  drivers/gpu/drm/i915/display/intel_vdsc.h    |  2 +
> >> >  drivers/gpu/drm/i915/i915_reg.h              |  2 +
> >> >  4 files changed, 49 insertions(+), 1 deletion(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> >> > b/drivers/gpu/drm/i915/display/intel_display.c
> >> > index b5fd721137d3..422b59ebf6dc 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> > @@ -3411,6 +3411,7 @@ static void
> >> > icl_ddi_bigjoiner_pre_enable(struct
> >> intel_atomic_state *state,
> >> >  					 const struct intel_crtc_state
> >> *crtc_state)  {
> >> >  	struct intel_crtc *master = to_intel_crtc(crtc_state->uapi.crtc);
> >> > +	struct drm_i915_private *dev_priv = to_i915(master->base.dev);
> >> >  	struct intel_crtc_state *master_crtc_state;
> >> >  	struct drm_connector_state *conn_state;
> >> >  	struct drm_connector *conn;
> >> > @@ -3444,6 +3445,9 @@ static void
> >> > icl_ddi_bigjoiner_pre_enable(struct
> >> intel_atomic_state *state,
> >> >  		/* and DSC on slave */
> >> >  		intel_dsc_enable(NULL, crtc_state);
> >> >  	}
> >> > +
> >> > +	if (DISPLAY_VER(dev_priv) >= 13)
> >> > +		intel_uncompressed_joiner_enable(crtc_state);
> >> >  }
> >> >
> >> >  static void hsw_crtc_enable(struct intel_atomic_state *state, @@
> >> > -6250,6 +6254,8 @@ static bool hsw_get_pipe_config(struct intel_crtc
> *crtc,
> >> >  	}
> >> >
> >> >  	intel_dsc_get_config(pipe_config);
> >> > +	if (DISPLAY_VER(dev_priv) >= 13 && !pipe_config-
> >> >dsc.compression_enable)
> >> > +		intel_uncompressed_joiner_get_config(pipe_config);
> >> >
> >> >  	if (!active) {
> >> >  		/* bigjoiner slave doesn't enable transcoder */ diff --git
> >> > a/drivers/gpu/drm/i915/display/intel_vdsc.c
> >> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> >> > index adcd6752f919..efc3184d8315 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> >> > @@ -1021,6 +1021,22 @@ static i915_reg_t dss_ctl2_reg(const struct
> >> intel_crtc_state *crtc_state)
> >> >  	return is_pipe_dsc(crtc_state) ? ICL_PIPE_DSS_CTL2(pipe) :
> >> > DSS_CTL2; }
> >> >
> >> > +void intel_uncompressed_joiner_enable(const struct
> >> > +intel_crtc_state
> >> > +*crtc_state)
> >>
> >> Naming. Basically for any new function, the function name prefix
> >> should match the file name. intel_vdsc.[ch] should have functions
> >> prefixed intel_vdsc_*(). This is where we're headed to increase clarity.
> >>
> >> intel_uncompressed_*() is something completely different.
> >>
> >> Granted, here we already have intel_dsc_*() in intel_vdsc.c. We
> >> should probably stick with intel_dsc_*(). A possible function or file
> >> rename is not out of the question, but that's a separate matter.
> >
> > As there is not separate register for uncompressed joiner, using bitfield of dsc
> register only the function name can be changed to
> intel_dsc_uncompressed_joiner_enable().
> >
> >>
> >> > +{
> >> > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >> > +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> >> > +	u32 dss_ctl1_val = 0;
> >> > +
> >> > +	if (crtc_state->bigjoiner && !crtc_state->dsc.compression_enable) {
> >> > +		if (crtc_state->bigjoiner_slave)
> >> > +			dss_ctl1_val |= UNCOMPRESSED_JOINER_SLAVE;
> >> > +		else
> >> > +			dss_ctl1_val |= UNCOMPRESSED_JOINER_MASTER;
> >> > +
> >> > +		intel_de_write(dev_priv, dss_ctl1_reg(crtc_state), dss_ctl1_val);
> >> > +	}
> >> > +}
> >> > +
> >> >  void intel_dsc_enable(struct intel_encoder *encoder,
> >> >  		      const struct intel_crtc_state *crtc_state)  { @@ -1060,13
> >> > +1076,35 @@ void intel_dsc_disable(const struct intel_crtc_state
> >> *old_crtc_state)
> >> >  	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
> >> >  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> >> >
> >> > -	if (!old_crtc_state->dsc.compression_enable)
> >> > +	if (!(old_crtc_state->dsc.compression_enable &&
> >> > +	      old_crtc_state->bigjoiner))
> >>
> >> This fails to disable compression if we only have compression but no
> >> bigjoiner, which is the more common case!
> >>
> >> See also:
> >>
> >> https://gitlab.freedesktop.org/drm/intel/-/issues/3537
> >> https://patchwork.freedesktop.org/patch/msgid/20210603065356.15435-1-
> >> vandita.kulkarni@intel.com
> >>
> >
> > We may need to remove both the condition check.
> > In uncompressed bigjoiner, compression_enable flag will be 0 and may not
> clear the bit of dss_ctl1_reg.
> > So can we remove both the checks, hoping it will not harm reseting the
> register even if it is not set.
> 
> Now it only disables if *both* were enabled. It needs to be disabled if
> *either* was enabled. But if *neither* was enabled, we don't need to do this.

Ok.

> 
> 
> >
> >> >  		return;
> >> >
> >> >  	intel_de_write(dev_priv, dss_ctl1_reg(old_crtc_state), 0);
> >> >  	intel_de_write(dev_priv, dss_ctl2_reg(old_crtc_state), 0);  }
> >> >
> >> > +void intel_uncompressed_joiner_get_config(struct intel_crtc_state
> >> > +*crtc_state) {
> >> > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >> > +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> >> > +	u32 dss_ctl1;
> >> > +
> >> > +	dss_ctl1 = intel_de_read(dev_priv, dss_ctl1_reg(crtc_state));
> >> > +	if (dss_ctl1 & UNCOMPRESSED_JOINER_MASTER) {
> >> > +		crtc_state->bigjoiner = true;
> >> > +		if (!WARN_ON(INTEL_NUM_PIPES(dev_priv) == crtc->pipe + 1))
> >> > +			crtc_state->bigjoiner_linked_crtc =
> >> > +				intel_get_crtc_for_pipe(dev_priv, crtc->pipe +
> >> 1);
> >> > +	} else if (dss_ctl1 & UNCOMPRESSED_JOINER_SLAVE) {
> >> > +		crtc_state->bigjoiner = true;
> >> > +		crtc_state->bigjoiner_slave = true;
> >> > +		if (!WARN_ON(crtc->pipe == PIPE_A))
> >> > +			crtc_state->bigjoiner_linked_crtc =
> >> > +				intel_get_crtc_for_pipe(dev_priv, crtc->pipe -
> >> 1);
> >> > +	}
> >>
> >> Nitpick: This duplicates a bunch of logic for figuring out master/slave.
> >>
> >> The static checker warning was about crtc->pipe + 1 usage. Since
> >> INTEL_NUM_PIPES() looks at the hamming weight of i915->pipe_mask, the
> >> checker has a hard time figuring out it does not overflow
> >> i915->pipe_to_crtc_mapping[] in intel_get_crtc_for_pipe().
> >>
> >> So here in intel_vdsc.c the checks are for overflowing/underflowing
> >> the pipe range. In intel_get_crtc_for_pipe() there's a check for the
> >> pipe actually existing - the pipe numbering might not be contiguous.
> >>
> >> Superficially the static checker warning is bogus, as in we won't
> >> overflow anything. However, deep down there are issues in the
> >> consistency of the checks and how to handle non-contigouous pipe
> numbering.
> >>
> >> Indeed, this does not *need* the number. We should figure out the
> >> next *crtc*, not the next pipe *number*, which may or may not be pipe + 1.
> >
> > dss_ctl1 value is used to identify master or slave crtc. If needed WARN_ON
> check can be removed... but pipe enum values like PIPE_A/B/C/D is used to get
> the master/slave crtc and always bigjoiner is possible with two adjacent pipes.
> 
> I sent the patch for this and you reviewed it... but are adjacent pipes a
> requirement for bigjoiner? Would e.g. A+C work if B was fused off? If not, my
> patch 2/2 is incorrect.

Yes, I am also tried to check again in bspec. Adjacent pipe is needed for bigjoiner though have not mentioned anything in case of pipe fusing.

Regards,
Animesh

> 
> BR,
> Jani.
> 
> 
> >
> > Regards,
> > Animesh
> >
> >>
> >>
> >> BR,
> >> Jani.
> >>
> >> > +}
> >> > +
> >> >  void intel_dsc_get_config(struct intel_crtc_state *crtc_state)  {
> >> >  	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config; diff
> >> > --git a/drivers/gpu/drm/i915/display/intel_vdsc.h
> >> > b/drivers/gpu/drm/i915/display/intel_vdsc.h
> >> > index 65d301c23580..fe4d45561253 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
> >> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
> >> > @@ -12,11 +12,13 @@ struct intel_encoder;  struct intel_crtc_state;
> >> >
> >> >  bool intel_dsc_source_support(const struct intel_crtc_state
> >> > *crtc_state);
> >> > +void intel_uncompressed_joiner_enable(const struct
> >> > +intel_crtc_state *crtc_state);
> >> >  void intel_dsc_enable(struct intel_encoder *encoder,
> >> >  		      const struct intel_crtc_state *crtc_state);  void
> >> > intel_dsc_disable(const struct intel_crtc_state *crtc_state);  int
> >> > intel_dsc_compute_params(struct intel_encoder *encoder,
> >> >  			     struct intel_crtc_state *pipe_config);
> >> > +void intel_uncompressed_joiner_get_config(struct intel_crtc_state
> >> > +*crtc_state);
> >> >  void intel_dsc_get_config(struct intel_crtc_state *crtc_state);
> >> > enum intel_display_power_domain  intel_dsc_power_domain(const
> >> > struct intel_crtc_state *crtc_state); diff --git
> >> > a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> >> > index 31bc413dbba1..dd6e0bae9573 100644
> >> > --- a/drivers/gpu/drm/i915/i915_reg.h
> >> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> >> > @@ -11493,6 +11493,8 @@ enum skl_power_gate {
> >> >  #define  SPLITTER_CONFIGURATION_MASK		REG_GENMASK(26, 25)
> >> >  #define  SPLITTER_CONFIGURATION_2_SEGMENT
> >> 	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 0)
> >> >  #define  SPLITTER_CONFIGURATION_4_SEGMENT
> >> 	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 1)
> >> > +#define  UNCOMPRESSED_JOINER_MASTER		(1 << 21)
> >> > +#define  UNCOMPRESSED_JOINER_SLAVE		(1 << 20)
> >> >
> >> >  #define _ICL_PIPE_DSS_CTL2_PB			0x78204
> >> >  #define _ICL_PIPE_DSS_CTL2_PC			0x78404
> >>
> >> --
> >> Jani Nikula, Intel Open Source Graphics Center
> 
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
