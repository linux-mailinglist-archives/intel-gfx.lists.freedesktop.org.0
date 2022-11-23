Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74730635021
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 07:13:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A568410E18F;
	Wed, 23 Nov 2022 06:13:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D778010E18F
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 06:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669184000; x=1700720000;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=58jauoIlxPUIeUfe+UMhbz+f+SdQ/HAFxJhWTRf2ff8=;
 b=Eekc4JNNm6vkBflZW3JMShtjnCAkTbmtbROi/w2v3u5Yv/WVIbkXeQRQ
 92Puif6t6QVRLDXTOjcdiEY6qLZ6URiNXNo79yYE8vC/l3Gw4itpYLbNE
 jHg1eBYI2/8dup3FNX5p44rqVTpPFxrp313S0D/VL6IP3/35DWZCfDdfz
 qmgZJJvvueSx+lQd7LVcdGWSMpck72rRqBNnajbCmfHZVYIcO002rQkd3
 +caz0ConBiShxKu3PudeIM4dd43dF6ph3aTQlYhTW3j4nE8/JSSmjmlVb
 GL19M7N0Gd+Ws3cKSQlsmRX5uh7YXF9Kb7gzdiIq3uQSob2IudlXXupCS g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="400281728"
X-IronPort-AV: E=Sophos;i="5.96,186,1665471600"; d="scan'208";a="400281728"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 22:13:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="705237410"
X-IronPort-AV: E=Sophos;i="5.96,186,1665471600"; d="scan'208";a="705237410"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 22 Nov 2022 22:13:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Nov 2022 08:13:16 +0200
Date: Wed, 23 Nov 2022 08:13:16 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
Message-ID: <Y325/Lv60tzgzShQ@intel.com>
References: <20221123033308.3717361-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221123033308.3717361-1-arun.r.murthy@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915/fbc: Disable FBC when VT-d is
 enabled
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 23, 2022 at 09:03:08AM +0530, Arun R Murthy wrote:
> The WaFbcTurnOffFbcWhenHyperVisorIsUsed is applicable for SKL, BXT and
> KBL.
> 
> Bspec: 0852
> 
> v2: Updated commit msg and corrected Bspec format(Jani N)
> v3: Updated the stepping information
> 
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index b5ee5ea0d010..7c06ad454a7d 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1652,9 +1652,10 @@ static int intel_sanitize_fbc_option(struct drm_i915_private *i915)
>  
>  static bool need_fbc_vtd_wa(struct drm_i915_private *i915)
>  {
> -	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
> +	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt,kbl */
>  	if (i915_vtd_active(i915) &&
> -	    (IS_SKYLAKE(i915) || IS_BROXTON(i915))) {
> +			(IS_SKYLAKE(i915) || IS_BROXTON(i915) ||
> +			IS_KBL_DISPLAY_STEP(i915, STEP_A0, STEP_B0))) {

No one careas about pre-production hw once the thing has shipped.

>  		drm_info(&i915->drm,
>  			 "Disabling framebuffer compression (FBC) to prevent screen flicker with VT-d enabled\n");
>  		return true;
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
