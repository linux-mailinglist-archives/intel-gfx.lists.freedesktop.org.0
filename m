Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A28412C2D32
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 17:44:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C44A46E4AD;
	Tue, 24 Nov 2020 16:44:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBD886E4AD
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 16:44:13 +0000 (UTC)
IronPort-SDR: 5GNfhF2iOZa9+kQNPbsyPun2MV0wBi7f5q18bvGqAbA/K1HotY0pBz8WeHxlHmA7oMQmTsH8wa
 pfkHRilCG8SA==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="169414058"
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="169414058"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 08:44:12 -0800
IronPort-SDR: UsGKvgXzLljfbFEkMTOxWfwG4IqtDQXIbbK63kRplRub5kqu/sJDVWvrY3YRD72LC4vtY7LCGn
 zAZarBzJhbIA==
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="546896689"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 08:44:11 -0800
Date: Tue, 24 Nov 2020 18:44:06 +0200
From: Imre Deak <imre.deak@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20201124164406.GG1750458@ideak-desk.fi.intel.com>
References: <20201124095847.14098-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201124095847.14098-1-anshuman.gupta@intel.com>
Subject: Re: [Intel-gfx] [RFC] drm/i915/dp: PPS registers doesn't require
 AUX power
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 24, 2020 at 03:28:47PM +0530, Anshuman Gupta wrote:
> Platforms with South Display Engine on PCH, doesn't
> require to get/put the AUX power domain in order to
> access PPS register because PPS registers are always on
> with South display on PCH.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>

Could you describe the issue the patch is fixing?

For accessing PPS registers the AUX power well may not be needed, but
I'm not sure if this also applies to PPS functionality in general. For
instance forcing VDD is required for AUX functionality.

In any case we do need a power reference for any register access, so I
don't think not getting any power reference for PPS is ok.

--Imre

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3896d08c4177..84a2c49e154c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -872,8 +872,9 @@ pps_lock(struct intel_dp *intel_dp)
>  	 * See intel_power_sequencer_reset() why we need
>  	 * a power domain reference here.
>  	 */
> -	wakeref = intel_display_power_get(dev_priv,
> -					  intel_aux_power_domain(dp_to_dig_port(intel_dp)));
> +	if (!HAS_PCH_SPLIT(dev_priv))
> +		wakeref = intel_display_power_get(dev_priv,
> +						  intel_aux_power_domain(dp_to_dig_port(intel_dp)));
>  
>  	mutex_lock(&dev_priv->pps_mutex);
>  
> @@ -886,9 +887,11 @@ pps_unlock(struct intel_dp *intel_dp, intel_wakeref_t wakeref)
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  
>  	mutex_unlock(&dev_priv->pps_mutex);
> -	intel_display_power_put(dev_priv,
> -				intel_aux_power_domain(dp_to_dig_port(intel_dp)),
> -				wakeref);
> +
> +	if (!HAS_PCH_SPLIT(dev_priv))
> +		intel_display_power_put(dev_priv,
> +					intel_aux_power_domain(dp_to_dig_port(intel_dp)),
> +					wakeref);
>  	return 0;
>  }
>  
> -- 
> 2.26.2
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
