Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A42CB4A471D
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 13:28:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FBE310E3B3;
	Mon, 31 Jan 2022 12:28:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D83610E3B3
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 12:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643632089; x=1675168089;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=xZGJJlELrPHXvhaG2yZIHwFZibCmAau2brpRNEt6QWE=;
 b=TMsEDJBpCBq5WA62d0VnGIxmRQKhkj1c+SfsJ9typwr+/J78Eet5YftN
 qdnIaNpxRy3JSPlYvqrbbu+EzKPdu/MaDNPlh4JEslw0+W0alxKMMjd7c
 D3b5tOn1rYaUMTqNFGMEj1R0jH653n/IyC22Lvbmnc9yN18yRcS3JL/3e
 JZSBvXwIAK+WC/pnoqQGDdJ79W95pKV0dFt73p0dgAl5oFIK0B5Q17l5/
 8M7vh4fMK0X0l1tJ7uit2vUXkWOGVy80+OOmg1BtwzbGaQzWtUr381rpZ
 S3f06BWeU17UBYlU+U4Hngn6ZmoBRg7NNqpkSMYxxzwtoLmmALy7CdGev A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10243"; a="231021061"
X-IronPort-AV: E=Sophos;i="5.88,330,1635231600"; d="scan'208";a="231021061"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 04:28:08 -0800
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="481734654"
Received: from ylian16-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.16.100])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 04:28:07 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220126195304.8262-1-manasi.d.navare@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220126195304.8262-1-manasi.d.navare@intel.com>
Date: Mon, 31 Jan 2022 14:28:04 +0200
Message-ID: <87wnigum23.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 26 Jan 2022, Manasi Navare <manasi.d.navare@intel.com> wrote:
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

Both the comment and the logging here seem excessive.

> +		drm_connector_set_vrr_capable_property(connector,
> +						       false);
> +

Fits on one line.

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

intel_vrr_is_capable() probably needs to happen after
intel_connector_update_modes(), right?

BR,
Jani.

> +		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] VRR capable: %s\n",
> +			    connector->base.id, connector->name, yesno(vrr_capable));
> +		drm_connector_set_vrr_capable_property(connector, vrr_capable);
>  	}
>  
>  	/* Also add fixed mode, which may or may not be present in EDID */

-- 
Jani Nikula, Intel Open Source Graphics Center
