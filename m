Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5C9433AE3
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 17:41:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A30DC6EC1F;
	Tue, 19 Oct 2021 15:41:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D45E6EC1F
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 15:41:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="215473103"
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="215473103"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 08:41:35 -0700
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="483282737"
Received: from jsanz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.211.239])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 08:41:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com, matthew.d.roper@intel.com,
 ville.syrjala@linux.intel.com, Vandita
 Kulkarni <vandita.kulkarni@intel.com>
In-Reply-To: <20211019151435.20477-3-vandita.kulkarni@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211019151435.20477-1-vandita.kulkarni@intel.com>
 <20211019151435.20477-3-vandita.kulkarni@intel.com>
Date: Tue, 19 Oct 2021 18:41:29 +0300
Message-ID: <87r1chowd2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [V2 2/4] drm/i915/dsi/xelpd: Add DSI transcoder
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

On Tue, 19 Oct 2021, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
> Update ADL_P device info to support DSI0, DSI1
>
> v2: Re-define cpu_transcoder_mask only (Jani)
>
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_pci.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 169837de395d..44c3577be748 100644
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
> @@ -955,12 +953,16 @@ static const struct intel_device_info adl_s_info = {
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
>  	},									\
>  	XE_LPD_CURSOR_OFFSETS
>  
> @@ -969,6 +971,9 @@ static const struct intel_device_info adl_p_info = {
>  	XE_LPD_FEATURES,
>  	PLATFORM(INTEL_ALDERLAKE_P),
>  	.require_force_probe = 1,
> +	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
> +			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D) |
> +			       BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),
>  	.display.has_cdclk_crawl = 1,
>  	.display.has_modular_fia = 1,
>  	.display.has_psr_hw_tracking = 0,
> @@ -1038,6 +1043,8 @@ static const struct intel_device_info dg2_info = {
>  		BIT(VECS0) | BIT(VECS1) |
>  		BIT(VCS0) | BIT(VCS2),
>  	.require_force_probe = 1,
> +	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
> +			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
>  };
>  
>  #undef PLATFORM

-- 
Jani Nikula, Intel Open Source Graphics Center
