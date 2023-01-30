Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 017CA681772
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 18:19:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCE7B10E064;
	Mon, 30 Jan 2023 17:19:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5512410E064
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 17:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675099170; x=1706635170;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=62ndVuSBoLyV1MxtOb2Wya0upQSK7KvA+9xdzcRjkQw=;
 b=eomxaMNXoA/CszDePIaGkEHHUe0l92A8GFCfS2Eo1ESTs33I9nMEhsX0
 zu+gdKWXx8ecvK7NT084OHZyb5t/1t+tfyOaGt09qZx8tx6lCOPDZnm70
 Eoe6vTD/s+pgY3EKOtnCSQMSq9b+TBrwuzimHsK4UKCy1B3Bvt7fD/9YD
 xFojSUNOgVfXAqMVGivl9c3PnX6+zZdK7oD5YUemE2k0WWUdQRpdPLV2T
 F115eyWsA925tXya6lOUTurIxB7EjJWlX/nZ2lb05D/+1XCFoEPOYd2dx
 znzIsmzpaSvhNIl0ArBva+QOVhD55h78wA8mvHJUe08s+6U29CWCobUz0 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="307963038"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="307963038"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 09:19:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="992971181"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="992971181"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 30 Jan 2023 09:19:14 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 09:19:14 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 09:19:13 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 30 Jan 2023 09:19:13 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 30 Jan 2023 09:19:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mDO3o32Ug1ddJAW4IUeiT2OZ0EgGicwQmEjYToGBOjS/bm7Qf0LZTkVgs9QC2njj5+oTwh3j7aS2xujrDdHISVCC4iMEWbiPuzvKFjU4H0+No66Ohhvc1ukWFRdpsqGax6aaVCWdBYYnDn6p4KxJzuV9USqod2xXF16FP6nkFW1Dfowwn8pE9J0Zcou1ybQLSKtoM+w2To5LlrLSPYTrOeVh0ufRaFqtH3SfBCoQef1UTTFsGRtgz2ESBMFPZmaCO6FXAr0c52KD8FvzhKTSzps9G4liOatcVFJSBSrQOF/RCM3WeAoUc41nBDu7xFZKzjwoAUN8dbuboG9jLhi/BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V4dNDfuICCrJRCcMc+g+6z7QhzdlG/WPhAHFIj3xrkw=;
 b=GJH2K4mqcQqMXMosZNodeZgTiFA6QbIXzyG2DOMTvbLmx8kd4SeHTN3Z7ErWC6vgraLv8IgnYtBaLKHNHmzbM9YMnPezKNbTL1uNiWZO5+QkQ19CG9WyJAJar6jIAMREv0zgP5lHdqa5PGDtyzvnKNZqBvYbz202OZ/AA8mpfDLf2ARvmc/hB3SJ9LuP122ULXKCu7jwcp6Zx54/Ubth5uCPYukhMc869NogSMTktmvjo0/HmLV8UZI3jq3Q+aesULTcUtutse9hycniMXdxMxPGP8Om9XWjDGPfc5+pCu4SdFn04PcIPnUtCW/FzLVXB3YJ6OS5JU2rh3w/46hiAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH0PR11MB7587.namprd11.prod.outlook.com (2603:10b6:510:26d::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36; Mon, 30 Jan
 2023 17:19:09 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6043.036; Mon, 30 Jan 2023
 17:19:09 +0000
Date: Mon, 30 Jan 2023 12:19:05 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <Y9f8CWYDtTIzqWFB@intel.com>
References: <20230127224313.4042331-1-matthew.d.roper@intel.com>
 <20230127224313.4042331-2-matthew.d.roper@intel.com>
 <Y9fmSL8b4+fzRGiJ@intel.com>
 <Y9fnl5Q845+QTFjm@mdroper-desk1.amr.corp.intel.com>
 <Y9fzgUmW3aWA36iX@intel.com>
 <Y9f4VdvS1wwZ3if5@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Y9f4VdvS1wwZ3if5@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BY3PR05CA0017.namprd05.prod.outlook.com
 (2603:10b6:a03:254::22) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH0PR11MB7587:EE_
X-MS-Office365-Filtering-Correlation-Id: e450a6f9-32a5-46c0-2748-08db02e6193d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b5u9OGRIyYYqWaI3DfZuXszYPxFOKfOdjALp6TLHWd1gx110SoBYefUVwV6nByvVTrI4lqCG4j83I9z6of5iGzEJ6Wosurst//Y5x1k4nPukOs5KC3Ix+0oGyz7rsutxdqTOhN6TMg4sIya//QziAxdQn5kjRQ1Zpdrdf1YhOvXKNIO42JyMxyasWJIklZ7VCifghNWx5g5x5tjdRYA7CC6nZPfOzu9L4MUHVUI9oKQJuVMfFYhwkGohPQkW7YStf+zBpvVOpuxWAfK+lWnmE+Gz81HpXvrRIfwIcJ5GsCF3hmpz1KnxLrqTY7KTHsNozvS3tCaYE0FbVagbp57IyhUbWYqasK+Ziy2Y0J+Icnz2UasfdpI+LFCqpmmY2R+ggvXS2uthY1ntCifJi2rR+GrkG9jm7H7XrNwR4etTN2SYXOBsF7+hyWUT3q43eugTFim0mjE/MXbwpazThY8kWsTQ/Df1Ic5HEz+aq+k3r9H7KFUKIIZfLSpL3GuMsmPeScC2quxDJMFk7e60TX3tfbkP/3/gRxWxly12a4vCWcjC95YrsfxASlCOXhdVxuCvorFiSPGTDFNZzjHHTfYRs5TjE48c6nDrXAU1RyAvbGo+2o0oYe1A1lHdIyPIjWsWGqCwaeXrAHmfJKBDZWZMzQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(396003)(346002)(366004)(39860400002)(376002)(451199018)(30864003)(5660300002)(8936002)(6862004)(41300700001)(44832011)(38100700002)(36756003)(82960400001)(86362001)(2906002)(37006003)(6636002)(4326008)(2616005)(478600001)(186003)(26005)(6486002)(6512007)(6506007)(316002)(8676002)(66476007)(66946007)(66556008)(83380400001)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SCieJhBhTmBqibMBYRGPu4HGvjUkuaOiiJrX8RJBFL9tOWu2Vo8jF9q/+UGJ?=
 =?us-ascii?Q?ntFFor1Lcr9Cno2Er+1Sdyb9AoFWljwHYzINyHzv69mRilxHCe4Wmozt05um?=
 =?us-ascii?Q?qKfNrMveI2gMvU4DIlhDeP4xUEQjwQaxV4D5xmYZwpj1BUfNN4rMdVRJal13?=
 =?us-ascii?Q?kGUwgpttqV/1I5SraFZDSmr3MirE9v9iobnivdMtyQDGhQ2HC9xuvD5nWaCA?=
 =?us-ascii?Q?U+s7NtqFrPbguYyO90u8cIpyfTrYVlR4skR+fv1CpBFD3jY7hYRsU+yEAdM3?=
 =?us-ascii?Q?n4w2VQUcnoUyEF0wDlAJK6js888msSjsIRFJb0QWfuDx9ZNBSedG+FAI0UlW?=
 =?us-ascii?Q?V1WqsZa2GoUTxbQ6gnROSuGHydI3UNbOzeugiy7zpD3h90+KJ3M7hZRuVnke?=
 =?us-ascii?Q?c12rgnWUG0PetX7KgXhzMfwsGrF/CxpmqzHKdWVDorNcuHFQbwaV2NOdBT8B?=
 =?us-ascii?Q?byAGJ5EhdQlhyh7YcPfAJlhwYzlen0qLSWIhJR8ZiSRNsjcMT2eCaGklcglf?=
 =?us-ascii?Q?8m10ueiK/x+W7upFatiASQ2mq6sn+ulZIV8JakF76jc8nD+ED8tMLerkdPKH?=
 =?us-ascii?Q?2f6Njv6URrlhNQD8puD3AK8Utvj7TEXLgOI2+2+eEjoBfKH2aIt1kA6lt2ZW?=
 =?us-ascii?Q?8UZiSgA/lRnOHOihBUwa1agx2ONyFBafhBe9hArBotANLOGQDWh/EDwJiYL8?=
 =?us-ascii?Q?afV44F0CiUlkz1Z2RAPrN2bKAxIzZu7XBqTMi7nFRwlRTYJ3SdVSANM3DToP?=
 =?us-ascii?Q?yr4wt9PvlW/ZY+bQnpNsmJqSa6gFaAgzEPuM1y268gJioKxP4U6DrS3Vpncp?=
 =?us-ascii?Q?J5Y5L/ZKfQZP6cY0hX2XWJkd4ZjwvKr5l12B5ADHG2xHO5AQzr144yNqXhIp?=
 =?us-ascii?Q?cppZs04nLw9E5GLKcszJ8mVzRVsSdbn/Eyv3UVOnmslTA3uyCUtFdcEF0b9k?=
 =?us-ascii?Q?zUnBA473K+NNI+iHAGKIpbK5Zp5vmyZFVjBUHjR/n/pCy4gY6FHNqggPjxE8?=
 =?us-ascii?Q?ZEx5u+x+OvKeQljIAyicini6Ofnz/Mp6ubvQ5GhxwVoxjtODbvAUKL+fzunz?=
 =?us-ascii?Q?fRuPD7iy6EPb58cTOaQmyXSu7Leerjd349WBXXAFcc/hmWOEj1v1M+CJx9C9?=
 =?us-ascii?Q?r3ZGlqNxApGDKsXyPFefcw/NAmtmhN2KeSkJW0xRBbjk3c6kTtCvKlFUOPQf?=
 =?us-ascii?Q?T4WkGytSjIRJzt9YXGPTJsuxCQEEQY+ycE4rNLEaVmmykZPAAJbWVCxYR+Es?=
 =?us-ascii?Q?jJVLpOaKO3s5Ibe7ceUViAetIDqIia/uI29Fpt1/yQujAavxWbgcU7iVc30S?=
 =?us-ascii?Q?kasO/3Nv1VrdY5KxlQ0cYL6P+8hzNPnK2ZzIBNRpshd6pDT47+ZJiuNWfNeH?=
 =?us-ascii?Q?cholmQ/R3QD8KcT9Wwc1jE7vrL568XuAmQDaFULi8ZC1UR1D02P/K+MwHiak?=
 =?us-ascii?Q?qU7b4Et5uvfp74/Wl++G//zz4DgvLzN3YvnMRptzKHGQ5kEVE6rlQchiIJym?=
 =?us-ascii?Q?iXytwbEqCNZrz1gETd80RIZReCuMfD0CTV+ZVA3XvZMvzfxse8Cqy30oFHa9?=
 =?us-ascii?Q?rCiM5mUkcGzKVPf49JlZhEO1nTP6aigYlDqbjtRY4afznTNyrUshWzyJvueR?=
 =?us-ascii?Q?0w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e450a6f9-32a5-46c0-2748-08db02e6193d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2023 17:19:09.6134 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Uwtji6KBVRuzRn0roykBKYMMwQ2dyigkVZ1OGEogcQEB40TCN8ot2sUD5KY5CWLi3Zr4uTm2+L6HBnS20Iv7YA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7587
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

On Mon, Jan 30, 2023 at 09:03:17AM -0800, Matt Roper wrote:
> On Mon, Jan 30, 2023 at 11:42:41AM -0500, Rodrigo Vivi wrote:
> > On Mon, Jan 30, 2023 at 07:51:51AM -0800, Matt Roper wrote:
> > > On Mon, Jan 30, 2023 at 10:46:16AM -0500, Rodrigo Vivi wrote:
> > > > On Fri, Jan 27, 2023 at 02:43:11PM -0800, Matt Roper wrote:
> > > > > Several post-TGL platforms have been brought up now, so we're well past
> > > > > the point where we usually drop the workarounds that are only applicable
> > > > > to internal/pre-production hardware.
> > > > > 
> > > > > Production TGL hardware always has display stepping C0 or later and GT
> > > > > stepping B0 or later (this is true for both the original TGL and the U/Y
> > > > > subplatform).
> > > > > 
> > > > > Bspec 44455
> > > > > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > > > > ---
> > > > >  .../drm/i915/display/intel_display_power.c    |  5 +--
> > > > >  drivers/gpu/drm/i915/display/intel_psr.c      | 26 -----------
> > > > >  .../drm/i915/display/skl_universal_plane.c    |  2 +-
> > > > >  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 44 ++-----------------
> > > > >  drivers/gpu/drm/i915/i915_driver.c            |  1 +
> > > > >  drivers/gpu/drm/i915/i915_drv.h               |  8 ----
> > > > >  drivers/gpu/drm/i915/intel_pm.c               |  4 --
> > > > >  7 files changed, 7 insertions(+), 83 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > > > index 1a23ecd4623a..1dc31f0f5e0a 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > > > @@ -1581,9 +1581,8 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
> > > > >  
> > > > >  	if (IS_ALDERLAKE_S(dev_priv) ||
> > > > >  	    IS_DG1_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> > > > > -	    IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> > > > > -	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0))
> > > > > -		/* Wa_1409767108:tgl,dg1,adl-s */
> > > > > +	    IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > > > 
> > > > I believe we should go ahead and also remove the RKL ones like this.
> > > > After all we have ADL and MTL and none needed this for instance.
> > > 
> > > Do we know for sure that A0 RKL wasn't productized?  I can't find the
> > > details about which stepping(s) were pre-prod-only in the bspec, so I've
> > > left RKL and ADL workarounds alone for the time being.
> > 
> > Very good point. However this point may be against this patch,
> > or at least part of it, since there are some TGL GT2 B0
> > not marked as pre-production.
> 
> The CPU, GT, and display stepping are all independent of each other.
> According to bspec 44455, all production steppings of TGL have either
> display stepping C0 or D0.

