Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 882E8646CBD
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 11:30:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB7D010E487;
	Thu,  8 Dec 2022 10:30:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C583910E488
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 10:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670495410; x=1702031410;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=/qns0Jsnh6psVYDGKDBO3N6KW6ZAhDGDQAE68/139hQ=;
 b=dOB4f1LlyYm1mFnOs/hbn/LKRIzhfwEOlk66Jqj0yVYyN5jgp5wIoDSi
 E6W79JamRkn7BLQA+wRvXcZdNZoU4ZArNRm5N0vTKUrQWE6N0Ku3YMbND
 1k+ryI6LX7yE9QpnU4PyyrpBkqaobLz/BynAzEZwkXMFowFQpS9OyBNed
 0Zht3P0yp4jMVTv2ID3gkW+O76nEst6unGuZQi+hG4xjP9o45X5nU/Kh4
 iThSEBzXcDVQEeb7WwBKFRcMrHVHGAlVHTBxyue/4wo/Qz98oU1E8wdld
 RoisbHLRHSpNyFM6ZE9C6XtDsiVXo4kVE98VIvQ2apSER+VIUKL+zWo78 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="300551249"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="300551249"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 02:30:09 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="821289800"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="821289800"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.6.160])
 ([10.213.6.160])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 02:30:08 -0800
Message-ID: <9c793f0f-e1cd-aa89-530c-9da3f11212e3@intel.com>
Date: Thu, 8 Dec 2022 11:30:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1670433372.git.jani.nikula@intel.com>
 <b82cb29e8ece63e68499307f9e3e83139e590d23.1670433372.git.jani.nikula@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <b82cb29e8ece63e68499307f9e3e83139e590d23.1670433372.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 02/11] drm/i915/de: return the old
 register value from intel_de_rmw()
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
> A similar thing was added in intel_uncore_rmw(). Make it available for
> display too.
> 
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/display/intel_de.h | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
> index 004f01906fd7..3dbd76fdabd6 100644
> --- a/drivers/gpu/drm/i915/display/intel_de.h
> +++ b/drivers/gpu/drm/i915/display/intel_de.h
> @@ -34,10 +34,10 @@ intel_de_write(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
>   	intel_uncore_write(&i915->uncore, reg, val);
>   }
>   
> -static inline void
> +static inline u32
>   intel_de_rmw(struct drm_i915_private *i915, i915_reg_t reg, u32 clear, u32 set)
>   {
> -	intel_uncore_rmw(&i915->uncore, reg, clear, set);
> +	return intel_uncore_rmw(&i915->uncore, reg, clear, set);
>   }
>   
>   static inline int

