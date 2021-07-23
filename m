Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FAC3D3C41
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 17:15:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF9806F4A4;
	Fri, 23 Jul 2021 15:15:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2D916F4A4
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 15:15:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10054"; a="210005310"
X-IronPort-AV: E=Sophos;i="5.84,264,1620716400"; d="scan'208";a="210005310"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 08:15:21 -0700
X-IronPort-AV: E=Sophos;i="5.84,264,1620716400"; d="scan'208";a="633370765"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 08:15:21 -0700
Date: Fri, 23 Jul 2021 08:15:19 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20210723151519.GB1229765@mdroper-desk1.amr.corp.intel.com>
References: <20210722232922.3796835-1-lucas.demarchi@intel.com>
 <20210723055709.GA1229765@mdroper-desk1.amr.corp.intel.com>
 <20210723150240.klvvokdy7xcslaec@ldmartin-desk2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210723150240.klvvokdy7xcslaec@ldmartin-desk2>
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

On Fri, Jul 23, 2021 at 08:02:40AM -0700, Lucas De Marchi wrote:
> On Thu, Jul 22, 2021 at 10:57:09PM -0700, Matt Roper wrote:
> > On Thu, Jul 22, 2021 at 04:29:22PM -0700, Lucas De Marchi wrote:
> > > Commit 5a9d38b20a5a ("drm/i915/display: hide workaround for broken vbt
> > > in intel_bios.c") moved the workaround for broken or missing VBT to
> > > intel_bios.c. However is_port_valid() only protects the handling of
> > > different skus of the same display version. Since in
> > > intel_setup_outputs() we share the code path with version 9, this would
> > > also create port F for SKL/KBL, which does not exist.
> > > 
> > > Missing VBT can be reproduced when starting a headless QEMU with no
> > > opregion available.
> > > 
> > > Avoid the issue by splitting versions 9 and 10 in intel_setup_outputs(),
> > > which also makes it more clear what code path it's taking for each
> > > version.
> > 
> > Or we could just drop the PORT_F line.  We've slowly been dropping bits
> > and pieces of CNL support from the driver for a while now since all the
> > hardware that came out had fused off graphics/display; that leaves GLK
> > as the only real platform with display version 10, and it's already
> > handled in its own condition branch above.
> 
> no, that was my suggestion when I did this for the first time. Review
> from Ville last time was that we should either remove it completely or
> not at all, instead of dropping some pieces. At the time I started a

Well, that ship has already sailed and we've already been slowly
dropping pieces of CNL.  Plus the entire platform will taint the kernel
as 'unsupported preproduction hardware' if you try to load on it.

But this patch is fine too.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> series to remove it, but never completed.
> 
> https://patchwork.freedesktop.org/patch/428168/?series=88988&rev=1#comment_768918
> 
> I will try to come back to that series again, but it's not something to
> go to -fixes, so I'd prefer to keep this patch.
> 
> thanks
> Lucas De Marchi
> 
> > 
> > 
> > Matt
> > 
> > > 
> > > v2: move generic display version after Geminilake since that one has
> > > a different set of outputs
> > > 
> > > Fixes: 5a9d38b20a5a ("drm/i915/display: hide workaround for broken vbt in intel_bios.c")
> > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > Reported-by: Christoph Hellwig <hch@infradead.org>
> > > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 8 +++++++-
> > >  1 file changed, 7 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > index c274bfb8e549..3f5383f3c744 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -11376,13 +11376,19 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
> > >  		intel_ddi_init(dev_priv, PORT_B);
> > >  		intel_ddi_init(dev_priv, PORT_C);
> > >  		vlv_dsi_init(dev_priv);
> > > -	} else if (DISPLAY_VER(dev_priv) >= 9) {
> > > +	} else if (DISPLAY_VER(dev_priv) == 10) {
> > >  		intel_ddi_init(dev_priv, PORT_A);
> > >  		intel_ddi_init(dev_priv, PORT_B);
> > >  		intel_ddi_init(dev_priv, PORT_C);
> > >  		intel_ddi_init(dev_priv, PORT_D);
> > >  		intel_ddi_init(dev_priv, PORT_E);
> > >  		intel_ddi_init(dev_priv, PORT_F);
> > > +	} else if (DISPLAY_VER(dev_priv) >= 9) {
> > > +		intel_ddi_init(dev_priv, PORT_A);
> > > +		intel_ddi_init(dev_priv, PORT_B);
> > > +		intel_ddi_init(dev_priv, PORT_C);
> > > +		intel_ddi_init(dev_priv, PORT_D);
> > > +		intel_ddi_init(dev_priv, PORT_E);
> > >  	} else if (HAS_DDI(dev_priv)) {
> > >  		u32 found;
> > > 
> > > --
> > > 2.31.1
> > > 
> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > 
> > -- 
> > Matt Roper
> > Graphics Software Engineer
> > VTT-OSGC Platform Enablement
> > Intel Corporation
> > (916) 356-2795

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
