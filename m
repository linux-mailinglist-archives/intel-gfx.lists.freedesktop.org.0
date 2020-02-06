Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56ABC1548AA
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 16:57:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC5F26FA96;
	Thu,  6 Feb 2020 15:57:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 358EB6FA96
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 15:57:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 07:57:13 -0800
X-IronPort-AV: E=Sophos;i="5.70,410,1574150400"; d="scan'208";a="225052956"
Received: from aabader-mobl1.ccr.corp.intel.com (HELO [10.252.21.249])
 ([10.252.21.249])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 06 Feb 2020 07:57:12 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200206152325.2521787-1-chris@chris-wilson.co.uk>
 <158100296311.7306.6375353895241979260@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <2721ffcc-da8d-6d76-eec7-1c5911176a2a@linux.intel.com>
Date: Thu, 6 Feb 2020 15:57:10 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <158100296311.7306.6375353895241979260@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Prevent queuing retire workers
 on the virtual engine
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


On 06/02/2020 15:29, Chris Wilson wrote:
> Quoting Chris Wilson (2020-02-06 15:23:25)
>> Virtual engines are fleeting. They carry a reference count and may be freed
>> when their last request is retired. This makes them unsuitable for the
>> task of housing engine->retire.work so assert that it is not used.
>>
>> Tvrtko tracked down an instance where we did indeed violate this rule.
>> In virtal_submit_request, we flush a completed request directly with
>> __i915_request_submit and this causes us to queue that request on the
>> veng's breadcrumb list and signal it. Leading us down a path where we
>> should not attach the retire.
>>
>> Reported-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Fixes: dc93c9b69315 ("drm/i915/gt: Schedule request retirement when signaler idles")
>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Alternatively we could fixup the rq->engine before
> __i915_request_submit. That would stop the spread of
> intel_virtual_engine_get_sibling().
> 
> This is likely to be the cleaner fix, so I think I would prefer this and
> then remove the get_sibling().

Yes it makes more sense for rq->engine to be always physical at the 
point of __i915_request_submit.

Regards,

Tvrtko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
