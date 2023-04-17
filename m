Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 794796E4B73
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 16:27:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7381810E53C;
	Mon, 17 Apr 2023 14:27:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C620410E541
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Apr 2023 14:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681741632; x=1713277632;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=9dD/KuEfd0D8nvl0r3Vj8bGQlOpY7WBdFoC8X/o6Q+8=;
 b=fSRYtVGgcnaNMhEHtRQ2J3tm9hdEMC6Ayz4bAix+ANVB1k+Jgs+rIisl
 jgK3KMhgkfxFUXU999pq3l2qaWoJV89Mk+PED/9TMowseu6a6BDnxzxXf
 /HU6P8eAGpSA/rVwIlgIGdwhzQm03rjOGt/tGkiqoyoNDKp7Fbr6S4YPI
 JskAbvzpfQsAB7Oljj5SsyRb3+QBatb0Uvx7gxjy4glZVyTqru84dPFBf
 hOh4pgbnkaX56j8gCKlx3WJlyivQK/E0aMTQiH+McroII8uuv/N4PiGff
 g0ibgE54OmK8WNmKbu4sA6zWbl6MR2Gm4X2xi8/YlYvGbwVCVcQs7RnIM g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="431194417"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="431194417"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 07:27:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="668135501"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="668135501"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.5.52])
 ([10.213.5.52])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 07:27:12 -0700
Message-ID: <9593ca26-18b1-a85e-114d-57eb6971b664@intel.com>
Date: Mon, 17 Apr 2023 16:27:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230417085742.793379-1-jani.nikula@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230417085742.793379-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pps: use intel_de_rmw() for panel
 unlock
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

On 17.04.2023 10:57, Jani Nikula wrote:
> Use rmw where needed.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_pps.c | 9 +++------
>   1 file changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 7f9926672a6a..4f0b0cca03cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -1653,12 +1653,9 @@ void intel_pps_unlock_regs_wa(struct drm_i915_private *dev_priv)
>   	 */
>   	pps_num = intel_num_pps(dev_priv);
>   
> -	for (pps_idx = 0; pps_idx < pps_num; pps_idx++) {
> -		u32 val = intel_de_read(dev_priv, PP_CONTROL(pps_idx));
> -
> -		val = (val & ~PANEL_UNLOCK_MASK) | PANEL_UNLOCK_REGS;
> -		intel_de_write(dev_priv, PP_CONTROL(pps_idx), val);
> -	}
> +	for (pps_idx = 0; pps_idx < pps_num; pps_idx++)
> +		intel_de_rmw(dev_priv, PP_CONTROL(pps_idx),
> +			     PANEL_UNLOCK_MASK, PANEL_UNLOCK_REGS);
>   }
>   
>   void intel_pps_setup(struct drm_i915_private *i915)

Still some leftovers.

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej
