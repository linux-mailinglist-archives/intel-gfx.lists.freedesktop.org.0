Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39715A4603D
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 14:08:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C53CC10E90B;
	Wed, 26 Feb 2025 13:08:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O/Q1Qzj6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C1FF10E8F4;
 Wed, 26 Feb 2025 13:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740575295; x=1772111295;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RAk6l03R0nPq2j6+0TxtjAQFbdz/14eqhy5xBMgbgGU=;
 b=O/Q1Qzj6d23/RJHMKI6Xu4UtG6GvWPwo9o3+gU6bkHH2ObbrctdVoM+l
 H4XXz7CyTCqO4MkJuNwRxeTHp9zc/GKrEZ5XRJG35rcix4MvN7T0zvFed
 +tVWhNmlrVJo3B6zAVXDW61QmaKRrJPawmzOkC19LJZGwjiaOSl1OchwM
 0w2MQXD6kmQAmX64ML7Q0L1AHoTG7+wj7y2E08C628UpnNr0vrRCR/Nnj
 xRA3Av4j9/iiVfaF4HIhOvOc7sJAfaGYwpeLAontuDdSIr/GSWHh4US6L
 du2O18AizMSmDhjrdCn2S/C6HAYefOtACKY9orHl1QI2po01FlOoRL986 w==;
X-CSE-ConnectionGUID: OnNaDVU6R3+DWappl+w2TQ==
X-CSE-MsgGUID: mi4IO0uQTNOj5AEm2tcdbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="52051524"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="52051524"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 05:08:15 -0800
X-CSE-ConnectionGUID: e6eCKefTREa141DurJURaQ==
X-CSE-MsgGUID: QErNCil3R3ap1CibttLFuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121947692"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Feb 2025 05:08:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Feb 2025 15:08:11 +0200
Date: Wed, 26 Feb 2025 15:08:11 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 04/20] drm/i915/vrr: Disable CMRR
Message-ID: <Z78SO-jVYK6ZlD64@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-5-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250224061717.1095226-5-ankit.k.nautiyal@intel.com>
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

On Mon, Feb 24, 2025 at 11:47:01AM +0530, Ankit Nautiyal wrote:
> Switching between variable and fixed timings is possible as for that we
> just need to flip between VRR timings. However for CMRR along with the
> timings, few other bits also need to be changed on the fly, which might
> cause issues. So disable CMRR for now, till we have variable and fixed
> timings sorted out.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Yeh, let's ponder this later.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 008a9c3e152d..0ee7fb0362ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -182,7 +182,8 @@ is_cmrr_frac_required(struct intel_crtc_state *crtc_state)
>  	int calculated_refresh_k, actual_refresh_k, pixel_clock_per_line;
>  	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>  
> -	if (!HAS_CMRR(display))
> +	/* Avoid CMRR for now till we have VRR with fixed timings working */
> +	if (!HAS_CMRR(display) || true)
>  		return false;
>  
>  	actual_refresh_k =
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
