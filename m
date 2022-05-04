Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C4A51B0F2
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 23:33:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA9B210E0F3;
	Wed,  4 May 2022 21:33:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5ADA10E0F3
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 21:33:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651700021; x=1683236021;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Zdoi1nzBnP0Cr0aNRxztQok4vQ5pC8o0k/zUG4xKcFg=;
 b=SMyWIGSCLLuB92CjUUlHc0JRPcTQs2k8DqKKqVLsLIxoBRBsiDOUF03U
 2hXeJE1Ocv/MzIEiBMW7BbSF1ePaCuMWIVvMXrx4VeReK5SWUfb5KbgNB
 A01mohmIo5pI6CNDSvGz6ah6L1hPpPEKytQTxWtBbuaood4qtaGUrIJih
 OHUzZWWYrspBWSoTPl5p2gZqcAheZrgdi96c2OTuflS9D4tOuXSQaOfu5
 JnxPdKI11nb307Yrdq+o5XmvH24feKyPvUXSMb3EiOGPIwC8KehK5P3wU
 zhawv74kSugpW8W4pG3WDjU4gMfddJsTlMxkms/OYklAmnZ/W2bLerJWK A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="247814386"
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="247814386"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 14:33:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="584957902"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga008.jf.intel.com with SMTP; 04 May 2022 14:33:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 05 May 2022 00:33:36 +0300
Date: Thu, 5 May 2022 00:33:36 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YnLxMP3Evf8KmA0K@intel.com>
References: <20220504190756.466270-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220504190756.466270-1-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 01/12] drm/i915: Drop IPC from display 13
 and newer
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

On Wed, May 04, 2022 at 12:07:45PM -0700, José Roberto de Souza wrote:
> This feature is supported from display 9 to display 12 and was
> incorrectly being applied to DG2 and Alderlake-P.

They just renamed the register to ARB_HP_CTL.

> 
> While at is also taking the oportunity to drop it from
> intel_device_info struct as a display check is more simple
> and less prone to be left enabled in future platforms.
> 
> BSpec: 50039
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h          | 3 ++-
>  drivers/gpu/drm/i915/i915_pci.c          | 3 ---
>  drivers/gpu/drm/i915/intel_device_info.h | 1 -
>  3 files changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 2dddc27a1b0ed..695b35cd6b5e4 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1344,7 +1344,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   */
>  #define NEEDS_COMPACT_PT(dev_priv) (INTEL_INFO(dev_priv)->needs_compact_pt)
>  
> -#define HAS_IPC(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ipc)
> +#define HAS_IPC(dev_priv)		 (DISPLAY_VER(dev_priv) >= 9 && \
> +					  DISPLAY_VER(dev_priv) <= 12)
>  
>  #define HAS_REGION(i915, i) (INTEL_INFO(i915)->memory_regions & (i))
>  #define HAS_LMEM(i915) HAS_REGION(i915, REGION_LMEM)
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 498708b33924f..c4f9c805cffd1 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -646,7 +646,6 @@ static const struct intel_device_info chv_info = {
>  	.display.has_dmc = 1, \
>  	.has_gt_uc = 1, \
>  	.display.has_hdcp = 1, \
> -	.display.has_ipc = 1, \
>  	.display.has_psr = 1, \
>  	.display.has_psr_hw_tracking = 1, \
>  	.dbuf.size = 896 - 4, /* 4 blocks for bypass path allocation */ \
> @@ -712,7 +711,6 @@ static const struct intel_device_info skl_gt4_info = {
>  	.has_reset_engine = 1, \
>  	.has_snoop = true, \
>  	.has_coherent_ggtt = false, \
> -	.display.has_ipc = 1, \
>  	HSW_PIPE_OFFSETS, \
>  	IVB_CURSOR_OFFSETS, \
>  	IVB_COLORS, \
> @@ -955,7 +953,6 @@ static const struct intel_device_info adl_s_info = {
>  	.display.has_fpga_dbg = 1,						\
>  	.display.has_hdcp = 1,							\
>  	.display.has_hotplug = 1,						\
> -	.display.has_ipc = 1,							\
>  	.display.has_psr = 1,							\
>  	.display.ver = 13,							\
>  	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),	\
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index e7d2cf7d65c85..c9660b4282d9e 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -180,7 +180,6 @@ enum intel_ppgtt_type {
>  	func(has_hdcp); \
>  	func(has_hotplug); \
>  	func(has_hti); \
> -	func(has_ipc); \
>  	func(has_modular_fia); \
>  	func(has_overlay); \
>  	func(has_psr); \
> -- 
> 2.36.0

-- 
Ville Syrjälä
Intel
