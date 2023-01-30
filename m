Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C986816BE
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 17:44:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D70D10E0A2;
	Mon, 30 Jan 2023 16:44:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F4EF10E0A2
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 16:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675097073; x=1706633073;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=cqB2bySWP4w0BElq+/bppfg9V9OWEshmrBpYdxqdgmo=;
 b=Nu6jQPNqgxZeiQW57+o2Kb2uhMVD4eqyFcV6GZ5WrsNoxibU8EQVHfYF
 hrZv8jlounzIi5ZPZQez9tay1VPzykKLSt52hcSPJyokB4Fqn+9h5icFe
 +4WTmUNICznuV3YhROo/WN5CGNeea1KTIUmO8M6RZPAJTzbOi2zojD0gz
 P/msBGqnT5LaEljmcE34u++5+G7eDxzjl5c5CQmdMO61LiIhcvPy4GmLe
 KMWlg0k8hokt0wz90AVd/v3ShURVMgr78n95YX8Xd0wxtrGJ8i+XVFmkV
 PZ06lFTW3AnoCjTVKtBrSd7JiR3/toKmyZofU7LymlV05jpn3r6MLzqWP w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="328884041"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="328884041"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 08:42:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="657525105"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="657525105"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 30 Jan 2023 08:42:47 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 08:42:47 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 30 Jan 2023 08:42:47 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 30 Jan 2023 08:42:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZfFQn3AQjlp4N3wExQ1ihMjx948qCwXSXQ489PlOn413xR3UF4hWjImkqoDFHdUqpzoWUUi9Q4brd/VWyW6wu1TnvPA7d0V6flGOOvnb2vlm4HqwW2aCe/LLy5h6EGk/oljf06F+eY16uRX5BOxnlcHWhIdnFxrH5JeIsUhPbLs3fhFSB5FS5ou77WTiUb7mjvIHydpGmXprE44E1Ol2UxS3yw7rbaD3w4nTek4Xgx5FnS0YlVVEQeusUl20AsrMYeH95j07Y37P9jgJL+o8oEex9OinmIRAVNvBXeOtyOYFsJ+tIjgHhLTAsY6kRkt4NWMys4F8IRrcmGyHKtCCVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kXSW7ASuJv7k7nzmpdy2Bn1XNXOTBGIrjxk4GumTtFw=;
 b=Nko8zOwbQ823n3eSWnmL3uR53Gt2KC+/Bd2pSEQ9AXq9Nml6arhvG3GOkg3vncVDTe1Ahz6g6CO9vPXQiCHAP1zmf+VmqgvSjcvZ1+V7H3B/8rKDyP/OBLk2r/tJxdZDTGWa0+Xfa1FKOHOuHgnWVI9xuPsVAAyz0w/nJScKAKx0Odt1kDBfEcuvNv0Y7jtNwT++THjr9LrQvyaaJrEV/bqKSSXSiesDpIRbFmop+UFe6PEOXO83rcIFB/h5sIiQatZTLyZhHoEW4gBOUUtekLpXHrvrbIChXnCcp4VfFybHLVbrZbl81caDqJRG0VQ5zhvmH6rI2wk5bSFtNq0CXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB6835.namprd11.prod.outlook.com (2603:10b6:510:1ee::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36; Mon, 30 Jan
 2023 16:42:45 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6043.036; Mon, 30 Jan 2023
 16:42:45 +0000
Date: Mon, 30 Jan 2023 11:42:41 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <Y9fzgUmW3aWA36iX@intel.com>
References: <20230127224313.4042331-1-matthew.d.roper@intel.com>
 <20230127224313.4042331-2-matthew.d.roper@intel.com>
 <Y9fmSL8b4+fzRGiJ@intel.com>
 <Y9fnl5Q845+QTFjm@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Y9fnl5Q845+QTFjm@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BYAPR06CA0068.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::45) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB6835:EE_
