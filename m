Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CCE97EFE2
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 19:38:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA21310E0EA;
	Mon, 23 Sep 2024 17:38:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gwHB0T0h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87C3810E0EA
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 17:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727113125; x=1758649125;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xH+tiy5PwnKXDkpOp/yiW5D9Qj0t9W3pd0aGx5KLDg4=;
 b=gwHB0T0hAa9L108HXRDp+DWTTth8MabalEQFRs86tejbT9r0l+0UzD6l
 krNYQvWzDUCQHGBM+v3nei/dOf5iyAFG/Zb4vgAE0IcXDM+/qI7oqZAh0
 Y+S4FkHpyXo/rH+MmOYRBIjf/+nsfR1fd7aVy/CnrrEQDP8HlKwG2HxHq
 u4gtK2LcN9kkeaDV/Ms1DQMVCEh3t0F0qbfTpJfVEofnTYwvbuiEmFrEs
 +PSS7FQqCwJZv37/xGAANlI4rjnsBZWfFT0dkmkje24JBgGU3RzLOROZJ
 PJ2iX1Qa9TCwkQvEST0eT25RtTjuyQ9nsQeXzqcILZpzLIZzxwMttKS2U Q==;
X-CSE-ConnectionGUID: HslwbTKwQ7K71mc7NBSG5Q==
X-CSE-MsgGUID: l+0QL9K5TY628VloczUdBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="26266724"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="26266724"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 10:38:38 -0700
X-CSE-ConnectionGUID: PmxJxjagRFiiPTDVREysDQ==
X-CSE-MsgGUID: IxeU9b5zTDSgMCPd6V80+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="71287166"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Sep 2024 10:38:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Sep 2024 20:38:35 +0300
Date: Mon, 23 Sep 2024 20:38:35 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, uma.shankar@intel.com,
 matthew.d.roper@intel.com
Subject: Re: [PATCH 1/2] drm/i915/hotplug: Reduce SHPD_FLITER_CNT for
 DISPLAY_VER() == 12
Message-ID: <ZvGnm0Uj0KzErdM5@intel.com>
References: <20240923031007.1058072-2-suraj.kandpal@intel.com>
 <20240923031007.1058072-3-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240923031007.1058072-3-suraj.kandpal@intel.com>
X-Patchwork-Hint: comment
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 23, 2024 at 08:40:07AM +0530, Suraj Kandpal wrote:
> Reduce SHPD_CNT to 250us for display version 12 as it lines up
> with DP1.4a(Table3-4) spec.
> 
> --v2
> -Update commit message and comment [Matt]
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> index 2c4e946d5575..8427386132e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> @@ -849,7 +849,11 @@ static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
>  	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
>  	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
>  
> -	if (INTEL_PCH_TYPE(dev_priv) <= PCH_TGP)
> +	/*
> +	 * We reduce the value to 250us to be able to detect SHPD when an external display
> +	 * is connected. This is also expected of us as stated in DP1.4a Table 3-4.
> +	 */
> +	if (INTEL_PCH_TYPE(dev_priv) < PCH_TGP)
>  		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
>  	else
>  		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);

IMO if we start reducing this for older platforms then we
should just do it for all of them, instead of based on some
random cutoff.

-- 
Ville Syrjälä
Intel
