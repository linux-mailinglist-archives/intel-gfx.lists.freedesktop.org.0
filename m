Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5227783B5
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Aug 2023 00:37:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3BD410E615;
	Thu, 10 Aug 2023 22:37:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD25B10E615
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Aug 2023 22:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691707041; x=1723243041;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=sU49jatg+tUe11xbw1laIoKTbu89ApasEOHGWfnQUJE=;
 b=jvY1avVGeymhWd+GyYpRyMjUU1n+Po/boC3JmaiQjPW/VT28EYh0b/ZE
 El4vOcDk63uWjPTFWOriA/0IfxzAJ5zNLuHTC18ePxmS0KyDtr8YDr9yF
 VQckof4aGj6X4poPCalPDyH5r43uKEkml1eSpVy09omnuFrYRGDF29gQO
 nxeSepVpb/mCBkNmOwpmNetRV0ioYvFu9OJMJ+A2fSQMI9aoHywoT2qTn
 C3Qa6rrZaJteIIFk5+aKy28GHeo4Dn9J3u6IaUd6CuC9xUwDa3FJp6I+6
 vmk5aLec632QWSQypo/qbZfoHErtKiU8O9DaQnHCmqGlGPWaGL/E2Bmxb g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="351144313"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="351144313"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 15:37:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="856073476"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="856073476"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 10 Aug 2023 15:37:18 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 15:37:18 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 15:37:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 10 Aug 2023 15:37:17 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 10 Aug 2023 15:37:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ytcuqbn2aUaWH8xAGb6hDO5Od1jlh7zyghvOa80EBHZISn7FHn90ZDiZteZEmd0OCYEbuVt+6+hgJwSrjgNDkR3qacHD80MJbhMkmxHoKSj55NPgVUwsS3f+xf0404Sk4aPWySUsCXIiXcUjjr6oseoNh2hvQ3ghk/n4OtEO7Wh49tAW3/g+SoZNZ9oNqLtKDrawQEkCfNd5Oyw3ptgE0uvctCxHy0Uy0H6SID+kigDXf5ofjSbU+6xDYtW7MSf8tkOGJENNYON1UJr00SoSmbP/Qtrx5m9Gj9FTldRNhEl9fKpYzHUXrg/YB1UTyOXEUle/CSKpleur/mCAWSovig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ux/sbEdaRLFoRKxKEfyy4A1sdrTLHhaFvS8zbGaB/g4=;
 b=hEkFhVHyRjrqwaln9IvN9ocPqEEKlPu7gV8xPm/gebsn4amw0uCG8CNYeChRICERCuMposd2fEnB/FvEHqappbspG8gHfdK/H00l50LKQUXD7HeDLRq/ycVuq5yL5Uqq+cbWXCSuyKrNsQUQppoF3QabvFHIxMCt+PnpFtyOBe3HfNZyHSmYcchsMQWcy/f+uTHz1KagI0xrnbFwmG4FmHxOCMArwxx0jUN0suFJejgsCR3OoAXSNcFZlmdgrdRxZzli3A97Ys0qr8tABo9r7GTjcedS4xK5k2MgIErwK4MFYg+8w+2UxOcagk/Ds/cQJSNOJlaQ3MCz8Nr9drtmJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SA0PR11MB4672.namprd11.prod.outlook.com (2603:10b6:806:96::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6652.30; Thu, 10 Aug 2023 22:37:16 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6652.029; Thu, 10 Aug 2023
 22:37:15 +0000
Date: Thu, 10 Aug 2023 15:37:12 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <20230810223712.GE209733@mdroper-desk1.amr.corp.intel.com>
References: <20230810203620.388827-1-jonathan.cavitt@intel.com>
 <20230810203620.388827-2-jonathan.cavitt@intel.com>
 <20230810223431.GA3375865@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230810223431.GA3375865@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: SJ0PR03CA0118.namprd03.prod.outlook.com
 (2603:10b6:a03:333::33) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SA0PR11MB4672:EE_
X-MS-Office365-Filtering-Correlation-Id: 2afb57e8-46b6-4d27-48ad-08db99f258cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0S6ePL3ikWkNPwRO9eo+xBMajKOwaU+JAOvr8bkUawXS7GrS7daCQc+KcfNba/xQxK9xUDKAzk98xb3YmOJL6vTooUxxEy14tPINVPrU90KJhwqYUHonz4v+8GDEffIPuVLRHNLpytG5yvs7njB9ojU9EPIjkkPYUvRoCpVHQQufQ3VNZzDESF/kSKR8Mtg4XF21npfM5ivkp6JwxSOr2iogzFH64WFDPiydHHyUnJ5Sqsp1mYG2Z6jyJQaYV2mEDyFi+H0lpOOD/Lo11j28MWW5Zj3caYBGBXDXQryhPcW9vTJ+54JQOM5t2NTjGddF5Fj5fYfQN8PH4MXLHiCAGlNTxCSBXTm75/2zBaoDzmXkoRuSDi0YCEioB+vIyfzFcrayhZPJ0hxvxgcJ5uvJTXofAcQpLaWKlVt92blkemEtEgmTgZf0NjE7axefumF9c2bqVNEa37MTWWnQDdxjdba1py28/rG2L5QfwG95XOIdadfWoAg5aR1lvBuxCQhE2U7J+yC/QfqGH2v+FvX2zi19A9WtZzsbMrwITHa0C4v036QLG5296MR+n6LB3WQ/
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(396003)(346002)(366004)(376002)(451199021)(1800799006)(186006)(6486002)(6666004)(86362001)(82960400001)(1076003)(26005)(6506007)(6512007)(33656002)(66946007)(5660300002)(66556008)(66476007)(38100700002)(8676002)(6862004)(6636002)(4326008)(2906002)(478600001)(316002)(83380400001)(41300700001)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LoNFXNls+UWTrNcqrnQwqAMaqZCofyP350nPAcHjC5jtgtZy2rGohcqQxUkW?=
 =?us-ascii?Q?Y1h3Q/XxQ15uVF65MOPmlDYARVr4XTuXIHt/i/+/32fQdNgdVKAN0yLcDnvb?=
 =?us-ascii?Q?6WFInPxG3k1TzyX3KnSU5JIn//sl6TjicGiKkaSgT/OvzLiZeXp5kZtl3QGX?=
 =?us-ascii?Q?XpKpmgsxGmz2MPjtJsgxfh+kVT28d+wR33mq6qDDdQuYagjQQCzuJ0+cGsZ8?=
 =?us-ascii?Q?RihVIRhJZHhv6ifSKRJMURcc5xtcAL0dQ8J1esrCtpEDQnT9g1JriBJFC1PZ?=
 =?us-ascii?Q?0OxLjLGaXdt5J1Y7b1w8DNZ+tJxCYDDCSaJE/8au8JGR3jptvMpFNR2hNxKb?=
 =?us-ascii?Q?RbwT/AknrABkZJuDn7oXaJNdCZ9PdxL/7dEZHDMzdcZDLD1PKRuvpwbttdAo?=
 =?us-ascii?Q?eYna2EcipOe+0RLqxJ7Lw7JnsLeRXDVSMkllJuZlhUCYNvzNv0Pl3+AynRJV?=
 =?us-ascii?Q?qr6K/2LjfI+rhb9NJ+unwfdpu6cfhiCm/ZomzDCFu+X0ePj2pjKpjEDgPBW6?=
 =?us-ascii?Q?TAkW754Ydy4ytoUG5h4+1ep1Nj0hgueUEKvg4XPQdlX2NyCN/b5Z0XTb+jay?=
 =?us-ascii?Q?Eeapbv506OZjhgb8h4XZuwwFyQzJSeeLoLsoVJ+VcEts7f72kPid4wDn5nPZ?=
 =?us-ascii?Q?K1x12vg1K0g60TPgDyec5PAPsq58MMWIhgMwSPBTecqSaI8wlhvuzXlUxBnP?=
 =?us-ascii?Q?k+jY0Wxb/e4Qx8rQzFBa8Z6RjKxE1pvGGSCW2S8khvTsIhQ0D6qyXPHT9M/a?=
 =?us-ascii?Q?67okSehOe1zqRUtl+2KChdmz2fFoOGHvBSfz8l1PU1pYN2kRw0SdOubz04Zz?=
 =?us-ascii?Q?pvGydhF9lr1DCsGJps0o3JwVaTZq4XT/6cANwiPekJGjX9fb8VKvxDYOTdgF?=
 =?us-ascii?Q?3uDhajs1GUUB74RlILXFUguLNdT0TeD8IsnwCgo7LIOwNHy8Jt0EhUjixdeR?=
 =?us-ascii?Q?7TKLsVAX1R9AS4slbKY5d21OtT4w/qjswIrh+3wED2Gt2A0xyt2gZYei4IuM?=
 =?us-ascii?Q?QrFwCYHQpd4Pd2d+pOuPBfmsXifxRiJFtt21fkzFAxMm4SyWPQ67UR7+QT6X?=
 =?us-ascii?Q?XJO/46hOIlxWttGicqofMBA3ep5QBDaDo2usbd3ShopCRYcKl0WXkSS9s6iT?=
 =?us-ascii?Q?qxPY54GPgQ0u0pCuKC0lSRJLXuqbcoxRwAt3hV/6PvRe6WbvX9wB2YSQAppl?=
 =?us-ascii?Q?MWn6an1jHw57X9IDJs2YjH/T8/n7y1DOw1CBUdr+s3i3bsoLpVpTGO0SbiX1?=
 =?us-ascii?Q?/aG4PXxOZfAXQmMmY1o+EHRLhs/VTFov3NQDM4ztcpXQ9hUb3x2+KsaTelFV?=
 =?us-ascii?Q?OsVtrmAZJ1L0dheDarS/Np2wuHAiOtHnIPbmrt98kKdtWpqRCqIqz4iH31V+?=
 =?us-ascii?Q?U2NIxNwR63Bs2GfCJ/6M5cjMcJ0bKBs18dADCsJIgs5Fa0kgdWcuTtHM4kJK?=
 =?us-ascii?Q?VFhLCEtXjVOxZfpsxSozuguG/sYfvaNJFH9JDAGdTBYvTVZpnwY4W8jpSUf3?=
 =?us-ascii?Q?aS7Pz4+1iIzcTqDfN+xZuyuU28fkvIEin9oHyGyF1UcNBN5SLmlxgXT+N/7k?=
 =?us-ascii?Q?Dc3JBqIOzUWGAjgLlQlObumj2kOMJGdpUF+sy6nZpdpSjzRhQ0ElSABvVQJH?=
 =?us-ascii?Q?PA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2afb57e8-46b6-4d27-48ad-08db99f258cf
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2023 22:37:15.5982 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5H4tzU6W95WNHNLSpwon99UMo2kJXkWFEKVJStlkZ/dZinkC41sK09vtd9RfM+dfjl4+MUT3u38X6kme+qDl1s99ZjLr8AtHfgaunPwvQbM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4672
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/selftests: Align
 igt_spinner_create_request with hangcheck
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
Cc: andi.shyti@intel.com, michal.winiarski@intel.com,
 intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 10, 2023 at 03:34:35PM -0700, Matt Roper wrote:
> On Thu, Aug 10, 2023 at 01:36:20PM -0700, Jonathan Cavitt wrote:
> > Align igt_spinner_create_request with the hang_create_request
> > implementation in selftest_hangcheck.c.
> > 
> > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > ---
> >  drivers/gpu/drm/i915/selftests/igt_spinner.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> > index 0f064930ef11..8c3e1f20e5a1 100644
> > --- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
> > +++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> > @@ -179,6 +179,9 @@ igt_spinner_create_request(struct igt_spinner *spin,
> >  
> >  	*batch++ = arbitration_command;
> >  
> > +	memset32(batch, MI_NOOP, 128);
> > +	batch += 128;
> > +
> 
> This doesn't look like what you intended.  You zeroed out 128 bytes, but
> then jumped your batch cursor forward 128 dwords (512 bytes).

Actually, nevermind; you used memset32 here (whereas I was looking at
the memset() in selftest_hangcheck.c that you indicated you were
matching.  So the sizes do match up.


Matt

> 
> 
> Matt
> 
> >  	if (GRAPHICS_VER(rq->i915) >= 8)
> >  		*batch++ = MI_BATCH_BUFFER_START | BIT(8) | 1;
> >  	else if (IS_HASWELL(rq->i915))
> > -- 
> > 2.25.1
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
