Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6152A13AE1C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 16:56:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 512DF6E408;
	Tue, 14 Jan 2020 15:56:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B98B6E408
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 15:56:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 07:56:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,433,1571727600"; d="scan'208";a="372611954"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 14 Jan 2020 07:56:29 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 645BC5C1DF0; Tue, 14 Jan 2020 17:55:54 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200114124925.2208458-1-chris@chris-wilson.co.uk>
References: <20200114124925.2208458-1-chris@chris-wilson.co.uk>
Date: Tue, 14 Jan 2020 17:55:54 +0200
Message-ID: <87tv4yt4l1.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Add a mock i915_vma to
 the mock_ring
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

> Add a i915_vma to the mock_engine/mock_ring so that the core code can
> always assume the presence of ring->vma.
>
> Fixes: 8ccfc20a7d56 ("drm/i915/gt: Mark ring->vma as active while pinned")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/mock_engine.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
> index a560b7eee2cd..54bd5461738b 100644
> --- a/drivers/gpu/drm/i915/gt/mock_engine.c
> +++ b/drivers/gpu/drm/i915/gt/mock_engine.c
> @@ -59,6 +59,13 @@ static struct intel_ring *mock_ring(struct intel_engine_cs *engine)
>  	ring->vaddr = (void *)(ring + 1);
>  	atomic_set(&ring->pin_count, 1);
>  
> +	ring->vma = i915_vma_alloc();
> +	if (ring->vma == NULL) {
> +		kfree(ring);
> +		return NULL;
> +	}
> +	i915_active_init(&ring->vma->active, NULL, NULL);
> +
>  	intel_ring_update_space(ring);
>  
>  	return ring;
> @@ -121,6 +128,7 @@ static void mock_context_destroy(struct kref *ref)
>  	GEM_BUG_ON(intel_context_is_pinned(ce));
>  
>  	if (test_bit(CONTEXT_ALLOC_BIT, &ce->flags)) {
> +		i915_vma_free(ce->ring->vma);
>  		kfree(ce->ring);
>  		mock_timeline_unpin(ce->timeline);

with i915_active_fini() added also,

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>  	}
> -- 
> 2.25.0.rc2
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
