Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E02542FE83C
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 12:00:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 517ED6E509;
	Thu, 21 Jan 2021 11:00:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0423C6E509
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 11:00:31 +0000 (UTC)
IronPort-SDR: Str+Q9pitVkySSMF2Rax2qPn68UTIF+/SqSitXCxpXxdzBPlzNgZFEhix9JuQObwoMF56ENdD4
 In1/Z8fqWMgQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="166349874"
X-IronPort-AV: E=Sophos;i="5.79,363,1602572400"; d="scan'208";a="166349874"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 03:00:29 -0800
IronPort-SDR: 8gAX8q3gOeb7qUjb0Rax/Fza82GFwlpYfWuQaO5rHeC/1dnzFONQsvdHzr1uqaSLsWapgJJWza
 WJdqCi3bA9BQ==
X-IronPort-AV: E=Sophos;i="5.79,363,1602572400"; d="scan'208";a="356422599"
Received: from pscheper-mobl1.ger.corp.intel.com (HELO [10.252.50.106])
 ([10.252.50.106])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 03:00:27 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.william.auld@gmail.com>
References: <20210120154019.5146-1-chris@chris-wilson.co.uk>
 <CAM0jSHPUoT2eKs0MgUoJ9UBB96hgtZGmQuZSDrE8vGkRSOXpoQ@mail.gmail.com>
 <161116596844.3420.4138630766326614766@build.alporthouse.com>
 <161117638753.7444.16304169600967757321@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5c5f16c9-9885-3eba-ee1b-21e491094acc@linux.intel.com>
Date: Thu, 21 Jan 2021 11:00:25 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <161117638753.7444.16304169600967757321@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Allow importing of shmemfs
 objects into any device
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 20/01/2021 20:59, Chris Wilson wrote:
> Quoting Chris Wilson (2021-01-20 18:06:08)
>> Quoting Matthew Auld (2021-01-20 17:46:10)
>>> On Wed, 20 Jan 2021 at 15:40, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>>>>
>>>> If we import a shmemfs object between devices, for example from
>>>> Tigerlake to DG1, we can simply reuse the native object and its backing
>>>> store.
>>>
>>> Hmmm interesting, so does that include re-using the actual sg mapping
>>> for the backing pages? Does that work out-of-the-box between different
>>> devices assuming we have iommu enabled?
>>
>> Indeed interesting; the dma_addr_t are supposed to be local to a device.
> 
> On reflection, we are expected to use cross-device dma_addr_t with
> dma-buf. It's the exporter who assigns the dma_addr_t for the importer
> to use, and they are always given from the original device.
> 
> Maybe not so bad. Definitely needs testing to see what happens in
> practice.

What about object migration? I did not spot anything preventing it once 
object was exported like this so owning device could move it to device 
memory afterwards which would probably be bad.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
