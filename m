Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF54911CD74
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 13:50:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 436256E0E3;
	Thu, 12 Dec 2019 12:50:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CE396ED35;
 Thu, 12 Dec 2019 12:50:38 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 04:50:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="216274823"
Received: from emusial-desk.igk.intel.com (HELO localhost) ([172.28.172.70])
 by orsmga003.jf.intel.com with ESMTP; 12 Dec 2019 04:50:36 -0800
Date: Thu, 12 Dec 2019 13:50:35 +0100
From: Ewelina Musial <ewelina.musial@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20191212125035.GA12385@emusial-desk.ger.corp.intel.com>
References: <20191211094243.6939-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211094243.6939-1-janusz.krzysztofik@linux.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/prime_vgem: Give meaningful
 messages on SKIP
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

On Wed, Dec 11, 2019 at 10:42:43AM +0100, Janusz Krzysztofik wrote:
> Messages displayed on SKIPs introduced by commit 92caadb4e551
> ("tests/prime_vgem: Skip basic-read/write subtests if not supported")
> don't inform clearly enough that those SKIPs are expected behavior.
> Fix it.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Cc: Ewelina Musial <ewelina.musial@intel.com>
> ---
>  tests/prime_vgem.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/tests/prime_vgem.c b/tests/prime_vgem.c
> index 6595818c..3bdb2300 100644
> --- a/tests/prime_vgem.c
> +++ b/tests/prime_vgem.c
> @@ -46,7 +46,8 @@ static void test_read(int vgem, int i915)
>  	handle = prime_fd_to_handle(i915, dmabuf);
>  	close(dmabuf);
>  
> -	igt_skip_on(__gem_read(i915, handle, 0, &i, sizeof(i)));
> +	igt_skip_on_f(__gem_read(i915, handle, 0, &i, sizeof(i)),
> +		      "PREAD from dma-buf not supported on this hardware\n");
>  
>  	ptr = vgem_mmap(vgem, &scratch, PROT_WRITE);
>  	for (i = 0; i < 1024; i++)
> @@ -83,7 +84,8 @@ static void test_fence_read(int i915, int vgem)
>  	handle = prime_fd_to_handle(i915, dmabuf);
>  	close(dmabuf);
>  
> -	igt_skip_on(__gem_read(i915, handle, 0, &i, sizeof(i)));
> +	igt_skip_on_f(__gem_read(i915, handle, 0, &i, sizeof(i)),
> +		      "PREAD from dma-buf not supported on this hardware\n");
>  
>  	igt_fork(child, 1) {
>  		close(master[0]);
> @@ -195,7 +197,8 @@ static void test_write(int vgem, int i915)
>  	handle = prime_fd_to_handle(i915, dmabuf);
>  	close(dmabuf);
>  
> -	igt_skip_on(__gem_write(i915, handle, 0, &i, sizeof(i)));
> +	igt_skip_on_f(__gem_write(i915, handle, 0, &i, sizeof(i)),
> +		      "PWRITE to dma-buf not supported on this hardware\n");
>  
>  	ptr = vgem_mmap(vgem, &scratch, PROT_READ);
>  	gem_close(vgem, scratch.handle);
> -- 
> 2.21.0
> 

Reviewed-by: Ewelina Musial <ewelina.musial@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
