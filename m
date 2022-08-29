Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB005A4E91
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 15:51:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3351D10F2D4;
	Mon, 29 Aug 2022 13:51:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E9D510F2D4
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Aug 2022 13:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661781068; x=1693317068;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=pfwhbK82XIa2aOpk+Z07cQf1mNaAWCvsETmfS/b9PiA=;
 b=UW7/NEMVf21PifsOHjuHS4KaTuhWu7k8OGinHBz6SHdSA11m8czxzhFy
 lTEQCWsCtFmlyx7ECMXtjdkRW8xIGLX+bEGCe3vCsP0OztRvJ/h79ur16
 IrWVf3MlqWNGU36nnAopEdmbd7jPEWdxwfmnbRUb/sSmVdRMLe0JXRuw9
 iG1yrVM8IO2rITHqd0O8x3iFX/0k2ttfgeF+NkY5bq9Ok+tmlRPZSL2FT
 W228nLnDXZUeCugEALWnSJQHVlViBJhcYjzdgFPIsPiRD+MbSnmdhncji
 Dy15/R3VlNH8YwC5NHroTHu5e3JqRCrDkzvvbIio9Xd/4b8dCu9xiRgYI w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="275300120"
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="275300120"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 06:51:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="607450657"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 29 Aug 2022 06:51:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 29 Aug 2022 16:51:05 +0300
Date: Mon, 29 Aug 2022 16:51:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <YwzESdqZthFGI9La@intel.com>
References: <20220823090128.488008-1-maarten.lankhorst@linux.intel.com>
 <20220823090128.488008-5-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220823090128.488008-5-maarten.lankhorst@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Replace remaining display
 uncore references to use intel_de
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

On Tue, Aug 23, 2022 at 11:01:28AM +0200, Maarten Lankhorst wrote:
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c       |  8 ++--
>  drivers/gpu/drm/i915/display/intel_crt.c      | 33 +++++++------
>  drivers/gpu/drm/i915/display/intel_de.h       | 47 +++++++++++++++++++
>  .../drm/i915/display/intel_display_power.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_dmc.c      |  6 +--
>  drivers/gpu/drm/i915/display/intel_dp_aux.c   | 30 ++++++------
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c |  9 ++--
>  drivers/gpu/drm/i915/display/intel_fbc.c      | 10 +---
>  drivers/gpu/drm/i915/display/intel_gmbus.c    | 42 ++++++++---------
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  6 +--
>  drivers/gpu/drm/i915/display/intel_snps_phy.c | 11 ++---
>  11 files changed, 118 insertions(+), 86 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 8ecf4e3e2bc6..1ca588e31dc9 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -42,7 +42,7 @@ static int dg1_mchbar_read_qgv_point_info(struct drm_i915_private *dev_priv,
>  	u32 dclk_ratio, dclk_reference;
>  	u32 val;
>  
> -	val = intel_uncore_read(&dev_priv->uncore, SA_PERF_STATUS_0_0_0_MCHBAR_PC);
> +	val = intel_de_read(dev_priv, SA_PERF_STATUS_0_0_0_MCHBAR_PC);

Surely these aren't display engine registers? If we start (ab)using
intel_de_*() for everything we may end up in a bigger mess for the
upcoming forcewake thing...

-- 
Ville Syrjälä
Intel
