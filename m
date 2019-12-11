Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A410F11B9A3
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 18:08:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBC946EB93;
	Wed, 11 Dec 2019 17:08:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 905616EB93
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 17:08:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 09:08:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,302,1571727600"; d="scan'208";a="225600610"
Received: from cataylo2-ubuntu18-10.jf.intel.com (HELO [10.7.199.54])
 ([10.7.199.54])
 by orsmga002.jf.intel.com with ESMTP; 11 Dec 2019 09:08:38 -0800
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20191206071422.27138-1-lucas.demarchi@intel.com>
 <20191206071422.27138-3-lucas.demarchi@intel.com>
From: Clinton Taylor <Clinton.A.Taylor@intel.com>
Message-ID: <71efb295-c10c-9bc5-29ab-2dcc17783cda@intel.com>
Date: Wed, 11 Dec 2019 09:08:38 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191206071422.27138-3-lucas.demarchi@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/display: fix phy name
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 12/5/19 11:14 PM, Lucas De Marchi wrote:
> Pass the correct variable as argument.
>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_ddi.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 586a0019b9c7..f977bc9ca3c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3026,7 +3026,7 @@ static void icl_sanitize_port_clk_off(struct drm_i915_private *dev_priv,
>   			continue;
>   
>   		DRM_NOTE("PHY %c is disabled/in DSI mode with an ungated DDI clock, gate it\n",
> -			 phy_name(port));
> +			 phy_name(phy));
>   		val |= icl_dpclka_cfgcr0_clk_off(dev_priv, phy);
>   		I915_WRITE(ICL_DPCLKA_CFGCR0, val);
>   	}


Reviewed-by: Clint Taylor


-Clint


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
