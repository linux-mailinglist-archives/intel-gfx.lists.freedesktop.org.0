Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B7C22C49D
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 13:57:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F7316E957;
	Fri, 24 Jul 2020 11:57:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F5156E957
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 11:57:52 +0000 (UTC)
IronPort-SDR: /ueARCUDD6iXpa+mnBJ5tkIP0/E9YjDhMRRPWurUV8jXqx+iQ8QUZq2TMRG5wfk+8INM0ift6q
 zyniBGNJCuXA==
X-IronPort-AV: E=McAfee;i="6000,8403,9691"; a="130257748"
X-IronPort-AV: E=Sophos;i="5.75,390,1589266800"; d="scan'208";a="130257748"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 04:57:51 -0700
IronPort-SDR: EP8aNMfHMk6+hMZPwIK2Y1up5hlJKGUzRufruTYvjo/dwj97IuAmo8kq3TdzYKE72nrWhH8nRT
 VeiqsoCMseiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,390,1589266800"; d="scan'208";a="463203901"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga005.jf.intel.com with ESMTP; 24 Jul 2020 04:57:50 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id D87695C0D00; Fri, 24 Jul 2020 14:57:21 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200724115352.19892-3-chris@chris-wilson.co.uk>
References: <20200724115352.19892-1-chris@chris-wilson.co.uk>
 <20200724115352.19892-3-chris@chris-wilson.co.uk>
Date: Fri, 24 Jul 2020 14:57:21 +0300
Message-ID: <87r1t115y6.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/selftests: Add compiler
 paranoia for checking HWSP values
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

> Since we want to read the values from the HWSP as written to by the GPU,
> warn the compiler that the values are volatile.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/selftest_timeline.c | 23 +++++++++++----------
>  1 file changed, 12 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
> index fb5b7d3498a6..1203b7460557 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
> @@ -491,7 +491,7 @@ checked_intel_timeline_create(struct intel_gt *gt)
>  	if (IS_ERR(tl))
>  		return tl;
>  
> -	if (*tl->hwsp_seqno != tl->seqno) {
> +	if (READ_ONCE(*tl->hwsp_seqno) != tl->seqno) {
>  		pr_err("Timeline created with incorrect breadcrumb, found %x, expected %x\n",
>  		       *tl->hwsp_seqno, tl->seqno);
>  		intel_timeline_put(tl);
> @@ -561,9 +561,9 @@ static int live_hwsp_engine(void *arg)
>  	for (n = 0; n < count; n++) {
>  		struct intel_timeline *tl = timelines[n];
>  
> -		if (!err && *tl->hwsp_seqno != n) {
> -			pr_err("Invalid seqno stored in timeline %lu @ %x, found 0x%x\n",
> -			       n, tl->hwsp_offset, *tl->hwsp_seqno);
> +		if (!err && READ_ONCE(*tl->hwsp_seqno) != n) {
> +			GEM_TRACE_ERR("Invalid seqno:%lu stored in timeline %llu @ %x, found 0x%x\n",
> +				      n, tl->fence_context, tl->hwsp_offset, *tl->hwsp_seqno);
>  			GEM_TRACE_DUMP();
>  			err = -EINVAL;
>  		}
> @@ -633,9 +633,9 @@ static int live_hwsp_alternate(void *arg)
>  	for (n = 0; n < count; n++) {
>  		struct intel_timeline *tl = timelines[n];
>  
> -		if (!err && *tl->hwsp_seqno != n) {
> -			pr_err("Invalid seqno stored in timeline %lu @ %x, found 0x%x\n",
> -			       n, tl->hwsp_offset, *tl->hwsp_seqno);
> +		if (!err && READ_ONCE(*tl->hwsp_seqno) != n) {
> +			GEM_TRACE_ERR("Invalid seqno:%lu stored in timeline %llu @ %x, found 0x%x\n",
> +				      n, tl->fence_context, tl->hwsp_offset, *tl->hwsp_seqno);
>  			GEM_TRACE_DUMP();
>  			err = -EINVAL;
>  		}
> @@ -733,7 +733,8 @@ static int live_hwsp_wrap(void *arg)
>  			goto out;
>  		}
>  
> -		if (*hwsp_seqno[0] != seqno[0] || *hwsp_seqno[1] != seqno[1]) {
> +		if (READ_ONCE(*hwsp_seqno[0]) != seqno[0] ||
> +		    READ_ONCE(*hwsp_seqno[1]) != seqno[1]) {
>  			pr_err("Bad timeline values: found (%x, %x), expected (%x, %x)\n",
>  			       *hwsp_seqno[0], *hwsp_seqno[1],
>  			       seqno[0], seqno[1]);
> @@ -966,9 +967,9 @@ static int live_hwsp_recycle(void *arg)
>  				break;
>  			}
>  
> -			if (*tl->hwsp_seqno != count) {
> -				pr_err("Invalid seqno stored in timeline %lu @ tl->hwsp_offset, found 0x%x\n",
> -				       count, *tl->hwsp_seqno);
> +			if (READ_ONCE(*tl->hwsp_seqno) != count) {
> +				GEM_TRACE_ERR("Invalid seqno:%lu stored in timeline %llu @ %x found 0x%x\n",
> +					      count, tl->fence_context, tl->hwsp_offset, *tl->hwsp_seqno);
>  				GEM_TRACE_DUMP();
>  				err = -EINVAL;
>  			}
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
