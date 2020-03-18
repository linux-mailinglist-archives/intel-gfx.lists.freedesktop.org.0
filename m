Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A081C189DA6
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 15:15:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A5C76E903;
	Wed, 18 Mar 2020 14:15:38 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E519D6E903
 for <Intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 14:15:36 +0000 (UTC)
IronPort-SDR: 2LajPnjqX5G1++g8SlREmW7w3WLYKrEpafUYZHWxptwSsdlG89FYhc3vtQqcKg8i5x/GjR1NQq
 L2XX62gRdUzw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 07:15:36 -0700
IronPort-SDR: reQaaOTiAdBDKe6Jz4OKTe85mWK/j/V/mBTCNx/5TjfdfvGVefnTdsdCEm14KPq0NWY15dBnMT
 RbdHRou/XVaw==
X-IronPort-AV: E=Sophos;i="5.70,567,1574150400"; d="scan'208";a="238618879"
Received: from unknown (HELO [10.214.196.8]) ([10.214.196.8])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 07:15:34 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20200318121138.909-1-tvrtko.ursulin@linux.intel.com>
 <20200318121138.909-9-tvrtko.ursulin@linux.intel.com>
 <158454005479.6873.4857418466512127070@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <aec5ec90-0c1d-e1cb-f7c4-ff5b2112a005@linux.intel.com>
Date: Wed, 18 Mar 2020 14:15:31 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <158454005479.6873.4857418466512127070@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 08/10] drm/i915: Expose per-engine client
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 18/03/2020 14:00, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-03-18 12:11:37)
>> +static u64
>> +pphwsp_busy_add(struct i915_gem_context *ctx, unsigned int class)
>> +{
>> +       struct i915_gem_engines *engines = rcu_dereference(ctx->engines);
>> +       struct i915_gem_engines_iter it;
>> +       struct intel_context *ce;
>> +       u64 total = 0;
>> +
>> +       for_each_gem_engine(ce, engines, it) {
>> +               if (ce->engine->uabi_class == class)
>> +                       total += ce->runtime.total;
>> +       }
>> +
>> +       return total;
>> +}
>> +
>> +static ssize_t
>> +show_client_busy(struct device *kdev, struct device_attribute *attr, char *buf)
>> +{
>> +       struct i915_engine_busy_attribute *i915_attr =
>> +               container_of(attr, typeof(*i915_attr), attr);
>> +       unsigned int class = i915_attr->engine_class;
>> +       struct i915_drm_client *client = i915_attr->client;
>> +       u64 total = atomic64_read(&client->past_runtime[class]);
>> +       struct list_head *list = &client->ctx_list;
>> +       struct i915_gem_context *ctx;
>> +
>> +       rcu_read_lock();
>> +       list_for_each_entry_rcu(ctx, list, client_link) {
>> +               total += atomic64_read(&ctx->past_runtime[class]);
>> +               total += pphwsp_busy_add(ctx, class);
> 
> Hmm. I would like to have some GEM context agnosticism here. At the
> moment, all I have to offer is
> 
> struct client_runtime {
> 	struct list_head client_link;
> 	atomic64_t past_runtime;
> 	u64 (*cur_runtime)(struct client_runtime *);
> };

What exactly do you mean here? Who keeps a list and of what and what 
does the vfunc do?

Regards,

Tvrtko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
