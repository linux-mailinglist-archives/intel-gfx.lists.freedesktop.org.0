Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD76361F00E
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 11:13:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8C4489CFA;
	Mon,  7 Nov 2022 10:13:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2105489CFA
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 10:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667816029; x=1699352029;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=G7uXOfMTFqRWty4tb410EiX89iv0FYLUYwpxBzNGFzU=;
 b=SiWZ+VLocn/+GZK7ZC9N1bz7BC0GqxCWad1J8/yLPtFjJwfuy3ZLqhTG
 xgWXn2aXral/ZxtK99xhd/wt2ND1OWB+YY0JGSyU02kIjhO/oPKIhbxfZ
 xnH11dsTvnqm2/L4rkTbEn2WUhfwt9+U5cPYHIi1avjdMpVINM5xFRVbt
 y/n1+SC2vEDpTrhq/KFaJiuK+u/37yQwTrG9q1eMEhiRGxwrc7QN7V0ow
 EGEu9P/ErxC4RNzhsXwKXCixIHCJ5+ocxNyKIH7dhNbqhdGLcPfFI/S15
 HRqHzvwsSPR60RMpUVIFI78iAQQCR8CZ6bsI9sLNKlgcmkhwvjdbKFM5o g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="290100855"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="290100855"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 02:13:48 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="881013113"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="881013113"
Received: from aalbarra-mobl.ger.corp.intel.com (HELO [10.213.226.227])
 ([10.213.226.227])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 02:13:47 -0800
Message-ID: <a6daeb51-8552-9f26-94c0-425ae1e24077@linux.intel.com>
Date: Mon, 7 Nov 2022 10:13:46 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20221105003235.1717908-1-umesh.nerlige.ramappa@intel.com>
 <20221105003235.1717908-2-umesh.nerlige.ramappa@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221105003235.1717908-2-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] i915/uncore: Acquire fw before loop in
 intel_uncore_read64_2x32
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


On 05/11/2022 00:32, Umesh Nerlige Ramappa wrote:
> PMU reads the GT timestamp as a 2x32 mmio read and since upper and lower
> 32 bit registers are read in a loop, there is a latency involved between
> getting the GT timestamp and the CPU timestamp. As part of the
> resolution, refactor intel_uncore_read64_2x32 to acquire forcewake and
> uncore lock prior to reading upper and lower regs.
> 
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>   drivers/gpu/drm/i915/intel_uncore.h | 44 ++++++++++++++++++++---------
>   1 file changed, 30 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
> index 5449146a0624..e9e38490815d 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.h
> +++ b/drivers/gpu/drm/i915/intel_uncore.h
> @@ -382,20 +382,6 @@ __uncore_write(write_notrace, 32, l, false)
>    */
>   __uncore_read(read64, 64, q, true)
>   
> -static inline u64
> -intel_uncore_read64_2x32(struct intel_uncore *uncore,
> -			 i915_reg_t lower_reg, i915_reg_t upper_reg)
> -{
> -	u32 upper, lower, old_upper, loop = 0;
> -	upper = intel_uncore_read(uncore, upper_reg);
> -	do {
> -		old_upper = upper;
> -		lower = intel_uncore_read(uncore, lower_reg);
> -		upper = intel_uncore_read(uncore, upper_reg);
> -	} while (upper != old_upper && loop++ < 2);
> -	return (u64)upper << 32 | lower;
> -}
> -
>   #define intel_uncore_posting_read(...) ((void)intel_uncore_read_notrace(__VA_ARGS__))
>   #define intel_uncore_posting_read16(...) ((void)intel_uncore_read16_notrace(__VA_ARGS__))
>   
> @@ -455,6 +441,36 @@ static inline void intel_uncore_rmw_fw(struct intel_uncore *uncore,
>   		intel_uncore_write_fw(uncore, reg, val);
>   }
>   
> +static inline u64
> +intel_uncore_read64_2x32(struct intel_uncore *uncore,
> +			 i915_reg_t lower_reg, i915_reg_t upper_reg)
> +{
> +	u32 upper, lower, old_upper, loop = 0;
> +	enum forcewake_domains fw_domains;
> +	unsigned long flags;
> +
> +	fw_domains = intel_uncore_forcewake_for_reg(uncore, lower_reg,
> +						    FW_REG_READ);
> +
> +	fw_domains |= intel_uncore_forcewake_for_reg(uncore, upper_reg,
> +						    FW_REG_READ);
> +
> +	spin_lock_irqsave(&uncore->lock, flags);
> +	intel_uncore_forcewake_get__locked(uncore, fw_domains);
> +
> +	upper = intel_uncore_read_fw(uncore, upper_reg);
> +	do {
> +		old_upper = upper;
> +		lower = intel_uncore_read_fw(uncore, lower_reg);
> +		upper = intel_uncore_read_fw(uncore, upper_reg);
> +	} while (upper != old_upper && loop++ < 2);
> +
> +	intel_uncore_forcewake_put__locked(uncore, fw_domains);

I mulled over the fact this no longer applies the put hysteresis, but 
then I saw GuC busyness is essentially the only current caller so 
thought it doesn't really warrant adding a super long named 
intel_uncore_forcewake_put_delayed__locked helper.

Perhaps it would make sense to move this out of static inline, in which 
case it would also be easier to have the hysteresis without needing to 
export any new helpers, but mostly because it does not feel the static 
inline is justified. Sounds an attractive option but it is passable as is.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

> +	spin_unlock_irqrestore(&uncore->lock, flags);
> +
> +	return (u64)upper << 32 | lower;
> +}
> +
>   static inline int intel_uncore_write_and_verify(struct intel_uncore *uncore,
>   						i915_reg_t reg, u32 val,
>   						u32 mask, u32 expected_val)
