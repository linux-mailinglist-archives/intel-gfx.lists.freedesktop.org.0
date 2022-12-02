Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB386403BF
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 10:50:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 062F810E6B7;
	Fri,  2 Dec 2022 09:50:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93F4410E1A4;
 Fri,  2 Dec 2022 09:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669974596; x=1701510596;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=l77yZapAjLLuI3ylpZtHcjRCMbe8kRDpjPTinGxMpgU=;
 b=I+zKGYr1W0Pasa6yl9rXos8Hqk0YUkJh5a0eXXkH1TUzyssvVLLIefLJ
 QBTzwdTqBTpQ92CADBpvOoW8I7bqeWdNtYCkTGTqy+1oOEAkPZqBEfo/G
 42Se0X2jtZ/LIrc3tQh4Xua/YJjojQ43oKuJmlIbyDpb0YZwri1nGmrh1
 Ri09RfjK+RZCV9akEzqhenZxIznOEYH+CVxPB10ZMtwFZVVmLOWo/Kz07
 JAxpnserMScjZNkPyfFA3NMDksY0yAeUAJC15TlX8GWgVRAPHMe4UALuy
 T1Yl8n0hbgFVSBbWIq7GCCU4EkEGi5m50lz9eYz6dDCTuyW4EPUFdiTIG A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="296275956"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="296275956"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 01:49:41 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="733761052"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="733761052"
Received: from thrakatuluk.fi.intel.com (HELO
 platvala-desk.ger.corp.intel.com) ([10.237.72.90])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 01:49:39 -0800
Date: Fri, 2 Dec 2022 11:50:07 +0200
From: Petri Latvala <petri.latvala@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <Y4nKT+dIo8hRZjnn@platvala-desk.ger.corp.intel.com>
References: <20221201164944.327019-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221201164944.327019-1-matthew.auld@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/2] lib/dmabuf_sync_file:
 move common stuff into lib
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 01, 2022 at 04:49:43PM +0000, Matthew Auld wrote:
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

Add documentation to all non-static functions in lib.

-- 
Petri Latvala



> diff --git a/lib/dmabuf_sync_file.h b/lib/dmabuf_sync_file.h
> new file mode 100644
> index 00000000..08da8150
> --- /dev/null
> +++ b/lib/dmabuf_sync_file.h
> @@ -0,0 +1,19 @@
> +/* SPDX-License-Identifier: MIT */
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
>  
> +#ifdef __linux__
> +#include <linux/dma-buf.h>
> +#endif
> +#include <sys/poll.h>
> +
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
