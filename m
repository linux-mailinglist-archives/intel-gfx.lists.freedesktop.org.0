Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D35B875025C
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jul 2023 11:03:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1229110E3C2;
	Wed, 12 Jul 2023 09:02:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72A0610E3C2
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jul 2023 09:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689152577; x=1720688577;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=0lKVgBNL2tGFzCagzmXSstqQuAGTmRUyoummQhGv4P4=;
 b=b0hUsPHsM/EvET5k4Dxe5aBvNOpqQwSlHkByncApunl89YFE9rfRgssB
 O+2l8rBiY4pLUvRuiAg471nEqQNlxC1SuTM+LFmHGFfYIMTWx0ZzCxQiG
 +zsFJ8itQZGreGy0oIql0fJmbAx8i1JDtiPW02YCLLWISTd+cmX1fMh1Q
 tclTMe588ujrkeKR+c9lqdeHioa6/jjoomopk2JSQn8zu8XAH1TSZReA9
 XKw0QSIK/XEORCF2ctZUwvjpF1fK5WgnmZzZEd+Zby2+o1PoVkrwphW+c
 hCFAH5O2CbOnohY9ZFmfJB8fYoVQPkQiYZ2SI5XlvrqEhn0uQrVRJQAGW w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="362306066"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="362306066"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 02:02:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="1052087609"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="1052087609"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.31.249])
 ([10.213.31.249])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 02:02:54 -0700
Message-ID: <8bbfa6c3-fa97-b1e7-d006-a7e2d519b55b@intel.com>
Date: Wed, 12 Jul 2023 11:02:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.13.0
Content-Language: en-US
To: Nirmoy Das <nirmoy.das@linux.intel.com>, intel-gfx@lists.freedesktop.org, 
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>
References: <20230711153410.1224997-1-andrzej.hajda@intel.com>
 <ab600ab9-9739-f075-c803-160bfc54bca4@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <ab600ab9-9739-f075-c803-160bfc54bca4@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: add sentinel to
 xehp_oa_b_counters
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
Cc: Chris Wilson <chris.p.wilson@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 12.07.2023 00:10, Nirmoy Das wrote:
> 
> On 7/11/2023 5:34 PM, Andrzej Hajda wrote:
>> Arrays passed to reg_in_range_table should end with empty record.
>>
>> The patch solves KASAN detected bug with signature:
>> BUG: KASAN: global-out-of-bounds in 
>> xehp_is_valid_b_counter_addr+0x2c7/0x350 [i915]
>> Read of size 4 at addr ffffffffa1555d90 by task perf/1518
>>
>> CPU: 4 PID: 1518 Comm: perf Tainted: G U 
>> 6.4.0-kasan_438-g3303d06107f3+ #1
>> Hardware name: Intel Corporation Meteor Lake Client Platform/MTL-P 
>> DDR5 SODIMM SBS RVP, BIOS MTLPFWI1.R00.3223.D80.2305311348 05/31/2023
>> Call Trace:
>> <TASK>
>> ...
>> xehp_is_valid_b_counter_addr+0x2c7/0x350 [i915]
>>
>> Fixes: 0fa9349dda030f ("drm/i915/perf: complete programming 
>> whitelisting for XEHPSDV")
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>


Thx, pushed.

Regards
Andrzej

>> ---
>>   drivers/gpu/drm/i915/i915_perf.c | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c 
>> b/drivers/gpu/drm/i915/i915_perf.c
>> index 7413c11fb562e9..49c6f1ff11284f 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -4431,6 +4431,7 @@ static const struct i915_range 
>> mtl_oam_b_counters[] = {
>>   static const struct i915_range xehp_oa_b_counters[] = {
>>       { .start = 0xdc48, .end = 0xdc48 },    /* OAA_ENABLE_REG */
>>       { .start = 0xdd00, .end = 0xdd48 },    /* OAG_LCE0_0 - 
>> OAA_LENABLE_REG */
>> +    {}
>>   };
>>   static const struct i915_range gen7_oa_mux_regs[] = {

