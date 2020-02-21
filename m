Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9AB1674C6
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 09:28:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C31566EEB6;
	Fri, 21 Feb 2020 08:28:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD4886EEB5;
 Fri, 21 Feb 2020 08:28:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 00:28:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,467,1574150400"; d="scan'208";a="229777811"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga008.jf.intel.com with ESMTP; 21 Feb 2020 00:28:20 -0800
Received: from [10.237.72.173] (mperes-desk.fi.intel.com [10.237.72.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 20B8C58056A;
 Fri, 21 Feb 2020 00:28:18 -0800 (PST)
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200220174155.2162242-1-chris@chris-wilson.co.uk>
 <023b88f4-7b98-a376-aee1-db09cec21a98@linux.intel.com>
 <158227331733.3099.1298656919493160116@skylake-alporthouse-com>
From: Martin Peres <martin.peres@linux.intel.com>
Message-ID: <37e6fded-72f3-6480-6ed8-6591c2d2733b@linux.intel.com>
Date: Fri, 21 Feb 2020 10:28:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <158227331733.3099.1298656919493160116@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/i915_pm_rpm: Only check for
 suspend failures after each debugfs entry
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-02-21 10:21, Chris Wilson wrote:
> Quoting Martin Peres (2020-02-21 07:33:59)
>> On 2020-02-20 19:41, Chris Wilson wrote:
>>> Since we check before and then after each debugfs entry, we do not need
>>> to check before each time as well. We will error out as soon as it does
>>> fail, at all other times we know the system to be idle.
>>>
>>> No impact on runtime for glk (which apparently is one of the better
>>> behaving systems).
>>>
>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> Cc: Martin Peres <martin.peres@linux.intel.com>
>>
>> I don't like this patch because the first read might not have the gpu
>> suspended, and there shouldn't be much overhead in checking twice rather
>> than once.
>>
>> What's your rationale here?
> 
> We always do a check before after each file. We start in a known state,
> and expect to be able to return to that suspended state, and the _real_
> guts of the test is that any device access is accounted for.
> 
> assert(suspended) would be a better check for non-interference.

I would feel better with assert(suspended) added, but would it really
speed anything up since I assume wait_for_suspended() should be
instantaneous if we are already suspended, right?

>  
>> To me, the issue is that some platforms suspend in milliseconds while
>> some take seconds, and that might be indicative a real bug in the driver.
> 
> Exactly.

Good to hear :)

> -Chris
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
