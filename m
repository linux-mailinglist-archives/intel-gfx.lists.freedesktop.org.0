Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCECE2951E7
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 19:59:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 412816EE21;
	Wed, 21 Oct 2020 17:59:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC7896EE21
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 17:59:15 +0000 (UTC)
IronPort-SDR: F9ZT5ZhnEqZg/65MfipXoysdCK+hsW00rgm7T4lPKSbPkzU8cOA9jarsXvvGF68ratMUxdKI2M
 ExpqXrW5CFkQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="252108971"
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="252108971"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 10:59:15 -0700
IronPort-SDR: jmTb7shsD8xNpYi3g+iZVDxzvIkZNkHBC+Jiq8Yl0MdZNcKSsmJFk15PYzoVyrO5/0T4fmJSgI
 iJE/46NUyY9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="523980003"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 21 Oct 2020 10:59:13 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id B9F645C2054; Wed, 21 Oct 2020 20:57:35 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201019142841.32273-1-chris@chris-wilson.co.uk>
References: <20201019111441.5611-1-chris@chris-wilson.co.uk>
 <20201019142841.32273-1-chris@chris-wilson.co.uk>
Date: Wed, 21 Oct 2020 20:57:35 +0300
Message-ID: <87zh4fqx68.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/selftests: Flush the old
 heartbeat more gently
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

> In order to test how fast the heartbeat can respond, we measure with the
> interval set to its minimum. Before we measure though, we want to be
> sure we start with a fresh pulse, and so wait until any old one is
> complete. During that wait though, we were continually flushing the
> work, and so continually re-evaluating to see if the pulse was complete,
> and each attempt would count as an unresponsive system. If the engine
> did not complete the request in the couple of busy-spins, it would flag
> an error. This is unfortunate, so let's not busy-spin waiting for the
> old heartbeat, but terminate it and start afresh.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
> index e73854dd2fe0..b88aa35ad75b 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
> @@ -215,16 +215,17 @@ static int __live_heartbeat_fast(struct intel_engine_cs *engine)
>  		goto err_pm;
>  
>  	for (i = 0; i < ARRAY_SIZE(times); i++) {
> -		/* Manufacture a tick */
>  		do {
> -			while (READ_ONCE(engine->heartbeat.systole))
> -				flush_delayed_work(&engine->heartbeat.work);
> +			/* Manufacture a tick */
> +			intel_engine_park_heartbeat(engine);
> +			GEM_BUG_ON(engine->heartbeat.systole);
> +			engine->serial++; /*  pretend we are not idle! */
> +			intel_engine_unpark_heartbeat(engine);
>  
> -			engine->serial++; /* quick, pretend we are not idle! */
>  			flush_delayed_work(&engine->heartbeat.work);
>  			if (!delayed_work_pending(&engine->heartbeat.work)) {
> -				pr_err("%s: heartbeat did not start\n",
> -				       engine->name);
> +				pr_err("%s: heartbeat %d did not start\n",
> +				       engine->name, i);
>  				err = -EINVAL;
>  				goto err_pm;
>  			}
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
