Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA667EAC58
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 10:00:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4D0310E1DA;
	Tue, 14 Nov 2023 09:00:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9DCC10E1DA
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699952453; x=1731488453;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=VA8mFzE3K3idJ7LQjjAQ4jNNWc5gxOacPziaLlRcM8U=;
 b=FRKoX3zyxzDos6Zk9IwTPCw4bCy3acqlfC1CtwoKlPB1FQkSWMgcjIIs
 6oIAqB1HMtQEjvgKZuO8Cazc5EtuKkI6KxZ7PIURRMHoF5ArGAPn2jkk5
 YZ5QbGHSrcbAUrbSCjMKuCVrDk9yY/SodS6p+dnEFMpDZKG3OjYvx5J4r
 sgwZB/wpKkB8XjQ5g6/WCehkcmTJMgiNpD9W4jV99M0GGTQJqVLrDF5kb
 xQ51vAcoOnng9t/7FepJKOyh9kGyX2/Hkg1tK0oQv+PBe5/qBFXlw//mY
 qvWAdRRZYBHq8RPvLEW0Cgm/ekOpmCo0kRP6MdfW+lVgLC1+XWo4AUGIr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="393472359"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; d="scan'208";a="393472359"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 01:00:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="793713391"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; d="scan'208";a="793713391"
Received: from hatran1-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.56.145])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 01:00:52 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20231113201110.510724-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231113201110.510724-1-imre.deak@intel.com>
Date: Tue, 14 Nov 2023 11:00:49 +0200
Message-ID: <87v8a4so8u.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/dp: Account for channel coding
 efficiency on UHBR links
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

On Mon, 13 Nov 2023, Imre Deak <imre.deak@intel.com> wrote:
> Apply the correct BW allocation overhead and channel coding efficiency
> on UHBR link rates, similarly to DP1.4 link rates.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 10 ----------
>  1 file changed, 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 3effafcbb411a..24aebdb715e7d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2398,16 +2398,6 @@ add_bw_alloc_overhead(int link_clock, int bw_overhead,
>  	int ch_coding_efficiency =
>  		drm_dp_bw_channel_coding_efficiency(is_uhbr);

Why do we have this and intel_dp_max_data_rate() separately?

BR,
Jani.


>  
> -	/*
> -	 * TODO: adjust for actual UHBR channel coding efficiency and BW
> -	 * overhead.
> -	 */
> -	if (is_uhbr) {
> -		*data_m = pixel_data_rate;
> -		*data_n = link_data_rate * 8 / 10;
> -		return;
> -	}
> -
>  	*data_m = DIV_ROUND_UP_ULL(mul_u32_u32(pixel_data_rate, bw_overhead),
>  				   1000000);
>  	*data_n = DIV_ROUND_DOWN_ULL(mul_u32_u32(link_data_rate, ch_coding_efficiency),

-- 
Jani Nikula, Intel
