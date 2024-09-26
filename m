Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F4E9876A7
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 17:39:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32F2010E04B;
	Thu, 26 Sep 2024 15:39:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WDaDY5Jb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58DFC10E04B
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2024 15:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727365140; x=1758901140;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=V1U06E2MlCeR50riCBWCo5M/Xz0LW1McMLC0hGKItVY=;
 b=WDaDY5JbkEDro1i2DsiQiu+3fRnQeMEgUqeSQ7Owm/u+UzZYyH4Aip6h
 aX65lgNXI8LfCwfllW1VACowmZEZdWXg30x7of13SHy+asGSUyVRZ1Jqr
 FAWeCPlRxezP5UKsKxVBIhE9IrL4zUlLISpZ6exwkXUZfZ6ExaMbfCDZn
 EfX8zloyEuwcZPx7GdRVwg8B9AJxTwCFAclyt8TFbXF/vk0AvhNigE08C
 yP2rcGmzd+iq+XmG91/OlX5A4foGsH+gKMSgUMWHL/5dxx//tRYskgo9o
 s2N8FlBgmxHywfdwBdpEvEqQ1NSJLzpvg1zs97hWl8lUdhziyaR+ZL2SB w==;
X-CSE-ConnectionGUID: zoXA2IzkTOKekHhI2CDn5g==
X-CSE-MsgGUID: 9OhMt+6XRIef6DsWlL1T8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="26343836"
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="26343836"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 08:39:00 -0700
X-CSE-ConnectionGUID: c37OdxQyTPuJfgb4cmBYxQ==
X-CSE-MsgGUID: /mOosNWKQRC5PCZ9vweCVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="72349068"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 26 Sep 2024 08:38:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 26 Sep 2024 18:38:56 +0300
Date: Thu, 26 Sep 2024 18:38:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Bjorn Helgaas <bhelgaas@google.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-pci@vger.kernel.org
Subject: Re: [PATCH 3/6] drm/i915/pm: Simplify pm hook documentation
Message-ID: <ZvWAEN0n1y4xx_AO@intel.com>
References: <20240925144526.2482-1-ville.syrjala@linux.intel.com>
 <20240925144526.2482-4-ville.syrjala@linux.intel.com>
 <ZvVzmKIL_PrM2fds@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZvVzmKIL_PrM2fds@intel.com>
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

On Thu, Sep 26, 2024 at 10:45:44AM -0400, Rodrigo Vivi wrote:
> On Wed, Sep 25, 2024 at 05:45:23PM +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Stop spelling out each variant of the hook ("" vs. "_late" vs.
> > "_early") and just say eg. "@thaw*" to indicate all of them.
> > Avoids having to update the docs whenever we start/stop using
> > one of the variants.
> 
> That or simply remove them all and refer only to the pm documentation?
> "Entering Hibernation" of Documentation/driver-api/pm/devices.rst

That's not very succinct. Having a better quick overview
of the whole situation might still be nice. 

> 
> > 
> > Cc: Bjorn Helgaas <bhelgaas@google.com>
> > Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: linux-pci@vger.kernel.org
> > Cc: intel-gfx@lists.freedesktop.org
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_driver.c | 24 ++++++++++++------------
> >  1 file changed, 12 insertions(+), 12 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > index 9d557ff8adf5..1e5abf72dfc4 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -1644,18 +1644,18 @@ const struct dev_pm_ops i915_pm_ops = {
> >  
> >  	/*
> >  	 * S4 event handlers
> > -	 * @freeze, @freeze_late    : called (1) before creating the
> > -	 *                            hibernation image [PMSG_FREEZE] and
> > -	 *                            (2) after rebooting, before restoring
> > -	 *                            the image [PMSG_QUIESCE]
> > -	 * @thaw, @thaw_early       : called (1) after creating the hibernation
> > -	 *                            image, before writing it [PMSG_THAW]
> > -	 *                            and (2) after failing to create or
> > -	 *                            restore the image [PMSG_RECOVER]
> > -	 * @poweroff, @poweroff_late: called after writing the hibernation
> > -	 *                            image, before rebooting [PMSG_HIBERNATE]
> > -	 * @restore, @restore_early : called after rebooting and restoring the
> > -	 *                            hibernation image [PMSG_RESTORE]
> > +	 * @freeze*   : called (1) before creating the
> > +	 *              hibernation image [PMSG_FREEZE] and
> > +	 *              (2) after rebooting, before restoring
> > +	 *              the image [PMSG_QUIESCE]
> > +	 * @thaw*     : called (1) after creating the hibernation
> > +	 *              image, before writing it [PMSG_THAW]
> > +	 *              and (2) after failing to create or
> > +	 *              restore the image [PMSG_RECOVER]
> > +	 * @poweroff* : called after writing the hibernation
> > +	 *              image, before rebooting [PMSG_HIBERNATE]
> > +	 * @restore*  : called after rebooting and restoring the
> > +	 *              hibernation image [PMSG_RESTORE]
> >  	 */
> >  	.freeze = i915_pm_freeze,
> >  	.freeze_late = i915_pm_freeze_late,
> > -- 
> > 2.44.2
> > 

-- 
Ville Syrjälä
Intel
