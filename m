Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D3A63860E
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Nov 2022 10:25:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D299710E214;
	Fri, 25 Nov 2022 09:25:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E69210E0E8;
 Fri, 25 Nov 2022 09:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669368295; x=1700904295;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=7Jp5r2480qBKR/xoVdMKyhFdhqz7O1/QUbpmZ6TSfc4=;
 b=ScsYoL8vSCqpQEWkMnkKAXCo2DCdIE3m/JgNgiqy+mIgdLXotfb8tSgb
 FSECR4wH7GvhmF1P2NFO8iirEDq7IK3CCJ1MNvf1uAyzer5xVx1qIpn87
 8epZyM51b+BGGh5S5HvLFKPV3qDR6qnvsuRh7onaPJfKNKB4Ey5wRMZ2A
 wqiiCpmrQvUHV6H+MZmzJ3nfaPrrSuRUm67og8B4hQxgH+lEeakejI8GC
 4qap2Ss8ylfWNG2QxgsdW+zftOau3tsumfdXicby7zZEidNp0PXPZaBJ+
 St4a4QUung6j07IQWzqtZRzxCJTCFSoCFXP650gSQQEDNEEAg/Dv8qeQa Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10541"; a="315603661"
X-IronPort-AV: E=Sophos;i="5.96,193,1665471600"; d="scan'208";a="315603661"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2022 01:24:34 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10541"; a="593171600"
X-IronPort-AV: E=Sophos;i="5.96,193,1665471600"; d="scan'208";a="593171600"
Received: from lkazmier-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.18.126])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2022 01:24:32 -0800
Date: Fri, 25 Nov 2022 10:24:30 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <Y4CJzrkdF+jQapMs@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matthew,

few nits, see below.

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

You did not check for error here, so either add assert
do_ioctl ... == 0 or change function name, add __ before like:
static int __dmabuf_import_sync_file(int dmabuf, uint32_t flags, int sync_fd)

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

Please put description here.

Regards,
Kamil

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
