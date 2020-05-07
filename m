Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BE21C93E0
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 17:10:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 391846E9E6;
	Thu,  7 May 2020 15:10:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CBF26E9E6
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 15:10:42 +0000 (UTC)
IronPort-SDR: 3HYD7AHDisXGdXaw7OWtlx5wWlJTcVn3wsrGv4wNqgebstwCA1WHvnW22mAUP+WwELx06t25Jw
 NtzzqVdZGK8g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 08:10:41 -0700
IronPort-SDR: UX0vFnwfvhjzdiJDeS5SvUM9l48fMRJ9bPWfyTJVjgdv3N9CXXuBY2pHDSo8XtmLB75VPgylRV
 nwuUGERE7+yQ==
X-IronPort-AV: E=Sophos;i="5.73,364,1583222400"; d="scan'208";a="435319857"
Received: from nstgemme-mobl1.ger.corp.intel.com (HELO [10.252.42.100])
 ([10.252.42.100])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 08:10:40 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200507082124.1673-1-chris@chris-wilson.co.uk>
 <20200507082124.1673-2-chris@chris-wilson.co.uk>
 <746f07e6-7e85-d11e-3e7a-2fe850891b01@linux.intel.com>
 <158886392555.20858.15356860967210945301@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <2340d9e2-31b8-3989-ebaf-8e2fd7bf32b0@linux.intel.com>
Date: Thu, 7 May 2020 16:10:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <158886392555.20858.15356860967210945301@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/gem: Treat submit-fence as
 weak dependency for new clients
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


On 07/05/2020 16:05, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-05-07 15:59:56)
>>
>> On 07/05/2020 09:21, Chris Wilson wrote:
>>> The submit-fence adds a weak dependency to the requests, and for the
>>> purpose of our FQ_CODEL hinting we do not want to treat as a
>>> restriction. This is primarily because clients may treat submit-fences
>>> as a bidirectional bonding between a pair of co-ordinating requests.
>>>
>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 13 ++++++++++++-
>>>    1 file changed, 12 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>> index 966523a8503f..e8bf0cf02fd7 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>> @@ -2565,6 +2565,17 @@ static void retire_requests(struct intel_timeline *tl, struct i915_request *end)
>>>                        break;
>>>    }
>>>    
>>> +static bool new_client(struct i915_request *rq)
>>> +{
>>> +     struct i915_dependency *p;
>>> +
>>> +     list_for_each_entry(p, &rq->sched.signalers_list, signal_link)
>>> +             if (!(p->flags & I915_DEPENDENCY_WEAK))
>>> +                     return false;
>>> +
>>> +     return true;
>>> +}
>>> +
>>>    static void eb_request_add(struct i915_execbuffer *eb)
>>>    {
>>>        struct i915_request *rq = eb->request;
>>> @@ -2604,7 +2615,7 @@ static void eb_request_add(struct i915_execbuffer *eb)
>>>                 * Allow interactive/synchronous clients to jump ahead of
>>>                 * the bulk clients. (FQ_CODEL)
>>>                 */
>>> -             if (list_empty(&rq->sched.signalers_list))
>>> +             if (new_client(rq))
>>>                        attr.priority |= I915_PRIORITY_WAIT;
>>>        } else {
>>>                /* Serialise with context_close via the add_to_timeline */
>>>
>>
>> Did absence of this have any functional effect? I hope not, but anyway:
> 
> Bah, I have a new test case where this WAIT bumping is still upsetting us.
> 
> I don't think I have any choice but to rip it out if we have timeslicing
> enabled.
> 
> Would you prefer a complete remission of I915_PRIORITY_WAIT or keep it
> under if (!intel_engine_has_timeslicing(rq->engine)) ?

Doesn't feel worthwhile to keep it for just BDW right?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
