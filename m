Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7BB7FD40A
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 11:24:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DDE910E468;
	Wed, 29 Nov 2023 10:24:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B844B10E468
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Nov 2023 10:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701253440; x=1732789440;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=nB+O3gec9Nojv2sHTRqpY+gL7PtDLrQdo9hDj8pAcxo=;
 b=b1MmgV3oau+0cYH6xg9FT0SKIukhnLTCIXNK0wDs5rh3E+UT+VjsP/mK
 TS8DaPJddPbPX8wN3i2BYHtFiwICPoOCrvZ75mtwhAkl6gQYYPl3mOmVw
 2iYf7ywr1eK192XxJDdThPLp48ss4jXEzEtnCLEZTQJ+btbnBVJOsBaeC
 xi+62C7wQZ3mWaqMVLYAh8V0mzTlA9qiHSOCdo5z338XLJlFod9R53Q1w
 eCMgge1p9hrUdiXs3VqmX1MrelgjIR/4f7rxB1iAP9LX6tLihjnwFBRYX
 m5FMj8FLFaaAQcQEqBeFMkIADVz8LZMn2tOWm+Wmba9C1M4yzSDzHbNC0 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="35472"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; 
   d="scan'208";a="35472"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 02:24:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="839363378"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="839363378"
Received: from dstavrak-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.60.61])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 02:23:57 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Karthik Poosa <karthik.poosa@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20231129102555.978644-1-karthik.poosa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231129102555.978644-1-karthik.poosa@intel.com>
Date: Wed, 29 Nov 2023 12:23:55 +0200
Message-ID: <87y1eg6eo4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hwmon: Fix static analysis tool
 errors in i915 hwmon
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
Cc: Karthik Poosa <karthik.poosa@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 29 Nov 2023, Karthik Poosa <karthik.poosa@intel.com> wrote:
> Updated i915 hwmon with fixes for issues reported by static analysis tool.

What's the problem? It's not enough to say this fixes a static analyzer
report. Tell us what the problem is, and why this is the fix.

BR,
Jani.


>
> Signed-off-by: Karthik Poosa <karthik.poosa@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_hwmon.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> index 975da8e7f2a9..69bb49a684b6 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.c
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -175,7 +175,7 @@ hwm_power1_max_interval_show(struct device *dev, struct device_attribute *attr,
>  	 *     tau4 = (4 | x) << y
>  	 * but add 2 when doing the final right shift to account for units
>  	 */
> -	tau4 = ((1 << x_w) | x) << y;
> +	tau4 = ((u64)(1 << x_w) | x) << y;
>  	/* val in hwmon interface units (millisec) */
>  	out = mul_u64_u32_shr(tau4, SF_TIME, hwmon->scl_shift_time + x_w);
>  
> @@ -211,7 +211,7 @@ hwm_power1_max_interval_store(struct device *dev,
>  	r = FIELD_PREP(PKG_MAX_WIN, PKG_MAX_WIN_DEFAULT);
>  	x = REG_FIELD_GET(PKG_MAX_WIN_X, r);
>  	y = REG_FIELD_GET(PKG_MAX_WIN_Y, r);
> -	tau4 = ((1 << x_w) | x) << y;
> +	tau4 = ((u64)(1 << x_w) | x) << y;
>  	max_win = mul_u64_u32_shr(tau4, SF_TIME, hwmon->scl_shift_time + x_w);
>  
>  	if (val > max_win)

-- 
Jani Nikula, Intel
