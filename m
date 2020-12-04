Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9ADD2CEF22
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 15:01:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 426976E174;
	Fri,  4 Dec 2020 14:00:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17E8A6E174
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Dec 2020 14:00:55 +0000 (UTC)
IronPort-SDR: x2e3E5t9CXXIrkoZ1KclK0gzneHrzVZc+Nv334wxXRAuMCyhoRaBraxFjuByvj6HtvffFYH15c
 Rw/ZPAjxeHzQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="172597179"
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; d="scan'208";a="172597179"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 06:00:55 -0800
IronPort-SDR: DILMOqljSH+CXnf2U7dgvBQu1m+fVM+PmUVQhrsVMZnYFJyswrNQZaKmzapfpWWXrDsF7x8CVP
 L1SrWeQcaSdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; d="scan'208";a="368878961"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga002.fm.intel.com with ESMTP; 04 Dec 2020 06:00:54 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 95DCE5C2069; Fri,  4 Dec 2020 15:58:42 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201203081616.1645-4-chris@chris-wilson.co.uk>
References: <20201203081616.1645-1-chris@chris-wilson.co.uk>
 <20201203081616.1645-4-chris@chris-wilson.co.uk>
Date: Fri, 04 Dec 2020 15:58:42 +0200
Message-ID: <87czzp3c6l.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/gt: Clear the execlists timers
 upon reset
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

> Across a reset, we stop the engine but not the timers. This leaves a
> window where the timers have inconsistent state with the engine, but
> should only result in a spurious timeout. As we cancel the outstanding
> events, also cancel their timers.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 7f25894e41d5..0c7f1e3dee5c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2450,6 +2450,11 @@ cancel_port_requests(struct intel_engine_execlists * const execlists)
>  
>  	smp_wmb(); /* complete the seqlock for execlists_active() */
>  	WRITE_ONCE(execlists->active, execlists->inflight);
> +
> +	/* Having cancelled all outstanding process_csb(), stop their timers */
> +	GEM_BUG_ON(execlists->pending[0]);
> +	cancel_timer(&execlists->timer);
> +	cancel_timer(&execlists->preempt);
>  }
>  
>  static inline void
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
