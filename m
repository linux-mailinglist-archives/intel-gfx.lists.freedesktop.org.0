Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1107E3EA736
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 17:13:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ED1E6E418;
	Thu, 12 Aug 2021 15:13:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A5B16E418
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 15:12:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="213522068"
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="213522068"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2021 08:12:58 -0700
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="676800400"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2021 08:12:57 -0700
Date: Thu, 12 Aug 2021 18:12:54 +0300
From: Imre Deak <imre.deak@intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210812151254.GD2600583@ideak-desk.fi.intel.com>
References: <20210812054806.22745-1-animesh.manna@intel.com>
 <20210812054806.22745-3-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210812054806.22745-3-animesh.manna@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/dp: fix TGL and ICL max source
 rates
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

On Thu, Aug 12, 2021 at 11:18:03AM +0530, Animesh Manna wrote:
> From: Jani Nikula <jani.nikula@intel.com>
> 
> Combo phy is limited to 5.4 GHz on low-voltage SKUs. Combo phy DP is
> limited to 5.4 GHz, while combo phy eDP can do 8.1 GHz.
> 
> Bspec: 20584, 20598, 49180, 49201
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 4df56af36b3f..42b29948bc72 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -224,6 +224,15 @@ bool intel_dp_can_bigjoiner(struct intel_dp *intel_dp)
>  		 encoder->port != PORT_A);
>  }
>  
> +static bool is_low_voltage_sku(struct drm_i915_private *i915, enum phy phy)
> +{
> +	u32 voltage;
> +
> +	voltage = intel_de_read(i915, ICL_PORT_COMP_DW3(phy)) & VOLTAGE_INFO_MASK;
> +
> +	return voltage == VOLTAGE_INFO_0_85V;
> +}
> +
>  static int icl_max_source_rate(struct intel_dp *intel_dp)
>  {
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> @@ -231,7 +240,7 @@ static int icl_max_source_rate(struct intel_dp *intel_dp)
>  	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
>  
>  	if (intel_phy_is_combo(dev_priv, phy) &&
> -	    !intel_dp_is_edp(intel_dp))
> +	    (is_low_voltage_sku(dev_priv, phy) || !intel_dp_is_edp(intel_dp)))
>  		return 540000;
>  
>  	return 810000;
> -- 
> 2.29.0
> 
