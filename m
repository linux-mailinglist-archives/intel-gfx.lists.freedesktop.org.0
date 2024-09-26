Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5BB986FC2
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 11:16:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FC6310E1C3;
	Thu, 26 Sep 2024 09:16:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nDmqWLYd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DEE110E1C3
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2024 09:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727342189; x=1758878189;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=WJo3Ao/B4wl4PXQbhiNb6XNAs3bGgYxkp71jigvqrxE=;
 b=nDmqWLYdh7T1tpe1cExRSZ7S5HLzeyo8RUieJRZ4wtepg6UpYnWbHj5G
 8IQy6H6cCocChwzy3w42FNOKn0Zc8rwZB9PjtrCWVOGvSfO1rq5/b7C//
 De+7S+w3BZfFbaqPa704O1MOLA8grz8yw+4e8KMqkf0j5uJiClcXLBu4d
 MizAXr6dcWPAFT0RTx5eTybopZDkFCbE+DVhUPMvCKGueC+RigaIHFgTd
 TVME5gcIn8Is50BUS+hUIu2OeSai2SFV766OOjIECXi8EvgByXZG6C1EA
 aUxo5Ldknuz/ss2Ht9+D0xG+u+YSWd0ryfFvflauB4Q7bEGa+IQ+KPttj A==;
X-CSE-ConnectionGUID: jrt0hcwhQcy0lSLHZhFq5A==
X-CSE-MsgGUID: UmEhezbvRnS/46cWmjB5/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="26578761"
X-IronPort-AV: E=Sophos;i="6.10,260,1719903600"; d="scan'208";a="26578761"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 02:16:28 -0700
X-CSE-ConnectionGUID: oLpJi8sES3StwVqEeD29ZA==
X-CSE-MsgGUID: KgbDH+NrRdaWOONkxnzyXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,260,1719903600"; d="scan'208";a="102899751"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.124])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 02:16:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: stanislav.lisovskiy@intel.com, imre.deak@intel.com,
 ankit.k.nautiyal@intel.com
Subject: Re: [PATCH 5/5] drm/i915/dp: Ignore max_requested_bpc if its too
 low for DSC
In-Reply-To: <20231213091632.431557-6-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231213091632.431557-1-ankit.k.nautiyal@intel.com>
 <20231213091632.431557-6-ankit.k.nautiyal@intel.com>
Date: Thu, 26 Sep 2024 12:16:22 +0300
Message-ID: <87setm22s9.fsf@intel.com>
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

On Wed, 13 Dec 2023, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> At the moment, while choosing the input bpc for DSC, we take into
> account the max_requested_bpc property. This creates a problem, if the
> max_requested_bpc is lower than the minimum bpc required by source with
> DSC.
>
> So consider max_requested_bpc if its within the limits that we can
> support with DSC.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 22 ++++++++++++++++++----
>  1 file changed, 18 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index e8aa2f469142..0014aa5ea652 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1638,6 +1638,16 @@ int intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
>  	return 12;
>  }
>  
> +static int
> +intel_dp_dsc_limit_max_bpc(int max_requested_bpc, int src_dsc_max_bpc, int src_dsc_min_bpc)
> +{
> +	/* Consider max_requested_bpc only if src can support it with DSC */
> +	if (max_requested_bpc >= src_dsc_min_bpc)
> +		return min(src_dsc_max_bpc, max_requested_bpc);
> +
> +	return src_dsc_max_bpc;
> +}
> +
>  int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
>  				 u8 max_req_bpc)
>  {
> @@ -1651,7 +1661,8 @@ int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
>  	if (!dsc_max_bpc)
>  		return dsc_max_bpc;
>  
> -	dsc_max_bpc = min(dsc_max_bpc, max_req_bpc);
> +	dsc_max_bpc = intel_dp_dsc_limit_max_bpc(max_req_bpc, dsc_max_bpc,
> +						 intel_dp_dsc_min_src_input_bpc(i915));

Somehow that doesn't read so well.

I think something like this would improve clarity:

	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);

	max_req_bpc = clamp(max_req_bpc, dsc_min_bpc, dsc_max_bpc);

i.e. clamp the request to reasonable limits. That's more like regular
input checking. That should be done *everywhere* when
conn_state->max_requested_bpc is used.

Then min(dsc_max_bpc, max_req_bpc) is no longer needed because
max_req_bpc <= dsc_max_bpc is guaranteed.

IOW this becomes:

	dsc_max_bpc = clamp(max_req_bpc, dsc_min_bpc, dsc_max_bpc);

BR,
Jani.

>  
>  	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
>  						       dsc_bpc);
> @@ -2039,8 +2050,11 @@ bool is_dsc_pipe_bpp_sufficient(struct drm_i915_private *i915,
>  {
>  	int dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp, dsc_min_pipe_bpp;
>  
> -	dsc_max_bpc = min(intel_dp_dsc_max_src_input_bpc(i915), conn_state->max_requested_bpc);
>  	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
> +	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
> +
> +	dsc_max_bpc = intel_dp_dsc_limit_max_bpc(conn_state->max_requested_bpc,
> +						 dsc_max_bpc, dsc_min_bpc);
>  
>  	dsc_max_pipe_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
>  	dsc_min_pipe_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
> @@ -2100,14 +2114,14 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  		}
>  	}
>  
> +	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
>  	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
>  	if (!dsc_max_bpc)
>  		return -EINVAL;
>  
> -	dsc_max_bpc = min(dsc_max_bpc, max_req_bpc);
> +	dsc_max_bpc = intel_dp_dsc_limit_max_bpc(max_req_bpc, dsc_max_bpc, dsc_min_bpc);
>  	dsc_max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
>  
> -	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
>  	dsc_min_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
>  
>  	/*

-- 
Jani Nikula, Intel
