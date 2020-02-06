Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D91115485C
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 16:45:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 509D16E507;
	Thu,  6 Feb 2020 15:45:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C4AE6E507
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 15:45:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 07:45:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,410,1574150400"; d="scan'208";a="250093429"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 06 Feb 2020 07:45:35 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id C2EDD5C0D66; Thu,  6 Feb 2020 17:44:40 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200206152325.2521787-1-chris@chris-wilson.co.uk>
References: <20200206152325.2521787-1-chris@chris-wilson.co.uk>
Date: Thu, 06 Feb 2020 17:44:40 +0200
Message-ID: <87imkjaffb.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Prevent queuing retire workers
 on the virtual engine
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

> Virtual engines are fleeting. They carry a reference count and may be freed
> when their last request is retired. This makes them unsuitable for the
> task of housing engine->retire.work so assert that it is not used.
>
> Tvrtko tracked down an instance where we did indeed violate this rule.
> In virtal_submit_request, we flush a completed request directly with

s/virtal/virtual
-Mika

> __i915_request_submit and this causes us to queue that request on the
> veng's breadcrumb list and signal it. Leading us down a path where we
> should not attach the retire.
>
> Reported-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Fixes: dc93c9b69315 ("drm/i915/gt: Schedule request retirement when signaler idles")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 3 +++
>  drivers/gpu/drm/i915/gt/intel_gt_requests.c | 3 +++
>  2 files changed, 6 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> index 0ba524a414c6..cbad7fe722ce 100644
> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> @@ -136,6 +136,9 @@ static void add_retire(struct intel_breadcrumbs *b, struct intel_timeline *tl)
>  	struct intel_engine_cs *engine =
>  		container_of(b, struct intel_engine_cs, breadcrumbs);
>  
> +	if (unlikely(intel_engine_is_virtual(engine)))
> +		engine = intel_virtual_engine_get_sibling(engine, 0);
> +
>  	intel_engine_add_retire(engine, tl);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> index 7ef1d37970f6..8a5054f21bf8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> @@ -99,6 +99,9 @@ static bool add_retire(struct intel_engine_cs *engine,
>  void intel_engine_add_retire(struct intel_engine_cs *engine,
>  			     struct intel_timeline *tl)
>  {
> +	/* We don't deal well with the engine disappearing beneath us */
> +	GEM_BUG_ON(intel_engine_is_virtual(engine));
> +
>  	if (add_retire(engine, tl))
>  		schedule_work(&engine->retire_work);
>  }
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
