Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA72826A624
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 15:20:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A437D6E2B1;
	Tue, 15 Sep 2020 13:20:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA5556E2B1
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Sep 2020 13:20:44 +0000 (UTC)
IronPort-SDR: VNx7RO19i2IhFYnIwn2fZb7PsNl8+c5wZKy0bgFn5hsieUEbZTeJc1hItdNlIGcrIvsf+x+Lnu
 scmByZPM3AIQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="223436863"
X-IronPort-AV: E=Sophos;i="5.76,430,1592895600"; d="scan'208";a="223436863"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 06:20:43 -0700
IronPort-SDR: YdnvTmNlCzeB4fU/2OQxBcEUoof3zIo0geH0Ok5QswHzJla+tibCfIhzQzH2wI8HfTeyvz6woB
 9saqMOR5aq5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,430,1592895600"; d="scan'208";a="345825143"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga007.jf.intel.com with ESMTP; 15 Sep 2020 06:20:41 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 2DA865C204E; Tue, 15 Sep 2020 16:19:31 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200915124150.12045-2-chris@chris-wilson.co.uk>
References: <20200915124150.12045-1-chris@chris-wilson.co.uk>
 <20200915124150.12045-2-chris@chris-wilson.co.uk>
Date: Tue, 15 Sep 2020 16:19:31 +0300
Message-ID: <87lfhbyy70.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/gt: Wait for CSB entries on
 Tigerlake
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> On Tigerlake, we are seeing a repeat of commit d8f505311717 ("drm/i915/icl:
> Forcibly evict stale csb entries") where, presumably, due to a missing
> Global Observation Point synchronisation, the write pointer of the CSB
> ringbuffer is updated _prior_ to the contents of the ringbuffer. That is
> we see the GPU report more context-switch entries for us to parse, but
> those entries have not been written, leading us to process stale events,
> and eventually report a hung GPU.
>
> However, this effect appears to be much more severe than we previously
> saw on Icelake (though it might be best if we try the same approach
> there as well and measure), and Bruce suggested the good idea of resetting
> the CSB entry after use so that we can detect when it has been updated by
> the GPU. By instrumenting how long that may be, we can set a reliable
> upper bound for how long we should wait for:
>
>     513 late, avg of 61 retries (590 ns), max of 1061 retries (10099 ns)
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2045
> References: d8f505311717 ("drm/i915/icl: Forcibly evict stale csb entries")

References: HSDES#22011327657, HSDES#1508287568

> Suggested-by: Bruce Chang <yu.bruce.chang@intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Bruce Chang <yu.bruce.chang@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: stable@vger.kernel.org # v5.4
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 21 ++++++++++++++++++---
>  1 file changed, 18 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index d6e0f62337b4..d75712a503b7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2498,9 +2498,22 @@ invalidate_csb_entries(const u64 *first, const u64 *last)
>   */
>  static inline bool gen12_csb_parse(const u64 *csb)
>  {
> -	u64 entry = READ_ONCE(*csb);
> -	bool ctx_away_valid = GEN12_CSB_CTX_VALID(upper_32_bits(entry));
> -	bool new_queue =
> +	bool ctx_away_valid;
> +	bool new_queue;
> +	u64 entry;
> +
> +	/* HSD#22011248461 */
> +	entry = READ_ONCE(*csb);
> +	if (unlikely(entry == -1)) {
> +		preempt_disable();
> +		if (wait_for_atomic_us((entry = READ_ONCE(*csb)) != -1, 50))
> +			GEM_WARN_ON("50us CSB timeout");

hsdes is for 30us. But this will be the threshold to fallback further
into mmio. Intuition and data of rarity of this will help find the
good enough value.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> +		preempt_enable();
> +	}
> +	WRITE_ONCE(*(u64 *)csb, -1);
> +
> +	ctx_away_valid = GEN12_CSB_CTX_VALID(upper_32_bits(entry));
> +	new_queue =
>  		lower_32_bits(entry) & GEN12_CTX_STATUS_SWITCHED_TO_NEW_QUEUE;
>  
>  	/*
> @@ -4004,6 +4017,8 @@ static void reset_csb_pointers(struct intel_engine_cs *engine)
>  	WRITE_ONCE(*execlists->csb_write, reset_value);
>  	wmb(); /* Make sure this is visible to HW (paranoia?) */
>  
> +	/* Check that the GPU does indeed update the CSB entries! */
> +	memset(execlists->csb_status, -1, (reset_value + 1) * sizeof(u64));
>  	invalidate_csb_entries(&execlists->csb_status[0],
>  			       &execlists->csb_status[reset_value]);
>  
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
