Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9788E70A977
	for <lists+intel-gfx@lfdr.de>; Sat, 20 May 2023 19:27:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83B1C10E034;
	Sat, 20 May 2023 17:27:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96B0110E034
 for <intel-gfx@lists.freedesktop.org>; Sat, 20 May 2023 17:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684603637; x=1716139637;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=kx+nZ9X6jYSIkCRLw5Ta+rq4LKNFErishPJDyM0YJTw=;
 b=nWSUowXcP0vorinGA2EFB7Op/H9qKIk6BXASgKP4E1qvvxwD4Tyagtei
 HSSxg60bLHexJdwSvide0xLD4SYntcw/ISwZ3zXZ8J/dsQmRTXxD8BqWG
 QZlnzO6MElIXUvcYOmibjceZ4mPLLAxLezTn/UZi0diMPiO8URgIde0LY
 7fApfkuX65YWzXn8K7aEP3A2r5x+nPkE1YYrimxyZ1WNOK/6lk3oYrOZO
 G3ccWpHfGuJwCKcXD/pvDyb0cP37FNWfAOQa/gmfBnaFnJo76GKYEDuR+
 M13qbLjUEqjIEMXHp4tCPP0LrOLPTBTJS5a4JolG2cWXm37vyck8nMFhb w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10716"; a="332976294"
X-IronPort-AV: E=Sophos;i="6.00,180,1681196400"; d="scan'208";a="332976294"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2023 10:27:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10716"; a="680394622"
X-IronPort-AV: E=Sophos;i="6.00,180,1681196400"; d="scan'208";a="680394622"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga006.jf.intel.com with ESMTP; 20 May 2023 10:27:15 -0700
Received: from [10.252.43.246] (grauter-mobl.ger.corp.intel.com
 [10.252.43.246])
 by linux.intel.com (Postfix) with ESMTP id CFD1E580505;
 Sat, 20 May 2023 10:27:14 -0700 (PDT)
Message-ID: <e377f760-450d-2713-5bec-2bbf496da889@linux.intel.com>
Date: Sat, 20 May 2023 20:27:23 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230519225642.134778-1-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@linux.intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
In-Reply-To: <20230519225642.134778-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] i915/perf: Avoid reading OA reports before
 they land
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Umesh,

Looks like there is still a problem with the if block moving the 
stream->oa_buffer.tail forward.
An application not doing any polling would still run into the same problem.

If I understand correctly this change, it means the time based 
workaround doesn't work.
We need to actually check the report's content before moving the 
software tracked tail.
If that's the case, they maybe we should just delete that code.

-Lionel

On 20/05/2023 01:56, Umesh Nerlige Ramappa wrote:
> On DG2, capturing OA reports while running heavy render workloads
> sometimes results in invalid OA reports where 64-byte chunks inside
> reports have stale values. Under memory pressure, high OA sampling rates
> (13.3 us) and heavy render workload, occassionally, the OA HW TAIL
> pointer does not progress as fast as the sampling rate. When these
> glitches occur, the TAIL pointer takes approx. 200us to progress.  While
> this is expected behavior from the HW perspective, invalid reports are
> not expected.
>
> In oa_buffer_check_unlocked(), when we execute the if condition, we are
> updating the oa_buffer.tail to the aging tail and then setting pollin
> based on this tail value, however, we do not have a chance to rewind and
> validate the reports prior to setting pollin. The validation happens
> in a subsequent call to oa_buffer_check_unlocked(). If a read occurs
> before this validation, then we end up reading reports up until this
> oa_buffer.tail value which includes invalid reports. Though found on
> DG2, this affects all platforms.
>
> Set the pollin only in the else condition in oa_buffer_check_unlocked.
>
> Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/7484
> Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/7757
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_perf.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 19d5652300ee..61536e3c4ac9 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -545,7 +545,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
>   	u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
>   	int report_size = stream->oa_buffer.format->size;
>   	unsigned long flags;
> -	bool pollin;
> +	bool pollin = false;
>   	u32 hw_tail;
>   	u64 now;
>   	u32 partial_report_size;
> @@ -620,10 +620,10 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
>   		stream->oa_buffer.tail = gtt_offset + tail;
>   		stream->oa_buffer.aging_tail = gtt_offset + hw_tail;
>   		stream->oa_buffer.aging_timestamp = now;
> -	}
>   
> -	pollin = OA_TAKEN(stream->oa_buffer.tail - gtt_offset,
> -			  stream->oa_buffer.head - gtt_offset) >= report_size;
> +		pollin = OA_TAKEN(stream->oa_buffer.tail - gtt_offset,
> +				  stream->oa_buffer.head - gtt_offset) >= report_size;
> +	}
>   
>   	spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
>   


