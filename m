Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 429F28BCD6A
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 14:05:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDD8C10EF96;
	Mon,  6 May 2024 12:05:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WGfCxGDb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4CF010EF96
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 12:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714997147; x=1746533147;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=a2zFapBVOXk5FPMruL0XIGpvcArzavp5BT99KfsP9RM=;
 b=WGfCxGDb71LnTLvFByw98LhmTQPIWOm4oyPQHDqyRLjSBuxhgUemVn/c
 /yFc1exNw9tTkrXxsmQXdMDttmwHaj/MRQPIYM7xTeQMsIKF3Rnlwiva+
 luWiAosaGQaHYfZxFAo/cr54bmiRBoTnMrtRincnbBomKhfKVEfySivUL
 u9Ye4xPgXgeCKkHFy6AaUXCxLoUnES5mFwdEo4VNlM8VQpAPDUDiSTj7H
 Zj86pYeKTQUpVvfZe9m0YA5h2xtEJAvMqbLdT72CK75ntJyt/JJTGrxO0
 74l4HSN9pdbir8+fo0cvajNsLUa3FT4UGBSu9lcV2vr1rJMqdLA23td9Q w==;
X-CSE-ConnectionGUID: Zj/3mqOWR2WW1b4t5lhXAg==
X-CSE-MsgGUID: HeQvcugnT8KkkgbGSKpB+w==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10861368"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10861368"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 05:05:47 -0700
X-CSE-ConnectionGUID: 8qhTc3P5TcSZD7zUmTrB0g==
X-CSE-MsgGUID: XSBZk7qgTJCIR5M6/D45Kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28157070"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 May 2024 05:05:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 May 2024 15:05:43 +0300
Date: Mon, 6 May 2024 15:05:43 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com
Subject: Re: [PATCH] drm/i915/display/dp: Remove UHBR13.5 for icl
Message-ID: <ZjjHl2oHYpm3--zR@intel.com>
References: <20240506090625.2812332-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240506090625.2812332-1-arun.r.murthy@intel.com>
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

On Mon, May 06, 2024 at 02:36:25PM +0530, Arun R Murthy wrote:
> UHBR13.5 is not supported in icl+ as well. This has been removed for mtl
> by the commit caf3d748f646 ("drm/i915/dp: Remove support for UHBR13.5")

icl/tgl/adl don't support UHBR at all. The numbers are
there for dg2 presumably, which I think does support this.

> 
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 163da48bc406..7098ca65701f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -507,7 +507,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  	};
>  	static const int icl_rates[] = {
>  		162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000,
> -		1000000, 1350000,
> +		1000000,
>  	};
>  	static const int bxt_rates[] = {
>  		162000, 216000, 243000, 270000, 324000, 432000, 540000
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
