Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDFA2D6313
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 18:09:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C12E89CB9;
	Thu, 10 Dec 2020 17:09:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98B1D89D4F
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 17:09:49 +0000 (UTC)
IronPort-SDR: BIN95Naq1h7ZF7ZZANVts+XeER496L9XYamcZ+2Xm7pPDKWb+VxAt7bamR7F4LbYewklNFHA4o
 SXc6+iVHfHbQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="161343722"
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="161343722"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 09:09:48 -0800
IronPort-SDR: 1BIRNyLPd0yTH3S5RkZliatAzwEjB1TPmZHOjoQzNQqEGV/6YVcHvWQptTYEtJRNn7PXBm+s/+
 S69tG3Hymm8A==
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="369323988"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 09:09:48 -0800
Date: Thu, 10 Dec 2020 09:04:02 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201210170402.GA21533@sdutt-i7>
References: <20201210080240.24529-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201210080240.24529-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 10, 2020 at 08:02:20AM +0000, Chris Wilson wrote:
> When we reset the legacy ring context, due to potential corruption over
> suspend/resume, remove the valid bit so that we avoid loading garbage.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

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
