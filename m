Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B884680FF
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Dec 2021 00:59:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F18EAB6C3;
	Fri,  3 Dec 2021 23:59:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FF95AB6B4
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Dec 2021 23:59:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10187"; a="235811401"
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="235811401"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 15:59:23 -0800
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="678283221"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 15:59:23 -0800
Date: Fri, 3 Dec 2021 15:53:56 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Bruce Chang <yu.bruce.chang@intel.com>
Message-ID: <20211203235356.GA3393@jons-linux-dev-box>
References: <20211203233057.2854-1-yu.bruce.chang@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211203233057.2854-1-yu.bruce.chang@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Follow up on increase
 timeout in i915_gem_contexts selftests
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 03, 2021 at 03:30:57PM -0800, Bruce Chang wrote:
> Follow up on patch https://patchwork.freedesktop.org/patch/446832/
> 
> Different platforms will take a bit longer while GuC is enabled, so
> increase the timeout and also add some margin in i915_gem_context
> selftest.
> 
> Signed-off-by: Bruce Chang <yu.bruce.chang@intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> ---
>  drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> index b32f7fed2d9c..ae33e8c705da 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> @@ -88,7 +88,7 @@ static int live_nop_switch(void *arg)
>  			rq = i915_request_get(this);
>  			i915_request_add(this);
>  		}
> -		if (i915_request_wait(rq, 0, HZ) < 0) {
> +		if (i915_request_wait(rq, 0, 10*HZ) < 0) {

s/10*HZ/10 * HZ/

With that and an agreed upon audit of selftests / IGTs:
Reviewed-by: Matthew Brost <matthew.brost@intel.com

s/10*HZ/10 * HZ/

With that and an agreed upon audit of selftests / IGTs:
Reviewed-by: Matthew Brost <matthew.brost@intel.com

s/10*HZ/10 * HZ/

With that and an agreed upon audit of selftests / IGTs:
Reviewed-by: Matthew Brost <matthew.brost@intel.com

s/10*HZ/10 * HZ/

With that and an agreed upon audit of selftests / IGTs:
Reviewed-by: Matthew Brost <matthew.brost@intel.com

s/10*HZ/10 * HZ/

With that and an agreed upon audit of selftests / IGTs:
Reviewed-by: Matthew Brost <matthew.brost@intel.com

s/10*HZ/10 * HZ/

With that and an agreed upon audit of selftests / IGTs:
Reviewed-by: Matthew Brost <matthew.brost@intel.com

s/10*HZ/10 * HZ/

With that and an agreed upon audit of selftests / IGTs:
Reviewed-by: Matthew Brost <matthew.brost@intel.com

s/10*HZ/10 * HZ/

With that and an agreed upon audit of selftests / IGTs:
Reviewed-by: Matthew Brost <matthew.brost@intel.com

s/10*HZ/10 * HZ/

With that and an agreed upon audit of selftests / IGTs:
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

>  			pr_err("Failed to populated %d contexts\n", nctx);
>  			intel_gt_set_wedged(&i915->gt);
>  			i915_request_put(rq);
> -- 
> 2.21.3
> 
