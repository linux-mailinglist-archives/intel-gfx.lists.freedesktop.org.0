Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAE63E1B5B
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 20:32:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F30E46E875;
	Thu,  5 Aug 2021 18:32:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 079126E875
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Aug 2021 18:32:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="194498369"
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="194498369"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 11:32:18 -0700
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="480937266"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 11:32:18 -0700
Date: Thu, 5 Aug 2021 11:42:34 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: intel-gfx@lists.freedesktop.org, uma.shankar@intel.com
Message-ID: <20210805184234.GA16497@labuser-Z97X-UD5H>
References: <20210805101937.14664-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210805101937.14664-1-vandita.kulkarni@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Update small joiner ram size
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

On Thu, Aug 05, 2021 at 03:49:37PM +0530, Vandita Kulkarni wrote:
> Xelpd supports larger small joiner ram.
> 
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 75d4ebc66941..d174f0d6e7cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -461,7 +461,9 @@ u32 intel_dp_mode_to_fec_clock(u32 mode_clock)
>  static int
>  small_joiner_ram_size_bits(struct drm_i915_private *i915)
>  {
> -	if (DISPLAY_VER(i915) >= 11)
> +	if (DISPLAY_VER(i915) >= 13)
> +		return 17280 * 8;

Verified from the Bspec, looks good to me.

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> +	else if (DISPLAY_VER(i915) >= 11)
>  		return 7680 * 8;
>  	else
>  		return 6144 * 8;
> -- 
> 2.32.0
> 
