Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE8923EC6F
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 13:27:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38CB46E0EA;
	Fri,  7 Aug 2020 11:27:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E413C6E0EA
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Aug 2020 11:27:53 +0000 (UTC)
IronPort-SDR: ESN7ptDPtyVJ3QKGKRUFvGluUPr15AB0N44+gMnFRnCdvPkrYRZHpBzE/F8WdvarQnxnjp07Jp
 sWb716Nf6dDw==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="214588775"
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="214588775"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 04:27:53 -0700
IronPort-SDR: ekNzPDeXdyd5JXN6BhDm91dTVpB5F55xB5o2szPy704HptKjtNNgcnpo0M46hVSJcZRf5yegis
 RQXyWP5/Tstw==
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="437876792"
Received: from kmatyuch-mobl.ger.corp.intel.com (HELO [10.255.197.120])
 ([10.255.197.120])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 04:27:51 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200807083256.32761-1-chris@chris-wilson.co.uk>
 <20200807083256.32761-5-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d1b23156-be69-e0c4-d3b1-072c95db784b@linux.intel.com>
Date: Fri, 7 Aug 2020 12:27:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200807083256.32761-5-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915/gt: Don't cancel the interrupt
 shadow too early
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


On 07/08/2020 09:32, Chris Wilson wrote:
> We currently want to keep the interrupt enabled until the interrupt after
> which we have no more work to do. This heuristic was broken by us
> kicking the irq-work on adding a completed request without attaching a
> signaler -- hence it appearing to the irq-worker that an interrupt had
> fired when we were idle.
> 
> Fixes: bda4d4db6dd6 ("drm/i915/gt: Replace intel_engine_transfer_stale_breadcrumbs")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> index 98923344f491..c290a47a96e3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> @@ -229,7 +229,7 @@ static void signal_irq_work(struct irq_work *work)
>   	 * interrupt draw less ire from other users of the system and tools
>   	 * like powertop.
>   	 */
> -	if (b->irq_armed && list_empty(&b->signalers))
> +	if (!signal && b->irq_armed && list_empty(&b->signalers))
>   		__intel_breadcrumbs_disarm_irq(b);
>   
>   	list_for_each_entry_safe(ce, cn, &b->signalers, signal_link) {
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
