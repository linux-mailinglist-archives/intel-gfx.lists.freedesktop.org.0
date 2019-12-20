Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2751279E9
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 12:26:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28A496EC0E;
	Fri, 20 Dec 2019 11:26:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08C796EC0E
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 11:26:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 03:26:48 -0800
X-IronPort-AV: E=Sophos;i="5.69,335,1571727600"; d="scan'208";a="210787713"
Received: from dtriolet-mobl1.ger.corp.intel.com (HELO [10.251.84.191])
 ([10.251.84.191])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 20 Dec 2019 03:26:47 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191213151331.1788371-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <50aa09be-8595-9ba9-5ad9-bdb0774dc6dc@linux.intel.com>
Date: Fri, 20 Dec 2019 11:26:45 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191213151331.1788371-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Select arb on/off
 around batches based on preemption
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


On 13/12/2019 15:13, Chris Wilson wrote:
> Decide whether or not we need to disable arbitration within user batches
> based on our intel_engine_has_preemption() flag.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 17 +++++++++--------
>   1 file changed, 9 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 929f6bae4eba..983e0e6e909b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -3263,9 +3263,9 @@ static void execlists_reset_finish(struct intel_engine_cs *engine)
>   		  atomic_read(&execlists->tasklet.count));
>   }
>   
> -static int gen8_emit_bb_start(struct i915_request *rq,
> -			      u64 offset, u32 len,
> -			      const unsigned int flags)
> +static int gen8_emit_bb_start_noarb(struct i915_request *rq,
> +				    u64 offset, u32 len,
> +				    const unsigned int flags)
>   {
>   	u32 *cs;
>   
> @@ -3299,7 +3299,7 @@ static int gen8_emit_bb_start(struct i915_request *rq,
>   	return 0;
>   }
>   
> -static int gen9_emit_bb_start(struct i915_request *rq,
> +static int gen8_emit_bb_start(struct i915_request *rq,
>   			      u64 offset, u32 len,
>   			      const unsigned int flags)
>   {
> @@ -3774,6 +3774,11 @@ void intel_execlists_set_default_submission(struct intel_engine_cs *engine)
>   
>   	if (INTEL_GEN(engine->i915) >= 12)
>   		engine->flags |= I915_ENGINE_HAS_RELATIVE_MMIO;
> +
> +	if (intel_engine_has_preemption(engine))
> +		engine->emit_bb_start = gen8_emit_bb_start;
> +	else
> +		engine->emit_bb_start = gen8_emit_bb_start_noarb;
>   }
>   
>   static void execlists_shutdown(struct intel_engine_cs *engine)
> @@ -3827,10 +3832,6 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
>   		 * until a more refined solution exists.
>   		 */
>   	}
> -	if (IS_GEN(engine->i915, 8))
> -		engine->emit_bb_start = gen8_emit_bb_start;
> -	else
> -		engine->emit_bb_start = gen9_emit_bb_start;
>   }
>   
>   static inline void
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
