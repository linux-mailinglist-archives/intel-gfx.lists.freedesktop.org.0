Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 167FA244E6D
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Aug 2020 20:18:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDDCD6EBB5;
	Fri, 14 Aug 2020 18:18:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C58F6EBB5
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Aug 2020 18:18:49 +0000 (UTC)
IronPort-SDR: sGVYTYtydic3tdrdZ549syDlvScORaLyY49BVwh2ZcFrfiAGARj1k9XanRgPUOQw4HS3uvh1z4
 kwiiqarqOKpg==
X-IronPort-AV: E=McAfee;i="6000,8403,9713"; a="154448757"
X-IronPort-AV: E=Sophos;i="5.76,313,1592895600"; d="scan'208";a="154448757"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2020 11:18:48 -0700
IronPort-SDR: h43WQwQRpVYVy+vw5rS8QDBEDMz5jwBbtGvnMPfHzvlwTUl25/Mdixr9RpO3CnEb1Fzu8k3Zsg
 bIffbpjC8+cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,313,1592895600"; d="scan'208";a="278475731"
Received: from orsmsx604-2.jf.intel.com (HELO ORSMSX604.amr.corp.intel.com)
 ([10.22.229.84])
 by fmsmga008.fm.intel.com with ESMTP; 14 Aug 2020 11:18:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 14 Aug 2020 11:18:48 -0700
