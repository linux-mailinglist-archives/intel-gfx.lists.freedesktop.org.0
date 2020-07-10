Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4829321B512
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:30:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D8D96EC30;
	Fri, 10 Jul 2020 12:30:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B460A6EC30
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:30:12 +0000 (UTC)
IronPort-SDR: JMcqDxfDU1MNlngey9yfN6ssFf2I746vVj+l6lkcM165EVG9vPVg+RTl5lQDOIxgjH4xPQCrJ4
 /xklHB0zficg==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="166279800"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="166279800"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:30:12 -0700
IronPort-SDR: ZhwJgk780We9V95LvosDdM0xnbrLzAJplohp3ITSQ9YDts8IlXV+59eLZvX7rt9uKC1ePTAq2m
 6LDdMxxQUg7Q==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="428552423"
Received: from unknown (HELO [10.252.44.180]) ([10.252.44.180])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:30:11 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200710120717.32484-1-chris@chris-wilson.co.uk>
 <20200710121609.6775-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5b0e8dfd-43d2-a491-9134-e3b0e1a0ac5b@linux.intel.com>
Date: Fri, 10 Jul 2020 13:30:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200710121609.6775-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Be defensive in the face of
 false CS events
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/07/2020 13:16, Chris Wilson wrote:
> If the HW throws a curve ball and reports either en event before it is
> possible, or just a completely impossible event, we have to grin and
> bear it. The first few events, we will likely not notice as we would be
> expecting some event, but as soon as we stop expecting an event and yet
> they still keep coming, then we enter into undefined state territory.
> In which case, bail out, stop processing the events, and reset the
> engine and our set of queued requests to recover.
> 
> The sporadic hangs and warnings will continue to plague CI, but at least
> system stability should not be compromised.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2045
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 8 ++++++--
>   1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index fbcfeaed6441..c86324d2d2bb 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2567,6 +2567,7 @@ static void process_csb(struct intel_engine_cs *engine)
>   	tail = READ_ONCE(*execlists->csb_write);
>   	if (unlikely(head == tail))
>   		return;
> +	execlists->csb_head = tail;

This deserves a comment...

>   
>   	/*
>   	 * Hopefully paired with a wmb() in HW!
> @@ -2613,6 +2614,9 @@ static void process_csb(struct intel_engine_cs *engine)
>   		if (promote) {
>   			struct i915_request * const *old = execlists->active;
>   
> +			if (GEM_WARN_ON(!*execlists->pending))
> +				break;
> +

... but why not continue? You think nothing good can come out of trying 
further and break simply expedites the hang? We have to be confident we 
can cope with any random i915 state caused by skipping maybe valid entries.

Conclusion will define what kind of comment to put above. "Assume we 
always consume all CSB entries, or things are really bad and we mark all 
as invalid upon finding first bad entry"?

Regards,

Tvrtko

>   			ring_set_paused(engine, 0);
>   
>   			/* Point active to the new ELSP; prevent overwriting */
> @@ -2635,7 +2639,8 @@ static void process_csb(struct intel_engine_cs *engine)
>   
>   			WRITE_ONCE(execlists->pending[0], NULL);
>   		} else {
> -			GEM_BUG_ON(!*execlists->active);
> +			if (GEM_WARN_ON(!*execlists->active))
> +				break;
>   
>   			/* port0 completed, advanced to port1 */
>   			trace_ports(execlists, "completed", execlists->active);
> @@ -2686,7 +2691,6 @@ static void process_csb(struct intel_engine_cs *engine)
>   		}
>   	} while (head != tail);
>   
> -	execlists->csb_head = head;
>   	set_timeslice(engine);
>   
>   	/*
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
