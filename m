Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DACDE18CBF7
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 11:48:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B8386EB01;
	Fri, 20 Mar 2020 10:48:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87B416EB01
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 10:48:45 +0000 (UTC)
IronPort-SDR: 3CGCJKwYiINcOxyjj/JsyGDd55bdOf8HTlcjjt2/VdI0+yqeOHYVH3SWK3mIPiXPmfSZYPErIx
 HCZzGO6yQusA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 03:48:45 -0700
IronPort-SDR: eF5fzjdt9WqLfRma1YUW/76f6TlES/6snXcsbsNKJ4/FMcV6ZZz1+/5crPiHtR+LxwHZT5K0/G
 ONvWuZ3H/Z8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,284,1580803200"; d="scan'208";a="239193593"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga008.jf.intel.com with ESMTP; 20 Mar 2020 03:48:44 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id E0DC45C1DD2; Fri, 20 Mar 2020 12:47:14 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200319170707.8262-2-chris@chris-wilson.co.uk>
References: <20200319170707.8262-1-chris@chris-wilson.co.uk>
 <20200319170707.8262-2-chris@chris-wilson.co.uk>
Date: Fri, 20 Mar 2020 12:47:14 +0200
Message-ID: <87h7yjz4jx.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [CI 2/2] drm/i915/gt: Cancel a hung context if
 already closed
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

> Use the restored ability to check if a context is closed to decide
> whether or not to immediately ban the context from further execution
> after a hang.
>
> Fixes: be90e344836a ("drm/i915/gt: Cancel banned contexts after GT reset")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_reset.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 9a15bdf31c7f..003f26b42998 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -88,6 +88,11 @@ static bool mark_guilty(struct i915_request *rq)
>  	bool banned;
>  	int i;
>  
> +	if (intel_context_is_closed(rq->context)) {
> +		intel_context_set_banned(rq->context);
> +		return true;
> +	}
> +
>  	rcu_read_lock();
>  	ctx = rcu_dereference(rq->context->gem_context);
>  	if (ctx && !kref_get_unless_zero(&ctx->ref))
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
