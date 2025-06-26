Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 437E6AE985A
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 10:31:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75CA3896EC;
	Thu, 26 Jun 2025 08:31:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jgfcbgc0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 513C7896EC;
 Thu, 26 Jun 2025 08:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750926698; x=1782462698;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=AHF8NBTA6Cck+W8GoI5bCNJJ1FdFCYcn+ksGOB5vj+U=;
 b=Jgfcbgc0feHq1MbPjS2AbMw545u2dUvbzcKrRRNRJay9a4iqFIYLSxsE
 qB7/n0et8kxg6sJ6EO9y5bbMmg/me/mHiA0XFZskA2Ow5WN9JUEfsVFzH
 s8+T9/xLVl+qpyI8ufeJQ+iSfLL980P0FU+eJrHscNHvQBI+R4lbg3TJk
 PwjuN74N+rOGAQu+JI+tx1RDMqEtPRAe1atRLHlxZkUN/AEMLdkDV1rsj
 +kCWxDxMFQBZIYwH+Xv+m5y1zAiY2sb8eFqPEpNThmi1iCejXPDiO/oFw
 VuL+VhE603abWqAwSNtTrUNqDwj+h2+KuUSONGxQL6hewNVcFDvmSoiUt g==;
X-CSE-ConnectionGUID: 1IDYusFWThWrqh1lKRyxxA==
X-CSE-MsgGUID: 7D8sumwHSnaF+iQ8ARUcSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="53179437"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="53179437"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:31:37 -0700
X-CSE-ConnectionGUID: Uzw1l/zHR164tjbjeK9oPQ==
X-CSE-MsgGUID: ahAJL3MoQvOPNZ+hHykjwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="157024104"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.120])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:31:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@gmail.com>
Subject: Re: [PATCH 02/20] drm/i915/dp_mst: Verify the link status always
 the same way
In-Reply-To: <20250626082053.219514-3-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-3-imre.deak@intel.com>
Date: Thu, 26 Jun 2025 11:31:31 +0300
Message-ID: <88efe57deeb6cb0cec213a43aab010a5f53e7577@intel.com>
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

On Thu, 26 Jun 2025, Imre Deak <imre.deak@intel.com> wrote:
> From: Imre Deak <imre.deak@gmail.com>
>
> The MST link status should be always verified from the same DPCD
> registers after link training. Atm, both the legacy (0x202 - 0x205) and
> the ESI (0x200C - 0x200F) link status registers are used. Use always the
> latter ESI version of link status registers.
>
> Signed-off-by: Imre Deak <imre.deak@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++++++++++--
>  1 file changed, 18 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3f911c930a30b..ac7e08f485309 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5176,6 +5176,23 @@ intel_dp_handle_hdmi_link_status_change(struct intel_dp *intel_dp)
>  	}
>  }
>  
> +static bool
> +intel_dp_read_link_status(struct intel_dp *intel_dp, u8 link_status[DP_LINK_STATUS_SIZE])
> +{
> +	bool ret;
> +
> +	memset(link_status, 0, DP_LINK_STATUS_SIZE);
> +
> +	if (intel_dp_mst_active_streams(intel_dp) > 0)
> +		ret = drm_dp_dpcd_read_data(&intel_dp->aux, DP_LANE0_1_STATUS_ESI,
> +					    link_status, DP_LINK_STATUS_SIZE - 2) == 0;
> +	else
> +		ret = drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DPRX,
> +						       link_status) == 0;

Please propagate the int instead of having "== 0" at the end of the
assignment.

I'm increasingly critical of bool returns for success/failure, because
they don't really mix well with 0 for success and negative values for
error.

> +
> +	return ret;
> +}
> +
>  static bool
>  intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
>  {
> @@ -5198,8 +5215,7 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
>  	if (intel_dp->link.force_retrain)
>  		return true;
>  
> -	if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DPRX,
> -					     link_status) < 0)
> +	if (!intel_dp_read_link_status(intel_dp, link_status))
>  		return false;
>  
>  	/*

-- 
Jani Nikula, Intel
