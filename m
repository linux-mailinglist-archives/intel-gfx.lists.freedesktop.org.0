Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C5B9738C8
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 15:39:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9452710E7E7;
	Tue, 10 Sep 2024 13:39:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MLDHGmxU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56B2B10E7E7;
 Tue, 10 Sep 2024 13:39:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725975572; x=1757511572;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=QK1WLiu4fbDJAApuYR1GC2fwwwE5yApmN14Jq25+LXw=;
 b=MLDHGmxUlYYln2AzfxlM5UL4fOuSU2jW/M81TUfufL2rbk45Ej4MBB8J
 UImJ4UOtnU3kQUrIzc1Maia2xOSwsO0Ic1tPqKD3WiRcDP0lbTcrj8VMs
 mEFjlepzFO3BHL+n/N2NQK3RDgwgxifdWfhMWIt5l6YVuH/YvgsaYOR+3
 hb4KtgexvMCst1FHZaWcLB3N2vUJMYOsTjKtoKw7OlQKZ0MmAOg/Ocopu
 kPTwuMbFwLIhngQ/KHg4o68zu8C6FwxHHENSF2SspIDx8/FdoJrgeSz21
 vfurbFjBSvDsZXskCZgIaa49/+K1Bt/83ZVx40vSeJnAvR7saiLuwapoj Q==;
X-CSE-ConnectionGUID: u1v3smXJRQibsNFGCQjiHQ==
X-CSE-MsgGUID: 8bpRVmK0RDGmrrMwpxYqOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="35860663"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="35860663"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:39:31 -0700
X-CSE-ConnectionGUID: KKEr/k2eRHWvgaVZ3isZgQ==
X-CSE-MsgGUID: lDjyTWjpTa2/HFkwSuBmlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="67081029"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Sep 2024 06:39:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Sep 2024 16:39:28 +0300
Date: Tue, 10 Sep 2024 16:39:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 06/11] drm/i915/reg: fix PCH transcoder timing
 indentation
Message-ID: <ZuBMEGcugO7mN5q1@intel.com>
References: <cover.1725974820.git.jani.nikula@intel.com>
 <f56e48a927692cec382e292602e0fa68e37f3b93.1725974820.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f56e48a927692cec382e292602e0fa68e37f3b93.1725974820.git.jani.nikula@intel.com>
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

On Tue, Sep 10, 2024 at 04:28:50PM +0300, Jani Nikula wrote:
> Adhere to the style described at the top of i915_reg.h.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_reg.h | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 2f09145b9791..1eede96a5415 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3292,13 +3292,13 @@
>  
>  #define HSW_STEREO_3D_CTL(dev_priv, trans)	_MMIO_PIPE2(dev_priv, trans, _HSW_STEREO_3D_CTL_A)
>  
> -#define _PCH_TRANS_HTOTAL_B          0xe1000
> -#define _PCH_TRANS_HBLANK_B          0xe1004
> -#define _PCH_TRANS_HSYNC_B           0xe1008
> -#define _PCH_TRANS_VTOTAL_B          0xe100c
> -#define _PCH_TRANS_VBLANK_B          0xe1010
> -#define _PCH_TRANS_VSYNC_B           0xe1014
> -#define _PCH_TRANS_VSYNCSHIFT_B 0xe1028
> +#define _PCH_TRANS_HTOTAL_B		0xe1000
> +#define _PCH_TRANS_HBLANK_B		0xe1004
> +#define _PCH_TRANS_HSYNC_B		0xe1008
> +#define _PCH_TRANS_VTOTAL_B		0xe100c
> +#define _PCH_TRANS_VBLANK_B		0xe1010
> +#define _PCH_TRANS_VSYNC_B		0xe1014
> +#define _PCH_TRANS_VSYNCSHIFT_B		0xe1028
>  
>  #define PCH_TRANS_HTOTAL(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_HTOTAL_A, _PCH_TRANS_HTOTAL_B)
>  #define PCH_TRANS_HBLANK(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_HBLANK_A, _PCH_TRANS_HBLANK_B)
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
