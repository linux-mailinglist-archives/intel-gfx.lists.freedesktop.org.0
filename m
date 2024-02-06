Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7E584B3AB
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Feb 2024 12:40:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4DF5112AC6;
	Tue,  6 Feb 2024 11:40:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cwygz7YO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2B0C112AC6
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Feb 2024 11:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707219604; x=1738755604;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=XGPRf0wkcNXM3TpcR8HnRhN3+LVJUGR0HD4/9lMJ5M0=;
 b=Cwygz7YOXyG7xrP3wJ8tEVMvHpxzzXRtgh/ca9c8oSQlDQDH0HouaOPw
 DTucv+OpIUDlBjIvK4j9ZFOk2Mcq33I2nxy+IzNQOI5MFveucIuIznbtL
 YNQACw7dWkLu9n3L+OBLnldcuaFGlEZkHq/lF82Tc5f63x5RVDRy2oBE+
 DiHyZ5ljjYus8toctWcyWZ9grsxA14VTRnMNrvvfvcXK8tq+z/X5R6+Xy
 ezPnTMiGwRLzeJuCfB4pzKOVeK6ysxiecLDFBoPET+zFJ0gfjQNxvRxD1
 DqeLTC/NLOMjCsknvx7CEXA4tK8Iy2OMLW7jSyobuTbODkTaXw0zfBgiS A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10975"; a="623803"
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; 
   d="scan'208";a="623803"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 03:40:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; 
   d="scan'208";a="1312732"
Received: from lgrunert-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.42.150])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 03:40:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com, ville.syrjala@intel.com, uma.shankar@intel.com,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [RFC 2/4] drm/i915/display/dp: Dont send hotplug event on LT
 failure
In-Reply-To: <20240206104759.2079133-3-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240206104759.2079133-1-arun.r.murthy@intel.com>
 <20240206104759.2079133-3-arun.r.murthy@intel.com>
Date: Tue, 06 Feb 2024 13:39:58 +0200
Message-ID: <87ttmlddo1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 06 Feb 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> On link training failure fallback sequence a hotpplu event was sent to
> the user, but this is not requried as we are not changing the mode and
> instead only changing the link rate and lane count. User has no
> dependency with these parameters.
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 1abfafbbfa75..242cb08e9fc4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1074,8 +1074,6 @@ intel_dp_link_train_phy(struct intel_dp *intel_dp,
>  static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
>  						     const struct intel_crtc_state *crtc_state)
>  {
> -	struct intel_connector *intel_connector = intel_dp->attached_connector;
> -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  
>  	if (!intel_digital_port_connected(&dp_to_dig_port(intel_dp)->base)) {
>  		lt_dbg(intel_dp, DP_PHY_DPRX, "Link Training failed on disconnected sink.\n");
> @@ -1092,8 +1090,7 @@ static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
>  		return;
>  	}
>  
> -	/* Schedule a Hotplug Uevent to userspace to start modeset */
> -	queue_work(i915->unordered_wq, &intel_connector->modeset_retry_work);
> +	/* TODO: Re-visit, sending hotplug is not required. No need to notify user as we are not changing the mode */

Yeah, we're not changing the mode, we're asking the userspace to change
the mode.

BR,
Jani.

>  }
>  
>  /* Perform the link training on all LTTPRs and the DPRX on a link. */

-- 
Jani Nikula, Intel
