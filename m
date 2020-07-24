Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EF422BEA4
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 09:09:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACAE36E921;
	Fri, 24 Jul 2020 07:09:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B68016E921
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 07:09:02 +0000 (UTC)
IronPort-SDR: XNNXQsB4OAX2tfrQIQEod1ZfLQtryFWWIVbfVrbd1G7cfsKCIk/lKJWZJEu5YQb6YQm101muok
 6EZATX18JXnw==
X-IronPort-AV: E=McAfee;i="6000,8403,9691"; a="130230741"
X-IronPort-AV: E=Sophos;i="5.75,389,1589266800"; d="scan'208";a="130230741"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 00:09:02 -0700
IronPort-SDR: fxk8qvq3yq5Qt0zhblNRDOFAVGbuAcIo2fkGV1VYhgidF0izgwv+7G9RrXJmMFEKhAI3uhq7f0
 TrBcwPfNX+rQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,389,1589266800"; d="scan'208";a="393232600"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga001.fm.intel.com with ESMTP; 24 Jul 2020 00:09:01 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 411415C0D00; Fri, 24 Jul 2020 10:08:32 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200723174144.22195-1-chris@chris-wilson.co.uk>
References: <20200723174144.22195-1-chris@chris-wilson.co.uk>
Date: Fri, 24 Jul 2020 10:08:32 +0300
Message-ID: <87zh7p1jbj.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Disable preparser around
 xcs invalidations on tgl
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

> Unlike rcs where we have conclusive evidence from our selftesting that
> disabling the preparser before performing the TLB invalidate and
> relocations does impact upon the GPU execution, the evidence for the
> same requirement on xcs is much more circumstantial. Let's apply the
> preparser disable between batches as we invalidate the TLB as a dose of
> healthy paranoia, just in case.
>
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/2169
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 29c0fde8b4df..353b1717fe84 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -4764,14 +4764,21 @@ static int gen12_emit_flush(struct i915_request *request, u32 mode)
>  	intel_engine_mask_t aux_inv = 0;
>  	u32 cmd, *cs;
>  
> +	cmd = 4;
> +	if (mode & EMIT_INVALIDATE)
> +		cmd += 2;
>  	if (mode & EMIT_INVALIDATE)
>  		aux_inv = request->engine->mask & ~BIT(BCS0);
> +	if (aux_inv)
> +		cmd += 2 * hweight8(aux_inv) + 2;
>  
> -	cs = intel_ring_begin(request,
> -			      4 + (aux_inv ? 2 * hweight8(aux_inv) + 2 : 0));
> +	cs = intel_ring_begin(request, cmd);
>  	if (IS_ERR(cs))
>  		return PTR_ERR(cs);
>  
> +	if (mode & EMIT_INVALIDATE)
> +		*cs++ = preparser_disable(true);
> +
>  	cmd = MI_FLUSH_DW + 1;
>  
>  	/* We always require a command barrier so that subsequent
> @@ -4804,6 +4811,10 @@ static int gen12_emit_flush(struct i915_request *request, u32 mode)
>  		}
>  		*cs++ = MI_NOOP;
>  	}
> +
> +	if (mode & EMIT_INVALIDATE)
> +		*cs++ = preparser_disable(false);
> +
>  	intel_ring_advance(request, cs);
>  
>  	return 0;
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
