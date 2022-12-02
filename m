Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D50A64051C
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 11:49:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8A3A10E6CB;
	Fri,  2 Dec 2022 10:48:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1F7F10E6C4;
 Fri,  2 Dec 2022 10:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669978086; x=1701514086;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vOPVRgPVULUgtb45aXqPYh1cZ2cZOwnPxmInSunpMDY=;
 b=DmIVwmWTxjoqvUq673bLqUpC3h2fvhcu5lbPgnqgJEmI1g6yOgn98mXw
 m9S5BL3B+pU2p7hHS8WfvcgyXkBvWsGM43E00BQ09ZnBLRy6D9kQy1uCP
 sVZo86b2PGsENgOW9EcWdoi069X3xlErkK4arL84hgzStw3bx5n70zDKU
 +f9dxvpDn6X0OuFXHui1g7UZ8OKPxpoN+vV5sx0LhQ2d6c420J2saG3tN
 BOQtHSGgOkdOrvOaNRDonXdGuyILPV3NV7Ohd+96agcPuBtzhwsgbSiSt
 8sIcDwyDDrH9eUhb6ZbMR5BXtVafetCbSyHomfifZZg7KtP167XNTwdth Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="315957053"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="315957053"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 02:48:05 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="751218977"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="751218977"
Received: from ysmelkov-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.5.119])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 02:48:04 -0800
Date: Fri, 2 Dec 2022 11:48:01 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <Y4nX4VIFCgk3CilX@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Matthew Auld <matthew.auld@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
References: <20221201164944.327019-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221201164944.327019-1-matthew.auld@intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/2] lib/dmabuf_sync_file: move common
 stuff into lib
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

On 2022-12-01 at 16:49:43 +0000, Matthew Auld wrote:
> So we can use this across different tests.
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  lib/dmabuf_sync_file.c   | 138 +++++++++++++++++++++++++++++++++++++++
>  lib/dmabuf_sync_file.h   |  19 ++++++
>  lib/meson.build          |   1 +
>  tests/dmabuf_sync_file.c | 135 ++------------------------------------
>  4 files changed, 164 insertions(+), 129 deletions(-)
>  create mode 100644 lib/dmabuf_sync_file.c
>  create mode 100644 lib/dmabuf_sync_file.h
> 
> diff --git a/lib/dmabuf_sync_file.c b/lib/dmabuf_sync_file.c
> new file mode 100644
> index 00000000..24e0f96d
> --- /dev/null
> +++ b/lib/dmabuf_sync_file.c
> @@ -0,0 +1,138 @@
> +// SPDX-License-Identifier: MIT

Add also copyright here, like in lib/intel_allocator.c
(I changed year):
/*
 * Copyright © 2022 Intel Corporation
 */

