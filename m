Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32666993688
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 20:46:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E1B610E405;
	Mon,  7 Oct 2024 18:46:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dQ270WRN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D87410E405;
 Mon,  7 Oct 2024 18:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728326786; x=1759862786;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=CHcrY3I2lIs4fXTouAjrC6NgnVrLOL09aFbPYu1R9Ww=;
 b=dQ270WRNjI4TeSVAPckU7f3pkEe9BOXDvxshasIP3mkLnmqLRaIehmn+
 InTTBU3rHgKx9lTg42SREnsooaGUg1LN9f0wZ86CKf/3pjtWhhXgV7Fvk
 8SmOeww9xm2tjRnR25uPO+8WsZ1aAFQM0Mlj9FQEFp1Rox3OoT+AzPCUj
 OiKBS06tGxz3m8kP2yd/YNVVzwvDuz4hNjd7OrKq1q/4kcDAo6fY90t5H
 xRI/Uq7MYMQLaiUT2FSS9OITmFM8PwEUsOj0c4tNjN7s/Tz/wnT+u77T0
 BbDEGVvhDpRvv9jL7juVzjMfLUlq48R8aZEfvyOotZ/l3zcOYnRtKcXxe Q==;
X-CSE-ConnectionGUID: FzOErXjmTkiBFcPMtBpS+g==
X-CSE-MsgGUID: BHi8kyeGTtiErGPxsdWjxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="38059671"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="38059671"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 11:46:26 -0700
X-CSE-ConnectionGUID: TUYjVBrnRq6FV4eu7UJgoA==
X-CSE-MsgGUID: CtQcV4p3QPyRgly2prfbxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="106319595"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 11:46:24 -0700
Date: Mon, 7 Oct 2024 21:46:53 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 2/2] drm/xe: Add missing HPD interrupt enabling during
 non-d3cold RPM resume
Message-ID: <ZwQsnaXxhGOPLO9T@ideak-desk.fi.intel.com>
References: <20241007140531.1044630-1-imre.deak@intel.com>
 <20241007140531.1044630-2-imre.deak@intel.com>
 <BL1PR11MB5445566CC674BD448027A065E57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BL1PR11MB5445566CC674BD448027A065E57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
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

On Mon, Oct 07, 2024 at 09:29:46PM +0300, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Imre Deak
> Sent: Monday, October 7, 2024 7:06 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Subject: [PATCH 2/2] drm/xe: Add missing HPD interrupt enabling during non-d3cold RPM resume
> >
> > Atm the display HPD interrupts that got disabled during runtime
> > suspend, are re-enabled only if d3cold is enabled. Fix things by
> > also re-enabling the interrupts if d3cold is disabled.
> >
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> 
> Is there a reason this ended up as a separate patch?

On the principle of doing one thing in one patch: the first is
refactoring, this one is a fix.

> Not blocking, just curious.
> Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> -Jonathan Cavitt
> 
> > ---
> >  drivers/gpu/drm/xe/display/xe_display.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> > index cb2449b7921ac..695c27ac6b0f8 100644
> > --- a/drivers/gpu/drm/xe/display/xe_display.c
> > +++ b/drivers/gpu/drm/xe/display/xe_display.c
> > @@ -486,6 +486,7 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
> >               return;
> >       }
> >
> > +     intel_hpd_init(xe);
> >       intel_hpd_poll_disable(xe);
> >  }
> >
> > --
> > 2.44.2
> >
> >
