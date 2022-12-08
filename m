Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A93647365
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 16:44:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5E1510E4B8;
	Thu,  8 Dec 2022 15:44:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82B0510E4B8
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 15:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670514256; x=1702050256;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=/6yaUHCemGLQtEe3a57z1kTXstgTMZu1pZpZSy28xKQ=;
 b=QYyhChL0k7j9AUH+IlTBqbfnqNI42aKh3NZypmhGkkzbMBQP4nhQLJzy
 V0LfW3BPIIwN7qXJyORmZBM2vvVEB6GlUuc6MANrL8snJ9EsT11dKgR0S
 MN+b6bVMzDuZoTkORECQb62EVwTs3cPxEFptugdVrj54L4nq7GlaNjmBF
 4G9jY3oF+CWy/G+HZ2dYdI67mUprOC0oYrzxsB/2kZhXTmKosoGRwxYRs
 5SfqVMtBJksfhKazsCJxuXERETDLkntJ8/44Qah2rR4KgxVTYfaVk/s+F
 nMrf1TtpN2PTrqv0xAJpy+c19hQMoAYENBJtiGrkXt1qGnT6VlDrEnmKY g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="296891143"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="296891143"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 07:44:16 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="753615963"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="753615963"
Received: from jharford-mobl.ger.corp.intel.com (HELO [10.213.232.246])
 ([10.213.232.246])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 07:44:14 -0800
Message-ID: <4295836a-2702-c534-c861-f6b5055017f2@linux.intel.com>
Date: Thu, 8 Dec 2022 15:44:12 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "Hajda, Andrzej" <andrzej.hajda@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20221208111217.3734461-1-andrzej.hajda@intel.com>
 <877cz213fa.fsf@intel.com>
 <a53c2ec0607493d46fe0fc9f1884cd5d32103058.camel@intel.com>
 <87tu26ym4x.fsf@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87tu26ym4x.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: use fetch_and_zero if
 applicable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 08/12/2022 15:02, Jani Nikula wrote:
> On Thu, 08 Dec 2022, "Vivi, Rodrigo" <rodrigo.vivi@intel.com> wrote:
>> On Thu, 2022-12-08 at 14:32 +0200, Jani Nikula wrote:
>>> On Thu, 08 Dec 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
>>>> Simplify the code.
>>>
>>> Personally, I absolutely hate fetch_and_zero().
>>>
>>> I understand the point, but there are two main traps:
>>>
>>> First, the name implies atomicity, which there is none at all.
>>>
>>> Second, the name implies it's part of a kernel core header, which it
>>> isn't, and this just amplifies the first point.
>>>
>>> It's surprising and misleading, and those are not things I like about
>>> interfaces in the kernel.
>>>
>>> I would not like to see this proliferate. If fetch_and_zero() was
>>> atomic
>>> *and* part of a core kernel header, it would be a different matter.
>>> But
>>> I don't think that's going to happen, exactly because it won't be
>>> atomic
>>> and the name implies it is.
>>
>> +1 here.
>>
>> Please let's go the other way around and try to kill macros like this.
>>
>> we either kill or we ensure this gets accepted in the core kernel
>> libraries.
> 
> Agreed. I'd be fine with either:
> 
> 1) Get something like this accepted in core kernel headers:
> 
> #define fetch_and_zero(ptr) xchg(ptr, 0)
> 
> 2) Do this in i915:
> 
> @@
> expression E;
> @@
> 
> - fetch_and_zero(E)
> + xchg(E, 0)

We don't need atomic so both solution would IMO be bad.

We could propose __fetch_and_zero and fetch_and_zero, to mimic 
__set_bit/set_bit&co for some consistency in terms of atomic vs 
non-atomic API flavour?

Assuming of course people will think that the long-ish name of the 
utility macro brings an overall positive cost benefit.

Worth a try I guess.

First step I think we need a cocci script for finding the open coded 
"fetch and zero" pattern. Not my forte but I can try if no one else has 
an immediate solution or desire to drive the attempt.

Regards,

Tvrtko
