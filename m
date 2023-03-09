Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F436B2637
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 15:05:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6DBF10E813;
	Thu,  9 Mar 2023 14:05:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A90110E813
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 14:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678370748; x=1709906748;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Bdh6Ywc4wmRjzL1XEBunhy5YSB4r/FYGM9OPLbXnBrM=;
 b=JhCIUyGEeBbgjlZmlD9bzRtk94B71Ce20yvu+JXs9xac2+5Q+W4CoHxQ
 UGHCbYwaIdKVdrNAn6G3pQFMR1w51fkbGFcMjmVSeYAl68tdPAQS3tpnD
 +032I8PZryUEzbu7r3ca44NbzFxHd9Jb9Qe21cZpPQOuCUlrIKY2uMf/5
 M1gCtSjsbzJ2OMJFU7J88B4dmUCcxB6F1+wCeJgXMGngrqr9OgweYWz6O
 OQg1HihAN4oDvx1xYZB0ZT0DeF26QvizoeQebV2WJ5uGBI6u4Z8M9uGmA
 d8GFUIcQ5h326Y/9GSZ+rqIDp5p5tUOLA5qC0W/0RUXYoI9H02aXXPeNW g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="335153460"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; d="scan'208";a="335153460"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 06:05:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="679772710"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; d="scan'208";a="679772710"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 09 Mar 2023 06:05:47 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 06:05:46 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 06:05:46 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 9 Mar 2023 06:05:46 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 9 Mar 2023 06:05:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VG4P6uAu29MVHqOQuzUfHqvFchsYoRvKyN/VbjBicFcaaeGBmlHmpIn0k7G4vvF+jg/jjBcX4jOKML0ie2TGXW9o1PFBLFVZmYz8u8BNgpchokE4cg3hB9bQTWpEZQ4a7xg6ZaF5VWWPR7hKstaj+KzRjI1gFHho3/yWvbHgYZjaXIMfyIsxuv8B7QJgK7sa2WDO/Nfs2e3OMfzM6L+bP/Z23poY2/R/uf7y8hwdvDkCo7aA+ZsXZM7HdW8yFUXFKVXv45sB1rTEo5QSb3zSQzOVuX/SCNu3CwyXYA9FJ1ngI+2aTOxcFUTYcoOyPZwhxFrS5GAHKbaPQz/i7Ltwmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IGr7sYzpu5efV/zTTNC6ypq1gbxlieHAo4VBA1BSbuQ=;
 b=jo2+/Gen+R+LGFX3qZ803EhujwS4uStqH23o/KRYUroQEBuNFPI+NdziueY0R4IgGp66atqBA2HYGwcXIl8qGZ+gdOs4NBT+juyAx+7GhaWUQxHuCtgMh+ew7WoaOMik8PQukrbhTNCr3pNEvCMQQ2+t4M+nQfhFFka/KrKfSz+VA1bJyCEn7KqrpSnpasYGylHjSctsoRCiAJ3wsdXbb7KNkGQKQEYYt0ppWaZiaCM6oGzgRZN/1tVc1wyEY7TicqDj21B8Zmd1BoGWXQZ0ef+HpAtZCpVzRNCwY8zHa3zD2SBJ/V7B5UmSb2KkvMMH/jBc157KEu/ixL8Xh8aT2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB6546.namprd11.prod.outlook.com (2603:10b6:510:212::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.19; Thu, 9 Mar
 2023 14:05:44 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%9]) with mapi id 15.20.6156.029; Thu, 9 Mar 2023
 14:05:44 +0000
Date: Thu, 9 Mar 2023 09:05:39 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Nilawar, Badal" <badal.nilawar@intel.com>
Message-ID: <ZAnnsw7EuWQSlyFn@intel.com>
References: <20230308102109.2386712-1-badal.nilawar@intel.com>
 <20230308102109.2386712-2-badal.nilawar@intel.com>
 <871qlzcwzs.fsf@intel.com>
 <64a67a3a-c2b9-591b-221f-90944ac71e23@intel.com>
 <326a48de-d2aa-14b8-d718-9e20c3c6cc7d@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <326a48de-d2aa-14b8-d718-9e20c3c6cc7d@intel.com>
X-ClientProxiedBy: SJ0PR05CA0119.namprd05.prod.outlook.com
 (2603:10b6:a03:334::34) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB6546:EE_
