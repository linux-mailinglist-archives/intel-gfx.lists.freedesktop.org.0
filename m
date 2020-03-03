Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F28A177945
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 15:41:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 893C66EA78;
	Tue,  3 Mar 2020 14:41:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 445046EA7D;
 Tue,  3 Mar 2020 14:41:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 06:40:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="274221383"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga002.fm.intel.com with ESMTP; 03 Mar 2020 06:40:44 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id C84B25C1D7C; Tue,  3 Mar 2020 16:39:28 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200303143137.1615349-1-chris@chris-wilson.co.uk>
References: <20200303143137.1615349-1-chris@chris-wilson.co.uk>
Date: Tue, 03 Mar 2020 16:39:28 +0200
Message-ID: <87lfoh5wpr.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_create: Fix 'files'
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> The test is supposed to create a context for each execution, so do so.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  tests/i915/gem_ctx_create.c | 20 +++++++++++---------
>  1 file changed, 11 insertions(+), 9 deletions(-)
>
> diff --git a/tests/i915/gem_ctx_create.c b/tests/i915/gem_ctx_create.c
> index 2c44a3e3e..d9192fbab 100644
> --- a/tests/i915/gem_ctx_create.c
> +++ b/tests/i915/gem_ctx_create.c
> @@ -178,7 +178,7 @@ static void active(int fd, const struct intel_execution_engine2 *e,
>  
>  			execbuf.flags = ppgtt_engines[child];
>  
> -			while (!*(volatile unsigned *)shared) {
> +			while (!READ_ONCE(*shared)) {

Pleasing.

>  				obj.handle = gem_create(fd, 4096 << 10);
>  				gem_write(fd, obj.handle, 0, &bbe, sizeof(bbe));
>  
> @@ -209,17 +209,19 @@ static void active(int fd, const struct intel_execution_engine2 *e,
>  
>  		clock_gettime(CLOCK_MONOTONIC, &start);
>  		do {
> -			do {
> -				execbuf.rsvd1 = ctx;
> -				for (unsigned n = 0; n < nengine; n++) {
> -					execbuf.flags = engines[n];
> -					gem_execbuf(fd, &execbuf);
> -				}
> -				gem_context_destroy(fd, execbuf.rsvd1);
> -			} while (++count & 1023);
> +			execbuf.rsvd1 = gem_context_clone_with_engines(fd, ctx);
> +			for (unsigned n = 0; n < nengine; n++) {
> +				execbuf.flags = engines[n];
> +				gem_execbuf(fd, &execbuf);
> +			}
> +			gem_context_destroy(fd, execbuf.rsvd1);
> +			count++;
> +
>  			clock_gettime(CLOCK_MONOTONIC, &end);
>  		} while (elapsed(&start, &end) < timeout);
>  
> +		gem_context_destroy(fd, ctx);

Tidy.

Well as the test name is terse as 'active' I can't argue that it should or
should not create a context.

But tossing the same ctx for each execbuf looks fruitless enough.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> +
>  		gem_sync(fd, obj.handle);
>  		clock_gettime(CLOCK_MONOTONIC, &end);
>  		igt_info("[%d] Context creation + execution: %.3f us\n",
> -- 
> 2.25.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