> +
> +#ifdef __linux__
> +#include <linux/dma-buf.h>
> +#endif
> +#include <sys/poll.h>
> +
> +#include "igt.h"
> +#include "igt_vgem.h"
> +#include "sw_sync.h"
> +
> +#include "dmabuf_sync_file.h"
> +
> +struct igt_dma_buf_sync_file {
> +	__u32 flags;
> +	__s32 fd;
> +};
> +
> +#define IGT_DMA_BUF_IOCTL_EXPORT_SYNC_FILE _IOWR(DMA_BUF_BASE, 2, struct igt_dma_buf_sync_file)
> +#define IGT_DMA_BUF_IOCTL_IMPORT_SYNC_FILE _IOW(DMA_BUF_BASE, 3, struct igt_dma_buf_sync_file)
> +
> +bool has_dmabuf_export_sync_file(int fd)
> +{
> +	struct vgem_bo bo;
> +	int dmabuf, ret;
> +	struct igt_dma_buf_sync_file arg;
> +
> +	bo.width = 1;
> +	bo.height = 1;
> +	bo.bpp = 32;
> +	vgem_create(fd, &bo);
> +
> +	dmabuf = prime_handle_to_fd(fd, bo.handle);
> +	gem_close(fd, bo.handle);
> +
> +	arg.flags = DMA_BUF_SYNC_WRITE;
> +	arg.fd = -1;
> +
> +	ret = igt_ioctl(dmabuf, IGT_DMA_BUF_IOCTL_EXPORT_SYNC_FILE, &arg);
> +	close(dmabuf);
> +	igt_assert(ret == 0 || errno == ENOTTY);
> +
> +	return ret == 0;
> +}
> +
> +int dmabuf_export_sync_file(int dmabuf, uint32_t flags)
> +{
> +	struct igt_dma_buf_sync_file arg;
> +
> +	arg.flags = flags;
> +	arg.fd = -1;
> +	do_ioctl(dmabuf, IGT_DMA_BUF_IOCTL_EXPORT_SYNC_FILE, &arg);
> +
> +	return arg.fd;
> +}
> +
> +bool has_dmabuf_import_sync_file(int fd)
> +{
> +	struct vgem_bo bo;
> +	int dmabuf, timeline, fence, ret;
> +	struct igt_dma_buf_sync_file arg;
> +
> +	bo.width = 1;
> +	bo.height = 1;
> +	bo.bpp = 32;
> +	vgem_create(fd, &bo);
> +
> +	dmabuf = prime_handle_to_fd(fd, bo.handle);
> +	gem_close(fd, bo.handle);
> +
> +	timeline = sw_sync_timeline_create();
> +	fence = sw_sync_timeline_create_fence(timeline, 1);
> +	sw_sync_timeline_inc(timeline, 1);
> +
> +	arg.flags = DMA_BUF_SYNC_RW;
> +	arg.fd = fence;
> +
> +	ret = igt_ioctl(dmabuf, IGT_DMA_BUF_IOCTL_IMPORT_SYNC_FILE, &arg);
> +	close(dmabuf);
> +	close(fence);
> +	igt_assert(ret == 0 || errno == ENOTTY);
> +
> +	return ret == 0;
> +}
> +
> +void dmabuf_import_sync_file(int dmabuf, uint32_t flags, int sync_fd)
> +{
> +	struct igt_dma_buf_sync_file arg;
> +
> +	arg.flags = flags;
> +	arg.fd = sync_fd;
> +	do_ioctl(dmabuf, IGT_DMA_BUF_IOCTL_IMPORT_SYNC_FILE, &arg);
> +}
> +
> +void
> +dmabuf_import_timeline_fence(int dmabuf, uint32_t flags,
> +			     int timeline, uint32_t seqno)
> +{
> +	int fence;
> +
> +	fence = sw_sync_timeline_create_fence(timeline, seqno);
> +	dmabuf_import_sync_file(dmabuf, flags, fence);
> +	close(fence);
> +}
> +
> +bool dmabuf_busy(int dmabuf, uint32_t flags)
> +{
> +	struct pollfd pfd = { .fd = dmabuf };
> +
> +	/* If DMA_BUF_SYNC_WRITE is set, we don't want to set POLLIN or
> +	 * else poll() may return a non-zero value if there are only read
> +	 * fences because POLLIN is ready even if POLLOUT isn't.
> +	 */
> +	if (flags & DMA_BUF_SYNC_WRITE)
> +		pfd.events |= POLLOUT;
> +	else if (flags & DMA_BUF_SYNC_READ)
> +		pfd.events |= POLLIN;
> +
> +	return poll(&pfd, 1, 0) == 0;
> +}
> +
> +bool sync_file_busy(int sync_file)
> +{
> +	struct pollfd pfd = { .fd = sync_file, .events = POLLIN };
> +	return poll(&pfd, 1, 0) == 0;
> +}
> +
> +bool dmabuf_sync_file_busy(int dmabuf, uint32_t flags)
> +{
> +	int sync_file;
> +	bool busy;
> +
> +	sync_file = dmabuf_export_sync_file(dmabuf, flags);
> +	busy = sync_file_busy(sync_file);
> +	close(sync_file);
> +
> +	return busy;
> +}
> diff --git a/lib/dmabuf_sync_file.h b/lib/dmabuf_sync_file.h
> new file mode 100644
> index 00000000..08da8150
> --- /dev/null
> +++ b/lib/dmabuf_sync_file.h
> @@ -0,0 +1,19 @@
> +/* SPDX-License-Identifier: MIT */

