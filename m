Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31BBC3A4FE5
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Jun 2021 19:23:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDC086E156;
	Sat, 12 Jun 2021 17:23:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEA9D6E156
 for <intel-gfx@lists.freedesktop.org>; Sat, 12 Jun 2021 17:23:23 +0000 (UTC)
IronPort-SDR: 5mS6mahX/J4sg7f+oRtyt9Gc6fdTXXEPvN6Au0k9EADp3HxIkj1SO8sBnNeSYevYte+zpuL+If
 YgCl8RP26iMQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10013"; a="192785394"
X-IronPort-AV: E=Sophos;i="5.83,268,1616482800"; d="scan'208";a="192785394"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2021 10:23:20 -0700
IronPort-SDR: KMT50fAPeXdJ1ELixAUSKuOwoZqo0GkWc6tv6cvkCWiuqzVMHmhvtrOPpEaYVLmdkLzEWzLdw3
 7hbfU1CDiSmA==
X-IronPort-AV: E=Sophos;i="5.83,268,1616482800"; d="scan'208";a="483603607"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2021 10:23:20 -0700
Date: Sat, 12 Jun 2021 10:23:19 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20210612172319.GH951094@mdroper-desk1.amr.corp.intel.com>
References: <20210612053531.1870920-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210612053531.1870920-1-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/xelpd: break feature inheritance
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 11, 2021 at 10:35:31PM -0700, Lucas De Marchi wrote:
> It's becoming pretty cumbersome to track the features enabled going back
> to GEN7. Gather the XE_LPD display features together in XE_LPD_FEATURES
> macro so they are sufficient to describe the display features.
> 
> In ADL-P's device_info we set has_psr_hw_tracking to 0 as it would
> otherwise be enabled since it is inheriting from GEN12_FEATURES.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_pci.c | 50 +++++++++++++++++++++++++++------
>  1 file changed, 42 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 83b500bb170c..5e8348f506b8 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -939,15 +939,48 @@ static const struct intel_device_info adl_s_info = {
>  	.dma_mask_size = 46,
>  };
>  
> +#define XE_LPD_CURSOR_OFFSETS \
> +	.cursor_offsets = { \
> +		[PIPE_A] = CURSOR_A_OFFSET, \
> +		[PIPE_B] = IVB_CURSOR_B_OFFSET, \
> +		[PIPE_C] = IVB_CURSOR_C_OFFSET, \
> +		[PIPE_D] = TGL_CURSOR_D_OFFSET, \
> +	}
> +
>  #define XE_LPD_FEATURES \
> -	.display.ver = 13,						\
> -	.display.has_psr_hw_tracking = 0,				\
> -	.abox_mask = GENMASK(1, 0),					\
> -	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D), \
> -	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |	\
> -		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),			\
> -	.dbuf.size = 4096,						\
> -	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) | BIT(DBUF_S4)
> +	.abox_mask = GENMASK(1, 0),						\
> +	.color = { .degamma_lut_size = 33, .gamma_lut_size = 262145 },		\
> +	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |		\
> +		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),				\
> +	.dbuf.size = 4096,							\
> +	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |		\
> +		BIT(DBUF_S4),							\
> +	.display.has_ddi = 1,							\
> +	.display.has_dmc = 1,							\
> +	.display.has_dp_mst = 1,						\
> +	.display.has_dsb = 1,							\
> +	.display.has_dsc = 1,							\
> +	.display.has_fbc = 1,							\
> +	.display.has_fpga_dbg = 1,						\
> +	.display.has_hdcp = 1,							\
> +	.display.has_hotplug = 1,						\
> +	.display.has_ipc = 1,							\
> +	.display.has_psr = 1,							\
> +	.display.ver = 13,							\
> +	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),	\
> +	.pipe_offsets = {							\
> +		[TRANSCODER_A] = PIPE_A_OFFSET,					\
> +		[TRANSCODER_B] = PIPE_B_OFFSET,					\
> +		[TRANSCODER_C] = PIPE_C_OFFSET,					\
> +		[TRANSCODER_D] = PIPE_D_OFFSET,					\
> +	},									\
> +	.trans_offsets = {							\
> +		[TRANSCODER_A] = TRANSCODER_A_OFFSET,				\
> +		[TRANSCODER_B] = TRANSCODER_B_OFFSET,				\
> +		[TRANSCODER_C] = TRANSCODER_C_OFFSET,				\
> +		[TRANSCODER_D] = TRANSCODER_D_OFFSET,				\
> +	},									\
> +	XE_LPD_CURSOR_OFFSETS
>  
>  static const struct intel_device_info adl_p_info = {
>  	GEN12_FEATURES,
> @@ -956,6 +989,7 @@ static const struct intel_device_info adl_p_info = {
>  	.has_cdclk_crawl = 1,
>  	.require_force_probe = 1,
>  	.display.has_modular_fia = 1,
> +	.display.has_psr_hw_tracking = 0,
>  	.platform_engine_mask =
>  		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
>  	.ppgtt_size = 48,
> -- 
> 2.31.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
