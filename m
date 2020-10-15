Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCFE828F59B
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 17:13:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12D676ED5E;
	Thu, 15 Oct 2020 15:13:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 923416ED5E
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 15:13:20 +0000 (UTC)
IronPort-SDR: vAHU5XlX8s0Q9dOSrl9HnFTCr2JotcZt+gVDJFr+8EYYo+CUUBXgTMPRTp8+0NpfN+pr+WlcLq
 oDQ47iqJrsHg==
X-IronPort-AV: E=McAfee;i="6000,8403,9775"; a="163750389"
X-IronPort-AV: E=Sophos;i="5.77,379,1596524400"; d="scan'208";a="163750389"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 08:13:11 -0700
IronPort-SDR: tWxQaS03wnSBqkyMPsbygTNhZOJLXhId/aQXTiZxnL6m9F5oatHPfoS0oHqKm5TrQZZiaEAC3K
 RF3d+UDM7EDg==
X-IronPort-AV: E=Sophos;i="5.77,379,1596524400"; d="scan'208";a="521872982"
Received: from cduignan-mobl1.ger.corp.intel.com (HELO [10.252.17.110])
 ([10.252.17.110])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 08:13:10 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201015115820.665-1-chris@chris-wilson.co.uk>
 <20201015115954.871-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <c9d5258a-7d8d-72ac-8b06-18c454fe0418@intel.com>
Date: Thu, 15 Oct 2020 16:13:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201015115954.871-1-chris@chris-wilson.co.uk>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Support parsing of oversize
 batches
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

On 15/10/2020 12:59, Chris Wilson wrote:
> Matthew Auld noted that on more recent systems (such as the parser for
> gen9) we may have objects that are larger than expected by the GEM uAPI
> (i.e. greater than u32). These objects would have incorrect implicit
> batch lengths, causing the parser to reject them for being incomplete,
> or worse.
> 
> Based on a patch by Matthew Auld.
> 
> Reported-by: Matthew Auld <matthew.auld@intel.com>
> Fixes: 435e8fc059db ("drm/i915: Allow parsing of unsized batches")
> Testcase: igt/gem_exec_params/larger-than-life-batch
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 11 ++++++++---
>   1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 4b09bcd70cf4..44b4558d5e86 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -287,8 +287,8 @@ struct i915_execbuffer {
>   	u64 invalid_flags; /** Set of execobj.flags that are invalid */
>   	u32 context_flags; /** Set of execobj.flags to insert from the ctx */
>   
> +	u64 batch_len; /** Length of batch within object */
>   	u32 batch_start_offset; /** Location within object of batch */
> -	u32 batch_len; /** Length of batch within object */
>   	u32 batch_flags; /** Flags composed for emit_bb_start() */
>   	struct intel_gt_buffer_pool_node *batch_pool; /** pool node for batch buffer */
>   
> @@ -871,6 +871,10 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
>   
>   	if (eb->batch_len == 0)
>   		eb->batch_len = eb->batch->vma->size - eb->batch_start_offset;
> +	if (eb->batch_len == 0) {
> +		drm_dbg(&i915->drm, "Invalid batch length\n");
> +		return -EINVAL;
> +	}

This one should be impossible, or at least we should have hit the 
range_overflows check first?

Anyway, looks good to me,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
