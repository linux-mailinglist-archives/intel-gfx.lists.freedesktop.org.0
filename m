Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B0846C09A
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 17:20:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2CCBABFF1;
	Tue,  7 Dec 2021 16:20:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C782ABEBC
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 16:20:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="237840921"
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="237840921"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 08:16:11 -0800
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="462345365"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.205])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 08:16:09 -0800
Date: Tue, 7 Dec 2021 21:45:51 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Bruce Chang <yu.bruce.chang@intel.com>
Message-ID: <20211207161550.GB8154@intel.com>
References: <20211207003845.12419-1-yu.bruce.chang@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211207003845.12419-1-yu.bruce.chang@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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

On 2021-12-06 at 16:38:45 -0800, Bruce Chang wrote:
> Follow up on commit 5e076529e265 ("drm/i915/selftests: Increase timeout in
> i915_gem_contexts selftests")
> 
> So we went from 200 msec to 1sec in that commit, and now we are going to
> 10sec as timeout.
Thanks for the change and review. commit is merged.

Ram.
> 
> Signed-off-by: Bruce Chang <yu.bruce.chang@intel.com>
> Reviewed-by: Matthew Brost <matthew.brost@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> ---
>  drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> index b32f7fed2d9c..21b71568cd5f 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> @@ -88,7 +88,7 @@ static int live_nop_switch(void *arg)
>  			rq = i915_request_get(this);
>  			i915_request_add(this);
>  		}
> -		if (i915_request_wait(rq, 0, HZ) < 0) {
> +		if (i915_request_wait(rq, 0, 10 * HZ) < 0) {
>  			pr_err("Failed to populated %d contexts\n", nctx);
>  			intel_gt_set_wedged(&i915->gt);
>  			i915_request_put(rq);
> -- 
> 2.21.3
> 
