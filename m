Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA232CF056
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 16:06:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B55136E17F;
	Fri,  4 Dec 2020 15:06:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD1C46E17F
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Dec 2020 15:06:33 +0000 (UTC)
IronPort-SDR: MUD2HiN8kbUxQG2cT78GuBrh6EJPuqqX24QunMHDHy4k2thMacwuAP/tjgUxMnQCLdV+RhZHVc
 cPAstwdVMy0Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="191634002"
X-IronPort-AV: E=Sophos;i="5.78,393,1599548400"; d="scan'208";a="191634002"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 07:06:32 -0800
IronPort-SDR: lPZyzBSeP1HcfqEBYs3o/PZMJVGBsu2oUAVZYrR2EI5jp3xRpp5vn9it8b3PIp3yhIK7afg8+z
 AESgQ8aJKA0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,393,1599548400"; d="scan'208";a="346630937"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 04 Dec 2020 07:06:28 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 9ACB35C2069; Fri,  4 Dec 2020 17:04:16 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201204140315.24341-3-chris@chris-wilson.co.uk>
References: <20201204140315.24341-1-chris@chris-wilson.co.uk>
 <20201204140315.24341-3-chris@chris-wilson.co.uk>
Date: Fri, 04 Dec 2020 17:04:16 +0200
Message-ID: <874kl1395b.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/24] drm/i915/gt: Cancel the preemption
 timeout on responding to it
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> We currently presume that the engine reset is successful, cancelling the
> expired preemption timer in the process. However, engine resets can
> fail, leaving the timeout still pending and we will then respond to the
> timeout again next time the tasklet fires. What we want is for the
> failed engine reset to be promoted to a full device reset, which is
> kicked by the heartbeat once the engine stops processing events.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1168
> Fixes: 3a7a92aba8fb ("drm/i915/execlists: Force preemption")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: <stable@vger.kernel.org> # v5.5+

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 1d209a8a95e8..7f25894e41d5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -3209,8 +3209,10 @@ static void execlists_submission_tasklet(unsigned long data)
>  		spin_unlock_irqrestore(&engine->active.lock, flags);
>  
>  		/* Recheck after serialising with direct-submission */
> -		if (unlikely(timeout && preempt_timeout(engine)))
> +		if (unlikely(timeout && preempt_timeout(engine))) {
> +			cancel_timer(&engine->execlists.preempt);
>  			execlists_reset(engine, "preemption time out");
> +		}
>  	}
>  }
>  
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
