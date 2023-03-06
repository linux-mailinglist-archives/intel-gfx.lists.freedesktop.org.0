Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47AAC6ACF0E
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 21:20:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35EA310E459;
	Mon,  6 Mar 2023 20:20:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF49410E459
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Mar 2023 20:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678134020; x=1709670020;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=M3tnlQm2DXg/O+33Kb2ym/mLMfDtipjss+2K608EBW0=;
 b=ntjLKm75SWELrGlBLGtzQkeiBZkveOMXQbVCIYmX5Na3pAiR1UfkLGJG
 u4xXuw2ix3dOkHximCmuBA/B73Oy66gE6LELFyexrM5ImZQroUDEDBS8j
 /5a6rbdY2aVVZKZ1KC40KXsGUGUvdLhj02A/5OspL3bOKou4ZrYAbodbO
 GCHSB51aQu4XwO/3tRZ/o6EUk/dKYds55If2tXIkq786rCEfEnpVjmnNe
 iVp4u7DFSmiPJTgx3F3rKYo5G4oxVmLNBdC6ioQSqVJboH4/S/XhJRDEu
 52S06hqODstx65TVp+WErO2gLwweSrR/cbVAz6CVWD8bXjyCcU8jc04gN A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="363284535"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="363284535"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 12:20:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="706558882"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="706558882"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 06 Mar 2023 12:20:19 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 12:20:19 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 12:20:19 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 6 Mar 2023 12:20:19 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 6 Mar 2023 12:20:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C0EjUFReTSXbwuiwVjjMNYbq3JTGnLNQEITH8W0qrL3HnZABUfdV2v/WQoIfTHyvYBiE5otajLWQw3n4lcQVGEpjaYiooHt2m1UiVn/yPvXUFCctwAroyZz6/xwICDqsxd70DxuUySfnsucDchf6JL636doWXSy1mdjsozu7ZOoXDloBY5urGIgDQ1mRA9kPff5mx208HL/g8YGg2v2rNQ0g9y+fUT1e8ms3ZVzkuN3CV17wdSlrpaASF1DvvHSf2lBLOcdpSMHzVpgxg01/zZsm4ATF7R2HOQL4YQkG7HxM0mj6Jgv8bJtd5K3miVuqYYBn96kmP0nrU8QvaOhi0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fy2p+eHmaK3+9sb3OJjuNCih9NTfmjocP2PtJqMl9JM=;
 b=mAMUG1kcmTwTrvzWH2b18WwYgbEXQnHTr43kvTPwiDp8Vnh94X5YIltWqO6ORwjE8Zl8l/nJAN1pfSGCEsEekKx47jq9jEDUwM0zRlfwemZogX/Ub4Z1URiJ+clXcARYhcfPOW7lh2S8Yc+fXDtaFpvZfVNcnj2dLr2CkVbezQMj70LqhUH4zLrIPxEUu18XpE0LaClNZsQT03Dz4hLENKEC79afQy63beNkiHBm3lUwcYLDTsBxP+QiMZgXcFdfUUEUSVDO0ox0KsK2eCLFXkOk/ooSo6DXYSz0nSDjBgJJFFtlz6BL5MoFNxIcFvJEBat5BTQyvoiKlFDpycGMDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS0PR11MB7970.namprd11.prod.outlook.com (2603:10b6:8:121::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Mon, 6 Mar
 2023 20:20:15 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%9]) with mapi id 15.20.6156.027; Mon, 6 Mar 2023
 20:20:15 +0000
Date: Mon, 6 Mar 2023 15:20:11 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Message-ID: <ZAZK+0mtzebzDzka@intel.com>
References: <20230304161749.1420224-1-badal.nilawar@intel.com>
 <CY5PR11MB6211CAA5EF431A7486E94BF495B69@CY5PR11MB6211.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CY5PR11MB6211CAA5EF431A7486E94BF495B69@CY5PR11MB6211.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR13CA0212.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::7) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB7970:EE_
