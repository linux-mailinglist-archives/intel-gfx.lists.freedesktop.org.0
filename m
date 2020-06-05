Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FAB51EFC6E
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 17:25:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30B316E92C;
	Fri,  5 Jun 2020 15:25:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99EFB6E92C
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2020 15:25:32 +0000 (UTC)
IronPort-SDR: hQALGkFVh03Bg1pW4UI6+WhKA8tkWYkwOwDWhszbRkObg/aoGI3tOdIIeWtUnsjHg2Awx4AMEt
 zgqXEsnwptrQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 08:25:31 -0700
IronPort-SDR: Z/+/xq+dXC+JLVTmEmHvfpVXHLEiZq7huMlPSYpuiWUcHQvep9lEYRTmCwyo7LW4yexY8BqmP2
 cVLJUGoAU4ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,476,1583222400"; d="scan'208";a="471826086"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga006.fm.intel.com with ESMTP; 05 Jun 2020 08:25:30 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 5762F5C2C59; Fri,  5 Jun 2020 18:22:59 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200605144705.31127-1-chris@chris-wilson.co.uk>
References: <20200605144705.31127-1-chris@chris-wilson.co.uk>
Date: Fri, 05 Jun 2020 18:22:59 +0300
Message-ID: <87tuzpa65o.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Include the engine's
 fw-domains in the debug info
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

> Add engine->fw_domain/active to the pretty printer for debug dumps and
> debugfs.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 8942cf936111..b84848db1bce 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1517,6 +1517,8 @@ void intel_engine_dump(struct intel_engine_cs *engine,
>  		   yesno(!llist_empty(&engine->barrier_tasks)));
>  	drm_printf(m, "\tLatency: %luus\n",
>  		   ewma__engine_latency_read(&engine->latency));
> +	drm_printf(m, "\tForcewake: %x domains, %d active\n",

This new world of omitting 0x is peculiar :O
-Mika

> +		   engine->fw_domain, atomic_read(&engine->fw_active));
>  
>  	rcu_read_lock();
>  	rq = READ_ONCE(engine->heartbeat.systole);
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
