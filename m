Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A365D79E4BC
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 12:21:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 981F610E495;
	Wed, 13 Sep 2023 10:21:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D52BD10E00A
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 10:21:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694600484; x=1726136484;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=uOOhPnd4a5gigfdFp7yjJLC2EY9/kZvroHRnnTB3UZI=;
 b=jcfilqJEZ51dChKDdqjWnvL5fQTkyOIWT4vxZcnSBCweq6IUBMXXXgFT
 kuKH5C/DOeGnMMnPJ9cvY91GvEpj2kHmMHNGFxG9Y2KBI8BDcAWm4aj0N
 rJm4hdeyvvYGjSM4B+9QbENcN0XhyrQodLqstX65qZZJ/CcVUKDRUp+FF
 KgeFEhdoFPNAHOn8CUtnj2LxCbnZmX7GY0SE/teJ8fDgNsFzgx5HQsroy
 Rb78CFGAe1El0JwrntntQiuJrU9LRSauDUXgdo4/bTARbQv273hF5wal8
 LsTO4hr4s4FK39rT56Eb3tTl8SooVbPntZcU5HOki7gLuCeVpf4u4YiXH w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="363651354"
X-IronPort-AV: E=Sophos;i="6.02,142,1688454000"; d="scan'208";a="363651354"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 03:21:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="773411556"
X-IronPort-AV: E=Sophos;i="6.02,142,1688454000"; d="scan'208";a="773411556"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.31.48])
 ([10.213.31.48])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 03:21:15 -0700
Message-ID: <3fbe265b-5ead-b95a-7a74-a49ceb3c2caa@intel.com>
Date: Wed, 13 Sep 2023 12:21:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.0
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>
References: <20230912073521.2106162-1-andrzej.hajda@intel.com>
 <20230912210540.GN2706891@mdroper-desk1.amr.corp.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230912210540.GN2706891@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: skip WA verfication for
 GEN7_MISCCPCTL on DG2
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 12.09.2023 23:05, Matt Roper wrote:
> On Tue, Sep 12, 2023 at 09:35:21AM +0200, Andrzej Hajda wrote:
>> Some DG2 firmware locks this register for modification. Using wa_add
>> with read_mask 0 allows to skip checks of such registers.
>>
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 +++++--
>>   1 file changed, 5 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> index 70071ead0659cc..1d1474ad945e0c 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> @@ -1597,8 +1597,11 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>>   	/* Wa_14014830051:dg2 */
>>   	wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
>>   
>> -	/* Wa_14015795083 */
>> -	wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
>> +	/* Wa_14015795083
> 
> Minor nitpick:  kernel coding style says that "/*" should be on a line
> by itself for multi-line comments.  Aside from that,
> 
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Thanks for both r-b.
Pushed with adjusted comment.

Regards
Andrzej

> 
> 
> Matt
> 
>> +	 * Skip verification for possibly locked register.
>> +	 */
>> +	wa_add(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE,
>> +	       0, 0, false);
>>   
>>   	/* Wa_18018781329 */
>>   	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
>> -- 
>> 2.34.1
>>
> 

