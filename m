Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8AA329A5CA
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 08:49:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BD836EB1D;
	Tue, 27 Oct 2020 07:49:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 076E16EB1D
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 07:49:03 +0000 (UTC)
IronPort-SDR: yAhJu7Opp1IEuL14SzsM+nBfIkfypfR0XGkoOhExGMM1GxxZuRUn37PqPsdoSSrGWBjK56GhcQ
 s1x4/02GAFfw==
X-IronPort-AV: E=McAfee;i="6000,8403,9786"; a="185779342"
X-IronPort-AV: E=Sophos;i="5.77,423,1596524400"; d="scan'208";a="185779342"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 00:49:02 -0700
IronPort-SDR: vU8Qfq88b43QK2dfDv5Obj26eNeHFRhJY5E1IuvwKVJXsH55o0p+z9dYhdKn0+JPxiH5DlfIEX
 /vGpglqUc3/A==
X-IronPort-AV: E=Sophos;i="5.77,423,1596524400"; d="scan'208";a="535690468"
Received: from poomaduv-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.87.111])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 00:49:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201027044618.719064-2-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201027044618.719064-1-lucas.demarchi@intel.com>
 <20201027044618.719064-2-lucas.demarchi@intel.com>
Date: Tue, 27 Oct 2020 09:48:58 +0200
Message-ID: <87zh48hzx1.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/display: remove debug message
 from error path
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 26 Oct 2020, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> First check in the function is if swsci() is supported. All the error
> paths are easy to figure out the reason, so remove the extra debug
> message: it's normal not to support swsci() e.g. in dgfx.
>
> v2: Rather than special case dgfx, just remove the debug message
>     (from Ville)
>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_opregion.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> index de995362f428..4f77cf849171 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -1007,12 +1007,8 @@ intel_opregion_get_panel_type(struct drm_i915_private *dev_priv)
>  	int ret;
>  
>  	ret = swsci(dev_priv, SWSCI_GBDA_PANEL_DETAILS, 0x0, &panel_details);
> -	if (ret) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "Failed to get panel details from OpRegion (%d)\n",
> -			    ret);
> +	if (ret)
>  		return ret;
> -	}
>  
>  	ret = (panel_details >> 8) & 0xff;
>  	if (ret > 0x10) {

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
