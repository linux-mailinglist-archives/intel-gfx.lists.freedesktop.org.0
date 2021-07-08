Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CADBA3C1BB0
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 01:08:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D82166E936;
	Thu,  8 Jul 2021 23:08:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BAB86E934
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 23:08:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10039"; a="209431269"
X-IronPort-AV: E=Sophos;i="5.84,225,1620716400"; d="scan'208";a="209431269"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 16:08:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,225,1620716400"; d="scan'208";a="564713327"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 08 Jul 2021 16:08:10 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 8 Jul 2021 16:08:09 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 8 Jul 2021 16:08:09 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2242.010;
 Thu, 8 Jul 2021 16:08:09 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH 0/7] Minor revid/stepping and workaround cleanup
Thread-Index: AQHXc8t9zMUSV3FY6EWbL+sC8MRy/6s5aIBggADAuwD//4tLEA==
Date: Thu, 8 Jul 2021 23:08:09 +0000
Message-ID: <973d63fb59ce4c54907262aa2ae3e24b@intel.com>
References: <20210708053819.2120187-1-matthew.d.roper@intel.com>
 <87h7h56z11.fsf@intel.com> <d47dbf431039413f83902f0406cf73b8@intel.com>
 <20210708230526.GB951094@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20210708230526.GB951094@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 0/7] Minor revid/stepping and workaround
 cleanup
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Thursday, July 8, 2021 4:05 PM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>; intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 0/7] Minor revid/stepping and workaround cleanup
> 
> On Thu, Jul 08, 2021 at 11:37:50AM -0700, Srivatsa, Anusha wrote:
> >
> >
> > > -----Original Message-----
> > > From: Jani Nikula <jani.nikula@linux.intel.com>
> > > Sent: Thursday, July 8, 2021 12:33 AM
> > > To: Roper, Matthew D <matthew.d.roper@intel.com>; intel-
> > > gfx@lists.freedesktop.org
> > > Cc: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> > > Subject: Re: [PATCH 0/7] Minor revid/stepping and workaround cleanup
> > >
> > > On Wed, 07 Jul 2021, Matt Roper <matthew.d.roper@intel.com> wrote:
> > > > PCI revision IDs don't always map to GT and display IP steppings
> > > > in an intuitive/sensible way.  On many of our recent platforms
> > > > we've switched to using revid->stepping lookup tables with the
> > > > infrastructure in intel_step.c to handle stepping lookups and
> > > > comparisons.  Since it's confusing to have some of our platforms
> > > > using the new lookup tables and some still using old revid
> > > > comparisons, let's migrate all the old platforms over to the table
> > > > approach since that's what we want to standardize on going
> > > > forward.  The only place that revision ID's should really get used
> > > > directly now is when checking to see if we're running on pre-production
> hardware.
> > >
> > > Anusha, Matt, please sort this out between the two of you. :)
> > >
> > > https://patchwork.freedesktop.org/series/92257/
> > >
> > @Roper, Matthew D the series doesn't add the steeping table for BXT and
> GLK.
> 
> Right, that was intentional because we don't use the steppings for those
> platforms anywhere in the code.  But if that's changing with your DMC series,
> I can add the tables for those two as well.
> 
Yes, will need GLK and BXT
Thanks

Anusha
> Matt
> 
> >
> > Anusha
> > > BR,
> > > Jani.
> > >
> > >
> > > >
> > > > Let's also take the opportunity to drop a bit of effectively dead
> > > > code in the workarounds file too.
> > > >
> > > > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > > >
> > > > Matt Roper (7):
> > > >   drm/i915: Make pre-production detection use direct revid comparison
> > > >   drm/i915/skl: Use revid->stepping tables
> > > >   drm/i915/icl: Use revid->stepping tables
> > > >   drm/i915/jsl_ehl: Use revid->stepping tables
> > > >   drm/i915/rkl: Use revid->stepping tables
> > > >   drm/i915/dg1: Use revid->stepping tables
> > > >   drm/i915/cnl: Drop all workarounds
> > > >
> > > >  .../drm/i915/display/intel_display_power.c    |  2 +-
> > > >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  2 +-
> > > >  drivers/gpu/drm/i915/display/intel_psr.c      |  4 +-
> > > >  drivers/gpu/drm/i915/gt/intel_region_lmem.c   |  2 +-
> > > >  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 81 +++----------------
> > > >  drivers/gpu/drm/i915/i915_drv.c               |  8 +-
> > > >  drivers/gpu/drm/i915/i915_drv.h               | 80 +++---------------
> > > >  drivers/gpu/drm/i915/intel_pm.c               |  2 +-
> > > >  drivers/gpu/drm/i915/intel_step.c             | 72 +++++++++++++++--
> > > >  drivers/gpu/drm/i915/intel_step.h             |  7 ++
> > > >  10 files changed, 107 insertions(+), 153 deletions(-)
> > >
> > > --
> > > Jani Nikula, Intel Open Source Graphics Center
> 
> --
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
