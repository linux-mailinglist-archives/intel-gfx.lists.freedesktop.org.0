Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2781808AC
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 21:01:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A59EF89D53;
	Tue, 10 Mar 2020 20:01:30 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D654189D53
 for <Intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 20:01:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 13:01:28 -0700
X-IronPort-AV: E=Sophos;i="5.70,538,1574150400"; d="scan'208";a="236160186"
Received: from pkosiack-mobl2.ger.corp.intel.com (HELO [10.252.21.27])
 ([10.252.21.27])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 10 Mar 2020 13:01:27 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
 <20200309183129.2296-7-tvrtko.ursulin@linux.intel.com>
 <158386489428.28297.13319308260258077262@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9f360275-04cb-b92a-08e0-08438e9dac85@linux.intel.com>
Date: Tue, 10 Mar 2020 20:01:25 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <158386489428.28297.13319308260258077262@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 06/12] drm/i915: Track runtime spent in closed
 GEM contexts
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


On 10/03/2020 18:28, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-03-09 18:31:23)
>> diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
>> index 7825df32798d..10752107e8c7 100644
>> --- a/drivers/gpu/drm/i915/i915_drm_client.h
>> +++ b/drivers/gpu/drm/i915/i915_drm_client.h
>> @@ -16,6 +16,8 @@
>>   #include <linux/sched.h>
>>   #include <linux/xarray.h>
>>   
>> +#include "gt/intel_engine_types.h"
>> +
>>   struct i915_drm_clients {
>>          struct mutex lock;
>>          struct xarray xarray;
>> @@ -43,6 +45,11 @@ struct i915_drm_client {
>>                  struct device_attribute pid;
>>                  struct device_attribute name;
>>          } attr;
>> +
>> +       /**
>> +        * @past_runtime: Accumulation of pphwsp runtimes from closed contexts.
>> +        */
>> +       atomic64_t past_runtime[MAX_ENGINE_CLASS + 1];
> 
> Just to plant a seed: i915_drm_client_stats.[ch] ?

Let it grow a bit first? :)

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
