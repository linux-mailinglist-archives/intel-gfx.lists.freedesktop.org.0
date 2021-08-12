Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B97853EA77A
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 17:24:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE7E56E426;
	Thu, 12 Aug 2021 15:24:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36D376E42A
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 15:24:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="202564992"
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="202564992"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2021 08:24:06 -0700
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="673641560"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2021 08:24:05 -0700
Date: Thu, 12 Aug 2021 18:24:01 +0300
From: Imre Deak <imre.deak@intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210812152401.GE2600583@ideak-desk.fi.intel.com>
References: <20210812054806.22745-1-animesh.manna@intel.com>
 <20210812054806.22745-4-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210812054806.22745-4-animesh.manna@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/dp: fix EHL/JSL max source
 rates calculation
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

On Thu, Aug 12, 2021 at 11:18:04AM +0530, Animesh Manna wrote:
> Only higher voltage sku can support HBR3 so a condition
> check added in max source rate calculation for ehl/jsl.
> 
> Bspec: 32247, 20598
> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 42b29948bc72..d27f29477713 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -248,7 +248,11 @@ static int icl_max_source_rate(struct intel_dp *intel_dp)
>  
>  static int ehl_max_source_rate(struct intel_dp *intel_dp)
>  {
> -	if (intel_dp_is_edp(intel_dp))
> +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> +	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
> +	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
> +
> +	if (intel_dp_is_edp(intel_dp) || is_low_voltage_sku(dev_priv, phy))
>  		return 540000;
>  
>  	return 810000;
> -- 
> 2.29.0
> 
