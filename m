Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49ECD3FED48
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 13:56:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6993989327;
	Thu,  2 Sep 2021 11:56:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A58696E50C
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 11:56:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="219143864"
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="219143864"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 04:56:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="691354953"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga005.fm.intel.com with ESMTP; 02 Sep 2021 04:56:22 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 2 Sep 2021 04:56:22 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 2 Sep 2021 04:56:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 2 Sep 2021 04:56:21 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 2 Sep 2021 04:56:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mIzdbC3K6NXZPZw21SfIvHPbGb603t7MxwZCzl9sz1ro+BqH9F2sFpHKHceEldQT+jY14o3dOVFGeQn55ihMNb26sOmHScZfN/XlXoik2/yVKZbhf38HCzp5XdYgjgXiyzlXgRfYklZyjPtnxDrGKrstgunFB3C44jYLGMDEca2+6mOem4lW6VAFZBZRlPx9bL/sefV/Fqt2jYHFDFTUTIlCja1hwBcTbcUrikPVi5vHGHY6e6g2hKBYZpLe7GmI9VhULt7coWAkMxtvN1yDEI5bnhKbNg6ce2UTB/YZEgmX/Cp/QyViwU27wA0F1hEJst3xsXVGoCdqD8Nd7IVfxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=yuXyjMLIyBO9FcZ9BzQ8omhHcGpoD9+lFlFvrp+NW58=;
 b=JYBV/oHqINTPYmol92+dfkFiUCMrJJXymoun+c7Om55GZCZ7WBPsoZi+QuTnhgD46tLSIKZrNwRdjP2mArnEyTj2F3WIgN9EzkNfqble6pZOplSl6fTsHZHtz3IPR7a9ZIFQmEXOETRG0JYxDEIPrX/xLAuRi1HnHOlqNi8j4Gjk2kcUVZ5dNQXwlIPrvpYA6XQ+S+wy2oKklzgTIp0uNIS3qZqIYSJI0XL0rRawGFXzcU5HAJaoCyUqSWQ6+E68LA5krdH9xdODFeZ3V2wDWAaYXkraYfV+DSYW8h1rJL1RmdIceK/dUTFVgmgksDc50G6AD3iUZQifcrCnlkTRRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yuXyjMLIyBO9FcZ9BzQ8omhHcGpoD9+lFlFvrp+NW58=;
 b=L5tuPtQxOJdpLDSVuY3rc6sf+G3FYGinVmH5RbS/Tm7k7Kieh33u4T/FGo+7KzCOR4Ykn2xmPrqtzm0U5hBYMuwt2y+NN7JRWhsO0hwSAgo+Nn/2Joa9YDYOgh0lqxBDS/wtTleFSsXiXOjN4OAR1QF3fY3b005TpZZrGmske98=
