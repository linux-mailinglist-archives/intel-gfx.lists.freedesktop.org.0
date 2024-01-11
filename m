Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 065B282B01B
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jan 2024 14:59:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 132CA10E0AC;
	Thu, 11 Jan 2024 13:59:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAF0310E0AC
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jan 2024 13:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704981582; x=1736517582;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=GUle/k+YZnqHJBKUgmh07A44j884B7WlW88ZT/m5Puc=;
 b=Cauw/bm5XEk2UVshfneHydc/EScmsZAqKGLTkp92P44MPnA5Z9YVuEAY
 PspaCJ1QKyoyRLZ6JJMZcNfKoRglZnwwohnBC8ZrNMVG0yphePcPrakvE
 Vh+9/5SeSsf46rfqo2KHqm9+F3XE6trTxpR8fqgH90QciHXE4WsKTXV86
 j2rtXZk1/kYfDgdIt2SUENL9G9fqBTOkLHLBm7CFKUSW2bB1X7AjQQjw3
 CsRTOZ1Q2IVatI51Uie9CIHtB/BIve5DIMwQUElERdn/J8OvFSIFrbxVg
 E+JOay4cx/85VVLzEWeoY5Szy6idt53hyY0ooSxuK8TCWLPgSuoUDCPMm g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="463136808"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; d="scan'208";a="463136808"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 05:59:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="775616140"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; d="scan'208";a="775616140"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 11 Jan 2024 05:59:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Jan 2024 15:59:38 +0200
Date: Thu, 11 Jan 2024 15:59:38 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Subject: Re: [PATCH v1 1/2] drm/i915/display: use PAGE_SIZE macro for FBC cfb
 alloc
Message-ID: <ZZ_0Sq3DMjuEeGuq@intel.com>
References: <20240110110009.28799-1-vinod.govindapillai@intel.com>
 <20240110110009.28799-2-vinod.govindapillai@intel.com>
 <ZZ_wqnWx5I5h7hKZ@intel.com>
 <CY8PR11MB7777554397E901BBB52CA6B3F6682@CY8PR11MB7777.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CY8PR11MB7777554397E901BBB52CA6B3F6682@CY8PR11MB7777.namprd11.prod.outlook.com>
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 11, 2024 at 01:47:02PM +0000, Govindapillai, Vinod wrote:
> Hi Ville
> 
> The fix is in the next patch.
> 
> This pach changes the 4096 to page size macro as the BUG on is based on that macro explicitly.

I think the whole PAGE_SIZE handling should be in the xe code
since it's an implementation detail of the xe code.

> 
> Br
> Vinod
> 
> ________________________________
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Sent: Thursday, January 11, 2024 3:44:22 pm
> To: Govindapillai, Vinod <vinod.govindapillai@intel.com>
> Cc: intel-gfx@lists.freedesktop.org <intel-gfx@lists.freedesktop.org>; Syrjala, Ville <ville.syrjala@intel.com>
> Subject: Re: [PATCH v1 1/2] drm/i915/display: use PAGE_SIZE macro for FBC cfb alloc
> 
> On Wed, Jan 10, 2024 at 01:00:08PM +0200, Vinod Govindapillai wrote:
> > FBC compressed frame buffer size need to be PAGE_SIZE aligned
> > and the corresponding the drm_gem functions check the object
> > size alignment using PAGE_SIZE macro. Use the PAGE_SIZE macro
> > in the cfb alloc as well instead of the magic number.
> >
> > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbc.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index f17a1afb4929..9b9c8715d664 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -764,13 +764,15 @@ static int find_compression_limit(struct intel_fbc *fbc,
> >
> >        /* Try to over-allocate to reduce reallocations and fragmentation. */
> >        ret = i915_gem_stolen_insert_node_in_range(i915, &fbc->compressed_fb,
> > -                                                size <<= 1, 4096, 0, end);
> > +                                                size <<= 1, PAGE_SIZE, 0,
> > +                                                end);
> >        if (ret == 0)
> >                return limit;
> >
> >        for (; limit <= intel_fbc_max_limit(i915); limit <<= 1) {
> >                ret = i915_gem_stolen_insert_node_in_range(i915, &fbc->compressed_fb,
> > -                                                        size >>= 1, 4096, 0, end);
> > +                                                        size >>= 1, PAGE_SIZE, 0,
> > +                                                        end);
> 
> PAGE_SIZE is 4k so I can't see this doing anything at all.
> 
> The correct fix is probably either:
> - fix the xe gem code to always page align the size
> - page align it in xe's i915_gem_stolen_insert_node_in_range()
> 
> >                if (ret == 0)
> >                        return limit;
> >        }
> > --
> > 2.34.1
> 
> --
> Ville Syrjälä
> Intel
> 

-- 
Ville Syrjälä
Intel
