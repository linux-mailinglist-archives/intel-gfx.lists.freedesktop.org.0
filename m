Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 285ED6D8053
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 17:03:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8A5810E0B7;
	Wed,  5 Apr 2023 15:03:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 027E810E0B7
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 15:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680706981; x=1712242981;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=L26ArKJ0rTG5Ya5/3mZDmN28p2XGvRBbNBIQTUoFDfI=;
 b=IxWkgM3/64Cc2JELhU3YY34RvTuikndzIUUiychBU/bCPiVVCOKBfz+7
 feXFfCWmawF+eBNEhv9dGVsMlaeFIdtny/NnWxNiH9iDsVyibhrgXE367
 ldUlihuzYoizX49owoux5ge7ssmBmm2M+El5c3gdPDW2tnxotp6a70vBq
 aCOVNMd+QB9eq4fWujXGPCQ5wU8Cta52XAkKt9D7rfbwY8TRxuCJPlRHz
 oycUEAGzlSpq6qN6eT48tnBEZykdFOfY077fc6WfxyrKHCIYOXaPWusxC
 6iKWiFmMAEk/KPv5DKlZQNoLstagyxqlgytoIg1BbBAQwgxJEmpVsrAwy g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="344200104"
X-IronPort-AV: E=Sophos;i="5.98,321,1673942400"; d="scan'208";a="344200104"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2023 08:02:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="1016495292"
X-IronPort-AV: E=Sophos;i="5.98,321,1673942400"; d="scan'208";a="1016495292"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 05 Apr 2023 08:02:28 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 5 Apr 2023 08:02:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 5 Apr 2023 08:02:27 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 5 Apr 2023 08:02:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OGyy9VXBNmbNQszx2OgDtpSufQdoXhzomlNnyTfd7GltG77n6RfGQDEGw72BreMXkkqWHEsQxHZgMC6csbAa646/sk7bStVFM/w894c33WMN353HW1l5wDTjAagZ8kLWkmPs1Ai+nEWX/eBvd6FbV5+t1qGy0bsQYz9SSwGOdbs1ca9oEuB/BcGB0NyeZJAY3MVXbBJ33zrW8dYMAC5w/HQlgJ1rPJA/f+Ni5oc679d3dc8/T9dxA/saD1yBPg3INSHsqG4tUgZUHBUV6l7/CmmtwvJcw9eFt6ed0YKvMQo8Ipy4mOFpViUEKu64XhpLsQcId+4LiOzvOL2IeVHbvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=izS3QMBUxA8K7nL2j+1Z3sOQxJiZHIsYxANtZyY6Hgw=;
 b=Y6yeuXkWANKe7q7neAGgMugDQuX0fyIun8hIK6AP9bdhGZ2WCbtTTTC/hU8SPRdz8NWNqvfz/Ea6He8L7JbHdSYVRCOxMOK65dkC4EhmXGEZDE8dhyrSZDxRNHW3+bMivxjZ/pGvj32xbNkq7yaAPRpneEgPkV66wcZUJAGKTK3LvvXfeuQpyLaudTbwVQoHIX8qzrFLiLs+LAUllIKU4FZt5y7+j8f5VfHS/RQZsbVRwpX3ffeb9WxP6nsD9/iLLfsphQqnVV1P2pZtUf0as3Py3GOH9qqCf3OY+tiWaZGG60KC8fz4ZJMXl0Mh7NU7NvAAHC170JOQpOeiY26B7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SA1PR11MB8349.namprd11.prod.outlook.com (2603:10b6:806:383::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.30; Wed, 5 Apr
 2023 15:02:08 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0%8]) with mapi id 15.20.6254.033; Wed, 5 Apr 2023
 15:02:08 +0000
Date: Wed, 5 Apr 2023 08:02:05 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <20230405150205.GH4085390@mdroper-desk1.amr.corp.intel.com>
References: <20230404173220.3175577-1-haridhar.kalvala@intel.com>
 <168063295542.5056.8712357609960573647@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <168063295542.5056.8712357609960573647@gjsousa-mobl2>
