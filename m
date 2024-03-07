Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CF48754FF
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 18:15:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F262511380E;
	Thu,  7 Mar 2024 17:15:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HUvGrb4v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24B041137FD
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Mar 2024 17:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709831754; x=1741367754;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=2h4b5AIQJ3MOcVa6OhSrKL7BESX46sBcWlp4xPwXYcw=;
 b=HUvGrb4vVmIvzHBF5oBili56ADOydvNPCR8XKbs5bRNF6KHcoI+ljYFN
 WyU+0Y4MTDqjPJQpeDbJWEgNszrOTijBoPMLJDUu3PUzTZ5YgGtpq6Jrs
 HP0nyT9GvHv6BH7756xZZZk8dcxTM0/x8Ru93nKGZs9y7CscOgPcrGXYZ
 La5o5XpXG0udrJ36A04Pa5uaKuhMlvub6XXSckyxe//gUXmULwJfmsp3l
 jKZqpIJrOL2oCHHYtFMNrh4o7YqmkF+3sV5UgN6aMr0HdSW8HwO0Sk5oc
 ZcphVap1V5PkRAVc4okH8ySX63srd1faO1m8aw5lTSUt3mLcBF5Rdh78F w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4369398"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; 
   d="scan'208";a="4369398"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 09:15:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="827774850"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="827774850"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 07 Mar 2024 09:15:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Mar 2024 19:15:50 +0200
Date: Thu, 7 Mar 2024 19:15:50 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v4 4/5] drm/i915/psr: Add IO buffer wake times for
 LunarLake and beyond
Message-ID: <Zen2Rm3VDV9nSn3L@intel.com>
References: <20240306083427.2040475-1-jouni.hogander@intel.com>
 <20240306083427.2040475-5-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240306083427.2040475-5-jouni.hogander@intel.com>
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

On Wed, Mar 06, 2024 at 10:34:26AM +0200, Jouni Högander wrote:
> IO buffer wake time used for IO wake calculation is dependent on port clock
> on LunarLake and beyond. Take this into account in get_io_buffer_wake_time.
> 
> Bspec: 65450
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index e1df0ece9fa3..e8410e770da8 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1160,6 +1160,9 @@ static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
>   * This is not directly mentioned in Bspec. There are 50 us io wake time and 32
>   * us fast wake time. Clearly preharge pulses are not (improperly) included in
>   * 32 us fast wake time. 50 us - 32 us = 18 us.
> + *
> + * For DISPLAY_VER >= 20
> + * RBR 15us, HBR1 11us, higher rates 10us
>   */
>  static int get_io_buffer_wake_time(const struct intel_crtc_state *crtc_state)
>  {
> @@ -1167,8 +1170,12 @@ static int get_io_buffer_wake_time(const struct intel_crtc_state *crtc_state)
>  
>  	if (DISPLAY_VER(i915) < 12)
>  		return 18;
> -	else
> +	else if (DISPLAY_VER(i915) < 20 || crtc_state->port_clock > 270000)
>  		return 10;
> +	else if (crtc_state->port_clock > 162000)
> +		return 11;
> +	else
> +		return 15;

That's getting rather messy. I think having separate functions for 
skl vs. tgl vs. mtl (assuming the ver==20 is mtl) would be cleaner.
And the only one of those that I think deserves a comment is skl since 
there we don't get a proper value from bspec directly.

>  }
>  
>  static bool _compute_alpm_params(struct intel_dp *intel_dp,
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