X-MS-Office365-Filtering-Correlation-Id: eb8b78eb-9c80-40a2-3bc7-08db02e10330
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0Eds9HhAyWD4Ca7nJw3RsnWnhj8lfzHC2zHIvRIQzYXOLCfA2d0SCc47MyNliO20m0omIPjHOjvP/0Q3O93vvTsLpWR2qfBS92coarm65yBG9xE/pkz/vtZYyWbsLTLuTM6RqeNVdwWUKEY8Y6JgzWCfBK9Mm5Zfrr/1uBWa6LaFnGIHTc9QglDrZp5tUAzEXOEcgv0vxPiv56oFVFu/ycL8k6OYPIGpnzhaEFK5c5g5sZyVvBY71Kg02wcmysEz6An7PoQOZ8PJmVB2RRlIPlqsyQ2EmjjXskCcx7SfRBH50tI8HN1ONP8nkStuttxkDKTJSMueHjvZ7PpbK3NFc53pqZOaykAPtruHibcA1uEOGOxddxdE2S+tFyVnDJJOJXvC/ce+6NqB/dE3UwXvedkPC5gcBou7ffDou5xsihSpbM5qYJ7wv+myUBr5suTZdPPiSRNo0biacdidxNItD/ZfAZ5bewHRtTHd6Dqt44hG/3pFiQzCaunPMZ6GKY/Vc3CBferrSE7ePWKRMLQ0QU6WrPOLHcYWqTH1IE58nlEWl5jz3NfB+A2j4tT0WCEJV7fGfVNfuCSaj3MUUqQlFKpco6Q2T6F/ajp8GHAfcy2YgxhMkrfiMAlyklBpcQH2SPWf8t+fmR3TIRjX3FJCbQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(136003)(396003)(376002)(39860400002)(346002)(451199018)(2906002)(5660300002)(86362001)(44832011)(82960400001)(83380400001)(6862004)(8936002)(30864003)(41300700001)(36756003)(478600001)(6486002)(26005)(6666004)(6512007)(186003)(6506007)(2616005)(4326008)(66476007)(66946007)(38100700002)(8676002)(66556008)(6636002)(37006003)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pG9RQn/08sw4iGiusFTOMshaTTHwK8v05bJ0I8PlUdGPZR28C2UlVUDM0e0C?=
 =?us-ascii?Q?Acs+XUF1i2Xd36Vqfkjes383ByG5AAItrz1qWCblEYUKKC+cMBRBVBSt96xd?=
 =?us-ascii?Q?GYu0XUFora03MzyViI5S8D54H7ZchNGwq3Ubzg+kr85tvt912Coh3IQcuQJu?=
 =?us-ascii?Q?uaE3Vqz3mkL8yWyzSmvqnHUbBHYle8D+EPTpBotDXKwyxa2fVDLrGKMsfeVU?=
 =?us-ascii?Q?Ce5G3r4OnUbXHhJttMGVLnzBvvRRNDtVmvNekF06vU7gXLVzXUbhg0ZZvwGP?=
 =?us-ascii?Q?k8nhmNOit17FKYaE8uwI2rxGk20+6KO5CVFy7GUviDppeOWd2wdGg7qgeI7q?=
 =?us-ascii?Q?8dYAWm8goyvR9UGvX4Q6zc7IcZy4P0hqTB0h7NuAexnmiG1lTg0uAMJrl6xe?=
 =?us-ascii?Q?+CU16tMZyW6Er4twVc0FCDLUzp68khW2E8V2Etaqcm3zVdlwUEn+Y5NGOCP6?=
 =?us-ascii?Q?SYM2p+kDdNtixKNeIJsFhkKL+cQDDJIyT+VeTA7hhekl6MR8aS4KAtG/d81K?=
 =?us-ascii?Q?V9gETucshQUhJkvIif/NIQtamv1SKVQDnLZhPjuXrv5E+PAV/+lgFiEqHlCZ?=
 =?us-ascii?Q?2chmBtYpl07Bc8ACdKkeLVu+HI5EAJbbGv/S1iGTcsdn5MvcLjl5rQMhydtT?=
 =?us-ascii?Q?vl9YzOxdWl42BNWjU792ZmWPfVAVj9lZq201aYJ/9zmXqAAHcVei4lK5y1g0?=
 =?us-ascii?Q?TkuJIJ4XzoJfBOTIRYKTRwd51KSW2DqU+c+iXkhhwCEmQSuFMpRg24Qfb88h?=
 =?us-ascii?Q?iEdKb5Xu52ZBlCmG3kxVksBU2uN9vyzwP0R0GOb9VGwq4A+zMdGGtE4y0OWn?=
 =?us-ascii?Q?+2FflMTqzOGHGCFToaLbkOv7GOjEYa+NsUlSmDXkoS3SocgzQeWmZOi4m7oK?=
 =?us-ascii?Q?YjWBg0kw5EzmVMoMdoRarNk3wE2zp39TJrMr3ekeVnZrYU18noMRkuhYy5Dy?=
 =?us-ascii?Q?Z2pIeIOlpEnMZzwepOzYiIdrTnHnoScj3d3PS3fB5tupPuHegL255HYSsb3l?=
 =?us-ascii?Q?F1lti5tpH3wNK67IyaCAfp6w1IZdHtg/YarhXHskjrm4ifzlnye67P2Bj8mh?=
 =?us-ascii?Q?bXengYTkSo6jaUk9Alx8GEULd1YSQ2g8QsMVCSTByGdGdSTp92Rg9QHv0Zzq?=
 =?us-ascii?Q?BiddSm6PolLaKzEi4c0VOsAjIlMLERCmZpNEiiPAshBvkjo5PHbb6ontfPMX?=
 =?us-ascii?Q?HD7FJR5ewfY2OfQiPv+tAN91s3PvIa91xD2d+TBI+psulhGuigLJy9aG7V2M?=
 =?us-ascii?Q?L7QhObjCZgIiu0xetMJHhmL6OghqGURy+d8J85OvnkcWCn9icLXOFUJykwqy?=
 =?us-ascii?Q?VLGEUWNrPnuesAiH0lwuU2ujLq3SC52pOuCLO5h/SXzKMTqz5M5TtdaB0sKb?=
 =?us-ascii?Q?8K4sOqE+cjLNGAj/tl3EimxKlQqmJ4u72e08OrmJ5X6szL6YXqVV38uHwN6a?=
 =?us-ascii?Q?mkawgnXSikFDvcsULtgmQFXa753Sa4MIxwuZ5M/9KK2vh7+SnizL44bbzeKo?=
 =?us-ascii?Q?vegHunLcJGZah9mt9Ocu/zk5wGj3rVjMsabqOaNq508tXMiUc7rSqRQni/eB?=
 =?us-ascii?Q?zLYhf1x3WkjCZqrRcm+1b3y2TFGK8Qpaw+gVcnB3jFi2Abj2DfZM7g0hwwqn?=
 =?us-ascii?Q?Gw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eb8b78eb-9c80-40a2-3bc7-08db02e10330
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2023 16:42:45.3239 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v4d5pInNQnSRuhdWxm+n8CLw1WwPrOCh1RvqG6KSQuvjc+dBjQ11lR6XxwsL/mJ+MlX+ii/VtAC10GYjGkzWQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6835
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/tgl: Drop support for
 pre-production steppings
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 30, 2023 at 07:51:51AM -0800, Matt Roper wrote:
> On Mon, Jan 30, 2023 at 10:46:16AM -0500, Rodrigo Vivi wrote:
> > On Fri, Jan 27, 2023 at 02:43:11PM -0800, Matt Roper wrote:
> > > Several post-TGL platforms have been brought up now, so we're well past
> > > the point where we usually drop the workarounds that are only applicable
> > > to internal/pre-production hardware.
> > > 
> > > Production TGL hardware always has display stepping C0 or later and GT
> > > stepping B0 or later (this is true for both the original TGL and the U/Y
> > > subplatform).
> > > 
> > > Bspec 44455
> > > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > > ---
> > >  .../drm/i915/display/intel_display_power.c    |  5 +--
> > >  drivers/gpu/drm/i915/display/intel_psr.c      | 26 -----------
> > >  .../drm/i915/display/skl_universal_plane.c    |  2 +-
> > >  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 44 ++-----------------
> > >  drivers/gpu/drm/i915/i915_driver.c            |  1 +
> > >  drivers/gpu/drm/i915/i915_drv.h               |  8 ----
> > >  drivers/gpu/drm/i915/intel_pm.c               |  4 --
> > >  7 files changed, 7 insertions(+), 83 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > index 1a23ecd4623a..1dc31f0f5e0a 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > @@ -1581,9 +1581,8 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
> > >  
> > >  	if (IS_ALDERLAKE_S(dev_priv) ||
> > >  	    IS_DG1_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> > > -	    IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> > > -	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0))
> > > -		/* Wa_1409767108:tgl,dg1,adl-s */
> > > +	    IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > 
> > I believe we should go ahead and also remove the RKL ones like this.
> > After all we have ADL and MTL and none needed this for instance.
> 
> Do we know for sure that A0 RKL wasn't productized?  I can't find the
> details about which stepping(s) were pre-prod-only in the bspec, so I've
> left RKL and ADL workarounds alone for the time being.

