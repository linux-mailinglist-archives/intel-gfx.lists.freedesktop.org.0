Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A125B22204F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 12:11:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98F806E11B;
	Thu, 16 Jul 2020 10:11:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8E366E11B
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 10:11:36 +0000 (UTC)
IronPort-SDR: nNLHEg6PyJWolPpu/EGFdCIQniboThnIy62yRSWqmuBKNjbqBl6gSQhFyLpqJyqrkK5GDHl8bb
 bUChexZz2TrA==
X-IronPort-AV: E=McAfee;i="6000,8403,9683"; a="150733781"
X-IronPort-AV: E=Sophos;i="5.75,358,1589266800"; d="scan'208";a="150733781"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 03:11:35 -0700
IronPort-SDR: hAHBZ95Hc8+IhWcIorOk8NrI+pf+pByxUi2Bm3CMAjFVhV5NUvZTfKTT4z+5g+tlWMubNGM1RU
 XKuYL+EbFqaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,358,1589266800"; d="scan'208";a="269214510"
Received: from tnimni-mobl.ger.corp.intel.com (HELO [10.254.157.71])
 ([10.254.157.71])
 by fmsmga007.fm.intel.com with ESMTP; 16 Jul 2020 03:11:33 -0700
To: Dave Airlie <airlied@gmail.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
 <20200710115757.290984-34-matthew.auld@intel.com>
 <CAPM=9tzvetxhBJBOC60ydOVcTN9ujtHLCODFNwGtONTDzuzwZA@mail.gmail.com>
 <c6cd965d-9a03-10fd-517e-a44934a2b0c9@intel.com>
 <CAPM=9txaksu8brsPTHsLkQudpNLd6O1MOzG8APGTrMaoXMioqw@mail.gmail.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <d7e7b910-81d0-d7b2-b426-51b0714836eb@intel.com>
Date: Thu, 16 Jul 2020 11:11:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CAPM=9txaksu8brsPTHsLkQudpNLd6O1MOzG8APGTrMaoXMioqw@mail.gmail.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [RFC 33/60] drm/i915/lmem: support pwrite
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 16/07/2020 01:43, Dave Airlie wrote:
> On Wed, 15 Jul 2020 at 00:35, Matthew Auld <matthew.auld@intel.com> wrote:
>>
>> On 13/07/2020 06:09, Dave Airlie wrote:
>>> On Fri, 10 Jul 2020 at 22:00, Matthew Auld <matthew.auld@intel.com> wrote:
>>>>
>>>> We need to add support for pwrite'ing an LMEM object.
>>>
>>> why? DG1 is a discrete GPU, these interfaces we already gross and
>>> overly hacky for integrated, I'd prefer not to drag them across into
>>> discrete land.
>>>
>>> same goes for pread.
>>>
>>> You have no legacy userspace here, userspace needs change to support
>>> LMEM, it can be fixed to avoid legacy ioctls paths.
>>
>> Ok, there have also been similar discussions internally in the past. I
>> think one of the reasons was around IGT, and how keeping the
>> pread/pwrite interface meant slightly less pain, also it's not much
>> effort to implement for LMEM. If this is a NACK, then I guess the other
>> idea was to somehow fallback to mmap and update IGT accordingly.
> 
> I just don't think we should have internal kernel interfaces for
> mapping ram in the kernel address space, seems pointless, makes less
> sense with a discrete GPU in the mix, so yes I think NAK for
> pread/pwrite at least at this time.

Ok.

> 
> I'd also like to see a hard no relocs policy for DG1 enforced in the kernel.

Ok, just checking, is that the case even if we don't require extra code 
to support it? We recently dropped the CPU reloc path completely, in 
favour of single GPU reloc path, and so no special code is required to 
support LMEM, it should just work. IGT of course makes heavy use of 
relocs, so that would need an overhaul.

> 
> Dave.
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
