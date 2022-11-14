Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83BA3627B7F
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 12:07:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8ACF10E03F;
	Mon, 14 Nov 2022 11:07:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06D7610E03F;
 Mon, 14 Nov 2022 11:07:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668424039; x=1699960039;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=EWpK9JXL6HU7EcBwY2Xn+oTdr3ZfYRfM2n+gWl5utX0=;
 b=bSG1FHwrNL/XoWCS8pAn1+HPwmXvVjZT/YOLuloxBZnYDBKhK+crZRlb
 A5iX2yt4NzBsQDQs8TBxwjmfDV3gAtWCk7IHONqwka1ZbZzvvLjtuIL6A
 2JMCMcfDWiZknPObV3KG1asEFJU1MRyVxIeUu3NUMUtwMoSg4Ogy8lrms
 NgepnRj5Amy16Wenv7wgs/MW0ffv5dktHfOjrJNQLF0DcKx3TC8wyqJGA
 /PVT7IKAesjtmWUPOylNbU45DA9begblXHtOeFRTDWbqgPTWbKtjbYOyj
 VgNeu0I7wlcAXikBqfsms7WBUxzAqfsJEUYXSvuPQmnrx/jZivgI+1z5b g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="291658133"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="291658133"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 03:07:18 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="669606602"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="669606602"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.24.118])
 ([10.213.24.118])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 03:07:17 -0800
Message-ID: <8926f9d4-e88d-fdb0-1b2d-ec51ae4a3c84@intel.com>
Date: Mon, 14 Nov 2022 12:07:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.2
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, igt-dev@lists.freedesktop.org
References: <20221107120426.22849-1-matthew.auld@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20221107120426.22849-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915/gem_mmap_offset: use
 cpu_size in always_clear
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 07.11.2022 13:04, Matthew Auld wrote:
> If we can't fit the buffer in the CPU visible portion of lmem, then the
> kernel will be unable to migrate the pages on fault on small-bar
> systems.  Note that this doesn't restrict where the pages are allocated,
> but should just ensure we don't SIGBUS, if we need to migrate the pages.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7382
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   tests/i915/gem_mmap_offset.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/tests/i915/gem_mmap_offset.c b/tests/i915/gem_mmap_offset.c
> index 0adeb0b5..b27920de 100644
> --- a/tests/i915/gem_mmap_offset.c
> +++ b/tests/i915/gem_mmap_offset.c
> @@ -750,7 +750,7 @@ static void always_clear(int i915, const struct gem_memory_region *r, int timeou
>   	struct thread_clear arg = {
>   		.i915 = i915,
>   		.region = r->ci,
> -		.max = r->size / 2 >> 12, /* in pages */
> +		.max = r->cpu_size / 2 >> 12, /* in pages */
>   		.timeout = timeout,
>   	};
>   	const int ncpus = sysconf(_SC_NPROCESSORS_ONLN);