X-ClientProxiedBy: SJ0PR13CA0114.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::29) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SA1PR11MB8349:EE_
X-MS-Office365-Filtering-Correlation-Id: d7588769-4c1b-4d8f-d4d9-08db35e6b9f7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I/w9Z6eB9xecd8Lj/UhWjDk84Hp8dGSfE7YdTtpSFGJFfIMUjygeaNdJ5NAvdj6BHrQ6P6pRFIEqrJ2f/Fcrvbe9KM0REFf806vS+YzDawHfeDUmfa/jQNSCl1thNrLWUCbDiFZBnVFv3Iqq0nqWnYkarCIGWu7g+a0Z58ZkTCEVVZZV/aFUt6Nl1be9AeCiFbmdkCO1+X+fFFNC47hwNMcF0ynQ14R+g011K6vTV2DJ7ES0AIbeJx/ZqIe3quEGCvazjFpQy4TtcrJU6KZaWWr1NMRZInB6Hapzs5/G14WzbDP7qk0aF9s5g/WOvSlGFZC1a8znlm7qC4UNK2fpTaK8wzfS/cVcaxa0f536Vx1SfAHh3ZvBPgiQ7DG2qM2rtdHH/9CCh9v/J/yEGxvg6CcHET4jhY2kpcDWWrbEuLFddmXXkuvMtv9ApNXK3JZxXUqZYu0p6s2+7HzJb0pmgfzC1riQg6kXUDdG8aHtKx4q0J6Uf5eeO5Jk8KtxSPqYCqVI0TawGNfHcafJBKX0eaZlRFDX8JB5mOIXG5bbBkoGZ1VQQulJNxN6e3qhIbRy
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(136003)(39860400002)(376002)(346002)(451199021)(6486002)(33656002)(107886003)(6666004)(8676002)(66476007)(66946007)(26005)(6512007)(1076003)(6506007)(4326008)(66556008)(86362001)(2906002)(186003)(316002)(478600001)(82960400001)(41300700001)(8936002)(6862004)(6636002)(38100700002)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?C0ThgbJkK7ATX8oOftSXwygnFdyygUfoR6jH0s/tzcEFiTuiQUYMF0LFq/3e?=
 =?us-ascii?Q?k4lpEzjFzU6bJS0PtI0VKYyVy+G8V22ocOD7QtLSmFvYHhtnQqCyTbkw72yg?=
 =?us-ascii?Q?+hpDaDbf8ZOe+Nu6gQWwMKeuN+cHVmIfDSs8hNWY4M1Kze4MfltGCYtb7+/4?=
 =?us-ascii?Q?0LLtzaj6Umy8GlhaokB6FRfDSPNYXQWNgo8h5eApv6COs5yDofKXCPMRt3EA?=
 =?us-ascii?Q?A8/VtwuEcVa+1S7xQFoPLwZrJPOAlQvDRNXT2YDLdgHNBQGL3dsDTQRKJpcD?=
 =?us-ascii?Q?mvypho/GN7srBPHJGke8W1acHBwPEs9fzXzJeDMOigsc84EKRT1fDvLs4WCM?=
 =?us-ascii?Q?7nszcouMDdUlYJ5WmSoYRobnAaTfkLYF1+eE1O0TewQYRGOjMVufLZnK3vio?=
 =?us-ascii?Q?Wt89+Cif1tMA4XBL62X5R9xqWcvknc7YmyasVnHvH1LyCZHKNJWXJzzQmIwo?=
 =?us-ascii?Q?HsA+2OzLHmSiz5JjI8zWGLbleb63Rcf6ZrMdg+W0XrhgslDef6/m+sLJCdRD?=
 =?us-ascii?Q?GXb8ywRsOG1SYiEtMAIFVOcJslgu9iWlIlJ/nfKPNdMSrO4MiPGVZvHkSH+b?=
 =?us-ascii?Q?/XCkv7wsrSgczQ9H8jOY7IvajJnk5xLgLHvjoYHNRnvje8lICYdVZRMzDr7z?=
 =?us-ascii?Q?GUlimcjRcKriv9b2C9KqtlD/wZR4odulA/etviTmKQUPessO+YeF8FG8DuIE?=
 =?us-ascii?Q?+Fl8r4+7ojXHrDGxTRmlIMT87CqjvfaBjMlhQ3mRlyy0n4h9g+s+rVlRQhfX?=
 =?us-ascii?Q?1m+MATu/RBcTS8b31prYppeBhnGJN7djWwvgb+QSBpAEnM4HiZct5UHT+rkM?=
 =?us-ascii?Q?DEiLANzQqQn8FEvzPyaG/8GQlJGeEB2GyTp/sbUS6+hWlfVVggwTv66VpkWm?=
 =?us-ascii?Q?VxoTeUM3IrvA4J5LMdOFHiNRcxTHj4OqnyuFiLh3LTgdBE830ky5O2kohntJ?=
 =?us-ascii?Q?mYp6mDkFfcc9D5J1xZYWVmTkn/NhIH77VnP6aIPjcgtT21eK1Na3jIZ7mm2Q?=
 =?us-ascii?Q?zVLdIOHWuwKDaI6x1UHGTjpCQ5FUx4yA4WVvFh0qq7EK7F5Ep852lzsEv+1h?=
 =?us-ascii?Q?prXpHO+/D7M0e3NEY491J+osIhsmOvKsAUO6sxOnSbQaZHFh3EXBPtd0zHr8?=
 =?us-ascii?Q?MIE2c5s4I//Ht+FoMq2QyWLKNuM6k7gCm6YX+F4JKeQXghskX/iIMCGZmH+q?=
 =?us-ascii?Q?4Dy0n2PTbitHY1Da23rHCnhmwKqLnsECqM3cUP+xXnc3RfqupVUXROvtbvnr?=
 =?us-ascii?Q?++gzhbyNPzGtzQZ8vJ89ZfDmgpnlSnWMl2zIS8q6CeMgVrYgW9/JkX0Jrj1d?=
 =?us-ascii?Q?CWY9BSt/vk1dSipZ4Z3ZBUlkPNw9VK8NcZzzzhKBbb+n2i7gW4ukZ8RSaaHd?=
 =?us-ascii?Q?Y8n3YN77QA1gb6+Qqf26p/xoAkbmstX6OXbZaP7x0gkR8EhKwlc4XtNFxoTR?=
 =?us-ascii?Q?cZ8Bk9VDfpNauQO94Y1Y4wR/U2JA3kTdKJ9kbSDUvSiXgIfqlG4IEM++xV7J?=
 =?us-ascii?Q?uHcA7qrHCfw8fUBiSkUfn0heqGwwfcUdatqcd7d+b3fVKuUn/VtbzVzvBhPe?=
 =?us-ascii?Q?h5BD1+qYU7UAqyyvGe24iXxCq1Kys2uF1LYT0mFapogu+RWClmE5d9iQdYMP?=
 =?us-ascii?Q?YQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d7588769-4c1b-4d8f-d4d9-08db35e6b9f7
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Apr 2023 15:02:08.3621 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HkED7eMbpNCT5pci+dDvOKe0k6plarrhvnXZhCpyuEHND+81menn2ynDUcvel19d83Ukf2nlRLoepWPEvO8OF8PYqQV4YBzWcFbXoUv9Sws=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8349
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Add Wa_14017856879
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
Cc: intel-gfx@lists.freedesktop.org, balasubramani.vivekanandan@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 04, 2023 at 03:29:15PM -0300, Gustavo Sousa wrote:
> Quoting Haridhar Kalvala (2023-04-04 14:32:20)
> > Wa_14017856879 implementation for mtl.
> > 
> > Bspec: 46046
> > 
> > Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
> 
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Applied to drm-intel-gt-next.  Thanks for the patch and review.


