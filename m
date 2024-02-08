Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F80684E476
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 16:56:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C719710E0B1;
	Thu,  8 Feb 2024 15:56:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NywdskQ3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFB8110E0B1
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Feb 2024 15:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707407769; x=1738943769;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=lAwzNKO/gag6aJ20qqU1kWN6RLF7uPPEhVquuaSE/MQ=;
 b=NywdskQ3WCMw8qel9GMEq2BCIVK5I09IqOX3/cGdTdpCXrDsBk6Nc331
 Te8BzyLjPiHorlsbZCnAwat67RdozC8r47MDmZbsLkJFKGGjigDMyCi/B
 J6amQRW44o6Vh4CydvzPCy7V3AOktS0JkUkmE1dpkeRmaXCcDOy6Vfzob
 QuHi7NeU/cfCjlgOGs2nXu2svuQQ9SiwfHzdsmXNsIIyLap9v0nHGjVjj
 orErouwHSHUYjytd0TJsSujh8120woimV2SOwXBY8Mprt+mNU75e2R3JL
 7jP1X7zwK9g8bOI7g+0UMaTgCLhC/ew8z+hktT76HLKmpcA76s2zHFi43 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="1384716"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; 
   d="scan'208";a="1384716"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 07:56:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; 
   d="scan'208";a="1682539"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 07:56:00 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: stable@vger.kernel.org
Subject: Re: [PATCH] drm/i915/dp: Limit SST link rate to <=8.1Gbps
In-Reply-To: <20240208154552.14545-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240208154552.14545-1-ville.syrjala@linux.intel.com>
Date: Thu, 08 Feb 2024 17:55:53 +0200
Message-ID: <87le7var1y.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 08 Feb 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Limit the link rate to HBR3 or below (<=3D8.1Gbps) in SST mode.
> UHBR (10Gbps+) link rates require 128b/132b channel encoding
> which we have not yet hooked up into the SST/no-sideband codepaths.
>
> Cc: stable@vger.kernel.org
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

My bad.

I guess this is the smallest most isolated fix for stable.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>



> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index ab415f41924d..5045c34a16be 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2356,6 +2356,9 @@ intel_dp_compute_config_limits(struct intel_dp *int=
el_dp,
>  	limits->min_rate =3D intel_dp_common_rate(intel_dp, 0);
>  	limits->max_rate =3D intel_dp_max_link_rate(intel_dp);
>=20=20
> +	/* FIXME 128b/132b SST support missing */
> +	limits->max_rate =3D min(limits->max_rate, 810000);
> +
>  	limits->min_lane_count =3D 1;
>  	limits->max_lane_count =3D intel_dp_max_lane_count(intel_dp);

--=20
Jani Nikula, Intel
