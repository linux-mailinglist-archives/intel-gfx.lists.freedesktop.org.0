Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6674A563111
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Jul 2022 12:11:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9303D11A422;
	Fri,  1 Jul 2022 10:11:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D684C11A422
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Jul 2022 10:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656670288; x=1688206288;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=eCs5+kscvFI19jR7eDOHLEoXEWda0u4lBPU7w1SxDjc=;
 b=MzvDJSBupUnQPeh9YXjvyuhXCaGv8UOJ3M6oR8fzdUYBPBL1go9MxTQY
 Mt1ODyC41Kpx1C7O6s+inqwBxgE9UtyNyhuhvensEE6QbEYsFi5gXqk5M
 uTi69ljfQ4VzigJnr5G1pPmJkV3ZruMEYVhN+xUfeQbiSGuuPZ9tNYeGi
 TBzlRTgN0IWX5QKPoNT9vFDpf2aSuKBCdoKVLzUl/Q248qFFWSdR1bTc+
 mYzKRV4EsLr9zDS5l6EQOO+s37Oj0cdmXO24vyXcslJCkoRMOSUgkvf85
 YO8/zZP4KoHftQmq9DxVL31J1n1fhtoU5if5/hkt7rDCXIpVcyhESEAOr A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="368935740"
X-IronPort-AV: E=Sophos;i="5.92,236,1650956400"; d="scan'208";a="368935740"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 03:11:28 -0700
X-IronPort-AV: E=Sophos;i="5.92,236,1650956400"; d="scan'208";a="648292419"
Received: from ksecero-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.48.116])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 03:11:26 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220627105939.657782-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220627105939.657782-1-arun.r.murthy@intel.com>
Date: Fri, 01 Jul 2022 13:11:23 +0300
Message-ID: <87a69tnnw4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: wait on timeout before retry
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
Cc: tprevite@gmail.com, paulo.r.zanoni@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 27 Jun 2022, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> On linktraining error/timeout before retry need to wait for 400usec as
> per the DP CTS spec1.2
> The patch with commit id
> 74ebf294a1dd816bdc248ac733009a8915d59eb5
> drm/i915: Add a delay in Displayport AUX transactions for
> compliance testing

Please reference other commits like this: commit 74ebf294a1dd
("drm/i915: Add a delay in Displayport AUX transactions for compliance
testing")

I've got this git alias in my .gitconfig:

	cite = "!f() { git log -1 '--pretty=format:%H (\"%s\")%n' $1 | sed -e 's/\\([0-f]\\{12\\}\\)[0-f]*/\\1/'; }; f"

And you can use 'git cite <commit-ish>' to give you the right format.

> removes this delay mentioning the hardware already meets this
> requirement, but as per the spec the delay mentioned in the spec
> specifies how long to wait for the receiver response before timeout. So
> the delay here to wait for timeout and not a delay after timeout. The DP
> spec specifies a delay after timeout and hence adding this delay.

Please try to reflow commit messages to about 72 characters.

I had a bit of a hard time parsing the above, but basically you're
saying that the hardware handles and flags the timeout, but the DP spec
says we need to wait 400 us *after* the error condition. Makes sense,
though I didn't have the time to read the specs to verify.

>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 2bc119374555..a1fef1645d6a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -286,13 +286,9 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  			/*
>  			 * DP CTS 1.2 Core Rev 1.1, 4.2.1.1 & 4.2.1.2
>  			 *   400us delay required for errors and timeouts
> -			 *   Timeout errors from the HW already meet this
> -			 *   requirement so skip to next iteration
>  			 */
> -			if (status & DP_AUX_CH_CTL_TIME_OUT_ERROR)
> -				continue;
> -
> -			if (status & DP_AUX_CH_CTL_RECEIVE_ERROR) {
> +			if (status & (DP_AUX_CH_CTL_RECEIVE_ERROR |
> +						DP_AUX_CH_CTL_TIME_OUT_ERROR)) {

Please check the indentation here. The DP_AUX_CH_* should start in the
same column.

BR,
Jani.

>  				usleep_range(400, 500);
>  				continue;
>  			}

-- 
Jani Nikula, Intel Open Source Graphics Center
