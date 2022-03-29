Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D28D34EAFB6
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 16:57:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1036310E36A;
	Tue, 29 Mar 2022 14:57:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5512C10E36A
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 14:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648565834; x=1680101834;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=9tT5/js5wgXWH3Lv+Mbud9j8VjOzvDgrm5Vn0kmrlj8=;
 b=k4D9W5d9Iqf16eWrMQNGdORh7ZPrQljH/lzApauWodE+ZJpktySp5PDj
 AUx44Gsir6KkMZeY9cxmcYshlGPbpjJ+H+m7qD5hJJvDL9N92V5p69hI5
 xV3O0LoPGlZU0h34Rh42nU1tVWM+iUT9QLhWjiALTo3Pyv4JdynZPnvxg
 GoeBhOZFqjJDoBWdw9uCEUXO8g6D7hTANVJi9179oNPdQGssW0uJxS7GT
 QwgYIBvn2LILxX/N7lHi6OgY3Oz4eBATDnmY2z5q6RC0iobjJGAHi3i9x
 wxivwboJ7TMJMd9BUeoyIvZawy2i8SoSrbwEK+7/RTuiphSnzVMVhnbZh w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="256846161"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="256846161"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 07:57:13 -0700
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="564687976"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 07:57:13 -0700
Date: Tue, 29 Mar 2022 07:57:11 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Message-ID: <YkMeR5v+GhpZBDEs@mdroper-desk1.amr.corp.intel.com>
References: <20220322040616.1078009-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <PH7PR11MB58199CBAFD5B9652F6357462DF1A9@PH7PR11MB5819.namprd11.prod.outlook.com>
 <PH7PR11MB581969EAC14DC035B37E4046DF1D9@PH7PR11MB5819.namprd11.prod.outlook.com>
 <63d4a04fb3fd418ab026761eb36bba6e@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <63d4a04fb3fd418ab026761eb36bba6e@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add RPL-S PCI IDs
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
 "Surendrakumar Upadhyay,
 TejaskumarX" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 28, 2022 at 09:29:51AM +0000, Gupta, Anshuman wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Surendrakumar Upadhyay, TejaskumarX
> > Sent: Monday, March 28, 2022 2:52 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add RPL-S PCI IDs
> > 
> > Gentle reminder to review below change.
> > 
> > Thanks,
> > Tejas
> > 
> > > -----Original Message-----
> > > From: Surendrakumar Upadhyay, TejaskumarX
> > > Sent: 25 March 2022 12:17
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: Roper, Matthew D <matthew.d.roper@intel.com>; Meena, Mahesh
> > > <Mahesh.Meena@intel.com>
> > > Subject: RE: [PATCH] drm/i915: Add RPL-S PCI IDs
> > >
> > > Can anyone please give review on this?
> > >
> > > Thanks,
> > > Tejas
> > >
> > > > -----Original Message-----
> > > > From: Surendrakumar Upadhyay, TejaskumarX
> > > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > > Sent: 22 March 2022 09:36
> > > > To: intel-gfx@lists.freedesktop.org
> > > > Cc: Surendrakumar Upadhyay, TejaskumarX
> > > > <tejaskumarx.surendrakumar.upadhyay@intel.com>; Roper, Matthew D
> > > > <matthew.d.roper@intel.com>
> > > > Subject: [PATCH] drm/i915: Add RPL-S PCI IDs
> > > >
> > > > Add couple of RPL-S device ids
> > > >
> > > > Bspec : 53655
> > > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > > Signed-off-by: Tejas Upadhyay
> > > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> LGTM.
> Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>

Applied to drm-intel-next.  Thanks for the patch and review.


Matt

> > > > ---
> > > >  include/drm/i915_pciids.h | 4 +++-
> > > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> > > > index
> > > > 3609f3254f24..638be9cddba4 100644
> > > > --- a/include/drm/i915_pciids.h
> > > > +++ b/include/drm/i915_pciids.h
> > > > @@ -679,7 +679,9 @@
> > > >  	INTEL_VGA_DEVICE(0xA782, info), \
> > > >  	INTEL_VGA_DEVICE(0xA783, info), \
> > > >  	INTEL_VGA_DEVICE(0xA788, info), \
> > > > -	INTEL_VGA_DEVICE(0xA789, info)
> > > > +	INTEL_VGA_DEVICE(0xA789, info), \
> > > > +	INTEL_VGA_DEVICE(0xA78A, info), \
> > > > +	INTEL_VGA_DEVICE(0xA78B, info)
> > > >
> > > >  /* DG2 */
> > > >  #define INTEL_DG2_G10_IDS(info) \
> > > > --
> > > > 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
