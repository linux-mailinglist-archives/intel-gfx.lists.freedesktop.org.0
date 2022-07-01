Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E693456325F
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Jul 2022 13:14:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5112011A730;
	Fri,  1 Jul 2022 11:14:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6521911A0F2
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Jul 2022 11:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656674097; x=1688210097;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=angud70QebqEznMYNJkj7T29Bw3o11awtNDY+ok6zWc=;
 b=kYd90i4pKeIfr47ezr8vnN72ZNELg8u45rXorbPvHs0YBx5GNgeC+WXy
 SYqDvwEE5xEKXR0obNPiIOXDUGLy7ieRlFRwGK8/RdLm9pXf4QBR4v6s8
 TiMQ8nWs+JCGqINhiM0g93Xs0sirZOHsXNdd7h5FJwdPw9HrIi4NnbtZY
 0217bmtW9yTXZzmeyggHz0OUYBKiw7zv/HljNQJAE4mdhpydqZJnUnrpP
 lPiMLbiDGEoju+4g6cxiCnQMIGIL08wQ+5TOZ9+3BZ1Pl8ir8UkGvuJz3
 Q1FEuT+pgMHZWG45lmYw4HMigx5rJJbjdE15IN/Dm4S1+XQVOH3luHbpD g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="265658815"
X-IronPort-AV: E=Sophos;i="5.92,236,1650956400"; d="scan'208";a="265658815"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 04:14:56 -0700
X-IronPort-AV: E=Sophos;i="5.92,236,1650956400"; d="scan'208";a="596223930"
Received: from ksecero-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.48.116])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 04:14:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220701110309.1237002-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220627105939.657782-1-arun.r.murthy@intel.com>
 <20220701110309.1237002-1-arun.r.murthy@intel.com>
Date: Fri, 01 Jul 2022 14:14:51 +0300
Message-ID: <87sfnlm6dw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915/dp: wait on timeout before retry
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
> v2: fixed checkpatch warning and error
> v3: used proper indentation
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>

Based on the description alone,

Acked-by: Jani Nikula <jani.nikula@intel.com>

but would be good if you could get someone to double check the details
against bspec and CTS.

> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 2bc119374555..722c9f210690 100644
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
> +				      DP_AUX_CH_CTL_TIME_OUT_ERROR)) {
>  				usleep_range(400, 500);
>  				continue;
>  			}

-- 
Jani Nikula, Intel Open Source Graphics Center
