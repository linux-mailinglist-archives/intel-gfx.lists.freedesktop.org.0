Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBF9123364
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 18:21:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D1126E1BA;
	Tue, 17 Dec 2019 17:21:32 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B02436E1BA
 for <Intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 17:21:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 09:21:31 -0800
X-IronPort-AV: E=Sophos;i="5.69,326,1571727600"; d="scan'208";a="209771888"
Received: from dtriolet-mobl1.ger.corp.intel.com (HELO [10.251.84.191])
 ([10.251.84.191])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 17 Dec 2019 09:21:30 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20191216120704.958-1-tvrtko.ursulin@linux.intel.com>
 <20191216120704.958-3-tvrtko.ursulin@linux.intel.com>
 <157650082706.2428.8789012781722817984@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b3eba5e5-950c-c31a-f716-c63b31863d8d@linux.intel.com>
Date: Tue, 17 Dec 2019 17:21:28 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157650082706.2428.8789012781722817984@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915: Expose list of clients in
 sysfs
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


On 16/12/2019 12:53, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2019-12-16 12:07:01)
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>> index 0781b6326b8c..9fcbcb6d6f76 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -224,6 +224,20 @@ struct drm_i915_file_private {
>>          /** ban_score: Accumulated score of all ctx bans and fast hangs. */
>>          atomic_t ban_score;
>>          unsigned long hang_timestamp;
>> +
>> +       struct i915_drm_client {
>> +               unsigned int id;
>> +
>> +               struct pid *pid;
>> +               char *name;
> 
> Hmm. Should we scrap i915_gem_context.pid and just use the client.pid?

Or maybe leave as it so I don't have to worry about ctx vs client 
lifetime. In other words places where we access ctx->pid and the client 
is maybe long gone. I don't want to ref count clients, or maybe I do.. 
hmm.. keeping GPU load of a client which exited and left work running 
visible?

Regards,

Tvrtko

>> +
>> +               struct kobject *root;
>> +
>> +               struct {
>> +                       struct device_attribute pid;
>> +                       struct device_attribute name;
>> +               } attr;
>> +       } client;
>>   };
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
