Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7346A1D996D
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 16:23:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9856989CCE;
	Tue, 19 May 2020 14:23:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ED3D89CCE
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 14:23:15 +0000 (UTC)
IronPort-SDR: pH8meNGBsRaz9yWSIW4BQ55a/UVEGj08DvhEZSiu7uRqWojwJVxEbScdRZs6mJkUi/+Q+JJbva
 W/rlT1ZMjD+Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 07:23:14 -0700
IronPort-SDR: LHgvqh7AngOS1pANQbeAreiVwT6RRg/XWOxMsBq2wZJSKoZGDge6jMWoXltNN2g2WvRPahu5tf
 /FQvOwxkLtMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="267900216"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga006.jf.intel.com with ESMTP; 19 May 2020 07:23:13 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 916585C03F7; Tue, 19 May 2020 17:20:56 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200519063123.20673-4-chris@chris-wilson.co.uk>
References: <20200519063123.20673-1-chris@chris-wilson.co.uk>
 <20200519063123.20673-4-chris@chris-wilson.co.uk>
Date: Tue, 19 May 2020 17:20:56 +0300
Message-ID: <87o8qkt393.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/12] drm/i915/selftests: Check for an
 initial-breadcrumb in wait_for_submit()
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

> When we look at i915_request_is_started() we must be careful in case we
> are using a request that does not have the initial-breadcrumb and
> instead the is-started is being compared against the end of the previous
> request. This will make wait_for_submit() declare that a request has
> been already submitted too early.


submitted....started...handled_by_gpu.

I guess wait_for_submit is generic enough to cater all cases
but we actually do not wait for submit but we wait for
gpu to reach it.

>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/selftest_lrc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index b71f04db9c6e..f6949cd55e92 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -75,7 +75,7 @@ static bool is_active(struct i915_request *rq)
>  	if (i915_request_on_hold(rq))
>  		return true;
>  
> -	if (i915_request_started(rq))
> +	if (i915_request_has_initial_breadcrumb(rq) && i915_request_started(rq))
>  		return true;
>  
>  	return false;
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
