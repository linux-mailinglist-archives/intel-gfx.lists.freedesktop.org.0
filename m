Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 723195631FF
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Jul 2022 12:54:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC5E710FBDF;
	Fri,  1 Jul 2022 10:54:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BDA110FBDF
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Jul 2022 10:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656672871; x=1688208871;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=G3InHVZKJZUnl3kvPBytEEY8vWm7T07UC6vxi5f4GFQ=;
 b=O1XoyRrA1jP8Ar4tZ8N07l2nzC7fs8Ftg7U1edsvZxxp6U9OH2Q46O2u
 J1mZE8HPIbIlUMvj8dkhL7aELEoDu3LCB/ItHURDF7rZh0q7U61sH5qZo
 Bohi8ZwwqqTYBtYPiO1YDlEsOY16lToZi5voX0aPGhuzGeAsEuJDCKCfG
 d7ozoY4bqFUgDHagz3GpkkrlN9zMcLXh3+JDTqL9vF5uffUd1pk1FQau6
 50+efDx+s10zBLzFXTt3gdNyTCAiQYBVV+loCiwv8f44iNR8mUlVbtgFQ
 TgHkV6IwBtOiFadqxAIBCBsMyuRl30GS7z/6vSvGWq0ztoMLhc/3QuOI1 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="308138176"
X-IronPort-AV: E=Sophos;i="5.92,236,1650956400"; d="scan'208";a="308138176"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 03:54:31 -0700
X-IronPort-AV: E=Sophos;i="5.92,236,1650956400"; d="scan'208";a="648306920"
Received: from ksecero-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.48.116])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 03:54:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220701104859.1236585-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220627105939.657782-1-arun.r.murthy@intel.com>
 <20220701104859.1236585-1-arun.r.murthy@intel.com>
Date: Fri, 01 Jul 2022 13:54:26 +0300
Message-ID: <87zghtm7bx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCHv2] drm/i915/dp: wait on timeout before retry
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

On Fri, 01 Jul 2022, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> On linktraining error/timeout before retry need to wait for 400usec as
> per the DP CTS spec1.2
>
> The patch with commit 74ebf294a1dd ("drm/i915: Add a delay in Displayport
> AUX transactions for compliance testing")
> removes this delay mentioning the hardware already meets this requirement,
> but as per the spec the delay mentioned in the spec specifies how long to
> wait for the receiver response before timeout. So the delay here to wait
> for timeout and not a delay after timeout. The DP spec specifies a delay
> after timeout and hence adding this delay.
>
> v2: fixed checkpatch errors and warnings
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 2bc119374555..3fcff3995009 100644
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
> +				DP_AUX_CH_CTL_TIME_OUT_ERROR)) {
>  				usleep_range(400, 500);
>  				continue;
>  			}

Hate to be a nag, but this is what the indentation should look like:

-			if (status & DP_AUX_CH_CTL_RECEIVE_ERROR) {
+			if (status & (DP_AUX_CH_CTL_RECEIVE_ERROR |
+				      DP_AUX_CH_CTL_TIME_OUT_ERROR)) {
 				usleep_range(400, 500);
 				continue;
 			}

i.e. leading tabs, then spaces. It'll pay off to have the editor do this
for you.

BR,
Jani.


-- 
2.30.2





-- 
Jani Nikula, Intel Open Source Graphics Center
