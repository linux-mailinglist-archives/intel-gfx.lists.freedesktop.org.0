Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3CD642CD5
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 17:31:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5A3C10E0DC;
	Mon,  5 Dec 2022 16:31:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED6CF10E0A2;
 Mon,  5 Dec 2022 16:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670257894; x=1701793894;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FTSQBCayE+Z/wucbuAdYrM8SarLdA1RQRu1NcNVq6XM=;
 b=RBYrVxXP1Q0B22yA9f7SVk1WNH/HOqelZgr/k4+/EtufnyLZ8BuOas9p
 8UlSJexNkiJVCd8soou6dcNMSCjRMI+Qf42FAWrX+jt0iUza8xm2BEyLt
 1Lr1PvM9dAQSjg0Cevfk9JEIWK1eSi55P4l88TKClsQg0y6pUE3drD5MH
 Ne55vCdnRShSU80QRB3MDpPeq2p+wdw83PbMiwcOSvSuUFDXOlJGXbD1N
 s5sJ8Q2WNtXKFMuvCI9k3S3r8FMzaWmGcO9AMHqgut6UqaG5vMrqOlaAl
 nAxeJPdd/HUQJmHf5RNh0Cc+y/5RC+2KYI3TFmTmcdw0+0nRM72P59hUi A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="315097691"
X-IronPort-AV: E=Sophos;i="5.96,219,1665471600"; d="scan'208";a="315097691"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 08:31:31 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="770403819"
X-IronPort-AV: E=Sophos;i="5.96,219,1665471600"; d="scan'208";a="770403819"
Received: from idominik-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.5.135])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 08:31:29 -0800
Date: Mon, 5 Dec 2022 17:31:26 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <Y44c3jwNu1wpALfv@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Petri Latvala <petri.latvala@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
References: <20221202120242.425128-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221202120242.425128-1-matthew.auld@intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 1/2] lib/dmabuf_sync_file: move
 common stuff into lib
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

Hi Matt,

after re-reading I have few more nits.

On 2022-12-02 at 12:02:41 +0000, Matthew Auld wrote:
> So we can use this across different tests.
> 
> v2
>   - Add docs for everything (Petri)
>   - Add missing copyright and fix headers slightly (Kamil)
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> Cc: Petri Latvala <petri.latvala@intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  .../igt-gpu-tools/igt-gpu-tools-docs.xml      |   1 +
>  lib/dmabuf_sync_file.c                        | 211 ++++++++++++++++++
>  lib/dmabuf_sync_file.h                        |  26 +++
>  lib/meson.build                               |   1 +
>  tests/dmabuf_sync_file.c                      | 133 +----------
>  5 files changed, 243 insertions(+), 129 deletions(-)
>  create mode 100644 lib/dmabuf_sync_file.c
>  create mode 100644 lib/dmabuf_sync_file.h
> 
> diff --git a/docs/reference/igt-gpu-tools/igt-gpu-tools-docs.xml b/docs/reference/igt-gpu-tools/igt-gpu-tools-docs.xml
> index 1ce842f4..102c8a89 100644
> --- a/docs/reference/igt-gpu-tools/igt-gpu-tools-docs.xml
> +++ b/docs/reference/igt-gpu-tools/igt-gpu-tools-docs.xml
> @@ -15,6 +15,7 @@
>  
>    <chapter>
>      <title>API Reference</title>
> +    <xi:include href="xml/dmabuf_sync_file.xml"/>
>      <xi:include href="xml/drmtest.xml"/>
>      <xi:include href="xml/igt_alsa.xml"/>
>      <xi:include href="xml/igt_audio.xml"/>
> diff --git a/lib/dmabuf_sync_file.c b/lib/dmabuf_sync_file.c
> new file mode 100644
> index 00000000..bcce2486
> --- /dev/null
> +++ b/lib/dmabuf_sync_file.c
> @@ -0,0 +1,211 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2022 Intel Corporation
> + */
> +
> +#include "igt.h"
> +#include "igt_vgem.h"
> +#include "sw_sync.h"
> +
> +#include "dmabuf_sync_file.h"
> +
> +/**
> + * SECTION: dmabuf_sync_file
> + * @short_description: DMABUF importing/exporting fencing support library
> + * @title: DMABUF Sync File
> + * @include: dmabuf_sync_file.h
> + */
> +
> +struct igt_dma_buf_sync_file {
> +	__u32 flags;
> +	__s32 fd;
> +};
> +
> +#define IGT_DMA_BUF_IOCTL_EXPORT_SYNC_FILE _IOWR(DMA_BUF_BASE, 2, struct igt_dma_buf_sync_file)
> +#define IGT_DMA_BUF_IOCTL_IMPORT_SYNC_FILE _IOW(DMA_BUF_BASE, 3, struct igt_dma_buf_sync_file)
> +
> +/**
> + * has_dmabuf_export_sync_file:
> + * @fd: The open drm fd
> + *
> + * Check if the kernel supports exporting a sync file from dmabuf.
> + */
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

imho we should not explode here, it was ok in test but in lib
we should just return false in case of unexpected error, you can
add igt_debug if you think it will help.
This may lead to change in place where you use it, like
	igt_require(has_dmabuf_export_sync_file(fd));

