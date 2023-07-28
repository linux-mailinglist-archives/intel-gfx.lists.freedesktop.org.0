Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 314AC766FB1
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jul 2023 16:46:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B29E710E6A4;
	Fri, 28 Jul 2023 14:46:47 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5AA010E6A4;
 Fri, 28 Jul 2023 14:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690555605; x=1722091605;
 h=message-id:date:mime-version:subject:from:to:references:
 in-reply-to:content-transfer-encoding;
 bh=VaCfAT2kmh1voVltp2A4TQQP6Tnuit8JMqx+mBEAfFg=;
 b=CUx7FTm7ITsOonaGVLgIozs8Gq+R6HQRFB/OwpyogPvGhYJ+ciuCTj/8
 t/VNgkcr5s3f4KfT3NKeLhr9+3OXhIb3ug4k7YOlRfuaxBIa3XRA2dWH2
 G70lX5H09rAMz+PvLURyxeTGmEm59f5mA0MxRuJ1bU988UdKU0w2HxrTE
 jk3PgVhorFSuOSCfIjpIb6nFAQKWy51MCd33p50Nd6n0mRDOe5B2kH3uX
 cwAuLI7ZBXEQ6BzHXWf2rJhM/8Yig7G38X7aTYA5d/q/5T9UhAEfMLTch
 2WGWDC+/o0lzwIoS+dr54ThOdWBcZNRHtCuZ11ZKGZwq1tDB3kxcOOM6Q w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="432422690"
X-IronPort-AV: E=Sophos;i="6.01,237,1684825200"; d="scan'208";a="432422690"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2023 07:46:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="762636158"
X-IronPort-AV: E=Sophos;i="6.01,237,1684825200"; d="scan'208";a="762636158"
Received: from atoomey-mobl.amr.corp.intel.com (HELO [10.213.197.30])
 ([10.213.197.30])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2023 07:46:37 -0700
Message-ID: <3c9d4c04-762c-730d-cc93-125cf7bc6f39@linux.intel.com>
Date: Fri, 28 Jul 2023 15:46:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rob Clark
 <robdclark@chromium.org>, Chris Healy <cphealy@gmail.com>
References: <20230727092025.1895728-1-tvrtko.ursulin@linux.intel.com>
 <20230727092025.1895728-3-tvrtko.ursulin@linux.intel.com>
 <20230727141059.lu76jilirgvcjb5f@kamilkon-desk1>
 <ec6d0e7f-f561-24fd-ec6e-e880258f96d7@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ec6d0e7f-f561-24fd-ec6e-e880258f96d7@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/3] lib/igt_drm_clients: Store memory
 info in the client
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


On 27/07/2023 16:17, Tvrtko Ursulin wrote:
> 
> Hi,
> 
> On 27/07/2023 15:10, Kamil Konieczny wrote:
>> Hi Tvrtko,
>>
>> On 2023-07-27 at 10:20:24 +0100, Tvrtko Ursulin wrote:
>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>
>>> Define the storage structure and copy over memory data as parsed by the
>>> fdinfo helpers.
>>>
>>> v2:
>>>   * Fix empty region map entry skip condition. (Kamil, Chris)
>>>
>>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>> Cc: Rob Clark <robdclark@chromium.org>
>>> Cc: Chris Healy <cphealy@gmail.com>
>>> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
>>> ---
>>>   lib/igt_drm_clients.c | 32 ++++++++++++++++++++++++++++++++
>>>   lib/igt_drm_clients.h | 11 +++++++++++
>>>   2 files changed, 43 insertions(+)
>>>
>>> diff --git a/lib/igt_drm_clients.c b/lib/igt_drm_clients.c
>>> index fdea42752a81..47ad137d5f1f 100644
>>> --- a/lib/igt_drm_clients.c
>>> +++ b/lib/igt_drm_clients.c
>>> @@ -103,6 +103,8 @@ igt_drm_client_update(struct igt_drm_client *c, 
>>> unsigned int pid, char *name,
>>>               c->clients->max_name_len = len;
>>>       }
>>> +    /* Engines */
>>> +
>>>       c->last_runtime = 0;
>>>       c->total_runtime = 0;
>>> @@ -118,6 +120,13 @@ igt_drm_client_update(struct igt_drm_client *c, 
>>> unsigned int pid, char *name,
>>>           c->last[i] = info->busy[i];
>>>       }
>>> +    /* Memory regions */
>>> +    for (i = 0; i <= c->regions->max_region_id; i++) {
>>> +        assert(i < ARRAY_SIZE(info->region_mem));
>>> +
>>> +        c->memory[i] = info->region_mem[i];
>>> +    }
>>> +
>>>       c->samples++;
>>>       c->status = IGT_DRM_CLIENT_ALIVE;
>>>   }
>>> @@ -154,6 +163,8 @@ igt_drm_client_add(struct igt_drm_clients *clients,
>>>       c->id = info->id;
>>>       c->drm_minor = drm_minor;
>>>       c->clients = clients;
>>> +
>>> +    /* Engines */
>>>       c->engines = malloc(sizeof(*c->engines));
>>>       assert(c->engines);
>>>       memset(c->engines, 0, sizeof(*c->engines));
>>> @@ -178,6 +189,27 @@ igt_drm_client_add(struct igt_drm_clients *clients,
>>>       c->last = calloc(c->engines->max_engine_id + 1, sizeof(c->last));
>>>       assert(c->val && c->last);
>>> +    /* Memory regions */
>>> +    c->regions = malloc(sizeof(*c->regions));
>>> +    assert(c->regions);
>>> +    memset(c->regions, 0, sizeof(*c->regions));
>>> +    c->regions->names = calloc(info->last_region_index + 1,
>>> +                   sizeof(*c->regions->names));
>>> +    assert(c->regions->names);
>>> +
>>> +    for (i = 0; i <= info->last_region_index; i++) {
>>> +        /* Region map is allowed to be sparse. */
>>> +        if (!info->region_names[i][0])
>>> +            continue;
>>> +
>>> +        c->regions->names[i] = strdup(info->region_names[i]);
>> --------------------------------- ^
>> Should this be c->regions->num_regions?
> 
> No, it was supposed to carry over the same memory region index from the 
> region map provided to igt_parse_drm_fdinfo.
> 
> I copy pasted that concept from engine names (class names for i915) but, 
> given it is unused, maybe I should drop it.
> 
> Gputop does not need it, at least not yet, and I haven't thought much if 
> it will be useful for intel_gpu_top. Point is, it allows passing in 
> fixed region id to name mapping, which can simplify things and guarantee 
> order of memory regions in the arrays. (Otherwise the order would depend 
> on the order of keys in the fdinfo text.)

I think I'd like to keep this functionality for now. I do promise to rip 
it out later, should I end up not needing it for intel_gpu_top after all.

Regards,

Tvrtko
