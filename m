Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2DC296CBE
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 12:23:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 927766E4F1;
	Fri, 23 Oct 2020 10:23:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C906E6E466;
 Fri, 23 Oct 2020 10:23:30 +0000 (UTC)
IronPort-SDR: sW4LrAZkqFMRU2yh+m+vgF9hyoElJFVZnNR1pVk4C/2i9Z/rq+iQjDRqkSTRrVM4Svv6OSZA2D
 p9Hks2tTkzcQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="229290339"
X-IronPort-AV: E=Sophos;i="5.77,407,1596524400"; d="scan'208";a="229290339"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 03:23:26 -0700
IronPort-SDR: Xt5rz6R7Bt1n018YImoHwTXHwsb4tRWXbh5ryzlyur/vGyS0Ou7qABag9bjRfq6Vw2J7bYO6qn
 f1YHNNem9QXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,407,1596524400"; d="scan'208";a="302718961"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 23 Oct 2020 03:23:25 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 84EF45C2038; Fri, 23 Oct 2020 13:21:45 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201022150943.3041180-1-chris@chris-wilson.co.uk>
References: <20201022150943.3041180-1-chris@chris-wilson.co.uk>
Date: Fri, 23 Oct 2020 13:21:45 +0300
Message-ID: <87tuulqm2u.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_mmap_gtt: Trim
 object size for ptracing
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
Cc: igt-dev@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> For verifying vm_ops.access we only need a page or two to check we both
> advance across a page boundary and find the right offset within a page.
> 16MiB is overkill for the slow uncached reads through the slow ptrace
> interface, so reduce the object size by a couple of orders of magnitude.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  tests/i915/gem_mmap_gtt.c | 23 ++++++++++++-----------
>  1 file changed, 12 insertions(+), 11 deletions(-)
>
> diff --git a/tests/i915/gem_mmap_gtt.c b/tests/i915/gem_mmap_gtt.c
> index 6637bba06..3cce19e9a 100644
> --- a/tests/i915/gem_mmap_gtt.c
> +++ b/tests/i915/gem_mmap_gtt.c
> @@ -525,6 +525,7 @@ static void *memchr_inv(const void *s, int c, size_t n)
>  static void
>  test_ptrace(int fd)
>  {
> +	unsigned long sz = 16 * 4096;
>  	unsigned long AA, CC;
>  	unsigned long *gtt, *cpy;
>  	uint32_t bo;
> @@ -533,16 +534,16 @@ test_ptrace(int fd)
>  	memset(&AA, 0xaa, sizeof(AA));
>  	memset(&CC, 0x55, sizeof(CC));
>  
> -	cpy = malloc(OBJECT_SIZE);
> -	memset(cpy, AA, OBJECT_SIZE);
> +	cpy = malloc(sz);
> +	memset(cpy, AA, sz);
>  
> -	bo = gem_create(fd, OBJECT_SIZE);
> -	gtt = mmap_bo(fd, bo, OBJECT_SIZE);
> -	memset(gtt, CC, OBJECT_SIZE);
> +	bo = gem_create(fd, sz);
> +	gtt = mmap_bo(fd, bo, sz);
> +	memset(gtt, CC, sz);
>  	gem_close(fd, bo);
>  
> -	igt_assert(!memchr_inv(gtt, CC, OBJECT_SIZE));
> -	igt_assert(!memchr_inv(cpy, AA, OBJECT_SIZE));
> +	igt_assert(!memchr_inv(gtt, CC, sz));
> +	igt_assert(!memchr_inv(cpy, AA, sz));
>  
>  	igt_fork(child, 1) {
>  		ptrace(PTRACE_TRACEME, 0, NULL, NULL);
> @@ -553,7 +554,7 @@ test_ptrace(int fd)
>  	pid = wait(NULL);
>  
>  	ptrace(PTRACE_ATTACH, pid, NULL, NULL);
> -	for (int i = 0; i < OBJECT_SIZE / sizeof(long); i++) {
> +	for (int i = 0; i < sz / sizeof(long); i++) {
>  		long ret;
>  
>  		ret = ptrace(PTRACE_PEEKDATA, pid, gtt + i);
> @@ -570,10 +571,10 @@ test_ptrace(int fd)
>  	igt_waitchildren();
>  
>  	/* The contents of the two buffers should now be swapped */
> -	igt_assert(!memchr_inv(gtt, AA, OBJECT_SIZE));
> -	igt_assert(!memchr_inv(cpy, CC, OBJECT_SIZE));
> +	igt_assert(!memchr_inv(gtt, AA, sz));
> +	igt_assert(!memchr_inv(cpy, CC, sz));
>  
> -	munmap(gtt, OBJECT_SIZE);
> +	munmap(gtt, sz);
>  	free(cpy);
>  }
>  
> -- 
> 2.28.0
>
> _______________________________________________
> igt-dev mailing list
> igt-dev@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/igt-dev
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
