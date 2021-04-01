Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2353515C8
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Apr 2021 16:58:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9060D6ECAE;
	Thu,  1 Apr 2021 14:58:14 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4217E6E3DB;
 Thu,  1 Apr 2021 14:58:13 +0000 (UTC)
IronPort-SDR: Qn4tZdVxn1QatwfRVmzKAj1cXRz4KU4xjdp5NkqPSxV2PCL3BbfbfsYamlIKvSlhwVRKl1EZqq
 6oi2/Eptfenw==
X-IronPort-AV: E=McAfee;i="6000,8403,9941"; a="190026372"
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="190026372"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 07:58:12 -0700
IronPort-SDR: Qesq51HpNriVAbj9qIL9kLw19KWpN2WdnUGo7qUhp3wk12QugcuQYJuDMmKpfdDa7oK3CPVwGd
 I9vv54zJZuqg==
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="419232211"
Received: from shaneken-mobl.ger.corp.intel.com (HELO [10.213.202.146])
 ([10.213.202.146])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 07:58:11 -0700
To: Matthew Auld <matthew.william.auld@gmail.com>
References: <20210331091241.2566311-1-tvrtko.ursulin@linux.intel.com>
 <CAM0jSHPM+8DEJGo38wA=0zGtEaeN1u1rqeL9S2PjEHrZSai7bg@mail.gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a94d9968-173b-f9f5-5f44-598fed2c1fd4@linux.intel.com>
Date: Thu, 1 Apr 2021 15:58:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <CAM0jSHPM+8DEJGo38wA=0zGtEaeN1u1rqeL9S2PjEHrZSai7bg@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] intel_gpu_top: Document how
 to use JSON output
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
Cc: igt-dev@lists.freedesktop.org,
 Intel Graphics Development <Intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 01/04/2021 15:49, Matthew Auld wrote:
> On Wed, 31 Mar 2021 at 10:12, Tvrtko Ursulin
> <tvrtko.ursulin@linux.intel.com> wrote:
>>
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Put a note on how to use JSON output into the man page.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> References: https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/issues/100
>> ---
>>   man/intel_gpu_top.rst | 5 +++++
>>   1 file changed, 5 insertions(+)
>>
>> diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
>> index f6d74852558b..94fdc6520fd3 100644
>> --- a/man/intel_gpu_top.rst
>> +++ b/man/intel_gpu_top.rst
>> @@ -81,6 +81,11 @@ Filter types: ::
>>       pci      pci:[vendor=%04x/name][,device=%04x][,card=%d]
>>                vendor is hex number or vendor name
>>
>> +JSON OUTPUT
>> +===========
>> +
>> +To parse the JSON as output by the tool the consumer should wrap its entirety into square brackets ([ ]). This will make each sample point an JSON array element and will avoid "Multiple root elements" JSON validation error.
>> +
> 
> a JSON array element
> 
> It could be argued that this should go into LIMITATIONS?

Hm yes, 50-50 or you lean more towards limitations? Otherwise inertia 
says it can also stay as is.

Regards,

Tvrtko

> Acked-by: Matthew Auld <matthew.auld@intel.com>
> 
>>   LIMITATIONS
>>   ===========
>>
>> --
>> 2.27.0
>>
>> _______________________________________________
>> igt-dev mailing list
>> igt-dev@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/igt-dev
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
