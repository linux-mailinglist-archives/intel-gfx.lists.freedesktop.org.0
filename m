Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA531E20C5
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2020 13:19:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B875C6E14C;
	Tue, 26 May 2020 11:19:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 973266E14C
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 May 2020 11:19:39 +0000 (UTC)
IronPort-SDR: ldNsdqr+Xb1D0NlJzfGQp94wm4u5r4nfFiG6Pb+FmSABvdjmhSAuo+G4DMKfRg7pDnMpovbs1Y
 5VctaqDbwPEg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 04:19:39 -0700
IronPort-SDR: TIqYlaKqR/MUCFa9K31vv+TKRbqwVhS24ngyh7LdDuBj+PUKKHtNDjS2gowwhNb1U5xW9vHNMx
 lli4NMq26LWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="345141863"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga001.jf.intel.com with ESMTP; 26 May 2020 04:19:37 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 4226C5C2C40; Tue, 26 May 2020 14:17:15 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200525075347.582-4-chris@chris-wilson.co.uk>
References: <20200525075347.582-1-chris@chris-wilson.co.uk>
 <20200525075347.582-4-chris@chris-wilson.co.uk>
Date: Tue, 26 May 2020 14:17:15 +0300
Message-ID: <874ks3t078.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/12] drm/i915/execlists: Shortcircuit
 queue_prio() for no internal levels
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

> If there are no internal levels and the user priority-shift is zero, we
> can help the compiler eliminate some dead code:
>
> Function                                     old     new   delta
> start_timeslice                              169     154     -15
> __execlists_submission_tasklet              4696    4659     -37
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index de5be57ed6d2..3214a4ecc31a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -446,6 +446,9 @@ static int queue_prio(const struct intel_engine_execlists *execlists)
>  	 * we have to flip the index value to become priority.
>  	 */
>  	p = to_priolist(rb);
> +	if (!I915_USER_PRIORITY_SHIFT)
> +		return p->priority;
> +
>  	return ((p->priority + 1) << I915_USER_PRIORITY_SHIFT) - ffs(p->used);
>  }
>  
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
