Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 176595428EE
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jun 2022 10:09:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CB3510EBE9;
	Wed,  8 Jun 2022 08:09:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8519610E299
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jun 2022 08:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654675772; x=1686211772;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=ojsed/Dzm1yUjk3fBnNiiV0bAq/c3tjiQWJsLe+uNh0=;
 b=Z5hWcB+1+Hj//z+GaCH7lnO8y9di9CKho7oKUUi5h+1eBWlL9gJ1rSq0
 wPqFIBhyaXNtXQ1hTddQF2c3DmBqsxvMjfJqXaX7RQiCNn3xy6//mWaRv
 Ko5zdEcYCYIjqdDCfkkuvO84P+Ur3ANSbSeY5xIj6HnlYdY4/3P8PYWF2
 qvSBwfficaxsSL4zapL6u0GX9A8TTFspa7hiw7dbC6Jc7TM8iHuso5s7e
 FrDf4OPXEVxrz0pqoo25L4gW8k/N6yRaFjzS9JQI5hMk3OGvmdnHHfyM4
 X/UIb6eIN3cH9MqfYpkQ2nRAKbZSAShV9ry+EoeHeCAjV5ntvTWOtT+RT Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="363144167"
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="363144167"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 01:09:32 -0700
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="907538376"
Received: from jking17-mobl.ger.corp.intel.com (HELO [10.213.193.156])
 ([10.213.193.156])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 01:09:29 -0700
Message-ID: <2cdd3327-be28-0923-6372-4e046403e3c1@linux.intel.com>
Date: Wed, 8 Jun 2022 09:09:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220511094619.27889-1-jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220511094619.27889-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: remove accidental static from
 a local variable
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 11/05/2022 10:46, Jani Nikula wrote:
> The arrays are static const, but the pointer shouldn't be static.
> 
> Fixes: 3d832f370d16 ("drm/i915/uc: Allow platforms to have GuC but not HuC")
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> index 9361532726d6..d2c5c9367cc4 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> @@ -156,7 +156,7 @@ __uc_fw_auto_select(struct drm_i915_private *i915, struct intel_uc_fw *uc_fw)
>   		[INTEL_UC_FW_TYPE_GUC] = { blobs_guc, ARRAY_SIZE(blobs_guc) },
>   		[INTEL_UC_FW_TYPE_HUC] = { blobs_huc, ARRAY_SIZE(blobs_huc) },
>   	};
> -	static const struct uc_fw_platform_requirement *fw_blobs;
> +	const struct uc_fw_platform_requirement *fw_blobs;
>   	enum intel_platform p = INTEL_INFO(i915)->platform;
>   	u32 fw_count;
>   	u8 rev = INTEL_REVID(i915);

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Domain owners were copied in this case (mailman just dropped it from the 
mailing list copy?) on this one, but maybe needed extra prodding.

Regards,

Tvrtko
