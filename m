Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED26E944B37
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2024 14:25:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8569610E26E;
	Thu,  1 Aug 2024 12:25:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k8A2ipFq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FA5B10E26E
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2024 12:25:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722515149; x=1754051149;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=RyTD3Q0bn6j7MlaHeSIyz98zZriR0e+a7M2EXJUDZFE=;
 b=k8A2ipFqkZ5/JZbml3QYVpabgbR7cNiYA55f/R2F1S1txSePOoS4bRi6
 8QdTkrzhHPWMb0e6P0AdHAQbqwfS+ZU7mbnDOGXc5QnYZw7KPpafI/ief
 rZlIvVfXoN+B2XhXijcor1QRpQs+c3cxjg0pUyvvvA7AcwOcW/ZYEJJif
 fxclfwOHVTfK0r7kfe02TH2sG4/X4A62o2JOHii42LhZuhi4h01bIkaCc
 IOyzBpIcrcBfXZeejXcPZ/SDogVD28YZvz9yn5J0wvcAgpAj0UWFBbemc
 L3QX/Aj93pgpUppzJ46X1FA60m0PgGj/8eu71QUYxlcM6SBef71fHQL5c Q==;
X-CSE-ConnectionGUID: 27jom523QkW34MSVvysWRg==
X-CSE-MsgGUID: kqaFLciTRFy6JOfaso9KeQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="12827206"
X-IronPort-AV: E=Sophos;i="6.09,254,1716274800"; d="scan'208";a="12827206"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 05:25:49 -0700
X-CSE-ConnectionGUID: pRb4O1QUQd6IkGQlPvNKXw==
X-CSE-MsgGUID: ofkk3h6/Sq+X7w0NaWPJew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,254,1716274800"; d="scan'208";a="60051275"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 05:25:47 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com, haridhar.kalvala@intel.com, Dnyaneshwar
 Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: Re: [PATCH] drm/i915/display: correct dual pps handling for MTL_PCH+
In-Reply-To: <20240801111141.574854-1-dnyaneshwar.bhadane@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240801111141.574854-1-dnyaneshwar.bhadane@intel.com>
Date: Thu, 01 Aug 2024 15:25:42 +0300
Message-ID: <871q38whtl.fsf@intel.com>
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

On Thu, 01 Aug 2024, Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com> wrote:
> On the PCH side the second PPS was introduced in ICP+.Add condition
> On MTL_PCH and greater platform also having the second PPS.
>
> Note that DG1/2 south block only has the single PPS, so need
> to exclude the fake DG1/2 PCHs
>
> Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11488

Closes:, not Link:

Fixes: 93cbc1accbce ("drm/i915/mtl: Add fake PCH for Meteor Lake")
Cc: <stable@vger.kernel.org> # v6.9+

Can be fixed while applying, no need to resend.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_backlight.c | 3 +++
>  drivers/gpu/drm/i915/display/intel_pps.c       | 3 +++
>  2 files changed, 6 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
> index 071668bfe5d1..6c3333136737 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -1449,6 +1449,9 @@ bxt_setup_backlight(struct intel_connector *connector, enum pipe unused)
>  
>  static int cnp_num_backlight_controllers(struct drm_i915_private *i915)
>  {
> +	if (INTEL_PCH_TYPE(i915) >= PCH_MTL)
> +		return 2;
> +
>  	if (INTEL_PCH_TYPE(i915) >= PCH_DG1)
>  		return 1;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 42306bc4ba86..7ce926241e83 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -351,6 +351,9 @@ static int intel_num_pps(struct drm_i915_private *i915)
>  	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
>  		return 2;
>  
> +	if (INTEL_PCH_TYPE(i915) >= PCH_MTL)
> +		return 2;
> +
>  	if (INTEL_PCH_TYPE(i915) >= PCH_DG1)
>  		return 1;

-- 
Jani Nikula, Intel
