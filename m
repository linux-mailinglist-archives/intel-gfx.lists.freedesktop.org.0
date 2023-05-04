Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8FC06F77FC
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 23:24:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A22A910E530;
	Thu,  4 May 2023 21:24:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E23D10E530
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 21:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683235474; x=1714771474;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=WIq3gUCSjBT1zSVSVaBBQBZJUr7M09cKNdfm7rPKT1c=;
 b=T+eKg2cthDJ2AEjD/GfTCcE8Sw6V/KtJ5SMcFMA8eWQtAcG9/MHh/VvR
 L3O2JQ4tj4jSi9MW3R3gaKacjbMNJdr0Tgpubg1QPC7HUe8onae2OvpeB
 8OAYRO/Jjrktj5gkH84YiQUDRAZgYqQ2aLLUmtDB21Q1GDwvJJz48NXaH
 PypAeHMTNWfLrEYKxeZjmSYRQZNynm5u9KW0MVjygcsJKuWK+Slysb+CC
 Ct4RtByQJKND4VnYdJqU9AhNCEogvRbxsIbLJIWvVVgdNouG05FcmAbm0
 IFJ+ttKtm/54SDf4gzjLHwUnaS/bJP1HpMHDAZo4bVn6YzVyDZrigWPEX A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="435378367"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="435378367"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 14:24:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="762116580"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="762116580"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.22.139])
 ([10.213.22.139])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 14:24:32 -0700
Message-ID: <39c014f0-96ee-a0fa-75de-c306a055c393@intel.com>
Date: Thu, 4 May 2023 23:24:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 intel-gfx@lists.freedesktop.org
References: <20230504102805.18645-1-juhapekka.heikkila@gmail.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230504102805.18645-1-juhapekka.heikkila@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/mtl: Drop FLAT CCS check
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
Cc: Pallavi Mishra <pallavi.mishra@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 04.05.2023 12:28, Juha-Pekka Heikkila wrote:
> From: Pallavi Mishra <pallavi.mishra@intel.com>
> 
> Remove FLAT CCS check from XY_FAST_COLOR_BLT usage, thus
> enabling MTL to use it.
> 
> Signed-off-by: Pallavi Mishra <pallavi.mishra@intel.com>
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/gt/intel_migrate.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
> index 3f638f198796..e0998879a0e1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_migrate.c
> +++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
> @@ -920,7 +920,7 @@ static int emit_clear(struct i915_request *rq, u32 offset, int size,
>   
>   	GEM_BUG_ON(size >> PAGE_SHIFT > S16_MAX);
>   
> -	if (HAS_FLAT_CCS(i915) && ver >= 12)
> +	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
>   		ring_sz = XY_FAST_COLOR_BLT_DW;
>   	else if (ver >= 8)
>   		ring_sz = 8;
> @@ -931,7 +931,7 @@ static int emit_clear(struct i915_request *rq, u32 offset, int size,
>   	if (IS_ERR(cs))
>   		return PTR_ERR(cs);
>   
> -	if (HAS_FLAT_CCS(i915) && ver >= 12) {
> +	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
>   		*cs++ = XY_FAST_COLOR_BLT_CMD | XY_FAST_COLOR_BLT_DEPTH_32 |
>   			(XY_FAST_COLOR_BLT_DW - 2);
>   		*cs++ = FIELD_PREP(XY_FAST_COLOR_BLT_MOCS_MASK, mocs) |

