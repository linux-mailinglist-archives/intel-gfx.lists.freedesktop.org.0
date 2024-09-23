Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE48297F11B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 21:08:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 815C010E47C;
	Mon, 23 Sep 2024 19:08:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YtKR59uW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 655D210E479;
 Mon, 23 Sep 2024 19:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727118496; x=1758654496;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=BsLDYHHGkokgl7kOmsKKmfgm3NN8RjXPCF8FrLiP0zo=;
 b=YtKR59uWdJAv9J3P997JklSt6aJQ6EYPq67LGj5toZnJgK3TM+G2B/cc
 QJ4rpr7oQf3DkV+wm4UKMoUdvkPHCP1lkztoILHp12NenWDiQtMMIh0MX
 vU/yD04ydQXhMU73Vv3Ct+vM3fOzLoJb0jnQGjrKxR9GHpOc93mfzWQDM
 JhD2oF6bbraueWT5h05pd4IOCCB9lNY59046E8BJMGXY5GdC53u/zhqp6
 HhqgHBIaEe6kzj8v+p8zOgnTNaFAuoWBnFOGyvIVrweuIDVrn1SudavIU
 sYCi9X/pppUcUzUiKi+Zp+MONdO9gGDXmAm1DiexJ3KEOKJueCY2Je3Ko A==;
X-CSE-ConnectionGUID: 5rsV29EqRKKlN7jisBlVEA==
X-CSE-MsgGUID: 80cp4au9TcSsu6iDeWIJxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="28978520"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="28978520"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 12:08:15 -0700
X-CSE-ConnectionGUID: +ED/ZxL+TXSDBbaYYzP4aw==
X-CSE-MsgGUID: u0KDg5B3TnC2fhyJhSoLXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="71303820"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Sep 2024 12:08:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Sep 2024 22:08:11 +0300
Date: Mon, 23 Sep 2024 22:08:11 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 15/16] drm/i915/display: Consider ultrajoiner for
 computing maxdotclock
Message-ID: <ZvG8mwXNn5PgFPK7@intel.com>
References: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
 <20240923181336.3303940-16-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240923181336.3303940-16-ankit.k.nautiyal@intel.com>
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

On Mon, Sep 23, 2024 at 11:43:35PM +0530, Ankit Nautiyal wrote:
> Use the check for ultrajoiner while computing maxdotclock.
> 
> v2: Add Check for HAS_UNCOMPRESSED_JOINER. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 22ff3e225140..4c31d398ca4b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8189,8 +8189,10 @@ static int max_dotclock(struct drm_i915_private *i915)
>  {
>  	int max_dotclock = i915->display.cdclk.max_dotclk_freq;
>  
> -	/* icl+ might use joiner */
> -	if (HAS_BIGJOINER(i915))
> +	if (HAS_ULTRAJOINER(i915))
> +		max_dotclock *= 4;
> +

Extraneous newline. With that removed
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +	else if (HAS_UNCOMPRESSED_JOINER(i915) || HAS_BIGJOINER(i915))
>  		max_dotclock *= 2;
>  
>  	return max_dotclock;
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
