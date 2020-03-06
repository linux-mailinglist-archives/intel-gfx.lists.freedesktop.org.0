Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8435717C2D0
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 17:21:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42E6189C3B;
	Fri,  6 Mar 2020 16:21:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 388746E49B
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 16:21:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 08:21:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,522,1574150400"; d="scan'208";a="441992749"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga006.fm.intel.com with ESMTP; 06 Mar 2020 08:21:13 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 6462D5C1DD1; Fri,  6 Mar 2020 18:19:55 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200306154647.3528345-1-chris@chris-wilson.co.uk>
References: <20200306154647.3528345-1-chris@chris-wilson.co.uk>
Date: Fri, 06 Mar 2020 18:19:55 +0200
Message-ID: <87v9nh3178.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Close race between
 cacheline_retire and free
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> If the cacheline may still be busy, atomically mark it for future
> release, and only if we can determine that it will never be used again,
> immediately free it.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1392
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_timeline.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
> index 54e1e55f3c81..91debbc97c9a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_timeline.c
> +++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
> @@ -192,11 +192,15 @@ static void cacheline_release(struct intel_timeline_cacheline *cl)
>  
>  static void cacheline_free(struct intel_timeline_cacheline *cl)
>  {
> +	if (!i915_active_acquire_if_busy(&cl->active)) {
> +		__idle_cacheline_free(cl);
> +		return;
> +	}
> +
>  	GEM_BUG_ON(ptr_test_bit(cl->vaddr, CACHELINE_FREE));
>  	cl->vaddr = ptr_set_bit(cl->vaddr, CACHELINE_FREE);
>  
> -	if (i915_active_is_idle(&cl->active))
> -		__idle_cacheline_free(cl);
> +	i915_active_release(&cl->active);
>  }
>  
>  int intel_timeline_init(struct intel_timeline *timeline,
> -- 
> 2.25.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
