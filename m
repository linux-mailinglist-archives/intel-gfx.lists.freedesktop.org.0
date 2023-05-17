Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 358B7706C59
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 17:14:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DAEE891CC;
	Wed, 17 May 2023 15:14:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2D0B89A1E
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 15:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684336441; x=1715872441;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=pkEJ//H9iSZj4HRiernEKsMLWZ8et2txVud1IaTyvWs=;
 b=iYD13bYEA7njjLBmekhzvhnRdeldm8cu7z8cUQOrGzjQ306JqBedlGhN
 zRyzNA4pqvk+M7NMkT5yZ3okM2aHN57HDMIfFhEAkpJt2551r1+jgLnyK
 adCAoU7+5tcPIiSqrbyl6GDTZ/RlNrRilp+XxJEfhb84ZmF7ckAl0ehtg
 ewrkH7gVs2aMaYIpwqQUTZBSiNZIBErrBea0yWM2+WGtsksOzsfOzngyJ
 rgRfFfw2rrB4ZpqZsxax4p0RoUiJEOUluWJtQq8iLWNpj3FUqiSTV1Vvf
 EMlWqF+KZ834XtcezEo63G+j944NGoqic/nJ8BWpIvvw935TTEP+ogR8D w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="341174399"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="341174399"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 08:12:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="766814534"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="766814534"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.38.73])
 ([10.249.38.73])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 08:12:05 -0700
Message-ID: <2b4a54d2-e323-9a10-1ba4-3d2e96197bb9@linux.intel.com>
Date: Wed, 17 May 2023 17:12:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>, Andi Shyti <andi.shyti@linux.intel.com>
References: <20230517-mtl_disable_render_pg-v1-1-6495eebbfb24@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20230517-mtl_disable_render_pg-v1-1-6495eebbfb24@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: do not enable render
 power-gating on MTL
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 5/17/2023 3:59 PM, Andrzej Hajda wrote:
> Multiple CI tests fails with forcewake ack timeouts
> if render power gating is enabled.
> BSpec 52698 clearly states it should be 0 for MTL.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4983
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_rc6.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index 908a3d0f2343f4..ebb2373dd73640 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -117,8 +117,9 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
>   			GEN6_RC_CTL_RC6_ENABLE |
>   			GEN6_RC_CTL_EI_MODE(1);
>   
> -	/* Wa_16011777198 - Render powergating must remain disabled */
> -	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
> +	/* Wa_16011777198 and BSpec 52698 - Render powergating must be off */

Nice catch! instead of bspec you could add Wa_14012655556.


> +	if (IS_METEORLAKE(gt->i915) ||
> +	    IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
>   	    IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))
>   		pg_enable =
>   			GEN9_MEDIA_PG_ENABLE |
>
> ---
> base-commit: 01d3dd92d1b71421f6ee85e1bea829e0a917d979
> change-id: 20230517-mtl_disable_render_pg-b9f9f1567f9e

^ unwanted artifacts ?   Otherwise this looks good to me.

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

>
> Best regards,
