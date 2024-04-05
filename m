Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D8389A251
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 18:20:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13E0210E67F;
	Fri,  5 Apr 2024 16:20:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C/HZKJyO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B54A4113CB0;
 Fri,  5 Apr 2024 16:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712334022; x=1743870022;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=STODT/c3z6ypoEyUkP1OAtZ6EfyLMQK08sm/bPAw1AU=;
 b=C/HZKJyOXQsAnQLLdmXcHCDA1Oj9zUYbkZJI3PKPtdR14MbisCDrDaB2
 r5e0RsjB6CgPAD5n2FAuURvNDJscUSlVjKokVsRNBfzkvdkx/VLPo9jfr
 wcHaxJyEPoE4BNO5SbRekOeDN5GSNg05N0VwD/Ng42ZTgkYG35vq4jCPu
 welg7W7cuKNTu+rsVkPVQ5ccEpLGhuJtyfJuzysb5SzSEBfAMujObO0Q3
 y/sW3at4rgzjODiCno7yi00nesMOHXwWrH9DI22WB5RTSxtst9rA0vBuT
 OhlrFWlej/VLezTiY2N7B719jUixuNzr9T9FCWGZH1ExFDb2FLOrYaz0t w==;
X-CSE-ConnectionGUID: 8sPQek0vSRG1zxAToXDGgw==
X-CSE-MsgGUID: nVOVq2RfTx+PHCXY3dwHDw==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="11462796"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="11462796"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 09:20:21 -0700
X-CSE-ConnectionGUID: EGOUsw1jS4iffZcF7In7vA==
X-CSE-MsgGUID: OzVkpaElRkSa/fAWFgBa3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="19141333"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.245.80.70])
 ([10.245.80.70])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 09:20:15 -0700
Message-ID: <340d23fc-7abf-4ad0-bd95-f1760b9ac458@intel.com>
Date: Fri, 5 Apr 2024 18:20:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Intel-gfx] [PATCH v5 0/7] Introduce __xchg, non-atomic xchg
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-s390@vger.kernel.org,
 linux-hexagon@vger.kernel.org, linux-snps-arc@lists.infradead.org,
 intel-gfx@lists.freedesktop.org, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, Boqun Feng <boqun.feng@gmail.com>,
 linux-m68k@lists.linux-m68k.org, openrisc@lists.librecores.org,
 loongarch@lists.linux.dev, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-alpha@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
References: <20230118153529.57695-1-andrzej.hajda@intel.com>
 <Y/ZLH5F8LA3H10aL@hirez.programming.kicks-ass.net>
 <17f40b7c-f98d-789d-fa19-12ec077b756a@intel.com>
 <Y/y0/VoPAVCXGKp3@hirez.programming.kicks-ass.net> <87r0fjc1cz.fsf@intel.com>
Content-Language: en-US
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <87r0fjc1cz.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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



On 05.04.2024 16:47, Jani Nikula wrote:
> On Mon, 27 Feb 2023, Peter Zijlstra <peterz@infradead.org> wrote:
>> On Thu, Feb 23, 2023 at 10:24:19PM +0100, Andrzej Hajda wrote:
>>> On 22.02.2023 18:04, Peter Zijlstra wrote:
>>>> On Wed, Jan 18, 2023 at 04:35:22PM +0100, Andrzej Hajda wrote:
>>>>
>>>>> Andrzej Hajda (7):
>>>>>     arch: rename all internal names __xchg to __arch_xchg
>>>>>     linux/include: add non-atomic version of xchg
>>>>>     arch/*/uprobes: simplify arch_uretprobe_hijack_return_addr
>>>>>     llist: simplify __llist_del_all
>>>>>     io_uring: use __xchg if possible
>>>>>     qed: use __xchg if possible
>>>>>     drm/i915/gt: use __xchg instead of internal helper
>>>> Nothing crazy in here I suppose, I somewhat wonder why you went through
>>>> the trouble, but meh.
>>> If you are asking why I have proposed this patchset, then the answer is
>>> simple, 1st I've tried to find a way to move internal i915 helper to core
>>> (see patch 7).
>>> Then I was looking for possible other users of this helper. And apparently
>>> there are many of them, patches 3-7 shows some.
>>>
>>>
>>>> You want me to take this through te locking tree (for the next cycle,
>>>> not this one) where I normally take atomic things or does someone else
>>>> want this?
>>> If you could take it I will be happy.
>> OK, I'll go queue it in tip/locking/core after -rc1. Thanks!
> Is this where the series fell between the cracks, or was there some
> follow-up that I missed?
>
> I think this would still be useful. Andrzej, would you mind rebasing and
> resending if there are no objections?

The patchset was rejected/dropped by Linus at the pull-request stage.
He didn't like many things, but the most __xchg name. However he was 
quite positive about i915 name fetch_and_zero.
I can try to revive patchset with fetch_and_zero, and maybe 
fetch_and_set, instead of __xchg.

Regards
Andrzej

>
> BR,
> Jani.
>
>