X-MS-Office365-Filtering-Correlation-Id: 52344162-266c-43d5-50b7-08db20a75f64
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 802hVqUDx7CA+OwrKlsN71YiWdqkq7RfEKni7tVQ/ABpaJJ9cq0eWcR7ibNg00HWCJPDHAFliogNjoLlX7JA+RLUsV8PZtdywd7CbKEjis4rKv9Cxou3Ds5TrlR2NFiQP4OqLaBg70zUFkBF0EiEH2Mp+oI+mriHWMYatVnO0hOwhE/wblUlXTFTuoC784rYrSKIXApRq+puiXqXa+4GwzkzBq4ELaSNLyBo8Yi4A72V6E/4BeYiT3bJA4etOgQWktMTKFxoJTcSr91ViswdK+RKypY4TFTyogFFFBXLhmxALtyqkcBx7IG6wwFpbDf1vfRTTqfMAmBvYBIC2DE1prTiGYduMnDwXeGen1FmKmJZtTwTO7RXcXFpzZwWm7w88N7P9l8yvMoxNMkohnU/+o7jED0dB/6EYmP7WkxyBsllAw3txJXLhSNU8yoG2bCcFrx002wpmT/nBvWDoF0p7HGK5ODIS3kP+MZepmo/AGdperYH7bqwcPm9u0TB+ib/cyL8s+9/WR5cXm0DjNhDo1kPY+gdAEYG9zPcjwnbFcvE5Bi7xl9EYILeevP55pPQMO4R5MxCwZigbuOZ7xOggnytb1giLsgCj7ZVes/bqSTPYHoRw0A23Zil7UNm39c0BsVTQOvAafAEsexbSYVeow==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(136003)(396003)(39860400002)(376002)(346002)(451199018)(2616005)(5660300002)(6862004)(44832011)(8936002)(36756003)(86362001)(38100700002)(82960400001)(2906002)(83380400001)(478600001)(316002)(6636002)(54906003)(37006003)(186003)(26005)(6512007)(6506007)(6486002)(4326008)(8676002)(66946007)(41300700001)(53546011)(6666004)(66476007)(66556008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?YK8n9Thh/Bdr+v38F8EQbPTl8Jc8PUGqhNrq5drWZhaeGL7a2LYsiCW4vb?=
 =?iso-8859-1?Q?Tq23i1TJmjVm/hWVhTqzCMfOZwXrsNFGAWoByqCDj3iEAKIjLmKVIaiJT5?=
 =?iso-8859-1?Q?I/P2fnMsY6NCSFhB3iFx8HxR2IlhL0B0qwBNVyRDHrRzQzepkSnL6/mJp4?=
 =?iso-8859-1?Q?8JV51iqxxKals6ILBc3yepjgousu9upwrxcURUR+2fqG1bmSDB78Qmak4C?=
 =?iso-8859-1?Q?r8JCWuJ86ELB3U2ZcoAOz4nwlQHhb7zsPvne/BPDtYZtp5hjcazUxP+vnv?=
 =?iso-8859-1?Q?5AoM10/n8c6pWqlxy2jXpfKQ48Df44zn4eTmsTUNoNI+yor5bx/ef3nnxi?=
 =?iso-8859-1?Q?gJzukPa1TSBTs24+D7c7MhPIWWXltJNRW/p3cXcY7JaT1jIk1bBiaa3xYW?=
 =?iso-8859-1?Q?jTkEb5MFZRLLmdQylwMgZo4tHhCg+TbcaqN27PgF1HQF/Cj0fdDedjwFnj?=
 =?iso-8859-1?Q?CBYx8YccNtcGD9iSrezBgvWrgHHEbRbtKKe+DUSBE6dXKDdLq9GP/gL4yr?=
 =?iso-8859-1?Q?q1WDWrKAAGAluix3h9rp/Vk39FrSQ5wtJV6dTpLVc2BYojfAEKfpBtD/He?=
 =?iso-8859-1?Q?jlsiAZswVLNhtpApbYocKH1TLk3XaA6XLngCUdL/RC5K0i+X1BSIdCtoG+?=
 =?iso-8859-1?Q?uC+quGW5ZeKd3x5qayDF6PpMk7+TEagW9W6uaLcmg/3cAi1mtUYhHEY1t6?=
 =?iso-8859-1?Q?O+OB12SjbhdhqYmm+kqG8E2zt5uOGfchSihxAsgItuoDocP1WfcY3y0/5C?=
 =?iso-8859-1?Q?X3Jly5zA5R4EaRO8ozQpsk1v9Wjes0tmYIANhZAswbZTcMDUYrmZiAfU6n?=
 =?iso-8859-1?Q?cuMKjyVIjtOE3JuJAIC51lZ2BjNVRfUdglANwp4nKEJhdq05YJ2eegozYE?=
 =?iso-8859-1?Q?usVXVWv7sL+0gOFY0WieCbLOD547gatqGMvo1hCjGMQe3dEJK7b77WcYVd?=
 =?iso-8859-1?Q?DuVLYYpWJVIQ4DhPSnQdf4VljDur3cNFtAYA/e4mdhwjegyfYzUJVILZ/m?=
 =?iso-8859-1?Q?1cYxjGKb8oNyVfsa2T7vAGUVGkCm9zDDZLISW/TZtNN6Tx4d9bXJlCsNmy?=
 =?iso-8859-1?Q?1lB5yfaopeBeWwphZkCpV8+k7LsnVYzh6E14R5leLYwB4Jc/OpifyilrE/?=
 =?iso-8859-1?Q?2vCG/DlThavgXtwB+zB9+0EvZ9jjBU1n7i2gHpHJHnzHfPPy4KmRJ+yMgC?=
 =?iso-8859-1?Q?NELLqxDOYeZanz9Ma0friJ2Gr9GfuwlZiYpgH4M4quvd+PZGs1kv0Ikw2r?=
 =?iso-8859-1?Q?5nnzEJUUeRopJlH7Uwu1hgB2AeVuwx1GDiucUOE4Jr4vSpjKNuu5QlCQRj?=
 =?iso-8859-1?Q?UU9QyK3Fc3Qa7erM3NOOZbJn2VEnItXn6m8VhoxxASjU3O8EcEOVrBTrq1?=
 =?iso-8859-1?Q?GAeWcIYDZE3ci41h7ga2UR70nHJ78Y1jjDFMrzr45KbZ2+j0/Aek6/LTsf?=
 =?iso-8859-1?Q?RKulZyqgmB52dY0AVRROeZv8SpplZ7KGeXUYXTd94ihgp5IhW8IxdIm4C+?=
 =?iso-8859-1?Q?i+2JQfr7ZOUYAFAgy/Da9KS9Cv7RR7mBy3fmJ53pKPF1JaN+YEH2xwhrBx?=
 =?iso-8859-1?Q?T4emYk6OFZ/+NBH6CAr+2kHALiVscFXtssgJ6NcgYZMtF3oNSM6ops6lGa?=
 =?iso-8859-1?Q?7l1zH5FHpyx03hmiH8XKlp1eGRK7o96Yrha2xYtVJyIEsYJuKyoo7Srw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 52344162-266c-43d5-50b7-08db20a75f64
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2023 14:05:43.9155 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h4cMvz8sj0PwybVmLMDMkuc7CXqIW5LYyP4rT5wERwz9a0ioR6JkMr6zBQwLaCT40qpE0DlGco5BeifLZnFFNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6546
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] Revert "drm/i915/mtl: Add
 Wa_14017073508 for SAMedia"
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
Cc: intel-gfx@lists.freedesktop.org, gregory.f.germano@intel.com,
 srikanth.nandamuri@intel.com, hima.b.chilmakuru@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 09, 2023 at 11:08:09AM +0530, Nilawar, Badal wrote:
