Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E7651B08A
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 23:27:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E982510EF08;
	Wed,  4 May 2022 21:27:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71E9210EF07
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 21:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651699651; x=1683235651;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=huuuugj43H/qyjxxwq05IpEex01Svcj0aQHXhZKQvEo=;
 b=IzTIshBtbbqz6m8wyPiDKXDPpqCx9xcbVIlv1TIo7Ib5PJYQhxc/7SC8
 pRFRR4P3R6BSoTO/lG+oGGH9KtaVWjR0hmJQkDYd+SU65BfNKWW2Q7uTS
 6tLeQ1nWb0ZQrzcjZKGLkUBqi0Bu+a93kp2SY59sZuW0TcmiGIa9wWwBN
 5X+9EyVgxHpTLEGwdNQQ/kVuyi8uoR2H4iUGF1FqGDSfB1gRjsigQ1fpD
 nEIRJh1C018TkIisA13+/Cuj41QhAnBwqqtfjc89qaNjyaiK3dwaHsntD
 8i14nKkERq7BmM/FK5sUBjk2omerZAvSGw6M96+cnoHZNiK5D0F275DKW w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="268059758"
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="268059758"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 14:27:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="708648225"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga001.fm.intel.com with SMTP; 04 May 2022 14:27:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 05 May 2022 00:27:28 +0300
Date: Thu, 5 May 2022 00:27:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YnLvwEg4fZsxh1zz@intel.com>
References: <20220504190756.466270-1-jose.souza@intel.com>
 <20220504190756.466270-5-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220504190756.466270-5-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 05/12] drm/i915: Drop has_rc6p from device
 info
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

On Wed, May 04, 2022 at 12:07:49PM -0700, José Roberto de Souza wrote:
> No need to have this parameter in intel_device_info struct
> as it was only supported in graphics version 6 and 7 not including
> haswell.

nor vlv

> 
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h          | 4 +++-
>  drivers/gpu/drm/i915/i915_pci.c          | 3 ---
>  drivers/gpu/drm/i915/intel_device_info.h | 1 -
>  3 files changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index d29dca83185ac..602e056edd314 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1310,7 +1310,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  
>  /* ilk does support rc6, but we do not implement [power] contexts */
>  #define HAS_RC6(dev_priv)		 (GRAPHICS_VER(dev_priv) >= 6)
> -#define HAS_RC6p(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6p)
> +#define HAS_RC6p(dev_priv)		 (GRAPHICS_VER(dev_priv) >= 6 && \
> +					  GRAPHICS_VER(dev_priv) <= 7 && \
> +					  !IS_HASWELL(dev_priv))
>  #define HAS_RC6pp(dev_priv)		 (false) /* HW was never validated */
>  
>  #define HAS_RPS(dev_priv)	(INTEL_INFO(dev_priv)->has_rps)
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 90584c462f225..516f28d4db611 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -405,7 +405,6 @@ static const struct intel_device_info ilk_m_info = {
>  	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
>  	.has_coherent_ggtt = true, \
>  	.has_llc = 1, \
> -	.has_rc6p = 1, \
>  	.has_rps = true, \
>  	.dma_mask_size = 40, \
>  	.ppgtt_type = INTEL_PPGTT_ALIASING, \
> @@ -455,7 +454,6 @@ static const struct intel_device_info snb_m_gt2_info = {
>  	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
>  	.has_coherent_ggtt = true, \
>  	.has_llc = 1, \
> -	.has_rc6p = 1, \
>  	.has_reset_engine = true, \
>  	.has_rps = true, \
>  	.dma_mask_size = 40, \
> @@ -540,7 +538,6 @@ static const struct intel_device_info vlv_info = {
>  	.display.has_ddi = 1, \
>  	.display.has_fpga_dbg = 1, \
>  	.display.has_dp_mst = 1, \
> -	.has_rc6p = 0 /* RC6p removed-by HSW */, \
>  	HSW_PIPE_OFFSETS, \
>  	.has_runtime_pm = 1
>  
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index b3244170c4638..599cb265946b8 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -156,7 +156,6 @@ enum intel_ppgtt_type {
>  	func(has_mslices); \
>  	func(has_pooled_eu); \
>  	func(has_pxp); \
> -	func(has_rc6p); \
>  	func(has_rps); \
>  	func(has_runtime_pm); \
>  	func(has_snoop); \
> -- 
> 2.36.0

-- 
Ville Syrjälä
Intel
