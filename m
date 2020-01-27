Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C65514A13B
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 10:55:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE53C6EAAF;
	Mon, 27 Jan 2020 09:55:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3A936EABC
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 09:55:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 01:55:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,369,1574150400"; d="scan'208";a="251898281"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga004.fm.intel.com with ESMTP; 27 Jan 2020 01:55:31 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id D406B5C1DFE; Mon, 27 Jan 2020 11:54:25 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200124213903.611152-1-chris@chris-wilson.co.uk>
References: <20200124213903.611152-1-chris@chris-wilson.co.uk>
Date: Mon, 27 Jan 2020 11:54:25 +0200
Message-ID: <87y2ttmdgu.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915_pm_rps: Be wary if RP0 == RPn
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
Cc: igt-dev@lsts.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> If the HW min/max frequencies are the same, there is not much range to
> deal with and a couple of our invalid tests become confused as they are
> actually no-ops.
>
> Error reporting in i915_pm_rps is rudimentary and we deserve better.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1008
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  tests/i915/i915_pm_rps.c | 16 ++++++++++------
>  1 file changed, 10 insertions(+), 6 deletions(-)
>
> diff --git a/tests/i915/i915_pm_rps.c b/tests/i915/i915_pm_rps.c
> index b65eefb03..56c745a5b 100644
> --- a/tests/i915/i915_pm_rps.c
> +++ b/tests/i915/i915_pm_rps.c
> @@ -397,9 +397,11 @@ static void min_max_config(void (*check)(void), bool load_gpu)
>  	writeval_inval(sysfs_files[MIN].filp, origfreqs[RP0] + 1000);
>  	check();
>  
> -	igt_debug("\nDecrease max to RPn (invalid)...\n");
> -	writeval_inval(sysfs_files[MAX].filp, origfreqs[RPn]);
> -	check();
> +	if (origfreqs[RPn] < origfreqs[RP0]) {
> +		igt_debug("\nDecrease max to RPn (invalid)...\n");
> +		writeval_inval(sysfs_files[MAX].filp, origfreqs[RPn]);
> +		check();
> +	}
>  
>  	igt_debug("\nDecrease min to midpoint...\n");
>  	writeval(sysfs_files[MIN].filp, fmid);
> @@ -429,9 +431,11 @@ static void min_max_config(void (*check)(void), bool load_gpu)
>  	writeval_inval(sysfs_files[MAX].filp, 0);
>  	check();
>  
> -	igt_debug("\nIncrease min to RP0 (invalid)...\n");
> -	writeval_inval(sysfs_files[MIN].filp, origfreqs[RP0]);
> -	check();
> +	if (origfreqs[RP0] > origfreqs[RP0]) {

RPn?
-Mika

> +		igt_debug("\nIncrease min to RP0 (invalid)...\n");
> +		writeval_inval(sysfs_files[MIN].filp, origfreqs[RP0]);
> +		check();
> +	}
>  
>  	igt_debug("\nIncrease max to midpoint...\n");
>  	writeval(sysfs_files[MAX].filp, fmid);
> -- 
> 2.25.0
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
