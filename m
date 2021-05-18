Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23195387895
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 14:19:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D8F66EB4F;
	Tue, 18 May 2021 12:19:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C7F16EB4F
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 May 2021 12:19:30 +0000 (UTC)
IronPort-SDR: wAKk0Q8Pubb/v2D4lUGjHHZPrV3rJpZwufsdWiAl4A4Rq9roDUA/nBYW6pkdznFUsDzOCx3Lu6
 ZEo7mLoZOaOA==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="197610083"
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="197610083"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 05:19:28 -0700
IronPort-SDR: FWHrO76C52JtBYLkX0H6Cdz6poMpjuBMylqKYrqh1eWUeGzOOYOEcIQ4tzBPmSfLtYG9HfZAOv
 TydpigY+NQpA==
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="439413304"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 05:19:27 -0700
Date: Tue, 18 May 2021 15:22:45 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210518122245.GA24470@intel.com>
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
 <20210515031035.2561658-12-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210515031035.2561658-12-matthew.d.roper@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v4 11/23] drm/i915/adl_p: Add ddb allocation
 support
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 14, 2021 at 08:10:23PM -0700, Matt Roper wrote:
> From: Vandita Kulkarni <vandita.kulkarni@intel.com>
> 
> On adlp the two mbuses have two display pipes and
> two DBUFS, Pipe A and D on Mbus1 and Pipe B and C on
> Mbus2. The Mbus can be joined and all the DBUFS can be
> used on Pipe A or B.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Bspec: 49255
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h |  22 ++++--
>  drivers/gpu/drm/i915/intel_pm.c | 121 +++++++++++++++++++++++++++++++-
>  2 files changed, 138 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 65af0d84d75b..47be6054d480 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7308,7 +7308,7 @@ enum {
>  
>  #define _PLANE_BUF_CFG_1_B			0x7127c
>  #define _PLANE_BUF_CFG_2_B			0x7137c
> -#define  DDB_ENTRY_MASK				0x7FF /* skl+: 10 bits, icl+ 11 bits */
> +#define  DDB_ENTRY_MASK				0xFFF /* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits */
>  #define  DDB_ENTRY_END_SHIFT			16
>  #define _PLANE_BUF_CFG_1(pipe)	\
>  	_PIPE(pipe, _PLANE_BUF_CFG_1_A, _PLANE_BUF_CFG_1_B)
> @@ -8145,9 +8145,23 @@ enum {
>  #define  DISP_DATA_PARTITION_5_6	(1 << 6)
>  #define  DISP_IPC_ENABLE		(1 << 3)
>  
> -#define _DBUF_CTL_S1				0x45008
> -#define _DBUF_CTL_S2				0x44FE8
> -#define DBUF_CTL_S(slice)			_MMIO(_PICK_EVEN(slice, _DBUF_CTL_S1, _DBUF_CTL_S2))
> +/*
> + * The below are numbered starting from "S1" on gen11/gen12, but starting
> + * with gen13 display, the bspec switches to a 0-based numbering scheme
> + * (although the addresses stay the same so new S0 = old S1, new S1 = old S2).
> + * We'll just use the 0-based numbering here for all platforms since it's the
> + * way things will be named by the hardware team going forward, plus it's more
> + * consistent with how most of the rest of our registers are named.
> + */
> +#define _DBUF_CTL_S0				0x45008
> +#define _DBUF_CTL_S1				0x44FE8
> +#define _DBUF_CTL_S2				0x44300
> +#define _DBUF_CTL_S3				0x44304
> +#define DBUF_CTL_S(slice)			_MMIO(_PICK(slice, \
> +							    _DBUF_CTL_S0, \
> +							    _DBUF_CTL_S1, \
> +							    _DBUF_CTL_S2, \
> +							    _DBUF_CTL_S3))
>  #define  DBUF_POWER_REQUEST			REG_BIT(31)
>  #define  DBUF_POWER_STATE			REG_BIT(30)
>  #define  DBUF_TRACKER_STATE_SERVICE_MASK	REG_GENMASK(23, 19)
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 95fda20d5547..411ec468d02a 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4558,6 +4558,118 @@ static const struct dbuf_slice_conf_entry tgl_allowed_dbufs[] =
>  	{}
>  };
>  
> +static const struct dbuf_slice_conf_entry adlp_allowed_dbufs[] = {
> +	{
> +		.active_pipes = BIT(PIPE_A),
> +		.dbuf_mask = {
> +			[PIPE_A] = BIT(DBUF_S1) | BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes = BIT(PIPE_B),
> +		.dbuf_mask = {
> +			[PIPE_B] = BIT(DBUF_S3) | BIT(DBUF_S4),
> +		},
> +	},
> +	{
> +		.active_pipes = BIT(PIPE_A) | BIT(PIPE_B),
> +		.dbuf_mask = {
> +			[PIPE_A] = BIT(DBUF_S1) | BIT(DBUF_S2),
> +			[PIPE_B] = BIT(DBUF_S3) | BIT(DBUF_S4),
> +		},
> +	},
> +	{
> +		.active_pipes = BIT(PIPE_C),
> +		.dbuf_mask = {
> +			[PIPE_C] = BIT(DBUF_S3) | BIT(DBUF_S4),
> +		},
> +	},
> +	{
> +		.active_pipes = BIT(PIPE_A) | BIT(PIPE_C),
> +		.dbuf_mask = {
> +			[PIPE_A] = BIT(DBUF_S1) | BIT(DBUF_S2),
> +			[PIPE_C] = BIT(DBUF_S3) | BIT(DBUF_S4),
> +		},
> +	},
> +	{
> +		.active_pipes = BIT(PIPE_B) | BIT(PIPE_C),
> +		.dbuf_mask = {
> +			[PIPE_B] = BIT(DBUF_S3) | BIT(DBUF_S4),
> +			[PIPE_C] = BIT(DBUF_S3) | BIT(DBUF_S4),
> +		},
> +	},
> +	{
> +		.active_pipes = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> +		.dbuf_mask = {
> +			[PIPE_A] = BIT(DBUF_S1) | BIT(DBUF_S2),
> +			[PIPE_B] = BIT(DBUF_S3) | BIT(DBUF_S4),
> +			[PIPE_C] = BIT(DBUF_S3) | BIT(DBUF_S4),
> +		},
> +	},
> +	{
> +		.active_pipes = BIT(PIPE_D),
> +		.dbuf_mask = {
> +			[PIPE_D] = BIT(DBUF_S1) | BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes = BIT(PIPE_A) | BIT(PIPE_D),
> +		.dbuf_mask = {
> +			[PIPE_A] = BIT(DBUF_S1) | BIT(DBUF_S2),
> +			[PIPE_D] = BIT(DBUF_S1) | BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes = BIT(PIPE_B) | BIT(PIPE_D),
> +		.dbuf_mask = {
> +			[PIPE_B] = BIT(DBUF_S3) | BIT(DBUF_S4),
> +			[PIPE_D] = BIT(DBUF_S1) | BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_D),
> +		.dbuf_mask = {
> +			[PIPE_A] = BIT(DBUF_S1) | BIT(DBUF_S2),
> +			[PIPE_B] = BIT(DBUF_S3) | BIT(DBUF_S4),
> +			[PIPE_D] = BIT(DBUF_S1) | BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes = BIT(PIPE_C) | BIT(PIPE_D),
> +		.dbuf_mask = {
> +			[PIPE_C] = BIT(DBUF_S3) | BIT(DBUF_S4),
> +			[PIPE_D] = BIT(DBUF_S1) | BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes = BIT(PIPE_A) | BIT(PIPE_C) | BIT(PIPE_D),
> +		.dbuf_mask = {
> +			[PIPE_A] = BIT(DBUF_S1) | BIT(DBUF_S2),
> +			[PIPE_C] = BIT(DBUF_S3) | BIT(DBUF_S4),
> +			[PIPE_D] = BIT(DBUF_S1) | BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes = BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
> +		.dbuf_mask = {
> +			[PIPE_B] = BIT(DBUF_S3) | BIT(DBUF_S4),
> +			[PIPE_C] = BIT(DBUF_S3) | BIT(DBUF_S4),
> +			[PIPE_D] = BIT(DBUF_S1) | BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
> +		.dbuf_mask = {
> +			[PIPE_A] = BIT(DBUF_S1) | BIT(DBUF_S2),
> +			[PIPE_B] = BIT(DBUF_S3) | BIT(DBUF_S4),
> +			[PIPE_C] = BIT(DBUF_S3) | BIT(DBUF_S4),
> +			[PIPE_D] = BIT(DBUF_S1) | BIT(DBUF_S2),
> +		},
> +	},
> +	{}
> +
> +};
> +
>  static u8 compute_dbuf_slices(enum pipe pipe, u8 active_pipes,
>  			      const struct dbuf_slice_conf_entry *dbuf_slices)
>  {
> @@ -4597,12 +4709,19 @@ static u8 tgl_compute_dbuf_slices(enum pipe pipe, u8 active_pipes)
>  	return compute_dbuf_slices(pipe, active_pipes, tgl_allowed_dbufs);
>  }
>  
> +static u32 adlp_compute_dbuf_slices(enum pipe pipe, u32 active_pipes)
> +{
> +	return compute_dbuf_slices(pipe, active_pipes, adlp_allowed_dbufs);
> +}
> +
>  static u8 skl_compute_dbuf_slices(struct intel_crtc *crtc, u8 active_pipes)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	enum pipe pipe = crtc->pipe;
>  
> -	if (DISPLAY_VER(dev_priv) == 12)
> +	if (IS_ALDERLAKE_P(dev_priv))
> +		return adlp_compute_dbuf_slices(pipe, active_pipes);
> +	else if (DISPLAY_VER(dev_priv) == 12)
>  		return tgl_compute_dbuf_slices(pipe, active_pipes);
>  	else if (DISPLAY_VER(dev_priv) == 11)
>  		return icl_compute_dbuf_slices(pipe, active_pipes);
> -- 
> 2.25.4
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
