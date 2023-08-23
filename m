Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34AAE7856B6
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 13:30:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5DA610E080;
	Wed, 23 Aug 2023 11:30:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0397E10E080
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Aug 2023 11:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692790222; x=1724326222;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=S3k/GZS67uBnpnvNJ4iQuq3SNeRlja0s7iVIta0pE0g=;
 b=WEma/h0j9/k6OUfmjo23iAVXUn33hmc3TTlwtLqpJV9RhiNGOu7XXIPH
 xOjo3M1+H1JzJ3ELBROViNj2m5Qk4sGtNyPl9p9pX9iO0fWtp1dF6WjJ4
 MMt3kS3BcUCMNCNa2oP1PgdbFN7+J92Up7166gN0ioMYDbTpUSD0H4Ov3
 NjRQlgDj+spPy3ANnpGiEF7bE6jW/VqRyJjh82rluyc0yMAWFPbM2Rew3
 k/uQlNDFuH4F1NlGJtSoI9v+i8bKuPIeZS+sjpsbeSiVfpU7aZgQLWDnq
 ipNPBG3ZHnbXqmTLW00y1pbpQF3KBRs3cF43tLJ5ItuCovaeus/atCxc8 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="353687191"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="353687191"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 04:30:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="851013871"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="851013871"
Received: from vrohpcvpnmu01.ger.corp.intel.com (HELO localhost)
 ([10.252.55.114])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 04:30:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230823104736.495930-5-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230823104736.495930-1-suraj.kandpal@intel.com>
 <20230823104736.495930-5-suraj.kandpal@intel.com>
Date: Wed, 23 Aug 2023 14:30:16 +0300
Message-ID: <878ra2573r.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v11 4/8] drm/i915/vdsc: Add function to read
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

On Wed, 23 Aug 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Add function to read any PPS register based on the
> intel_dsc_pps enum provided. Add a function which will call the
> new pps read function and place it in crtc state. Only PPS0 and
> PPS1 are readout the rest of the registers will be read in upcoming
> patches.
>
> --v2
> -Changes in read function as PPS enum is removed
> -Initialize pps_val as 0 in pps_read func itself [Jani]
> -Create a function that gets the required register and call that
> in the common read function [Jani]
> -Move the drm_WARN_ON one abstraction layer above [Jani]
>
> --v3
> -Send both reg values regardless of dsc engine no [Jani]
> -Don't use num_vdsc_instances stick to dsc_split field [Ankit]
>
> --v4
> -Manipulate the reg values instead of creating MACRO to change
> name of pps [Ankit]
>
> --v5
> -Read dsc reg values using array rather than individual variables
> [Ankit]
> -Loop the verification of all dsc engine reads to future proof it
> [Ankit]
> -Keep the fix me comment in this patch and remove it in later one
> where we add other readouts [Ankit]
> -Add switch statement that fills in the required registers based on
> no of vdsc engines per pipe.
>
> --v7
> -Pass no of vdsc instances from read_reg function [Ankit]
> -Fix issue where arrays do not get freed on return for read_and_verify
> func [Ankit]
>
> --v8
> -Simplify reading and verifying of register and remove dynamically
> allocated arrays [Jani]
> -Remove no_ from no_vdsc_per_pipe and wherever else it applies [Ankit]
>
> --v9
> -change variable name to dsc_reg_size rather than vdsc_per_pipe [Ankit]
>
> --v10
> -remove switch case as we never enter case1 [Ankit]
>
> --v11
> -Add _ prefix for register that are not supposed to be used directly
> [Jani]
> -Remove REG suffix from register macros [Jani]
> -Do not duplicate register read [Jani]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c     | 113 ++++++++++++------
>  .../gpu/drm/i915/display/intel_vdsc_regs.h    |  12 ++
>  2 files changed, 89 insertions(+), 36 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index fbe8ce9fe1ab..5ddccde7ee6f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -371,6 +371,23 @@ int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
>  	return num_vdsc_instances;
>  }
>  
> +static void intel_dsc_get_pps_reg(const struct intel_crtc_state *crtc_state, int pps,
> +				  i915_reg_t *dsc_reg, int dsc_reg_size)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	enum pipe pipe = crtc->pipe;
> +	bool pipe_dsc;
> +
> +	pipe_dsc = is_pipe_dsc(crtc, cpu_transcoder);
> +
> +	if (drm_WARN_ON(crtc->base.dev, dsc_reg_size != 2))
> +		return;

Useless.

> +
> +	dsc_reg[1] = pipe_dsc ? ICL_DSC1_PPS(pipe, pps) : DSCC_PPS(pps);
> +	dsc_reg[0] = pipe_dsc ? ICL_DSC0_PPS(pipe, pps) : DSCA_PPS(pps);

This is absurd. Stop trying to rush things, and think about this.

If intel_dsc_get_vdsc_per_pipe(crtc_state) == 1, why would you return
two registers?

BR,
Jani.


