Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 908B870D84F
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 11:02:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B09D110E403;
	Tue, 23 May 2023 09:01:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D452F10E010
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 May 2023 09:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684832514; x=1716368514;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=OofVkmbcN8Sinm1GFW1ZniN2uILi9rJkWVFM1CJdZ9E=;
 b=n13lIoSRDdx4iGR0E1PRohoc0w5iTh0Ah1vLYESA1CXfLU+NBOLlY/FQ
 Numts4FGgyAWyHHGREe0G02jCIH5Se5BS5QFvXmsE/p8mh3ztRRQ393sR
 6531seBWb+TQwEL0NCw4a3UV0fcEHV7VvdxZTjdzCJiYwVKkMGuBrlz9L
 ifDfBzALnZfNVjCAxjr9aG6AOCCak1fO3tHklqohalvqRX5Ci1hu7mH9S
 RM7MV3dJP0R6Or2566RRsRwVDoXX6nm0YPVyM9+6JjRsrcStt6KhPLZ4p
 /4jXAjQFXq7U5F55+dWftrn+IDzt3ajyLEHnir9ZXZ1c/u/s3pTIcQVgx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="356410547"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="356410547"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 02:01:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="1033985759"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="1033985759"
Received: from chauvina-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.53.70])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 02:01:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230522230759.153112-3-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230522230759.153112-1-vinod.govindapillai@intel.com>
 <20230522230759.153112-3-vinod.govindapillai@intel.com>
Date: Tue, 23 May 2023 12:01:46 +0300
Message-ID: <87fs7nmnet.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v6 2/7] drm/i915: update the QGV point
 frequency calculations
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 23 May 2023, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> From MTL onwwards, pcode locks the QGV point based on peak BW of
> the intended QGV point passed by the driver. So the peak BW
> calculation must match the value expected by the pcode. Update
> the calculations as per the Bspec.
>
> v2: use DIV_ROUND_* macro for the calculations (Ville)
>
> Bspec: 64636
>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index ab405c48ca3a..c8075a37c3ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -182,7 +182,7 @@ static int mtl_read_qgv_point_info(struct drm_i915_private *dev_priv,
>  	val2 = intel_uncore_read(&dev_priv->uncore,
>  				 MTL_MEM_SS_INFO_QGV_POINT_HIGH(point));
>  	dclk = REG_FIELD_GET(MTL_DCLK_MASK, val);
> -	sp->dclk = DIV_ROUND_UP((16667 * dclk), 1000);
> +	sp->dclk = DIV_ROUND_CLOSEST(16667 * dclk + 500, 1000);

What's with the +500 there?

BR,
Jani.


>  	sp->t_rp = REG_FIELD_GET(MTL_TRP_MASK, val);
>  	sp->t_rcd = REG_FIELD_GET(MTL_TRCD_MASK, val);

-- 
Jani Nikula, Intel Open Source Graphics Center
