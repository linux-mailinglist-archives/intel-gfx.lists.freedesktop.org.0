Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 578CE1EFC69
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 17:23:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72EA96E11B;
	Fri,  5 Jun 2020 15:23:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EADB6E11B
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2020 15:23:07 +0000 (UTC)
IronPort-SDR: QMl+hK69a+0wr1RLV+0q6Hwf2TKuvrWZzpf7ExwRzEjrifvs04BgBmvoIqoKfeKUv7wTcGRAgB
 crtRYJPxNECw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 08:23:07 -0700
IronPort-SDR: 6D5aTsioTXMLDMSgD5vQ7l3gtmL3BA5J4yXiewrOV5wN6CWvrXYjB0NfvyeVi4bfBlIpmCcLLe
 WMILkSxztIVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,476,1583222400"; d="scan'208";a="471825437"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga006.fm.intel.com with ESMTP; 05 Jun 2020 08:23:05 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id AB5EC5C2C59; Fri,  5 Jun 2020 18:20:34 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200605122334.2798-2-chris@chris-wilson.co.uk>
References: <20200605122334.2798-1-chris@chris-wilson.co.uk>
 <20200605122334.2798-2-chris@chris-wilson.co.uk>
Date: Fri, 05 Jun 2020 18:20:34 +0300
Message-ID: <87wo4la69p.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/10] drm/i915/gt: Always check to enable
 timeslicing if not submitting
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

> We may choose not to submit for a number of reasons, yet not fill both
> ELSP. In which case we must start timeslicing (there will be no ACK
> event on which to hook the start) if the queue would benefit from the
> currently active context being evicted.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 92c3368ffcbd..d55a5e0466e5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2362,10 +2362,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>  				if (last->context == rq->context)
>  					goto done;
>  
> -				if (i915_request_has_sentinel(last)) {
> -					start_timeslice(engine, rq_prio(rq));
> +				if (i915_request_has_sentinel(last))
>  					goto done;
> -				}
>  
>  				/*
>  				 * If GVT overrides us we only ever submit
> @@ -2446,6 +2444,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>  		set_preempt_timeout(engine, *active);
>  		execlists_submit_ports(engine);
>  	} else {
> +		start_timeslice(engine, execlists->queue_priority_hint);

If we ended up with same set of request, we want to skip submitting.
But why would we want to skip timeslicing?

-Mika

>  skip_submit:
>  		ring_set_paused(engine, 0);
>  	}
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
