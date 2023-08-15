Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C6877D368
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Aug 2023 21:33:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E22B610E27C;
	Tue, 15 Aug 2023 19:33:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2147310E27C
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Aug 2023 19:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692128008; x=1723664008;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ASN7SFDQHIeAq/xKjyF+pcf/cbSQX2Lm0kMhEK2cLVo=;
 b=Fgf6KF4FCd6DIVbTHfsy0C1KYPK54V4KYUn5wPZ737KlpqYXEj30IjD/
 f0a+/FGyXQSk91H+gA4YZUiiEESOvNnd90xrmlUT30GR7lecO9w7Ansk3
 bRHbteHWMrHt5Sqs5VXYCPy4g/2aSZMF1jQuFZCeGGV2gZ/D1fdkCYA8Q
 PqaS8A1B9levmZTL12wFmuWk/XGRZ7NgZ1I2K7GclACP2OsAiQjjEn52v
 Yjv0wFgFAFnArSML9XJQsag1EHHfDanG6gjgWgDmci5uAc/KMBHdQqjH8
 v+iRCyVDOAfgc6VpUKqPndf9GXBfublV3DscO7fh4jfOGuPrQXV/i/Eqs A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="438704168"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="438704168"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 12:33:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="1064561248"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="1064561248"
Received: from zlukwins-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.51.48])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 12:33:11 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230807142754.3891787-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230807142754.3891787-1-suraj.kandpal@intel.com>
Date: Tue, 15 Aug 2023 22:33:08 +0300
Message-ID: <877cpwayob.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: Explicit
 first_line_bpg_offset assignment for DSI
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
Cc: juha-pekka.heikkila@intel.com, william.tseng@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 07 Aug 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Assign explicit value of 12 at 8bpp as per Table E2 of DSC 1.1 for DSI
> panels even though we already use calculations from CModel for
> first_line_bpg_offset.
> The reason being some DSI monitors may have not have added the
> change in errata for the calculation of first_line_bpg_offset.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index f7ebc146f96d..2376d5000d78 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1585,6 +1585,11 @@ static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
>  	if (ret)
>  		return ret;
>  
> +	/* From Table E-2 in DSC 1.1*/
> +	if (vdsc_cfg->dsc_version_minor == 1 &&
> +	    vdsc_cfg->bits_per_pixel == 128)

So, vdsc_cfg->bits_per_pixel has 4 fractional bits, and that's 8 bpp
compressed?

Better describe it that way, instead of as 128.

But... looking around, in intel_vdsc.c we set:

	pps_val |= DSC_BPP(vdsc_cfg->bits_per_pixel);

and we have:

	#define DSC_BPP(bpp)	((bpp) << 4)

however, when reading it back in intel_dsc_get_config(), it's just
directly:

	vdsc_cfg->bits_per_pixel = pps1;

Are we always sending x16 bpp in PPS?


BR,
Jani.



> +		vdsc_cfg->first_line_bpg_offset = 12;
> +
>  	/* DSI specific sanity checks on the common code */
>  	drm_WARN_ON(&dev_priv->drm, vdsc_cfg->vbr_enable);
>  	drm_WARN_ON(&dev_priv->drm, vdsc_cfg->simple_422);

-- 
Jani Nikula, Intel Open Source Graphics Center
