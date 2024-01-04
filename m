Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB3F823D35
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 09:13:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF7B110E3DA;
	Thu,  4 Jan 2024 08:13:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7D6D10E3DA
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 08:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704356024; x=1735892024;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ZP86eFgLKi5qgq0ZuiXKijc6uuH9RoHf9gpjti3olhc=;
 b=Jp20I6KpDyi/sANXF6HEeu17mLdnVY0cWhBpL5ndfQlIlZt8CCoTJ+q/
 Drq9Bj3H7yywB8JlqbX1S152IYUj4nFyEOiZgfC2vQ0dJ+2kaxO9ndrJ2
 5yurzSZ/hRskpZMs9IIaPZh4gB9gC6TJk+ta4JXMoAgZa5JTAUBXLzYyo
 X1jszh0jjvKd4IaVjEXJ4OxikdCmyzbDgiicR+2rxiIwD4e7W7JD73ai0
 67NyLV/d2TcCGEXxYQR2+qIW1uisCXntdMfbyNkbeI+v0X8s3q/5RSdD/
 9BSbWv9axhTPnv7tTFIj6ZZ0lr5m34/G/+G8v9m7dpgeeaN1MZ2LC8kL5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="461472000"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="461472000"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:13:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="730066041"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="730066041"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:13:43 -0800
Date: Thu, 4 Jan 2024 10:13:35 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: George D Sworo <gdsworo@intel.com>
Subject: Re: [PATCH] drm/i915: clear the QGV mask set by GOP while booting
Message-ID: <ZZZor1Jxmvh/XgxC@intel.com>
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
