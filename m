Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FD01A9BD5
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 13:11:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1FA16E963;
	Wed, 15 Apr 2020 11:11:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C30496E963
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 11:11:12 +0000 (UTC)
IronPort-SDR: UHiYupcvx6Ci7X1LvhgQFeBPtRww3N7sxPhqtoE6QG3f5LgFCRWxNSlSJxQIrl1XhRC5rqVa1D
 tCnfbXpUFzUw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 04:11:12 -0700
IronPort-SDR: QlO/xvfhEE1n/5CtQHnYUJIHVZ9Qu8ZP2V6X635EmursCUyCqayYNy5v7ndjAaUKHx7gFW4Itx
 cgXKf5dQbM9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,386,1580803200"; d="scan'208";a="400282827"
Received: from lbrannix-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.93.149])
 by orsmga004.jf.intel.com with ESMTP; 15 Apr 2020 04:11:09 -0700
Date: Wed, 15 Apr 2020 14:11:08 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200415111108.GB50947@intel.intel>
References: <20200414161423.23830-1-chris@chris-wilson.co.uk>
 <20200414161423.23830-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414161423.23830-2-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Shrink the RPS evalution
 intervals
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

On Tue, Apr 14, 2020 at 05:14:23PM +0100, Chris Wilson wrote:
> Try to make RPS dramatically more responsive by shrinking the evaluation
> intervales by a factor of 100! The issue is as we now park the GPU
> rapidly upon idling, a short or bursty workload such as the composited
> desktop never sustains enough work to fill and complete an evaluation
> window. As such, the frequency we program remains stuck. This was first
> reported as once boosted, we never relinquished the boost [see commit
> 21abf0bf168d ("drm/i915/gt: Treat idling as a RPS downclock event")] but
> it equally applies in the order direction for bursty workloads that
> *need* low latency, like desktop animations.
> 
> What we could try is preserve the incomplete EI history across idling,
> it is not clear whether that would be effective, nor whether the
> presumption of continuous workloads is accurate. A clearer path seems to
> treat it as symptomatic that we fail to handle bursty workload with the
> current EI, and seek to address that by shrinking the EI so the
> evaluations are run much more often.
> 
> This will likely entail more frequent interrupts, and by the time we
> process the interrupt in the bottom half [from inside a worker], the
> workload on the GPU has changed. To address the changeable nature, in
> the previous patch we compared the previous complete EI with the
> interrupt request and only up/down clock if both agree. The impact of
> asking for, and presumably, receiving more interrupts is still to be
> determined and mitigations sought. The first idea is to differentiate
> between up/down responsivity and make upclocking more responsive than
> downlocking. This should both help thwart jitter on bursty workloads by
> making it easier to increase than it is to decrease frequencies, and
> reduce the number of interrupts we would need to process.
> 
> Fixes: 21abf0bf168d ("drm/i915/gt: Treat idling as a RPS downclock event")
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1698
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Andi Shyti <andi.shyti@intel.com>
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: Francisco Jerez <currojerez@riseup.net>
> Cc: <stable@vger.kernel.org> # v5.5+
> ---
>  drivers/gpu/drm/i915/gt/intel_rps.c | 27 ++++++++++++++-------------
>  1 file changed, 14 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index 367132092bed..47ddb25edc97 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -542,37 +542,38 @@ static void rps_set_power(struct intel_rps *rps, int new_power)
>  	/* Note the units here are not exactly 1us, but 1280ns. */
>  	switch (new_power) {
>  	case LOW_POWER:
> -		/* Upclock if more than 95% busy over 16ms */
> -		ei_up = 16000;
> +		/* Upclock if more than 95% busy over 160us */
> +		ei_up = 160;
>  		threshold_up = 95;
>  
> -		/* Downclock if less than 85% busy over 32ms */
> -		ei_down = 32000;
> +		/* Downclock if less than 85% busy over 1600us */
> +		ei_down = 1600;
>  		threshold_down = 85;
>  		break;
>  
>  	case BETWEEN:
> -		/* Upclock if more than 90% busy over 13ms */
> -		ei_up = 13000;
> +		/* Upclock if more than 90% busy over 160us */
> +		ei_up = 160;
>  		threshold_up = 90;
>  
> -		/* Downclock if less than 75% busy over 32ms */
> -		ei_down = 32000;
> +		/* Downclock if less than 75% busy over 1600us */
> +		ei_down = 1600;
>  		threshold_down = 75;
>  		break;
>  
>  	case HIGH_POWER:
> -		/* Upclock if more than 85% busy over 10ms */
> -		ei_up = 10000;
> +		/* Upclock if more than 85% busy over 160us */
> +		ei_up = 160;
>  		threshold_up = 85;
>  
> -		/* Downclock if less than 60% busy over 32ms */
> -		ei_down = 32000;
> +		/* Downclock if less than 60% busy over 1600us */
> +		ei_down = 1600;

This is quite a drammatic change.

Can we have a more dynamic selection of the interval depending on
the frequency we are running? We reduce the interval in low
frequencies and increase the interval in high frequencies.

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
