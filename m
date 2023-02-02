Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BB86879BF
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 11:05:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36BCE10E4C7;
	Thu,  2 Feb 2023 10:05:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC3C210E4C7
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 10:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675332306; x=1706868306;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=UEyTbfJZaoKostPNH97PYjbpcFeO79sh36MbbYC3GO8=;
 b=PLJTk+anqrRgnSBpDkdvaewXWrcv2k/uV1GlAbyhsDB25kertbrtVBkt
 EXWEPCOBR6/6ATxvrVAVVXdnOAuiNucbd06joxTbhVQO5zME+5eMgqKNk
 NHPfFIJ9WFCDimFGtH7bWZqhqGGY3nKk+nv7ORw8L3aRDBS39Y8eOXwkT
 029ZqYFtz+66hiSfzPiy84O6ueajSN0/QVyY32d9C4P9Lt4KsBoh9dunh
 TtnZJRlfPlESn21pZ59y5TcqBvk+Rgown15gj1KFHZCOAqIqsdJIhare7
 exWhinZjX8egHqrxw1Ub0IzpeIGsGbSCd6KAdXRs3M1JGY+d5NI/XnG3/ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="326104990"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="326104990"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 02:05:01 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="697633246"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="697633246"
Received: from skopplex-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.34.132])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 02:04:59 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230202094726.6435-2-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230202094726.6435-1-stanislav.lisovskiy@intel.com>
 <20230202094726.6435-2-stanislav.lisovskiy@intel.com>
Date: Thu, 02 Feb 2023 12:04:56 +0200
Message-ID: <87sffo1iyf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Add generic constraint
 checker when determining DP MST DSC bpp
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

On Thu, 02 Feb 2023, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> There are might be multiple contraints which we need to check while determining
> if we can use desired compressed bpp, so might be good idea to add a special
> helper, so that we don't overcomplicate the main bpp calculation function.

It is, but I don't see the value in adding an empty function like this.

>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 8b0e4defa3f1..e3e7c305fece 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -45,6 +45,13 @@
>  #include "intel_hotplug.h"
>  #include "skl_scaler.h"
>  
> +static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp,
> +					  const struct drm_display_mode *adjusted_mode,
> +					  struct intel_crtc_state *crtc_state)
> +{
> +	return 0;
> +}
> +
>  static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  						struct intel_crtc_state *crtc_state,
>  						int max_bpp,
> @@ -87,6 +94,10 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  
>  		drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp);
>  
> +		ret = intel_dp_mst_check_constraints(i915, bpp, adjusted_mode, crtc_state);
> +		if (ret)
> +			continue;
> +
>  		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
>  						      connector->port,
>  						      crtc_state->pbn);
> @@ -104,8 +115,8 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  		}
>  	}
>  
> -	/* Despite slots are non-zero, we still failed the atomic check */
> -	if (ret && slots >= 0)
> +	/* We failed to find a proper bpp/timeslots, return error */
> +	if (ret)
>  		slots = ret;
>  
>  	if (slots < 0) {

-- 
Jani Nikula, Intel Open Source Graphics Center
