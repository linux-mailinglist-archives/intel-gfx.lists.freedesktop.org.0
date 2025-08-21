Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6BAB2F991
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 15:11:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 508F710E996;
	Thu, 21 Aug 2025 13:11:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GFR1Fbcx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB37310E995;
 Thu, 21 Aug 2025 13:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755781859; x=1787317859;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qLjij0ecOn/GWEV0IVEDlS0xlT7Uo6heBKVhB+p0klU=;
 b=GFR1FbcxqSf6JNQ4i7grqoQsWrUnx4D9ODmLtTKJPWgGLUrfRYcVe1dG
 CsAFbCuE69pfeeKDVSaP+Fpmr7M8OoAZkt5iLXOUFwh6oWSGc18aXSROY
 aKJNd83Vr4v7Kt43pK97w03eMBB4s07p5vLAbT0C2B0NWODFIyUyhazhh
 nfBFjhA7K+amuSO6mGaM2ejzaCm1DxFZJQ8Ktb2WMUI8ai4uuF3xY8m20
 5d9IXu2GeOR4FDCz+gfHZTrLCUQRLlOKGIt5wL0RZueCwBTsqAFPVuhRT
 zAr9fw1S+vvGwVRroeYUbJaxmBTK6GEA/SIisUj242KlNuuw+2ELUAG0N Q==;
X-CSE-ConnectionGUID: m/Ixu7CmQDSY5q85VTHM+g==
X-CSE-MsgGUID: k3gzZplWTa2M46iQ24UHig==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="75653557"
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="75653557"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 06:10:58 -0700
X-CSE-ConnectionGUID: ReidKLjfRS2t37mlYmUAww==
X-CSE-MsgGUID: GxcZ47RZTLaz8oA1lF9Cgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="173747133"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.10])
 by orviesa005.jf.intel.com with SMTP; 21 Aug 2025 06:10:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 21 Aug 2025 16:10:54 +0300
Date: Thu, 21 Aug 2025 16:10:54 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 2/2] drm/i915/psr: check drm_mode_vrefresh return value
Message-ID: <aKca3nYynsprAZU1@intel.com>
References: <20250821045918.17757-1-jouni.hogander@intel.com>
 <20250821045918.17757-2-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250821045918.17757-2-jouni.hogander@intel.com>
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

On Thu, Aug 21, 2025 at 07:59:18AM +0300, Jouni Högander wrote:
> Check drm_mode_vrefresh return value sanity before using it in
> intel_get_frame_time_us.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 5addde63168e..8cc2314fac6f 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1116,11 +1116,16 @@ transcoder_has_psr2(struct intel_display *display, enum transcoder cpu_transcode
>  
>  static u32 intel_get_frame_time_us(const struct intel_crtc_state *crtc_state)
>  {
> +	int vrefresh;
> +
>  	if (!crtc_state->hw.active)
>  		return 0;
>  
> -	return DIV_ROUND_UP(1000 * 1000,
> -			    drm_mode_vrefresh(&crtc_state->hw.adjusted_mode));
> +	vrefresh = drm_mode_vrefresh(&crtc_state->hw.adjusted_mode);
> +	if (vrefresh <= 0)

How would that happen?

> +		return 0;
> +
> +	return DIV_ROUND_UP(1000 * 1000, vrefresh);
>  }
>  
>  static void psr2_program_idle_frames(struct intel_dp *intel_dp,
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
