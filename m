Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA112644114
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 11:14:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44ABE10E313;
	Tue,  6 Dec 2022 10:14:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0477A10E313
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 10:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670321670; x=1701857670;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=XSntEJENudW/0xrr65whaKtJB6zz9yvYrpjoGHIgROo=;
 b=gXt/q5k4frm2IWTPfWgG9kt1L1nzwtCQHn2GCejDfEuHDkJcklbCJQ7O
 V2X6YQaZ8djqMhI1s+lW0M8cxtgDtqsMDfuspAcTKeTl84i0oNhIk8QKQ
 qZrH08lyWtGR8zehCNU2NM9pouloFemouSwh4HC70SdLovqCnLGfYeoIG
 3kFPFZUwLm846lSHL/MqhVVmxtu4d8ro+cZRE+zAqpJ/1qNFhReAiOS7Q
 5AaWabIBpbA8pi/h8kwrcuOYBSUlgO4n9ROJSJalsB5q1EdHrwzE4jNG5
 Wtjjof69vXOGlXEcLMSSJ72hx/pFrlHFIMjfwSrtsSdyHzXXbKYdhezB7 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="304208851"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="304208851"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 02:14:29 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="676924251"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="676924251"
Received: from kflahert-mobl.ger.corp.intel.com (HELO [10.213.212.142])
 ([10.213.212.142])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 02:14:28 -0800
Message-ID: <1f453b64-3444-9d0e-bf9b-668229e763ef@linux.intel.com>
Date: Tue, 6 Dec 2022 10:14:26 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20221206092100.274195-1-alan.previn.teres.alexis@intel.com>
 <20221206092100.274195-3-alan.previn.teres.alexis@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221206092100.274195-3-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 2/5] drm/i915/guc: Add unaligned wc
 memcpy for copying GuC Log
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


On 06/12/2022 09:20, Alan Previn wrote:
> Add usage of unaligned wc mempy in read_update_log_buffer
> as newer formats of GuC debug-log-events are no longer
> guaranteed to be exactly 4-dwords long per event.

If this "newer format" applies to DG2 and GuC log has been "productized" 
there (as in we expect to tell users please collect and attach), pick a 
fixes tag so this gets into 6.2.

Regards,

Tvrtko

> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_log.c | 9 ++++++---
>   1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> index c5a7aecd08ac..2fa952916120 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> @@ -459,13 +459,16 @@ static void _guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
>   
>   		/* Just copy the newly written data */
>   		if (read_offset > write_offset) {
> -			i915_memcpy_from_wc(dst_data, src_data, write_offset);
> +			if (!i915_memcpy_from_wc(dst_data, src_data, write_offset))
> +				i915_unaligned_memcpy_from_wc(dst_data, src_data, write_offset);
>   			bytes_to_copy = buffer_size - read_offset;
>   		} else {
>   			bytes_to_copy = write_offset - read_offset;
>   		}
> -		i915_memcpy_from_wc(dst_data + read_offset,
> -				    src_data + read_offset, bytes_to_copy);
> +		if (!i915_memcpy_from_wc(dst_data + read_offset,
> +					 src_data + read_offset, bytes_to_copy))
> +			i915_unaligned_memcpy_from_wc(dst_data + read_offset,
> +						      src_data + read_offset, bytes_to_copy);
>   
>   		src_data += buffer_size;
>   		dst_data += buffer_size;
