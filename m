Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3330118BAB1
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 16:12:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2AB36E165;
	Thu, 19 Mar 2020 15:11:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3223E6EA2C
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 15:11:55 +0000 (UTC)
IronPort-SDR: 9fMQ7l0aP0Y9dp+90EoyuLsWhxjLs4rgFlP8puQUl9dXLNcB8bL0SxeJhTrcI77HeTjONJS5Pu
 0gFQy+SAgk1g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 08:11:54 -0700
IronPort-SDR: UIc8u6ZJibBeCp9BAkumoWidogx52ywfT2Pu3FxLSz3Ly83sEbU8IwWK/YVUFZJIvuZBUasIiC
 PzJGI58Gqi7Q==
X-IronPort-AV: E=Sophos;i="5.70,572,1574150400"; d="scan'208";a="245188018"
Received: from amgotede-mobl.ger.corp.intel.com (HELO [10.254.158.140])
 ([10.254.158.140])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 08:11:53 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200319091943.7815-1-chris@chris-wilson.co.uk>
 <20200319091943.7815-3-chris@chris-wilson.co.uk>
 <c80cf573-f328-39ac-993d-8a7259ca4152@linux.intel.com>
 <158463015067.6873.9446816716629068800@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <170af49b-d3d7-e717-c0b4-1ce7fd04630a@linux.intel.com>
Date: Thu, 19 Mar 2020 15:11:49 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <158463015067.6873.9446816716629068800@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/execlists: Force single
 submission for sentinels
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


On 19/03/2020 15:02, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-03-19 14:31:36)
>>
>> On 19/03/2020 09:19, Chris Wilson wrote:
>>> +                             if (has_sentinel(last, rq))
>>>                                        goto done;
>>
>> I am only confused by can_merge_rq saying two sentinel requests can be
>> merged together:
>>
>>          if (unlikely((i915_request_flags(prev) ^ i915_request_flags(next)) &
>>                       (BIT(I915_FENCE_FLAG_NOPREEMPT) |
>>                        BIT(I915_FENCE_FLAG_SENTINEL))))
>>                  return false;
>>
>> What am I missing?
> 
> I thought it was fine to coalesce consecutive sentinels within the
> context into one.
> 
> Except you're thinking about gvt, and not my usage :|

Sentinel is like "only one context in elsp at a time", right? This is 
what GVT wants. And for the active barrier we want single elsp and not 
coalesced with non-sentinel from the same context. But sentinels are 
kernel context, so should be fine. Although it still may be clearer to 
make then not coalesce as well.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
