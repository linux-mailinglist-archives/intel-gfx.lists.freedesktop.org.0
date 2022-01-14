Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F64D48E9EC
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 13:33:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E61E610E1A9;
	Fri, 14 Jan 2022 12:33:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EA0010E1A9
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jan 2022 12:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642163616; x=1673699616;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=ARGnMFOWj+I7UMLD9b/2GhVQMRMRG5bLTNWwWIFYKJY=;
 b=WeEp9833yB8rC9tzaQ6tqGF6+/JJUHFblHMsO0Yu/3m5p1+iJscD7wIC
 wyHAxJGjTyKXLK4xPSDLvBSybS1tQiyHEy0xA6tqnUQfBJr2NjcRDM4Fz
 XXsZAuNbhxbqnlsfVwRCN8dS8K+sCJ/WxBOVMXbD5/JlCd5e3+pkqsCmr
 lA8U0XKN0zc4mFH+xpdUL0TBueg5D3IKIAbZDl+K7SKeW5OgJg0O4RRFO
 RFXEKRPdd/ReABEezL/N5I1mtttilXJSd4GI+hHiUIgvJWN1Be30aAjnv
 GVu6QWOQ9JaqkQMfga4A5B7X7r3wP1a2YuV6ni7/aAPtqwyuJlzxIexnN A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="244437472"
X-IronPort-AV: E=Sophos;i="5.88,288,1635231600"; d="scan'208";a="244437472"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 04:33:36 -0800
X-IronPort-AV: E=Sophos;i="5.88,288,1635231600"; d="scan'208";a="624314846"
Received: from ljdutoit-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.27.146])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 04:33:34 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220112195722.16639-1-manasi.d.navare@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220112195722.16639-1-manasi.d.navare@intel.com>
Date: Fri, 14 Jan 2022 14:33:29 +0200
Message-ID: <87zgny5wfa.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/vrr: Reset VRR capable
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

On Wed, 12 Jan 2022, Manasi Navare <manasi.d.navare@intel.com> wrote:
> With some VRR panels, user can turn VRR ON/OFF on the fly from the panel settings.
> When VRR is turned OFF ,sends a long HPD to the driver clearing the Ignore MSA bit
> in the DPCD. Currently the driver parses that onevery HPD but fails to reset
> the corresponding VRR Capable Connector property.
> Hence the userspace still sees this as VRR Capable panel which is incorrect.
>
> Fix this by explicitly resetting the connector property.
>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index df2a7d86aef0..4f1418f02b76 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4539,15 +4539,24 @@ static int intel_dp_get_modes(struct drm_connector *connector)
>  {
>  	struct intel_connector *intel_connector = to_intel_connector(connector);
>  	struct edid *edid;
> +	struct drm_i915_private *dev_priv = to_i915(connector->dev);

Please call it "i915" for new stuff.

>  	int num_modes = 0;
>  
>  	edid = intel_connector->detect_edid;
>  	if (edid) {
>  		num_modes = intel_connector_update_modes(connector, edid);
>  
> -		if (intel_vrr_is_capable(connector))
> +		if (intel_vrr_is_capable(connector)) {
> +			drm_dbg_kms(&dev_priv->drm, "VRR capable  = TRUE for [CONNECTOR:%d:%s]\n",
> +				    connector->base.id, connector->name);
>  			drm_connector_set_vrr_capable_property(connector,
>  							       true);
> +		} else {
> +			drm_dbg_kms(&dev_priv->drm, "VRR capable = false for [CONNECTOR:%d:%s]\n",
> +				    connector->base.id, connector->name);
> +			drm_connector_set_vrr_capable_property(connector,
> +							       false);
> +		}

Please don't repeat yourself! Also, prefer having [CONNECTOR:%d:%s] at
the beginning.

		bool capable = intel_vrr_is_capable(connector);

		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] VRR capable: %s\n",
			    connector->base.id, connector->name, yesno(capable));
                drm_connector_set_vrr_capable_property(connector, capable);

BR,
Jani.


>  	}
>  
>  	/* Also add fixed mode, which may or may not be present in EDID */

-- 
Jani Nikula, Intel Open Source Graphics Center
