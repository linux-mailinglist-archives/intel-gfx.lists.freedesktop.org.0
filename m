Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1226C155C1E
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 17:49:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FA396EAD3;
	Fri,  7 Feb 2020 16:49:21 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0A716EAD3
 for <Intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 16:49:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 08:49:20 -0800
X-IronPort-AV: E=Sophos;i="5.70,414,1574150400"; d="scan'208";a="225429423"
Received: from aabader-mobl1.ccr.corp.intel.com (HELO [10.252.21.249])
 ([10.252.21.249])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 07 Feb 2020 08:49:19 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20200207161331.23447-1-tvrtko.ursulin@linux.intel.com>
 <20200207161331.23447-6-tvrtko.ursulin@linux.intel.com>
 <158109321467.16098.12817907526709789256@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b23f6987-86e2-c649-bd48-4fdae5a7947c@linux.intel.com>
Date: Fri, 7 Feb 2020 16:49:17 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <158109321467.16098.12817907526709789256@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Track per drm client engine
 class busyness
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


On 07/02/2020 16:33, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-02-07 16:13:30)
>>   static inline void
>> -__intel_context_stats_start(struct intel_context *ce, ktime_t now)
>> +__intel_context_stats_start(struct intel_context *ce,
>> +                           struct intel_engine_cs *engine,
>> +                           ktime_t now)
>>   {
>>          struct intel_context_stats *stats = &ce->stats;
>> -
>> -       if (!stats->active) {
>> -               stats->start = now;
>> -               stats->active = true;
>> +       struct i915_gem_context *ctx;
>> +
>> +       if (stats->active)
>> +               return;
>> +
>> +       stats->start = now;
>> +       stats->active = true;
>> +
>> +       rcu_read_lock();
>> +       ctx = rcu_dereference(ce->gem_context);
>> +       if (ctx && ctx->client) {
> 
> I'd rather avoid having to dig into the GEM context down here next to
> the HW.
> 
> First thought would be to keep the stats local on the intel_context and
> for the client to chase collate them when the user reads the fd.
> 
> Hmm, didn't you structure it like so earlier? What made you change your
> mind?

Yes, it's in the cover letter - we must not have disappearing 
contributions - client can submit from one context for a bit, close it, 
and oops usage history lost.

ce->drm_client? :)


Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
