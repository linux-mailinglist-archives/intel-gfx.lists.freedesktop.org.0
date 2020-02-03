Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C2715068B
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 14:05:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E213D6E328;
	Mon,  3 Feb 2020 13:05:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D2086E328;
 Mon,  3 Feb 2020 13:05:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 05:05:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,397,1574150400"; d="scan'208";a="219371494"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga007.jf.intel.com with ESMTP; 03 Feb 2020 05:05:24 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 5AB0C5C0D43; Mon,  3 Feb 2020 15:04:32 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200203105401.17340-1-chris@chris-wilson.co.uk>
References: <20200203105401.17340-1-chris@chris-wilson.co.uk>
Date: Mon, 03 Feb 2020 15:04:32 +0200
Message-ID: <87k153akkf.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_eio: Don't mix INVALID_CS
 and the cmdparser
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

> Since the cmdparser causes it to discard the batch with INVALID_CS, we
> are not being as thorough in our testing on gen9/bcs as we expect.
> Furthermore, snb just dies, so don't.

snb funny

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  tests/i915/gem_eio.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/tests/i915/gem_eio.c b/tests/i915/gem_eio.c
> index aa4accc9d..d226d7428 100644
> --- a/tests/i915/gem_eio.c
> +++ b/tests/i915/gem_eio.c
> @@ -187,10 +187,13 @@ static igt_spin_t * __spin_poll(int fd, uint32_t ctx, unsigned long flags)
>  		.engine = flags,
>  		.flags = (IGT_SPIN_FAST |
>  			  IGT_SPIN_NO_PREEMPTION |
> -			  IGT_SPIN_INVALID_CS |
>  			  IGT_SPIN_FENCE_OUT),
>  	};
>  
> +	if (!gem_has_cmdparser(fd, opts.engine) &&
> +	    intel_gen(intel_get_drm_devid(fd)) != 6)
> +		opts.flags |= IGT_SPIN_INVALID_CS;
> +
>  	if (gem_can_store_dword(fd, opts.engine))
>  		opts.flags |= IGT_SPIN_POLL_RUN;
>  
> -- 
> 2.25.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
