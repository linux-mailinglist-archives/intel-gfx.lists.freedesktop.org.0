Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B17761FBFBB
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 22:10:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3C346E1CE;
	Tue, 16 Jun 2020 20:10:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7C996E1CE
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 20:10:51 +0000 (UTC)
IronPort-SDR: 2c+1GWXIDtiKqhOsvSvllQe7Jv6QjKH8kl6NOtRcG9XfKR0qWqW8/Ql6QF0UvqL9UNH6Z+cwzs
 9oGZn3nDg7hA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 13:10:35 -0700
IronPort-SDR: lPFrqRwd183Bzt/Nyw5PeGzS4K0J+s+U8lptyYKWBZKSXKure9hemyTNnCydMfPIYRUo7RN0xW
 NIEL6UtfPQoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,519,1583222400"; d="scan'208";a="449968326"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga005.jf.intel.com with ESMTP; 16 Jun 2020 13:10:34 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 118285C2C1C; Tue, 16 Jun 2020 23:07:54 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200616183139.4061-1-chris@chris-wilson.co.uk>
References: <20200616183139.4061-1-chris@chris-wilson.co.uk>
Date: Tue, 16 Jun 2020 23:07:54 +0300
Message-ID: <87r1ue93l1.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Mark up inline getters as taking
 a const i915_request
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

> Since these inline routines only return from the i915_request to return

only return desired pointer from i915_request

> the desired pointer (after checking the preconditions for acquiring said
> pointer), they can be const.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_request.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> index 118ab6650d1f..590762820761 100644
> --- a/drivers/gpu/drm/i915/i915_request.h
> +++ b/drivers/gpu/drm/i915/i915_request.h
> @@ -561,7 +561,7 @@ static inline void i915_request_clear_hold(struct i915_request *rq)
>  }
>  
>  static inline struct intel_timeline *
> -i915_request_timeline(struct i915_request *rq)
> +i915_request_timeline(const struct i915_request *rq)
>  {
>  	/* Valid only while the request is being constructed (or retired). */
>  	return rcu_dereference_protected(rq->timeline,
> @@ -569,14 +569,14 @@ i915_request_timeline(struct i915_request *rq)
>  }
>  
>  static inline struct i915_gem_context *
> -i915_request_gem_context(struct i915_request *rq)
> +i915_request_gem_context(const struct i915_request *rq)
>  {
>  	/* Valid only while the request is being constructed (or retired). */
>  	return rcu_dereference_protected(rq->context->gem_context, true);
>  }
>  
>  static inline struct intel_timeline *
> -i915_request_active_timeline(struct i915_request *rq)
> +i915_request_active_timeline(const struct i915_request *rq)
>  {
>  	/*
>  	 * When in use during submission, we are protected by a guarantee that
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
