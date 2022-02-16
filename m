Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6B54B8321
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 09:42:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE27210EACB;
	Wed, 16 Feb 2022 08:42:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8E8D10EB8F
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 08:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645000920; x=1676536920;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8cWpf1xX+BKaevv41R+m7YlZNpIjM99s/GnBBmLrm64=;
 b=Ku+P83qZ0GspCfROdDNYexQryXvCrYpOb0fHjkiFpb+0MvWMEu96bwzA
 OD66Vp35Ggi3AXOOxQRAu51wxPHKkVnMhWKTl8WaMBHzsdQf/nf6wPtmX
 xRgSs7S07GcsKVMtGnQ3cI1Ot7FrhucUWGopbrQTnohpRvoHyyE0J7Hjd
 dBhtt0Fu4OgUNhTvCXYVG6aQFF0TsewZnBIDiZAb4vdKnPVtFK5bQuv/h
 wHGD3H5JOgKelhhYyZk4qbV5aRjzDlX21xgscY62ImZYQREhTQCe5SquV
 OjQkHIAWiTjWP6Ly0f7dbSOLIktIzYkfMM1Suw6CLC0WFK7znzOwD7UKG g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="250497584"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="250497584"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 00:42:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="498524459"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 16 Feb 2022 00:41:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Feb 2022 10:41:57 +0200
Date: Wed, 16 Feb 2022 10:41:57 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <Ygy41YWHyQR3yz8I@intel.com>
References: <20220215061342.2055952-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220215061342.2055952-1-matthew.d.roper@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: Define MCH registers
 relative to MCHBAR_MIRROR_BASE
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

On Mon, Feb 14, 2022 at 10:13:41PM -0800, Matt Roper wrote:
> A few of our MCH registers are defined with absolute register offsets.
> For consistency, let's switch their definitions to be relative offsets
> from MCHBAR_MIRROR_BASE.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Looks correct to my eyes.
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_reg.h | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 4ea1713e6b60..72cb6e13b4e2 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1922,16 +1922,16 @@
>  #define HPLLVCO                 _MMIO(MCHBAR_MIRROR_BASE + 0xc38)
>  #define HPLLVCO_MOBILE          _MMIO(MCHBAR_MIRROR_BASE + 0xc0f)
>  
> -#define TSC1			_MMIO(0x11001)
> +#define TSC1			_MMIO(MCHBAR_MIRROR_BASE + 0x1001)
>  #define   TSE			(1 << 0)
> -#define TR1			_MMIO(0x11006)
> -#define TSFS			_MMIO(0x11020)
> +#define TR1			_MMIO(MCHBAR_MIRROR_BASE + 0x1006)
> +#define TSFS			_MMIO(MCHBAR_MIRROR_BASE + 0x1020)
>  #define   TSFS_SLOPE_MASK	0x0000ff00
>  #define   TSFS_SLOPE_SHIFT	8
>  #define   TSFS_INTR_MASK	0x000000ff
>  
> -#define CSIPLL0			_MMIO(0x12c10)
> -#define DDRMPLL1		_MMIO(0X12c20)
> +#define CSIPLL0			_MMIO(MCHBAR_MIRROR_BASE + 0x2c10)
> +#define DDRMPLL1		_MMIO(MCHBAR_MIRROR_BASE + 0x2c20)
>  #define PEG_BAND_GAP_DATA	_MMIO(0x14d68)
>  
>  #define GEN6_GT_PERF_STATUS	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5948)
> @@ -4320,7 +4320,7 @@
>  	 ((fbc) << WM1_LP_FBC_SHIFT) | ((pri) << WM1_LP_SR_SHIFT) | (cur))
>  
>  /* Memory latency timer register */
> -#define MLTR_ILK		_MMIO(0x11222)
> +#define MLTR_ILK		_MMIO(MCHBAR_MIRROR_BASE + 0x1222)
>  #define  MLTR_WM1_SHIFT		0
>  #define  MLTR_WM2_SHIFT		8
>  /* the unit of memory self-refresh latency time is 0.5us */
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
