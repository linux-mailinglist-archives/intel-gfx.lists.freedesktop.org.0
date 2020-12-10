Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E2F2D6233
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 17:42:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5F046EA93;
	Thu, 10 Dec 2020 16:42:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 162AF6EA93
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 16:42:14 +0000 (UTC)
IronPort-SDR: yppmOS2ftcw1vIizU1NWHLCU06sSAhoG9GtNjeFro9+lStYlLm/JuIWTw6zLWlZQYLTcb8zzT7
 Pw5fFL6ClbYw==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="259002590"
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="259002590"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 08:42:14 -0800
IronPort-SDR: jgD5XgGVnbPPcmuRX4je2a28pu1ztzTCU8XkfRtkCgW0EdubWPgQ6f67FeJYavuvn4LgUKnwR5
 bEnT9m/giP0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="484543081"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 10 Dec 2020 08:42:13 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id E7C0D5C201A; Thu, 10 Dec 2020 18:39:56 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201210080240.24529-1-chris@chris-wilson.co.uk>
References: <20201210080240.24529-1-chris@chris-wilson.co.uk>
Date: Thu, 10 Dec 2020 18:39:56 +0200
Message-ID: <87im99lin7.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/21] drm/i915/gt: Mark legacy ring context
 as lost
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

> When we reset the legacy ring context, due to potential corruption over
> suspend/resume, remove the valid bit so that we avoid loading garbage.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_ring_submission.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index a41b43f445b8..1959e3e5b8e9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -602,6 +602,7 @@ static int ring_context_pin(struct intel_context *ce, void *unused)
>  static void ring_context_reset(struct intel_context *ce)
>  {
>  	intel_ring_reset(ce->ring, ce->ring->emit);
> +	__clear_bit(CONTEXT_VALID_BIT, &ce->flags);
>  }
>  
>  static const struct intel_context_ops ring_context_ops = {
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
