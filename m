Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B13A14FA7
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 13:49:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0196A10E0EE;
	Fri, 17 Jan 2025 12:49:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TtyWBktM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECEA410E0EE;
 Fri, 17 Jan 2025 12:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737118149; x=1768654149;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/8Mw3zjrHYZfHh4PRX5KRA2+Seui/gSu88QaAvritGs=;
 b=TtyWBktM/hp58TVQRHROCnUmzr0i0FGaT0/9l5Lwm+8kXqtBGAOa4kO4
 3MLdn0ZLDj+w9O1F3cCc8lem/J2cZ5OM5l8aUpkycM1Yfx18gqmmSKr58
 xiHgd4yRt/GhaAPZILpAoXAJaQodsZxzO+lu69wItzW5H7ybl7lBt7lbj
 bKg2yEkmU2WrtHHpiIDsKDVj3KEMYDhTYuRptRsMtbSgQmz8sCq68mXkj
 R9zSocPiOwT5pRjF95Ovqtaquo5sgNHd7ejM/hhF8d9g6i2XVgykB1ZEu
 i8Ko+WtpUkNHu2xXIcXtWTyKiPBAZG+PTT9KLzzMg31hsjfzxXszcOEsX w==;
X-CSE-ConnectionGUID: YJETmMkPSU6CHFnjxOr1Bg==
X-CSE-MsgGUID: IxGOI12PToyLwlZT85ra6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="37459109"
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="37459109"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 04:49:08 -0800
X-CSE-ConnectionGUID: 3Q9AyIcwRx+Ta0bVh7fvZg==
X-CSE-MsgGUID: Ckck1Dv4RjG4cG+EeIgqJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="105979448"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 Jan 2025 04:49:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Jan 2025 14:49:05 +0200
Date: Fri, 17 Jan 2025 14:49:04 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@intel.com, santhosh.reddy.guddati@intel.com,
 jani.saarinen@intel.com, jouni.hogander@intel.com
Subject: Re: [PATCH v3 1/4] drm/i915/display: avoid calling fbc activate if
 fbc is active
Message-ID: <Z4pRwB6mkTDNMAEu@intel.com>
References: <20250114120719.191372-1-vinod.govindapillai@intel.com>
 <20250114120719.191372-2-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250114120719.191372-2-vinod.govindapillai@intel.com>
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

On Tue, Jan 14, 2025 at 02:07:16PM +0200, Vinod Govindapillai wrote:
> If FBC is already active, we don't need to call FBC activate
> routine again during the post plane update. As this will
> explicitly call the nuke and also rewrite the FBC ctl registers.
> "intel_atomic_commit_tail-> intel_post_plane_update->
> intel_fbc_post_update-> _intel_fbc_post_update" path will be
> executed during the normal flip cases. FBC HW will nuke on sync
> flip event and driver do not need to call the nuke explicitly.
> This is much more relevant in case of dirty rectangle support
> in FBC with the followup patches. Nuke on flip in that case will
> remove all the benefits of fetching only the modified region.
> 
> The front buffer rendering sequence will call intel_fbc_flush()
> and which will call intel_fbc_nuke() or intel_fbc_activate()
> based on FBC status explicitly and won't get impacted by this
> change.
> 
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index df05904bac8a..fd540ff5e57e 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1561,7 +1561,8 @@ static void __intel_fbc_post_update(struct intel_fbc *fbc)
>  	fbc->flip_pending = false;
>  	fbc->busy_bits = 0;
>  
> -	intel_fbc_activate(fbc);
> +	if (!fbc->active)
> +		intel_fbc_activate(fbc);

We'll need to keep the actual activate part (eg. to update the fence).
But we should be able to elide the explicit nuke if FBC was already
active (that implies a flip nuke has occurred anyway, vs. if FBC was
previously disabled then it might have been disabled by a frontbuffer
invalidate and if it hasn't been disabled for a full frame then the
hardware won't automagically cause a nuke when we reactivate it).

>  }
>  
>  void intel_fbc_post_update(struct intel_atomic_state *state,
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
