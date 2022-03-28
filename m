Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2D14E9C61
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 18:37:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1806D10E6FB;
	Mon, 28 Mar 2022 16:37:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1E0210E6FB
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 16:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648485451; x=1680021451;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=bGnfxcNqJWXZc0DvzYqwH9pO9lt1xi1ORS9S+czUbvc=;
 b=Q+xzeunut045vRLmQVUUsVLUUJLE13FN9AyJZaE4m7cLg1q5fZV/Drjp
 L0nHAFZmulvN1BZWzpvWtupQ6ycUuUwpYi2P82BwXQd8DZodIgLHAEGk6
 GAUtUV2InDX8WC03rLnry+/xjINuDmH91iD7UZX7SD8Py19laVm/9gPhC
 Q/HeAhKj+0Zk3u88B8GAw85nzpUBke7x92gjhmZGn0tN2MF63Dt/yAAbR
 q8XBlLowoarYbckHPhmKKcssKZx3kUMqS1eEbEGCNFBF6qdQypqSU6QFi
 UFfPuNun75GiAwuYvDGkl1AmmgKQrj0V96mZ81AfDLFXM9Uk+LfKR6f/2 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="256622024"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="256622024"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 09:37:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="694422471"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga001.fm.intel.com with SMTP; 28 Mar 2022 09:37:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 28 Mar 2022 19:37:28 +0300
Date: Mon, 28 Mar 2022 19:37:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <YkHkSC+6JtZd8he/@intel.com>
References: <20220328161025.175993-1-vinod.govindapillai@intel.com>
 <20220328161025.175993-2-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220328161025.175993-2-vinod.govindapillai@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/i915: Handle the DG2 max bw
 properly
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

On Mon, Mar 28, 2022 at 07:10:25PM +0300, Vinod Govindapillai wrote:
> DG2 has a constant bandwidth regardless of the number of planes
> enabled. Handle the DG2 bw separately.
> 
> cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index ac11ff19e47d..8955f9f8476a 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -1003,7 +1003,9 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
>  	for (i = 0; i < num_qgv_points; i++) {
>  		unsigned int max_data_rate;
>  
> -		if (DISPLAY_VER(dev_priv) > 11)
> +		if (IS_DG2(dev_priv))
> +			max_data_rate = dev_priv->max_bw[0].deratedbw[0];

Are you saying tgl_max_bw() doesn't actually work for dg2?

> +		else if (DISPLAY_VER(dev_priv) > 11)
>  			max_data_rate = tgl_max_bw(dev_priv, num_active_planes, i);
>  		else
>  			max_data_rate = icl_max_bw(dev_priv, num_active_planes, i);
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
