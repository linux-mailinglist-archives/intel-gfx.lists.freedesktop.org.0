Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7AE136F03
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 15:09:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB42A6EA2B;
	Fri, 10 Jan 2020 14:09:14 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95B116EA2E
 for <Intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 14:09:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 06:09:13 -0800
X-IronPort-AV: E=Sophos;i="5.69,417,1571727600"; d="scan'208";a="216676126"
Received: from kumarjai-mobl1.ger.corp.intel.com (HELO [10.251.83.12])
 ([10.251.83.12])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 10 Jan 2020 06:09:11 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20200110133049.2705-1-tvrtko.ursulin@linux.intel.com>
 <20200110133049.2705-7-tvrtko.ursulin@linux.intel.com>
 <157866471921.10140.2303070485485258716@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <aacea301-9bed-424e-42a7-c398bf242b1d@linux.intel.com>
Date: Fri, 10 Jan 2020 14:09:09 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157866471921.10140.2303070485485258716@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 6/8] drm/i915: Expose per-engine client
 busyness
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
Cc: kui.wen@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/01/2020 13:58, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-01-10 13:30:47)
>> +static ssize_t
>> +show_client_busy(struct device *kdev, struct device_attribute *attr, char *buf)
>> +{
>> +       struct i915_engine_busy_attribute *i915_attr =
>> +               container_of(attr, typeof(*i915_attr), attr);
>> +       struct list_head *list = &i915_attr->client->ctx_list;
>> +       unsigned int engine_class = i915_attr->engine_class;
>> +       struct i915_gem_context *ctx;
>> +       u64 total = 0;
>> +
>> +       if (i915_attr->no_busy_stats)
>> +               return -ENODEV;
>> +
>> +       rcu_read_lock();
>> +       list_for_each_entry_rcu(ctx, list, client_link)
>> +               total += sw_busy_add(ctx, engine_class);
>> +       rcu_read_unlock();
>> +
>> +       return snprintf(buf, PAGE_SIZE, "%llu\n", total);
>> +}
>> +
>> +static const char *uabi_class_names[] = {
>> +       [I915_ENGINE_CLASS_RENDER] = "0",
>> +       [I915_ENGINE_CLASS_COPY] = "1",
>> +       [I915_ENGINE_CLASS_VIDEO] = "2",
>> +       [I915_ENGINE_CLASS_VIDEO_ENHANCE] = "3",
>> +};
> 
> Hmm. /sys/class/drm/card0/clients/0/busy/0
> 
> Ok. I was worried this was 0/0 and so very bland and liable to clash
> later.
> 
>> +
>>   int
>>   __i915_drm_client_register(struct i915_drm_client *client,
>>                             struct task_struct *task)
>>   {
>>          struct i915_drm_clients *clients = client->clients;
>> +       struct drm_i915_private *i915 =
>> +               container_of(clients, typeof(*i915), clients);
>> +       struct intel_engine_cs *engine;
>>          struct device_attribute *attr;
>> -       int ret = -ENOMEM;
>> +       int i, ret = -ENOMEM;
>>          char idstr[32];
>>   
>>          if (!clients->root)
>> @@ -77,10 +130,71 @@ __i915_drm_client_register(struct i915_drm_client *client,
>>          if (ret)
>>                  goto err_attr;
>>   
>> +       if (HAS_LOGICAL_RING_CONTEXTS(i915)) {
>> +               client->busy_root =
>> +                       kobject_create_and_add("busy", client->root);
>> +               if (!client->busy_root)
>> +                       goto err_attr;
>> +
>> +               for (i = 0; i < ARRAY_SIZE(uabi_class_names); i++) {
>> +                       struct i915_engine_busy_attribute *i915_attr =
>> +                               &client->attr.busy[i];
> 
> 
> if (!intel_engine_lookup_user(i915, i, 0))
> 	continue;
> 
> i.e. skip if we don't have any engines of that class in the system.

Yes, thanks.

>> +
>> +                       i915_attr->client = client;
>> +                       i915_attr->engine_class = i;
>> +
>> +                       attr = &i915_attr->attr;
>> +
>> +                       sysfs_attr_init(&attr->attr);
>> +
>> +                       attr->attr.name = uabi_class_names[i];
>> +                       attr->attr.mode = 0444;
>> +                       attr->show = show_client_busy;
>> +
>> +                       ret = sysfs_create_file(client->busy_root,
>> +                                               (struct attribute *)attr);
>> +                       if (ret)
>> +                               goto err_busy;
>> +               }
>> +
>> +               /* Enable busy stats on all engines. */
>> +               i = 0;
>> +               for_each_uabi_engine(engine, i915) {
>> +                       ret = intel_enable_engine_stats(engine);
> 
> Hmm. We gave it a global bit in
> 
> 	i915->caps.scheduler & I915_SCHEDULER_CAP_ENABLED.
> 
> That'll avoid having to do the individual checking and rollback.

I could add a top level check as a short circuit, but I prefer to check 
return code from intel_enable_engine_stats since it returns one.

Also if new GuC will have I915_SCHEDULER_CAP_ENABLED it will still fail 
to enable engine stats and then fallback to pphwsp has to happen.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
