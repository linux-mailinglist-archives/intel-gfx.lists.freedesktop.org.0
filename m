Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 090418978AD
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 20:57:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B2A6112E47;
	Wed,  3 Apr 2024 18:56:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ixF3vubr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C561D112E46;
 Wed,  3 Apr 2024 18:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712170616; x=1743706616;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lxnMgPOcULtdJ9qhbmdDuSvQMaXgMBpwXMa4ve83pgw=;
 b=ixF3vubrP2xpuWbD6d5b81+anVYql2CGIr91/GpZUu/TAyRfl2sPUzpZ
 1oAXSvHWDsVHBJKntO2jSCDU8OeukLyNYR0SLJNdVWwpgcITjsPtqnRM9
 fcheP/wMK9ds0T48/OD1fc5GYvNRzITnHcARoWrxLvCI9n85H8rq4FtBN
 T+Yh4vH6VGMJ8QfohBt5AcNk9owiZce3jJO5tksBzTn9hfW7JY8qXzSbD
 c4uPr8c4KeXJqr60JgdqDQZsLMOJflg+0E1gqVO+KKdSdlCxHGvc9HW//
 VjFq/vjPNzukY8odICZTAw/PxP5VNyEDZSYRx0uRSmYrvFDwkSlRnTpdx Q==;
