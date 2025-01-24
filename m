Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29019A1B50B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 12:53:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9AB110E96D;
	Fri, 24 Jan 2025 11:53:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hggaVKAY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B21C10E96D;
 Fri, 24 Jan 2025 11:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737719626; x=1769255626;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=BOZGwwnSex+FWrW4pT9Xf6wFiW90cJ8SeGDOe5naPjI=;
 b=hggaVKAY3b0dfBkQeuMMIWZKBrxyNT3e67G6SaRNXb5D7I3cpUk0nOIr
 uAdcFAa9vdSekev/hbUp/semdBPlpwxIHY6lZO8eco4Zf0yutT+jRcYlT
 MyQE1qpQt1m2Foqr09TKoHFqN3By+B1BDy13B1CACLMFEjz943JMVf1hH
 LoFdBVR9lzSBDLju6vgIU6qUQlK9Tx56iz7Y29+skUReE0NIgwyJiGCla
 zc95mpYE//ggsQylmBlpKgTExOqH7IHZXNUUrFktsfsV134t44ikcUGhT
 9mjH+9cQVQ82MSY4OVf1xMioPDWVVS8JetAQWCuUjCiUORKbfCWgSsRNL w==;
X-CSE-ConnectionGUID: u5N4DnHSTlax9/v4bbnSJQ==
X-CSE-MsgGUID: 4kG0NGFHTG6tx8GBlRyBlQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="55797298"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="55797298"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 03:53:46 -0800
X-CSE-ConnectionGUID: TnfHW3imR7axupC5EqSB3g==
X-CSE-MsgGUID: q3yBPmWqQpW/r/Hrf3TlBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107874934"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jan 2025 03:53:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Jan 2025 13:53:42 +0200
Date: Fri, 24 Jan 2025 13:53:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 animesh.manna@intel.com, ville.syrjala@intel.com
Subject: Re: [PATCH v4 09/13] drm/i915/display: Don't use DSB if psr mode
 changing
Message-ID: <Z5N_RgaVKLgHAeh2@intel.com>
References: <20250124105625.822459-1-jouni.hogander@intel.com>
 <20250124105625.822459-10-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250124105625.822459-10-jouni.hogander@intel.com>
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

On Fri, Jan 24, 2025 at 12:56:20PM +0200, Jouni Högander wrote:
> Changing PSR mode using DSB is not implemented. Do not use DSB when PSR
> mode is changing.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> Reviewed-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 3ac1cc9ac08a8..a189aa437d972 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7682,7 +7682,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>  		!new_crtc_state->scaler_state.scaler_users &&
>  		!old_crtc_state->scaler_state.scaler_users &&
>  		!intel_crtc_needs_modeset(new_crtc_state) &&
> -		!intel_crtc_needs_fastset(new_crtc_state);
> +		!intel_crtc_needs_fastset(new_crtc_state) &&
> +		!intel_psr_is_psr_mode_changing(old_crtc_state, new_crtc_state);

Hmm. Doesn't all that imply a fastset anyway, and/or maybe all the
PSR stuff happens in the {pre,post}_plane_update() stuff? In which
case it shouldn't really matter for the stuff that the DSB does.

>  
>  	if (!new_crtc_state->use_dsb && !new_crtc_state->dsb_color_vblank)
>  		return;
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
