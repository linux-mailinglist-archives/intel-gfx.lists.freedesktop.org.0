Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26744A1983B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 19:13:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A21110E314;
	Wed, 22 Jan 2025 18:13:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OtRAJY1c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A58110E00E;
 Wed, 22 Jan 2025 18:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737569634; x=1769105634;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=tWsosnAc8HQ3sajvZ+0yW1yKhBjPAk/NiStEruCP1Nc=;
 b=OtRAJY1cOvnCPS4nRW+4ge/EOTaRULDnNDeJgl+SkBBVENjehY782uV3
 D//pTxT0bizzqs+XOX+WXDlnJOyjzzMbhfEfXrWsL4OLs55C7YYr+jJSJ
 s8hoklxBGYRjDnX3SSJGT+TN9THghNM/TzstThgsd5rUc0sCkAmhaupsm
 WR5JolWVgDKLjulCFg3+dEI3LmkTb1ANGz42105lnbcwa7dUj9cOmERz1
 BMlx++DRmKPsa56d3vLs76Z5eEQSn6kT0W36L6aIDRKbu8aITtNwZA6Mn
 k7zMApd3vKIinihK4WV9Jt8mDbLpZIaVlDiTPUFtxi0iQ/zapLpGv8e2z g==;
X-CSE-ConnectionGUID: ZcHSdzBnQfShwGWoNXldaA==
X-CSE-MsgGUID: 398hSNKDQDifD2GRDqGnBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11323"; a="48708568"
X-IronPort-AV: E=Sophos;i="6.13,226,1732608000"; d="scan'208";a="48708568"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 10:13:53 -0800
X-CSE-ConnectionGUID: TQMtTwapTICeyFut29pKpw==
X-CSE-MsgGUID: vMJFAjMYTWqCfyNlESBzPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,226,1732608000"; d="scan'208";a="107319036"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 Jan 2025 10:13:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Jan 2025 20:13:49 +0200
Date: Wed, 22 Jan 2025 20:13:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@intel.com, santhosh.reddy.guddati@intel.com,
 jani.saarinen@intel.com
Subject: Re: [PATCH v4 1/6] drm/i915/xe3: avoid calling fbc activate if fbc
 is active
Message-ID: <Z5E1XQuNBKnLn8jg@intel.com>
References: <20250122093006.405711-1-vinod.govindapillai@intel.com>
 <20250122093006.405711-2-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250122093006.405711-2-vinod.govindapillai@intel.com>
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

On Wed, Jan 22, 2025 at 11:30:01AM +0200, Vinod Govindapillai wrote:
> If FBC is already active, we don't need to call FBC activate
> routine again during the post plane update. As this will
> explicitly call the nuke and also rewrite the FBC ctl registers.
> Xe doesn't support legacy fences. Hence fence programming also
> not required as part of this fbc_haw_activate.
> 
> "intel_atomic_commit_tail-> intel_post_plane_update->
> intel_fbc_post_update-> _intel_fbc_post_update" path will be
> executed during the normal flip cases. FBC HW will nuke on sync
> flip event and driver do not need to call the nuke explicitly.
> 
> This is much more relevant in case of dirty rectangle support
> in FBC with the follow-up patches. Nuke on flip in that case will
> remove all the benefits of fetching only the modified region.
> Also any FBC related register updates with dirty rectangle
> support enabled will trigger nuke by FBC HW.
> 
> The front buffer rendering sequence will call intel_fbc_flush()
> and which will call intel_fbc_nuke() or intel_fbc_activate()
> based on FBC status explicitly and won't get impacted by this
> change.
> 
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index df05904bac8a..ab9649dd606c 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1556,11 +1556,22 @@ static void __intel_fbc_disable(struct intel_fbc *fbc)
>  
>  static void __intel_fbc_post_update(struct intel_fbc *fbc)
>  {
> +	struct intel_display *display = fbc->display;
> +
>  	lockdep_assert_held(&fbc->lock);
>  
>  	fbc->flip_pending = false;
>  	fbc->busy_bits = 0;
>  
> +	/*
> +	 * When dirty rectangle is enabled, any updates to FBC registers will
> +	 * trigger nuke. So avoid calling intel_fbc_activate if fbc is already
> +	 * active and for XE3 cases. Xe doesn't support legacy fences. So
> +	 * no need to update the fences as well.
> +	 */
> +	if (DISPLAY_VER(display) >= 30 && fbc->active)
> +		return;

Don't like platform checks in generic code. Either we should 
skip the stride programming inside the hw specific function,
or we pull the strie programming into a separate hook which
we can then skip completely when FBC was already active.

> +
>  	intel_fbc_activate(fbc);
>  }
>  
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