Very good point. However this point may be against this patch,
or at least part of it, since there are some TGL GT2 B0
not marked as pre-production.

> 
> 
> Matt
> 
> > 
> > > +		/* Wa_1409767108 */
> > >  		table = wa_1409767108_buddy_page_masks;
> > >  	else
> > >  		table = tgl_buddy_page_masks;
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> > > index 7d4a15a283a0..5dca58dd97a9 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > @@ -591,12 +591,6 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
> > >  	if (intel_dp->psr.psr2_sel_fetch_enabled) {
> > >  		u32 tmp;
> > >  
> > > -		/* Wa_1408330847 */
> > > -		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > > -			intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
> > > -				     DIS_RAM_BYPASS_PSR2_MAN_TRACK,
> > > -				     DIS_RAM_BYPASS_PSR2_MAN_TRACK);
> > > -
> > >  		tmp = intel_de_read(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder));
> > >  		drm_WARN_ON(&dev_priv->drm, !(tmp & PSR2_MAN_TRK_CTL_ENABLE));
> > >  	} else if (HAS_PSR2_SEL_FETCH(dev_priv)) {
> > > @@ -765,13 +759,6 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
> > >  		return false;
> > >  	}
> > >  
> > > -	/* Wa_14010254185 Wa_14010103792 */
> > > -	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
> > > -		drm_dbg_kms(&dev_priv->drm,
> > > -			    "PSR2 sel fetch not enabled, missing the implementation of WAs\n");
> > > -		return false;
> > > -	}
> > > -
> > >  	return crtc_state->enable_psr2_sel_fetch = true;
> > >  }
> > >  
> > > @@ -945,13 +932,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
> > >  		}
> > >  	}
> > >  
> > > -	/* Wa_2209313811 */
> > > -	if (!crtc_state->enable_psr2_sel_fetch &&
> > > -	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
> > > -		drm_dbg_kms(&dev_priv->drm, "PSR2 HW tracking is not supported this Display stepping\n");
> > > -		goto unsupported;
> > > -	}
> > > -
> > >  	if (!psr2_granularity_check(intel_dp, crtc_state)) {
> > >  		drm_dbg_kms(&dev_priv->drm, "PSR2 not enabled, SU granularity not compatible\n");
> > >  		goto unsupported;
> > > @@ -1360,12 +1340,6 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
> > >  	intel_psr_exit(intel_dp);
> > >  	intel_psr_wait_exit_locked(intel_dp);
> > >  
> > > -	/* Wa_1408330847 */
> > > -	if (intel_dp->psr.psr2_sel_fetch_enabled &&
> > > -	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > > -		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
> > > -			     DIS_RAM_BYPASS_PSR2_MAN_TRACK, 0);
> > > -
> > >  	/*
> > >  	 * Wa_16013835468
> > >  	 * Wa_14015648006
> > > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > index 9b172a1e90de..e956edb87398 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > @@ -2180,7 +2180,7 @@ static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
> > >  	if (DISPLAY_VER(i915) < 12)
> > >  		return false;
> > >  
> > > -	/* Wa_14010477008:tgl[a0..c0],rkl[all],dg1[all] */
> > > +	/* Wa_14010477008 */
> > >  	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
> > >  	    IS_TGL_DISPLAY_STEP(i915, STEP_A0, STEP_D0))
> > >  		return false;
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > index 4efc1a532982..82a8f372bde6 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > @@ -1456,31 +1456,6 @@ gen12_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> > >  	wa_mcr_write_or(wal, GEN10_DFR_RATIO_EN_AND_CHICKEN, DFR_DISABLE);
> > >  }
> > >  
> > > -static void
> > > -tgl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> > > -{
> > > -	struct drm_i915_private *i915 = gt->i915;
> > > -
> > > -	gen12_gt_workarounds_init(gt, wal);
> > > -
> > > -	/* Wa_1409420604:tgl */
> > > -	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> > > -		wa_mcr_write_or(wal,
> > > -				SUBSLICE_UNIT_LEVEL_CLKGATE2,
> > > -				CPSSUNIT_CLKGATE_DIS);
> > > -
> > > -	/* Wa_1607087056:tgl also know as BUG:1409180338 */
> > > -	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> > > -		wa_write_or(wal,
> > > -			    GEN11_SLICE_UNIT_LEVEL_CLKGATE,
> > > -			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
> > > -
> > > -	/* Wa_1408615072:tgl[a0] */
> > > -	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> > > -		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
> > > -			    VSUNIT_CLKGATE_DIS_TGL);
> > > -}
> > > -
> > >  static void
> > >  dg1_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> > >  {
> > > @@ -1716,8 +1691,6 @@ gt_init_workarounds(struct intel_gt *gt, struct i915_wa_list *wal)
> > >  		xehpsdv_gt_workarounds_init(gt, wal);
> > >  	else if (IS_DG1(i915))
> > >  		dg1_gt_workarounds_init(gt, wal);
> > > -	else if (IS_TIGERLAKE(i915))
> > > -		tgl_gt_workarounds_init(gt, wal);
> > >  	else if (GRAPHICS_VER(i915) == 12)
> > >  		gen12_gt_workarounds_init(gt, wal);
> > >  	else if (GRAPHICS_VER(i915) == 11)
> > > @@ -2437,27 +2410,16 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> > >  			   true);
> > >  	}
> > >  
> > > -	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> > > -	    IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
> > > +	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
> > >  		/*
> > > -		 * Wa_1607138336:tgl[a0],dg1[a0]
> > > -		 * Wa_1607063988:tgl[a0],dg1[a0]
> > > +		 * Wa_1607138336
> > > +		 * Wa_1607063988
> > >  		 */
> > >  		wa_write_or(wal,
> > >  			    GEN9_CTX_PREEMPT_REG,
> > >  			    GEN12_DISABLE_POSH_BUSY_FF_DOP_CG);
> > >  	}
> > >  
> > > -	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
> > > -		/*
> > > -		 * Wa_1606679103:tgl
> > > -		 * (see also Wa_1606682166:icl)
> > > -		 */
> > > -		wa_write_or(wal,
> > > -			    GEN7_SARCHKMD,
> > > -			    GEN7_DISABLE_SAMPLER_PREFETCH);
> > > -	}
> > > -
> > >  	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) || IS_DG1(i915) ||
> > >  	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
> > >  		/* Wa_1606931601:tgl,rkl,dg1,adl-s,adl-p */
> > > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > > index cf1c0970ecb4..879ab4ed42af 100644
> > > --- a/drivers/gpu/drm/i915/i915_driver.c
> > > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > > @@ -167,6 +167,7 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
> > >  	pre |= IS_KABYLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
> > >  	pre |= IS_GEMINILAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x3;
> > >  	pre |= IS_ICELAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x7;
> > > +	pre |= IS_TIGERLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
> > >  
> > >  	if (pre) {
> > >  		drm_err(&dev_priv->drm, "This is a pre-production stepping. "
> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > > index 48c838b4ea62..62cc0f76c583 100644
> > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > @@ -653,14 +653,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> > >  	(IS_TIGERLAKE(__i915) && \
> > >  	 IS_DISPLAY_STEP(__i915, since, until))
> > >  
> > > -#define IS_TGL_UY_GRAPHICS_STEP(__i915, since, until) \
> > > -	(IS_TGL_UY(__i915) && \
> > > -	 IS_GRAPHICS_STEP(__i915, since, until))
> > > -
> > > -#define IS_TGL_GRAPHICS_STEP(__i915, since, until) \
> > > -	(IS_TIGERLAKE(__i915) && !IS_TGL_UY(__i915)) && \
> > > -	 IS_GRAPHICS_STEP(__i915, since, until))
> > > -
> > >  #define IS_RKL_DISPLAY_STEP(p, since, until) \
> > >  	(IS_ROCKETLAKE(p) && IS_DISPLAY_STEP(p, since, until))
> > >  
> > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > > index 3fc65bd12cc1..c6676f1a9c6f 100644
> > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > @@ -4336,10 +4336,6 @@ static void gen12lp_init_clock_gating(struct drm_i915_private *dev_priv)
> > >  		intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
> > >  				   DPFC_CHICKEN_COMP_DUMMY_PIXEL);
> > >  
> > > -	/* Wa_1409825376:tgl (pre-prod)*/
> > > -	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0))
> > > -		intel_uncore_rmw(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, 0, TGL_VRH_GATING_DIS);
> > > -
> > >  	/* Wa_14013723622:tgl,rkl,dg1,adl-s */
> > >  	if (DISPLAY_VER(dev_priv) == 12)
> > >  		intel_uncore_rmw(&dev_priv->uncore, CLKREQ_POLICY,
> > > -- 
> > > 2.39.1
> > > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
