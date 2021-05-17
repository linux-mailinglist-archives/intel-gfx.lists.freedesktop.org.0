Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9FB38351F
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 17:19:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DD806E9DC;
	Mon, 17 May 2021 15:19:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9024C6E9DC
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 May 2021 15:18:59 +0000 (UTC)
IronPort-SDR: 7k+4l5zJDZKCW7Va1LbC5+JhA6aGojAJX4PLvzA8r9yzsIraxd7Roea0Y64WL/bFT0pWP97a0i
 B00i3Ifmam0Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="187892897"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="187892897"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 08:18:58 -0700
IronPort-SDR: s2Vba2YAsvmhpJ9oF1y/31VLewc5iOi6BgZG0kGHxpx+kRXeXmM3DpV6bzDo0lzujzPNtFJtGA
 sJoqG1cKT6iQ==
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="472448494"
Received: from sudhirk1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.50.192])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 08:18:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210515031035.2561658-3-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
 <20210515031035.2561658-3-matthew.d.roper@intel.com>
Date: Mon, 17 May 2021 18:18:52 +0300
Message-ID: <87r1i5fkwz.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 02/23] drm/i915/xelpd: Support DP1.4
 compression BPPs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 14 May 2021, Matt Roper <matthew.d.roper@intel.com> wrote:
> From: Vandita Kulkarni <vandita.kulkarni@intel.com>
>
> Support compression BPPs from bpc to uncompressed BPP -1.
> So far we have 8,10,12 as valid compressed BPPS now the
> support is extended.
>
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 5c9222283044..16cdec9a4aa3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -521,6 +521,7 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>  	drm_dbg_kms(&i915->drm, "Max small joiner bpp: %u\n",
>  		    max_bpp_small_joiner_ram);
>  
> +
>  	/*
>  	 * Greatest allowed DSC BPP = MIN (output BPP from available Link BW
>  	 * check, output bpp from small joiner RAM check)

What happened here? This is the full patch?


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
