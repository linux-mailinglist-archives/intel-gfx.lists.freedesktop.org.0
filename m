Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B46D748176
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 11:51:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A34810E349;
	Wed,  5 Jul 2023 09:51:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 439EB10E349
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jul 2023 09:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688550691; x=1720086691;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=759KtBMiqryWtnYhVdPlB+Rk6VscqCEkiXj/0/Tpa/8=;
 b=Rf4XnaO6djEbHsykdk5qmkR8YI0IM+PKzmi6uTREUBsr5ykOLQpsyNBh
 cJKaKvMqWIPAtvtWXqNqsAbmtdE481cI3O2bvsVqyzwqRsoRuE9LxFyc3
 QuJppfqUTM5+ki/kDscwA6dPSOZl4rgWh7I5kwPVs2z22r+6N6CD0X/A9
 anG7M7AT+j7NJtoeYDf0zj411kvySNZFng7e4X6azJ52lDKe4xqTurJGn
 +qD6T1SizNcD88Lt9tYFUq9auq/4t2zznxF4p8CDvnB/YTHDsV0nEl4dX
 dxKB0Y/wJkcBcqCxjrM8ZxrXpzskox0/PLDY4JAbJcqfJAhbju4jeb7pg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10761"; a="426982873"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="426982873"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 02:51:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10761"; a="754303204"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="754303204"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.5.166])
 ([10.213.5.166])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 02:51:27 -0700
Message-ID: <ed198000-e8df-e675-8ca9-407606e8e0a7@intel.com>
Date: Wed, 5 Jul 2023 11:51:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.12.0
Content-Language: en-US
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230630170140.17319-1-nirmoy.das@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230630170140.17319-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Do not use stolen on MTL
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



On 30.06.2023 19:01, Nirmoy Das wrote:
> Use smem on MTL due to a HW bug in MTL that prevents
> reading from stolen memory using LMEM BAR.
>
> Cc: Oak Zeng <oak.zeng@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej
> ---
>   drivers/gpu/drm/i915/gt/intel_gt.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 33a61046ba58..9f64d61dd5fc 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -466,7 +466,7 @@ static int intel_gt_init_scratch(struct intel_gt *gt, unsigned int size)
>   	obj = i915_gem_object_create_lmem(i915, size,
>   					  I915_BO_ALLOC_VOLATILE |
>   					  I915_BO_ALLOC_GPU_ONLY);
> -	if (IS_ERR(obj))
> +	if (IS_ERR(obj) && !IS_METEORLAKE(i915)) /* Wa_22018444074 */
>   		obj = i915_gem_object_create_stolen(i915, size);
>   	if (IS_ERR(obj))
>   		obj = i915_gem_object_create_internal(i915, size);

