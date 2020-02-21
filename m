Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3106C16701F
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 08:20:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E81486EEAA;
	Fri, 21 Feb 2020 07:20:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2988F6EEAA;
 Fri, 21 Feb 2020 07:20:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 23:20:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,467,1574150400"; d="scan'208";a="225133740"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga007.jf.intel.com with ESMTP; 20 Feb 2020 23:20:46 -0800
Received: from [10.237.72.173] (mperes-desk.fi.intel.com [10.237.72.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 9F6E35802C8;
 Thu, 20 Feb 2020 23:20:45 -0800 (PST)
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200220165301.1996742-1-chris@chris-wilson.co.uk>
From: Martin Peres <martin.peres@linux.intel.com>
Message-ID: <8a1d8cc5-dbb4-88f4-06d9-ccaa79c41f0c@linux.intel.com>
Date: Fri, 21 Feb 2020 09:20:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200220165301.1996742-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_eio: Trim kms workload
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

On 2020-02-20 18:53, Chris Wilson wrote:
> We don't need to try reset-stress on every engine with the display, just
> once is enough to stress any interlinkage.

If you say so :)

> 
> This should reduce the runtime to 10s.

That would be appreciated!

> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Martin Peres <martin.peres@linux.intel.com>

The only difference between the previous behaviour and the new one
introduced by the patch is that reset_stress() is called for only the
default exec engine as opposed to all of them previously. So, the patch is:

Reviewed-by: Martin Peres <martin.peres@linux.intel.com>

> ---
>  tests/i915/gem_eio.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/tests/i915/gem_eio.c b/tests/i915/gem_eio.c
> index 0fe51efeb..1ec609410 100644
> --- a/tests/i915/gem_eio.c
> +++ b/tests/i915/gem_eio.c
> @@ -898,8 +898,14 @@ static void test_kms(int i915, igt_display_t *dpy)
>  
>  	test_inflight(i915, 0);
>  	if (gem_has_contexts(i915)) {
> -		test_reset_stress(i915, 0);
> -		test_reset_stress(i915, TEST_WEDGE);
> +		uint32_t ctx = context_create_safe(i915);
> +
> +		reset_stress(i915, ctx,
> +			     "default", I915_EXEC_DEFAULT, 0);
> +		reset_stress(i915, ctx,
> +			     "default", I915_EXEC_DEFAULT, TEST_WEDGE);
> +
> +		gem_context_destroy(i915, ctx);
>  	}
>  
>  	*shared = 1;
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
