Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E218E27894D
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Sep 2020 15:19:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 506146ECC9;
	Fri, 25 Sep 2020 13:19:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BEFD6ECC9
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Sep 2020 13:19:27 +0000 (UTC)
IronPort-SDR: e4YcJj0HvUDScX7vBzB9+qytqc33MgTSxWlPXrNlu6KuPfxm8ikuzqnu1MJouFt5636+s1bJxl
 R+NVKAq8JldA==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="246303222"
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="246303222"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 06:19:27 -0700
IronPort-SDR: lSBLfSU2e1fS0KUpca7p1qSY+kA1P84VBXS8kPyjA+4bS9lAukn+RrF2bcVCW32YokoKj/iCKC
 pHEIi3Zb+Kww==
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="455831389"
Received: from mlevy2-mobl.ger.corp.intel.com (HELO [10.251.176.131])
 ([10.251.176.131])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 06:19:25 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200916094219.3878-1-chris@chris-wilson.co.uk>
 <20200916094219.3878-3-chris@chris-wilson.co.uk>
 <6be94225-9d54-0a4b-d1d0-d5b46d8b6fdb@linux.intel.com>
 <160102809807.30248.12041152856672975142@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a3ecdcec-5274-99b4-6dcb-f1c34695c30d@linux.intel.com>
Date: Fri, 25 Sep 2020 14:19:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <160102809807.30248.12041152856672975142@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/gt: Always send a pulse down
 the engine after disabling heartbeat
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
Cc: stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 25/09/2020 11:01, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-09-24 14:43:08)
>>
>> On 16/09/2020 10:42, Chris Wilson wrote:
>>> Currently, we check we can send a pulse prior to disabling the
>>> heartbeat to verify that we can change the heartbeat, but since we may
>>> re-evaluate execution upon changing the heartbeat interval we need another
>>> pulse afterwards to refresh execution.
>>>
>>> Fixes: 9a40bddd47ca ("drm/i915/gt: Expose heartbeat interval via sysfs")
>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>>> Cc: <stable@vger.kernel.org> # v5.7+
>>> ---
>>>    drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c | 6 ++++--
>>>    1 file changed, 4 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
>>> index 8ffdf676c0a0..d09df370f7cd 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
>>> @@ -192,10 +192,12 @@ int intel_engine_set_heartbeat(struct intel_engine_cs *engine,
>>>        WRITE_ONCE(engine->props.heartbeat_interval_ms, delay);
>>>    
>>>        if (intel_engine_pm_get_if_awake(engine)) {
>>> -             if (delay)
>>> +             if (delay) {
>>>                        intel_engine_unpark_heartbeat(engine);
>>> -             else
>>> +             } else {
>>>                        intel_engine_park_heartbeat(engine);
>>> +                     intel_engine_pulse(engine); /* recheck execution */
>>> +             }
>>>                intel_engine_pm_put(engine);
>>>        }
>>>    
>>>
>>
>> I did not immediately get this one. Do we really need two pulses or
>> maybe we could re-order the code a bit and just undo the heartbeat park
>> if pulse after parking did not work?
> 
> We use the first pulse to determine if it's legal for the parameter to
> be changed (checking we support the preemptive pulse to remove
> non-persistent contexts). Then the second pulse after changing the
> parameter to flush the changes through.
> 
> I like checking for support before making the change, although we could
> try and fixup after failure, there would still be a window where the
> change would be visible to the system. We don't need to use the pulse per
> se for that check, that's pure convenience as it performs the checking
> already.

Hm second pulse also has a problem that sneaky user can nerf it with a 
precisely timed SIGINT on itself. It's a bit ridiculous isn't it? :)

Have engine preemption check open coded first and uninterruptible 
flavour of pulse sending? It's also not good since we do want it to be 
interruptible.. Unwind the change and report error back to write(2) if 
intel_engine_pulse failed for any reason?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
