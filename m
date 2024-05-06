Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9282A8BCDAC
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 14:21:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F22CC10EFC2;
	Mon,  6 May 2024 12:20:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cjiB3DyT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72A6510EFC2
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 12:20:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714998056; x=1746534056;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=IbLLSNtNDy7IWVACxk/F3PTKjUo//E7qoe29Y9wsNC4=;
 b=cjiB3DyTIJxT2WZ/1uXrY/U3eM8Uq/eVe9LikwKaaYAYyk7s5iLFySM5
 OsXBEIxVggOmZGue9LLkF/HUi0gLvGEXrefjpjNVo88t6uo3AHuIKf+Ab
 ERC4L7qABtLlN2xqGvR/wlGt0KRRYIPTDy3bmg5qzH4dssp/Q9uGaXpDg
 Ufa0EhWyWGC6divdwyxom9izC/W7AmDT9jPdqhUVSKfN/moFcOEo+lGex
 5pdEOeVgTrkfQaixnY+uE1KnaROWHtolG2m2GF1k8nQKC3r21cVAZIpJ0
 4QkHws6eWnrarMtIzh030ITJ6OcvNVj+/W22QIen8nCNJC2OqreRUXwmp g==;
X-CSE-ConnectionGUID: yDcc0D7yQy23SXEkYcuZPQ==
X-CSE-MsgGUID: 2M6y27ltT06kaVrW+c6HAw==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="10619016"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10619016"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 05:20:56 -0700
X-CSE-ConnectionGUID: ksoDybrHQM6wnWbPL7vZwQ==
X-CSE-MsgGUID: n7771CL4SlmOp0QNf+uXuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28160254"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 May 2024 05:20:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 May 2024 15:20:52 +0300
Date: Mon, 6 May 2024 15:20:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>
Subject: Re: [PATCH] drm/i915/display/dp: Remove UHBR13.5 for icl
Message-ID: <ZjjLJEyQJDddXcaq@intel.com>
References: <20240506090625.2812332-1-arun.r.murthy@intel.com>
 <ZjjHl2oHYpm3--zR@intel.com>
 <IA0PR11MB7307F436AB51E954D870EEA5BA1C2@IA0PR11MB7307.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <IA0PR11MB7307F436AB51E954D870EEA5BA1C2@IA0PR11MB7307.namprd11.prod.outlook.com>
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

On Mon, May 06, 2024 at 12:15:13PM +0000, Murthy, Arun R wrote:
> 
> > -----Original Message-----
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Sent: Monday, May 6, 2024 5:36 PM
> > To: Murthy, Arun R <arun.r.murthy@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>
> > Subject: Re: [PATCH] drm/i915/display/dp: Remove UHBR13.5 for icl
> > 
> > On Mon, May 06, 2024 at 02:36:25PM +0530, Arun R Murthy wrote:
> > > UHBR13.5 is not supported in icl+ as well. This has been removed for
> > > mtl by the commit caf3d748f646 ("drm/i915/dp: Remove support for
> > > UHBR13.5")
> > 
> > icl/tgl/adl don't support UHBR at all. The numbers are there for dg2
> > presumably, which I think does support this.
> As per the recommendation from hardware team this is not supported on DG2 and MTL.

That is not what bspec says.

> 
> Thanks and Regards,
> Arun R Murthy
> -------------------
> > 
> > >
> > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 163da48bc406..7098ca65701f 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -507,7 +507,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
> > >  	};
> > >  	static const int icl_rates[] = {
> > >  		162000, 216000, 270000, 324000, 432000, 540000, 648000,
> > 810000,
> > > -		1000000, 1350000,
> > > +		1000000,
> > >  	};
> > >  	static const int bxt_rates[] = {
> > >  		162000, 216000, 243000, 270000, 324000, 432000, 540000
> > > --
> > > 2.25.1
> > 
> > --
> > Ville Syrjälä
> > Intel

-- 
Ville Syrjälä
Intel
