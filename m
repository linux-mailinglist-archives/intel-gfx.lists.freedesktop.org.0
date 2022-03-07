Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 192104D0824
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Mar 2022 21:08:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E414010E164;
	Mon,  7 Mar 2022 20:08:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B15F10E164
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Mar 2022 20:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646683712; x=1678219712;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=O/xe+trn6s/cjshiVK9jmqru1jtwWglmIKhBPRMpg4I=;
 b=mR2iD4bkIAzVMota+o9hY+20I4iOtmavjkpT/rpJA1+R/V3cjMSGPe6l
 QvgzqsF4hXjIttkA+3QonCZdpH4UspFTXcVGz1DMr5eoeYUxcya2uzY0h
 /KWCXlngpz09A3b4tHyvD6Tst8G2eOZg/5JE3JiKPe8S3pIOvbozGngTp
 nmIzU0toc3sPhgHjXy31qOPH2OV/U/cGg0zq2qoqg98lglrcrZQ1SdlVO
 OQ/6aXug+xj4ETSJUAj+W5lVek4AHd3WUGuBlD/5eeIwlY+dsh5hieyBw
 ZRAZ3dakgq3AVAsxeMSNlrE1GIWdIv8UMaEw1FCV1IincbbjEowhrLf/g g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="252067532"
X-IronPort-AV: E=Sophos;i="5.90,163,1643702400"; d="scan'208";a="252067532"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 12:08:31 -0800
X-IronPort-AV: E=Sophos;i="5.90,163,1643702400"; d="scan'208";a="641462809"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 12:08:31 -0800
Date: Mon, 7 Mar 2022 12:09:28 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20220307200928.GB23952@labuser-Z97X-UD5H>
References: <20220303233222.4698-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220303233222.4698-1-manasi.d.navare@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v7] drm/i915/display/vrr: Reset VRR capable
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

Hi Ville,

Here the VRR set/reset moved to set/unset edid like you suggested.
Anything else needed here?

Manasi

On Thu, Mar 03, 2022 at 03:32:22PM -0800, Manasi Navare wrote:
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
> v7: Move VRR set/reset to set/unset_edid (Ville)
> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Fixes: 390a1f8beb87 ("Revert "drm/i915/display/vrr: Reset VRR capable property on a long hpd")
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 17 +++++++++++------
>  1 file changed, 11 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index d6ef33096bb6..1d0f8fc39005 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4385,13 +4385,20 @@ intel_dp_update_420(struct intel_dp *intel_dp)
>  static void
>  intel_dp_set_edid(struct intel_dp *intel_dp)
>  {
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	struct intel_connector *connector = intel_dp->attached_connector;
>  	struct edid *edid;
> +	bool vrr_capable;
>  
>  	intel_dp_unset_edid(intel_dp);
>  	edid = intel_dp_get_edid(intel_dp);
>  	connector->detect_edid = edid;
>  
> +	vrr_capable = intel_vrr_is_capable(&connector->base);
> +	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] VRR capable: %s\n",
> +		    connector->base.base.id, connector->base.name, str_yes_no(vrr_capable));
> +	drm_connector_set_vrr_capable_property(&connector->base, vrr_capable);
> +
>  	intel_dp_update_dfp(intel_dp, edid);
>  	intel_dp_update_420(intel_dp);
>  
> @@ -4424,6 +4431,9 @@ intel_dp_unset_edid(struct intel_dp *intel_dp)
>  
>  	intel_dp->dfp.ycbcr_444_to_420 = false;
>  	connector->base.ycbcr_420_allowed = false;
> +
> +	drm_connector_set_vrr_capable_property(&connector->base,
> +					       false);
>  }
>  
>  static int
> @@ -4574,14 +4584,9 @@ static int intel_dp_get_modes(struct drm_connector *connector)
>  	int num_modes = 0;
>  
>  	edid = intel_connector->detect_edid;
> -	if (edid) {
> +	if (edid)
>  		num_modes = intel_connector_update_modes(connector, edid);
>  
> -		if (intel_vrr_is_capable(connector))
> -			drm_connector_set_vrr_capable_property(connector,
> -							       true);
> -	}
> -
>  	/* Also add fixed mode, which may or may not be present in EDID */
>  	if (intel_dp_is_edp(intel_attached_dp(intel_connector)) &&
>  	    intel_connector->panel.fixed_mode) {
> -- 
> 2.19.1
> 
