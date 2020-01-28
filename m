Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B6B14C38C
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 00:33:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC06F6F44B;
	Tue, 28 Jan 2020 23:33:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CE0B6F44B
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 23:33:12 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 15:33:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,375,1574150400"; d="scan'208";a="222274884"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga008.jf.intel.com with SMTP; 28 Jan 2020 15:33:11 -0800
Date: Tue, 28 Jan 2020 15:33:11 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200128233311.GH22783@mdroper-desk1.amr.corp.intel.com>
References: <20200124084456.2961-1-stanislav.lisovskiy@intel.com>
 <20200124084456.2961-7-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200124084456.2961-7-stanislav.lisovskiy@intel.com>
Subject: Re: [Intel-gfx] [PATCH v16 6/7] drm/i915: Protect
 intel_dbuf_slices_update with mutex
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

On Fri, Jan 24, 2020 at 10:44:55AM +0200, Stanislav Lisovskiy wrote:
> Now using power_domain mutex to protect from race condition, which
> can occur because intel_dbuf_slices_update might be running in
> parallel to gen9_dc_off_power_well_enable being called from
> intel_dp_detect for instance, which causes assertion triggered by
> race condition, as gen9_assert_dbuf_enabled might preempt this
> when registers were already updated, while dev_priv was not.

I may be overlooking something, but I think your next patch already
takes care of this by ensuring we only do dbuf updates during modesets.
We already had POWER_DOMAIN_MODESET in our various DC_OFF_POWER_DOMAINS
definitions which would ensure that the "DC off" power well is enabled
(and DC states themselves are disabled) for the entire duration of the
modeset process.

If we need this, I'm not sure whether it's a good idea to use
power_domains->lock rather than a new, dedicated lock.  Anything that
touches power domains in any manner grabs this lock, even though we only
really care about it for stopping races with the specific "DC off" power
well.

Also, if we bisect to the point right before these last two patches,
don't we have a problem since there's a point in the git history where
we potentially face a race?


Matt

> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 96b38252578b..99ddc21e004c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -4404,12 +4404,22 @@ void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,
>  {
>  	int i;
>  	int max_slices = INTEL_INFO(dev_priv)->num_supported_dbuf_slices;
> +	struct i915_power_domains *power_domains = &dev_priv->power_domains;
>  
>  	WARN(hweight8(req_slices) > max_slices,
>  	     "Invalid number of dbuf slices requested\n");
>  
>  	DRM_DEBUG_KMS("Updating dbuf slices to 0x%x\n", req_slices);
>  
> +	/*
> +	 * Might be running this in parallel to gen9_dc_off_power_well_enable
> +	 * being called from intel_dp_detect for instance,
> +	 * which causes assertion triggered by race condition,
> +	 * as gen9_assert_dbuf_enabled might preempt this when registers
> +	 * were already updated, while dev_priv was not.
> +	 */
> +	mutex_lock(&power_domains->lock);
> +
>  	for (i = 0; i < max_slices; i++) {
>  		intel_dbuf_slice_set(dev_priv,
>  				     _DBUF_CTL_S(i),
> @@ -4417,6 +4427,8 @@ void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,
>  	}
>  
>  	dev_priv->enabled_dbuf_slices_mask = req_slices;
> +
> +	mutex_unlock(&power_domains->lock);
>  }
>  
>  static void icl_dbuf_enable(struct drm_i915_private *dev_priv)
> -- 
> 2.24.1.485.gad05a3d8e5
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
