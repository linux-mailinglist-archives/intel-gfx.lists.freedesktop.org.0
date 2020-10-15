Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEB628F2B8
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 14:54:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E16D86ECDD;
	Thu, 15 Oct 2020 12:54:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB0716ECDB;
 Thu, 15 Oct 2020 12:54:07 +0000 (UTC)
IronPort-SDR: 3cNmsLRX4ihoq9VVDZsR5tdutgrSdOO/rk8UHnNMau2fV47EnFeZ6FRZpbHH25iUWOcXR1rUG8
 mpwfeYAuoMYQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9774"; a="146197683"
X-IronPort-AV: E=Sophos;i="5.77,379,1596524400"; d="scan'208";a="146197683"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 05:53:51 -0700
IronPort-SDR: UsqpV5i9n5bREOC8xuc678tPD9KlSYqfaNvLUYn5xzPcPiaDucEXtRkUairM/7YrEcGEY4bdvS
 5SAgu0JKMzzQ==
X-IronPort-AV: E=Sophos;i="5.77,379,1596524400"; d="scan'208";a="464285464"
Received: from smdhoble-mobl.gar.corp.intel.com (HELO [10.251.165.220])
 ([10.251.165.220])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 05:53:49 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20201014104038.2554985-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f8998e32-7ea1-52b6-bf5a-144debebb1a6@linux.intel.com>
Date: Thu, 15 Oct 2020 13:53:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201014104038.2554985-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 01/10]
 i915/gem_userptr_blits: Tighten has_userptr()
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 14/10/2020 11:40, Chris Wilson wrote:
> We use has_userptr() to determine if the different flags are supported,
> so it helps not to override the flags inside the test.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   tests/i915/gem_userptr_blits.c | 12 ++++++------
>   1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/tests/i915/gem_userptr_blits.c b/tests/i915/gem_userptr_blits.c
> index 268423dcd..01498edad 100644
> --- a/tests/i915/gem_userptr_blits.c
> +++ b/tests/i915/gem_userptr_blits.c
> @@ -71,8 +71,7 @@
>   #define PAGE_SIZE 4096
>   #endif
>   
> -static uint32_t userptr_flags = I915_USERPTR_UNSYNCHRONIZED;
> -
> +static uint32_t userptr_flags;
>   static bool *can_mmap;
>   
>   #define WIDTH 512
> @@ -504,14 +503,11 @@ static int has_userptr(int fd)
>   {
>   	uint32_t handle = 0;
>   	void *ptr;
> -	uint32_t oldflags;
>   	int ret;
>   
>   	igt_assert(posix_memalign(&ptr, PAGE_SIZE, PAGE_SIZE) == 0);
> -	oldflags = userptr_flags;
> -	gem_userptr_test_unsynchronized();
>   	ret = __gem_userptr(fd, ptr, PAGE_SIZE, 0, userptr_flags, &handle);
> -	userptr_flags = oldflags;
> +	errno = 0;
>   	if (ret != 0) {
>   		free(ptr);
>   		return 0;
> @@ -2112,6 +2108,10 @@ igt_main_args("c:", NULL, help_str, opt_handler, NULL)
>   
>   	igt_subtest_group {
>   		igt_fixture {
> +			/* Either mode will do for parameter checking */
> +			gem_userptr_test_synchronized();
> +			if (!has_userptr(fd))
> +				gem_userptr_test_unsynchronized();
>   			igt_require(has_userptr(fd));
>   		}
>   
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