Matt

> 
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 2 ++
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
> >  2 files changed, 7 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > index 35a4cfac2d20..492b3de6678d 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > @@ -1177,7 +1177,9 @@
> >  #define   THREAD_EX_ARB_MODE_RR_AFTER_DEP      REG_FIELD_PREP(THREAD_EX_ARB_MODE, 0x2)
> >  
> >  #define HSW_ROW_CHICKEN3                       _MMIO(0xe49c)
> > +#define GEN9_ROW_CHICKEN3                      MCR_REG(0xe49c)
> >  #define   HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE   (1 << 6)
> > +#define   MTL_DISABLE_FIX_FOR_EOT_FLUSH                REG_BIT(9)
> >  
> >  #define GEN8_ROW_CHICKEN                       MCR_REG(0xe4f0)
> >  #define   FLOW_CONTROL_ENABLE                  REG_BIT(15)
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 1c8e0e91a2fe..6ea453ddd011 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -2971,6 +2971,11 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> >  
> >         add_render_compute_tuning_settings(i915, wal);
> >  
> > +       if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
> > +           IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
> > +               /* Wa_14017856879 */
> > +               wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN3, MTL_DISABLE_FIX_FOR_EOT_FLUSH);
> > +
> >         if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> >             IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> >                 /*
> > -- 
> > 2.25.1
> >

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
