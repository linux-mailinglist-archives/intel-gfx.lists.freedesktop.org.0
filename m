Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06180223BEA
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 15:07:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0119B6E459;
	Fri, 17 Jul 2020 13:07:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AB2A6E459
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 13:07:03 +0000 (UTC)
IronPort-SDR: 0O+eG7NvHF2qJTbW1AnFPnHP7mGsmWWMW2xXawwunnO2/sgM2DHiSS2HQr+s0bQU5URtQ8DuTc
 8M/bxr8CD+Pg==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="147566736"
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="147566736"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 06:07:02 -0700
IronPort-SDR: v3OJV/ebEZo7r/6jbLq3dRPjKQSmwjiEx488KCyc/2nQa+6xn0bkwQnYNfYztxEr1bED8GLCOE
 WVZU81bNTSaA==
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="460842098"
Received: from gpanagop-mobl.ger.corp.intel.com (HELO [10.249.33.238])
 ([10.249.33.238])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 06:07:01 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-6-chris@chris-wilson.co.uk>
 <173d852e-045a-86aa-a030-4bf564bcd6b3@linux.intel.com>
 <159498993456.13677.10695414817035509543@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e7bec369-d56f-9b35-5f9c-f7e2f45d2552@linux.intel.com>
Date: Fri, 17 Jul 2020 14:06:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <159498993456.13677.10695414817035509543@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 06/66] drm/i915: Export a preallocate
 variant of i915_active_acquire()
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


On 17/07/2020 13:45, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-07-17 13:21:54)
>>
>> On 15/07/2020 12:50, Chris Wilson wrote:
>>> Sometimes we have to be very careful not to allocate underneath a mutex
>>> (or spinlock) and yet still want to track activity. Enter
>>> i915_active_acquire_for_context(). This raises the activity counter on
>>> i915_active prior to use and ensures that the fence-tree contains a slot
>>> for the context.
>>
>> Changelog?
> 
> "Time spent with perf trying to reduce holdtime of certain mutexes we
> will introduce, in particular focusing on reducing the number of atomics
> required for typical i915_active lookups"

Why not, then I would had at least known nothing from my previous round 
feedback so easier review.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
