Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 560E11F9C73
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2020 17:59:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D03189FA0;
	Mon, 15 Jun 2020 15:58:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D68C89FA0
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jun 2020 15:58:56 +0000 (UTC)
IronPort-SDR: scMZkDZxkj3BzMXOEJHqxWH39q9x6rusW5n89AnHQDc/KTyKw/6U4vcUHhSjHmgrTof8TtiIps
 c0gCDXVoVWGw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2020 08:58:56 -0700
IronPort-SDR: vf5hL3d15Zkf6f6tfZprMYJ6cm5NpHAN7gdVt/k/tpwB1bdws0Jb/tb+LJSjiAvAGcKmasG7Th
 G9WnxqPY4Cww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,515,1583222400"; d="scan'208";a="420416138"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 15 Jun 2020 08:58:55 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 0A2865C2C94; Mon, 15 Jun 2020 18:56:16 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200615143321.14371-1-chris@chris-wilson.co.uk>
References: <20200615123920.17749-2-chris@chris-wilson.co.uk>
 <20200615143321.14371-1-chris@chris-wilson.co.uk>
Date: Mon, 15 Jun 2020 18:56:16 +0300
Message-ID: <87a7149vbz.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Dump engine state and
 trace upon hanging after reset
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

> If the engine dies after a reset, and so we fail to submit a request
> but need to be interrupted by the CI runner, dump the engine state.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> index 2af66f8ffbd2..1ea4935e0eeb 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> @@ -499,6 +499,21 @@ static int igt_reset_nop_engine(void *arg)
>  
>  				rq = intel_context_create_request(ce);
>  				if (IS_ERR(rq)) {
> +					struct drm_printer p =
> +						drm_info_printer(gt->i915->drm.dev);
> +					intel_engine_dump(engine, &p,
> +							  "%s(%s): failed to submit request\n",
> +							  __func__,
> +							  engine->name);
> +
> +
> +					GEM_TRACE("%s(%s): failed to submit request\n",
> +						  __func__,
> +						  engine->name);
> +					GEM_TRACE_DUMP();
> +
> +					intel_gt_set_wedged(gt);
> +
>  					err = PTR_ERR(rq);
>  					break;
>  				}
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