> +}
> +
>  static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -1000,17 +1017,72 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
>  	}
>  }
>  
> +static bool intel_dsc_read_pps_reg(struct intel_crtc_state *crtc_state,
> +				   int pps, u32 *pps_val)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	const int vdsc_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
> +	i915_reg_t dsc_reg[2];
> +	int i;
> +
> +	*pps_val = 0;
> +	drm_WARN_ON_ONCE(&i915->drm, ARRAY_SIZE(dsc_reg) < vdsc_per_pipe);
> +
> +	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, ARRAY_SIZE(dsc_reg));
> +
> +	for (i = 0; i < min_t(int, ARRAY_SIZE(dsc_reg), vdsc_per_pipe); i++) {
> +		u32 pps_temp;
> +
> +		pps_temp = intel_de_read(i915, dsc_reg[i]);
> +
> +		if (i == 0)
> +			*pps_val = pps_temp;
> +		else if (pps_temp != *pps_val)
> +			return false;
> +	}
> +
> +	return true;
> +}
> +
> +static void intel_dsc_read_and_verify_pps_reg(struct intel_crtc_state *crtc_state,
> +					      int pps, u32 *pps_val)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	int ret;
> +
> +	ret = intel_dsc_read_pps_reg(crtc_state, pps, pps_val);
> +	drm_WARN_ON(&i915->drm, !ret);
> +}
> +
> +static void intel_dsc_get_pps_config(struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
> +	u32 pps_temp1, pps_temp2;
> +
> +	/* FIXME: add more state readout as needed */
> +
> +	/* Readout PPS_0 and PPS_1 registers */
> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 0, &pps_temp1);
> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 1, &pps_temp2);
> +
> +	vdsc_cfg->bits_per_pixel = pps_temp2;
> +
> +	if (pps_temp1 & DSC_NATIVE_420_ENABLE)
> +		vdsc_cfg->bits_per_pixel >>= 1;
> +
> +	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
> +}
> +
>  void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> -	enum pipe pipe = crtc->pipe;
>  	enum intel_display_power_domain power_domain;
>  	intel_wakeref_t wakeref;
> -	u32 dss_ctl1, dss_ctl2, pps0 = 0, pps1 = 0, pps_temp0, pps_temp1;
> -	int vdsc_instances_per_pipe;
> +	u32 dss_ctl1, dss_ctl2;
>  
>  	if (!intel_dsc_source_support(crtc_state))
>  		return;
> @@ -1031,38 +1103,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>  	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE) &&
>  		(dss_ctl1 & JOINER_ENABLE);
>  
> -	/* FIXME: add more state readout as needed */
> -
> -	vdsc_instances_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
> -
> -	/* PPS0 & PPS1 */
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		pps1 = intel_de_read(dev_priv, DSCA_PICTURE_PARAMETER_SET_1);
> -		if (vdsc_instances_per_pipe > 1) {
> -			pps_temp1 = intel_de_read(dev_priv, DSCC_PICTURE_PARAMETER_SET_1);
> -			drm_WARN_ON(&dev_priv->drm, pps1 != pps_temp1);
> -		}
> -	} else {
> -		pps0 = intel_de_read(dev_priv,
> -				     ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
> -		pps1 = intel_de_read(dev_priv,
> -				     ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
> -		if (vdsc_instances_per_pipe > 1) {
> -			pps_temp0 = intel_de_read(dev_priv,
> -						  ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe));
> -			pps_temp1 = intel_de_read(dev_priv,
> -						  ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe));
> -			drm_WARN_ON(&dev_priv->drm, pps0 != pps_temp0);
> -			drm_WARN_ON(&dev_priv->drm, pps1 != pps_temp1);
> -		}
> -	}
> -
> -	vdsc_cfg->bits_per_pixel = pps1;
> -
> -	if (pps0 & DSC_NATIVE_420_ENABLE)
> -		vdsc_cfg->bits_per_pixel >>= 1;
> -
> -	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
> +	intel_dsc_get_pps_config(crtc_state);
>  out:
>  	intel_display_power_put(dev_priv, power_domain, wakeref);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> index 785ede31116e..a4dbe576b755 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> @@ -78,6 +78,10 @@
>  /* Icelake Display Stream Compression Registers */
>  #define DSCA_PICTURE_PARAMETER_SET_0		_MMIO(0x6B200)
>  #define DSCC_PICTURE_PARAMETER_SET_0		_MMIO(0x6BA00)
> +#define _DSCA_PPS_0				0x6B200
> +#define _DSCC_PPS_0				0x6BA00
> +#define DSCA_PPS(pps)				_MMIO(_DSCA_PPS_0 + (pps) * 4)
> +#define DSCC_PPS(pps)				_MMIO(_DSCC_PPS_0 + (pps) * 4)
>  #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB	0x78270
>  #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB	0x78370
>  #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC	0x78470
> @@ -88,6 +92,14 @@
>  #define ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
>  							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
>  							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
> +#define _ICL_DSC0_PPS_0(pipe)			_PICK_EVEN((pipe) - PIPE_B, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC)
> +#define _ICL_DSC1_PPS_0(pipe)			_PICK_EVEN((pipe) - PIPE_B, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
> +#define  ICL_DSC0_PPS(pipe, pps)		_MMIO(_ICL_DSC0_PPS_0(pipe) + ((pps) * 4))
> +#define  ICL_DSC1_PPS(pipe, pps)		_MMIO(_ICL_DSC1_PPS_0(pipe) + ((pps) * 4))
>  #define  DSC_NATIVE_422_ENABLE		BIT(23)
>  #define  DSC_NATIVE_420_ENABLE		BIT(22)
>  #define  DSC_ALT_ICH_SEL		(1 << 20)

-- 
Jani Nikula, Intel Open Source Graphics Center