Received: from [10.209.97.116] (10.22.254.132) by ORSMSX610.amr.corp.intel.com
 (10.22.229.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Fri, 14 Aug
 2020 11:18:47 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, <intel-gfx@lists.freedesktop.org>
References: <20200814155735.29138-1-chris@chris-wilson.co.uk>
 <20200814155735.29138-3-chris@chris-wilson.co.uk>
From: "Chang, Bruce" <yu.bruce.chang@intel.com>
Message-ID: <fe438758-fdfe-c682-ec54-4858243eae6f@intel.com>
Date: Fri, 14 Aug 2020 11:18:46 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200814155735.29138-3-chris@chris-wilson.co.uk>
Content-Language: en-US
X-Originating-IP: [10.22.254.132]
X-ClientProxiedBy: orsmsx602.amr.corp.intel.com (10.22.229.15) To
 ORSMSX610.amr.corp.intel.com (10.22.229.23)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gt: Apply the CSB w/a for all
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

On 8/14/2020 8:57 AM, Chris Wilson wrote:
> Since we expect to inline the csb_parse() routines, the w/a for the
> stale CSB data on Tigerlake will be pulled into process_csb(), and so we
> might as well simply reuse the logic for all, and so will hopefully
> avoid any strange behaviour on Icelake that was not covered by our
> previous w/a.
>
> References: d8f505311717 ("drm/i915/icl: Forcibly evict stale csb entries")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Bruce Chang <yu.bruce.chang@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 70 +++++++++++++++++------------
>   1 file changed, 42 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 3b8161c6b601..c176a029f27b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2496,25 +2496,11 @@ invalidate_csb_entries(const u64 *first, const u64 *last)
>    *     bits 47-57: sw context id of the lrc the GT switched away from
>    *     bits 58-63: sw counter of the lrc the GT switched away from
>    */
> -static inline bool gen12_csb_parse(const u64 *csb)
> +static inline bool gen12_csb_parse(const u64 csb)
>   {
> -	bool ctx_away_valid;
> -	bool new_queue;
> -	u64 entry;
> -
> -	/* XXX HSD */
> -	entry = READ_ONCE(*csb);
> -	if (unlikely(entry == -1)) {
> -		preempt_disable();
> -		if (wait_for_atomic_us((entry = READ_ONCE(*csb)) != -1, 50))
> -			GEM_WARN_ON("50us CSB timeout");
> -		preempt_enable();
> -	}
> -	WRITE_ONCE(*(u64 *)csb, -1);
> -
> -	ctx_away_valid = GEN12_CSB_CTX_VALID(upper_32_bits(entry));
> -	new_queue =
> -		lower_32_bits(entry) & GEN12_CTX_STATUS_SWITCHED_TO_NEW_QUEUE;
> +	bool ctx_away_valid = GEN12_CSB_CTX_VALID(upper_32_bits(csb));
> +	bool new_queue =
> +		lower_32_bits(csb) & GEN12_CTX_STATUS_SWITCHED_TO_NEW_QUEUE;
>   
>   	/*
>   	 * The context switch detail is not guaranteed to be 5 when a preemption
> @@ -2524,7 +2510,7 @@ static inline bool gen12_csb_parse(const u64 *csb)
>   	 * would require some extra handling, but we don't support that.
>   	 */
>   	if (!ctx_away_valid || new_queue) {
> -		GEM_BUG_ON(!GEN12_CSB_CTX_VALID(lower_32_bits(entry)));
> +		GEM_BUG_ON(!GEN12_CSB_CTX_VALID(lower_32_bits(csb)));
>   		return true;
>   	}
>   
> @@ -2533,19 +2519,47 @@ static inline bool gen12_csb_parse(const u64 *csb)
>   	 * context switch on an unsuccessful wait instruction since we always
>   	 * use polling mode.
>   	 */
> -	GEM_BUG_ON(GEN12_CTX_SWITCH_DETAIL(upper_32_bits(entry)));
> +	GEM_BUG_ON(GEN12_CTX_SWITCH_DETAIL(upper_32_bits(csb)));
>   	return false;
>   }
>   
> -static inline bool gen8_csb_parse(const u64 *csb)
> +static inline bool gen8_csb_parse(const u64 csb)
> +{
> +	return csb & (GEN8_CTX_STATUS_IDLE_ACTIVE | GEN8_CTX_STATUS_PREEMPTED);
> +}
> +
> +static inline u64 csb_read(u64 * const csb)
>   {
> -	return *csb & (GEN8_CTX_STATUS_IDLE_ACTIVE | GEN8_CTX_STATUS_PREEMPTED);
> +	u64 entry = READ_ONCE(*csb);
> +
> +	/*
> +	 * Unfortunately, the GPU does not always serialise its write
> +	 * of the CSB entries before its write of the CSB pointer, at least
> +	 * from the perspective of the CPU, using what is known as a Global
> +	 * Observation Point. We may read a new CSB tail pointer, but then
> +	 * read the stale CSB entries, causing us to misinterpret the
> +	 * context-switch events, and eventually declare the GPU hung.
> +	 *
> +	 * icl:HSDES#:1806554093
> +	 * tgl:XXX?
FYI: A HSD was also filed recently: HSD# 22011248461
> +	 */
> +	if (unlikely(entry == -1)) {
> +		preempt_disable();
> +		if (wait_for_atomic_us((entry = READ_ONCE(*csb)) != -1, 50))
> +			GEM_WARN_ON("50us CSB timeout");
> +		preempt_enable();
> +	}
> +
> +	/* Consume this entry so that we can spot its future reuse. */
> +	WRITE_ONCE(*csb, -1);
> +
> +	return entry;
>   }
>   
>   static void process_csb(struct intel_engine_cs *engine)
>   {
>   	struct intel_engine_execlists * const execlists = &engine->execlists;
> -	const u64 * const buf = execlists->csb_status;
> +	u64 * const buf = execlists->csb_status;
>   	const u8 num_entries = execlists->csb_size;
>   	u8 head, tail;
>   
> @@ -2603,6 +2617,7 @@ static void process_csb(struct intel_engine_cs *engine)
>   	rmb();
>   	do {
>   		bool promote;
> +		u64 csb;
>   
>   		if (++head == num_entries)
>   			head = 0;
> @@ -2625,15 +2640,14 @@ static void process_csb(struct intel_engine_cs *engine)
>   		 * status notifier.
>   		 */
>   
> +		csb = csb_read(buf + head);
>   		ENGINE_TRACE(engine, "csb[%d]: status=0x%08x:0x%08x\n",
> -			     head,
> -			     upper_32_bits(buf[head]),
> -			     lower_32_bits(buf[head]));
> +			     head, upper_32_bits(csb), lower_32_bits(csb));
Nice change! The original trace will actually read the CSB entry. So 
when the trace was enabled, our issue will go away since one extra read 
will fix our issue.
>   
>   		if (INTEL_GEN(engine->i915) >= 12)
> -			promote = gen12_csb_parse(buf + head);
> +			promote = gen12_csb_parse(csb);
>   		else
> -			promote = gen8_csb_parse(buf + head);
> +			promote = gen8_csb_parse(csb);
>   		if (promote) {
>   			struct i915_request * const *old = execlists->active;
>   
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
