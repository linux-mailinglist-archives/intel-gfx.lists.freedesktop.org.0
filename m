Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 999B197CD9F
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 20:34:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30CBE10E750;
	Thu, 19 Sep 2024 18:34:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kIVxUA5t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE25110E750
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2024 18:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726770854; x=1758306854;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=3B9ZrlWo7AV0EkKeEA7I+qVk5ZH1nYSnq84KrgyWQtU=;
 b=kIVxUA5tCtxel9a7xuyVQKt5v5BWaicKcQBro9Y1vImECQ6NR5ot4kvq
 c/4VGUZRK/i1dXAxkqm/EEYCp3L3bjmn7N6zoa8dQa95T0uddCuOI6eop
 e1ZmQQyjVQgm8Zb1iQRyG6FpWHl5sqO/usCZpqf17vlBY7+tRhseZWe2f
 PEO3xXkW+EfgGNjICz0oyVtDIxJGeQSVb65SutYZJQAGfzXP9qlpBYFtu
 tNmOZmCuCgbZl9Ae2t0RxL7018eYTQMPoPNy6VkSnWVz4LhPZdSJCSv2f
 5Iw0YFT6VwuqdJm/xXojhHZHxmbNVgxc/aF7Mt4qpdQUXJFpM7HCWVGJZ g==;
X-CSE-ConnectionGUID: xWhUfPWhSWGkop0b+HEfxA==
X-CSE-MsgGUID: qzcQI9B+ThSRzjc070wNdQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25235451"
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="25235451"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 11:34:13 -0700
X-CSE-ConnectionGUID: ydGJT/ouTKemvHaOV43RYA==
X-CSE-MsgGUID: 02Z6KvfQRDSqZDiPSBpVmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="70159152"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Sep 2024 11:34:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2024 21:34:10 +0300
Date: Thu, 19 Sep 2024 21:34:10 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/quirks: make intel_dpcd_quirks const
Message-ID: <ZuxuouVHVBIRZwAW@intel.com>
References: <20240919153354.1269295-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240919153354.1269295-1-jani.nikula@intel.com>
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

On Thu, Sep 19, 2024 at 06:33:54PM +0300, Jani Nikula wrote:
> The array can be in rodate, make it const.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_quirks.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
> index 29b56d53a340..28f497ae785b 100644
> --- a/drivers/gpu/drm/i915/display/intel_quirks.c
> +++ b/drivers/gpu/drm/i915/display/intel_quirks.c
> @@ -231,7 +231,7 @@ static struct intel_quirk intel_quirks[] = {
>  	{ 0x0f31, 0x103c, 0x220f, quirk_invert_brightness },
>  };
>  
> -static struct intel_dpcd_quirk intel_dpcd_quirks[] = {
> +static const struct intel_dpcd_quirk intel_dpcd_quirks[] = {
>  	/* Dell Precision 5490 */
>  	{
>  		.device = 0x7d55,
> @@ -272,7 +272,7 @@ void intel_init_dpcd_quirks(struct intel_dp *intel_dp,
>  	int i;
>  
>  	for (i = 0; i < ARRAY_SIZE(intel_dpcd_quirks); i++) {
> -		struct intel_dpcd_quirk *q = &intel_dpcd_quirks[i];
> +		const struct intel_dpcd_quirk *q = &intel_dpcd_quirks[i];
>  
>  		if (d->device == q->device &&
>  		    (d->subsystem_vendor == q->subsystem_vendor ||
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
