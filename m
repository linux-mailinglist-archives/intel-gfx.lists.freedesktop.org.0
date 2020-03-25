Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A42192904
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 13:56:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 532636E856;
	Wed, 25 Mar 2020 12:56:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E417E6E856
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 12:56:45 +0000 (UTC)
IronPort-SDR: K8IfiDxxS2N3FFa80sna9cqfsP90lipTUXAvErHDS/phWJY7cuuanUeYRtQzfwnqxzTvues00v
 pC3058sT0yUQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 05:56:44 -0700
IronPort-SDR: Kzg9bPyvEDXkBFE+7XI23kxX/QLjPvl25o8l87LEti8C72IX6LMz6niPo9+5syRgOgBf5UKt2K
 C571mJ20sgXw==
X-IronPort-AV: E=Sophos;i="5.72,304,1580803200"; d="scan'208";a="420302404"
Received: from popernik-mobl.ger.corp.intel.com (HELO [10.252.39.239])
 ([10.252.39.239])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 05:56:43 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200325120227.8044-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ac07abf8-df7a-bd9f-ca4e-b10cef1994ab@linux.intel.com>
Date: Wed, 25 Mar 2020 12:56:41 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200325120227.8044-1-chris@chris-wilson.co.uk>
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


On 25/03/2020 12:02, Chris Wilson wrote:
> We dropped calling process_csb prior to handling direct submission in
> order to avoid the nesting of spinlocks and lift process_csb() and the
> majority of the tasklet out of irq-off. However, we do want to avoid
> ksoftirqd latency in the fast path, so try and pull the interrupt-bh
> local to direct submission if we can acquire the tasklet's lock.
> 
> v2: Document the read of pending[0] from outside the tasklet with
> READ_ONCE.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index f88d3b95c4e1..d49baade0986 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2891,6 +2891,13 @@ static void __submit_queue_imm(struct intel_engine_cs *engine)
>   	if (reset_in_progress(execlists))
>   		return; /* defer until we restart the engine following reset */
>   
> +	/* Hopefully we clear execlists->pending[] to let us through */
> +	if (READ_ONCE(execlists->pending[0]) &&
> +	    tasklet_trylock(&execlists->tasklet)) {
> +		process_csb(engine);
> +		tasklet_unlock(&execlists->tasklet);
> +	}
> +
>   	__execlists_submission_tasklet(engine);
>   }
>   
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
