Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6EB145800
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 15:40:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AECAD6F560;
	Wed, 22 Jan 2020 14:40:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 694C86F560
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 14:40:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 06:40:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,350,1574150400"; d="scan'208";a="222050928"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga008.fm.intel.com with ESMTP; 22 Jan 2020 06:40:01 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 387885C1DD9; Wed, 22 Jan 2020 16:39:19 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200122124154.483444-1-chris@chris-wilson.co.uk>
References: <20200122124154.483444-1-chris@chris-wilson.co.uk>
Date: Wed, 22 Jan 2020 16:39:19 +0200
Message-ID: <87d0bbpnc8.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Include a tell-tale for engine
 parking
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

> We have two trace messages that rely on the function name for
> distinction. However, if gcc inlines the function, the two traces end up
> with the same function name and are indistinguishable. Add a different
> message to each to clarify which one we hit, i.e. which phase of engine
> parking we are processing.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_pm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> index ea90ab3e396e..b6cf284e3a2d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> @@ -112,7 +112,7 @@ __queue_and_release_pm(struct i915_request *rq,
>  {
>  	struct intel_gt_timelines *timelines = &engine->gt->timelines;
>  
> -	ENGINE_TRACE(engine, "\n");
> +	ENGINE_TRACE(engine, "parking\n");
>  
>  	/*
>  	 * We have to serialise all potential retirement paths with our
> @@ -249,7 +249,7 @@ static int __engine_park(struct intel_wakeref *wf)
>  	if (!switch_to_kernel_context(engine))
>  		return -EBUSY;
>  
> -	ENGINE_TRACE(engine, "\n");
> +	ENGINE_TRACE(engine, "parked\n");

Reading the functions, the exact spots are a mystery for me still
as of why in these exact lines. Like the 'parked' would mean it
is parked already, which it seems not to.

However, what comes to the commit message and to
immediate problem and fixing it,

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>  
>  	call_idle_barriers(engine); /* cleanup after wedging */
>  
> -- 
> 2.25.0
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
