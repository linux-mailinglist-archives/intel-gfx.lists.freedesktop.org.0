Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C2E8075F8
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Dec 2023 18:02:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9AB310E79E;
	Wed,  6 Dec 2023 17:02:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1896310E79A
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Dec 2023 17:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701882128; x=1733418128;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=sp1gdW3OIwTfsOtIji+jFqGdr8ieBPBr0C0dyiMgE7Y=;
 b=VZ71VEuU8t8eP7w11T8Zp0HsHAIvx0FIxMgIVyeddQYH99fHmPg3ef0O
 5j6xJZ9B6ggotkLDfQkbL1GxGq/bU0hYTz5JN9tG7d8fVDiuOGfH5k3WM
 50pKPQdMOIim+M/j+owrY5EtwN5kgoHV7wI9qmGBStKJhRZzTasQqmDsr
 i78bW33zLgZ0zMjF7Ct74skXnkyb6KJa3hlnRwNMiix3X5H96gAeFnBtI
 CRJ8mhOAFJhU02jbKJkef+Ln88fcn+9ngV2r1R+pt1VV1YYC5vc1K4VwD
 O7n9isyA1WAmczss0ITD+OVxgY/is/CgV68SLyFa6W5tnpc9/TdQSJgJq w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="480289474"
X-IronPort-AV: E=Sophos;i="6.04,255,1695711600"; d="scan'208";a="480289474"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 09:02:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="747661365"
X-IronPort-AV: E=Sophos;i="6.04,255,1695711600"; d="scan'208";a="747661365"
Received: from karthik-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.46.178])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 09:02:03 -0800
Date: Wed, 6 Dec 2023 18:02:00 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Karthik Poosa <karthik.poosa@intel.com>
Message-ID: <ZXCpCKcJXJl0l4OP@ashyti-mobl2.lan>
References: <20231201143430.1320510-1-karthik.poosa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231201143430.1320510-1-karthik.poosa@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hwmon: Fix issues found by static
 analysis tool in i915 hwmon
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Karthik,

On Fri, Dec 01, 2023 at 08:04:30PM +0530, Karthik Poosa wrote:
> Updated i915 hwmon with fixes for issues reported by static analysis tool.
> Fixed unintentional buffer overflow (OVERFLOW_BEFORE_WIDEN) with upcasting.

what kind of error was this? Was it caught by a static analyzer
or did you actually hit the overflow?

Thanks,
Andi

> Fixes: 4c2572fe0ae7 ("drm/i915/hwmon: Expose power1_max_interval")
> Signed-off-by: Karthik Poosa <karthik.poosa@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_hwmon.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> index 975da8e7f2a9..8c3f443c8347 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.c
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -175,7 +175,7 @@ hwm_power1_max_interval_show(struct device *dev, struct device_attribute *attr,
>  	 *     tau4 = (4 | x) << y
>  	 * but add 2 when doing the final right shift to account for units
>  	 */
> -	tau4 = ((1 << x_w) | x) << y;
> +	tau4 = (u64)((1 << x_w) | x) << y;
>  	/* val in hwmon interface units (millisec) */
>  	out = mul_u64_u32_shr(tau4, SF_TIME, hwmon->scl_shift_time + x_w);
>  
> @@ -211,7 +211,7 @@ hwm_power1_max_interval_store(struct device *dev,
>  	r = FIELD_PREP(PKG_MAX_WIN, PKG_MAX_WIN_DEFAULT);
>  	x = REG_FIELD_GET(PKG_MAX_WIN_X, r);
>  	y = REG_FIELD_GET(PKG_MAX_WIN_Y, r);
> -	tau4 = ((1 << x_w) | x) << y;
> +	tau4 = (u64)((1 << x_w) | x) << y;
>  	max_win = mul_u64_u32_shr(tau4, SF_TIME, hwmon->scl_shift_time + x_w);
>  
>  	if (val > max_win)
> -- 
> 2.25.1
