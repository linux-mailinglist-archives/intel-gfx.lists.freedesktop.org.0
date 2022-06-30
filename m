Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 532795620B5
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 19:00:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34E54113D3B;
	Thu, 30 Jun 2022 17:00:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B6E7113D18
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 17:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656608413; x=1688144413;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Aslx6BSedm5rLly8sCjwagrHFM1QcRX8Tarq9NFSP1I=;
 b=LjjuOnXnXbwgiV8eQ6PGdvTzSGANANSj/0SIPxfhKXScGGUUJ6S5fd7A
 /psLRmamueStUVOLZPONg2PRVaDD0zsudPn0f3El6LbutVIEG/ugFUvJs
 sYSwUlCkSw2Nbc9rdKXhtuA8Z6k03nlozuHx39xQVj60FP91TC3OoJ+Zv
 zSfpv9KKAyvf3EntQdeOAHAJ02mUu7HaYmhoeZHrUTVeiSU4bN4gxcVJt
 4weWATAtd1y3JnxqMIsAOUHj3g6YJzPVdXV28MS4e5wQhH2+jTRXQmX8E
 +g9K2e9afiIgPPFvOgUyP4Psz/X2suqU1sTB44wTlNtDF9KYrxEpDZr57 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="271175924"
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="271175924"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 10:00:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="694136718"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.161])
 by fmsmga002.fm.intel.com with SMTP; 30 Jun 2022 10:00:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Jun 2022 20:00:09 +0300
Date: Thu, 30 Jun 2022 20:00:09 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Message-ID: <Yr3WmWe1K4OfLw+2@intel.com>
References: <20220630150600.24611-1-ville.syrjala@linux.intel.com>
 <20220630150600.24611-2-ville.syrjala@linux.intel.com>
 <DM6PR11MB31770ECA020E77AE853627C7BABA9@DM6PR11MB3177.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM6PR11MB31770ECA020E77AE853627C7BABA9@DM6PR11MB3177.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Use short PCH names
 consistently
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 30, 2022 at 03:50:15PM +0000, Murthy, Arun R wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > The comments regarding PCH compatibility use long vs.
> > short names inconsistently. Just use short names always.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_pch.c | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/intel_pch.c
> > b/drivers/gpu/drm/i915/intel_pch.c
> > index e2b2bbdc0714..94446cac6605 100644
> > --- a/drivers/gpu/drm/i915/intel_pch.c
> > +++ b/drivers/gpu/drm/i915/intel_pch.c
> > @@ -25,7 +25,7 @@ intel_pch_type(const struct drm_i915_private
> > *dev_priv, unsigned short id)
> >  		drm_dbg_kms(&dev_priv->drm, "Found PantherPoint
> > PCH\n");
> >  		drm_WARN_ON(&dev_priv->drm,
> >  			    GRAPHICS_VER(dev_priv) != 6 &&
> > !IS_IVYBRIDGE(dev_priv));
> > -		/* PantherPoint is CPT compatible */
> > +		/* PPT is CPT compatible */
> 
> 
> This is not the code but only comment, I feel elaborated names makes it more readable than abbreviation.

We rarely type out the full names for anything.

-- 
Ville Syrjälä
Intel
