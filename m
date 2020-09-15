Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8BE326A669
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 15:41:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97CC889F31;
	Tue, 15 Sep 2020 13:41:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F03AD89F31
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Sep 2020 13:41:02 +0000 (UTC)
IronPort-SDR: T/DlKB8BYY7FWTCj784HNB69rsegPK5AFqrEVwCsWWSxhPiBsyusNfZTCARtUzrl0c8GAtrArN
 dADxCuKwS/Kw==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="159304491"
X-IronPort-AV: E=Sophos;i="5.76,430,1592895600"; d="scan'208";a="159304491"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 06:41:02 -0700
IronPort-SDR: Jsx8nfWjpD4+WQa4JA0V5oSqlantCNkogdgVbeuXOJfa4zalLVSpo+x36q8Ia/s14pYJ/J1djs
 FOjeeCZew5ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,430,1592895600"; d="scan'208";a="451320280"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 15 Sep 2020 06:41:01 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id E5C425C204E; Tue, 15 Sep 2020 16:39:50 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200915124150.12045-4-chris@chris-wilson.co.uk>
References: <20200915124150.12045-1-chris@chris-wilson.co.uk>
 <20200915124150.12045-4-chris@chris-wilson.co.uk>
Date: Tue, 15 Sep 2020 16:39:50 +0300
Message-ID: <87ft7jyx95.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/gt: Use a mmio read of the CSB
 in case of failure
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> If we find the GPU didn't update the CSB within 50us, we currently fail
> and eventually reset the GPU. Lets report the value from the mmio space
> as a last resort, it may just stave off an unnecessary GPU reset.
>
> Suggested-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

I am more of a messenger. This can be replaced by
References: HSDES#22011327657

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c     | 26 +++++++++++++++++++------
>  drivers/gpu/drm/i915/gt/intel_lrc_reg.h |  3 +++
>  2 files changed, 23 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index fcb6ec3d55f4..7cf208311539 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2528,19 +2528,33 @@ static inline bool gen8_csb_parse(const u64 csb)
>  	return csb & (GEN8_CTX_STATUS_IDLE_ACTIVE | GEN8_CTX_STATUS_PREEMPTED);
>  }
>  
> -static noinline u64 wa_csb_read(u64 * const csb)
> +static noinline u64
> +wa_csb_read(const struct intel_engine_cs *engine, u64 * const csb)
>  {
>  	u64 entry;
>  
>  	preempt_disable();
> -	if (wait_for_atomic_us((entry = READ_ONCE(*csb)) != -1, 50))
> -		GEM_WARN_ON("50us CSB timeout");
> +	if (wait_for_atomic_us((entry = READ_ONCE(*csb)) != -1, 50)) {

The hsdes says 30us delay between head and csb fetch. But well we
want to sort it out as quickly as possible.

hsdes also states that status buf read delay OR mmio read.

I think that our AND variation surpasses the recommendations.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> +		int idx = csb - engine->execlists.csb_status;
> +		int status;
> +
> +		status = GEN8_EXECLISTS_STATUS_BUF;
> +		if (idx >= 6) {
> +			status = GEN11_EXECLISTS_STATUS_BUF2;
> +			idx -= 6;
> +		}
> +		status += sizeof(u64) * idx;
> +
> +		entry = intel_uncore_read64(engine->uncore,
> +					    _MMIO(engine->mmio_base + status));
> +	}
>  	preempt_enable();
>  
>  	return entry;
>  }
>  
> -static inline u64 csb_read(u64 * const csb)
> +static inline u64
> +csb_read(const struct intel_engine_cs *engine, u64 * const csb)
>  {
>  	u64 entry = READ_ONCE(*csb);
>  
> @@ -2556,7 +2570,7 @@ static inline u64 csb_read(u64 * const csb)
>  	 * tgl:HSDES#22011248461
>  	 */
>  	if (unlikely(entry == -1))
> -		entry = wa_csb_read(csb);
> +		entry = wa_csb_read(engine, csb);
>  
>  	/* Consume this entry so that we can spot its future reuse. */
>  	WRITE_ONCE(*csb, -1);
> @@ -2649,7 +2663,7 @@ static void process_csb(struct intel_engine_cs *engine)
>  		 * status notifier.
>  		 */
>  
> -		csb = csb_read(buf + head);
> +		csb = csb_read(engine, buf + head);
>  		ENGINE_TRACE(engine, "csb[%d]: status=0x%08x:0x%08x\n",
>  			     head, upper_32_bits(csb), lower_32_bits(csb));
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
> index 93cb6c460508..1b51f7b9a5c3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
> @@ -49,4 +49,7 @@
>  #define GEN11_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT	0x1A
>  #define GEN12_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT	0xD
>  
> +#define GEN8_EXECLISTS_STATUS_BUF 0x370
> +#define GEN11_EXECLISTS_STATUS_BUF2 0x3c0
> +
>  #endif /* _INTEL_LRC_REG_H_ */
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
