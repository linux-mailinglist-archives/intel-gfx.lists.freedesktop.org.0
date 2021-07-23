Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 497453D345C
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 07:57:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 996866F97D;
	Fri, 23 Jul 2021 05:57:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D1B26F97D
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 05:57:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10053"; a="199080264"
X-IronPort-AV: E=Sophos;i="5.84,263,1620716400"; d="scan'208";a="199080264"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 22:57:11 -0700
X-IronPort-AV: E=Sophos;i="5.84,263,1620716400"; d="scan'208";a="433567042"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 22:57:10 -0700
Date: Thu, 22 Jul 2021 22:57:09 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20210723055709.GA1229765@mdroper-desk1.amr.corp.intel.com>
References: <20210722232922.3796835-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210722232922.3796835-1-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: split DISPLAY_VER 9
 and 10 in intel_setup_outputs()
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
Cc: Jani Nikula <jani.nikula@intel.com>, Christoph Hellwig <hch@infradead.org>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 22, 2021 at 04:29:22PM -0700, Lucas De Marchi wrote:
> Commit 5a9d38b20a5a ("drm/i915/display: hide workaround for broken vbt
> in intel_bios.c") moved the workaround for broken or missing VBT to
> intel_bios.c. However is_port_valid() only protects the handling of
> different skus of the same display version. Since in
> intel_setup_outputs() we share the code path with version 9, this would
> also create port F for SKL/KBL, which does not exist.
> 
> Missing VBT can be reproduced when starting a headless QEMU with no
> opregion available.
> 
> Avoid the issue by splitting versions 9 and 10 in intel_setup_outputs(),
> which also makes it more clear what code path it's taking for each
> version.

Or we could just drop the PORT_F line.  We've slowly been dropping bits
and pieces of CNL support from the driver for a while now since all the
hardware that came out had fused off graphics/display; that leaves GLK
as the only real platform with display version 10, and it's already
handled in its own condition branch above.


Matt

> 
> v2: move generic display version after Geminilake since that one has
> a different set of outputs
> 
> Fixes: 5a9d38b20a5a ("drm/i915/display: hide workaround for broken vbt in intel_bios.c")
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Reported-by: Christoph Hellwig <hch@infradead.org>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index c274bfb8e549..3f5383f3c744 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -11376,13 +11376,19 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  		intel_ddi_init(dev_priv, PORT_B);
>  		intel_ddi_init(dev_priv, PORT_C);
>  		vlv_dsi_init(dev_priv);
> -	} else if (DISPLAY_VER(dev_priv) >= 9) {
> +	} else if (DISPLAY_VER(dev_priv) == 10) {
>  		intel_ddi_init(dev_priv, PORT_A);
>  		intel_ddi_init(dev_priv, PORT_B);
>  		intel_ddi_init(dev_priv, PORT_C);
>  		intel_ddi_init(dev_priv, PORT_D);
>  		intel_ddi_init(dev_priv, PORT_E);
>  		intel_ddi_init(dev_priv, PORT_F);
> +	} else if (DISPLAY_VER(dev_priv) >= 9) {
> +		intel_ddi_init(dev_priv, PORT_A);
> +		intel_ddi_init(dev_priv, PORT_B);
> +		intel_ddi_init(dev_priv, PORT_C);
> +		intel_ddi_init(dev_priv, PORT_D);
> +		intel_ddi_init(dev_priv, PORT_E);
>  	} else if (HAS_DDI(dev_priv)) {
>  		u32 found;
>  
> -- 
> 2.31.1
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
