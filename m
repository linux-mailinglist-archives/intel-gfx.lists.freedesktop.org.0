Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0966D31312C
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 12:44:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 236BF6E8AD;
	Mon,  8 Feb 2021 11:44:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 780D96E8AD
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 11:44:18 +0000 (UTC)
IronPort-SDR: 93HEumOSePkBUj0NUtFeKFO6fYfmxRCNqX/LreTqblSp7WJ6qjyPtR3P7eTXez/7xWPmzg6Wgi
 Ciw+iKCgkFtQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9888"; a="181844239"
X-IronPort-AV: E=Sophos;i="5.81,161,1610438400"; d="scan'208";a="181844239"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 03:44:18 -0800
IronPort-SDR: oVSNLfQxSzuH7aGlzurOr3bfiIQSyVLZbh9CuPNptoLv0GiEqw/KO/XH8o4darCHARUMNuDwWj
 cGh7o7a3cghQ==
X-IronPort-AV: E=Sophos;i="5.81,161,1610438400"; d="scan'208";a="395353883"
Received: from dlauner-mobl.ger.corp.intel.com (HELO [10.214.195.182])
 ([10.214.195.182])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 03:44:17 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
 <20210208105236.28498-5-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3c5d700a-41f0-b224-e6ae-332af5afb2f5@linux.intel.com>
Date: Mon, 8 Feb 2021 11:44:14 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210208105236.28498-5-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 05/31] drm/i915/gt: Declare when we enabled
 timeslicing
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 08/02/2021 10:52, Chris Wilson wrote:
> Let userspace know if they can trust timeslicing by including it as part
> of the I915_PARAM_HAS_SCHEDULER::I915_SCHEDULER_CAP_TIMESLICING
> 
> v2: Only declare timeslicing if we can safely preempt userspace.
> 
> Fixes: 8ee36e048c98 ("drm/i915/execlists: Minimalistic timeslicing")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_user.c | 1 +
>   include/uapi/drm/i915_drm.h                 | 1 +
>   2 files changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> index 3d3cdc080c32..3fab439ba22b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> @@ -102,6 +102,7 @@ static void set_scheduler_caps(struct drm_i915_private *i915)
>   #define MAP(x, y) { I915_SCHED_##x, ilog2(I915_SCHEDULER_CAP_##y) }
>   		MAP(ACTIVE_BIT, ENABLED),
>   		MAP(PRIORITY_BIT, PRIORITY),
> +		MAP(TIMESLICE_BIT, TIMESLICING),
>   #undef MAP
>   	};
>   	struct intel_engine_cs *engine;
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 1987e2ea79a3..cda0f391d965 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -524,6 +524,7 @@ typedef struct drm_i915_irq_wait {
>   #define   I915_SCHEDULER_CAP_PREEMPTION	(1ul << 2)
>   #define   I915_SCHEDULER_CAP_SEMAPHORES	(1ul << 3)
>   #define   I915_SCHEDULER_CAP_ENGINE_BUSY_STATS	(1ul << 4)
> +#define   I915_SCHEDULER_CAP_TIMESLICING	(1ul << 5)
>   
>   #define I915_PARAM_HUC_STATUS		 42
>   
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
