Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB32918CD63
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 13:01:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C412899C4;
	Fri, 20 Mar 2020 12:01:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3307F899C4
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 12:01:18 +0000 (UTC)
IronPort-SDR: KUzRLw9m4wYdvdJUk29Rf+mqSd/3g8+CjLDs2zPgg0APXcUZD/ToVSIcx+czZABj+4wyjp785H
 B+DiYFDALS7w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 05:01:17 -0700
IronPort-SDR: u6UGfq1yO0rvbG5LhFAp8op02XXouIfKukFgyTQqrx1SZ3IxrMFCp6pONLaZ573JmIHyu0H0wy
 u7v+vXIXwq7Q==
X-IronPort-AV: E=Sophos;i="5.72,284,1580803200"; d="scan'208";a="418692889"
Received: from ebrown1-mobl1.ger.corp.intel.com (HELO [10.252.54.178])
 ([10.252.54.178])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 05:01:16 -0700
To: Andi Shyti <andi@etezian.org>, Chris Wilson <chris@chris-wilson.co.uk>
References: <20200320034901.102550-1-andi@etezian.org>
 <158470270622.7928.7469444156799101687@build.alporthouse.com>
 <20200320114514.GG27848@jack.zhora.eu>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b9e4e08d-262d-8e74-b356-ae3b4d539669@linux.intel.com>
Date: Fri, 20 Mar 2020 12:01:14 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200320114514.GG27848@jack.zhora.eu>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: move files more files into
 debugfs
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 20/03/2020 11:45, Andi Shyti wrote:
> Hi Chris,
> 
> On Fri, Mar 20, 2020 at 11:11:46AM +0000, Chris Wilson wrote:
>> Quoting Andi Shyti (2020-03-20 03:49:01)
>>> From: Andi Shyti <andi.shyti@intel.com>
>>>
>>> The following interfaces:
>>>
>>> i915_wedged
>>> i915_forcewake_user
>>> i915_gem_interrupt
>>> i915_sseu_status
>>>
>>> are dependent on gt values. Put them inside gt/ and drop the
>>> "i915_" prefix name. This would be the new structure:
>>>
>>>    gt
>>>    |
>>>    +-- forcewake_user
>>>    |
>>>    +-- interrupt_info_show
>>
>> Please tell me you didn't actually include _show :)
> 
> You know me, everything can happen!
> I did overlook indeed, but I had to check if I actually did
> include _show. Thanks for spotting it.
> 
>>>    |
>>>    +-- sseu_status
>>>    |
>>>    +-- wedge
>>
>> The world will rejoice when it's stopped being called wedged.
>> Well Mika will at any rate.
> 
> well, I did keep the original name.
> 
>> 'echo rcs0 > reset' maybe? Yeah. Wait, but rcs0 is uabi name, so top
>> level.
>>
>> Oh well, I definitely do not think copying a mistake is a good idea.
> 
> OK, I'll call it reset

Wedge is wedge and reset is reset, or is it not?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
