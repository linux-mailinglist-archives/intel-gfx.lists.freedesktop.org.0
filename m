Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B932EA319
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 02:57:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3904389ECB;
	Tue,  5 Jan 2021 01:57:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AA3D89ECB
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 01:57:46 +0000 (UTC)
IronPort-SDR: 4MbazZtVSytL171WI+xkJPOZB5i2ODk6x4/8QXWpuEgO+wMMrmlke4aD4B9sZA563hUpbvj2ma
 ZBqFBj+X9UZg==
X-IronPort-AV: E=McAfee;i="6000,8403,9854"; a="238588524"
X-IronPort-AV: E=Sophos;i="5.78,475,1599548400"; d="scan'208";a="238588524"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2021 17:57:45 -0800
IronPort-SDR: +2fM2uotYd2x1xmIv/5pMRwD4y4p+Q7j8K9t8NpYW8QtCfLtRt+tEOvXWpI4daMgeSEp4/3T5d
 TRAO459WuQHQ==
X-IronPort-AV: E=Sophos;i="5.78,475,1599548400"; d="scan'208";a="378662836"
Received: from wburton-desk1.ger.corp.intel.com (HELO intel.com)
 ([10.252.28.225])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2021 17:57:44 -0800
Date: Tue, 5 Jan 2021 03:57:40 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <X/PHlMjQvN3oy7Z6@intel.intel>
References: <20210104115145.24460-1-chris@chris-wilson.co.uk>
 <20210104115145.24460-5-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210104115145.24460-5-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/gt: Restore ce->signal flush
 before releasing virtual engine
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

> Before we mark the virtual engine as no longer inflight, flush any
> ongoing signaling that may be using the ce->signal_link along the
> previous breadcrumbs. On switch to a new physical engine, that link will
> be inserted into the new set of breadcrumbs, causing confusion to an
> ongoing iterator.
> 
> This patch undoes a last minute mistake introduced into commit
> bab0557c8dca ("drm/i915/gt: Remove virtual breadcrumb before transfer"),
> whereby instead of unconditionally applying the flush, it was only
> applied if the request itself was going to be reused.
> 
> Fixes: bab0557c8dca ("drm/i915/gt: Remove virtual breadcrumb before transfer")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index a5b442683c18..6414dbb124a7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -592,8 +592,6 @@ resubmit_virtual_request(struct i915_request *rq, struct virtual_engine *ve)
>  		 * ce->signal_link.
>  		 */
>  		i915_request_cancel_breadcrumb(rq);
> -		while (atomic_read(&engine->breadcrumbs->signaler_active))
> -			cpu_relax();
>  	}

As you are at it, you can also remove the braces, with that:

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
