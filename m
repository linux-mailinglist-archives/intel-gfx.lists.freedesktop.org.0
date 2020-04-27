Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 127AA1BA130
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 12:30:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C89A6E1F5;
	Mon, 27 Apr 2020 10:30:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19DA36E1F5
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 10:30:37 +0000 (UTC)
IronPort-SDR: hrVIg6F+rVoipyKUVoJWOI2hvF3HMRSdwNnahNv9KmvUEGQXST7n88HMFOgrC91Z+9ntbouAZ6
 PCwGzUH9d8ig==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2020 03:30:36 -0700
IronPort-SDR: FIrwFv9miXzTxTwlkMIeOQPd70l1unRzG8Aaqj6OqaeNy/pY/j6pWoOUbP6G+MyK/tOSZHqrCs
 7noaoQ962dMg==
X-IronPort-AV: E=Sophos;i="5.73,323,1583222400"; d="scan'208";a="431723421"
Received: from apopescu-mobl1.ger.corp.intel.com (HELO [10.252.53.226])
 ([10.252.53.226])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2020 03:30:35 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200427084000.10999-1-chris@chris-wilson.co.uk>
 <d1567d95-565f-8520-0e85-d407293c5e9d@linux.intel.com>
 <158798132385.17035.12965294495083617435@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <bc317822-9c9f-4cec-e63e-f6323b952f13@linux.intel.com>
Date: Mon, 27 Apr 2020 11:30:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <158798132385.17035.12965294495083617435@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Sanitize GT first
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


On 27/04/2020 10:55, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-04-27 10:50:01)
>>
>> On 27/04/2020 09:40, Chris Wilson wrote:
>>> We see that if the HW doesn't actually sleep, the HW may eat the poison
>>> we set in its write-only HWSP during sanitize:
>>>
>>>     intel_gt_resume.part.8: 0000:00:02.0
>>>     __gt_unpark: 0000:00:02.0
>>>     gt_sanitize: 0000:00:02.0 force:yes
>>>     process_csb: 0000:00:02.0 vcs0: cs-irq head=5, tail=90
>>>     process_csb: 0000:00:02.0 vcs0: csb[0]: status=0x5a5a5a5a:0x5a5a5a5a
>>>     assert_pending_valid: Nothing pending for promotion!
>>>
>>> The CS TAIL pointer should have been reset by reset_csb_pointers(), so
>>> in this case it is likely that we have read back from the CPU cache and
>>> so we must clflush our control over that page. In doing so, push the
>>> sanitisation to the start of the GT sequence so that our poisoning is
>>> assuredly before we start talking to the HW.
>>>
>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> ---
>>>    drivers/gpu/drm/i915/gt/intel_gt_pm.c | 3 ++-
>>>    drivers/gpu/drm/i915/gt/intel_lrc.c   | 3 +++
>>>    2 files changed, 5 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>> index 4c4c74ef4f21..5097786f4375 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>>> @@ -198,11 +198,12 @@ int intel_gt_resume(struct intel_gt *gt)
>>>         * Only the kernel contexts should remain pinned over suspend,
>>>         * allowing us to fixup the user contexts on their first pin.
>>>         */
>>> +     gt_sanitize(gt, true);
>>> +
>>>        intel_gt_pm_get(gt);
>>
>> gt_sanitize declares hw access so I thin it should still be after this
>> pm get.
> 
> We control the rpm/uncore access inside gt_sanitize. And the reset we do
> there avoid interfering with the gt_pm, so I think this is safe. Note
> that the gt_sanitize() we do later is after we release gt_pm. So it
> seems reasonable to say that we do it before/after gt_pm.

On the suspend path? Okay.. I guess that proves it works.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
