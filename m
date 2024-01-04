Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 797E4823D51
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 09:21:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3652C10E311;
	Thu,  4 Jan 2024 08:21:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F73010E311
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 08:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704356517; x=1735892517;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=dCQ30JkWA4Y6E4jlMydmQvW8eABZmikzsFnalqGriyw=;
 b=l3fmpjkwx/FwWQlzf+xhaol0PbPcuwk7bAOcX4/hUOS2+uxsFHr8WGe9
 oNTebbxHV4pgUX4jgYrXieMvDrQY9Exj0UXhhIEp5zzBqZN7BZs4YFvJD
 x9zTEQP3vfoInqQhmGDpqxCTBsqzABV7T5H5ML+slvQloZtKjPXRJIEhH
 JynhXbgknUNe9wpLzYwfdqvrfcDl5u/bhIFlHKlGUErp/gSArUaYDMttK
 +6KDcz4wF7ZdGOQ4JT+tsJuydSKJMJi3TL72mad3WMcmIzBsKdh8cuwXG
 FNMn1E9M0inSqt6oiLmZiM0HLfq81SJqgPDsxOsOe/BIzzXz6LLFRFDwW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="4259618"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; 
   d="scan'208";a="4259618"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:21:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="903729983"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="903729983"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:21:52 -0800
Date: Thu, 4 Jan 2024 10:21:42 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: George D Sworo <george.d.sworo@intel.com>
Subject: Re: [PATCH] drm/i915: clear the QGV mask set by GOP while booting
Message-ID: <ZZZqlmh4AyDGnKFs@intel.com>
References: <20240104025745.429056-1-george.d.sworo@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240104025745.429056-1-george.d.sworo@intel.com>
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

On Wed, Jan 03, 2024 at 06:57:45PM -0800, George D Sworo wrote:
> From: George D Sworo <george.d.sworo@intel.com>
> 
> GOP driver in the firmware is masking the QGV points except the one
> which can
> provide high Bandwidth required for panel.
> 
> On boot to the OS the mask is already set, and is not cleared anywhere
> in the i915 driver
> even though sagv is enabled. This means Pcode is unable to switch to
> other QGV work points
> except the one enabled by default in the GOP driver at boot time.
> 
> This change resets the mask, when i915 driver is finding the QGV
> points at the boot time. So that Pcode can switch to QGV work points
> based
> on the Workloads.
> 
> Signed-off-by: George D Sworo <george.d.sworo@intel.com>


Hi,

We already have a case similar to this, you might want to check this out:

https://patchwork.freedesktop.org/series/126962/

Stan


> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index bef96db62c80..e2576c0fb729 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -212,6 +212,7 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
>  			      bool is_y_tile)
>  {
>  	const struct dram_info *dram_info = &dev_priv->dram_info;
> +	u32 val = 0x00, val2 = 0;
>  	int i, ret;
>  
>  	qi->num_points = dram_info->num_qgv_points;
> @@ -311,6 +312,11 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
>  				    i, qi->psf_points[i].clk);
>  	}
>  
> +	/* clear the QGV points mask set by the GOP driver while booting */
> +	ret = snb_pcode_read(&dev_priv->uncore, ICL_PCODE_SAGV_DE_MEM_SS_CONFIG, &val, &val2);
> +	if (ret)
> +		return ret;
> +
>  	return 0;
>  }
>  
> -- 
> 2.34.1
> 
