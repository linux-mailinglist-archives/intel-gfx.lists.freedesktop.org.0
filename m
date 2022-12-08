Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC07646D30
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 11:39:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC4C710E1B8;
	Thu,  8 Dec 2022 10:39:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 311F710E1B8
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 10:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670495990; x=1702031990;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=TnF3eJoxwzebGEhmOwlERWWt3SS6mtDl4P7kD0V6hLs=;
 b=Psm7eeD7MjamE2WpwcmSro+difeuk9bz72rGjiM4bsZtwNpeyYtFlNE4
 A++qNAtTheaXJVC5LEuwOSvAwYd067LfS2Blum0PKXebPQpyjKm7G3AQY
 79J5jCbDy0AUU4Q2DwSxC9p5C4KIjhBlkgSmiYa++irPM5eVcrHFcyeGl
 Gtueqm8B8V4d2BvwmqnXhQ+zt8dtXC+9BhVl0THy4JmoTgK29bAo3Bbvl
 KfzHJM9vc1y9eCk0+utd2Cmp08UxPwALCogc+xGZRvmDitjIg5X/qJ1GO
 Qs2UAt3h7htv/XFNq/d66x/EzOZyQX5RDjGFz2UqMzK+4lCmfPVOJe0qw Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="296830189"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="296830189"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 02:39:49 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="789251859"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="789251859"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.6.160])
 ([10.213.6.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 02:39:48 -0800
Message-ID: <55d3653e-a5bb-d2d7-8b66-7e91b2b8fe4f@intel.com>
Date: Thu, 8 Dec 2022 11:39:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1670433372.git.jani.nikula@intel.com>
 <21ea52a7c4fd400c256316143e3a2c9106c554d9.1670433372.git.jani.nikula@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <21ea52a7c4fd400c256316143e3a2c9106c554d9.1670433372.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 05/11] drm/i915/power: switch to
 intel_de_* register accessors in display code
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
> Avoid direct uncore use in display code.
> 
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 3adba64937de..1a23ecd4623a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1673,7 +1673,7 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
>   	if (DISPLAY_VER(dev_priv) >= 12) {
>   		val = DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM |
>   		      DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR;
> -		intel_uncore_rmw(&dev_priv->uncore, GEN11_CHICKEN_DCPR_2, 0, val);
> +		intel_de_rmw(dev_priv, GEN11_CHICKEN_DCPR_2, 0, val);
>   	}
>   
>   	/* Wa_14011503030:xelpd */