X-MS-Office365-Filtering-Correlation-Id: c9964a33-63fc-4999-7ea7-08db1e80322d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xYRHVb64e48BoLtEButtbm1lJKzmKiwsUbOXKLmrssUtDuFx7pUaHS59Zwgd68eaQn516cvrHjnTK1Ye8ZNjAXntFoAZZAwKaWIUG8cEIgnalI2fRktjku20Hs5Pv2PlAbTzCMRbMM/BeEVcFl04iHYkGwg2iIfjI84jnxB+DVxcUsGIGdzyZftxg1QCKUBO+FVkiLO0QFX95qtpD749OAfu3fJ7qWIXExyqraz+KwMsAi06c9HGqN2mKBvwHcMQF6xrPlzQmQRdmW0kwHXcPwHRu3EfSosUEQ0QfyJIP1+WbojLoDNrTO5UJKIl2ugmyukFSq9jvtxEKDqki2UZHpwn+zg1w+fJY/6W0yVP6OG71dfnDFJb8qsR0cRgb/4Zl0V83y3EfGZ6v8jzZ3urAUpnf9aFnHr07vjLq276KI8S6uBWl1eGidAoBxqs2GBOXSH+zsXuGB1DQfZSSKidSN/9jxrbVW3zx63AzOTMtiAnMhFJW1uZQ8fu6miOBZkbYCziXqMrhwahrvtZ1uFEDU/OkzuzFB5WwawPtNqqL6izxO4AliMN02wYXDL521A6mT9Ci5WvBOY7DEtmjoE0k7ElTyNfYTJbkSPBuvS2yQEQMaXBYgqLzqF1sDjurohN0LI/uc3DY2yLhu5DOBZX8eXp2faCR+o0K4P5FQ+l7fLVhdlCVzXPJP4ag/qJzCbr
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(136003)(396003)(39860400002)(376002)(346002)(451199018)(186003)(6666004)(38100700002)(66556008)(8936002)(66946007)(6862004)(8676002)(41300700001)(2906002)(5660300002)(15650500001)(66476007)(4326008)(82960400001)(478600001)(53546011)(107886003)(2616005)(44832011)(26005)(6512007)(6486002)(36756003)(316002)(54906003)(6636002)(37006003)(86362001)(83380400001)(6506007)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9V6yYTqf9P9xH5QJ3Y/XLxmD49812oXAShVbs3RXfjMy8wQMTgrd84a/WFXC?=
 =?us-ascii?Q?oDi+BScD9fj+s3vv6cVRD4gkkw7SuJmWFjSI14fsZXBXPWgpSiAsz4uuQaSu?=
 =?us-ascii?Q?Kkjzb+b/goFrsKkCFFuxqJRWItC8T61UlYp0A8+ji9i0XbdKwTSUP6Vf+FFO?=
 =?us-ascii?Q?Z/uy8IbYqW2ZUEEgREodQdwPprY5KAtfOF6wq8Y6/MC87Sd4TbDPCWF2p40K?=
 =?us-ascii?Q?kNKdukB6TWlCLA7mQSbMRzDw/ffLaX8rf5g7/veTWFhneJzm5ui5IkX6tePT?=
 =?us-ascii?Q?zbrcTiub9p7rT/03MNtRiVh2vvaKzsxxYLx0CAgQ8QOHqdYiMP9ODL+0rbxB?=
 =?us-ascii?Q?7XmtzlX81oIUPrCPLaS0Bk00A808+1ymxWUWVQCrxKflVBPTjtcs72fjp7IH?=
 =?us-ascii?Q?pYURi39KzDN0Dt+aNKeVnSySprNwz2t5c25eQ7ul5CdzWIPg8lhfLaEKLCNN?=
 =?us-ascii?Q?Dw6aLHv9TK6kloPOB/DK8DQNfLmLQ39lihKLGgZ6I91q5FLZcZ8wkN2YB86d?=
 =?us-ascii?Q?ffKCx+5vIng48+fvWfXgRDhvjE4iVYAXdD5vWKvosD/iH7ipyJHHdMP+QAA/?=
 =?us-ascii?Q?gO3hjHUtTCADdkpB3j3s/iL+yaCtSNg2afdD/ZMKYocovE+aQdGKmSx9dNX1?=
 =?us-ascii?Q?vhAe+xtSjWqcj/LNWw7RsTGxpwbDZ50Rypti40i4l5kXQfUgjx7h6cOGGI2B?=
 =?us-ascii?Q?52DqhTPo2cu5qt4fu6yQGvbVQfty7XCqyOPrK71cdPvooM7j3ZU+mIBRJhEC?=
 =?us-ascii?Q?ZSzZuSUW0z4VN/8SkyA/qMT+TXQKbCQVM0wEeG13oDdSHfM8vEe+twr25mF7?=
 =?us-ascii?Q?Q6IAkbVbEX5ys62Mk88zXv9bveJ0qfgMb0qI2KUbH2J5Afajsn8ysaRHuQWs?=
 =?us-ascii?Q?0MteSju5FnsEgeWsJf5AkxPFpPrXncAty2u/vNCteum80aoR53qo43UgUgJN?=
 =?us-ascii?Q?+yU50jj2EcVgW4plUXC3jpGApk47IOBjd6W61BsElOQUiRzoRHBgxBqDMyiQ?=
 =?us-ascii?Q?xVuLNrFd9hycvuFrMlX6mmtn9SHLjwMtmYCGdULgMJt94w0H6Lr+xLXDAjhY?=
 =?us-ascii?Q?J5Piwis5Sx3tAyk2qzFGyxu97Ay4Rzf4r8KSHBn18L4Hc7fe5Njdv8HqdWy0?=
 =?us-ascii?Q?2F+i0GfrxYwYmrgBt4ZuolkRsF7N6gbTTXLn/hsYJrzwr2FvCkkozp2ly2ld?=
 =?us-ascii?Q?DVgJBndT5ZZjYT91UG75/TAnaMsJYyUby2tdRnqaI1EA3kzT+znGOuts4cOV?=
 =?us-ascii?Q?BDM9xCFQZo/gqYIKDqnqSeaZVjiMBdCzXWFAk7Kz5XG+BPWCVR+uisXb1Kpr?=
 =?us-ascii?Q?y0SYCxHpOak4/KvUgpEBLhY6E6TSp8nSpAb3olwFcfe0UPPeJUSr4PmsOmDt?=
 =?us-ascii?Q?Df6ScqEQRYsJhhU0GpYj/Ic45OEUvfwH9AqdnFaj/mTKZZY6VhfxBM/essRs?=
 =?us-ascii?Q?3IFQCfz6p7CsiBskkoeuLpmGvqbgVMOK3ZxDmMUf1l3IaGcpNSdS/3qXFQZb?=
 =?us-ascii?Q?zvigZRND94vHY4RhWGwhBdcSVLCGLflJhhJArf4tMxCaRelBbCm6gd0/Utmw?=
 =?us-ascii?Q?uDMiguJ6H/8JREkhWiPefTZEybX6TiMF6spHE1UWoM1lJDyI6PnD3SfsJPGq?=
 =?us-ascii?Q?jQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c9964a33-63fc-4999-7ea7-08db1e80322d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2023 20:20:15.2983 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KYQQJosYGyt9RKFjsHpN/XZoH24CM9jmSzC6b7NTnTsyZ9Zy9HtwLd5iH0/VeP3ynGwG7O5cBwg134SSiebe1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7970
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Extend Wa_14017073508 in
 suspend/resume flow
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 06, 2023 at 08:33:04AM +0000, Gupta, Anshuman wrote:
> 
> 
> > -----Original Message-----
> > From: Nilawar, Badal <badal.nilawar@intel.com>
> > Sent: Saturday, March 4, 2023 9:48 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; Ewins, Jon
> > <jon.ewins@intel.com>; Belgaumkar, Vinay <vinay.belgaumkar@intel.com>;
> > Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > Subject: [PATCH] drm/i915/mtl: Extend Wa_14017073508 in suspend/resume
> > flow
> > 
> > During suspend resume flow it was seen that lots forcewakes are taken and
> > released for media. So to avoid HANG due to MC6 entry/exit while accessing
> > media applied Wa_14017073508 in suspend/resume flow.
> We need to fix such gaps in runtime PM as well, but that will make this WA dirty somewhat similar to other RC6 related WA on other platforms. 
> I suggest to disable the MC6 rather on A step rather than having this form of WA. This WA is not needed on A step.
> @rodrigo and @matt what is you opinion here ?

