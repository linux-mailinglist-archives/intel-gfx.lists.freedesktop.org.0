Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C024C410C
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 10:13:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB48910E76E;
	Fri, 25 Feb 2022 09:13:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E488810E76E
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Feb 2022 09:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645780418; x=1677316418;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/KyGC2gVxABEX5082ggrUAsUtyn5d9ZPYtFukfFyzM4=;
 b=S0L0TfDmfIwYaTW9D3oqlHtGCHL3vUU8s8rIF4UtyCVoFg0p6ybboS7Y
 T7zEgjvU6lowWd6AMz1EPeZ/kB0ejiyY0t1qGD8xmoxUbIh1aRf9QF1NC
 5GHpPKs6OoSxDHNuKEAAa1JNLF4qpllTdwpIK5+AYYAsr9kw/vWfXa4q7
 WjaNlf1ifRyxqWufej8FaD3hckGvEefdHwXGwDY9/ur4fOpOjCXgkws0U
 LDU5T7FZlw06C6X6fUGH+i50e/nckfgSleM73EgFDt0md3i4YO+y1TZGV
 gLZk7HkeZMRzPPtEHvLYD6G4YjiZhCOlt6C7/nd/tzoQp37q+zx5PR3Xm w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="313177714"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="313177714"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 01:13:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="509214632"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 25 Feb 2022 01:13:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Feb 2022 11:13:35 +0200
Date: Fri, 25 Feb 2022 11:13:35 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <YhidvyZ0vvxmHBwP@intel.com>
References: <20220225013055.9282-1-manasi.d.navare@intel.com>
 <20220225013055.9282-2-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220225013055.9282-2-manasi.d.navare@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v6 2/2] drm/i915/display/vrr: Reset VRR
 capable property on a long hpd
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 24, 2022 at 05:30:55PM -0800, Manasi Navare wrote:
> With some VRR panels, user can turn VRR ON/OFF on the fly from the panel settings.
> When VRR is turned OFF ,sends a long HPD to the driver clearing the Ignore MSA bit
> in the DPCD. Currently the driver parses that onevery HPD but fails to reset
> the corresponding VRR Capable Connector property.
> Hence the userspace still sees this as VRR Capable panel which is incorrect.
> 
> Fix this by explicitly resetting the connector property.
> 
> v2: Reset vrr capable if status == connector_disconnected
> v3: Use i915 and use bool vrr_capable (Jani Nikula)
> v4: Move vrr_capable to after update modes call (Jani N)
> Remove the redundant comment (Jan N)
> v5: Fixes the regression on older platforms by reseting the VRR
> only if HAS_VRR
> v6: Remove the checks from driver, add in drm core before
> setting VRR prop (Ville)
> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Fixes: 390a1f8beb87 ("Revert "drm/i915/display/vrr: Reset VRR capable property on a long hpd")
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 15 +++++++++++----
>  1 file changed, 11 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1046e7fe310a..f96123b56935 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4455,6 +4455,10 @@ intel_dp_detect(struct drm_connector *connector,
>  		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
>  		memset(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));
>  
> +		/* Reset VRR Capable property on disconnect */
> +		drm_connector_set_vrr_capable_property(connector,
> +						       false);
> +
>  		if (intel_dp->is_mst) {
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "MST device may have disappeared %d vs %d\n",
> @@ -4569,15 +4573,18 @@ static int intel_dp_get_modes(struct drm_connector *connector)
>  {
>  	struct intel_connector *intel_connector = to_intel_connector(connector);
>  	struct edid *edid;
> +	struct drm_i915_private *i915 = to_i915(connector->dev);
>  	int num_modes = 0;
>  
>  	edid = intel_connector->detect_edid;
>  	if (edid) {
> -		num_modes = intel_connector_update_modes(connector, edid);
> +		bool vrr_capable;
>  
> -		if (intel_vrr_is_capable(connector))
> -			drm_connector_set_vrr_capable_property(connector,
> -							       true);
> +		num_modes = intel_connector_update_modes(connector, edid);
> +		vrr_capable = intel_vrr_is_capable(connector);
> +		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] VRR capable: %s\n",
> +			    connector->base.id, connector->name, yesno(vrr_capable));
> +		drm_connector_set_vrr_capable_property(connector, vrr_capable);

As mentioned on irc I think intel_dp_(un)set_edid() would be a better
place for these.

>  	}
>  
>  	/* Also add fixed mode, which may or may not be present in EDID */
> -- 
> 2.19.1

-- 
Ville Syrjälä
Intel
