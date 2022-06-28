Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CD855C347
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jun 2022 14:48:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58DCC112614;
	Tue, 28 Jun 2022 12:48:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 396BB112614;
 Tue, 28 Jun 2022 12:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656420485; x=1687956485;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=uxx31Co57BtvTjJGwuo6hFPWizfxqGANJWEjbe5W9YI=;
 b=SQk6y3rQ2eoqcTMOavlkmFHlBuDU3K9MHXVi8LhfOpNUBGw09oyp6UMQ
 rzfUv2TapaajTo/zea8eTS4V6/YybA2lxfbE3LgAbk87szxBe1pDEG/0T
 WlXA2EH6JcX7cAkjzML6QmJ7e7tBo40+/jJK1pVtaM0K8CYHZ2qLHpw7C
 00zhZtDFBrH6BKSjcHhqioH/A7ruT91LY2pohGYZRVngF0A05EJla9PDj
 pcJHx3Lc3t3lARjHXOQ6qSrGCEjZk5KO/IOMlrILdnGmoZhkZGMsvmN2w
 bYWwoddm5tPmy7rMBjEVzdZZXG/FT4dZtBYeIx0HRLt8tED1D2Vjxehc4 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="264770772"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="264770772"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 05:48:04 -0700
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="693093560"
Received: from dlee-mobl1.gar.corp.intel.com (HELO [10.214.144.75])
 ([10.214.144.75])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 05:48:02 -0700
Message-ID: <5db0e882-3691-882f-23a4-86238b55401b@intel.com>
Date: Tue, 28 Jun 2022 13:47:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.10.0
Content-Language: en-GB
To: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>, igt-dev@lists.freedesktop.org
References: <20220627161004.70153-1-matthew.auld@intel.com>
 <edb8ed97-fee9-1e86-9339-979fd97b3f95@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <edb8ed97-fee9-1e86-9339-979fd97b3f95@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/3] tests/i915/gem_eio: fix uaf
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 28/06/2022 11:24, Gwan-gyeong Mun wrote:
> Looks good to me.
> 
> Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> 
> However, the use after free build issue did not occur only with the "$ 
> meson build && ninja -C build" build command guided by the igt 
> README.md. How did you check it?

Hmm, I assume it's just a difference in compiler version or so. I have: 
gcc (GCC) 12.1.1 20220507 (Red Hat 12.1.1-1).

> 
> Br,
> 
> G.G.
> 
> 
> On 6/27/22 7:10 PM, Matthew Auld wrote:
>> ../tests/i915/gem_eio.c:277:20: warning: pointer ‘ctx’ used after 
>> ‘free’ [-Wuse-after-free]
>>    277 |         igt_assert(igt_sysfs_printf(ctx->debugfs, 
>> "i915_drop_caches",
>> ../lib/igt_core.h:667:20: note: in definition of macro ‘igt_assert’
>>    667 |         do { if (!(expr)) \
>>        |                    ^~~~
>> ../tests/i915/gem_eio.c:274:9: note: call to ‘free’ here
>>    274 |         free(ctx);
>>
>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
>> ---
>>   tests/i915/gem_eio.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/tests/i915/gem_eio.c b/tests/i915/gem_eio.c
>> index 913a21f9..6cbae6eb 100644
>> --- a/tests/i915/gem_eio.c
>> +++ b/tests/i915/gem_eio.c
>> @@ -270,11 +270,11 @@ static void hang_handler(union sigval arg)
>>             igt_nsec_elapsed(&ctx->delay) / 1000.0);
>>       igt_assert_eq(timer_delete(ctx->timer), 0);
>> -    free(ctx);
>>       /* flush any excess work before we start timing our reset */
>>       igt_assert(igt_sysfs_printf(ctx->debugfs, "i915_drop_caches",
>>                       "%d", DROP_RCU));
>> +    free(ctx);
>>       igt_nsec_elapsed(ts);
>>       igt_assert(igt_sysfs_printf(dir, "i915_wedged", "%llu", -1ull));
>>
