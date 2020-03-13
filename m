Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D877A184598
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 12:08:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F7A66EBC0;
	Fri, 13 Mar 2020 11:08:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06FCB6EBC0
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2020 11:08:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 04:08:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,548,1574150400"; d="scan'208";a="278180792"
Received: from costindx-wtg.ger.corp.intel.com (HELO [10.252.38.100])
 ([10.252.38.100])
 by fmsmga002.fm.intel.com with ESMTP; 13 Mar 2020 04:08:04 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200312115307.16460-1-chris@chris-wilson.co.uk>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <418fcb31-0c49-4205-1164-3e2078cd8b4e@linux.intel.com>
Date: Fri, 13 Mar 2020 12:08:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200312115307.16460-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Wait for RCUs frees before
 asserting idle on unload
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

Op 12-03-2020 om 12:53 schreef Chris Wilson:
> During driver unload, we have many asserts that we have released our
> bookkeeping structs and are idle. In some cases, these struct are
> protected by RCU and we do not release them until after an RCU grace
> period.
>
> Reported-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Fixes: 130a95e9098e ("drm/i915/gem: Consolidate ctx->engines[] release")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 3dea8881e915..d09f7596cb98 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -667,6 +667,9 @@ void intel_gt_driver_release(struct intel_gt *gt)
>  
>  void intel_gt_driver_late_release(struct intel_gt *gt)
>  {
> +	/* We need to wait for inflight RCU frees to release their grip */
> +	rcu_barrier();
> +
>  	intel_uc_driver_late_release(&gt->uc);
>  	intel_gt_fini_requests(gt);
>  	intel_gt_fini_reset(gt);

Is it possible this is causing a hang on exit in gem_exec_parallel when I have an extra bunch of debug options enabled?

Also potentially seems to break selftests on cml :)

otherwise looks sane,

Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
