Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B42829AB9
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 13:55:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7799010E5D1;
	Wed, 10 Jan 2024 12:55:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6016A10E5D5
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 12:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704891336; x=1736427336;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=H/0dSJfTzZdKepRPEkDVf8w20D+vGgGFpGBa5DfGah8=;
 b=fLph9Xq69X710tFPF4fPCa/vHfiROaItjbxITKr2x68RcPVpxPWHi2EQ
 7i+0rgkJWFzCV4LsanhIHq6vGgHSCv87qHAHohCa8bVIFnodqa91iZ0Gg
 Lonq6JYzwL7DMaDUYXMlYLvxdzzR5W0QVZ0Dmo6i85yxqVjuR/hEzslIm
 EjoZeuA6KTgPxLCqUTZWxxY8hqPBZ6hpQ1u1StXnRAxeHsRfW01sDANIM
 JlWWG0l/6lwXGOJjZLtfx6ObZjsMSc6Na6Sy0voYEKsu7kYApuCsZ66pc
 YkXaVzK4iPrm+kj+BjvPjmuKU+XQ4F45WYb0O5Wcerljmsa4/v2z/jWiA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="429690863"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="429690863"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 04:55:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="872637723"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="872637723"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 04:55:33 -0800
Date: Wed, 10 Jan 2024 14:55:29 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/psr: CAN_PSR and CAN_PANEL_REPLAY can be
 now local defines
Message-ID: <ZZ6TweaFcd7emgMZ@intel.com>
References: <20240109100517.1947414-1-jouni.hogander@intel.com>
 <20240109100517.1947414-3-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240109100517.1947414-3-jouni.hogander@intel.com>
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

On Tue, Jan 09, 2024 at 12:05:17PM +0200, Jouni Högander wrote:
> CAN_PSR and CAN_PANEL_REPLAY are not used outside intel_psr.c anymore. Make
> them as intel_psr.c local defines.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++++
>  drivers/gpu/drm/i915/display/intel_psr.h | 6 ------
>  2 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 54120b45958b..34c0a5a14455 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -173,6 +173,12 @@
>   * irrelevant for normal operation.
>   */
>  
> +#define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
> +			   (intel_dp)->psr.source_support)
> +
> +#define CAN_PANEL_REPLAY(intel_dp) ((intel_dp)->psr.sink_panel_replay_support && \
> +				    (intel_dp)->psr.source_panel_replay_support)
> +
>  bool intel_encoder_can_psr(struct intel_encoder *encoder)
>  {
>  	if (intel_encoder_is_dp(encoder) || encoder->type == INTEL_OUTPUT_DP_MST)
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
> index 143e0595c097..cde781df84d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -21,12 +21,6 @@ struct intel_encoder;
>  struct intel_plane;
>  struct intel_plane_state;
>  
> -#define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
> -			   (intel_dp)->psr.source_support)
> -
> -#define CAN_PANEL_REPLAY(intel_dp) ((intel_dp)->psr.sink_panel_replay_support && \
> -				    (intel_dp)->psr.source_panel_replay_support)
> -
>  bool intel_encoder_can_psr(struct intel_encoder *encoder);
>  void intel_psr_init_dpcd(struct intel_dp *intel_dp);
>  void intel_psr_pre_plane_update(struct intel_atomic_state *state,
> -- 
> 2.34.1
> 
