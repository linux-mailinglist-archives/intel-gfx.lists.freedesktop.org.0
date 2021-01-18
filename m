Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8CA2F9DA4
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 12:11:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A3276E1B4;
	Mon, 18 Jan 2021 11:11:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C7EC6E1B4
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 11:11:12 +0000 (UTC)
IronPort-SDR: O3R8T/VMt4MRTByZZRVD14H9JNGZTk+yE1zC2ve3IXXngt3kRrr1wkZA1MtaeuYtQUFX+XBI9W
 r375uJ5g9XhA==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="178939931"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="178939931"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 03:11:11 -0800
IronPort-SDR: ihh78oenPpBjXfGFNgpsn7h0IuLW0V/IuFAKYSXPlVcy3/gofiLB6yp2eTXnryCjvQgGVP/HDk
 KpUdFd+ES7+A==
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="383529989"
Received: from jwalsh1-mobl1.ger.corp.intel.com (HELO [10.252.7.161])
 ([10.252.7.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 03:11:10 -0800
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
 <20210105153558.134272-64-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <dbf9df80-2fba-b7f8-4e88-a6114eea3d5f@linux.intel.com>
Date: Mon, 18 Jan 2021 12:11:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210105153558.134272-64-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 63/64] drm/i915: Move gt_revoke() slightly
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


On 1/5/21 4:35 PM, Maarten Lankhorst wrote:
> We get a lockdep splat when the reset mutex is held, because it can be
> taken from fence_wait. This conflicts with the mmu notifier we have,
> because we recurse between reset mutex and mmap lock -> mmu notifier.
>
> Remove this recursion by calling revoke_mmaps before taking the lock.

Hmm. Is the mmap se taken from gt_revoke()?

If so, isn't the real problem that the mmap_sem is taken in the 
dma_fence critical path (where the reset code sits)?

/Thomas


>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_reset.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 9d177297db79..3c0807d9a86e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -975,8 +975,6 @@ static int do_reset(struct intel_gt *gt, intel_engine_mask_t stalled_mask)
>   {
>   	int err, i;
>   
> -	gt_revoke(gt);
> -
>   	err = __intel_gt_reset(gt, ALL_ENGINES);
>   	for (i = 0; err && i < RESET_MAX_RETRIES; i++) {
>   		msleep(10 * (i + 1));
> @@ -1031,6 +1029,9 @@ void intel_gt_reset(struct intel_gt *gt,
>   
>   	might_sleep();
>   	GEM_BUG_ON(!test_bit(I915_RESET_BACKOFF, &gt->reset.flags));
> +
> +	gt_revoke(gt);
> +
>   	mutex_lock(&gt->reset.mutex);
>   
>   	/* Clear any previous failed attempts at recovery. Time to try again. */
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
