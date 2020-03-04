Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB94178FEC
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 12:56:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65B8A89E11;
	Wed,  4 Mar 2020 11:56:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E01089E11
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 11:56:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 03:56:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,514,1574150400"; d="scan'208";a="274642661"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga002.fm.intel.com with ESMTP; 04 Mar 2020 03:56:15 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 0D37C5C1DD2; Wed,  4 Mar 2020 13:54:59 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200304012059.2371206-2-chris@chris-wilson.co.uk>
References: <20200304012059.2371206-1-chris@chris-wilson.co.uk>
 <20200304012059.2371206-2-chris@chris-wilson.co.uk>
Date: Wed, 04 Mar 2020 13:54:59 +0200
Message-ID: <875zfk5o8c.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Propagate change in error
 status to children on unhold
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> As we release the head requests back into the queue, propagate any
> change in error status that may have occurred while the requests were
> temporarily suspended.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1277
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index d123dd7fe98b..5da86a40434c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2600,6 +2600,10 @@ static void __execlists_unhold(struct i915_request *rq)
>  			struct i915_request *w =
>  				container_of(p->waiter, typeof(*w), sched);
>  
> +			/* Propagate any change in error status */
> +			if (rq->fence.error)
> +				i915_request_set_error_once(w, rq->fence.error);
> +
>  			if (w->engine != rq->engine)
>  				continue;
>  
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
