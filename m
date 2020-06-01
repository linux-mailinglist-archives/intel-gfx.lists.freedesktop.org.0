Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 226971EA3A4
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 14:19:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 779F26E1B8;
	Mon,  1 Jun 2020 12:19:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B53A6E1B8
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 12:19:52 +0000 (UTC)
IronPort-SDR: hsewbg1sSq16ZhyfiyJnD27vjHe+Z0+nScrdY7923U8XPX9MVEEkAH1XqLNA0rDd9Sp1qo5QgK
 BT6m0HLd+zQg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 05:19:52 -0700
IronPort-SDR: 7SglqGW/UDI7wPhOiK6sE0eZFX08gTKkJNpUb8zDkqceeNfhwdEZNS5UHLjKIMZI8a1COeNz/F
 FG++cvpxZodA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,460,1583222400"; d="scan'208";a="303618789"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga002.fm.intel.com with ESMTP; 01 Jun 2020 05:19:51 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 74DBE5C2C42; Mon,  1 Jun 2020 15:17:23 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200601072446.19548-12-chris@chris-wilson.co.uk>
References: <20200601072446.19548-1-chris@chris-wilson.co.uk>
 <20200601072446.19548-12-chris@chris-wilson.co.uk>
Date: Mon, 01 Jun 2020 15:17:23 +0300
Message-ID: <87imgbhtf0.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 12/36] drm/i915/gt: Track if an engine
 requires forcewake w/a
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

> Sometimes an engine might need to keep forcewake active while it is busy
> submitting requests for a particular workaround. Track such nuisance
> with engine->fw_domain.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_engine_types.h   | 9 +++++++++
>  drivers/gpu/drm/i915/gt/intel_ring_scheduler.c | 4 ++++
>  2 files changed, 13 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 3782e27c2945..ccdd69923793 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -313,6 +313,15 @@ struct intel_engine_cs {
>  	u32 context_size;
>  	u32 mmio_base;
>  
> +	/*
> +	 * Some w/a require forcewake to be held (which prevents RC6) while
> +	 * a particular engine is active. If so, we set fw_domain to which
> +	 * domains need to be held for the duration of request activity,
> +	 * and 0 if none.
> +	 */
> +	unsigned int fw_domain;
> +	unsigned int fw_active;
> +
>  	unsigned long context_tag;
>  
>  	struct rb_node uabi_node;
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_scheduler.c b/drivers/gpu/drm/i915/gt/intel_ring_scheduler.c
> index aaff554865b1..777cab6d9540 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_scheduler.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_scheduler.c
> @@ -60,6 +60,8 @@ static struct i915_request *
>  schedule_in(struct intel_engine_cs *engine, struct i915_request *rq)
>  {
>  	__intel_gt_pm_get(engine->gt);
> +	if (!engine->fw_active++ && engine->fw_domain)
> +		intel_uncore_forcewake_get(engine->uncore, engine->fw_domain);
>  	intel_engine_context_in(engine);
>  	return i915_request_get(rq);
>  }
> @@ -74,6 +76,8 @@ schedule_out(struct intel_engine_cs *engine, struct i915_request *rq)
>  
>  	i915_request_put(rq);
>  	intel_engine_context_out(engine);
> +	if (!--engine->fw_active && engine->fw_domain)
> +		intel_uncore_forcewake_put(engine->uncore, engine->fw_domain);
>  	intel_gt_pm_put_async(engine->gt);
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
