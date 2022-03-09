Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D1B4D2AD0
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 09:46:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C18E10E3B8;
	Wed,  9 Mar 2022 08:46:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFD5E10E38C;
 Wed,  9 Mar 2022 08:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646815567; x=1678351567;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=7jjpc8d9He9z6dyZOnytX0AgMjz8sxRIr5YFBPwkC9w=;
 b=IvZjlNFxN6LuRNt9dVLNpLxHLp3H5PIWSriXUCq/EsbcrTTn2jOJghjV
 p8/+Ip9dCcFgrCTJeL+pEKG3557pVYTRTFWBDkgu8ghBNY1/jpXqpN+D+
 5lsp/b2q8JkQr1BXL5jMibSOfj+5gJJe8ArCGw2Tj0ERI/OFwKPrIeH2R
 X6LzATmE57mlkDvD1xmT51ULBeqyupWtnmw0VPaVxxC61/HjkWE9kna6K
 eYCwiMpNcoiIdq516y25seGCIATpM6in5kCMxS8KwLnPQPvuzGOSoSNWX
 t07sYHYesITDCvaLsFgip1WcNp8EsgKLTzK94TClR8zZ5CGhG9r8INqyB A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="254653807"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="254653807"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 00:46:06 -0800
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="537919937"
Received: from byrnec1x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.29.235])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 00:46:03 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: cgel.zte@gmail.com, joonas.lahtinen@linux.intel.com
In-Reply-To: <20220308091655.2078825-1-deng.changcheng@zte.com.cn>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220308091655.2078825-1-deng.changcheng@zte.com.cn>
Date: Wed, 09 Mar 2022 10:46:01 +0200
Message-ID: <87a6dz1pkm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vlv_dsi_pll: use min_t() to make
 code cleaner
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
Cc: airlied@linux.ie, intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com,
 deng.changcheng@zte.com.cn, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, rodrigo.vivi@intel.com,
 Zeal Robot <zealci@zte.com.cn>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 08 Mar 2022, cgel.zte@gmail.com wrote:
> From: Changcheng Deng <deng.changcheng@zte.com.cn>
>
> Use min_t() in order to make code cleaner.
>
> Reported-by: Zeal Robot <zealci@zte.com.cn>
> Signed-off-by: Changcheng Deng <deng.changcheng@zte.com.cn>

Thanks, pushed to drm-intel-next.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/display/vlv_dsi_pll.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> index df880f44700a..f801f7ec3f9a 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> @@ -393,10 +393,7 @@ static void glk_dsi_program_esc_clock(struct drm_device *dev,
>  	/* Calculate TXESC2 divider */
>  	div2_value = DIV_ROUND_UP(div1_value, txesc1_div);
>  
> -	if (div2_value < 10)
> -		txesc2_div = div2_value;
> -	else
> -		txesc2_div = 10;
> +	txesc2_div = min_t(u32, div2_value, 10);
>  
>  	intel_de_write(dev_priv, MIPIO_TXESC_CLK_DIV1,
>  		       (1 << (txesc1_div - 1)) & GLK_TX_ESC_CLK_DIV1_MASK);

-- 
Jani Nikula, Intel Open Source Graphics Center
