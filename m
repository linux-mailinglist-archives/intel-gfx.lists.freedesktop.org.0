Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39ABF77DE57
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 12:16:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 738BC10E324;
	Wed, 16 Aug 2023 10:16:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11A1110E324
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 10:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692181016; x=1723717016;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=XYLt6Sfk0lqYb11gx5ISJCnlzvpslDKKoId8CSzlxxs=;
 b=eVX2/ePvQAkGRxQe4HTaRO+WTwRQwBQ5VlxsdAC5exodoLvJJbhyXr9Q
 7tVN1LS8NSYmcgeOe16XsgvcOy705iLCgpRpXGZ2tdMNZ7i8S5v4j27d4
 PAODd+p05YCdyILYrirInEjY6s+m3XIcBUzVcQLAu1svTpBfQaNNm1BC1
 YHv9++MZXQi20sxOQPV7jWnpICSJ7R/zWgPAEaLWF+eootZPFsr8pFEGE
 Glu4Gg6GWaUFz0VaFqLr6wfcxZBfXCw7NmgX4ruJ7Ax9H0Q49iitmbmPg
 5MG6pC4XKv1jnte9wvwM5r9MebBN/eVoihqp4aI1bW1lH44g1RE0OJbeD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="369966340"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="369966340"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 03:16:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="734151668"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="734151668"
Received: from golubevv-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.52.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 03:16:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <SN7PR11MB6750232E19CD74866D061BD4E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230808081134.4187416-1-suraj.kandpal@intel.com>
 <20230808081134.4187416-5-suraj.kandpal@intel.com>
 <87r0o39w46.fsf@intel.com>
 <SN7PR11MB6750232E19CD74866D061BD4E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Wed, 16 Aug 2023 13:16:49 +0300
Message-ID: <87jztv9tri.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v7 4/8] drm/i915/vdsc: Add function to read
 any PPS register
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

On Wed, 16 Aug 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> 
>> On Tue, 08 Aug 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>> > Add function to read any PPS register based on the intel_dsc_pps enum
>> > provided. Add a function which will call the new pps read function and
>> > place it in crtc state. Only PPS0 and
>> > PPS1 are readout the rest of the registers will be read in upcoming
>> > patches.
>> >
>> > --v2
>> > -Changes in read function as PPS enum is removed -Initialize pps_val
>> > as 0 in pps_read func itself [Jani] -Create a function that gets the
>> > required register and call that in the common read function [Jani]
>> > -Move the drm_WARN_ON one abstraction layer above [Jani]
>> >
>> > --v3
>> > -Send both reg values regardless of dsc engine no [Jani] -Don't use
>> > num_vdsc_instances stick to dsc_split field [Ankit]
>> >
>> > --v4
>> > -Manipulate the reg values instead of creating MACRO to change name of
>> > pps [Ankit]
>> >
>> > --v5
>> > -Read dsc reg values using array rather than individual variables
>> > [Ankit] -Loop the verification of all dsc engine reads to future proof
>> > it [Ankit] -Keep the fix me comment in this patch and remove it in
>> > later one where we add other readouts [Ankit] -Add switch statement
>> > that fills in the required registers based on no of vdsc engines per
>> > pipe.
>> >
>> > --v7
>> > -Pass no of vdsc instances from read_reg function [Ankit] -Fix issue
>> > where arrays do not get freed on return for read_and_verify func
>> > [Ankit]
>> >
>> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_vdsc.c     | 129 +++++++++++++-----
>> >  .../gpu/drm/i915/display/intel_vdsc_regs.h    |  12 ++
>> >  2 files changed, 105 insertions(+), 36 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> > index dc86514d9e17..aa93228ca7af 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> > @@ -365,6 +365,28 @@ int intel_dsc_get_num_vdsc_instances(const
>> struct intel_crtc_state *crtc_state)
>> >  	return num_vdsc_instances;
>> >  }
>> >
>> > +static void intel_dsc_get_pps_reg(const struct intel_crtc_state
>> *crtc_state, int pps,
>> > +				  i915_reg_t *dsc_reg, int no_vdsc_per_pipe)
>> {
>> > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> > +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> > +	enum pipe pipe = crtc->pipe;
>> > +	bool pipe_dsc;
>> 
>> Matter of taste, but to me that's four local variables too many for small things
>> like this.
>> 
>> > +
>> > +	pipe_dsc = is_pipe_dsc(crtc, cpu_transcoder);
>> > +
>> > +	switch (no_vdsc_per_pipe) {
>> > +	case 2:
>> > +		dsc_reg[1] = pipe_dsc ? ICL_DSC1_PPS_REG(pipe, pps) :
>> DSCC_PPS_REG(pps);
>> > +		fallthrough;
>> > +	case 1:
>> > +		dsc_reg[0] = pipe_dsc ? ICL_DSC0_PPS_REG(pipe, pps) :
>> DSCA_PPS_REG(pps);
>> > +		break;
>> > +	default:
>> > +		MISSING_CASE(no_vdsc_per_pipe);
>> > +	}
>> > +}
>> > +
>> >  static void intel_dsc_pps_configure(const struct intel_crtc_state
>> > *crtc_state)  {
>> >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> > @@ -994,17 +1016,83 @@ void intel_dsc_disable(const struct
>> intel_crtc_state *old_crtc_state)
>> >  	}
>> >  }
>> >
>> > +static int intel_dsc_read_pps_reg(struct intel_crtc_state *crtc_state,
>> > +				  int pps, u32 *pps_val)
>> > +{
>> > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> > +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>> > +	const int no_vdsc_per_pipe =
>> intel_dsc_get_vdsc_per_pipe(crtc_state);
>> > +	i915_reg_t *dsc_reg;
>> > +	u32 *pps_temp;
>> > +	int i, ret = 0;
>> > +
>> > +	dsc_reg = kcalloc(no_vdsc_per_pipe, sizeof(dsc_reg), GFP_KERNEL);
>> > +	if (!dsc_reg)
>> > +		return -ENOMEM;
>> > +
>> > +	pps_temp = kcalloc(no_vdsc_per_pipe, sizeof(pps_temp),
>> GFP_KERNEL);
>> > +	if (!pps_temp) {
>> > +		kfree(dsc_reg);
>> > +		return -ENOMEM;
>> > +	}
>> 
>> no_vdsc_per_pipe is at most 2. Temporary dynamic allocation is way overkill
>> here.
>
> Yes but Ankit was of the thought that we can future proof this going forward if by any chance we get more dsc engines

Keep it simple. There's going to have to be quite a few engines per pipe
before this needs to be dynamically allocated. This is also future
proof, and we'll only need to update one value to expand to more.

	i915_reg_t dsc_reg[2];

	drm_WARN_ON_ONCE(&i915->drm, ARRAY_SIZE(dsc_reg) < intel_dsc_get_vdsc_per_pipe(crtc_state));

	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, ARRAY_SIZE(dsc_reg));

	for (i = 0; i < min(ARRAY_SIZE(dsc_reg), intel_dsc_get_vdsc_per_pipe(crtc_state)); i++) {
        	u32 val;

	        val = intel_de_read(i915, dsc_reg[i])

                if (i == 0)
                	*pps_val = val;
                else if (val != *pps_val)
                	return -EINVAL;
	}

	return 0;