Same here, add copyright.

> +
> +#ifndef DMABUF_SYNC_FILE_H
> +#define DMABUF_SYNC_FILE_H
> +
> +#include <stdbool.h>
> +#include <stdint.h>
> +
> +bool has_dmabuf_export_sync_file(int fd);
> +bool has_dmabuf_import_sync_file(int fd);
> +int dmabuf_export_sync_file(int dmabuf, uint32_t flags);
> +void dmabuf_import_sync_file(int dmabuf, uint32_t flags, int sync_fd);
> +void dmabuf_import_timeline_fence(int dmabuf, uint32_t flags,
> +			     int timeline, uint32_t seqno);
> +bool dmabuf_busy(int dmabuf, uint32_t flags);
> +bool sync_file_busy(int sync_file);
> +bool dmabuf_sync_file_busy(int dmabuf, uint32_t flags);
> +
> +#endif
> diff --git a/lib/meson.build b/lib/meson.build
> index cef2d0ff..896d5733 100644
> --- a/lib/meson.build
> +++ b/lib/meson.build
> @@ -1,5 +1,6 @@
>  lib_sources = [
>  	'drmtest.c',
> +	'dmabuf_sync_file.c',
>  	'huc_copy.c',
>  	'i915/gem.c',
>  	'i915/gem_context.c',
> diff --git a/tests/dmabuf_sync_file.c b/tests/dmabuf_sync_file.c
> index 2179a76d..f59be125 100644
> --- a/tests/dmabuf_sync_file.c
> +++ b/tests/dmabuf_sync_file.c
> @@ -1,140 +1,17 @@
>  // SPDX-License-Identifier: MIT

Same here, add copyright.

>  
> +#ifdef __linux__
> +#include <linux/dma-buf.h>
> +#endif
> +#include <sys/poll.h>
> +

These two includes above should be in dmabuf_sync_file.h

Regards,
Kamil

>  #include "igt.h"
>  #include "igt_vgem.h"
>  #include "sw_sync.h"
> -
> -#include <linux/dma-buf.h>
> -#include <sys/poll.h>
> +#include "dmabuf_sync_file.h"
>  
>  IGT_TEST_DESCRIPTION("Tests for sync_file support in dma-buf");
>  
> -struct igt_dma_buf_sync_file {
> -	__u32 flags;
> -	__s32 fd;
> -};
> -
> -#define IGT_DMA_BUF_IOCTL_EXPORT_SYNC_FILE _IOWR(DMA_BUF_BASE, 2, struct igt_dma_buf_sync_file)
> -#define IGT_DMA_BUF_IOCTL_IMPORT_SYNC_FILE _IOW(DMA_BUF_BASE, 3, struct igt_dma_buf_sync_file)
> -
> -static bool has_dmabuf_export_sync_file(int fd)
> -{
> -	struct vgem_bo bo;
> -	int dmabuf, ret;
> -	struct igt_dma_buf_sync_file arg;
> -
> -	bo.width = 1;
> -	bo.height = 1;
> -	bo.bpp = 32;
> -	vgem_create(fd, &bo);
> -
> -	dmabuf = prime_handle_to_fd(fd, bo.handle);
> -	gem_close(fd, bo.handle);
> -
> -	arg.flags = DMA_BUF_SYNC_WRITE;
> -	arg.fd = -1;
> -
> -	ret = igt_ioctl(dmabuf, IGT_DMA_BUF_IOCTL_EXPORT_SYNC_FILE, &arg);
> -	close(dmabuf);
> -	igt_assert(ret == 0 || errno == ENOTTY);
> -
> -	return ret == 0;
> -}
> -
> -static int dmabuf_export_sync_file(int dmabuf, uint32_t flags)
> -{
> -	struct igt_dma_buf_sync_file arg;
> -
> -	arg.flags = flags;
> -	arg.fd = -1;
> -	do_ioctl(dmabuf, IGT_DMA_BUF_IOCTL_EXPORT_SYNC_FILE, &arg);
> -
> -	return arg.fd;
> -}
> -
> -static bool has_dmabuf_import_sync_file(int fd)
> -{
> -	struct vgem_bo bo;
> -	int dmabuf, timeline, fence, ret;
> -	struct igt_dma_buf_sync_file arg;
> -
> -	bo.width = 1;
> -	bo.height = 1;
> -	bo.bpp = 32;
> -	vgem_create(fd, &bo);
> -
> -	dmabuf = prime_handle_to_fd(fd, bo.handle);
> -	gem_close(fd, bo.handle);
> -
> -	timeline = sw_sync_timeline_create();
> -	fence = sw_sync_timeline_create_fence(timeline, 1);
> -	sw_sync_timeline_inc(timeline, 1);
> -
> -	arg.flags = DMA_BUF_SYNC_RW;
> -	arg.fd = fence;
> -
> -	ret = igt_ioctl(dmabuf, IGT_DMA_BUF_IOCTL_IMPORT_SYNC_FILE, &arg);
> -	close(dmabuf);
> -	close(fence);
> -	igt_assert(ret == 0 || errno == ENOTTY);
> -
> -	return ret == 0;
> -}
> -
> -static void dmabuf_import_sync_file(int dmabuf, uint32_t flags, int sync_fd)
> -{
> -	struct igt_dma_buf_sync_file arg;
> -
> -	arg.flags = flags;
> -	arg.fd = sync_fd;
> -	do_ioctl(dmabuf, IGT_DMA_BUF_IOCTL_IMPORT_SYNC_FILE, &arg);
> -}
> -
> -static void
> -dmabuf_import_timeline_fence(int dmabuf, uint32_t flags,
> -			     int timeline, uint32_t seqno)
> -{
> -	int fence;
> -
> -	fence = sw_sync_timeline_create_fence(timeline, seqno);
> -	dmabuf_import_sync_file(dmabuf, flags, fence);
> -	close(fence);
> -}
> -
> -static bool dmabuf_busy(int dmabuf, uint32_t flags)
> -{
> -	struct pollfd pfd = { .fd = dmabuf };
> -
> -	/* If DMA_BUF_SYNC_WRITE is set, we don't want to set POLLIN or
> -	 * else poll() may return a non-zero value if there are only read
> -	 * fences because POLLIN is ready even if POLLOUT isn't.
> -	 */
> -	if (flags & DMA_BUF_SYNC_WRITE)
> -		pfd.events |= POLLOUT;
> -	else if (flags & DMA_BUF_SYNC_READ)
> -		pfd.events |= POLLIN;
> -
> -	return poll(&pfd, 1, 0) == 0;
> -}
> -
> -static bool sync_file_busy(int sync_file)
> -{
> -	struct pollfd pfd = { .fd = sync_file, .events = POLLIN };
> -	return poll(&pfd, 1, 0) == 0;
> -}
> -
> -static bool dmabuf_sync_file_busy(int dmabuf, uint32_t flags)
> -{
> -	int sync_file;
> -	bool busy;
> -
> -	sync_file = dmabuf_export_sync_file(dmabuf, flags);
> -	busy = sync_file_busy(sync_file);
> -	close(sync_file);
> -
> -	return busy;
> -}
> -
>  static void test_export_basic(int fd)
>  {
>  	struct vgem_bo bo;
> -- 
> 2.38.1
> 