oh, indeed!

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> 
> 
> Matt
> 
> > 
> > > 
> > > 
> > > Matt
> > > 
> > > > 
> > > > > +		/* Wa_1409767108 */
> > > > >  		table = wa_1409767108_buddy_page_masks;
> > > > >  	else
> > > > >  		table = tgl_buddy_page_masks;
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> > > > > index 7d4a15a283a0..5dca58dd97a9 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > > > @@ -591,12 +591,6 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
> > > > >  	if (intel_dp->psr.psr2_sel_fetch_enabled) {
> > > > >  		u32 tmp;
> > > > >  
> > > > > -		/* Wa_1408330847 */
> > > > > -		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > > > > -			intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
> > > > > -				     DIS_RAM_BYPASS_PSR2_MAN_TRACK,
> > > > > -				     DIS_RAM_BYPASS_PSR2_MAN_TRACK);
> > > > > -
> > > > >  		tmp = intel_de_read(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder));
> > > > >  		drm_WARN_ON(&dev_priv->drm, !(tmp & PSR2_MAN_TRK_CTL_ENABLE));
> > > > >  	} else if (HAS_PSR2_SEL_FETCH(dev_priv)) {
> > > > > @@ -765,13 +759,6 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
> > > > >  		return false;
> > > > >  	}
> > > > >  
> > > > > -	/* Wa_14010254185 Wa_14010103792 */
> > > > > -	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
> > > > > -		drm_dbg_kms(&dev_priv->drm,
> > > > > -			    "PSR2 sel fetch not enabled, missing the implementation of WAs\n");
> > > > > -		return false;
> > > > > -	}
> > > > > -
> > > > >  	return crtc_state->enable_psr2_sel_fetch = true;
> > > > >  }
> > > > >  
> > > > > @@ -945,13 +932,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
> > > > >  		}
> > > > >  	}
> > > > >  
> > > > > -	/* Wa_2209313811 */
> > > > > -	if (!crtc_state->enable_psr2_sel_fetch &&
> > > > > -	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
> > > > > -		drm_dbg_kms(&dev_priv->drm, "PSR2 HW tracking is not supported this Display stepping\n");
> > > > > -		goto unsupported;
> > > > > -	}
> > > > > -
> > > > >  	if (!psr2_granularity_check(intel_dp, crtc_state)) {
> > > > >  		drm_dbg_kms(&dev_priv->drm, "PSR2 not enabled, SU granularity not compatible\n");
> > > > >  		goto unsupported;
> > > > > @@ -1360,12 +1340,6 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
> > > > >  	intel_psr_exit(intel_dp);
> > > > >  	intel_psr_wait_exit_locked(intel_dp);
> > > > >  
> > > > > -	/* Wa_1408330847 */
> > > > > -	if (intel_dp->psr.psr2_sel_fetch_enabled &&
> > > > > -	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > > > > -		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
> > > > > -			     DIS_RAM_BYPASS_PSR2_MAN_TRACK, 0);
> > > > > -
> > > > >  	/*
> > > > >  	 * Wa_16013835468
> > > > >  	 * Wa_14015648006
> > > > > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > > > index 9b172a1e90de..e956edb87398 100644
> > > > > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > > > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > > > @@ -2180,7 +2180,7 @@ static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
> > > > >  	if (DISPLAY_VER(i915) < 12)
> > > > >  		return false;
> > > > >  
> > > > > -	/* Wa_14010477008:tgl[a0..c0],rkl[all],dg1[all] */
> > > > > +	/* Wa_14010477008 */
> > > > >  	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
> > > > >  	    IS_TGL_DISPLAY_STEP(i915, STEP_A0, STEP_D0))
> > > > >  		return false;
> > > > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > > index 4efc1a532982..82a8f372bde6 100644
> > > > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > > @@ -1456,31 +1456,6 @@ gen12_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> > > > >  	wa_mcr_write_or(wal, GEN10_DFR_RATIO_EN_AND_CHICKEN, DFR_DISABLE);
> > > > >  }
> > > > >  
> > > > > -static void
> > > > > -tgl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> > > > > -{
> > > > > -	struct drm_i915_private *i915 = gt->i915;
> > > > > -
> > > > > -	gen12_gt_workarounds_init(gt, wal);
> > > > > -
> > > > > -	/* Wa_1409420604:tgl */
> > > > > -	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> > > > > -		wa_mcr_write_or(wal,
> > > > > -				SUBSLICE_UNIT_LEVEL_CLKGATE2,
> > > > > -				CPSSUNIT_CLKGATE_DIS);
> > > > > -
> > > > > -	/* Wa_1607087056:tgl also know as BUG:1409180338 */
> > > > > -	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> > > > > -		wa_write_or(wal,
> > > > > -			    GEN11_SLICE_UNIT_LEVEL_CLKGATE,
> > > > > -			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
> > > > > -
> > > > > -	/* Wa_1408615072:tgl[a0] */
> > > > > -	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> > > > > -		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
> > > > > -			    VSUNIT_CLKGATE_DIS_TGL);
> > > > > -}
> > > > > -
> > > > >  static void
> > > > >  dg1_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> > > > >  {
> > > > > @@ -1716,8 +1691,6 @@ gt_init_workarounds(struct intel_gt *gt, struct i915_wa_list *wal)
> > > > >  		xehpsdv_gt_workarounds_init(gt, wal);
> > > > >  	else if (IS_DG1(i915))
> > > > >  		dg1_gt_workarounds_init(gt, wal);
> > > > > -	else if (IS_TIGERLAKE(i915))
> > > > > -		tgl_gt_workarounds_init(gt, wal);
> > > > >  	else if (GRAPHICS_VER(i915) == 12)
> > > > >  		gen12_gt_workarounds_init(gt, wal);
> > > > >  	else if (GRAPHICS_VER(i915) == 11)
> > > > > @@ -2437,27 +2410,16 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> > > > >  			   true);
> > > > >  	}
> > > > >  
> > > > > -	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> > > > > -	    IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
> > > > > +	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
> > > > >  		/*
> > > > > -		 * Wa_1607138336:tgl[a0],dg1[a0]
> > > > > -		 * Wa_1607063988:tgl[a0],dg1[a0]
> > > > > +		 * Wa_1607138336
> > > > > +		 * Wa_1607063988
> > > > >  		 */
> > > > >  		wa_write_or(wal,
> > > > >  			    GEN9_CTX_PREEMPT_REG,
> > > > >  			    GEN12_DISABLE_POSH_BUSY_FF_DOP_CG);
> > > > >  	}
> > > > >  
> > > > > -	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
> > > > > -		/*
> > > > > -		 * Wa_1606679103:tgl
> > > > > -		 * (see also Wa_1606682166:icl)
> > > > > -		 */
> > > > > -		wa_write_or(wal,
> > > > > -			    GEN7_SARCHKMD,
> > > > > -			    GEN7_DISABLE_SAMPLER_PREFETCH);
> > > > > -	}
> > > > > -
> > > > >  	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) || IS_DG1(i915) ||
> > > > >  	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
> > > > >  		/* Wa_1606931601:tgl,rkl,dg1,adl-s,adl-p */
> > > > > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > > > > index cf1c0970ecb4..879ab4ed42af 100644
> > > > > --- a/drivers/gpu/drm/i915/i915_driver.c
> > > > > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > > > > @@ -167,6 +167,7 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
> > > > >  	pre |= IS_KABYLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
> > > > >  	pre |= IS_GEMINILAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x3;
> > > > >  	pre |= IS_ICELAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x7;
> > > > > +	pre |= IS_TIGERLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
> > > > >  
> > > > >  	if (pre) {
> > > > >  		drm_err(&dev_priv->drm, "This is a pre-production stepping. "
> > > > > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > > > > index 48c838b4ea62..62cc0f76c583 100644
> > > > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > > > @@ -653,14 +653,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> > > > >  	(IS_TIGERLAKE(__i915) && \
> > > > >  	 IS_DISPLAY_STEP(__i915, since, until))
> > > > >  
> > > > > -#define IS_TGL_UY_GRAPHICS_STEP(__i915, since, until) \
> > > > > -	(IS_TGL_UY(__i915) && \
> > > > > -	 IS_GRAPHICS_STEP(__i915, since, until))
> > > > > -
> > > > > -#define IS_TGL_GRAPHICS_STEP(__i915, since, until) \
> > > > > -	(IS_TIGERLAKE(__i915) && !IS_TGL_UY(__i915)) && \
> > > > > -	 IS_GRAPHICS_STEP(__i915, since, until))
> > > > > -
> > > > >  #define IS_RKL_DISPLAY_STEP(p, since, until) \
> > > > >  	(IS_ROCKETLAKE(p) && IS_DISPLAY_STEP(p, since, until))
> > > > >  
> > > > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > > > > index 3fc65bd12cc1..c6676f1a9c6f 100644
> > > > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > > > @@ -4336,10 +4336,6 @@ static void gen12lp_init_clock_gating(struct drm_i915_private *dev_priv)
> > > > >  		intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
> > > > >  				   DPFC_CHICKEN_COMP_DUMMY_PIXEL);
> > > > >  
> > > > > -	/* Wa_1409825376:tgl (pre-prod)*/
> > > > > -	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0))
> > > > > -		intel_uncore_rmw(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, 0, TGL_VRH_GATING_DIS);
> > > > > -
> > > > >  	/* Wa_14013723622:tgl,rkl,dg1,adl-s */
> > > > >  	if (DISPLAY_VER(dev_priv) == 12)
> > > > >  		intel_uncore_rmw(&dev_priv->uncore, CLKREQ_POLICY,
> > > > > -- 
> > > > > 2.39.1
> > > > > 
> > > 
> > > -- 
> > > Matt Roper
> > > Graphics Software Engineer
> > > Linux GPU Platform Enablement
> > > Intel Corporation
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
