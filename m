Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 078C41996FE
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 15:09:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5760A6E323;
	Tue, 31 Mar 2020 13:09:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F7E76E323
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 13:09:23 +0000 (UTC)
IronPort-SDR: MZlamVjl2BxKI6KF64TwcqAzDmIcoVExtSMexonUFsVZsWqcNXqxGd08KQTO0kbzp9DYI8mxmU
 VS2CE9/9GD5A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 06:09:22 -0700
IronPort-SDR: DdGVX40j+lPfGyTKLGGZ97/euhkWZjVwykgF3KSJAdoAwqkmhfvOpvZGLpnAQg66MfRWMJEB+s
 aGaMUmenCvFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,327,1580803200"; d="scan'208";a="395486369"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 31 Mar 2020 06:09:21 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 369255C0D7B; Tue, 31 Mar 2020 16:07:44 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200331091459.29179-1-chris@chris-wilson.co.uk>
References: <20200331091459.29179-1-chris@chris-wilson.co.uk>
Date: Tue, 31 Mar 2020 16:07:44 +0300
Message-ID: <87imikpt9b.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/selftests: Tidy up an error
 message for live_error_interrupt
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Since we don't wait for the error interrupt to reset, restart and then
> complete the guilty request, clean up the error messages.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/selftest_lrc.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index d3e163c93e22..b929e52a8f5a 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -649,9 +649,9 @@ static int live_error_interrupt(void *arg)
>  						 error_repr(p->error[i]));
>  
>  				if (!i915_request_started(client[i])) {
> -					pr_debug("%s: %s request not stated!\n",
> -						 engine->name,
> -						 error_repr(p->error[i]));
> +					pr_err("%s: %s request not started!\n",
> +					       engine->name,
> +					       error_repr(p->error[i]));
>  					err = -ETIME;
>  					goto out;
>  				}
> @@ -659,9 +659,10 @@ static int live_error_interrupt(void *arg)
>  				/* Kick the tasklet to process the error */
>  				intel_engine_flush_submission(engine);
>  				if (client[i]->fence.error != p->error[i]) {
> -					pr_err("%s: %s request completed with wrong error code: %d\n",
> +					pr_err("%s: %s request (%s) with wrong error code: %d\n",
>  					       engine->name,
>  					       error_repr(p->error[i]),
> +					       i915_request_completed(client[i]) ? "completed" : "running",
>  					       client[i]->fence.error);
>  					err = -EINVAL;
>  					goto out;
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
