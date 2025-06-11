Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35310AD5701
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 15:30:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8322410E373;
	Wed, 11 Jun 2025 13:30:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MOh6CKgF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A94B810E65C;
 Wed, 11 Jun 2025 13:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749648607; x=1781184607;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=JC4F+d/pvrioYdZ9AYIGldIrPl8dtrYqGUX3TdBs/9s=;
 b=MOh6CKgFMspJXCGYoUTlmv8Zpp3ZxbbR4PQZdt6gM5eD6vxkzlXaeqaW
 awff3bR9tpTw3PmYqUHUY9rDs86KxB80OU7DhB76aS/gNAHoQy0oz9xsm
 rKiIQOwJCBzqGmzOEPuZ+HE/yekpJI1pZXJNFW1MHlrOe3xuTP+gq7Qzz
 YthZGbtEhvQelE9fiNPtXWSoK1uLfRfiC2f8ZFHIFSPA2TdqoQrqxNJb3
 q6SkxQZDcT+QyXYkJnR7nUIgkCuv+7zTJ/XKgpoG6b9oCKG6i6CGK7duU
 Io0HHLUx6cuIqy5dVY5qtcoOdvzUbd5ek8UIwTwX3+oW74mzKEshdXJ0R Q==;
X-CSE-ConnectionGUID: tY2B49jzSpSIQaLOPMWPNQ==
X-CSE-MsgGUID: WMi3bURUQTuA9Z+AwohUxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51928891"
X-IronPort-AV: E=Sophos;i="6.16,227,1744095600"; d="scan'208";a="51928891"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 06:30:07 -0700
X-CSE-ConnectionGUID: sVSOd23mSOS2Mty9grBnIQ==
X-CSE-MsgGUID: YMwT0HbPR+uoMN6tWsG39g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,227,1744095600"; d="scan'208";a="152475591"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.24])
 by orviesa005.jf.intel.com with SMTP; 11 Jun 2025 06:30:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Jun 2025 16:30:03 +0300
Date: Wed, 11 Jun 2025 16:30:03 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v4 07/21] drm/i915/dmc: Limit PIPEDMC clock gating w/a to
 just ADL/DG2/MTL
Message-ID: <aEmDWG_mdQiLI6fq@intel.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
 <20250609141046.6244-8-ville.syrjala@linux.intel.com>
 <DM4PR11MB63603D5DE7B6FB5F13AA2143F46AA@DM4PR11MB6360.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM4PR11MB63603D5DE7B6FB5F13AA2143F46AA@DM4PR11MB6360.namprd11.prod.outlook.com>
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

On Tue, Jun 10, 2025 at 10:06:18PM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Monday, June 9, 2025 7:41 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: intel-xe@lists.freedesktop.org
> > Subject: [PATCH v4 07/21] drm/i915/dmc: Limit PIPEDMC clock gating w/a to just
> > ADL/DG2/MTL
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Supposedly nothing post-MTL (even BMG) needs the PIPEDMC clock gating w/a
> > (Wa_16015201720), so don't apply it.
> > 	
> > TODO: check if the ADL/DG2 "clock gating needed during DMC loading" part
> >       is actuall needed, not seeing anything in the docs about it...
> 
> Yes ADL does need the WA, you can drop the TODO.
> Display 13.1 ADL: 16015201720	: Clockgating for pipe A DMC and pipe B DMC needs to be disabled.
> Bit 12 of register CLKGATE_DIS_PSL_EXT_A (4654Ch) and CLKGATE_DIS_PSL_EXT_B (46550h) needs to be set.

I meant the part about also enabling clock gating on pipes C/D
while loading the firmware.

> 
> Looks Good to me.
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dmc.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> > b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index a10e56e7cf31..b6ac480f391c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -487,7 +487,7 @@ static void mtl_pipedmc_clock_gating_wa(struct
> > intel_display *display)
> > 
> >  static void pipedmc_clock_gating_wa(struct intel_display *display, bool enable)  {
> > -	if (DISPLAY_VER(display) >= 14 && enable)
> > +	if (display->platform.meteorlake && enable)
> >  		mtl_pipedmc_clock_gating_wa(display);
> >  	else if (DISPLAY_VER(display) == 13)
> >  		adlp_pipedmc_clock_gating_wa(display, enable);
> > --
> > 2.49.0
> 

-- 
Ville Syrjälä
Intel
