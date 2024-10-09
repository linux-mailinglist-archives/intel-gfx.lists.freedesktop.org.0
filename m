Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DDF996453
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 11:01:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 632AA10E277;
	Wed,  9 Oct 2024 09:01:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="biAcalOd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3549E10E6A5;
 Wed,  9 Oct 2024 09:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728464514; x=1760000514;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SZFO/sr47VhbaHugAfqkV8PRAMnl1Nz5Bjv0K0ezP4o=;
 b=biAcalOd6JtqXOOmFggoMbrUvhjUZKSqfEowmgz1+ZZz/3pWyGUZCI9q
 Np1xGVqK6Oznide7iLtcqTKV2ck75ii5m+baftaYr0VVlxgUWi2avpQHl
 /E9QgwZQCoHQJbGNiulMlBIRyQBvQSJjJc58YuGdvPpGsEqUWgptqvCi9
 bVYBOynxoXrANmq9LkB0bCnQ22a9Af43OJXTBWf9F0KXm+DyhqhtJetH1
 7G5BQs3lqf0vns6xZ56g4n/pg7anKCSB3O7d8/RIFhJ7SjdVdfOrr1pFW
 cyRKqehb6vmouz+3uHrqOQx/vgJvL8DE3tE3xaNENUTnxYwrwP7mvyy8Q Q==;
X-CSE-ConnectionGUID: JEsUyEKjSVCAJQoGNLHTAw==
X-CSE-MsgGUID: dHZPkyG0QQ++2EeVCqgeLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="31641355"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="31641355"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 02:01:54 -0700
X-CSE-ConnectionGUID: aEjnaEX/SXKX2YsHIBbdLA==
X-CSE-MsgGUID: PNGqG3eIRj2mf/K9BS4Q/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76286872"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 09 Oct 2024 02:01:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Oct 2024 12:01:50 +0300
Date: Wed, 9 Oct 2024 12:01:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 uma.shankar@intel.com, chaitanya.kumar.borah@intel.com
Subject: Re: [PATCH] drm/i915/cdclk: Check cdclk value before division
Message-ID: <ZwZGfsLsy3G-iayh@intel.com>
References: <20241009084634.1801800-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241009084634.1801800-1-suraj.kandpal@intel.com>
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

On Wed, Oct 09, 2024 at 02:16:34PM +0530, Suraj Kandpal wrote:
> Check cdclk value to avoid a divide by zero error. Since
> bxt_cdclk_init_hw has cdclk can end up being 0 and then
> we have a call to bxt_set_cdclk where we may end up dividing
> this value by 0.

Not possible unless someone completely screwed the
cdclk tables and/or refclk readout, in which case
oops seems like a perfectly reasonable outcome to me.

> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index fa1c2012b10c..a5acc70fb87c 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1921,7 +1921,7 @@ static u32 xe2lpd_mdclk_source_sel(struct intel_display *display)
>  int intel_mdclk_cdclk_ratio(struct intel_display *display,
>  			    const struct intel_cdclk_config *cdclk_config)
>  {
> -	if (mdclk_source_is_cdclk_pll(display))
> +	if (mdclk_source_is_cdclk_pll(display) && cdclk_config->cdclk)
>  		return DIV_ROUND_UP(cdclk_config->vco, cdclk_config->cdclk);
>  
>  	/* Otherwise, source for MDCLK is CD2XCLK. */
> -- 
> 2.43.2

-- 
Ville Syrjälä
Intel
