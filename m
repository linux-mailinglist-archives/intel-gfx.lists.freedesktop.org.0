Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2793A433352
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 12:14:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 241996E141;
	Tue, 19 Oct 2021 10:13:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C49186E141
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 10:13:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="251942996"
X-IronPort-AV: E=Sophos;i="5.85,384,1624345200"; d="scan'208";a="251942996"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 03:13:53 -0700
X-IronPort-AV: E=Sophos;i="5.85,384,1624345200"; d="scan'208";a="494032158"
Received: from jsanz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.211.239])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 03:13:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com, matthew.d.roper@intel.com,
 Vandita Kulkarni <vandita.kulkarni@intel.com>
In-Reply-To: <20211018065207.30587-3-vandita.kulkarni@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211018065207.30587-1-vandita.kulkarni@intel.com>
 <20211018065207.30587-3-vandita.kulkarni@intel.com>
Date: Tue, 19 Oct 2021 13:13:44 +0300
Message-ID: <8735oxs4o7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/dsi/xelpd: Add DSI transcoder
 support
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

On Mon, 18 Oct 2021, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
> Update ADL_P device info to support DSI0, DSI1
>
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pci.c | 31 ++++++++++++++++++++++++++++---
>  1 file changed, 28 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 169837de395d..a2dd5a38fdf5 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -932,8 +932,6 @@ static const struct intel_device_info adl_s_info = {
>  #define XE_LPD_FEATURES \
>  	.abox_mask = GENMASK(1, 0),						\
>  	.color = { .degamma_lut_size = 0, .gamma_lut_size = 0 },		\
> -	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |		\
> -		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),				\
>  	.dbuf.size = 4096,							\
>  	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |		\
>  		BIT(DBUF_S4),							\
> @@ -950,23 +948,49 @@ static const struct intel_device_info adl_s_info = {
>  	.display.has_psr = 1,							\
>  	.display.ver = 13,							\
>  	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),	\
> +	XE_LPD_CURSOR_OFFSETS
> +
> +#define ADLP_TRANSCODERS \
> +	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |		\
> +		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) |				\
> +		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),			\
>  	.pipe_offsets = {							\
>  		[TRANSCODER_A] = PIPE_A_OFFSET,					\
>  		[TRANSCODER_B] = PIPE_B_OFFSET,					\
>  		[TRANSCODER_C] = PIPE_C_OFFSET,					\
>  		[TRANSCODER_D] = PIPE_D_OFFSET,					\
> +		[TRANSCODER_DSI_0] = PIPE_DSI0_OFFSET,				\
> +		[TRANSCODER_DSI_1] = PIPE_DSI1_OFFSET,				\
>  	},									\
>  	.trans_offsets = {							\
>  		[TRANSCODER_A] = TRANSCODER_A_OFFSET,				\
>  		[TRANSCODER_B] = TRANSCODER_B_OFFSET,				\
>  		[TRANSCODER_C] = TRANSCODER_C_OFFSET,				\
>  		[TRANSCODER_D] = TRANSCODER_D_OFFSET,				\
> +		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET,			\
> +		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET,			\

I think you could just add these changes to XE_LPD_FEATURES, and have
separate .cpu_transcoder_mask initialization for ADLP and DG2.

Compare GEN12_FEATURES.

BR,
Jani.

> +	}									\
> +
> +#define DG2_TRANSCODERS \
> +	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |		\
> +		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),				\
> +	.pipe_offsets = {							\
> +		[TRANSCODER_A] = PIPE_A_OFFSET,					\
> +		[TRANSCODER_B] = PIPE_B_OFFSET,					\
> +		[TRANSCODER_C] = PIPE_C_OFFSET,					\
> +		[TRANSCODER_D] = PIPE_D_OFFSET,					\
>  	},									\
> -	XE_LPD_CURSOR_OFFSETS
> +	.trans_offsets = {							\
> +		[TRANSCODER_A] = TRANSCODER_A_OFFSET,				\
> +		[TRANSCODER_B] = TRANSCODER_B_OFFSET,				\
> +		[TRANSCODER_C] = TRANSCODER_C_OFFSET,				\
> +		[TRANSCODER_D] = TRANSCODER_D_OFFSET,				\
> +	}									\
>  
>  static const struct intel_device_info adl_p_info = {
>  	GEN12_FEATURES,
>  	XE_LPD_FEATURES,
> +	ADLP_TRANSCODERS,
>  	PLATFORM(INTEL_ALDERLAKE_P),
>  	.require_force_probe = 1,
>  	.display.has_cdclk_crawl = 1,
> @@ -1029,6 +1053,7 @@ static const struct intel_device_info dg2_info = {
>  	XE_HP_FEATURES,
>  	XE_HPM_FEATURES,
>  	XE_LPD_FEATURES,
> +	DG2_TRANSCODERS,
>  	DGFX_FEATURES,
>  	.graphics_rel = 55,
>  	.media_rel = 55,

-- 
Jani Nikula, Intel Open Source Graphics Center