X-CSE-ConnectionGUID: zZiWBTavThCYsv2MsTQxWg==
X-CSE-MsgGUID: ihxNT12HRyyCrOB+iDtXgw==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="18037267"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18037267"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 11:56:55 -0700
X-CSE-ConnectionGUID: ApgPw2xCRWexunuAR4Zf8g==
X-CSE-MsgGUID: aHaixw1wSH+wW3HUgWRHxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="23020336"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 11:56:55 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 11:56:54 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 11:56:54 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 11:56:54 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 11:56:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P3uf9Ev2VQj+k7UmyI6p7IsKK4nDutWxhZj9aN+nrmKEESH1wGwmI3UQ6Wcm39j6UsR+ZOxWLaG1zjRfaSjyFVqA8n0e3qtF8hD+6ggJehLqu60dYbvw+Ia71U9KCzmgSYC7hjoSR8Btib7180Zyp1JvJNVR63a4KUGzXqphxtZe9VnVyToGKy7P2zEKFeBpYqequqiCCzS7v4NjVdyUtSvVBQeD2EilT66gXtmBOG8faFuH7kNrinTl3zATidbPYN5PHR+eZHwIq+SA6Tf2KGZBjSlu7I++k7WhoIHs4A/yaH/IssLGsm2jyObzu7GF1edpAnmS0ZDHJEvViifcnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=onRjO8IzJKjfgjFKRFcCZstnLdqCpjUGNNl7ZAPe2rM=;
 b=H9ZH1uqpzQswrusgr2OPzwEfyIaccKLk4vREq8GGeg/5m0KT3ObEda/gaL5+Hz5j+XSNENGzUCmy7EpBFLoUgWbyF4prLzI2/oL9FUttFGaRjB9EN4XBlEXXQuL111bRS9DnmdCke6Wuz3mHyVwvR5fidIhqpugS68jYyeWekhmAyJto27t37g78ppeZRqSWcYFMfpf7BP0uhIgnWg4M0ydQ+QQMhEOgyFjAY3WWQpueY64EDEyyoUjdQzximNwJH75I+TIr9/LuIqJ5MjptB3k3F9ApAhuAPXz37n+Q295LtTZ9mDeEUl+3f0n2UQKeroUWWl2uMEYeOLbbPryhhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MW4PR11MB5909.namprd11.prod.outlook.com (2603:10b6:303:168::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Wed, 3 Apr
 2024 18:56:51 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 18:56:51 +0000
Date: Wed, 3 Apr 2024 14:56:47 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 <himal.prasad.ghimiray@intel.com>
Subject: Re: [PATCH] drm/xe/display: fix potential overflow when multiplying
 2 u32
Message-ID: <Zg2mb2KM3VwCNzOs@intel.com>
References: <20240318110103.3872169-1-arun.r.murthy@intel.com>
 <IA0PR11MB7307DAF583B89D7E008D16EEBA3B2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <IA0PR11MB730754C98B4AF4EE182BFD62BA3D2@IA0PR11MB7307.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <IA0PR11MB730754C98B4AF4EE182BFD62BA3D2@IA0PR11MB7307.namprd11.prod.outlook.com>
X-ClientProxiedBy: BY5PR13CA0032.namprd13.prod.outlook.com
 (2603:10b6:a03:180::45) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MW4PR11MB5909:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qFPpgU1TNVvEgDmfqtG+13ADmk9mveEU0Bt/KWRYW6BqtP/XA1D1q3Pfbm0N3M4+lnJ2QSlQczYQLWuUchB7i6ITIrAtMKYmGX0XNH7JkBW8fM/AZdeVr8WIc1iqRBYEVNtYPPOvf+ZLCgxvR7CvflcOTTOTK0CuZ6IPcsoebEReFi4RTa73H5H3KQWTdLb+rW88o9mbrT3wiDaZ7cNPlgQOZrQRCPKxFXDL0Dk26npPLFqGbfCidQn5X6IQZwdM6hPmQfAKQLiC5KH1J3w0Cixm2s1g4up0B0ShWlxFHk1PvVlcDT50P6ZlnO2ahLRSHQwH7H+RTnc2BZsFNhZX2jdPsEce4Fmmrj7Bn38C8UPaPWGnmuPsvfNP9M3tNtUByXTGSsCLSW2eZwyml2wZe2Wgbwsj98WRIYnimdJD3wUebDVRrlH9xJiPyvsaM5YnICH6vAbINtJMU/WvaOadU/api8yJi4svnu2zXp13T7DaYLcbFqxDV4ORVjnmsNKsx21LdMaq4bqpVzzJzEeUGz04WXNQYGYbbU+KU20zd71bVeeV75PXXsQS/7zaFBWE/pOZ9tqIwzWtjTREL3qMPj57YxycmG+xkSXk+FLf8Cg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?e0Ba18Okf7Bs96Cvu6r1r34XzVvWUsRCOGBiJ0/+cyrZqspo7tNCTzhbKAKZ?=
 =?us-ascii?Q?B82bQDWwk97e16DBVFFY5jUZtvHJz2Ptm0H1+FjTrTp4TOI9jM6HhAG9hjTb?=
 =?us-ascii?Q?bQ8aM8Q2lAs7lzoSWVfMuB+5ZqnUX6baQi7bfdH9DJrBCcVZzwpKyoVJBzRE?=
 =?us-ascii?Q?+ZWvy6Fw9Acm8Z/mTPAXHeweo0n82LV5MWaHm//8qEr79kv8msqWhs/iLnGg?=
 =?us-ascii?Q?MZOpNhDFyxH4qXP+twLxaVI9u03Z7hGbAyObtKeQbZeYCf8cwXF3hLOyNggW?=
 =?us-ascii?Q?okOHU3EpfiUzsv4JM023dDABwlYJ19PNOzbloC9eoD6HIEbjNBXWJk4DI5AE?=
 =?us-ascii?Q?cXkSscnPu02Zuri1iKF0ptQM5yIgTAPNpJ9xQG6eiyOwl35FOynmyPvnaUcE?=
 =?us-ascii?Q?7D87qtlyUDSZh8uclgxLbZJNmgeULdRYRz5bRKnXbPVY/bDxwzDouGknAEtX?=
 =?us-ascii?Q?nOGla6eqClOdBlnhBrwH2G3oo+GEr0Nvly8+5flh+f73pCIpKDKPvdXeEmdg?=
 =?us-ascii?Q?2c3h8JOb6xXdphqCa0YA38kPsgJYZ717Xgu1Syut0RywhxlRQx1vUc+1MON/?=
 =?us-ascii?Q?0550StOMg26IP0aB1BTjiPrjW9DcH51DUO+cVTNrv8iiOkirgVhqtYfu3uVW?=
 =?us-ascii?Q?M5vDvn704z+f7gCd3l51kKI7apjbtn0L5VzuXuBgG1iNUKqxyW+9k7+IyqeV?=
 =?us-ascii?Q?ZGjzd8Y0SUXfklrxCJP66ufQEO/wmu+CzbiAyy9H7CxYbd135S6FL94vPSB0?=
 =?us-ascii?Q?f3llnvwMds3KGblGPE0LLK5nsExBJj1wCdBDFzH1v6CY+w01Dc4ZrqnzSFpw?=
 =?us-ascii?Q?oNC1fIR0Ei/mCjTHL+xfCxp9cPiaVS49imSvanyqb/bPOkttnuG8iUHV/sWh?=
 =?us-ascii?Q?SzeOHFmV1hPxNhmjcm7wFc0fos0APiNS96XeDNa8qM/j07H30hOByxFO1fLN?=
 =?us-ascii?Q?PNsjwsV3CiBay50ENSPYD5lq6/f7aN2WpxBpM/dTreaKCZQYuzTAVYYoLRi8?=
 =?us-ascii?Q?4wDoVMqlrxVILcEm4s4rhokgtBLbTi2U9KjR3X0slHHHplbIXMkfJiL0YEQ4?=
 =?us-ascii?Q?aQStpSouxOQHnDVnz+/OGKcsM3j+vF63Rj+YgMQSfS3L7/n3DFPRVLl5qwb0?=
 =?us-ascii?Q?FCF125V2j0EM1uGbLQANOoryewmmaU87zSgOsZcs797LV7VvMUwnK7u30Mec?=
 =?us-ascii?Q?JGrSwjXlyhYtRN9FwmcRh7qzPBPTgNFTysMA5k37XB/zwotkYDRnWODQ8M0t?=
 =?us-ascii?Q?w96Jfnj0BFsF1DurP5I06ZNQyctFHhm38e/mxF1tL0/PEMXtgYRpfurSe0by?=
 =?us-ascii?Q?KOTvxVE9qClUkyc4zUjJomeJ2F/U19DPHJSgJe9J9sWZHIXp+SPLeQcyqSXv?=
 =?us-ascii?Q?fuv8D9WpKsGz7SQYY9cGaTpqF2Pn52s1iDc4LwIZlqCuBUkBPXD2tP0CpeOx?=
 =?us-ascii?Q?G37lPqnwsqDnmI0IkkqMqeeo41r9mPEju3TovY8ZvgIcfl6gqGkWF9dtWKWO?=
 =?us-ascii?Q?BKFk8cv5qi4q9NzrRe53gYeuJb2YlhPIXrNPXy+bBnrJItC46g5JJ6LGDCe8?=
 =?us-ascii?Q?5MJbe4F4KZfrYaCiw6tbyxZJrJ3u77lGFeCdEjfzWVv1mFpk8nT/ytwQCjjx?=
 =?us-ascii?Q?9g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e3235747-fe20-4c52-d348-08dc540fd278
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 18:56:51.6214 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v1Tx3ZQCZUig15SoFV7KDTFRwN3K6S+hmWu9ZjFxE696GYQ3d1y0ynKiARty4BA8dqSFJwcFB7huchkKt6LduQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5909
X-OriginatorOrg: intel.com
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

On Wed, Apr 03, 2024 at 03:39:19PM +0000, Murthy, Arun R wrote:
> Gentle Reminder!

Thanks for your patch. I'm convinced we really need something like this.
At least to shout the static analyzers.

Or this or using the mul_u32_u32 or casting one of the right operands, otherwise the
result of the multiplication of a 32 vs 32 can overflow the 32 bits
before it is then moved to the u64 at the left. And this is undefined
behavior depending on the compiler and all.

But the commit message mentioning 'overflow' as it is kind of suggests
a true overflow issue on the result itself and a protection against that,
what is not true and likely kept the reviewers away from this patch.

Some commit message update like Himal did here [1] would be appreciated.
[1] https://patchwork.freedesktop.org/patch/586036/?series=131896&rev=1

> 
> Thanks and Regards,
> Arun R Murthy
> --------------------
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Murthy,
> > Arun R
> > Sent: Thursday, March 28, 2024 10:34 AM
> > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Subject: RE: [PATCH] drm/xe/display: fix potential overflow when multiplying 2
> > u32
> > 
> > Any comments?
> > 
> > Thanks and Regards,
> > Arun R Murthy
> > --------------------
> > 
> > > -----Original Message-----
> > > From: Murthy, Arun R <arun.r.murthy@intel.com>
> > > Sent: Monday, March 18, 2024 4:31 PM
> > > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > > Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> > > Subject: [PATCH] drm/xe/display: fix potential overflow when
> > > multiplying 2 u32
> > >
> > > Multiplying XE_PAGE_SIZE with another u32 and the product stored in
> > > u64 can potentially lead to overflow, use mul_u32_u32 instead.
> > >
> > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > ---
> > >  drivers/gpu/drm/xe/display/xe_fb_pin.c | 10 +++++-----
> > >  1 file changed, 5 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> > > b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> > > index 722c84a56607..e0b511ff7eab 100644
> > > --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> > > +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> > > @@ -29,7 +29,7 @@ write_dpt_rotated(struct xe_bo *bo, struct iosys_map
> > > *map, u32 *dpt_ofs, u32 bo_
> > >  		u32 src_idx = src_stride * (height - 1) + column + bo_ofs;
> > >
> > >  		for (row = 0; row < height; row++) {
> > > -			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, src_idx *
> > > XE_PAGE_SIZE,
> > > +			u64 pte = ggtt->pt_ops->pte_encode_bo(bo,
> > > mul_u32_u32(src_idx,
> > > +XE_PAGE_SIZE),
> > >  							      xe-
> > > >pat.idx[XE_CACHE_WB]);
> > >
> > >  			iosys_map_wr(map, *dpt_ofs, u64, pte); @@ -61,7
> > > +61,7 @@ write_dpt_remapped(struct xe_bo *bo, struct iosys_map *map,
> > > +u32
> > > *dpt_ofs,
> > >
> > >  		for (column = 0; column < width; column++) {
> > >  			iosys_map_wr(map, *dpt_ofs, u64,
> > > -				     pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
> > > +				     pte_encode_bo(bo, mul_u32_u32(src_idx,
> > > XE_PAGE_SIZE),
> > >  				     xe->pat.idx[XE_CACHE_WB]));
> > >
> > >  			*dpt_ofs += 8;
> > > @@ -118,7 +118,7 @@ static int __xe_pin_fb_vma_dpt(struct
> > > intel_framebuffer *fb,
> > >  		u32 x;
> > >
> > >  		for (x = 0; x < size / XE_PAGE_SIZE; x++) {
> > > -			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, x *
> > > XE_PAGE_SIZE,
> > > +			u64 pte = ggtt->pt_ops->pte_encode_bo(bo,
> > > mul_u32_u32(x,
> > > +XE_PAGE_SIZE),
> > >  							      xe-
> > > >pat.idx[XE_CACHE_WB]);
> > >
> > >  			iosys_map_wr(&dpt->vmap, x * 8, u64, pte); @@ -
> > > 164,7 +164,7 @@ write_ggtt_rotated(struct xe_bo *bo, struct xe_ggtt
> > > *ggtt,
> > > u32 *ggtt_ofs, u32 bo
> > >  		u32 src_idx = src_stride * (height - 1) + column + bo_ofs;
> > >
> > >  		for (row = 0; row < height; row++) {
> > > -			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, src_idx *
> > > XE_PAGE_SIZE,
> > > +			u64 pte = ggtt->pt_ops->pte_encode_bo(bo,
> > > mul_u32_u32(src_idx,
> > > +XE_PAGE_SIZE),
> > >  							      xe-
> > > >pat.idx[XE_CACHE_WB]);
> > >
> > >  			xe_ggtt_set_pte(ggtt, *ggtt_ofs, pte); @@ -381,4
> > > +381,4 @@ struct i915_address_space *intel_dpt_create(struct
> > > intel_framebuffer *fb)  void intel_dpt_destroy(struct
> > > i915_address_space *vm) {
> > >  	return;
> > > -}
> > > \ No newline at end of file
> > > +}
> > > --
> > > 2.25.1
> 
