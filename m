Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E93356F07D6
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 17:04:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F66310E183;
	Thu, 27 Apr 2023 15:04:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E72910E183
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 15:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682607846; x=1714143846;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6947Ao5pZzYcwdI8XSBwYZyT2Nwfa3qCjtKfxsEnnz0=;
 b=Ds8E/X3Ye8HDdjrbqvCu4vuYm4qyMokdrou9TXLnstK75Fdc8jzme3WK
 bBnCA9ukQgJCYipUTWG9euRy2H2sX7e/nUa4O88KnLjvM6IOsklz9JkWY
 3fn3zkuJw4AyfAfeXD7o7A425bLUT40i3fyDmIjYPvsEd7OfOZzdD3OIu
 6TFe+6OPeBwislGcwxMc14LMpyKJ6OaY6W+uG7rHyDXJ+oJI/Nx3FLrvI
 YC9Pv4RO2//DE8s0Nf2M03nSFEkwXPoXU7ZRRQYVQlg9F5t1MPYrHQWRY
 PiKjq+iCwHZUGyaO42PnzQ8LWCPSNZbY6oRJ1XuOwIyVH6yYFatXKEs2o w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="347481560"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="347481560"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 08:04:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="1024147258"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="1024147258"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga005.fm.intel.com with SMTP; 27 Apr 2023 08:04:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Apr 2023 18:04:02 +0300
Date: Thu, 27 Apr 2023 18:04:02 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <ZEqO4oTlYATzgnqd@intel.com>
References: <20230427150016.1566833-1-vinod.govindapillai@intel.com>
 <20230427150016.1566833-3-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230427150016.1566833-3-vinod.govindapillai@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 2/8] drm/i915: update the QGV point
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 27, 2023 at 06:00:10PM +0300, Vinod Govindapillai wrote:
> >From MTL onwwards, pcode locks the QGV point based on peak BW of
> the intended QGV point passed by the driver. So the peak BW
> calculation must match the value expected by the pcode. Update
> the calculations as per the Bspec.
> 
> Bspec: 64636
> 
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index ab405c48ca3a..25ae4e5834d3 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -182,7 +182,7 @@ static int mtl_read_qgv_point_info(struct drm_i915_private *dev_priv,
>  	val2 = intel_uncore_read(&dev_priv->uncore,
>  				 MTL_MEM_SS_INFO_QGV_POINT_HIGH(point));
>  	dclk = REG_FIELD_GET(MTL_DCLK_MASK, val);
> -	sp->dclk = DIV_ROUND_UP((16667 * dclk), 1000);
> +	sp->dclk = (16667 * dclk + 500) / 1000;

Don't hand roll rounding.

>  	sp->t_rp = REG_FIELD_GET(MTL_TRP_MASK, val);
>  	sp->t_rcd = REG_FIELD_GET(MTL_TRCD_MASK, val);
>  
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
