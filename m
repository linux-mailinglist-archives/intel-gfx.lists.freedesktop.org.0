Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B161CA7BA
	for <lists+intel-gfx@lfdr.de>; Fri,  8 May 2020 11:59:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 121136E14C;
	Fri,  8 May 2020 09:59:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0ACCC6E14C
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 May 2020 09:59:46 +0000 (UTC)
IronPort-SDR: 4DzslaxenBnWDb9LlIEiwewZtXZLb+UWcvvUw65Bbh9NPD49nj0qQECJqQYtBkGdyb87x+4ynH
 GmVZBkOuibJw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2020 02:59:46 -0700
IronPort-SDR: wNtX70dJFjnKimSGD0eFgCaKsSyEjFpl/1xLHpV/vLqB4hQMxZYm2CDJzFhZRDoscxgCYerm5U
 msJsku2KFo3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,367,1583222400"; d="scan'208";a="278902720"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 08 May 2020 02:59:45 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 399115C1DC1; Fri,  8 May 2020 12:57:37 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200508092933.738-1-chris@chris-wilson.co.uk>
References: <20200508092933.738-1-chris@chris-wilson.co.uk>
Date: Fri, 08 May 2020 12:57:37 +0300
Message-ID: <87lfm2ycj2.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915: Ignore submit-fences on the
 same timeline
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

> While we ordinarily do not skip submit-fences due to the accompanying
> hook that we want to callback on execution, a submit-fence on the same
> timeline is meaningless.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_request.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 589739bfee25..be2ce9065a29 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -1242,6 +1242,9 @@ i915_request_await_execution(struct i915_request *rq,
>  			continue;
>  		}
>  
> +		if (fence->context == rq->fence.context)
> +			continue;
> +
>  		/*
>  		 * We don't squash repeated fence dependencies here as we
>  		 * want to run our callback in all cases.

The comment in here makes me nervous. Is this skipping on same context
other than squashing?

-Mika

> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
