Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE72F4001E0
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 17:18:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4F086E8A2;
	Fri,  3 Sep 2021 15:18:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 673F86E8A2
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Sep 2021 15:18:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10096"; a="206670005"
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="206670005"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 08:18:00 -0700
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="534177948"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.205])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 08:17:57 -0700
Date: Fri, 3 Sep 2021 20:50:13 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: "Kattamanchi, JaswanthX" <jaswanthx.kattamanchi@intel.com>
Cc: "Siddiqui, Ayaz A" <ayaz.siddiqui@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>,
 "Szwichtenberg, Radoslaw" <radoslaw.szwichtenberg@intel.com>,
 "Meena, Mahesh" <mahesh.meena@intel.com>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "Illipilli, TejasreeX" <tejasreex.illipilli@intel.com>,
 "Naramasetti, LaxminarayanaX" <laxminarayanax.naramasetti@intel.com>
Message-ID: <20210903152011.GA32355@intel.com>
References: <20210903092153.535736-1-ayaz.siddiqui@intel.com>
 <BL3PR11MB57467282C70B5CC39AB75DA2FCCF9@BL3PR11MB5746.namprd11.prod.outlook.com>
 <DM6PR11MB3355DB44CD246075282CCBCAEECF9@DM6PR11MB3355.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <DM6PR11MB3355DB44CD246075282CCBCAEECF9@DM6PR11MB3355.namprd11.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH V5 0/5] drm/i915/gt: Initialize unused MOCS
 entries to L3_WB
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

Thanks Ayaz for the patches and all the review efforts. Merged the patches.

-Ram

On 2021-09-03 at 19:11:24 +0530, Kattamanchi, JaswanthX wrote:
> Hi Ayaz,
> 
> Re-reported
> 
> Patch : https://patchwork.freedesktop.org/series/94315/
> 
> Regards,
> Jaswanth Kattamanchi
> 
> -----Original Message-----
> From: Siddiqui, Ayaz A <ayaz.siddiqui@intel.com>
> Sent: Friday, September 3, 2021 6:29 PM
> To: intel-gfx@lists.freedesktop.org; Vudum, Lakshminarayana <lakshminarayana.vudum@intel.com>; Illipilli, TejasreeX <tejasreex.illipilli@intel.com>; Kattamanchi, JaswanthX <jaswanthx.kattamanchi@intel.com>
> Cc: Szwichtenberg, Radoslaw <radoslaw.szwichtenberg@intel.com>; Meena, Mahesh <mahesh.meena@intel.com>; C, Ramalingam <ramalingam.c@intel.com>; De Marchi, Lucas <lucas.demarchi@intel.com>; Roper, Matthew D <matthew.d.roper@intel.com>
> Subject: RE: [PATCH V5 0/5] drm/i915/gt: Initialize unused MOCS entries to L3_WB
> 
> Hi,
>  I see a failure reported on IGT-CI for this series for SKL,
> 
>  igt@gem_ctx_isolation@preservation-s3@rcs0:
> shard-skl: PASS -> DMESG-WARN
> 
> Changes set in this series are applicable for gen12 onward platforms except TGL/RKL.
> 
> So above failure look like a false alarm to me.
> 
> Regards
> -Ayaz
> 
> > -----Original Message-----
> > From: Siddiqui, Ayaz A <ayaz.siddiqui@intel.com>
> > Sent: Friday, September 3, 2021 2:52 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Siddiqui, Ayaz A <ayaz.siddiqui@intel.com>
> > Subject: [PATCH V5 0/5] drm/i915/gt: Initialize unused MOCS entries to
> > L3_WB
> >
> > Gen >= 12 onwards MOCS table doesn't have a setting for PTE so
> > I915_MOCS_PTE is not a valid index and it will have different MOCS
> > values are based on the platform.
> >
> > To detect these kinds of misprogramming, all the unspecified and
> > reserved MOCS indexes are set to WB_L3. TGL/RKL unspecified MOCS
> > indexes are pointing to L3 UC are kept intact to avoid API break.
> >
> > This series also contains patches to program BLIT_CCTL and CMD_CCTL
> > registers to UC.
> > Since we are quite late to update MOCS table for TGL so added a new
> > MOCS table for ADL family.
> >
> > V2:
> >  1. Added CMD_CCTL to GUC regset list so that it can be restored
> >     after engine reset.
> >  2. Checkpatch warning removal.
> >
> > V3:
> >  1. Changed implementation to have a framework only.
> >  2. Added register type for proper application.
> >  3. moved CMD_CCTL programming to a separate patch.
> >  4. Added L3CC initialization during gt reset so that MOCS indexes are
> >     set before GuC initialization.
> >  5. Removed Renderer check for L3CC verification in selftest.
> >
> > V4:
> >  1. Moved register programming in Workaorund section as fake workaround.
> >  2. Removed seperate ADL mocs table, new logic is to set unused index as
> >     L3_WB for gen12 platform except TGL/RKL.
> >
> > V5:
> >  1. Final version reviewed by Matt Roper  2. Removed "drm/i915/selftest:
> > Remove Renderer class check for l3cc table read" form series,
> >     this patch will be taken care of in different series.
> >
> > Ayaz A Siddiqui (4):
> >   drm/i915/gt: Add support of mocs propagation
> >   drm/i915/gt: Set CMD_CCTL to UC for Gen12 Onward
> >   drm/i915/gt: Set BLIT_CCTL reg to un-cached
> >   drm/i915/gt: Initialize unused MOCS entries with device specific
> >     values
> >
> > Sreedhar Telukuntla (1):
> >   drm/i915/gt: Initialize L3CC table in mocs init
> >
> >  drivers/gpu/drm/i915/gt/intel_gt.c          |  2 +
> >  drivers/gpu/drm/i915/gt/intel_gt_types.h    |  4 ++
> >  drivers/gpu/drm/i915/gt/intel_mocs.c        | 72 ++++++++++++++-------
> >  drivers/gpu/drm/i915/gt/intel_mocs.h        |  1 +
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 70
> > +++++++++++++++++++-
> >  drivers/gpu/drm/i915/i915_reg.h             | 26 ++++++++
> >  6 files changed, 151 insertions(+), 24 deletions(-)
> >
> > --
> > 2.26.2
> 
