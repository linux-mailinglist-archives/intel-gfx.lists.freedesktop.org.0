Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E59135425
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 09:14:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DDED6E8CD;
	Thu,  9 Jan 2020 08:14:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 755166E8CD
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 08:14:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 00:14:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,413,1571727600"; d="scan'208";a="396014816"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga005.jf.intel.com with ESMTP; 09 Jan 2020 00:14:51 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 1E5F35C1DE9; Thu,  9 Jan 2020 10:14:21 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200107143826.3298401-1-chris@chris-wilson.co.uk>
References: <20200107143826.3298401-1-chris@chris-wilson.co.uk>
Date: Thu, 09 Jan 2020 10:14:21 +0200
Message-ID: <87y2uhf3mq.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Drop a defunct timeline
 assertion
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

> intel_timeline_enter() has been decoupled from intel_timeline_pin() and
> both enter/exit & pin/unpin are allowed [read expected] to run
> concurrently with one another. The assertion that they had better not is
> stale.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/940

Hmm I got page not found for this even tho other issues are shown :O

References to the decoupling part?

-Mika

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_timeline.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
> index ee5dc4fbdeb9..87716529cd2f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_timeline.c
> +++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
> @@ -348,7 +348,6 @@ void intel_timeline_enter(struct intel_timeline *tl)
>  	 * use atomic to manipulate tl->active_count.
>  	 */
>  	lockdep_assert_held(&tl->mutex);
> -	GEM_BUG_ON(!atomic_read(&tl->pin_count));
>  
>  	if (atomic_add_unless(&tl->active_count, 1, 0))
>  		return;
> -- 
> 2.25.0.rc1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
