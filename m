Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9009349EC74
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 21:27:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C996410E839;
	Thu, 27 Jan 2022 20:26:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDE7C10E839
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 20:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643315217; x=1674851217;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=FXDGHfTlRnMzvPa6/V8zS9dCRTNhFEUNYkCaOrc8cIM=;
 b=Wv2MObHvU6XJ296r2p+vyRiqdWmJTBqmOf6HsYQQPLzToCvgBRqbfM6t
 k3GZFnYgJ/tdkEwNFqx9+dvYo7bXMBvZDYn/Z3VDr0xcZcUdFKGYQTXOC
 hr9GXOKTdAyL1iA4I7Gqv8JQVV/ysdI6M2rS41NRQvxXByIZMoCC+jGGl
 ri/vUzlU95JQlh3Z49YakbcRcXNwskGOKnnWVIDJtLJy6TeN0iIusuket
 BM6s2WlQX5MDSRi2dKUxkITsqKob1GuyDxQHF8Q8KZsZenl+Z9DemJfgr
 oL4zt7enx/dAnCYrnV6/rYeu9DyFbPe2IRWIo27XLLmHBtrOCDGiNIfQC w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="245798228"
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="245798228"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 12:26:57 -0800
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="521380927"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 12:26:56 -0800
Date: Thu, 27 Jan 2022 12:42:22 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20220127204222.GA12256@labuser-Z97X-UD5H>
References: <20220126195304.8262-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220126195304.8262-1-manasi.d.navare@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display/vrr: Reset VRR capable
 property on a long hpd
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

I have addressed your review comments, could you take a look at this patch, this is needed by one of our customers.

Manasi

On Wed, Jan 26, 2022 at 11:53:04AM -0800, Manasi Navare wrote:
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
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 16 ++++++++++++----
>  1 file changed, 12 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 4d4579a301f6..687cb37bb22a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4446,6 +4446,12 @@ intel_dp_detect(struct drm_connector *connector,
>  		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
>  		memset(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));
>  
> +		/* Reset VRR Capable property */
> +		drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s] VRR capable: FALSE\n",
> +			    connector->base.id, connector->name);
> +		drm_connector_set_vrr_capable_property(connector,
> +						       false);
> +
>  		if (intel_dp->is_mst) {
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "MST device may have disappeared %d vs %d\n",
> @@ -4560,15 +4566,17 @@ static int intel_dp_get_modes(struct drm_connector *connector)
>  {
>  	struct intel_connector *intel_connector = to_intel_connector(connector);
>  	struct edid *edid;
> +	struct drm_i915_private *i915 = to_i915(connector->dev);
>  	int num_modes = 0;
>  
>  	edid = intel_connector->detect_edid;
>  	if (edid) {
> -		num_modes = intel_connector_update_modes(connector, edid);
> +		bool vrr_capable = intel_vrr_is_capable(connector);
>  
> -		if (intel_vrr_is_capable(connector))
> -			drm_connector_set_vrr_capable_property(connector,
> -							       true);
> +		num_modes = intel_connector_update_modes(connector, edid);
> +		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] VRR capable: %s\n",
> +			    connector->base.id, connector->name, yesno(vrr_capable));
> +		drm_connector_set_vrr_capable_property(connector, vrr_capable);
>  	}
>  
>  	/* Also add fixed mode, which may or may not be present in EDID */
> -- 
> 2.19.1
> 
