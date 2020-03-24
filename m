Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9781E1915B6
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 17:11:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09CFA898EE;
	Tue, 24 Mar 2020 16:11:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BDBA898EE
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 16:11:13 +0000 (UTC)
IronPort-SDR: gpYSSF6WtAvm883fL6Dz1xgEjT5KR2HJm9MV0zgofiIPuGf2kOFZieqrG4cjDBoXefyq8vUcy3
 yVaBMnw6RW1Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 09:11:13 -0700
IronPort-SDR: T8KYAr2NkpGc9qj1/PmLomjiEiO6s/2S6px07YDCiLcKAtfvdMu5PIdUv8heMOvkOmH5jU/9q6
 qR9+d6BwbAUQ==
X-IronPort-AV: E=Sophos;i="5.72,301,1580803200"; d="scan'208";a="419944353"
Received: from preuss-mobl1.ger.corp.intel.com (HELO [10.252.56.19])
 ([10.252.56.19])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 09:11:11 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200324120718.977-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3bcb551d-2c11-6dbd-cc4b-b60c9a79f6b1@linux.intel.com>
Date: Tue, 24 Mar 2020 16:11:10 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200324120718.977-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/execlists: Pull tasklet
 interrupt-bh local to direct submission
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 24/03/2020 12:07, Chris Wilson wrote:
> We dropped calling process_csb prior to handling direct submission in
> order to avoid the nesting of spinlocks and lift process_csb() and the
> majority of the tasklet out of irq-off. However, we do want to avoid
> ksoftirqd latency in the fast path, so try and pull the interrupt-bh
> local to direct submission if we can acquire the tasklet's lock.

Oh and important question - who benefits and how much?

Regards,

Tvrtko

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 210f60e14ef4..82dee2141b46 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2891,6 +2891,12 @@ static void __submit_queue_imm(struct intel_engine_cs *engine)
>   	if (reset_in_progress(execlists))
>   		return; /* defer until we restart the engine following reset */
>   
> +	/* Hopefully we clear execlists->pending[] to let us through */
> +	if (execlists->pending[0] && tasklet_trylock(&execlists->tasklet)) {
> +		process_csb(engine);
> +		tasklet_unlock(&execlists->tasklet);
> +	}
> +
>   	__execlists_submission_tasklet(engine);
>   }
>   
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
