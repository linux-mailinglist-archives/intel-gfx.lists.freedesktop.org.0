Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 166D9646CB8
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 11:29:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2478910E1B8;
	Thu,  8 Dec 2022 10:29:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1404910E496
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 10:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670495379; x=1702031379;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=gUdG3iDUiF317cUB22UsO9iirgUzZzAPUcYWciHVKhk=;
 b=ZdwLjRq55x4N5MzE+7LAxQenseFD4nr4JdUhASIjbHPvDdIb+JioRrQh
 MV+vEj9/duvr+WwsK8LbPWuEr0mPg5EkZaPqt3G9ReLFi4sNvAhRM92Vp
 SzHUrZssqhFghX5ymEOJ74/LIpA00WdiSq1HI1b6kanFl3LfDIh1J6kdG
 t8xFHTS264IZrZuyRE2tpDW0UAy1auw2d/Ktzjsx/qBKE9G1ZGk7FgHMr
 QVIPxchdtI7A+g2SNe8EvzTOiHTHFR6tic+rteqgcR4ljPmE7eyAj5Igf
 xDawpj31jvbmlY1PVagXdLY6fOcNbWJl7fr/hzy8kMroBunFqxAYBu05e w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="300551113"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="300551113"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 02:29:37 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="821289625"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="821289625"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.6.160])
 ([10.213.6.160])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 02:29:36 -0800
Message-ID: <51dae3e3-8ebd-9d81-e20c-937144bcd599@intel.com>
Date: Thu, 8 Dec 2022 11:29:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1670433372.git.jani.nikula@intel.com>
 <0d051554dfeeb4d8aa3bc9136ed111fa35f647d8.1670433372.git.jani.nikula@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <0d051554dfeeb4d8aa3bc9136ed111fa35f647d8.1670433372.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 01/11] drm/i915/de: Add more macros to
 remove all direct calls to uncore
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

On 07.12.2022 18:17, Jani Nikula wrote:
> From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> 
> Add more de helpers to be able to avoid direct calls to uncore.
> 
> v3 by Jani:
> - drop intel_de_write_samevalue/intel_de_rewrite_fw altogether
> 
> v2 by Jani:
> - drop pcode stuff for now
> - rename intel_de_write_samevalue -> intel_de_rewrite_fw
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_de.h | 35 +++++++++++++++++++++++++
>   1 file changed, 35 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
> index 9c104f65e4c8..004f01906fd7 100644
> --- a/drivers/gpu/drm/i915/display/intel_de.h
> +++ b/drivers/gpu/drm/i915/display/intel_de.h
> @@ -16,6 +16,12 @@ intel_de_read(struct drm_i915_private *i915, i915_reg_t reg)
>   	return intel_uncore_read(&i915->uncore, reg);
>   }
>   
> +static inline u8
> +intel_de_read8(struct drm_i915_private *i915, i915_reg_t reg)
> +{
> +	return intel_uncore_read8(&i915->uncore, reg);
> +}
> +
>   static inline void
>   intel_de_posting_read(struct drm_i915_private *i915, i915_reg_t reg)
>   {
> @@ -41,6 +47,23 @@ intel_de_wait_for_register(struct drm_i915_private *i915, i915_reg_t reg,
>   	return intel_wait_for_register(&i915->uncore, reg, mask, value, timeout);
>   }
>   
> +static inline int
> +intel_de_wait_for_register_fw(struct drm_i915_private *i915, i915_reg_t reg,
> +			      u32 mask, u32 value, unsigned int timeout)
> +{
> +	return intel_wait_for_register_fw(&i915->uncore, reg, mask, value, timeout);
> +}
> +
> +static inline int
> +__intel_de_wait_for_register(struct drm_i915_private *i915, i915_reg_t reg,
> +			     u32 mask, u32 value,
> +			     unsigned int fast_timeout_us,
> +			     unsigned int slow_timeout_ms, u32 *out_value)
> +{
> +	return __intel_wait_for_register(&i915->uncore, reg, mask, value,
> +					 fast_timeout_us, slow_timeout_ms, out_value);
> +}
> +
>   static inline int
>   intel_de_wait_for_set(struct drm_i915_private *i915, i915_reg_t reg,
>   		      u32 mask, unsigned int timeout)
> @@ -81,4 +104,16 @@ intel_de_write_fw(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
>   	intel_uncore_write_fw(&i915->uncore, reg, val);
>   }
>   
> +static inline u32
> +intel_de_read_notrace(struct drm_i915_private *i915, i915_reg_t reg)
> +{
> +	return intel_uncore_read_notrace(&i915->uncore, reg);
> +}
> +
> +static inline void
> +intel_de_write_notrace(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
> +{
> +	intel_uncore_write_notrace(&i915->uncore, reg, val);
> +}
> +

I wonder why intel_de_* helpers are only in display subsystem, I guess 
whole i915 could benefit from it.

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej


>   #endif /* __INTEL_DE_H__ */

