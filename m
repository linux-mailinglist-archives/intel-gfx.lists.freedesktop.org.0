Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64EA262449A
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 15:45:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBA1110E82E;
	Thu, 10 Nov 2022 14:45:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD4B810E82E
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 14:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668091543; x=1699627543;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Aoa94zwLF7SxUMaJn34w+ezXjSJ9h6Ptpz8hHXo2rtU=;
 b=eM+jYv2MBhZI3qNh6shl8LTOJd74+In5ojc7nyKRsjCQi4jYp4TGvcUK
 E6wXymCAYrjq0J8P/l6o4idJMBHcXKH/jm10YLN/HDGQUgvGhH884F7FJ
 uXbL/Hg9qWnuWla4Wwd+EwpMAxpaS4VPm34Fd5+Y6OMKaFJVmYjLmAtpL
 30MNc72av6/sog3gtkZUgx2zXM1RZdcj/1jeauO1DO74at4m/i9fWLReT
 LeoyjVTat7c8JkYjRLJbZPOzmVc4wdZLbYiOPrxLseVZIteQBvtkYPB3j
 6g6kZnl2u56LuVddeNll2fb/pTn8VjdGdKbwSlHQlLcAnJd9jmkSsx/eK Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="311323599"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="311323599"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 06:45:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="700820214"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="700820214"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 10 Nov 2022 06:45:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Nov 2022 16:45:36 +0200
Date: Thu, 10 Nov 2022 16:45:36 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Y20OkEOcXKEOWfyM@intel.com>
References: <20221109111649.23062-1-ville.syrjala@linux.intel.com>
 <20221109111649.23062-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221109111649.23062-6-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/915: Extend dual PPS handlind for
 ICP+
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

On Wed, Nov 09, 2022 at 01:16:48PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> On the PCH side the second PPS was introduced in ICP. Let's
> make sure we examine both power sequencer on ICP+ as well.
> 
> Note that DG1/2 south block only has the single PPS, so need
> to exclude the fake DG1/2 PCHs.
> 
> Cc: Animesh Manna <animesh.manna@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index ff4f1def59d2..f3ac4eee4d39 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -401,6 +401,15 @@ struct pps_registers {
>  	i915_reg_t pp_div;
>  };
>  
> +static bool has_dual_bxt_pps(struct drm_i915_private *i915)
> +{
> +	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
> +		return true;
> +
> +	return INTEL_PCH_TYPE(i915) >= PCH_ICP &&
> +		INTEL_PCH_TYPE(i915) < PCH_DG1;

Apparently there is a chicken bit to switch the pin muxing
between second pps/backlight vs. some other display functions.
We should probably check that before assuming that usage of
the second pps is even possible.

> +}
> +
>  static void intel_pps_get_registers(struct intel_dp *intel_dp,
>  				    struct pps_registers *regs)
>  {
> @@ -409,7 +418,7 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
>  
>  	memset(regs, 0, sizeof(*regs));
>  
> -	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> +	if (has_dual_bxt_pps(dev_priv))
>  		pps_idx = bxt_power_sequencer_idx(intel_dp);
>  	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>  		pps_idx = vlv_power_sequencer_pipe(intel_dp);
> @@ -1478,7 +1487,7 @@ void intel_pps_init(struct intel_dp *intel_dp)
>  	pps_init_timestamps(intel_dp);
>  
>  	with_intel_pps_lock(intel_dp, wakeref) {
> -		if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
> +		if (has_dual_bxt_pps(i915))
>  			bxt_initial_power_sequencer_setup(intel_dp);
>  		else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
>  			vlv_initial_power_sequencer_setup(intel_dp);
> @@ -1512,7 +1521,7 @@ void intel_pps_init_late(struct intel_dp *intel_dp)
>  
>  	with_intel_pps_lock(intel_dp, wakeref) {
>  		/* Reinit delays after per-panel info has been parsed from VBT */
> -		if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
> +		if (has_dual_bxt_pps(i915))
>  			bxt_pps_init_late(intel_dp);
>  		memset(&intel_dp->pps.pps_delays, 0, sizeof(intel_dp->pps.pps_delays));
>  		pps_init_delays(intel_dp);
> -- 
> 2.37.4

-- 
Ville Syrjälä
Intel