Adjust intel_dsc_get_pps_reg() accordingly to respect size of the
dsc_reg destination:

static void intel_dsc_get_pps_reg(const struct intel_crtc_state *crtc_state, int pps,
				  i915_reg_t *dsc_reg, int dsc_reg_size)

>
>> 
>> > +
>> > +	*pps_val = 0;
>> > +	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, no_vdsc_per_pipe);
>> > +	*pps_val = intel_de_read(i915, dsc_reg[0]);
>> > +	if (no_vdsc_per_pipe > 1) {
>> > +		for (i = 0; i < no_vdsc_per_pipe - 1; i++) {
>> > +			pps_temp[i] = intel_de_read(i915, dsc_reg[i]);
>> > +			pps_temp[i + 1] = intel_de_read(i915, dsc_reg[i + 1]);
>> > +			if (pps_temp[i] != pps_temp[i + 1]) {
>> > +				ret = 1;

Please don't use random magic numbers for return codes.

>> > +				break;
>> > +			}
>> > +		}
>> > +	}
>> 
>> What is going on here? Feels like this has grown way more complicated than
>> it needs to be since I last looked at this series. :(
>
> In case of more than 2 vdsc engines (just for future proofing) this loops looks at all the registers being used for
> that pipe and makes sure everyone has the same value

Right. But for that you only need to store one value to compare, not all
of them.

Always try to find the simple solution!


BR,
Jani.

>
> Regards,
> Suraj Kandpal
>> 
>> > +
>> > +	kfree(dsc_reg);
>> > +	kfree(pps_temp);
>> > +	return ret;
>> > +}
>> > +
>> > +static void intel_dsc_read_and_verify_pps_reg(struct intel_crtc_state
>> *crtc_state,
>> > +					      int pps, u32 *pps_val)
>> > +{
>> > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> > +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>> > +	int ret;
>> > +
>> > +	ret = intel_dsc_read_pps_reg(crtc_state, pps, pps_val);
>> > +	drm_WARN_ON(&i915->drm, ret);
>> > +}
>> > +
>> > +static void intel_dsc_get_pps_config(struct intel_crtc_state
>> > +*crtc_state) {
>> > +	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>> > +	u32 pps_temp1, pps_temp2;
>> > +
>> > +	/* FIXME: add more state readout as needed */
>> > +
>> > +	/* Readout PPS_0 and PPS_1 registers */
>> > +	intel_dsc_read_and_verify_pps_reg(crtc_state, 0, &pps_temp1);
>> > +	intel_dsc_read_and_verify_pps_reg(crtc_state, 1, &pps_temp2);
>> > +
>> > +	vdsc_cfg->bits_per_pixel = pps_temp2;
>> > +
>> > +	if (pps_temp1 & DSC_NATIVE_420_ENABLE)
>> > +		vdsc_cfg->bits_per_pixel >>= 1;
>> > +
>> > +	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4; }
>> > +
>> >  void intel_dsc_get_config(struct intel_crtc_state *crtc_state)  {
>> >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> >  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>> > -	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>> >  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> > -	enum pipe pipe = crtc->pipe;
>> >  	enum intel_display_power_domain power_domain;
>> >  	intel_wakeref_t wakeref;
>> > -	u32 dss_ctl1, dss_ctl2, pps0 = 0, pps1 = 0, pps_temp0, pps_temp1;
>> > -	int no_vdsc_instances_per_pipe;
>> > +	u32 dss_ctl1, dss_ctl2;
>> >
>> >  	if (!intel_dsc_source_support(crtc_state))
>> >  		return;
>> > @@ -1025,38 +1113,7 @@ void intel_dsc_get_config(struct intel_crtc_state
>> *crtc_state)
>> >  	crtc_state->dsc.dsc_split = (dss_ctl2 &
>> RIGHT_BRANCH_VDSC_ENABLE) &&
>> >  		(dss_ctl1 & JOINER_ENABLE);
>> >
>> > -	/* FIXME: add more state readout as needed */
>> > -
>> > -	no_vdsc_instances_per_pipe =
>> intel_dsc_get_vdsc_per_pipe(crtc_state);
>> > -
>> > -	/* PPS0 & PPS1 */
>> > -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>> > -		pps1 = intel_de_read(dev_priv,
>> DSCA_PICTURE_PARAMETER_SET_1);
>> > -		if (no_vdsc_instances_per_pipe > 1) {
>> > -			pps_temp1 = intel_de_read(dev_priv,
>> DSCC_PICTURE_PARAMETER_SET_1);
>> > -			drm_WARN_ON(&dev_priv->drm, pps1 !=
>> pps_temp1);
>> > -		}
>> > -	} else {
>> > -		pps0 = intel_de_read(dev_priv,
>> > -
>> ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
>> > -		pps1 = intel_de_read(dev_priv,
>> > -
>> ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
>> > -		if (no_vdsc_instances_per_pipe > 1) {
>> > -			pps_temp0 = intel_de_read(dev_priv,
>> > -
>> ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe));
>> > -			pps_temp1 = intel_de_read(dev_priv,
>> > -
>> ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe));
>> > -			drm_WARN_ON(&dev_priv->drm, pps0 !=
>> pps_temp0);
>> > -			drm_WARN_ON(&dev_priv->drm, pps1 !=
>> pps_temp1);
>> > -		}
>> > -	}
>> > -
>> > -	vdsc_cfg->bits_per_pixel = pps1;
>> > -
>> > -	if (pps0 & DSC_NATIVE_420_ENABLE)
>> > -		vdsc_cfg->bits_per_pixel >>= 1;
>> > -
>> > -	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
>> > +	intel_dsc_get_pps_config(crtc_state);
>> >  out:
>> >  	intel_display_power_put(dev_priv, power_domain, wakeref);  } diff
>> > --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
>> > b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
>> > index 785ede31116e..862dc708c5fc 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
>> > @@ -78,6 +78,10 @@
>> >  /* Icelake Display Stream Compression Registers */
>> >  #define DSCA_PICTURE_PARAMETER_SET_0		_MMIO(0x6B200)
>> >  #define DSCC_PICTURE_PARAMETER_SET_0		_MMIO(0x6BA00)
>> > +#define DSCA_PPS_0				0x6B200
>> > +#define DSCC_PPS_0				0x6BA00
>> > +#define DSCA_PPS_REG(pps)			_MMIO(DSCA_PPS_0
>> + (pps) * 4)
>> > +#define DSCC_PPS_REG(pps)			_MMIO(DSCC_PPS_0
>> + (pps) * 4)
>> >  #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB	0x78270
>> >  #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB	0x78370
>> >  #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC	0x78470
>> > @@ -88,6 +92,14 @@
>> >  #define ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe)
>> 	_MMIO_PIPE((pipe) - PIPE_B, \
>> >
>> _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
>> >
>> _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
>> > +#define ICL_DSC0_PPS_0(pipe)			_PICK_EVEN((pipe) -
>> PIPE_B, \
>> > +
>> _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB, \
>> > +
>> _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC)
>> > +#define ICL_DSC1_PPS_0(pipe)			_PICK_EVEN((pipe) -
>> PIPE_B, \
>> > +
>> _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
>> > +
>> _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
>> > +#define  ICL_DSC0_PPS_REG(pipe, pps)
>> 	_MMIO(ICL_DSC0_PPS_0(pipe) + ((pps) * 4))
>> > +#define  ICL_DSC1_PPS_REG(pipe, pps)
>> 	_MMIO(ICL_DSC1_PPS_0(pipe) + ((pps) * 4))
>> >  #define  DSC_NATIVE_422_ENABLE		BIT(23)
>> >  #define  DSC_NATIVE_420_ENABLE		BIT(22)
>> >  #define  DSC_ALT_ICH_SEL		(1 << 20)
>> 
>> --
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
