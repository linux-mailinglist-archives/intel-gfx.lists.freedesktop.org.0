Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3F41CF706
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 16:24:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD35E6E11E;
	Tue, 12 May 2020 14:24:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 583366E11E
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 14:24:53 +0000 (UTC)
IronPort-SDR: TXmC4XfRpT+xSsZCjWWSrnThT2UWEtUW9y6QWqxqKcyW4JO9PF+pI9WMLeE+zQn9TkJdYrjyPd
 6B1+YYxvRVsg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 07:24:49 -0700
IronPort-SDR: ndsD4K2Ur3KIHEhbeDzZG71kCVVkypLGq+1ega0yBlJRNVzxFwG04lTxUwWO23EPnjT18sAlkS
 07cUtFNT7C6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,384,1583222400"; d="scan'208";a="340916807"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga001.jf.intel.com with ESMTP; 12 May 2020 07:24:48 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 13FCA5C1F36; Tue, 12 May 2020 17:22:37 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <1035a7d1-d648-ae33-0018-06f3dfa35e61@intel.com>
References: <158885907681.20858.14209789974764134586@build.alporthouse.com>
 <20200507142045.8668-1-mika.kuoppala@linux.intel.com>
 <1035a7d1-d648-ae33-0018-06f3dfa35e61@intel.com>
Date: Tue, 12 May 2020 17:22:37 +0300
Message-ID: <87imh12pxu.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen12: Add aux table invalidate
 for all engines
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

Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com> writes:

> On 5/7/20 7:20 AM, Mika Kuoppala wrote:
>> All engines, exception being blitter as it does not
>> care about the form, can access compressed surfaces.
>> 
>> So we need to add forced aux table invalidates
>> for those engines.
>> 
>> v2: virtual instance masking (Chris)
>> v3: bug on if not found (Chris)
>> 
>> References: d248b371f747 ("drm/i915/gen12: Invalidate aux table entries forcibly")
>> References bspec#43904, hsdes#1809175790
>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Chuansheng Liu <chuansheng.liu@intel.com>
>> Cc: Rafael Antognolli <rafael.antognolli@intel.com>
>> Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_lrc.c | 86 +++++++++++++++++++++++++++--
>>   drivers/gpu/drm/i915/i915_reg.h     |  6 ++
>>   2 files changed, 87 insertions(+), 5 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
>> index bbdb0e2a4571..e12916e2799b 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
>> @@ -4539,11 +4539,36 @@ static u32 preparser_disable(bool state)
>>   	return MI_ARB_CHECK | 1 << 8 | state;
>>   }
>>   
>> +static i915_reg_t aux_inv_reg(const struct intel_engine_cs *engine)
>> +{
>> +	static const i915_reg_t vd[] = {
>> +		GEN12_VD0_AUX_NV,
>> +		GEN12_VD1_AUX_NV,
>> +		GEN12_VD2_AUX_NV,
>> +		GEN12_VD3_AUX_NV,
>> +	};
>> +
>> +	static const i915_reg_t ve[] = {
>> +		GEN12_VE0_AUX_NV,
>> +		GEN12_VE1_AUX_NV,
>> +	};
>> +
>> +	if (engine->class == VIDEO_DECODE_CLASS)
>> +		return vd[engine->instance];
>> +
>> +	if (engine->class == VIDEO_ENHANCEMENT_CLASS)
>> +		return ve[engine->instance];
>> +
>> +	GEM_BUG_ON("unknown aux_inv_reg\n");
>> +
>> +	return INVALID_MMIO_REG;
>> +}
>> +
>>   static u32 *
>> -gen12_emit_aux_table_inv(struct i915_request *rq, u32 *cs)
>> +gen12_emit_aux_table_inv(const i915_reg_t inv_reg, u32 *cs)
>>   {
>>   	*cs++ = MI_LOAD_REGISTER_IMM(1);
>> -	*cs++ = i915_mmio_reg_offset(GEN12_GFX_CCS_AUX_NV);
>> +	*cs++ = i915_mmio_reg_offset(inv_reg);
>>   	*cs++ = AUX_INV;
>>   	*cs++ = MI_NOOP;
>>   
>> @@ -4612,7 +4637,7 @@ static int gen12_emit_flush_render(struct i915_request *request,
>>   		cs = gen8_emit_pipe_control(cs, flags, LRC_PPHWSP_SCRATCH_ADDR);
>>   
>>   		/* hsdes: 1809175790 */
>> -		cs = gen12_emit_aux_table_inv(request, cs);
>> +		cs = gen12_emit_aux_table_inv(GEN12_GFX_CCS_AUX_NV, cs);
>>   
>>   		*cs++ = preparser_disable(false);
>>   		intel_ring_advance(request, cs);
>> @@ -4621,6 +4646,56 @@ static int gen12_emit_flush_render(struct i915_request *request,
>>   	return 0;
>>   }
>>   
>> +static int gen12_emit_flush(struct i915_request *request, u32 mode)
>> +{
>> +	intel_engine_mask_t aux_inv = 0;
>> +	u32 cmd, *cs;
>> +
>> +	if (mode & EMIT_INVALIDATE)
>> +		aux_inv = request->engine->mask & ~BIT(BCS0);
>> +
>> +	cs = intel_ring_begin(request,
>> +			      4 + (aux_inv ? 2 * hweight8(aux_inv) + 2 : 0));
>> +	if (IS_ERR(cs))
>> +		return PTR_ERR(cs);
>> +
>> +	cmd = MI_FLUSH_DW + 1;
>> +
>> +	/* We always require a command barrier so that subsequent
>> +	 * commands, such as breadcrumb interrupts, are strictly ordered
>> +	 * wrt the contents of the write cache being flushed to memory
>> +	 * (and thus being coherent from the CPU).
>> +	 */
>> +	cmd |= MI_FLUSH_DW_STORE_INDEX | MI_FLUSH_DW_OP_STOREDW;
>> +
>> +	if (mode & EMIT_INVALIDATE) {
>> +		cmd |= MI_INVALIDATE_TLB;
>> +		if (request->engine->class == VIDEO_DECODE_CLASS)
>> +			cmd |= MI_INVALIDATE_BSD;
>> +	}
>> +
>> +	*cs++ = cmd;
>> +	*cs++ = LRC_PPHWSP_SCRATCH_ADDR;
>> +	*cs++ = 0; /* upper addr */
>> +	*cs++ = 0; /* value */
>> +
>> +	if (aux_inv) { /* hsdes: 1809175790 */
>> +		struct intel_engine_cs *engine;
>> +		unsigned int tmp;
>> +
>> +		*cs++ = MI_LOAD_REGISTER_IMM(hweight8(aux_inv));
>> +		for_each_engine_masked(engine, request->engine->gt,
>> +				       aux_inv, tmp) {
>> +			*cs++ = i915_mmio_reg_offset(aux_inv_reg(engine));
>> +			*cs++ = AUX_INV;
>
> Why do we loop through all engines? AFAICS the WA just says to 
> invalidate the current one. If it is because we don't know what we're 
> running on, can't we just use the automatic mmio remap on the CS? That 
> was added on purpose for per-engine registers that are not relative to 
> the mmio base (see bspec 45606)
>
> Daniele

I looked at the auto remap feature and it should be doable
with that feature.

Now it will inv with all engine backing up a virtual one.

So there is a difference. But we do not have a bug on other
engines to require inv. So we play it safe.
We would need a media pipeline expert to ack/nack actually.

Thanks for the remap io pointer,
-Mika






_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
