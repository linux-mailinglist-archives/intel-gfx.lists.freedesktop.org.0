Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C508D149F0C
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 07:41:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E74E6E478;
	Mon, 27 Jan 2020 06:41:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73B976E471;
 Mon, 27 Jan 2020 06:41:10 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jan 2020 22:41:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,368,1574150400"; d="scan'208";a="427191145"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga005.fm.intel.com with ESMTP; 26 Jan 2020 22:41:08 -0800
Date: Mon, 27 Jan 2020 12:11:10 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200127064110.GB1840@intel.com>
References: <20200123122711.1390696-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123122711.1390696-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/dumb_buffer: Try to compute the
 largest possible dumb buffer
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-01-23 at 12:27:11 +0000, Chris Wilson wrote:
> For our threaded clear test, we want to create as many buffers as can
> fit into the available memory. However, since we don't know the size of
> that available memory, it can be easy to create too large or too many
> buffers, and waste our time testing the unobtainable. Instead, try
> probing the available space by trying to create the largest dumb buffer
> we possibly can, and assume that is the equivalent to the available
> space.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Ramalingam C <ramalingam.c@intel.com>
> ---
>  tests/dumb_buffer.c | 68 +++++++++++++++++++++++++++++++++++++++------
>  1 file changed, 59 insertions(+), 9 deletions(-)
> 
> diff --git a/tests/dumb_buffer.c b/tests/dumb_buffer.c
> index 3d2dc9966..c1e7b4d3b 100644
> --- a/tests/dumb_buffer.c
> +++ b/tests/dumb_buffer.c
> @@ -31,18 +31,18 @@
>   * combinations are rejected.
>   */
>  
> -#include <stdlib.h>
> -#include <sys/ioctl.h>
> -#include <stdio.h>
> -#include <string.h>
> +#include <errno.h>
>  #include <fcntl.h>
>  #include <inttypes.h>
> -#include <errno.h>
> -#include <sys/stat.h>
> -#include <sys/time.h>
> -#include <getopt.h>
>  #include <pthread.h>
> +#include <signal.h>
>  #include <stdatomic.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <string.h>
> +#include <sys/ioctl.h>
> +#include <sys/stat.h>
> +#include <sys/time.h>
>  
>  #include <drm.h>
>  
> @@ -325,12 +325,62 @@ static void *thread_clear(void *data)
>  	return (void *)(uintptr_t)checked;
>  }
>  
> +static jmp_buf sigjmp;
> +
> +static void sigprobe(int sig)
> +{
> +	longjmp(sigjmp, sig);
> +}
> +
> +static uint64_t estimate_largest_dumb_buffer(int fd)
> +{
> +	sighandler_t old_sigbus = signal(SIGBUS, sigprobe);
> +	sighandler_t old_sigsegv = signal(SIGSEGV, sigprobe);
> +	struct drm_mode_create_dumb create = {
> +		.bpp = 32,
> +		.width = 1 << 20, /* in pixels */
> +		.height = 1, /* in rows */
> +	};
> +	volatile uint64_t largest = 0;
> +	char * volatile ptr = NULL;
> +
> +	if (setjmp(sigjmp)) {
> +		if (ptr)
> +			munmap(ptr, create.size);
> +
> +		signal(SIGBUS, old_sigbus);
> +		signal(SIGSEGV, old_sigsegv);
> +
> +		igt_info("Largest dumb buffer sucessfully created: %'"PRIu64" bytes\n",
> +			 largest);
> +		return largest / PAGE_SIZE;
> +	}
> +
> +	for (create.height = 1; create.height; create.height *= 2) {
> +		if (__dumb_create(fd, &create))
> +			longjmp(sigjmp, SIGABRT);
> +
> +		ptr = __dumb_map(fd, create.handle, create.size, PROT_READ);
> +		dumb_destroy(fd, create.handle);
> +		if (!ptr)
> +			longjmp(sigjmp, SIGABRT);
> +
> +		if (!*ptr)
> +			largest = create.size;
> +
> +		munmap(ptr, create.size);
> +		ptr = NULL;
> +	}
> +
> +	longjmp(sigjmp, SIGABRT);
> +}
> +
>  static void always_clear(int fd, int timeout)
>  {
>  	struct thread_clear arg = {
>  		.fd = fd,
>  		.timeout = timeout,
> -		.max = intel_get_avail_ram_mb() << (20 - 12), /* in pages */
> +		.max = estimate_largest_dumb_buffer(fd), /* in pages */
LGTM. I will test with other required LMEM changes.

Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
>  	};
>  	const int ncpus = sysconf(_SC_NPROCESSORS_ONLN);
>  	unsigned long checked;
> -- 
> 2.25.0
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
