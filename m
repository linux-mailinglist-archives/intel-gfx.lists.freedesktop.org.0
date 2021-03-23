Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3DA345BC0
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Mar 2021 11:14:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 486996E890;
	Tue, 23 Mar 2021 10:14:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61E016E890
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Mar 2021 10:14:51 +0000 (UTC)
IronPort-SDR: RRQXaPpniLVazuVTFYR7fSNY0MFrRdtX8J2w/GPf3kHH0Ds0FKHiKzCeG5FRw2vjmfiw/fQwbL
 dHQTmHbkwTFw==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="177573041"
X-IronPort-AV: E=Sophos;i="5.81,271,1610438400"; d="scan'208";a="177573041"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 03:14:50 -0700
IronPort-SDR: ox18S6L/IXBC/MXI0Z/b9UgXekNPY7ZdZ8VfYFLlDxzr+uWTzVjFBONUycg4TOZAtk3n3gCFZa
 XA6VbqPrD9lQ==
X-IronPort-AV: E=Sophos;i="5.81,271,1610438400"; d="scan'208";a="408252869"
Received: from wjlloyd-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.53.124])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 03:14:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210319173603.521779-3-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210319173603.521779-1-lucas.demarchi@intel.com>
 <20210319173603.521779-3-lucas.demarchi@intel.com>
Date: Tue, 23 Mar 2021 12:14:46 +0200
Message-ID: <871rc65g89.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915/display: remove FIXME
 comment for intended feature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 19 Mar 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> Direction on gen >= 9 was to stop using straps and rely on VBT
> indicating if the port is present or not. Remove FIXME comment since
> this will never be "fixed".
>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 ------
>  1 file changed, 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index c793cbecfb3b..82471961e721 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -11683,15 +11683,9 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  
>  		icl_dsi_init(dev_priv);
>  	} else if (IS_GEN9_LP(dev_priv)) {
> -		/*
> -		 * FIXME: Broxton doesn't support port detection via the
> -		 * DDI_BUF_CTL_A or SFUSE_STRAP registers, find another way to
> -		 * detect the ports.
> -		 */
>  		intel_ddi_init(dev_priv, PORT_A);
>  		intel_ddi_init(dev_priv, PORT_B);
>  		intel_ddi_init(dev_priv, PORT_C);
> -
>  		vlv_dsi_init(dev_priv);
>  	} else if (HAS_DDI(dev_priv)) {
>  		int found;

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
