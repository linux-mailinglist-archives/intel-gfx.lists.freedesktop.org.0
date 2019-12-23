Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A45129ADF
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 21:35:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D5DD6E2E8;
	Mon, 23 Dec 2019 20:35:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06E856E2E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 20:35:54 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 12:35:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,348,1571727600"; d="scan'208";a="229434441"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga002.jf.intel.com with ESMTP; 23 Dec 2019 12:35:53 -0800
Date: Mon, 23 Dec 2019 12:35:53 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191223203553.GE2877816@mdroper-desk1.amr.corp.intel.com>
References: <20191220220650.16349-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191220220650.16349-1-lucas.demarchi@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: nuke skl workaround for
 pre-production hw
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 20, 2019 at 02:06:50PM -0800, Lucas De Marchi wrote:
> According to intel_detect_preproduction_hw(), the SKL steeping D0 is
> still pre-preproduction so we can nuke the additional workaround.
> 
> While at it, nuke dangling new line.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Bspec 13626 agrees that everything up to and including F0 is
pre-production.

s/steeping/stepping/ in the commit message, but otherwise

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index e6702b9b9117..4aa7dfa88c7c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -16018,14 +16018,8 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  		if (intel_ddi_crt_present(dev_priv))
>  			intel_crt_init(dev_priv);
>  
> -		/*
> -		 * Haswell uses DDI functions to detect digital outputs.
> -		 * On SKL pre-D0 the strap isn't connected, so we assume
> -		 * it's there.
> -		 */
>  		found = I915_READ(DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
> -		/* WaIgnoreDDIAStrap: skl */
> -		if (found || IS_GEN9_BC(dev_priv))
> +		if (found)
>  			intel_ddi_init(dev_priv, PORT_A);
>  
>  		/* DDI B, C, D, and F detection is indicated by the SFUSE_STRAP
> @@ -16046,7 +16040,6 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  		if (IS_GEN9_BC(dev_priv) &&
>  		    intel_bios_is_port_present(dev_priv, PORT_E))
>  			intel_ddi_init(dev_priv, PORT_E);
> -
>  	} else if (HAS_PCH_SPLIT(dev_priv)) {
>  		int found;
>  
> -- 
> 2.24.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
