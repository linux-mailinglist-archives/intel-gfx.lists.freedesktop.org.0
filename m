Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0808C5DCAB
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 16:15:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1871310EAAC;
	Fri, 14 Nov 2025 15:15:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QhkURxTA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EBAB10EAAC;
 Fri, 14 Nov 2025 15:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763133351; x=1794669351;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=sb1OQv1PxfzKQZsa3ao/7hpz7q28NhAYjsfD474J5wU=;
 b=QhkURxTAgaUzn5LI1UYPevD0lXXydVNXmA7i9I/321FoLqrXSNHEXoYK
 9edTVarqBAv4pUQ6w1IgIcerzEQgUmZRGeYTtR58kGvu7/Xq71y6wkh4k
 YqgCWIte/f9LWaloueQlPQLFwYokbxZaCaa5TGscuNWYLSH17ouAX8TfS
 X1Oo3VLOYbohgJn8oXoHM1EaH46+cGGcE4R4H/QCF62SAY8w8wHUPngf/
 +tlOS4cu4pQaV0tGDvqCQWjfF2TePS7AgZH2SNVpaP5Pf/9eahfPulWbk
 eZ4vYcjufZPL3YWIbrQITYv7f8YDPpvfr6shyTg966YWmT+63YmecKPCZ Q==;
X-CSE-ConnectionGUID: 4zl9mC2XSMSp7GqB4nf+Mw==
X-CSE-MsgGUID: p9vq1A3XRTOdoOlYiwSQHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11613"; a="75831882"
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="75831882"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 07:15:50 -0800
X-CSE-ConnectionGUID: N8KSq/c4QRiIP34GNcCNMg==
X-CSE-MsgGUID: Ir+L9lKiS2GAGsJFiwcE9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="193904488"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.70])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 07:15:48 -0800
Date: Fri, 14 Nov 2025 17:15:45 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com, animesh.manna@intel.com
Subject: Re: [PATCH 4/5] drm/i915/alpm: Simplify and align LOBF checks in
 pre/post plane update
Message-ID: <aRdHoRJaFkanBNt9@intel.com>
References: <20251114052746.158751-1-ankit.k.nautiyal@intel.com>
 <20251114052746.158751-5-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251114052746.158751-5-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Fri, Nov 14, 2025 at 10:57:45AM +0530, Ankit Nautiyal wrote:
> The pre_plane_update and post_plane_update hooks used slightly different
> conditions for LOBF state changes. Rewrite them to be minimal and
> complementary:
> 
>   - pre runs only when LOBF is being disabled (old=1 -> new=0)
>   - post runs only when LOBF is being enabled (old=0 -> new=1),
>     with an early return if PSR is active.
> 
> This will help for subsequent changes to handle LOBF during LRR and
> seamless MN transitions.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index 5cfb9345776a..db2b9608f7f8 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -461,7 +461,8 @@ void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
>  	if (DISPLAY_VER(display) < 20)
>  		return;
>  
> -	if (crtc_state->has_lobf || crtc_state->has_lobf == old_crtc_state->has_lobf)
> +	if (!old_crtc_state->has_lobf ||
> +	    crtc_state->has_lobf == old_crtc_state->has_lobf)
>  		return;

Looks to me like these should be converted into

if (intel_crtc_lobf_disabling(...))
	intel_alpm_lobf_disable(...);
and
if (intel_crtc_lobf_enabling(...))
	intel_alpm_lobf_enable(...);

and implemented using is_{enabling,disabling}().

>  
>  	for_each_intel_encoder_mask(display->drm, encoder,
> @@ -512,7 +513,10 @@ void intel_alpm_post_plane_update(struct intel_atomic_state *state,
>  		intel_atomic_get_old_crtc_state(state, crtc);
>  	struct intel_encoder *encoder;
>  
> -	if (crtc_state->has_psr || !crtc_state->has_lobf ||
> +	if (crtc_state->has_psr)
> +		return;
> +
> +	if (!crtc_state->has_lobf ||
>  	    crtc_state->has_lobf == old_crtc_state->has_lobf)
>  		return;
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
