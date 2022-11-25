Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D06EA638781
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Nov 2022 11:27:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E7F110E713;
	Fri, 25 Nov 2022 10:27:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A804F10E607;
 Fri, 25 Nov 2022 10:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669371979; x=1700907979;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=TsPy7gIN2+DT6PIIhhtgTJ9CdkeY0/H2UwQFwrrgSNI=;
 b=NCvxawCc24nZBO66p5mnTkQ5IRZtzPRsJjFMV3I8YU5oQ6kVSU7QL21d
 iwyfAdjIpChxk/KBxfvwuTZf+LXC88fz/FoIhiaHBgRyv3hoWaPzD8H1O
 8EAj7q4T8bJjnLMfBl2t5gN2/c66LqiW3lplmaJkfCSjTUCyXY44VV8w5
 Hm70Jrg/WUGJiXDrwn/GWbNK1Mmr4lIp1PMH1+Xloj+5eDY1ItDr2U3wx
 LZI2fDeaiss4m8ToZExocmt2lHsFJ6tLB25dpzXtUoK4pQtX/B5rkV9wt
 5Lz1MaQHtNubFwWzPS32VlZ50Uyg+TXUCJLDvPhKNidBIPpIGzod/Npjz Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10541"; a="376600750"
X-IronPort-AV: E=Sophos;i="5.96,193,1665471600"; d="scan'208";a="376600750"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2022 02:26:17 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10541"; a="784901745"
X-IronPort-AV: E=Sophos;i="5.96,193,1665471600"; d="scan'208";a="784901745"
Received: from lkazmier-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.18.126])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2022 02:26:16 -0800
Date: Fri, 25 Nov 2022 11:26:14 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <Y4CYRqjoK5KkSjkD@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Matthew Auld <matthew.auld@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
References: <20221118155335.635430-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20221118155335.635430-1-matthew.auld@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matthew,

one more nit, see below.

On 2022-11-18 at 15:53:35 +0000, Matthew Auld wrote:
> With parallel submission it should be easy to get a fence array as the
> output fence. Try importing this into dma-buf reservation object, to see
> if anything explodes.
> 
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/7532
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  tests/i915/gem_exec_balancer.c | 39 ++++++++++++++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
> index 4300dbd1..fdae8de5 100644
> --- a/tests/i915/gem_exec_balancer.c
> +++ b/tests/i915/gem_exec_balancer.c
> @@ -37,6 +37,7 @@
>  #include "igt_sysfs.h"
>  #include "igt_types.h"
>  #include "sw_sync.h"
> +#include <linux/dma-buf.h>
- ^^^^^^^^^^^^^^^^^^^^^^^^^^
This should be above with other <includes>. Also it is linux
specific, so please put it with

#ifdef __linux__
#include <linux/dma-buf.h>
#endif

Regards,
Kamil

>  
>  IGT_TEST_DESCRIPTION("Exercise in-kernel load-balancing");
>  
> @@ -2856,6 +2857,24 @@ static void logical_sort_siblings(int i915,
>  #define PARALLEL_SUBMIT_FENCE		(0x1 << 3)
>  #define PARALLEL_CONTEXTS		(0x1 << 4)
>  #define PARALLEL_VIRTUAL		(0x1 << 5)
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
>  
>  static void parallel_thread(int i915, unsigned int flags,
>  			    struct i915_engine_class_instance *siblings,
> @@ -2871,6 +2890,8 @@ static void parallel_thread(int i915, unsigned int flags,
>  	uint32_t target_bo_idx = 0;
>  	uint32_t first_bb_idx = 1;
>  	intel_ctx_cfg_t cfg;
> +	uint32_t dmabuf_handle;
> +	int dmabuf;
>  
>  	igt_assert(bb_per_execbuf < 32);
>  
> @@ -2924,11 +2945,20 @@ static void parallel_thread(int i915, unsigned int flags,
>  	execbuf.buffers_ptr = to_user_pointer(obj);
>  	execbuf.rsvd1 = ctx->id;
>  
> +	if (flags & PARALLEL_OUT_FENCE_DMABUF) {
> +		dmabuf_handle = gem_create(i915, 4096);
> +		dmabuf = prime_handle_to_fd(i915, dmabuf_handle);
> +	}
> +
>  	for (n = 0; n < PARALLEL_BB_LOOP_COUNT; ++n) {
>  		execbuf.flags &= ~0x3full;
>  		gem_execbuf_wr(i915, &execbuf);
>  
>  		if (flags & PARALLEL_OUT_FENCE) {
> +			if (flags & PARALLEL_OUT_FENCE_DMABUF)
> +				dmabuf_import_sync_file(dmabuf, DMA_BUF_SYNC_WRITE,
> +							execbuf.rsvd2 >> 32);
> +
>  			igt_assert_eq(sync_fence_wait(execbuf.rsvd2 >> 32,
>  						      1000), 0);
>  			igt_assert_eq(sync_fence_status(execbuf.rsvd2 >> 32), 1);
> @@ -2959,6 +2989,11 @@ static void parallel_thread(int i915, unsigned int flags,
>  	if (fence)
>  		close(fence);
>  
> +	if (flags & PARALLEL_OUT_FENCE_DMABUF) {
> +		gem_close(i915, dmabuf_handle);
> +		close(dmabuf);
> +	}
> +
>  	check_bo(i915, obj[target_bo_idx].handle,
>  		 bb_per_execbuf * PARALLEL_BB_LOOP_COUNT, true);
>  
> @@ -3420,6 +3455,10 @@ igt_main
>  		igt_subtest("parallel-out-fence")
>  			parallel(i915, PARALLEL_OUT_FENCE);
>  
> +		igt_subtest("parallel-out-fence-import-dmabuf")
> +			parallel(i915, PARALLEL_OUT_FENCE |
> +				 PARALLEL_OUT_FENCE_DMABUF);
> +
>  		igt_subtest("parallel-keep-in-fence")
>  			parallel(i915, PARALLEL_OUT_FENCE | PARALLEL_IN_FENCE);
>  
> -- 
> 2.38.1
> 
