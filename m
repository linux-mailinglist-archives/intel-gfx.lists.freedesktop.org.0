Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FF070C22A
	for <lists+intel-gfx@lfdr.de>; Mon, 22 May 2023 17:18:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E21A510E356;
	Mon, 22 May 2023 15:18:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7908110E356
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 May 2023 15:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684768718; x=1716304718;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=VP148XMss3ixNb1cvEm4DUHJWYq9AMsA6jbEUfxApV0=;
 b=NBBskCjTjaSeA9frTpMtPGnnZ/7D4z+pCgKqUAHqXZtUW8i/DKYPFEqL
 NkEjInRtLmeILcbJ2bJhryk3zmsWiaHxQjPw3Dg8RVumEuOx8LUwq/bnT
 eoFSFUIYMNcxDVlUc9bUGg0IEQmORCBQ3UpeDvXWLdtxUwaJi19nuw+nf
 hjF96Sqs0thgqYih7kPZjkK2j533XXU2d1hUMIfNVUxZ82+cM4QyGHvyz
 mTUiJA2GK/Nlb/8deDHDyq/ao0uHYjsbAooODg0mQyI/eRj03Com3Gpb7
 Jr9mGhpfY5yquteFPkuKJqBOFOiQGWTgcBkDTnsX7nldDl/Z+hfPcT7+d A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="381179932"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="381179932"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 08:18:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="847864828"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="847864828"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 08:18:06 -0700
Date: Mon, 22 May 2023 18:17:59 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <ZGuHp8rbvD+3d4GT@intel.com>
References: <20230511231750.313467-1-vinod.govindapillai@intel.com>
 <20230511231750.313467-3-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230511231750.313467-3-vinod.govindapillai@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 2/8] drm/i915: update the QGV point
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

On Fri, May 12, 2023 at 02:17:44AM +0300, Vinod Govindapillai wrote:
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

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

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
>  	sp->t_rp = REG_FIELD_GET(MTL_TRP_MASK, val);
>  	sp->t_rcd = REG_FIELD_GET(MTL_TRCD_MASK, val);
>  
> -- 
> 2.34.1
> 
