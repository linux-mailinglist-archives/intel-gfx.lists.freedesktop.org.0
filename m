Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0738AA60D
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 01:59:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7602510F551;
	Thu, 18 Apr 2024 23:59:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OH2ErEE8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C4DF10F50B;
 Thu, 18 Apr 2024 23:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713484742; x=1745020742;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=CTUXZhxN5YsOzAtHPYlkdgnWVxX/HniA+MSDeIo+vt8=;
 b=OH2ErEE8OD0LCGbEXpi5RaLfISGsKptANPCAKHMiTV5eh6Xzbf79Z+n/
 TueCCevFIuatln6QfGRZmGYi7BGic1JuVqhFz3qV3vx50sp8bD9ZYfPYw
 KWmzd1MSvUYWr5xgmTMi1UiGDAOozlmWfRH7CBL+N97ArRxlZLprChRw+
 5J5pykj5+m943CqY7M4HXXxpifQginwhWKcaDA2vKLvdXlo4esxrZPyI6
 IHPxadkDeA1CsttomNJfoZalisl/mZaq7/7Wj6ZxfGLJg6CM00ndI39HB
 c7rgee4DuQ65EoTd9B+VW45uYhj9L0J8fUYRIYjU4ZhzLye4fLUsq2+wk g==;
X-CSE-ConnectionGUID: q0X1dW5nTGKxbowvih/owQ==
X-CSE-MsgGUID: O1PFa4urSyC57aJG3z0IRg==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="12849422"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="12849422"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 16:59:01 -0700
X-CSE-ConnectionGUID: kKx8PaTAT4qrH2VVecafIA==
X-CSE-MsgGUID: e5L56knKSnqS7b2QHv1kyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="60587077"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 16:59:00 -0700
Date: Fri, 19 Apr 2024 02:58:56 +0300
From: Imre Deak <imre.deak@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Francois Dugast <francois.dugast@intel.com>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915: Convert intel_runtime_pm_get_noresume towards
 raw wakeref
Message-ID: <ZiGzwL7Rq6OzWCbb@ideak-desk.fi.intel.com>
References: <ZiGe/Tqo94YbxOnm@ideak-desk.fi.intel.com>
 <20240418223756.68427-1-rodrigo.vivi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240418223756.68427-1-rodrigo.vivi@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 18, 2024 at 06:37:56PM -0400, Rodrigo Vivi wrote:
> In the past, the noresume function was used by the GEM code to ensure
> wakelocks were held and bump its usage. This is no longer the case
> and this function was totally unused until it started to be used again
> by display with commit 77e619a82fc3 ("drm/i915/display: convert inner
> wakeref get towards get_if_in_use")
> 
> However, on the display code, most of the callers are using the
> raw wakeref, rather then the wakelock version. What caused a
> major regression caught by CI.
> 
> Another option to this patch is to go with the original plan and
> use the get_if_in_use variant in the display code, what is enough
> to fulfil our needs. Then, an extra patch to delete the unused
> _noresume variant.
> 
> v2: Keep grabbing wakelock but only assert for wakeref. (Imre)
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Francois Dugast <francois.dugast@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Fixes: 77e619a82fc3 ("drm/i915/display: convert inner wakeref get towards get_if_in_use")
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10875
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c |  6 ------
>  drivers/gpu/drm/i915/intel_runtime_pm.c            | 14 +++++---------
>  2 files changed, 5 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 048943d0a881..03dc7edcc443 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -640,12 +640,6 @@ release_async_put_domains(struct i915_power_domains *power_domains,
>  	enum intel_display_power_domain domain;
>  	intel_wakeref_t wakeref;
>  
> -	/*
> -	 * The caller must hold already raw wakeref, upgrade that to a proper
> -	 * wakeref to make the state checker happy about the HW access during
> -	 * power well disabling.
> -	 */
> -	assert_rpm_raw_wakeref_held(rpm);
>  	wakeref = intel_runtime_pm_get_noresume(rpm);
>  
>  	for_each_power_domain(domain, mask) {
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
> index d4e844128826..2d0647aca964 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> @@ -272,15 +272,11 @@ intel_wakeref_t intel_runtime_pm_get_if_active(struct intel_runtime_pm *rpm)
>   * intel_runtime_pm_get_noresume - grab a runtime pm reference
>   * @rpm: the intel_runtime_pm structure
>   *
> - * This function grabs a device-level runtime pm reference (mostly used for GEM
> - * code to ensure the GTT or GT is on).
> + * This function grabs a device-level runtime pm reference.
>   *
> - * It will _not_ power up the device but instead only check that it's powered
> - * on.  Therefore it is only valid to call this functions from contexts where
> - * the device is known to be powered up and where trying to power it up would
> - * result in hilarity and deadlocks. That pretty much means only the system
> - * suspend/resume code where this is used to grab runtime pm references for
> - * delayed setup down in work items.
> + * It will _not_ resume the device but instead only get an extra wakeref.
> + * Therefore it is only valid to call this functions from contexts where
> + * the device is known to be active and with another wakeref previously hold.
>   *
>   * Any runtime pm reference obtained by this function must have a symmetric
>   * call to intel_runtime_pm_put() to release the reference again.
> @@ -289,7 +285,7 @@ intel_wakeref_t intel_runtime_pm_get_if_active(struct intel_runtime_pm *rpm)
>   */
>  intel_wakeref_t intel_runtime_pm_get_noresume(struct intel_runtime_pm *rpm)
>  {
> -	assert_rpm_wakelock_held(rpm);
> +	assert_rpm_raw_wakeref_held(rpm);
>  	pm_runtime_get_noresume(rpm->kdev);
>  
>  	intel_runtime_pm_acquire(rpm, true);
> -- 
> 2.44.0
> 