Received: from BL3PR11MB5746.namprd11.prod.outlook.com (2603:10b6:208:353::21)
 by MN2PR11MB3583.namprd11.prod.outlook.com (2603:10b6:208:ea::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.21; Thu, 2 Sep
 2021 11:56:18 +0000
Received: from BL3PR11MB5746.namprd11.prod.outlook.com
 ([fe80::955e:e7a7:f183:f558]) by BL3PR11MB5746.namprd11.prod.outlook.com
 ([fe80::955e:e7a7:f183:f558%7]) with mapi id 15.20.4478.022; Thu, 2 Sep 2021
 11:56:18 +0000
From: "Siddiqui, Ayaz A" <ayaz.siddiqui@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "S,
 Srinivasan" <srinivasan.s@intel.com>, "Wilson, Chris P"
 <chris.p.wilson@intel.com>
Thread-Topic: [PATCH V3 2/8] drm/i915/gt: Add support of mocs auxiliary
 registers programming
Thread-Index: AQHXnbvCi3zSCk0JLE2Qy4oxeayk+auPtAoAgACjPlA=
Date: Thu, 2 Sep 2021 11:56:18 +0000
Message-ID: <BL3PR11MB5746236A4243D4B2CD2C9958FCCE9@BL3PR11MB5746.namprd11.prod.outlook.com>
References: <20210830162240.3891502-1-ayaz.siddiqui@intel.com>
 <20210830162240.3891502-3-ayaz.siddiqui@intel.com>
 <20210901212432.GC461228@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20210901212432.GC461228@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4b7b13cc-e0cd-4d9f-09f6-08d96e08ac9b
x-ms-traffictypediagnostic: MN2PR11MB3583:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3583574DC0CD329B98346B80FCCE9@MN2PR11MB3583.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fwj1O0AAtf2Dyg9Zx6vVBQCGElYao18izuijSzK3z65eHwRhCnLIV2XsdMHSDLBYQkG73NV81cO29fGwzlwoBWdbhl++sRj2DYbqzcO8WZOmFnWJ7Ec4vHyXDEi6qO13pBkokMjSrHk5pmQDr/6det1T10dWPPLNmX4pzLzVI2H5KOF4y61POKmhLS7t+1uMdwWRz5IXOx2OAO+zOYmcg8wHsbzBcXgRP+IzyEYt4Nzjl/uIxxB08redTXsuWpAe0EGZ2xSa/5ah/WiZu9gscg5EEqsT8nDKuIfkb0+nR3Kd3ubt7esXyZm5IqW0K5w81/OLDI6lw2l7irHOrT8FyLojFI3ZRdK8rdNrWqCnJVV2RZoWXCV8a7h0/TtGxsEjINV0UX1n7ducimzM094NeS47cWaJ6TQGb6DWWPBwj8qzNJCFNkSAVdx3YWfSP5fS8awvN5JdKHkasjBEVpWZ0X1/RuOw/Z7MWCD7cLaFUKzDwTaZtIT3wfLv9Op+70W06hFN6LN5Gutil1Jjf8jMWEQrAdxXC7/xsEu9dKXucZPF3UEHiLKw+gX7hdKgvDYEfkJU9kFTlIE7krPBg36cerV8Xr1daBJpCzz9/Fd47Kzop7yUOKqlDo4ky+y5XTigVXFiyvaihtUsuNvsPhctRXZRti06qSuv16DGghPjA/svXAOs3pXwiDqtWavYnxngtzia9n3+DdGcV2c/FWqY3Qcu/EJrs919pVWyvFp2krQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB5746.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(6862004)(122000001)(316002)(107886003)(83380400001)(4326008)(38070700005)(38100700002)(54906003)(186003)(71200400001)(6636002)(33656002)(26005)(66476007)(66556008)(64756008)(66446008)(5660300002)(53546011)(66946007)(30864003)(6506007)(9686003)(8936002)(8676002)(508600001)(52536014)(76116006)(86362001)(7696005)(55016002)(2906002)(21314003)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?S60XfxlWSf5swSeXcJrmOQRORWv5P6EALZo9KiLN0p6eiNJCfEly2Xt+8waT?=
 =?us-ascii?Q?7vuWSJqoGV6bvNKghdQdouMzJaeGT2w3gdtXrPho2BXdDO/JDqETL6Ly/fss?=
 =?us-ascii?Q?83usOxxrgjrqe50LocPYmJFYqKur553hKOlths22GmlKuR5wOPj1zt/6wRGG?=
 =?us-ascii?Q?swCrS3Ym4v16iD02JTPHWRXP357eOba/0Eed1FAkFc/cMpLLO3WMBpNouGBd?=
 =?us-ascii?Q?mtmUuSw/74o2etEDl5TmXrDFZytm8Cu8FdCdZZeaFWivkyRKaEvBI7wBu5IZ?=
 =?us-ascii?Q?9ZmX+yLvEvPU0iPp48C5eK71Fw+tcnIF/Tmr7SsB6iNGSHu12KvSG2TkxlNa?=
 =?us-ascii?Q?lpQFqRWdinCNmOOOphluo+Qy+WTiylIC3I8arvI4grLC414GBzMGYpBH5Sxm?=
 =?us-ascii?Q?/BGpZIG3WX4MgU+OPvz4figzj0Xxozsy1Swc+e+GBJtegkQLrYT+YtqLoIJ+?=
 =?us-ascii?Q?jnT0yvy+pRd+c7fMvDVqL0blSAbw0FqP+3ET4itFB4kvNuEqJsgGw9ZAaUlG?=
 =?us-ascii?Q?eHc13el/hJl/Xh6NycUTohXX1Y5R/m9gDWgcK7jmkNJEWqX9+0ba98B1Qz7B?=
 =?us-ascii?Q?bRiqwB9uH6HKvTHtvA8egFk4IGbFUCks43O/S+C/0Ed0nbFHdYWPu2ShtA9I?=
 =?us-ascii?Q?/ccnJ2bsG9A4uqWTdw4XmGk8zjj3EJDGWL09DSiTU1QRuWn3dkoTP3j3vZAX?=
 =?us-ascii?Q?6ekJ4x4hoCKzullxC6612jVpZlPV9JrOMR9SReizYEMhhpMC++RdmTNQzkcA?=
 =?us-ascii?Q?eR2bA1w0/qluqDoB0+cTbdxPOUj+C3GvvZfz5oi+rjFYjMkLfcOQy4dHAm70?=
 =?us-ascii?Q?XcGwFKqcVTXgvpEY5HKYqvK5FdSNXQA/tIrOwV7nprK+xd8y/V2yD0n8z8E2?=
 =?us-ascii?Q?3YSQciVtQmU5/SfFJrZTavmbKiYDHgS2NBPdOYz/NKhZ7DKLniKVqIldAGB7?=
 =?us-ascii?Q?LKAlrP0iwOS1ZO95KtOhdu3nRc/w5OlP0dEyxvdQDwjRUlM2s0PrzeyZmG08?=
 =?us-ascii?Q?kS9+8vEvd1lRk9ySyE4rhzrNwc7typic8yeWfx2Yoy5xxGrHOQDjXZe0kkPH?=
 =?us-ascii?Q?2CMyIW02fB15ZI81E5j41oxja/61RErWKqk+07zWdQBxk40DnTFR8zexzTPE?=
 =?us-ascii?Q?tEVUkkNGQZHR+E0c88fHlC3XderQRXYYRxcTJHw2x2EDb3EDlf3o5fszp5Xl?=
 =?us-ascii?Q?/CpVJSO+Q5EQoGfdwDHGfZAzVa4HJmQxO3o4B/jn9HnzGlj8dn5H9fK7HKBO?=
 =?us-ascii?Q?mfO8DCNoiP6/zYYrAtPRtAPav1EoN0+f4LiclDjdX0nM7WCPo3c7KW4X2ROU?=
 =?us-ascii?Q?Hr7nrUGxevs5jra6TJ6N4A08?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB5746.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b7b13cc-e0cd-4d9f-09f6-08d96e08ac9b
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2021 11:56:18.2678 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BPI65wg/JfYzU9/JPqFtDLZR6vHf26bdQPk4SSDieVAZHUpNQ0ifiZ4WtZr34YSIqBLDIxCgdzAU67lKKiNVNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3583
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V3 2/8] drm/i915/gt: Add support of mocs
 auxiliary registers programming
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



> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Thursday, September 2, 2021 2:55 AM
> To: Siddiqui, Ayaz A <ayaz.siddiqui@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; S, Srinivasan <srinivasan.s@intel.co=
m>;
> Wilson, Chris P <chris.p.wilson@intel.com>
> Subject: Re: [PATCH V3 2/8] drm/i915/gt: Add support of mocs auxiliary
> registers programming
>=20
> On Mon, Aug 30, 2021 at 09:52:34PM +0530, Ayaz A Siddiqui wrote:
> > From: Srinivasan Shanmugam <srinivasan.s@intel.com>
> >
> > Few registers need to be programmed with appropriate MOCS indexes for
> > proper functioning.
> > As of now, there are two categories of registers that need to be
> > programmed, these are engine power domains register and engine state
> > context register.
>=20
> Minor nitpick:  MOCS-related registers are the initial user of this frame=
work,
> but isn't the longer-term goal to move other types of registers over to t=
his as
> well (e.g., some of the "fake" workarounds we have today for uapi
> compatibility)?  I'd avoid mentioning MOCS specifically in this patch sin=
ce this
> is just a general register-initializing framework.
Sure we should remove MOCS from here.
>=20
> >
> > A framework is being added to handle programming and verification of
> > those registers.
> >
> > To add a register in the future we just need to add it in
> > build_aux_regs(), the rest will be taken care of by the framework.
> >
> > V2: (Ayaz)
> >  Added CMD_CCTL in guc_mmio_regset_init(), so that this  register can
> > restored after engine reset.
> >
> > V3: (Ayaz)
> >  1. Changed implementation to have a framework only.
> >  2. Added register type for proper application.
> >  3. Removed CMD_CCTL programming.
> >
> > Cc: Chris Wilson <chris.p.wilson@intel.com>
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Srinivasan Shanmugam <srinivasan.s@intel.com>
> > Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gt.c         |   5 +
> >  drivers/gpu/drm/i915/gt/intel_mocs.c       | 184 +++++++++++++++++++++
> >  drivers/gpu/drm/i915/gt/intel_mocs.h       |   5 +
> >  drivers/gpu/drm/i915/gt/selftest_mocs.c    |  49 ++++++
> >  drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c |  17 +-
> > drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h |  15 ++
> >  6 files changed, 263 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c
> > b/drivers/gpu/drm/i915/gt/intel_gt.c
> > index 62d40c9866427..ccb257d5282f4 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> > @@ -21,6 +21,7 @@
> >  #include "intel_uncore.h"
> >  #include "intel_pm.h"
> >  #include "shmem_utils.h"
> > +#include "intel_mocs.h"
> >
> >  void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private
> > *i915)  { @@ -530,6 +531,10 @@ static int
> > __engines_record_defaults(struct intel_gt *gt)
> >  		if (err)
> >  			goto err_rq;
> >
> > +		err  =3D apply_mocs_aux_regs_ctx(rq);
> > +		if (err)
> > +			goto err_rq;
> > +
> >  		err =3D intel_renderstate_emit(&so, rq);
> >  		if (err)
> >  			goto err_rq;
> > diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c
> > b/drivers/gpu/drm/i915/gt/intel_mocs.c
> > index 10cc508c1a4f6..c52640523c218 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
>=20
> The main framework here probably shouldn't be in intel_mocs if we want to
> make this generic and usable for multiple purposes.  It would be best to =
have
> most of this infrastructure in its own file.  Then other parts of the cod=
e (e.g.,
> mocs) can call the new functions here to add their own sets of registers =
to
> the aux table.
Yes make sense.
=20
> > @@ -10,6 +10,8 @@
> >  #include "intel_lrc_reg.h"
> >  #include "intel_mocs.h"
> >  #include "intel_ring.h"
> > +#include "intel_gpu_commands.h"
> > +#include "uc/intel_guc_ads.h"
> >
> >  /* structures required */
> >  struct drm_i915_mocs_entry {
> > @@ -25,6 +27,28 @@ struct drm_i915_mocs_table {
> >  	u8 uc_index;
> >  };
> >
> > +enum register_type {
> > +	/*
> > +	 * REG_GT: General register - Need to  be re-plied after GT/GPU
> reset
> > +	 * REG_ENGINE: Domain register - needs to be re-applied after
> > +	 *	       engine reset
> > +	 * REG_ENGINE_CONTEXT: Engine state context register - need to
> stored
> > +	 *		       as part of Golden context.
> > +	 */
> > +	REG_GT =3D 0,
> > +	REG_ENGINE,
> > +	REG_ENGINE_CONTEXT
> > +};
> > +
> > +struct drm_i915_aux_table {
> > +	enum register_type type;
> > +	const char *name;
> > +	i915_reg_t offset;
> > +	u32 value;
> > +	u32 readmask;
> > +	struct drm_i915_aux_table *next;
> > +};
> > +
> >  /* Defines for the tables (XXX_MOCS_0 - XXX_MOCS_63) */
> >  #define _LE_CACHEABILITY(value)	((value) << 0)
> >  #define _LE_TGT_CACHE(value)	((value) << 2)
> > @@ -336,6 +360,78 @@ static bool has_mocs(const struct
> drm_i915_private *i915)
> >  	return !IS_DGFX(i915);
> >  }
> >
> > +static struct drm_i915_aux_table *
> > +add_aux_reg(struct drm_i915_aux_table *aux,
> > +	    enum register_type type,
> > +	    const char *name,
> > +	    i915_reg_t offset,
> > +	    u32 value,
> > +	    u32 read)
> > +{
> > +	struct drm_i915_aux_table *x;
> > +
> > +	x =3D kmalloc(sizeof(*x), GFP_ATOMIC);
> > +	if (!x) {
> > +		DRM_ERROR("Failed to allocate aux reg '%s'\n", name);
> > +		return aux;
> > +	}
> > +
> > +	x->type =3D type;
> > +	x->name =3D name;
> > +	x->offset =3D offset;
> > +	x->value =3D value;
> > +	x->readmask =3D read;
> > +
> > +	x->next =3D aux;
> > +	return x;
> > +}
> > +
> > +static const struct drm_i915_aux_table * build_aux_regs(const struct
> > +intel_engine_cs *engine,
> > +	       const struct drm_i915_mocs_table *mocs)
>=20
> It seems like the design you have here at the moment is going to allocate=
 and
> fill a new AUX list any time the code needs the list of registers, and th=
en
> frees it immediately afterward.  That seems a bit inefficient to do multi=
ple
> times at runtime (e.g., in execlist mode every engine reset would trigger=
 an
> additional allocation/build/free).
>=20
> Can we just build the list once at initialization time (with different pa=
rts of the
> code adding their own sets of registers to the table) and then free it la=
ter
> when the GT is destroyed?  That's sort of the approach that our workaroun=
d
> code takes --- decide which registers are important to deal with a single=
 time
> during device init, then use that pre-built list whenever necessary durin=
g
> runtime, and finally free it at GT teardown.
>=20
> Also, the function that adds the MOCS-specific registers to the table can=
 be
> kept here in intel_mocs.c, but should probably be added in the next patch
> that deals with MOCS-specific registers.  This patch should focus the
> interfaces to add new registers to the table, and the application of the =
table's
> registers at different parts of the code.
As I see following works here it will take some time to implement and test.
1. During GT init --> create the aux table.
2. Add the all the register as per respective  need.
3. Apply all the register at one place instead of category=20
4. In case if these register need to be programmed different places based o=
n need then
we need add a category identifier. eg. AUX_MOCS. , e.g. intel_mocs_init_eng=
ine()
static void apply_aux_regs_engine(struct intel_engine_cs *engine,
			  const struct drm_i915_aux_table *aux) {
	u32 mmio_reg_offset;

	while (aux) {
		if (aux->type =3D=3D REG_ENGINE  && aux->category =3D=3D AUX_MOCS ) {
			mmio_reg_offset =3D i915_mmio_reg_offset(aux->offset);
			intel_uncore_write_fw(engine->uncore,
					      _MMIO(engine->mmio_base +
					      mmio_reg_offset),
					      aux->value);
		}
		aux =3D aux->next;
	}
}=09

5. free the table during gt reset.

=20
>=20
>=20
> > +{
> > +	struct drm_i915_aux_table *aux =3D NULL;
> > +
> > +	if (GRAPHICS_VER(engine->i915) >=3D 12 &&
> > +	    !drm_WARN_ONCE(&engine->i915->drm, !mocs->uc_index,
> > +	    "Platform that should have UC index defined and does not\n")) {
> > +		/*
> > +		 * Add Auxiliary register which needs to be programmed with
> > +		 * UC MOCS index. We need to call add_aux_reg() to add
> > +		 * a entry in drm_i915_aux_table link list.
> > +		 */
> > +	}
> > +	return aux;
> > +}
> > +
> > +static void
> > +free_aux_regs(const struct drm_i915_aux_table *aux) {
> > +	while (aux) {
> > +		struct drm_i915_aux_table *next =3D aux->next;
> > +
> > +		kfree(aux);
> > +		aux =3D next;
> > +	}
> > +}
> > +
> > +static void apply_aux_regs_engine(struct intel_engine_cs *engine,
> > +				  const struct drm_i915_aux_table *aux) {
> > +	u32 mmio_reg_offset;
> > +
> > +	while (aux) {
> > +		if (aux->type =3D=3D REG_ENGINE) {
> > +			mmio_reg_offset =3D i915_mmio_reg_offset(aux-
> >offset);
> > +			intel_uncore_write_fw(engine->uncore,
> > +					      _MMIO(engine->mmio_base +
> > +					      mmio_reg_offset),
> > +					      aux->value);
> > +		}
> > +		aux =3D aux->next;
> > +	}
> > +}
> > +
> >  static unsigned int get_mocs_settings(const struct drm_i915_private *i=
915,
> >  				      struct drm_i915_mocs_table *table)  {
> @@ -347,10 +443,12 @@
> > static unsigned int get_mocs_settings(const struct drm_i915_private *i9=
15,
> >  		table->size =3D ARRAY_SIZE(dg1_mocs_table);
> >  		table->table =3D dg1_mocs_table;
> >  		table->n_entries =3D GEN9_NUM_MOCS_ENTRIES;
> > +		table->uc_index =3D 1;
> >  	} else if (GRAPHICS_VER(i915) >=3D 12) {
> >  		table->size  =3D ARRAY_SIZE(tgl_mocs_table);
> >  		table->table =3D tgl_mocs_table;
> >  		table->n_entries =3D GEN9_NUM_MOCS_ENTRIES;
> > +		table->uc_index =3D 3;
> >  	} else if (GRAPHICS_VER(i915) =3D=3D 11) {
> >  		table->size  =3D ARRAY_SIZE(icl_mocs_table);
> >  		table->table =3D icl_mocs_table;
> > @@ -395,6 +493,87 @@ static unsigned int get_mocs_settings(const struct
> drm_i915_private *i915,
> >  	return flags;
> >  }
> >
> > +int get_ctx_reg_count(const struct drm_i915_aux_table *aux)
>=20
> Should this be static?
Yes will take care
>=20
> If we keep the aux table around during runtime, we could probably just ta=
lly
> up the count as registers are getting added during init, so that we don't=
 need
> to re-walk the list to count them later.
Its only once when we are writing it in golden context. If we have to add a=
 count as member
Then we need count for engine , ctx and global.
>=20
> > +{
> > +	int count =3D 0;
> > +
> > +	while (aux) {
> > +		if (aux->type =3D=3D REG_ENGINE_CONTEXT)
> > +			count++;
> > +		aux =3D aux->next;
> > +	}
> > +	return count;
> > +}
> > +
> > +void add_aux_mocs_guc_mmio_regset(struct temp_regset *regset,
> > +				  struct intel_engine_cs *engine)
>=20
> If we're making this framework general, we should probably remove 'mocs'
> from the name since it will eventually have other non-mocs registers
> included too once we start using it for other things.
sure
>=20
>=20
> > +{
> > +	const struct drm_i915_aux_table *aux;
> > +	struct drm_i915_mocs_table table;
> > +	int ret;
> > +
> > +	ret =3D get_mocs_settings(engine->i915, &table);
> > +	if (!ret)
> > +		return;
> > +
> > +	aux =3D build_aux_regs(engine, &table);
> > +	if (!aux)
> > +		return;
> > +
> > +	while (aux) {
> > +		if (aux->type =3D=3D REG_ENGINE)
> > +			GUC_MMIO_REG_ADD(regset,
> > +					 _MMIO(engine->mmio_base
> > +					 + i915_mmio_reg_offset(aux-
> >offset)),
> > +					 true);
> > +		aux =3D aux->next;
> > +	}
> > +	free_aux_regs(aux);
> > +}
> > +
> > +int apply_mocs_aux_regs_ctx(struct i915_request *rq) {
> > +	const struct drm_i915_aux_table *aux;
> > +	struct drm_i915_mocs_table table;
> > +	u32 *cs;
> > +	int ret, count;
> > +
> > +	ret =3D get_mocs_settings(rq->engine->i915, &table);
> > +	if (!ret)
> > +		return 0;
> > +
> > +	aux =3D build_aux_regs(rq->engine, &table);
> > +
> > +	count =3D get_ctx_reg_count(aux);
> > +	if (!count)
> > +		return 0;
>=20

> > +	count =3D get_ctx_reg_count(aux);
	if (!count)
		return 0;

> With the current init/build/free design, aren't you leaking the table her=
e?
> There might be zero context registers, but there still could have been so=
me
> non-context registers on the list we got back.
Thanks it should be something like that.=20
ret =3D get_mocs_settings(rq->engine->i915, &table);
	if (!ret) {
		free_aux_regs(aux);
		return 0;
 	}
But if we modify the framework for single allocate /remove then its ok=20
>=20
> > +	ret =3D rq->engine->emit_flush(rq, EMIT_BARRIER);
> > +	if (ret)
> > +		return ret;
> > +
> > +	cs =3D intel_ring_begin(rq, (count * 2 + 2));
> > +	if (IS_ERR(cs))
> > +		return PTR_ERR(cs);
> > +
> > +	*cs++ =3D MI_LOAD_REGISTER_IMM(count);
> > +	while (aux) {
> > +		if (aux->type =3D=3D REG_ENGINE_CONTEXT) {
> > +			*cs++ =3D i915_mmio_reg_offset(aux->offset);
> > +			*cs++ =3D aux->value;
> > +		}
> > +		aux =3D aux->next;
> > +	}
> > +	*cs++ =3D MI_NOOP;
> > +
> > +	intel_ring_advance(rq, cs);
> > +	free_aux_regs(aux);
> > +	ret =3D rq->engine->emit_flush(rq, EMIT_BARRIER);
> > +	if (ret)
> > +		return ret;
> > +
> > +	return 0;
> > +}
> > +
> >  /*
> >   * Get control_value from MOCS entry taking into account when it's not
> used:
> >   * I915_MOCS_PTE's value is returned in this case.
> > @@ -484,6 +663,7 @@ static void init_l3cc_table(struct intel_engine_cs
> > *engine,
> >
> >  void intel_mocs_init_engine(struct intel_engine_cs *engine)  {
> > +	const struct drm_i915_aux_table *aux;
> >  	struct drm_i915_mocs_table table;
> >  	unsigned int flags;
> >
> > @@ -500,6 +680,10 @@ void intel_mocs_init_engine(struct
> > intel_engine_cs *engine)
> >
> >  	if (flags & HAS_RENDER_L3CC && engine->class =3D=3D RENDER_CLASS)
> >  		init_l3cc_table(engine, &table);
> > +
> > +	aux =3D build_aux_regs(engine, &table);
> > +	apply_aux_regs_engine(engine, aux);
> > +	free_aux_regs(aux);
> >  }
> >
> >  static u32 global_mocs_offset(void)
> > diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.h
> > b/drivers/gpu/drm/i915/gt/intel_mocs.h
> > index d83274f5163bd..0f362a0acc3a3 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_mocs.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_mocs.h
> > @@ -33,8 +33,13 @@
> >
> >  struct intel_engine_cs;
> >  struct intel_gt;
> > +struct i915_request;
> > +struct temp_regset;
> >
> >  void intel_mocs_init(struct intel_gt *gt);  void
> > intel_mocs_init_engine(struct intel_engine_cs *engine);
> > +int apply_mocs_aux_regs_ctx(struct i915_request *rq); void
> > +add_aux_mocs_guc_mmio_regset(struct temp_regset *regset,
> > +				  struct intel_engine_cs *engine);
> >
> >  #endif
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c
> > b/drivers/gpu/drm/i915/gt/selftest_mocs.c
> > index 13d25bf2a94aa..2b0207dfbf21c 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
>=20
> If we still want to have selftests that operate on specific subsets of th=
e aux
> table after we make it more generic, we could potentially add a 'aux sour=
ce'
> field to 'struct drm_i915_aux_table' that represents what part of the cod=
e
> added the register (MOCS, uapi compat, etc.).  Then we can easily ignore =
the
> registers on the table that aren't relevant to the specific selftest.
Yes we need to add Source/category as mentioned above.
>=20
> > @@ -155,6 +155,47 @@ static int read_l3cc_table(struct i915_request *rq=
,
> >  	return read_regs(rq, addr, (table->n_entries + 1) / 2, offset);  }
> >
> > +static int read_aux_regs(struct i915_request *rq,
> > +			 const struct drm_i915_aux_table *r,
> > +			 u32 *offset)
> > +{
> > +	int err;
> > +
> > +	while (r) {
> > +		err =3D read_regs(rq,
> > +				rq->engine->mmio_base +
> i915_mmio_reg_offset(r->offset), 1,
> > +				offset);
> > +		if (err)
> > +			return err;
> > +
> > +		r =3D r->next;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int check_aux_regs(struct intel_engine_cs *engine,
> > +			  const struct drm_i915_aux_table *r,
> > +			  u32 **vaddr)
>=20
> One other concern (which is part of why I didn't really want to see this
> framework handled separately from workarounds) is that the aux table
> might tell us to program a register with a specific value, but we may als=
o have
> a hardware workaround for a platform/stepping that overrides that with an
> alternate value.  Our workaround framework is smart enough to combine
> multiple entries for the same register into a single operation (if the se=
t of bits
> being updated are different), or will warn if there's two conflicting set=
s of
> programming requested for certain bits. Right now it's not clear who wins=
 if
> the aux table wants to program a register to value 'X' but the workaround
> lists want to program the same register to value 'Y.'  In theory the
> workaround should overrule the regular programming, but at the moment
> these selftests aren't checking to see if that's the case.  We may not ha=
ve any
> such conflicts today (especially since we have so few registers that are =
going
> to be on the aux table initially), but it may come up eventually.
Yes its valid point, I did not thought about it. Do you think that moving t=
o
workaround will be better option here?

-Ayaz

>=20
>=20
> Matt

>=20
> > +{
> > +	while (r) {
> > +		u32 expect =3D r->value & r->readmask;
> > +		u32 masked_value =3D **vaddr & r->readmask;
> > +
> > +		if (masked_value !=3D expect) {
> > +			pr_err("%s: Invalid entry %s[%x]=3D0x%x, relevant bits
> were 0x%x vs expected 0x%x\n",
> > +			       engine->name, r->name,
> > +			       i915_mmio_reg_offset(r->offset), **vaddr,
> > +			       masked_value, expect);
> > +			return -EINVAL;
> > +		}
> > +		++*vaddr;
> > +		r =3D r->next;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> >  static int check_mocs_table(struct intel_engine_cs *engine,
> >  			    const struct drm_i915_mocs_table *table,
> >  			    u32 **vaddr)
> > @@ -216,6 +257,7 @@ static int check_mocs_engine(struct live_mocs *arg,
> >  			     struct intel_context *ce)
> >  {
> >  	struct i915_vma *vma =3D arg->scratch;
> > +	const struct drm_i915_aux_table *aux;
> >  	struct i915_request *rq;
> >  	u32 offset;
> >  	u32 *vaddr;
> > @@ -223,6 +265,8 @@ static int check_mocs_engine(struct live_mocs
> > *arg,
> >
> >  	memset32(arg->vaddr, STACK_MAGIC, PAGE_SIZE / sizeof(u32));
> >
> > +	aux =3D build_aux_regs(ce->engine, &arg->table);
> > +
> >  	rq =3D intel_context_create_request(ce);
> >  	if (IS_ERR(rq))
> >  		return PTR_ERR(rq);
> > @@ -239,6 +283,8 @@ static int check_mocs_engine(struct live_mocs *arg,
> >  		err =3D read_mocs_table(rq, arg->mocs, &offset);
> >  	if (!err && ce->engine->class =3D=3D RENDER_CLASS)
> >  		err =3D read_l3cc_table(rq, arg->l3cc, &offset);
> > +	if (!err)
> > +		err =3D read_aux_regs(rq, aux, &offset);
> >  	offset -=3D i915_ggtt_offset(vma);
> >  	GEM_BUG_ON(offset > PAGE_SIZE);
> >
> > @@ -252,10 +298,13 @@ static int check_mocs_engine(struct live_mocs
> *arg,
> >  		err =3D check_mocs_table(ce->engine, arg->mocs, &vaddr);
> >  	if (!err && ce->engine->class =3D=3D RENDER_CLASS)
> >  		err =3D check_l3cc_table(ce->engine, arg->l3cc, &vaddr);
> > +	if (!err)
> > +		err =3D check_aux_regs(ce->engine, aux, &vaddr);
> >  	if (err)
> >  		return err;
> >
> >  	GEM_BUG_ON(arg->vaddr + offset !=3D vaddr);
> > +	free_aux_regs(aux);
> >  	return 0;
> >  }
> >
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> > b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> > index 6926919bcac6b..be4cca49abced 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> > @@ -12,6 +12,7 @@
> >  #include "intel_guc_fwif.h"
> >  #include "intel_uc.h"
> >  #include "i915_drv.h"
> > +#include "gt/intel_mocs.h"
> >
> >  /*
> >   * The Additional Data Struct (ADS) has pointers for different
> > buffers used by @@ -187,11 +188,6 @@ static void
> guc_mapping_table_init(struct intel_gt *gt,
> >   * inside the ADS.
> >   */
> >  #define MAX_MMIO_REGS	128	/* Arbitrary size, increase as needed
> */
> > -struct temp_regset {
> > -	struct guc_mmio_reg *registers;
> > -	u32 used;
> > -	u32 size;
> > -};
> >
> >  static int guc_mmio_reg_cmp(const void *a, const void *b)  { @@
> > -201,8 +197,8 @@ static int guc_mmio_reg_cmp(const void *a, const void
> *b)
> >  	return (int)ra->offset - (int)rb->offset;  }
> >
> > -static void guc_mmio_reg_add(struct temp_regset *regset,
> > -			     u32 offset, u32 flags)
> > +void guc_mmio_reg_add(struct temp_regset *regset,
> > +		      u32 offset, u32 flags)
> >  {
> >  	u32 count =3D regset->used;
> >  	struct guc_mmio_reg reg =3D {
> > @@ -236,11 +232,6 @@ static void guc_mmio_reg_add(struct temp_regset
> *regset,
> >  	}
> >  }
> >
> > -#define GUC_MMIO_REG_ADD(regset, reg, masked) \
> > -	guc_mmio_reg_add(regset, \
> > -			 i915_mmio_reg_offset((reg)), \
> > -			 (masked) ? GUC_REGSET_MASKED : 0)
> > -
> >  static void guc_mmio_regset_init(struct temp_regset *regset,
> >  				 struct intel_engine_cs *engine)
> >  {
> > @@ -258,6 +249,8 @@ static void guc_mmio_regset_init(struct
> temp_regset *regset,
> >  	for (i =3D 0, wa =3D wal->list; i < wal->count; i++, wa++)
> >  		GUC_MMIO_REG_ADD(regset, wa->reg, wa->masked_reg);
> >
> > +	add_aux_mocs_guc_mmio_regset(regset, engine);
> > +
> >  	/* Be extra paranoid and include all whitelist registers. */
> >  	for (i =3D 0; i < RING_MAX_NONPRIV_SLOTS; i++)
> >  		GUC_MMIO_REG_ADD(regset,
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h
> > b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h
> > index 3d85051d57e45..75736c56fa187 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.h
> > @@ -6,9 +6,24 @@
> >  #ifndef _INTEL_GUC_ADS_H_
> >  #define _INTEL_GUC_ADS_H_
> >
> > +#include <linux/types.h>
> > +
> > +struct temp_regset {
> > +	struct guc_mmio_reg *registers;
> > +	u32 used;
> > +	u32 size;
> > +};
> > +
> >  struct intel_guc;
> >  struct drm_printer;
> >
> > +void guc_mmio_reg_add(struct temp_regset *regset,
> > +		      u32 offset, u32 flags);
> > +#define GUC_MMIO_REG_ADD(regset, reg, masked) \
> > +	guc_mmio_reg_add(regset, \
> > +			 i915_mmio_reg_offset((reg)), \
> > +			 (masked) ? GUC_REGSET_MASKED : 0)
> > +
> >  int intel_guc_ads_create(struct intel_guc *guc);  void
> > intel_guc_ads_destroy(struct intel_guc *guc);  void
> > intel_guc_ads_init_late(struct intel_guc *guc);
> > --
> > 2.26.2
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795
