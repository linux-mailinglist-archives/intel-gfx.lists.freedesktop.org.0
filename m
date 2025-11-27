Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73368C8D8A0
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 10:28:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EE3A10E7EA;
	Thu, 27 Nov 2025 09:28:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="hYSjiIK+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 901DC10E7EA;
 Thu, 27 Nov 2025 09:28:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id AA3E760017;
 Thu, 27 Nov 2025 09:28:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8A95C4CEF8;
 Thu, 27 Nov 2025 09:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1764235680;
 bh=XIUY6hkHE+X5GOQVLvRGEK6KrKGPW2wqdwJmTf8d1Rk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hYSjiIK+o3wpi9SAYfCExLsdlwiuQidpkAS/lGc6EIokkvkyaxmSuQXIo6KS9fbzF
 LcZtSKfXfWFlbP2rhMluoLlK7aQKdSi3CRegnJOGfN4y05S3kZ0Aicu/+hfPLekQU/
 RUdmorLs3A7QtSqJzgwpmL9PGMwwxGSA2DhFK7zJISqns8qEjkQS0wt41NM4KruAcj
 722amKQyB67f64K7fWioj2s5Dy4wgdhx52cCXkCVIs5PrG153OlCRkuiEKQbIzAg8o
 ytMQ9Oy9WKxbhm6cbzBF1jI57Yp3lj6+ewe4i+d2FpUB1rt7GnB+8e9IwLIK4UUVeG
 ELttvBKKX9H6g==
Date: Thu, 27 Nov 2025 10:27:55 +0100
From: Christian Brauner <brauner@kernel.org>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, 
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, linux-fsdevel@vger.kernel.org
Subject: Re: REGRESSION on linux-next (next-20251125)
Message-ID: <20251127-agenda-befinden-61628473b16b@brauner>
References: <a27eb5f4-c4c9-406c-9b53-93f7888db14a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a27eb5f4-c4c9-406c-9b53-93f7888db14a@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 27, 2025 at 11:35:32AM +0530, Borah, Chaitanya Kumar wrote:
> Hello Christian,
> 
> Hope you are doing well. I am Chaitanya from the linux graphics team in
> Intel.
> 
> This mail is regarding a regression we are seeing in our CI runs[1] on
> linux-next repository.
> 
> Since the version next-20251125 [2], we are seeing the following regression
> 
> `````````````````````````````````````````````````````````````````````````````````
> (kms_busy:5818) sw_sync-CRITICAL: Test assertion failure function
> sw_sync_timeline_create_fence, file ../lib/sw_sync.c:117:
> (kms_busy:5818) sw_sync-CRITICAL: Failed assertion:
> sw_sync_fd_is_valid(fence)
> (kms_busy:5818) sw_sync-CRITICAL: Last errno: 2, No such file or directory
> (kms_busy:5818) sw_sync-CRITICAL: Created invalid fence
> (kms_busy:5818) igt_core-INFO: Stack trace:
> (kms_busy:5818) igt_core-INFO:   #0 ../lib/igt_core.c:2075
> __igt_fail_assert()
> (kms_busy:5818) igt_core-INFO:   #1 [sw_sync_timeline_create_fence+0x5f]
> (kms_busy:5818) igt_core-INFO:   #2 ../tests/intel/kms_busy.c:122
> flip_to_fb()
> (kms_busy:5818) igt_core-INFO:   #3 ../tests/intel/kms_busy.c:220
> test_flip()
> (kms_busy:5818) igt_core-INFO:   #4 ../tests/intel/kms_busy.c:459
> __igt_unique____real_main411()
> (kms_busy:5818) igt_core-INFO:   #5 ../tests/intel/kms_busy.c:411 main()
> (kms_busy:5818) igt_core-INFO:   #6 [__libc_init_first+0x8a]
> (kms_busy:5818) igt_core-INFO:   #7 [__libc_start_main+0x8b]
> (kms_busy:5818) igt_core-INFO:   #8 [_start+0x25]
> `````````````````````````````````````````````````````````````````````````````````
> Details log can be found in [3].
> 
> After bisecting the tree, the following patch [4] seems to be the first
> "bad" commit
> 
> `````````````````````````````````````````````````````````````````````````````````````````````````````````
> commit 8459303c886151b71e8de08b73e384fd2bb7499c
> Author: Christian Brauner brauner@kernel.org
> Date:   Sun Nov 23 17:33:55 2025 +0100
> 
>     dma: port sw_sync_ioctl_create_fence() to FD_PREPARE()
> `````````````````````````````````````````````````````````````````````````````````````````````````````````
> 
> We also verified that if we revert the patch the issue is not seen.
> 
> Could you please check why the patch causes this regression and provide a
> fix if necessary?

Gah, sorry about this:

diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
index dc2e79a1b196..8d827b03e84c 100644
--- a/drivers/dma-buf/sync_file.c
+++ b/drivers/dma-buf/sync_file.c
@@ -244,7 +244,8 @@ static long sync_file_ioctl_merge(struct sync_file *sync_file,
        if (copy_to_user((void __user *)arg, &data, sizeof(data)))
                return -EFAULT;

-       return fd_publish(fdf);
+       fd_publish(fdf);
+       return 0;
 }

 static int sync_fill_fence_info(struct dma_fence *fence,

Pushing out the fix now. Can I trigger a new test myself somehow?
