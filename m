Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 584AF2544EF
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Aug 2020 14:26:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD0996E25B;
	Thu, 27 Aug 2020 12:26:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1BC86E25B
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Aug 2020 12:26:27 +0000 (UTC)
IronPort-SDR: kIzQMh9rlQ3wf3OpGMgJWgXCB8o1gZzV4wOSGD+YlJZNL1fPg+SN2o+gMMBa9Q07KmhMb76qIx
 9I4IGmzK79fw==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="220720808"
X-IronPort-AV: E=Sophos;i="5.76,359,1592895600"; d="scan'208";a="220720808"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2020 05:26:26 -0700
IronPort-SDR: 75Bgcby9UzfnjblDf0+D+5Ql22RtZFefxNif0dQj1ZjveLHE2ctCfRiTesSwN3xLt8RtkPhxVC
 WlXK0IsDPt4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,359,1592895600"; d="scan'208";a="280618205"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 27 Aug 2020 05:26:25 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 12EE45C2778; Thu, 27 Aug 2020 15:25:30 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200826132811.17577-8-chris@chris-wilson.co.uk>
References: <20200826132811.17577-1-chris@chris-wilson.co.uk>
 <20200826132811.17577-8-chris@chris-wilson.co.uk>
Date: Thu, 27 Aug 2020 15:25:30 +0300
Message-ID: <874koo1dj9.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 08/39] drm/i915/gt: Show engine properties
 in the pretty printer
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

> When debugging the engine state, include the user properties that may,
> or may not, have been adjusted by the user/test.
>
> For example,
> vecs0
> 	...
> 	Properties:
> 		heartbeat_interval_ms: 2500 [default 2500]
> 		max_busywait_duration_ns: 8000 [default 8000]
> 		preempt_timeout_ms: 640 [default 640]
> 		stop_timeout_ms: 100 [default 100]
> 		timeslice_duration_ms: 1 [default 1]
>
> Suggested-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c | 36 +++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index f231edd3fa3a..1579a80bc8cb 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1599,6 +1599,41 @@ static unsigned long list_count(struct list_head *list)
>  	return count;
>  }
>  
> +static unsigned long read_ul(void *p, size_t x)
> +{
> +	return *(unsigned long *)(p + x);
> +}
> +
> +static void print_properties(struct intel_engine_cs *engine,
> +			     struct drm_printer *m)
> +{
> +	static const struct pmap {
> +		size_t offset;
> +		const char *name;
> +	} props[] = {
> +#define P(x) { \
> +	.offset = offsetof(typeof(engine->props), x), \
> +	.name = #x \
> +}
> +		P(heartbeat_interval_ms),
> +		P(max_busywait_duration_ns),
> +		P(preempt_timeout_ms),
> +		P(stop_timeout_ms),
> +		P(timeslice_duration_ms),
> +
> +		{},
> +#undef P
> +	};
> +	const struct pmap *p;
> +
> +	drm_printf(m, "\tProperties:\n");
> +	for (p = props; p->name; p++)
> +		drm_printf(m, "\t\t%s: %lu [default %lu]\n",
> +			   p->name,
> +			   read_ul(&engine->props, p->offset),
> +			   read_ul(&engine->defaults, p->offset));
> +}
> +
>  void intel_engine_dump(struct intel_engine_cs *engine,
>  		       struct drm_printer *m,
>  		       const char *header, ...)
> @@ -1641,6 +1676,7 @@ void intel_engine_dump(struct intel_engine_cs *engine,
>  	drm_printf(m, "\tReset count: %d (global %d)\n",
>  		   i915_reset_engine_count(error, engine),
>  		   i915_reset_count(error));
> +	print_properties(engine, m);
>  
>  	drm_printf(m, "\tRequests:\n");
>  
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
