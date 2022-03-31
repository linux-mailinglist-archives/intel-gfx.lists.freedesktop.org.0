Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C13BA4ED8BA
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 13:53:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1FC210F146;
	Thu, 31 Mar 2022 11:53:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7B8410F146
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 11:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648727601; x=1680263601;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=MBnXq5GP4Pp/D6nh98k8bmggsvkMWvcLfE1xUesuyfo=;
 b=fjd4gc4bPZXlczMGg9FiDfUcKUZXd6xMwUMFN4s0uDiGrzuarXdxkM/o
 WH2CmdVM49gTrRcf2n70QHOqtv9kMoHOZjRoRWhk9juhdLsDwdGqQMYXU
 T958XvKze5SsWqMbWIKqSb+JdLIbvFRjovBKPEPW5s0nt1f6GOYG34ulq
 +KEfPxenMlq4H3fq7au/kVbvX0P4/3vfnnreus6VJKMkTeBXnY16s/l5V
 hwSS32vaX/eqj7C9H4Sr6fxSp/kDpT1O3eXR8/xrZQBe5H15dOEAByHwe
 /jj/SHWRjqc86iv/1wVWarEFIVmPiq4oPvkN7rVYHEl5PwPIIP+47QORt g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="259788725"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="259788725"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 04:53:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="606052179"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga008.fm.intel.com with SMTP; 31 Mar 2022 04:53:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Mar 2022 14:53:17 +0300
Date: Thu, 31 Mar 2022 14:53:17 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <YkWWLUWMIvj2Svk1@intel.com>
References: <20220328230000.215094-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220328230000.215094-1-vinod.govindapillai@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Handle the DG2 max bw properly
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 29, 2022 at 02:00:00AM +0300, Vinod Govindapillai wrote:
> Update DG2 init bw info similar to other platforms even though
> DG2 has constant bandwidh. This will avoid branching out DG2
> specific max bw calls.
> 
> V3: Fix dg2_get_bw_info() and avoid handle special cases
>     for DG2 (Ville Syrjälä)
> 
> cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>

Thanks. Pushed.

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 25 +++++++++++++++----------
>  1 file changed, 15 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index ac11ff19e47d..3a39600a75a9 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -464,20 +464,25 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
>  
>  static void dg2_get_bw_info(struct drm_i915_private *i915)
>  {
> -	struct intel_bw_info *bi = &i915->max_bw[0];
> +	unsigned int deratedbw = IS_DG2_G11(i915) ? 38000 : 50000;
> +	int num_groups = ARRAY_SIZE(i915->max_bw);
> +	int i;
>  
>  	/*
>  	 * DG2 doesn't have SAGV or QGV points, just a constant max bandwidth
> -	 * that doesn't depend on the number of planes enabled.  Create a
> -	 * single dummy QGV point to reflect that.  DG2-G10 platforms have a
> -	 * constant 50 GB/s bandwidth, whereas DG2-G11 platforms have 38 GB/s.
> +	 * that doesn't depend on the number of planes enabled. So fill all the
> +	 * plane group with constant bw information for uniformity with other
> +	 * platforms. DG2-G10 platforms have a constant 50 GB/s bandwidth,
> +	 * whereas DG2-G11 platforms have 38 GB/s.
>  	 */
> -	bi->num_planes = 1;
> -	bi->num_qgv_points = 1;
> -	if (IS_DG2_G11(i915))
> -		bi->deratedbw[0] = 38000;
> -	else
> -		bi->deratedbw[0] = 50000;
> +	for (i = 0; i < num_groups; i++) {
> +		struct intel_bw_info *bi = &i915->max_bw[i];
> +
> +		bi->num_planes = 1;
> +		/* Need only one dummy QGV point per group */
> +		bi->num_qgv_points = 1;
> +		bi->deratedbw[0] = deratedbw;
> +	}
>  
>  	i915->sagv_status = I915_SAGV_NOT_CONTROLLED;
>  }
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
