Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C827B1BCC
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 14:10:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1C2E10E630;
	Thu, 28 Sep 2023 12:10:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3CFE10E630
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 12:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695903038; x=1727439038;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Q4tcYi2bdSiIP4U7898XfeX51B8GACfvXPb1S+vUQJk=;
 b=kjkcahZZ1gbYRtcOzZ1xiaDIb5HgaBhNa3uOOT9j85WHv8dSvjXhFtkA
 0XwZRkNF2POBjev5/bvlYcYVwoPqBuy5HJVoTFGfg5ZgacBJEv4WUmmmK
 nkmC0757uqAL3dw8XqxM3qQoUfEnTq3pEBeJHGXTu+E9I17p/kPw7DoVX
 McP9du2sJDUcY0dgM8HqSNcRFGoNk3NO4IKhbY35Sdf/4Xg3jpO2owFlF
 p1Loiefry8MXqwuTWajBybGd0GpVzcUv4TEv68pkceIh2htn/5s/bzDO6
 WNNBhEU62Xiuzv/Qi9RqVkKKD4mEk0JqG13CdbTxHOi6Y3OwOp+yx5/dV w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="367101946"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="367101946"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 05:10:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="1080552213"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="1080552213"
Received: from nlachman-mobl.ger.corp.intel.com (HELO [10.213.204.130])
 ([10.213.204.130])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 05:10:36 -0700
Message-ID: <d904d4f9-cea7-b6f4-ba49-a1771057a521@linux.intel.com>
Date: Thu, 28 Sep 2023 13:10:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tejas Upadhyay <tejas.upadhyay@intel.com>
References: <20230828063450.2642748-1-tejas.upadhyay@intel.com>
 <ZQBdmmo8BPZ26JJG@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ZQBdmmo8BPZ26JJG@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Update workaround 14016712196
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
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 12/09/2023 13:46, Rodrigo Vivi wrote:
> On Mon, Aug 28, 2023 at 12:04:50PM +0530, Tejas Upadhyay wrote:
>> Now this workaround is permanent workaround on MTL and DG2,
> 
> since this also impacts DG2, the subject 'drm/i915/mtl'
> is wrong. I know, this is water under the bridge now.


Found this while writing the 6.7 pull request as I was assessing 
individual patches.

Indeed, patch subject is wrong, but function name mtl_dummy_pipe_control 
is also now wrong. Probably just change the prefix to gen12.

Tejas, can you please send a follow up patch to tidy this up.

Regards,

Tvrtko

> Another thing is this patch doesn't apply clean on drm-intel-fixes
> because it depends on 5a213086a025 ("drm/i915: Eliminate IS_MTL_GRAPHICS_STEP")
> that also doesn't apply cleanly so I'm not cherry-picking them.
> 
> If this patch is critical for a stable 6.6, please provide a backported
> version on top of drm-intel-fixes. You don't need to send the patch,
> just respond to this email pointing to a branch with the patch is enough.
> 
> Thanks,
> Rodrigo.
> 
>> earlier we used to apply on MTL A0 step only.
>> VLK-45480
>>
>> Fixes: d922b80b1010 ("drm/i915/gt: Add workaround 14016712196")
>> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 7 +++----
>>   1 file changed, 3 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>> index 6187b25b67ab..0143445dba83 100644
>> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>> @@ -226,8 +226,8 @@ u32 *gen12_emit_aux_table_inv(struct intel_engine_cs *engine, u32 *cs)
>>   static int mtl_dummy_pipe_control(struct i915_request *rq)
>>   {
>>   	/* Wa_14016712196 */
>> -	if (IS_GFX_GT_IP_STEP(rq->engine->gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>> -	    IS_GFX_GT_IP_STEP(rq->engine->gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
>> +	if (IS_GFX_GT_IP_RANGE(rq->engine->gt, IP_VER(12, 70), IP_VER(12, 71)) ||
>> +	    IS_DG2(rq->i915)) {
>>   		u32 *cs;
>>   
>>   		/* dummy PIPE_CONTROL + depth flush */
>> @@ -810,8 +810,7 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>>   		     PIPE_CONTROL_FLUSH_ENABLE);
>>   
>>   	/* Wa_14016712196 */
>> -	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>> -	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
>> +	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)) || IS_DG2(i915))
>>   		/* dummy PIPE_CONTROL + depth flush */
>>   		cs = gen12_emit_pipe_control(cs, 0,
>>   					     PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0);
>> -- 
>> 2.25.1
>>
