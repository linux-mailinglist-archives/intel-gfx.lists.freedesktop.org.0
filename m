Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 977B963203C
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 12:19:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B35B410E2AD;
	Mon, 21 Nov 2022 11:18:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24CDA10E2AD
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 11:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669029536; x=1700565536;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=dXmunq3p9ty5pgwDKOajOdk5huwi5DhT2zLD3KbneC4=;
 b=EkNxbJonRgX1MyV1Eza+ZnFcEjSA2rvyLO9GS/kHoUXv1xPO0iSvt9fA
 wPEXKhIIaUxIj1obuPecCIW56zNL5vMrs6a6hn7akss14MPbNgVN7/Jo6
 jjbYJPvgLu2HkONVMbROw/MPHvNHcMoCyNSovHAcpY9PbfY+6o1HFdQrP
 dsy1yNmwI1sGzp30t/oEzd9sAGDwaIwFNkp1nK1eNr/9F5UuLsMOQ9n0P
 vfPfQ1Lk1cg4ejJ5zaGnJBKq6jX2Gu1ke8drb5EGxCebel7Lb8jWezGz7
 37dVombAwkuxq1hVMMUQYKmb5w8ev6zEVkEry2M/Q9UaBD/YdVYJN3vvG w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="314681388"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; d="scan'208";a="314681388"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 03:18:55 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="783417338"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; d="scan'208";a="783417338"
Received: from davermux-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.1.229])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 03:18:54 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221121091855.3562288-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221121091855.3562288-1-arun.r.murthy@intel.com>
Date: Mon, 21 Nov 2022 13:18:51 +0200
Message-ID: <87y1s4zhb8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbc: Disable FBC when VT-d is
 enabled for Gen9
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

On Mon, 21 Nov 2022, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> The WaFbcTurnOffFbcWhenHyperVisorIsUsed is applicable for all GEN9
> platforms as per BspecID: 0852

The commit subject and commit message do not match the code.

Also, the format for Bspec references is:

Bspec: 0852

next to the other tags. See 'git log --grep=Bspec:'.

BR,
Jani.


>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index b5ee5ea0d010..efd5659b3b60 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1652,9 +1652,9 @@ static int intel_sanitize_fbc_option(struct drm_i915_private *i915)
>  
>  static bool need_fbc_vtd_wa(struct drm_i915_private *i915)
>  {
> -	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
> +	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt,cnl,kbl */
>  	if (i915_vtd_active(i915) &&
> -	    (IS_SKYLAKE(i915) || IS_BROXTON(i915))) {
> +	    (DISPLAY_VER(i915) == 9) || DISPLAY_VER(i915) == 10) {
>  		drm_info(&i915->drm,
>  			 "Disabling framebuffer compression (FBC) to prevent screen flicker with VT-d enabled\n");
>  		return true;

-- 
Jani Nikula, Intel Open Source Graphics Center
