Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF22217F6FB
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 13:02:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D5DB89E2A;
	Tue, 10 Mar 2020 12:02:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 401F489E2A
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 12:02:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 05:02:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="321779006"
Received: from ceylanal-mobl1.ger.corp.intel.com (HELO [10.252.41.180])
 ([10.252.41.180])
 by orsmga001.jf.intel.com with ESMTP; 10 Mar 2020 05:02:00 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200306133852.3420322-1-chris@chris-wilson.co.uk>
 <20200306133852.3420322-7-chris@chris-wilson.co.uk>
 <158383902154.16414.418483971502793066@build.alporthouse.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <08ed443e-08e1-c009-d0b7-c70d3020b352@intel.com>
Date: Tue, 10 Mar 2020 14:01:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <158383902154.16414.418483971502793066@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 07/17] drm/i915/perf: Schedule oa_config
 after modifying the contexts
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

On 10/03/2020 13:17, Chris Wilson wrote:
> Quoting Chris Wilson (2020-03-06 13:38:42)
>>   static int i915_perf_stream_enable_sync(struct i915_perf_stream *stream)
>>   {
>> -       struct i915_request *rq;
>> +       struct i915_active *active;
>> +       int err;
>>   
>> -       rq = stream->perf->ops.enable_metric_set(stream);
>> -       if (IS_ERR(rq))
>> -               return PTR_ERR(rq);
>> +       active = i915_active_create();
>> +       if (!active)
>> +               return -ENOMEM;
>>   
>> -       i915_request_wait(rq, 0, MAX_SCHEDULE_TIMEOUT);
>> -       i915_request_put(rq);
>> +       err = stream->perf->ops.enable_metric_set(stream, active);
>> +       if (err == 0)
>> +               i915_active_wait(active, TASK_UNINTERRUPTIBLE);
> Why UNINTERRUPTIBLE you might ask?
>
> Because if you've demonstrated that by having scheduled the oa config
> update that by not waiting for the change, the machine becomes unusable,
> that seems like a risk not worth taking.


Just to confirm, the risk would be that the task could be interrupted 
and that we would schedule another configuration request, without any 
way and that would bring us back to the buggy scenario we saw.


-Lionel


>
> Hence why the i915_request_wait() was uninterruptible and the
> i915_active_wait() keeps the uninterruptible nature.
> -Chris


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
