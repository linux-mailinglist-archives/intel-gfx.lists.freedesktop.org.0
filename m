Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 529C490B88B
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2024 19:54:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99B5510E48B;
	Mon, 17 Jun 2024 17:54:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QGEgGrIU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC1CD10E488;
 Mon, 17 Jun 2024 17:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718646847; x=1750182847;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=O14RSZNB9upJMOQSvO1JCVAoV+Ky3yDaohRg7Fd7Iso=;
 b=QGEgGrIUJsBvvAYRMRAUVX54d4nO2+M8gbel0OAD14KOdn96TVgI+8lz
 9wNFjeAzowRGKXczjwIQz8CxF2q0CB9trrvfuVwtbOVRicOXD9pgsGCWJ
 FsFQ3hOT8fvyyG0RYqb4VjXACNUtjTHuATs/ukq1F1OI0j86CI6zpvMtW
 EESBZOFKgEIg6Sv1K64O0OtI7OMWqd8ox19GTtrR2hL8uo/KRz4umiI7u
 rQcUCpVEqKbey+zB/IqigAqacU72//jjIKyQXao3kq7h0dMmuiYByt0o9
 kmunhblYktr+v5vOxvILGzZyv41pthBdkZmpStM9F/jGyfHs3tvpumKba g==;
X-CSE-ConnectionGUID: P96t7jJZQt6KoQfydinQcQ==
X-CSE-MsgGUID: bt2zeh+NSWunBRxGA5xPCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="26171480"
X-IronPort-AV: E=Sophos;i="6.08,245,1712646000"; d="scan'208";a="26171480"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 10:54:06 -0700
X-CSE-ConnectionGUID: jXtEGscRQhOmKxUnMqTL1A==
X-CSE-MsgGUID: qN9BjmRdQ12h2kCTUY22dQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,245,1712646000"; d="scan'208";a="41360026"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 10:54:05 -0700
Date: Mon, 17 Jun 2024 20:54:13 +0300
From: Imre Deak <imre.deak@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/3] drm/xe: Use the encoder suspend helper also used by
 the i915 driver
Message-ID: <ZnB4RcurhbUBUdra@ideak-desk.fi.intel.com>
References: <20240617170356.4000251-1-imre.deak@intel.com>
 <20240617170356.4000251-3-imre.deak@intel.com>
 <ZnB15p5eH-eVsg1a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZnB15p5eH-eVsg1a@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 17, 2024 at 01:44:06PM -0400, Rodrigo Vivi wrote:
> On Mon, Jun 17, 2024 at 08:03:56PM +0300, Imre Deak wrote:
> > Use the suspend encoders helper which is also used by the i915 driver.
> > This fixes an issue in the xe driver where the encoder
> > suspend_complete() hook is not called and was an overlook when this hook
> > was added in
> 
> I believe it is okay to stay in the same line and then break the commit
> subject in the middle for the next line...

Ok, looks like done elsewhere as well, will reformat.

> > Commit b61fad5f7e5d ("drm/i915/tc: Call TypeC port flush_work/cleanup without modeset locks held")
> > 
> 
> I wonder if we should have a fixes, but probably okay to skip it.

I wasn't sure, since strictly the tree itself at the above commit didn't
have the issue. I suppose if needed this would need to be sent to 6.9
stable manually.

> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks.

> 
> > for i915, but not added to the xe driver (which was still in a separate
> > source tree at the above point).
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/xe/display/xe_display.c | 18 ++----------------
> >  1 file changed, 2 insertions(+), 16 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> > index 78cccbe289475..8b83dcff72e17 100644
> > --- a/drivers/gpu/drm/xe/display/xe_display.c
> > +++ b/drivers/gpu/drm/xe/display/xe_display.c
> > @@ -23,6 +23,7 @@
> >  #include "intel_display_types.h"
> >  #include "intel_dmc.h"
> >  #include "intel_dp.h"
> > +#include "intel_encoder.h"
> >  #include "intel_fbdev.h"
> >  #include "intel_hdcp.h"
> >  #include "intel_hotplug.h"
> > @@ -270,21 +271,6 @@ void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt)
> >  		gen11_de_irq_postinstall(xe);
> >  }
> >  
> > -static void intel_suspend_encoders(struct xe_device *xe)
> > -{
> > -	struct drm_device *dev = &xe->drm;
> > -	struct intel_encoder *encoder;
> > -
> > -	if (has_display(xe))
> > -		return;
> > -
> > -	drm_modeset_lock_all(dev);
> > -	for_each_intel_encoder(dev, encoder)
> > -		if (encoder->suspend)
> > -			encoder->suspend(encoder);
> > -	drm_modeset_unlock_all(dev);
> > -}
> > -
> >  static bool suspend_to_idle(void)
> >  {
> >  #if IS_ENABLED(CONFIG_ACPI_SLEEP)
> > @@ -315,7 +301,7 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
> >  
> >  	intel_hpd_cancel_work(xe);
> >  
> > -	intel_suspend_encoders(xe);
> > +	intel_encoder_suspend_all(&xe->display);
> >  
> >  	intel_opregion_suspend(xe, s2idle ? PCI_D1 : PCI_D3cold);
> >  
> > -- 
> > 2.43.3
> > 
