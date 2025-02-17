Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C34BBA38DCC
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 22:02:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6388810E29A;
	Mon, 17 Feb 2025 21:02:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cLTa+GeL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3CBD10E293;
 Mon, 17 Feb 2025 21:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739826119; x=1771362119;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=yZpy8yfO7ltBfcueolChkmOvWyXd6GDpQdWwVAi9dMw=;
 b=cLTa+GeL1VvuZMXhE/MQLIOfnhNfO/5UfQEEyawtum3dESGg7xyM9YQw
 A/Pa8jEGLnZFb4G4MDVo+j29WOL3njxNE5bMUnGinhvyWtVlOvbM+69Lc
 iQvBRd8shz1VpiTTmG+9URPbakCfimsl6Swk51qWnmH9XOmUh7Ma4xJmg
 qRmWIdGTm3R4pdat8tm77O1oHsCblHuau83Q/g8rgyQGkFidJNp7OcgnO
 NMc06oyC8OPtMhaxPqiGXoCvGh05G9ZxUyorgMv6mN3mOfmC2QT6sDIC+
 pf4+CN/b8PuQBKjeU9JOKNftBcy65oUQlsxCM8wiPw669ASWKz0Chmivw A==;
X-CSE-ConnectionGUID: Jikghc/lScKvPFm9PAwzlQ==
X-CSE-MsgGUID: QhzdOeTlQwm2NnEbbQJoYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="51133413"
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="51133413"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 13:01:59 -0800
X-CSE-ConnectionGUID: l5oRBRWNRsKDLLepmhD9vg==
X-CSE-MsgGUID: E09oHJOgSOKlWZTegrkBVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="114405660"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 Feb 2025 13:01:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 17 Feb 2025 23:01:55 +0200
Date: Mon, 17 Feb 2025 23:01:55 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v3 2/3] drm/i915/display: Make POWER_DOMAIN_*() always
 result in enum intel_display_power_domain
Message-ID: <Z7Ojw7xW2OcyX1j5@intel.com>
References: <20250217203722.87152-1-gustavo.sousa@intel.com>
 <20250217203722.87152-3-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250217203722.87152-3-gustavo.sousa@intel.com>
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

On Mon, Feb 17, 2025 at 05:34:27PM -0300, Gustavo Sousa wrote:
> In the hope of contributing to type safety in our code, let's ensure
> that the type returned by the POWER_DOMAIN_*() macros is always of type
> enum intel_display_power_domain.
> 
> v2:
>   - Remove accidental +1 in definition of POWER_DOMAIN_PIPE(). (Jani)
> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.h | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index 4ad35bd4b040..1b53d67f9b60 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -117,12 +117,13 @@ enum intel_display_power_domain {
>  	POWER_DOMAIN_INVALID = POWER_DOMAIN_NUM,
>  };
>  
> -#define POWER_DOMAIN_PIPE(pipe) ((pipe) - PIPE_A + POWER_DOMAIN_PIPE_A)
> +#define POWER_DOMAIN_PIPE(pipe) \
> +	((enum intel_display_power_domain)((pipe) - PIPE_A + POWER_DOMAIN_PIPE_A))
>  #define POWER_DOMAIN_PIPE_PANEL_FITTER(pipe) \
> -		((pipe) - PIPE_A + POWER_DOMAIN_PIPE_PANEL_FITTER_A)
> +	((enum intel_display_power_domain)((pipe) - PIPE_A + POWER_DOMAIN_PIPE_PANEL_FITTER_A))
>  #define POWER_DOMAIN_TRANSCODER(tran) \
>  	((tran) == TRANSCODER_EDP ? POWER_DOMAIN_TRANSCODER_EDP : \
> -	 (tran) - TRANSCODER_A + POWER_DOMAIN_TRANSCODER_A)
> +	 (enum intel_display_power_domain)((tran) - TRANSCODER_A + POWER_DOMAIN_TRANSCODER_A))
>  
>  struct intel_power_domain_mask {
>  	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
> -- 
> 2.48.1

-- 
Ville Syrjälä
Intel
