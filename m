Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6DCD6A11E9
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 22:24:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A90B510E2E9;
	Thu, 23 Feb 2023 21:24:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B792F10E2DA;
 Thu, 23 Feb 2023 21:24:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677187475; x=1708723475;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=mVoVfL5vlPHnSouV6VBABWbzjtaVYznfmLZ6wrrIyJs=;
 b=l8d6w8xbr22lUMksAx2idf4qsf7Hk3hlK0TGcUS8zg5lYEC1wZmhvLDl
 g7ElUw9/EVEDexNRGfOfkO9oG/bwu874tjMrx67DtxbDZ3MNleoSFGpmJ
 z+fUL5jmf9NRk3SC2qBmi60UCI4gZrngASEVgtM0RkonIUzQhEhMbOI/r
 fckTVAVyv2XLJYsoA1y36YTMPrGwgk4oiaRkaC0jEn/DXw79X54Ay6tfu
 97uXcoE4ABIoQ66EoBqmWtKg2sKeeor4pDKewVS6V7G18b4kRes2J96yD
 0/4DPoOYhDgW7lj2L9L358pf7VjU/SeBGUeMOK15vy8lbcf9hVfOxkljp Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="332006824"
X-IronPort-AV: E=Sophos;i="5.97,322,1669104000"; d="scan'208";a="332006824"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 13:24:28 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="665941632"
X-IronPort-AV: E=Sophos;i="5.97,322,1669104000"; d="scan'208";a="665941632"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.25.22])
 ([10.213.25.22])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 13:24:21 -0800
Message-ID: <17f40b7c-f98d-789d-fa19-12ec077b756a@intel.com>
Date: Thu, 23 Feb 2023 22:24:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.8.0
To: Peter Zijlstra <peterz@infradead.org>
References: <20230118153529.57695-1-andrzej.hajda@intel.com>
 <Y/ZLH5F8LA3H10aL@hirez.programming.kicks-ass.net>
Content-Language: en-US
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <Y/ZLH5F8LA3H10aL@hirez.programming.kicks-ass.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v5 0/7] Introduce __xchg, non-atomic xchg
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 22.02.2023 18:04, Peter Zijlstra wrote:
> On Wed, Jan 18, 2023 at 04:35:22PM +0100, Andrzej Hajda wrote:
> 
>> Andrzej Hajda (7):
>>    arch: rename all internal names __xchg to __arch_xchg
>>    linux/include: add non-atomic version of xchg
>>    arch/*/uprobes: simplify arch_uretprobe_hijack_return_addr
>>    llist: simplify __llist_del_all
>>    io_uring: use __xchg if possible
>>    qed: use __xchg if possible
>>    drm/i915/gt: use __xchg instead of internal helper
> 
> Nothing crazy in here I suppose, I somewhat wonder why you went through
> the trouble, but meh.

If you are asking why I have proposed this patchset, then the answer is 
simple, 1st I've tried to find a way to move internal i915 helper to 
core (see patch 7).
Then I was looking for possible other users of this helper. And 
apparently there are many of them, patches 3-7 shows some.


> 
> You want me to take this through te locking tree (for the next cycle,
> not this one) where I normally take atomic things or does someone else
> want this?

If you could take it I will be happy.

Regards
Andrzej

