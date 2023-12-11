Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3419380CB45
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Dec 2023 14:42:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9017910E11E;
	Mon, 11 Dec 2023 13:42:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B83E010E0FC
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Dec 2023 13:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702302155; x=1733838155;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=E+Lni78BRFjtcdXT9wwYZLnA2hlsbpLDeaNC9JD2SNk=;
 b=Z/15uosyZy2ka0JWoUzkIy5SFMBXxAZX9hcgYdd6AmvNHiYjLZXJ1/5o
 rWAbGZ2HKtKGxmNoDa7wfiCL8P++v9g00Way6ZPFIYsxw5tkiIvNYPZwZ
 72xOPOrMEK03+yLcteXksxTeglv19QK9sfpPHzhzYuk0fRV2440MuQCAp
 65y3gkGXoV7Ic9wV+99JZjLzUqewtAjs+l7wFOytVvKY76m+8xF/h/NPK
 aEHe/yrKAASJU/4RIHJOcgTwwmE+qgy2/5vTK8z7fitQX2BAIzgd2AjAP
 aXpp1/BnEd8/eGLg+Ef1fA17+i2e2FfrlIScoqNbv7Q3F2jZTXhLu8fAF A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="385060332"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="385060332"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 05:42:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="896467984"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="896467984"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.5.66])
 ([10.213.5.66])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 05:42:33 -0800
Message-ID: <167c0fb0-8014-4fa3-85de-643efcd2b755@intel.com>
Date: Mon, 11 Dec 2023 14:42:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: do not use cursor size
 reduction on MTL
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20231124-cur_size_reduction-v1-1-30495dba475f@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20231124-cur_size_reduction-v1-1-30495dba475f@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
Cc: Jani Nikula <jani.nikula@intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 24.11.2023 08:53, Andrzej Hajda wrote:
> Cursor size reduction is not supported since MTL.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display_device.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)

Gently ping.

CC: maintainers

Regards
Andrzej

> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 4299cc452e0504..6610d73f55e6c4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -36,7 +36,7 @@ struct drm_printer;
>   #define HAS_ASYNC_FLIPS(i915)		(DISPLAY_VER(i915) >= 5)
>   #define HAS_CDCLK_CRAWL(i915)		(DISPLAY_INFO(i915)->has_cdclk_crawl)
>   #define HAS_CDCLK_SQUASH(i915)		(DISPLAY_INFO(i915)->has_cdclk_squash)
> -#define HAS_CUR_FBC(i915)		(!HAS_GMCH(i915) && DISPLAY_VER(i915) >= 7)
> +#define HAS_CUR_FBC(i915)		(!HAS_GMCH(i915) && IS_DISPLAY_VER(i915, 7, 13))
>   #define HAS_D12_PLANE_MINIMIZATION(i915) (IS_ROCKETLAKE(i915) || IS_ALDERLAKE_S(i915))
>   #define HAS_DDI(i915)			(DISPLAY_INFO(i915)->has_ddi)
>   #define HAS_DISPLAY(i915)		(DISPLAY_RUNTIME_INFO(i915)->pipe_mask != 0)
> 
> ---
> base-commit: 94f973d8238e0d8fd1b0234f220783a1e346f60b
> change-id: 20231124-cur_size_reduction-813979149f83
> 
> Best regards,

