Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6416211BDDE
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 21:30:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01BE26E06B;
	Wed, 11 Dec 2019 20:30:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 346 seconds by postgrey-1.36 at gabe;
 Wed, 11 Dec 2019 20:30:12 UTC
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C26956E06B
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 20:30:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 12:25:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,303,1571727600"; d="scan'208";a="225664174"
Received: from cataylo2-ubuntu18-10.jf.intel.com (HELO [10.7.199.54])
 ([10.7.199.54])
 by orsmga002.jf.intel.com with ESMTP; 11 Dec 2019 12:25:22 -0800
To: intel-gfx@lists.freedesktop.org
References: <20191206071422.27138-1-lucas.demarchi@intel.com>
 <20191206071422.27138-2-lucas.demarchi@intel.com>
From: Clinton Taylor <Clinton.A.Taylor@intel.com>
Message-ID: <d60e6ec2-feb0-1dde-7574-29d284b6e114@intel.com>
Date: Wed, 11 Dec 2019 12:25:22 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191206071422.27138-2-lucas.demarchi@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/display: use clk_off name to
 avoid double negation
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
> Instead of "ungated" use the same name for the variable as the bitfield,
> making it clearer what's the intent of the checks.
>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_ddi.c | 8 +++-----
>   1 file changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 3433b0bf4f44..586a0019b9c7 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3012,12 +3012,10 @@ static void icl_sanitize_port_clk_off(struct drm_i915_private *dev_priv,
>   	val = I915_READ(ICL_DPCLKA_CFGCR0);
>   	for_each_port_masked(port, port_mask) {
>   		enum phy phy = intel_port_to_phy(dev_priv, port);
> +		bool ddi_clk_off = val & icl_dpclka_cfgcr0_clk_off(dev_priv,
> +								   phy);
>   
> -		bool ddi_clk_ungated = !(val &
> -					 icl_dpclka_cfgcr0_clk_off(dev_priv,
> -								   phy));
> -
> -		if (ddi_clk_needed == ddi_clk_ungated)
> +		if (ddi_clk_needed == !ddi_clk_off)
>   			continue;
>   
>   		/*

Sanity prevails.

Reviewed-by: Clint Taylor

-Clint


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
