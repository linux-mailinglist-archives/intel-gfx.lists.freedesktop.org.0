Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 804ED2EF747
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 19:25:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3F6B6E888;
	Fri,  8 Jan 2021 18:25:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3DAC6E888
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 18:25:51 +0000 (UTC)
IronPort-SDR: a++I0VKOvP7nk1OANyohAgvzzNmsI3szhPSjm34F2km/oWqw1yQQL6ry5rbRIPJ/XZ6twaYz+D
 bpeZDt4K7TwA==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="174129748"
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="174129748"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 10:25:51 -0800
IronPort-SDR: sgZW7y6IYKAOcWtHW3tyWjsIFmDmZPVAUnG9KOr7ETYEIYbVODxGfswzcQnKJqgDU+ClmV/Od5
 jXLvMVV465Ig==
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="497930909"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 10:25:48 -0800
Date: Fri, 8 Jan 2021 10:25:48 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20210108182548.GG3894148@mdroper-desk1.amr.corp.intel.com>
References: <20210108150924.29437-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210108150924.29437-1-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Prevent use of engine->wa_ctx
 after error
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 08, 2021 at 03:09:24PM +0000, Chris Wilson wrote:
> On error we unpin and free the wa_ctx.vma, but do not clear any of the
> derived flags. During lrc_init, we look at the flags and attempt to
> dereference the wa_ctx.vma if they are set. To protect the error path
> where we try to limp along without the wa_ctx, make sure we clear those
> flags!
> 
> Reported-by: Matt Roper <matthew.d.roper@intel.com>
> Fixes: 604a8f6f1e33 ("drm/i915/lrc: Only enable per-context and per-bb buffers if set")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: <stable@vger.kernel.org> # v4.15+

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 4e856947fb13..703d9ecc3f7e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1453,6 +1453,9 @@ static int lrc_setup_wa_ctx(struct intel_engine_cs *engine)
>  void lrc_fini_wa_ctx(struct intel_engine_cs *engine)
>  {
>  	i915_vma_unpin_and_release(&engine->wa_ctx.vma, 0);
> +
> +	/* Called on error unwind, clear all flags to prevent further use */
> +	memset(&engine->wa_ctx, 0, sizeof(engine->wa_ctx));
>  }
>  
>  typedef u32 *(*wa_bb_func_t)(struct intel_engine_cs *engine, u32 *batch);
> -- 
> 2.20.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
