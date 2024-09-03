Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3057969DAC
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 14:33:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4538310E57C;
	Tue,  3 Sep 2024 12:33:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f52kvhw7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB3E810E57C;
 Tue,  3 Sep 2024 12:33:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725366830; x=1756902830;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lJ7+iCT5WCozLR3o1EL7Pjq3WFgavUua7yjvF7JW2Sw=;
 b=f52kvhw7jrF2BpITGEtCtHnmshlxDT1OOEu7yN+nZWCoWb5TcVeHwREr
 HRAq/FCpiGqWh4znNSYSR5XaWMqhgWX/KWV/IzuHEgyQL6Mlu0feCqmmH
 0dQb2eZm5n93M6r2VQ9JKJ1eIjPaYezu/sapz7fu08Vw5tmvsjBUmNdTy
 fC0bJ5awB7TcWtaI4TeSos5XbQowgIt+OP7+sFkB3Odgqn+gSc91jXmGL
 JdRyQJQwe02IMv9GxTT0u/m7qTlZkUJoKHfd32G8AHAeGVkafkcKoTkzD
 eJm4+UTpGpvOWt4qpDy8gLv8oAuMfbjK5N1jOXUZOv5fIUH3EiOlzLEUE A==;
X-CSE-ConnectionGUID: q/v3+zX+SAmoK5xS5vWvYQ==
X-CSE-MsgGUID: foS7v6SrTJK1BbOij/Tkew==
X-IronPort-AV: E=McAfee;i="6700,10204,11183"; a="49366443"
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="49366443"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 05:33:49 -0700
X-CSE-ConnectionGUID: 9phsINuPRhCw2OVktW5dFA==
X-CSE-MsgGUID: WDXWR+7xT86M5IWNHOiiSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="64917325"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 Sep 2024 05:33:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Sep 2024 15:33:45 +0300
Date: Tue, 3 Sep 2024 15:33:45 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 07/11] drm/i915/pps: pass intel_dp to pps_name()
Message-ID: <ZtcCKQrGqjCMRl62@intel.com>
References: <cover.1725012870.git.jani.nikula@intel.com>
 <f2a7fec4a2ff1f09cb73e6734604fae99ab6b11a.1725012870.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f2a7fec4a2ff1f09cb73e6734604fae99ab6b11a.1725012870.git.jani.nikula@intel.com>
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

On Fri, Aug 30, 2024 at 01:15:44PM +0300, Jani Nikula wrote:
> Currently all of intel_pps.c passes struct intel_dp around. Do the same
> with pps_name() instead of passing both struct drm_i915_private and
> struct intel_pps.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 61 +++++++++++++-----------
>  1 file changed, 32 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 68141af4da54..1e87ce95c85d 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -24,9 +24,12 @@ static void vlv_steal_power_sequencer(struct drm_i915_private *dev_priv,
>  static void pps_init_delays(struct intel_dp *intel_dp);
>  static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd);
>  
> -static const char *pps_name(struct drm_i915_private *i915,
> -			    struct intel_pps *pps)
> +static const char *pps_name(struct intel_dp *intel_dp)
>  {
> +	struct intel_display *display = to_intel_display(intel_dp);
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +	struct intel_pps *pps = &intel_dp->pps;
> +

I've been thinking that we'd eventually turn intel_pps into some kind of
proper object with a 1:1 relationship to the corresponding hw block.
This is sort of going in the opposite direction, but looks trivial
enough to deal with if/when we get to reworking intel_pps.

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

-- 
Ville Syrjälä
Intel