> +
> +	return ret == 0;
> +}
> +
> +/**
> + * dmabuf_export_sync_file:
> + * @dmabuf: The dmabuf fd
> + * @flags: The flags to control the behaviour
> + *
> + * Take a snapshot of the current dma-resv fences in the dmabuf, and export as a
> + * syncfile. The @flags should at least specify either DMA_BUF_SYNC_WRITE or
> + * DMA_BUF_SYNC_READ, depending on if we care about the read or write fences.
> + */
> +int dmabuf_export_sync_file(int dmabuf, uint32_t flags)

As you do not check for errors so this should be 
int __dmabuf_export_sync_file(int dmabuf, uint32_t flags)

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
> +/**
> + * has_dmabuf_import_sync_file:
> + * @fd: The open drm fd
> + *
> + * Check if the kernel supports importing a sync file into a dmabuf.
> + */
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

Same here, return false instead of assert.

> +
> +	return ret == 0;
> +}
> +
> +/**
> + * dmabuf_import_sync_file:
> + * @dmabuf: The dmabuf fd
> + * @flags: The flags to control the behaviour
> + * @sync_fd: The sync file (i.e our fence) to import
> + *
> + * Import the sync file @sync_fd, into the dmabuf. The @flags should at least
> + * specify DMA_BUF_SYNC_WRITE or DMA_BUF_SYNC_READ, depending on if we are
> + * importing the @sync_fd as a read or write fence.
> + */
> +void dmabuf_import_sync_file(int dmabuf, uint32_t flags, int sync_fd)

Same here, no error checks so use __ like:
void __dmabuf_import_sync_file(int dmabuf, uint32_t flags, int sync_fd)

> +{
> +	struct igt_dma_buf_sync_file arg;
> +
> +	arg.flags = flags;
> +	arg.fd = sync_fd;
> +	do_ioctl(dmabuf, IGT_DMA_BUF_IOCTL_IMPORT_SYNC_FILE, &arg);
> +}
> +
> +/**
> + * dmabuf_import_timeline_fence:
> + * @dmabuf: The dmabuf fd
> + * @flags: The flags to control the behaviour
> + * @timeline: The sync file timeline where the new fence is created
> + * @seqno: The sequence number to use for the fence
> + *
> + * Create a new fence as part of @timeline, and import as a sync file into the
> + * dmabuf.  The @flags should at least specify DMA_BUF_SYNC_WRITE or
> + * DMA_BUF_SYNC_READ, depending on if we are importing the new fence as a read
> + * or write fence.
> + */
> +void dmabuf_import_timeline_fence(int dmabuf, uint32_t flags,

Same here, no error checks so use __ before function name.

> +				  int timeline, uint32_t seqno)
> +{
> +	int fence;
> +
> +	fence = sw_sync_timeline_create_fence(timeline, seqno);
> +	dmabuf_import_sync_file(dmabuf, flags, fence);
> +	close(fence);
> +}
> +
> +/**
> + * dmabuf_busy:
> + * @dmabuf: The dmabuf fd
> + * @flags: The flags to control the behaviour
> + *
> + * Check if the fences in the dmabuf are still busy. The @flags should at least
> + * specify DMA_BUF_SYNC_WRITE or DMA_BUF_SYNC_READ, depending on if we are
> + * checking if the read or read fences have all signalled. Or DMA_BUF_SYNC_RW if
> + * we care about both.
> + */
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
> +/**
> + * sync_file_busy:
> + * @sync_file: The sync file to check
> + *
> + * Check if the @sync_file is still busy or not.
> + */
> +bool sync_file_busy(int sync_file)
> +{
> +	struct pollfd pfd = { .fd = sync_file, .events = POLLIN };
> +	return poll(&pfd, 1, 0) == 0;
> +}
> +
> +/**
> + * dmabuf_sync_file_busy:
> + * @dmabuf: The dmabuf fd
> + * @flags: The flags to control the behaviour
> + *
> + * Export the current fences in @dmabuf as a sync file and check if still busy.
> + * The @flags should at least contain DMA_BUF_SYNC_WRITE or DMA_BUF_SYNC_READ,
> + * to specify which fences are to be exported from the @dmabuf and checked if
> + * busy. Or DMA_BUF_SYNC_RW if we care about both.
> + */
> +bool dmabuf_sync_file_busy(int dmabuf, uint32_t flags)
> +{
> +	int sync_file;
> +	bool busy;
> +
> +	sync_file = dmabuf_export_sync_file(dmabuf, flags);

Check for error here.

Regards,
Kamil

> +	busy = sync_file_busy(sync_file);
> +	close(sync_file);
> +
> +	return busy;
> +}
> diff --git a/lib/dmabuf_sync_file.h b/lib/dmabuf_sync_file.h
> new file mode 100644
> index 00000000..d642ff30
> --- /dev/null
> +++ b/lib/dmabuf_sync_file.h
> @@ -0,0 +1,26 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2022 Intel Corporation
> + */
> +
> +#ifndef DMABUF_SYNC_FILE_H
> +#define DMABUF_SYNC_FILE_H
> +
> +#ifdef __linux__
> +#include <linux/dma-buf.h>
> +#endif
> +#include <sys/poll.h>
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
> index 2179a76d..25bb6ad7 100644
> --- a/tests/dmabuf_sync_file.c
> +++ b/tests/dmabuf_sync_file.c
> @@ -1,140 +1,15 @@
>  // SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2022 Intel Corporation
> + */
>  
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
