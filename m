Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFDD637985
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Nov 2022 13:59:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AB4810E6F6;
	Thu, 24 Nov 2022 12:59:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22CDD10E6F6;
 Thu, 24 Nov 2022 12:59:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669294776; x=1700830776;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=StftT1CtMvo09BtAXsfPR5OcVRVcK+RE/nPhfih56YY=;
 b=XLtK6UDiHLnivj/tfU1BJ8zvu4AmufZx4lapO2wR3OQxH1hxri5snAUb
 hwcZux2hrReH9T/p4cn9tIqOtqLTlV0OalwgKuAzTy4cstQV4h4cDFD9/
 DM2HiazlbbTgu/SCDjXVLKkq2CCSxRfdNXa/QHmys6+/UaZSoM5IGeVai
 9MWqwtVjq6aXGFSpsAamHY0HXYrCCKiObKUr8l23BpjaLocjwV/W4cIBa
 PoLwXh+k0KFMTxJoB7glaMd6JWriNyngfpXHlQ5tJBo26fdx8wsfQLlZS
 rZd00/lwKrjAR6rpVZOJu8E5SmD6dMp9CiJCg3e5Up/aoXq5DhP384kH9 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="341188273"
X-IronPort-AV: E=Sophos;i="5.96,190,1665471600"; d="scan'208";a="341188273"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2022 04:59:22 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="592916957"
X-IronPort-AV: E=Sophos;i="5.96,190,1665471600"; d="scan'208";a="592916957"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.1.92])
 ([10.213.1.92])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2022 04:59:20 -0800
Message-ID: <b2df860d-9963-a00f-45eb-57770ec7864d@intel.com>
Date: Thu, 24 Nov 2022 13:59:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, igt-dev@lists.freedesktop.org
References: <20221118155335.635430-1-matthew.auld@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20221118155335.635430-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915/gem_exec_balancer:
 exercise dmabuf import
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



On 18.11.2022 16:53, Matthew Auld wrote:
> With parallel submission it should be easy to get a fence array as the
> output fence. Try importing this into dma-buf reservation object, to see
> if anything explodes.
>
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/7532
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   tests/i915/gem_exec_balancer.c | 39 ++++++++++++++++++++++++++++++++++
>   1 file changed, 39 insertions(+)
>
> diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
> index 4300dbd1..fdae8de5 100644
> --- a/tests/i915/gem_exec_balancer.c
> +++ b/tests/i915/gem_exec_balancer.c
> @@ -37,6 +37,7 @@
>   #include "igt_sysfs.h"
>   #include "igt_types.h"
>   #include "sw_sync.h"
> +#include <linux/dma-buf.h>
>   
>   IGT_TEST_DESCRIPTION("Exercise in-kernel load-balancing");
>   
> @@ -2856,6 +2857,24 @@ static void logical_sort_siblings(int i915,
>   #define PARALLEL_SUBMIT_FENCE		(0x1 << 3)
>   #define PARALLEL_CONTEXTS		(0x1 << 4)
>   #define PARALLEL_VIRTUAL		(0x1 << 5)
> +#define PARALLEL_OUT_FENCE_DMABUF	(0x1 << 6)
> +
> +struct igt_dma_buf_sync_file {
> +        __u32 flags;
> +        __s32 fd;
> +};
> +
> +#define IGT_DMA_BUF_IOCTL_EXPORT_SYNC_FILE _IOWR(DMA_BUF_BASE, 2, struct igt_dma_buf_sync_file)
> +#define IGT_DMA_BUF_IOCTL_IMPORT_SYNC_FILE _IOW(DMA_BUF_BASE, 3, struct igt_dma_buf_sync_file)
> +
> +static void dmabuf_import_sync_file(int dmabuf, uint32_t flags, int sync_fd)
> +{
> +        struct igt_dma_buf_sync_file arg;
> +
> +        arg.flags = flags;
> +        arg.fd = sync_fd;
> +        do_ioctl(dmabuf, IGT_DMA_BUF_IOCTL_IMPORT_SYNC_FILE, &arg);
> +}

Wouldn't be good to move code above to some common lib?
Anyway:
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

>   
>   static void parallel_thread(int i915, unsigned int flags,
>   			    struct i915_engine_class_instance *siblings,
> @@ -2871,6 +2890,8 @@ static void parallel_thread(int i915, unsigned int flags,
>   	uint32_t target_bo_idx = 0;
>   	uint32_t first_bb_idx = 1;
>   	intel_ctx_cfg_t cfg;
> +	uint32_t dmabuf_handle;
> +	int dmabuf;
>   
>   	igt_assert(bb_per_execbuf < 32);
>   
> @@ -2924,11 +2945,20 @@ static void parallel_thread(int i915, unsigned int flags,
>   	execbuf.buffers_ptr = to_user_pointer(obj);
>   	execbuf.rsvd1 = ctx->id;
>   
> +	if (flags & PARALLEL_OUT_FENCE_DMABUF) {
> +		dmabuf_handle = gem_create(i915, 4096);
> +		dmabuf = prime_handle_to_fd(i915, dmabuf_handle);
> +	}
> +
>   	for (n = 0; n < PARALLEL_BB_LOOP_COUNT; ++n) {
>   		execbuf.flags &= ~0x3full;
>   		gem_execbuf_wr(i915, &execbuf);
>   
>   		if (flags & PARALLEL_OUT_FENCE) {
> +			if (flags & PARALLEL_OUT_FENCE_DMABUF)
> +				dmabuf_import_sync_file(dmabuf, DMA_BUF_SYNC_WRITE,
> +							execbuf.rsvd2 >> 32);
> +
>   			igt_assert_eq(sync_fence_wait(execbuf.rsvd2 >> 32,
>   						      1000), 0);
>   			igt_assert_eq(sync_fence_status(execbuf.rsvd2 >> 32), 1);
> @@ -2959,6 +2989,11 @@ static void parallel_thread(int i915, unsigned int flags,
>   	if (fence)
>   		close(fence);
>   
> +	if (flags & PARALLEL_OUT_FENCE_DMABUF) {
> +		gem_close(i915, dmabuf_handle);
> +		close(dmabuf);
> +	}
> +
>   	check_bo(i915, obj[target_bo_idx].handle,
>   		 bb_per_execbuf * PARALLEL_BB_LOOP_COUNT, true);
>   
> @@ -3420,6 +3455,10 @@ igt_main
>   		igt_subtest("parallel-out-fence")
>   			parallel(i915, PARALLEL_OUT_FENCE);
>   
> +		igt_subtest("parallel-out-fence-import-dmabuf")
> +			parallel(i915, PARALLEL_OUT_FENCE |
> +				 PARALLEL_OUT_FENCE_DMABUF);
> +
>   		igt_subtest("parallel-keep-in-fence")
>   			parallel(i915, PARALLEL_OUT_FENCE | PARALLEL_IN_FENCE);
>   

