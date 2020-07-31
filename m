Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A01F223489A
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 17:46:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 025B06EAD9;
	Fri, 31 Jul 2020 15:45:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C96F96EB09
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 15:45:56 +0000 (UTC)
IronPort-SDR: cnT5p8k9l4axwYR5O52fWs0WWcfBuwVfDG65NCKWqwOQy6LAOTgQaQZpIq+e4bb+5IECdbpiGD
 iQL/qUTNI2/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="149266493"
X-IronPort-AV: E=Sophos;i="5.75,418,1589266800"; d="scan'208";a="149266493"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 08:45:56 -0700
IronPort-SDR: WdDm2eMgp7z9qJwGmB1rYomTja3x9mVeHpzXH2IrJV0DAQ4ZQfkMdt6jMwUFB0r+WgRV33weeu
 gNcjtmi+C8cw==
X-IronPort-AV: E=Sophos;i="5.75,418,1589266800"; d="scan'208";a="465651878"
Received: from henyaffe-mobl2.ger.corp.intel.com (HELO [10.214.222.92])
 ([10.214.222.92])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 08:45:54 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200730093756.16737-1-chris@chris-wilson.co.uk>
 <20200730093756.16737-18-chris@chris-wilson.co.uk>
 <6c74e04f-cfc7-215c-50f0-2b5be8a0b6c6@linux.intel.com>
 <159620904517.21624.5715729661074588496@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <27c5b63e-e39e-df16-87b4-8b10fc6a8b7c@linux.intel.com>
Date: Fri, 31 Jul 2020 16:45:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <159620904517.21624.5715729661074588496@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 17/21] drm/i915/gt: Protect context lifetime
 with RCU
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
Cc: thomas.hellstrom@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 31/07/2020 16:24, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-07-31 16:15:43)
>>
>> On 30/07/2020 10:37, Chris Wilson wrote:
>>> Allow a brief period for continued access to a dead intel_context by
>>> deferring the release of the struct until after an RCU grace period.
>>> As we are using a dedicated slab cache for the contexts, we can defer
>>> the release of the slab pages via RCU, with the caveat that individual
>>> structs may be reused from the freelist within an RCU grace period. To
>>> handle that, we have to avoid clearing members of the zombie struct.
>>
>> What was the motivation?
> 
> I wanted a window where the pointer was kept alive by RCU after we
> called intel_context_put() so I could keep using spinlock for a bit.
> 
> If you look closely, you might spot that isn't used any more, but I
> liked the ctor so kept it around.

In this case I think it is better to avoid changes which can introduce 
potential bugs. (And added bonus time saved on review. :)

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
