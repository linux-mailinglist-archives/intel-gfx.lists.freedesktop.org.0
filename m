Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C342697F106
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 21:04:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FBBD10E477;
	Mon, 23 Sep 2024 19:04:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B2B12MX+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6232810E477;
 Mon, 23 Sep 2024 19:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727118247; x=1758654247;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RbDWB6lag25YV8nVt/YDv8EebCCgSQ8m1Pn+aoruszI=;
 b=B2B12MX+ZARWF3JB9748oxR+mJdLUxRVsB1XauYopkB9TjZ080DP19y5
 NSB/0XF/XtCIxiVAPoFVyOUA9fEe4hA3rf+OpTbfbTonMlDJEHIR7BsOm
 hsWPWH1fkcuoFBrDvbK5eJ/n/5swLWAFFRBPT8prd+ATy/lI4bQuWASks
 AQh2DWHMMngaHCSMH/U6BNur08PdYdIIZPqmacj+yCUFE36ESggfmNbRj
 tFeKXBhvWD+B1G2j0a0eyNdLTbVSW+YFqxYH4AIJy+OWABIALcIMPNL8Q
 nXAvBUcVMjyJ+BGAu9QbXaC9h4faM/xlEK/ooOHqK/uCgyhGP9nrSWsLu Q==;
X-CSE-ConnectionGUID: EXAWpijUTZqAGBMEyQ4VWw==
X-CSE-MsgGUID: wFG5O9AXRk2eTmdsrUmMJQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="13715478"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="13715478"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 12:04:07 -0700
X-CSE-ConnectionGUID: FLQDlI7RRra+JUukarIT8w==
X-CSE-MsgGUID: KDuidBbvQQijeytUgclOLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="71303393"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Sep 2024 12:04:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Sep 2024 22:04:04 +0300
Date: Mon, 23 Sep 2024 22:04:04 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 13/16] drm/i915/dp: Modify helper to get slice count for
 ultrajoiner
Message-ID: <ZvG7pAe-OojFoLIq@intel.com>
References: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
 <20240923181336.3303940-14-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240923181336.3303940-14-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
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

On Mon, Sep 23, 2024 at 11:43:33PM +0530, Ankit Nautiyal wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> ultrajoiner needs 2 bigjoiners to be enabled, so modify the helper
> intel_dp_dsc_get_slice_count for ultrajoiner.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index a853f975bda1..115d8468bb91 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -996,8 +996,11 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>  		    drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd, false))
>  			break;
>  
> -		/* big joiner needs small joiner to be enabled */
> -		if (num_joined_pipes == 2 && test_slice_count < 4)
> +		/*
> +		 * big joiner needs small joiner to be enabled,
> +		 * and ultrajoiner needs 2 bigjoiners to be enabled
> +		 */
> +		if (num_joined_pipes > 1 && test_slice_count < num_joined_pipes * 2)

This is now

u8 test_slice_count = valid_dsc_slicecount[i] * num_joined_pipes;
if (num_joined_pipes > 1 && test_slice_count < num_joined_pipes * 2)
	continue;

which we could simply to just

if (num_joined_pipes > 1 && valid_dsc_slicecount[i] < 2)
	continue;

which might more clearly reflect what the original comment
"big joiner needs small joiner to be enabled" seems to
be trying to say (basically that we need at least two slices
per pipe) whenever bigjoiner is enabled. Ultrajoiner presumably
does not really change that fact in any way?

>  			continue;
>  
>  		if (min_slice_count <= test_slice_count)
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
