Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 438BC1276C8
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 08:55:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA8356EBE0;
	Fri, 20 Dec 2019 07:55:09 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFECA6EBE0
 for <Intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 07:55:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 23:55:08 -0800
X-IronPort-AV: E=Sophos;i="5.69,335,1571727600"; d="scan'208";a="210740811"
Received: from dtriolet-mobl1.ger.corp.intel.com (HELO [10.251.84.191])
 ([10.251.84.191])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 19 Dec 2019 23:55:07 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20191219180019.25562-1-tvrtko.ursulin@linux.intel.com>
 <20191219180019.25562-3-tvrtko.ursulin@linux.intel.com>
 <157678823997.6469.3187491361664776890@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6c9d1d35-606c-925a-1f2d-18a48720135a@linux.intel.com>
Date: Fri, 20 Dec 2019 07:55:05 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157678823997.6469.3187491361664776890@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 2/8] drm/i915: Reference count struct
 drm_i915_file_private
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


On 19/12/2019 20:43, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2019-12-19 18:00:13)
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> In the following patches we will develope a need to peek into the client
>> owned data from any potential leftover contexts.
>>
>> To facilitate this add reference counting to file_priv.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_context.c |  2 +-
>>   drivers/gpu/drm/i915/i915_drv.c             |  4 ----
>>   drivers/gpu/drm/i915/i915_drv.h             |  4 +++-
>>   drivers/gpu/drm/i915/i915_gem.c             | 14 +++++++++++++-
>>   4 files changed, 17 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> index e5a7c6f02a47..b482b2e5f31f 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> @@ -853,7 +853,7 @@ int i915_gem_context_open(struct drm_i915_private *i915,
>>   void i915_gem_context_close(struct drm_file *file)
>>   {
>>          struct drm_i915_file_private *file_priv = file->driver_priv;
>> -       struct drm_i915_private *i915 = file_priv->dev_priv;
>> +       struct drm_i915_private *i915 = file_priv->i915;
>>          struct i915_gem_context *ctx;
>>          unsigned long idx;
>>   
>> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
>> index 8b08cfe30151..0c9c93418068 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.c
>> +++ b/drivers/gpu/drm/i915/i915_drv.c
>> @@ -1633,13 +1633,9 @@ static void i915_driver_lastclose(struct drm_device *dev)
>>   
>>   static void i915_driver_postclose(struct drm_device *dev, struct drm_file *file)
>>   {
>> -       struct drm_i915_file_private *file_priv = file->driver_priv;
>> -
>>          i915_gem_context_close(file);
>>          i915_gem_release(dev, file);
>>   
>> -       kfree_rcu(file_priv, rcu);
> 
> As you are moving the kfree_rcu() into the i915_gem_release (via a put),
> I think it also makes sense to move the call for i915_gem_context_close
> on this file. Possibly renaming it to i915_gem_file_close() and
> s/drm_i915_file_private/i915_gem_file/ or i915_gem_client (with
> corresponding name changes) in the process.
> 
> For the basic mechanics of this patch though,
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> 
> (Though I still suggest a bit of playing with i915_gem_context_close,
> i915_gem_release to tie them together to the notion of the file better.)

Yes, agreed in principle.

But a) I prefer the release name to match with the fops mindset and b) I 
prefer to leave drm_i915_file_private alone as the top level driver 
private container.

What I am not completely happy with, or say undecided, is whether to 
move the kref into i915_drm_client. I had it like that at one point, 
thinking to only have a smallest needed structure pinned in memory, but 
then I simplified in favour of fewer allocations. Now I think I'd like 
to move the kref into i915_drm_client again. Any opinion here?

In a later patch, when I add the i915_gem_client_get/put helpers they 
are already named like that. Hm okay, I also have a naming confusion 
between struct i915_drm_client and i915_gem_client_get/put(). :)

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
