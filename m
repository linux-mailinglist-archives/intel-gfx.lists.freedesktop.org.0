Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C98D6FA1EC
	for <lists+intel-gfx@lfdr.de>; Mon,  8 May 2023 10:11:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D53210E155;
	Mon,  8 May 2023 08:11:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88A1D10E155
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 May 2023 08:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683533471; x=1715069471;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=IMbc3tZSmcla2xv9cCfedX6Il5uhF+yXXlTBM54+58I=;
 b=LAyZDfgT3eoqwTsj4/8FlcgZMvrIY0PLsaqJ77eEhQ6adAm9vAi155dO
 VYD6xSQk/8T3d4ioIdSLR/K82D5rz/82YigWwNH/KGX9YBrhnM0YVN4ek
 lZFE9oZYGDSnF2cs87SO9x2wbXPIV9zgqgArbO4cdiWlBjIZMH4pfx69D
 AMLrtqIM3u2SxBfDPE+OqH2h4ry8NYjqsUwmUwtVLOQPLXSmimC+5d+BG
 WR2ezZmSTlJGQsKrOtSvadAq6CDmXWv7mN4EYZxvN9WnjmOlabOsvPr0S
 EcuXejzVjzaySZfs5ubWdlTfQmhR1lW1heJQ+Eh0o7BxuyFBTkriiyRxF g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="352642307"
X-IronPort-AV: E=Sophos;i="5.99,258,1677571200"; d="scan'208";a="352642307"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 01:11:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="822587700"
X-IronPort-AV: E=Sophos;i="5.99,258,1677571200"; d="scan'208";a="822587700"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.12.75])
 ([10.213.12.75])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 01:11:11 -0700
Message-ID: <4d4c133d-ee3e-aadf-820c-cf948841742a@intel.com>
Date: Mon, 8 May 2023 10:11:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230506144217.26075-1-stanislav.lisovskiy@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230506144217.26075-1-stanislav.lisovskiy@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix wrong condition in
 bxt_set_cdclk for DG2
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

On 06.05.2023 16:42, Stanislav Lisovskiy wrote:
> By my own mistake, after adding !IS_DG2 into wrong branch,
> bxt_set_cdclk started to execute code intended for platforms
> gen < 11, which is wrong.
> Move IS_DG2 check to better place.
> 
> Fixes: ceb0cc3b4288 ("drm/i915: Communicate display power demands to pcode")
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/display/intel_cdclk.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index a11092deaba6..6bed75f1541a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1896,9 +1896,9 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>   	 * mailbox communication, skip
>   	 * this step.
>   	 */
> -	if (DISPLAY_VER(dev_priv) >= 14)
> +	if (DISPLAY_VER(dev_priv) >= 14 || IS_DG2(dev_priv))
>   		/* NOOP */;
> -	else if (DISPLAY_VER(dev_priv) >= 11 && !IS_DG2(dev_priv))
> +	else if (DISPLAY_VER(dev_priv) >= 11)
>   		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
>   					SKL_CDCLK_PREPARE_FOR_CHANGE,
>   					SKL_CDCLK_READY_FOR_CHANGE,

