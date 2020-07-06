Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D0E2159C8
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 16:43:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 611B089BAF;
	Mon,  6 Jul 2020 14:43:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 380FB895D7
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 14:43:04 +0000 (UTC)
IronPort-SDR: zjlI6rN+fsiqgVTfQjAnG/t7HrZh4y37ypTaANXVge0w0v9x11KqTnpXNikQdtjiC2RVQhIH8n
 icWdWg2yLMWA==
X-IronPort-AV: E=McAfee;i="6000,8403,9673"; a="127016491"
X-IronPort-AV: E=Sophos;i="5.75,320,1589266800"; d="scan'208";a="127016491"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2020 07:43:03 -0700
IronPort-SDR: zThcnTC7WDN9WoB0hH7RnCGP8WOGs9hLVUa5jq5NrQzazrgK2mW9gLLbz6KpQueMbw1avvMKWB
 GgaAzrFW9nhw==
X-IronPort-AV: E=Sophos;i="5.75,320,1589266800"; d="scan'208";a="456749905"
Received: from rrodrig1-mobl.ger.corp.intel.com (HELO [10.249.45.109])
 ([10.249.45.109])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2020 07:43:02 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200702083225.20044-1-chris@chris-wilson.co.uk>
 <20200702083225.20044-11-chris@chris-wilson.co.uk>
 <a49d63ff-a713-215a-303a-89a92cb9503f@linux.intel.com>
 <159376823303.22925.15261498397238764100@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <69fcba25-ecbe-fce1-0cf9-0dcbaf735bea@linux.intel.com>
Date: Mon, 6 Jul 2020 15:43:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <159376823303.22925.15261498397238764100@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 11/23] drm/i915/gem: Remove the call for
 no-evict i915_vma_pin
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


On 03/07/2020 10:23, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-07-03 09:59:01)
>>
>> On 02/07/2020 09:32, Chris Wilson wrote:
>>> Remove the stub i915_vma_pin() used for incrementally pining objects for
>>> execbuf (under the severe restriction that they must not wait on a
>>> resource as we may have already pinned it) and replace it with a
>>> i915_vma_pin_inplace() that is only allowed to reclaim the currently
>>> bound location for the vma (and will never wait for a pinned resource).
>>
>> Hm I thought the point of the previous patch ("drm/i915/gem: Break apart
>> the early i915_vma_pin from execbuf object lookup") was to move the
>> pinning into a phase under the ww lock, where it will be allowed. I
>> misunderstood something?
> 
> Still different locks, and the vm->mutex is still being used for managing
> the iova assignments.

Right, think I get it. For the record I've asked for a cover letter with 
a high level design description. Emphasis on flow of stages through 
execbuf by the end of the series and separation of lookup and 
reservation, and/or vm->mutex (ppgtt space) and obj->wwlock (backing store).

Regards,

Tvrtko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
