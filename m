Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FB5682D51
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 14:06:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95F0F10E075;
	Tue, 31 Jan 2023 13:06:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21D7C10E075
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 13:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675170411; x=1706706411;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=UZV2/KHHAzDeaJQ7LhCOsFbtmhbUNOXblXx+kH+Nguw=;
 b=cSJEJQVarDe/1g591GT/sqHp8fHWhmBvM0zBFlLlvtDBbrsK155S+W4s
 ilHYkMyD5nkYhSAosL8f1QD0UkufH0bfdYr8adPcV24eIaPH+uf/enkVq
 pm35yUCTrJzUzFd+TcK/hX/tm1B6piZcGvtDOGWVTWF/CUho6y6Lz9O+M
 En422KQlTHlr0rXql14VDpmnpevbKVVtr3/YMZAU8CRU1ThKssq3Ck7Cs
 f+7RAixWWhQyq7LLAob1ai9Rs6KtP7pPCEyfE8y47/I4aUhQtufmkNlF2
 mjv7kS0zEyCdioux+u7wNAmDH8Z0x5CX2fCCDyc8ZXqKTf63PH5C299hz w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="326494767"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="326494767"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 05:03:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="641971578"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="641971578"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga006.jf.intel.com with ESMTP; 31 Jan 2023 05:03:04 -0800
Received: from linux.intel.com (maurocar-mobl2.ger.corp.intel.com
 [10.252.29.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 0B9F3580B0E
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 05:03:04 -0800 (PST)
Received: from localhost ([127.0.0.1])
 by linux.intel.com with esmtp (Exim 4.96)
 (envelope-from <mauro.chehab@linux.intel.com>) id 1pMqHu-009dJL-06
 for intel-gfx@lists.freedesktop.org; Tue, 31 Jan 2023 14:03:02 +0100
Message-ID: <9d0f7ab2-d6a0-094d-56fa-7ded3592fb66@linux.intel.com>
Date: Tue, 31 Jan 2023 14:03:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20230121190853.18722-1-gustavo.sousa@intel.com>
 <Y9A0Dz4TtLB4a4Wn@intel.com>
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
In-Reply-To: <Y9A0Dz4TtLB4a4Wn@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Fix sphinx warnings for
 workarounds documentation
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 1/24/23 20:39, Rodrigo Vivi wrote:
> On Sat, Jan 21, 2023 at 04:08:53PM -0300, Gustavo Sousa wrote:
>> The wildchar ("*") used in the function name patterns in the
>> documentation was taken as a start of an "emphasis" inline markup. Wrap
>> the patterns with the inline literal markup and, for consistency, do the
>> same for the other function names mentioned.
>>
>> Fixes: 0c3064cf33fb ("drm/i915/doc: Document where to implement register workarounds")
>> Reported-by: kernel test robot <lkp@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
>
> just in case he sees some better alternative for the escaping the '*'
>
> My fear is that this ``*_fn_name()`` could create invalid links in the doc...


Seems OK to me. ``foo`` is literal inline. It won't try to generate 
cross-references.


Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>


>
>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 20 ++++++++++----------
>>   1 file changed, 10 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> index 918a271447e2..e849035d8dc5 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> @@ -30,8 +30,8 @@
>>    *   creation to have a "primed golden context", i.e. a context image that
>>    *   already contains the changes needed to all the registers.
>>    *
>> - *   Context workarounds should be implemented in the *_ctx_workarounds_init()
>> - *   variants respective to the targeted platforms.
>> + *   Context workarounds should be implemented in the
>> + *   ``*_ctx_workarounds_init()`` variants respective to the targeted platforms.
>>    *
>>    * - Engine workarounds: the list of these WAs is applied whenever the specific
>>    *   engine is reset. It's also possible that a set of engine classes share a
>> @@ -46,16 +46,16 @@
>>    *   ``drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c`` for reference.
>>    *
>>    *   Workarounds for registers specific to RCS and CCS should be implemented in
>> - *   rcs_engine_wa_init() and ccs_engine_wa_init(), respectively; those for
>> - *   registers belonging to BCS, VCS or VECS should be implemented in
>> - *   xcs_engine_wa_init(). Workarounds for registers not belonging to a specific
>> - *   engine's MMIO range but that are part of of the common RCS/CCS reset domain
>> - *   should be implemented in general_render_compute_wa_init().
>> + *   ``rcs_engine_wa_init()`` and ``ccs_engine_wa_init()``, respectively; those
>> + *   for registers belonging to BCS, VCS or VECS should be implemented in
>> + *   ``xcs_engine_wa_init()``. Workarounds for registers not belonging to a
>> + *   specific engine's MMIO range but that are part of of the common RCS/CCS
>> + *   reset domain should be implemented in ``general_render_compute_wa_init()``.
>>    *
>>    * - GT workarounds: the list of these WAs is applied whenever these registers
>>    *   revert to their default values: on GPU reset, suspend/resume [1]_, etc.
>>    *
>> - *   GT workarounds should be implemented in the *_gt_workarounds_init()
>> + *   GT workarounds should be implemented in the ``*_gt_workarounds_init()``
>>    *   variants respective to the targeted platforms.
>>    *
>>    * - Register whitelist: some workarounds need to be implemented in userspace,
>> @@ -64,8 +64,8 @@
>>    *   this is just a special case of a MMIO workaround (as we write the list of
>>    *   these to/be-whitelisted registers to some special HW registers).
>>    *
>> - *   Register whitelisting should be done in the *_whitelist_build() variants
>> - *   respective to the targeted platforms.
>> + *   Register whitelisting should be done in the ``*_whitelist_build()``
>> + *   variants respective to the targeted platforms.
>>    *
>>    * - Workaround batchbuffers: buffers that get executed automatically by the
>>    *   hardware on every HW context restore. These buffers are created and
>> -- 
>> 2.39.0
>>
