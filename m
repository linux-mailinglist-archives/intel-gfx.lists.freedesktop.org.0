Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E77BF1C92C5
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 16:58:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4A786E9D4;
	Thu,  7 May 2020 14:58:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DA616E9D4
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 14:58:38 +0000 (UTC)
IronPort-SDR: qULMp4Tk3JqXCvYiLEptEoQrcy6+jZWD1Ntc7aYBSXvOl/EPWfElhjKBWm7VjcTg1hvTwU18u0
 fxLi/PsMaYJQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 07:58:38 -0700
IronPort-SDR: G+LeVH9FsPLPSmDqZwy8r7PLj6Sabr9qwtWREFZ02SxxwK8bnd0i746M1nr6wDGKdDa4kTl6hA
 eW5zQXaGcG4A==
X-IronPort-AV: E=Sophos;i="5.73,364,1583222400"; d="scan'208";a="435313939"
Received: from nstgemme-mobl1.ger.corp.intel.com (HELO [10.252.42.100])
 ([10.252.42.100])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 07:58:37 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200507082124.1673-1-chris@chris-wilson.co.uk>
 <20200507082124.1673-3-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <360b7bf2-a1ce-c028-0061-3a90641b18d2@linux.intel.com>
Date: Thu, 7 May 2020 15:58:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200507082124.1673-3-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Treat weak-dependencies as
 bidirectional when applying priorities
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


On 07/05/2020 09:21, Chris Wilson wrote:
> Clients may use a submit-fence as bidirectional bond between two or more
> co-operating requests, and so if we bump the priority of one, we wish to
> bump the priority of the set.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_scheduler.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> index 6e2d4190099f..7194fbfcaa49 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.c
> +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> @@ -291,6 +291,12 @@ static void __i915_schedule(struct i915_sched_node *node,
>   			if (prio > READ_ONCE(p->signaler->attr.priority))
>   				list_move_tail(&p->dfs_link, &dfs);
>   		}
> +
> +		list_for_each_entry(p, &node->waiters_list, wait_link) {
> +			if (p->flags & I915_DEPENDENCY_WEAK &&
> +			    prio > READ_ONCE(p->waiter->attr.priority))
> +				list_move_tail(&p->dfs_link, &dfs);
> +		}
>   	}
>   
>   	/*
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
