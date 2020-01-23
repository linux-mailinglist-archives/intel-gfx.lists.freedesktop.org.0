Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76026146DAD
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 16:59:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAB7C6FD9F;
	Thu, 23 Jan 2020 15:59:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D00DF6FD9D;
 Thu, 23 Jan 2020 15:59:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 07:59:38 -0800
X-IronPort-AV: E=Sophos;i="5.70,354,1574150400"; d="scan'208";a="229887787"
Received: from wmszyfel-mobl2.ger.corp.intel.com (HELO [10.252.10.247])
 ([10.252.10.247])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 23 Jan 2020 07:59:36 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Dale B Stimson <dale.b.stimson@intel.com>, igt-dev@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org,
 Bommu Krishnaiah <krishnaiah.bommu@intel.com>,
 Sreedhar Telukuntla <sreedhar.telukuntla@intel.com>
References: <cover.1579731227.git.dale.b.stimson@intel.com>
 <76818a8047c4b9da76d0619c7b8f58c89449b4ed.1579731227.git.dale.b.stimson@intel.com>
 <225f88d1044053674cbd632998c69c0c677a530e.1579731227.git.dale.b.stimson@intel.com>
 <157977054018.18920.9879323586181021015@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c192e00d-1997-c714-50be-91fc64f9cc29@linux.intel.com>
Date: Thu, 23 Jan 2020 15:59:33 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157977054018.18920.9879323586181021015@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/2] DBS:
 tests/i915/gem_ctx_isolation: use the gem_engine_topology library, part 2
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
Cc: "Melkaveri, Arjun" <arjun.melkaveri@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 23/01/2020 09:09, Chris Wilson wrote:
> Quoting Dale B Stimson (2020-01-22 23:26:57)
>> Switch from simple iteration over all potential engines to using
>> macro __for_each_physical_engine which only returns engines that are
>> actually present.
>>
>> For each context (as it is created) call gem_context_set_all_engines
>> so that execbuf will interpret the engine specification in the new way.
>>
>> Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
>> ---
>>   tests/i915/gem_ctx_isolation.c | 41 ++++++++++++++++++++++++++--------
>>   1 file changed, 32 insertions(+), 9 deletions(-)
>>
>> diff --git a/tests/i915/gem_ctx_isolation.c b/tests/i915/gem_ctx_isolation.c
>> index 25113b054..31a20ed3a 100644
>> --- a/tests/i915/gem_ctx_isolation.c
>> +++ b/tests/i915/gem_ctx_isolation.c
>> @@ -240,6 +240,25 @@ static bool ignore_register(uint32_t offset)
>>          return false;
>>   }
>>   
>> +/*
>> + * context_create_plus_all_engines - Same as gem_context_create plus setup.
>> + *
>> + * This is a convenience function that may be called instead of the sequence
>> + * of gem_context_create followed by gem_context_set_all_engines.
>> + * If gem_has_engine_topology(), then function gem_context_set_all_engines
>> + * indicates that future execbuf calls for this context should interpret the
>> + * engine specification in a gem_engine_topology-compatible way.
>> + */
>> +static uint32_t context_create_plus_all_engines(int fd)
>> +{
>> +       uint32_t ctx;
>> +
>> +       ctx = gem_context_create(fd);
>> +       gem_context_set_all_engines(fd, ctx);
>> +
>> +       return ctx;
>> +}
> 
> gem_context_clone_with_engines() so we can stop assuming that
> all-engines is the right answer, because that depends on the conditions
> set up by the iterator on the first context.

gem_context_clone_with_engines was agreed upon in principle some time 
ago but never implemented. I have now posted this as 
https://patchwork.freedesktop.org/series/72464/ and plan to merge it 
once it passes CI.

Dale, Arjun, Krishnaiah and Sreedhar - you have in progress patches 
which use gem_context_set_all_engines which will be gone and you will 
need to adjust your work accordingly.

Sreedhar specifically for your change in gem_exec_parallel we will need 
to add a new helper which transfers the engine map from one fd/context 
to another. I will copy you on a patch which will add it.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