> 
> 
> On 08-03-2023 20:55, Nilawar, Badal wrote:
> > Hi Jani,
> > 
> > On 08-03-2023 16:48, Jani Nikula wrote:
> > > On Wed, 08 Mar 2023, Badal Nilawar <badal.nilawar@intel.com> wrote:
> > > > This reverts commit 8f70f1ec587da0b0d52d768fd8c3defbc5e5b55c.
> > > 
> > > Reverts need a commit message too. The why. The cover letter is not
> > > recorded in git history.
> > 
> > I will add commit message.
> 
> Is it ok if I squash both the commits?

yes, it is. just don't mark as revert and make sure to add the original one
as a Fixes tag. Easier to backport actually.

> 
> > Regards,
> > Badal
> > > 
> > > BR,
> > > Jani.
> > > 
> > > > Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
> > > > ---
> > > >   drivers/gpu/drm/i915/gt/intel_gt_pm.c     | 27 -----------------------
> > > >   drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c | 13 +----------
> > > >   drivers/gpu/drm/i915/i915_reg.h           |  9 --------
> > > >   3 files changed, 1 insertion(+), 48 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> > > > b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> > > > index 85ae7dc079f2..e02cb90723ae 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> > > > @@ -20,31 +20,10 @@
> > > >   #include "intel_rc6.h"
> > > >   #include "intel_rps.h"
> > > >   #include "intel_wakeref.h"
> > > > -#include "intel_pcode.h"
> > > >   #include "pxp/intel_pxp_pm.h"
> > > >   #define I915_GT_SUSPEND_IDLE_TIMEOUT (HZ / 2)
> > > > -static void mtl_media_busy(struct intel_gt *gt)
> > > > -{
> > > > -    /* Wa_14017073508: mtl */
> > > > -    if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
> > > > -        gt->type == GT_MEDIA)
> > > > -        snb_pcode_write_p(gt->uncore, PCODE_MBOX_GT_STATE,
> > > > -                  PCODE_MBOX_GT_STATE_MEDIA_BUSY,
> > > > -                  PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
> > > > -}
> > > > -
> > > > -static void mtl_media_idle(struct intel_gt *gt)
> > > > -{
> > > > -    /* Wa_14017073508: mtl */
> > > > -    if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
> > > > -        gt->type == GT_MEDIA)
> > > > -        snb_pcode_write_p(gt->uncore, PCODE_MBOX_GT_STATE,
> > > > -                  PCODE_MBOX_GT_STATE_MEDIA_NOT_BUSY,
> > > > -                  PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
> > > > -}
> > > > -
> > > >   static void user_forcewake(struct intel_gt *gt, bool suspend)
> > > >   {
> > > >       int count = atomic_read(&gt->user_wakeref);
> > > > @@ -92,9 +71,6 @@ static int __gt_unpark(struct intel_wakeref *wf)
> > > >       GT_TRACE(gt, "\n");
> > > > -    /* Wa_14017073508: mtl */
> > > > -    mtl_media_busy(gt);
> > > > -
> > > >       /*
> > > >        * It seems that the DMC likes to transition between the
> > > > DC states a lot
> > > >        * when there are no connected displays (no active power
> > > > domains) during
> > > > @@ -144,9 +120,6 @@ static int __gt_park(struct intel_wakeref *wf)
> > > >       GEM_BUG_ON(!wakeref);
> > > >       intel_display_power_put_async(i915, POWER_DOMAIN_GT_IRQ, wakeref);
> > > > -    /* Wa_14017073508: mtl */
> > > > -    mtl_media_idle(gt);
> > > > -
> > > >       return 0;
> > > >   }
> > > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
> > > > b/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
> > > > index fcf51614f9a4..1adec6de223c 100644
> > > > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
> > > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
> > > > @@ -12,20 +12,9 @@
> > > >   static bool __guc_rc_supported(struct intel_guc *guc)
> > > >   {
> > > > -    struct intel_gt *gt = guc_to_gt(guc);
> > > > -
> > > > -    /*
> > > > -     * Wa_14017073508: mtl
> > > > -     * Do not enable gucrc to avoid additional interrupts which
> > > > -     * may disrupt pcode wa.
> > > > -     */
> > > > -    if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
> > > > -        gt->type == GT_MEDIA)
> > > > -        return false;
> > > > -
> > > >       /* GuC RC is unavailable for pre-Gen12 */
> > > >       return guc->submission_supported &&
> > > > -        GRAPHICS_VER(gt->i915) >= 12;
> > > > +        GRAPHICS_VER(guc_to_gt(guc)->i915) >= 12;
> > > >   }
> > > >   static bool __guc_rc_selected(struct intel_guc *guc)
> > > > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > > > b/drivers/gpu/drm/i915/i915_reg.h
> > > > index f2ce4bde6a68..b177cdeee1ec 100644
> > > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > > @@ -6469,15 +6469,6 @@
> > > >   /*   XEHP_PCODE_FREQUENCY_CONFIG param2 */
> > > >   #define     PCODE_MBOX_DOMAIN_NONE        0x0
> > > >   #define     PCODE_MBOX_DOMAIN_MEDIAFF        0x3
> > > > -
> > > > -/* Wa_14017210380: mtl */
> > > > -#define   PCODE_MBOX_GT_STATE            0x50
> > > > -/* sub-commands (param1) */
> > > > -#define     PCODE_MBOX_GT_STATE_MEDIA_BUSY    0x1
> > > > -#define     PCODE_MBOX_GT_STATE_MEDIA_NOT_BUSY    0x2
> > > > -/* param2 */
> > > > -#define     PCODE_MBOX_GT_STATE_DOMAIN_MEDIA    0x1
> > > > -
> > > >   #define GEN6_PCODE_DATA                _MMIO(0x138128)
> > > >   #define   GEN6_PCODE_FREQ_IA_RATIO_SHIFT    8
> > > >   #define   GEN6_PCODE_FREQ_RING_RATIO_SHIFT    16
> > > 
