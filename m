Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A8C4AD51E
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 10:39:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 545C910E487;
	Tue,  8 Feb 2022 09:39:37 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73F4D10E42F;
 Tue,  8 Feb 2022 09:39:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644313175; x=1675849175;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Df0C/LrFVscjyi5H5SdgDbADUUcMmmwnwJrI6V8QSCw=;
 b=U/Yn5ehK3FMieJ2Wo+HJRwW5ooVsGCPCyi/A2jYqoyUcQshh/3GoHLcz
 Ynl89iEZaqipMyhiDB2a1ABOqWRw2v0hoJdnJk5MEEOybtw39l1x/WiWD
 YLng8LkaVWBNPTSt/45nUPagDPWNEHwecd6Mb4qtxfj4wqOoN7VkeP+5N
 RD+iCB/JR0FlQk456st3LhXdLZJEbO6qpS8o+kNMnmieMeKrkStAnpX37
 tSSWqTWZTdHuv9figjyDw7VIgpCXDwMizhc+vAq7YUvaTnZvW0OgIY/LH
 3az06QrmtQmHnaPlKLOx/uEykrZg8cSi+dYybdhpmxQaoqE6C3z7u621k g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="236317868"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="236317868"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 01:39:35 -0800
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="484753098"
Received: from kgonza2-mobl2.gar.corp.intel.com (HELO [10.213.198.226])
 ([10.213.198.226])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 01:39:34 -0800
Message-ID: <ba8ce5c6-ba11-f2af-917c-9e6e14445d43@linux.intel.com>
Date: Tue, 8 Feb 2022 09:39:32 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: John.C.Harrison@Intel.com, Intel-GFX@Lists.FreeDesktop.Org
References: <20220208020716.2140157-1-John.C.Harrison@Intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220208020716.2140157-1-John.C.Harrison@Intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Fix flag query to not modify
 state
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 08/02/2022 02:07, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> A flag query helper was actually writing to the flags word rather than
> just reading. Fix that. Also update the function's comment as it was
> out of date.
> 
> Fixes: 0f7976506de61 ("drm/i915/guc: Rework and simplify locking")
> Signed-off-by: John Harrison <john.c.harrison@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 7 ++-----
>   1 file changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index b3a429a92c0d..d9f4218f5ef4 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -174,11 +174,8 @@ static inline void init_sched_state(struct intel_context *ce)
>   __maybe_unused
>   static bool sched_state_is_init(struct intel_context *ce)
>   {
> -	/*
> -	 * XXX: Kernel contexts can have SCHED_STATE_NO_LOCK_REGISTERED after
> -	 * suspend.
> -	 */
> -	return !(ce->guc_state.sched_state &=
> +	/* Kernel contexts can have SCHED_STATE_REGISTERED after suspend. */
> +	return !(ce->guc_state.sched_state &
>   		 ~(SCHED_STATE_BLOCKED_MASK | SCHED_STATE_REGISTERED));
>   }
>   

Looks important - what are the consequences?

Needs Cc: stable for 5.16?

Regards,

Tvrtko