My opinion since day-0 is that we should simply disable MC6 on A0 parts
and move on with this feature only on B0. Since the beginning it was
pretty clear that this workaround would get out of control and become
the same as the PVC-RC6 one.

> 
> However some comment her to improve this patch.
> 
> > 
> > Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_pm.c   |  6 ++++-
> >  drivers/gpu/drm/i915/gt/intel_gt_pm.c    | 32 ++++++++++++++++--------
> >  drivers/gpu/drm/i915/gt/intel_gt_pm.h    |  3 +++
> >  drivers/gpu/drm/i915/gt/intel_gt_types.h |  1 +
> >  drivers/gpu/drm/i915/i915_driver.c       | 32 ++++++++++++++++++++++++
> >  5 files changed, 62 insertions(+), 12 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pm.c
> > b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
> > index 0d812f4d787d..60deac41104d 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_pm.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
> > @@ -160,8 +160,12 @@ void i915_gem_suspend_late(struct
> > drm_i915_private *i915)
> >  	 * machine in an unusable condition.
> >  	 */
> > 
> > -	for_each_gt(gt, i915, i)
> > +	for_each_gt(gt, i915, i) {
> > +		/* Wa_14017073508: mtl */
> > +		mtl_media_busy(gt);
> Let's add  these busy/idle in intel_gt_suspend_late()
> >  		intel_gt_suspend_late(gt);
> > +		mtl_media_idle(gt);
> > +	}
> > 
> >  	spin_lock_irqsave(&i915->mm.obj_lock, flags);
> >  	for (phase = phases; *phase; phase++) { diff --git
> > a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> > b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> > index cef3d6f5c34e..1f3bf1cf0421 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> > @@ -26,24 +26,34 @@
> > 
> >  #define I915_GT_SUSPEND_IDLE_TIMEOUT (HZ / 2)
> > 
> > -static void mtl_media_busy(struct intel_gt *gt)
> > +void mtl_media_busy(struct intel_gt *gt)
> >  {
> >  	/* Wa_14017073508: mtl */
> > -	if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
> > +	if (gt && IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)
> > &&
> >  	    gt->type == GT_MEDIA)
> Let's have this in a separate patch , I believe that is already floated and ready to merge. 
> > -		snb_pcode_write_p(gt->uncore, PCODE_MBOX_GT_STATE,
> > -				  PCODE_MBOX_GT_STATE_MEDIA_BUSY,
> > -
> > PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
> > +		if (!atomic_inc_not_zero(&gt->media_wakeref)) {
> > +			drm_err(&gt->i915->drm, "Media busy\n");
> This should not be Error message.
> > +			snb_pcode_write_p(gt->uncore,
> > PCODE_MBOX_GT_STATE,
> > +
> > PCODE_MBOX_GT_STATE_MEDIA_BUSY,
> > +
> > PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
> > +			atomic_inc(&gt->media_wakeref);
> > +		}
> >  }
> > 
> > -static void mtl_media_idle(struct intel_gt *gt)
> > +void mtl_media_idle(struct intel_gt *gt)
> >  {
> >  	/* Wa_14017073508: mtl */
> > -	if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
> > -	    gt->type == GT_MEDIA)
> > -		snb_pcode_write_p(gt->uncore, PCODE_MBOX_GT_STATE,
> > -
> > PCODE_MBOX_GT_STATE_MEDIA_NOT_BUSY,
> > -
> > PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
> > +	if (gt && IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)
> > &&
> > +	    gt->type == GT_MEDIA) {
> > +		WARN_ON(atomic_read(&gt->media_wakeref) <= 0);
> > +		if (!atomic_add_unless(&gt->media_wakeref, -1, 1)) {
> > +			drm_err(&gt->i915->drm, "Media idle\n");
> Same here this can't be error message.
> Thanks,
> Anshuman Gupta.
> > +			snb_pcode_write_p(gt->uncore,
> > PCODE_MBOX_GT_STATE,
> > +
> > PCODE_MBOX_GT_STATE_MEDIA_NOT_BUSY,
> > +
> > PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
> > +			atomic_dec(&gt->media_wakeref);
> > +		}
> > +	}
> >  }
> > 
> >  static void user_forcewake(struct intel_gt *gt, bool suspend) diff --git
> > a/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> > b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> > index 6c9a46452364..43ffabf9babe 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> > @@ -89,4 +89,7 @@ static inline bool is_mock_gt(const struct intel_gt *gt)
> >  	return I915_SELFTEST_ONLY(gt->awake == -ENODEV);  }
> > 
> > +void mtl_media_busy(struct intel_gt *gt); void mtl_media_idle(struct
> > +intel_gt *gt);
> > +
> >  #endif /* INTEL_GT_PM_H */
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > index f08c2556aa25..321ccfef4028 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > @@ -145,6 +145,7 @@ struct intel_gt {
> > 
> >  	struct intel_wakeref wakeref;
> >  	atomic_t user_wakeref;
> > +	atomic_t media_wakeref;
> > 
> >  	struct list_head closed_vma;
> >  	spinlock_t closed_lock; /* guards the list of closed_vma */ diff --git
> > a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > index 8bc76dede332..c7625ea28022 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -327,6 +327,8 @@ static int i915_driver_mmio_probe(struct
> > drm_i915_private *dev_priv)
> >  	intel_gmch_bar_setup(dev_priv);
> >  	intel_device_info_runtime_init(dev_priv);
> > 
> > +	/* Wa_14017073508: mtl */
> > +	mtl_media_busy(dev_priv->media_gt);
> >  	for_each_gt(gt, dev_priv, i) {
> >  		ret = intel_gt_init_mmio(gt);
> >  		if (ret)
> > @@ -335,10 +337,14 @@ static int i915_driver_mmio_probe(struct
> > drm_i915_private *dev_priv)
> > 
> >  	/* As early as possible, scrub existing GPU state before clobbering */
> >  	sanitize_gpu(dev_priv);
> > +	/* Wa_14017073508: mtl */
> > +	mtl_media_idle(dev_priv->media_gt);
> > 
> >  	return 0;
> > 
> >  err_uncore:
> > +	/* Wa_14017073508: mtl */
> > +	mtl_media_idle(dev_priv->media_gt);
> >  	intel_gmch_bar_teardown(dev_priv);
> > 
> >  	return ret;
> > @@ -781,6 +787,12 @@ int i915_driver_probe(struct pci_dev *pdev, const
> > struct pci_device_id *ent)
> >  	if (ret < 0)
> >  		goto out_tiles_cleanup;
> > 
> > +	/* Wa_14017073508: mtl */
> > +	if (i915->media_gt) {
> > +		atomic_set(&i915->media_gt->media_wakeref, 0);
> > +		mtl_media_busy(i915->media_gt);
> > +	}
> > +
> >  	ret = i915_driver_hw_probe(i915);
> >  	if (ret < 0)
> >  		goto out_cleanup_mmio;
> > @@ -838,6 +850,8 @@ int i915_driver_probe(struct pci_dev *pdev, const
> > struct pci_device_id *ent)
> >  	i915_gem_drain_freed_objects(i915);
> >  	i915_ggtt_driver_late_release(i915);
> >  out_cleanup_mmio:
> > +	/* Wa_14017073508: mtl */
> > +	mtl_media_idle(i915->media_gt);
> >  	i915_driver_mmio_release(i915);
> >  out_tiles_cleanup:
> >  	intel_gt_release_all(i915);
> > @@ -1063,6 +1077,9 @@ static int i915_drm_suspend(struct drm_device
> > *dev)
> > 
> >  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> > 
> > +	/* Wa_14017073508: mtl */
> > +	mtl_media_busy(dev_priv->media_gt);
> > +
> >  	/* We do a lot of poking in a lot of registers, make sure they work
> >  	 * properly. */
> >  	intel_power_domains_disable(dev_priv);
> > @@ -1097,6 +1114,9 @@ static int i915_drm_suspend(struct drm_device
> > *dev)
> > 
> >  	intel_dmc_suspend(dev_priv);
> > 
> > +	/* Wa_14017073508: mtl */
> > +	mtl_media_busy(dev_priv->media_gt);
> > +
> >  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> > 
> >  	i915_gem_drain_freed_objects(dev_priv);
> > @@ -1197,6 +1217,9 @@ static int i915_drm_resume(struct drm_device
> > *dev)
> > 
> >  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> > 
> > +	/* Wa_14017073508: mtl */
> > +	mtl_media_busy(dev_priv->media_gt);
> > +
> >  	ret = i915_pcode_init(dev_priv);
> >  	if (ret)
> >  		return ret;
> > @@ -1260,6 +1283,9 @@ static int i915_drm_resume(struct drm_device
> > *dev)
> > 
> >  	intel_gvt_resume(dev_priv);
> > 
> > +	/* Wa_14017073508: mtl */
> > +	mtl_media_idle(dev_priv->media_gt);
> > +
> >  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> > 
> >  	return 0;
> > @@ -1319,6 +1345,9 @@ static int i915_drm_resume_early(struct
> > drm_device *dev)
> > 
> >  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> > 
> > +	/* Wa_14017073508: mtl */
> > +	mtl_media_busy(dev_priv->media_gt);
> > +
> >  	ret = vlv_resume_prepare(dev_priv, false);
> >  	if (ret)
> >  		drm_err(&dev_priv->drm,
> > @@ -1333,6 +1362,9 @@ static int i915_drm_resume_early(struct
> > drm_device *dev)
> > 
> >  	intel_power_domains_resume(dev_priv);
> > 
> > +	/* Wa_14017073508: mtl */
> > +	mtl_media_idle(dev_priv->media_gt);
> > +
> >  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> > 
> >  	return ret;
> > --
> > 2.25.1
> 
