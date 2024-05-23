Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C22D78CDDB4
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 01:24:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C987110EA04;
	Thu, 23 May 2024 23:24:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I0M1MKXl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39C2210EA04
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 23:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716506690; x=1748042690;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=xuMspApCvc8KBCOKEbgQdhffNXnGllZMfMEycr4OqCA=;
 b=I0M1MKXlEzE9fNta5ygdgDcpj+Y8ACj2u4Y5xyKPbqQVHwtqa6BtyVPb
 e1x1CW/FrGfc5Ehu7zLyvTwcBC0k/2W8r20VKCd7cTHyyese6B/wMZ1QY
 ls5xY4agdV8JBSTd0phEiooaNUWQU07bDOotEyI9OaVG1k/SgnsyxOhjj
 vzXO7V64P5sSSC34+bnyXvPdWoM4azINfhwDdTCnC8XLwsH92ZKbCPuDJ
 xl6a6fg6tx13K+Zh616hrkehg+u91nRoqe0o4XwsHqjP53PBcOWWrR3Cd
 zff4S+bIcVS1Y+Smoa6/XB1EpfYUklUywWMBsYYsnQ4SMWRgu/Y1Z0kYM Q==;
X-CSE-ConnectionGUID: 2N8JOt5EQVqkgBgrFyh4IQ==
X-CSE-MsgGUID: AjLZ2N8mRtWPxA1kdMfu3w==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="12691903"
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="12691903"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 16:24:49 -0700
X-CSE-ConnectionGUID: F/7uVQ2KSMCTU5lGVPKKJA==
X-CSE-MsgGUID: s9PSPfQ2RbKrL2VpZ2rZYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="57073475"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 May 2024 16:24:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 16:24:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 16:24:48 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 23 May 2024 16:24:48 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 23 May 2024 16:24:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F+FbSt+L5rdYMMDKaWUSF8eJ+ApCCfPfG2NMCZ94hR2dJoj3kWOK//J8qYeG4JoeR1uXvrn+/kWBuzNaZo+nYwlpoLKGhZURE9Je3NSxPe/c4zdJ+YfXQcWQo/wufmHWxBs2fi2fAbSdz0d4xsCcmP639uQ3arzT4sgMntOvnlVGzDJ/LOXrgW5zK0r3zqzixWLH4qKtOQ24rOq9k2cYrsXgr2x3Y/cT7dOca5KyfQ6v2LqKo43sofkG4zWZq20fYEbWqVo3fKW+kfvXdIU70qxJD1cihAvzPYPO/1WFnv0xqO73Yf03CtZJmAFKhRIrh46vTTSnhl6Kz1zxDUoFkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5zT0BR1OkxChXUJlB98Cp1t9GHmvgKYmQgJNEfjRTeQ=;
 b=L4ZPnTq8u3sCHX9fsCIwKHAnOIU4wY8HjJVXiycf/om5GNqOw1nORnTOLnJ12Z150NXX2iOunvl5E5SJsMB8/pjZit+c8cwdV00NLDWSfslekg9hczXdXEmPJPak8x4N6TEY9wHbQrxXZARSdnzqJB8p5zY05a13EZC/OMcnRF3tdohvhmL8iyk+GuhEfKTcvI0yazE6bMGjzOsjTP/kqjOFnz4aZwfX2pojIvOKI0KTh22tHfzI7MJr0zClB/3946Xdcq9RHsDrsiYHE10/8S8nnq8Ht2QvNDTUgWHiVVU479Upq9E5/HVidce6VkgRgc99bOA4Re53+/uOYXB+sA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8185.namprd11.prod.outlook.com (2603:10b6:610:159::12)
 by MN0PR11MB6011.namprd11.prod.outlook.com (2603:10b6:208:372::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.20; Thu, 23 May
 2024 23:24:45 +0000
Received: from CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::1be5:55ed:3261:fefb]) by CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::1be5:55ed:3261:fefb%4]) with mapi id 15.20.7587.028; Thu, 23 May 2024
 23:24:44 +0000
Date: Thu, 23 May 2024 16:24:41 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
CC: "Chen, Angus" <angus.chen@intel.com>, <tejas.upadhyay@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2] drm/i915/mtl: Update workaround 14018778641
Message-ID: <20240523232441.GG5383@mdroper-desk1.amr.corp.intel.com>
References: <SJ1PR11MB6204A1D3BB33FFFBB6BF32E581E52@SJ1PR11MB6204.namprd11.prod.outlook.com>
 <20240513141917.74208-1-angus.chen@intel.com>
 <Zk_Dvl0pA5bU2T6o@ashyti-mobl2.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Zk_Dvl0pA5bU2T6o@ashyti-mobl2.lan>
X-ClientProxiedBy: SJ0PR13CA0226.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::21) To CH3PR11MB8185.namprd11.prod.outlook.com
 (2603:10b6:610:159::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8185:EE_|MN0PR11MB6011:EE_
X-MS-Office365-Filtering-Correlation-Id: b346430c-4583-4308-2a58-08dc7b7f8757
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?NWRcpfvA7BmdteRG7M8GJqBmvs0Tqm60W2mQOhlFHUiQ/4h/pK05Zo7VYPn5?=
 =?us-ascii?Q?XgUbnW4lIGA8ge9Vh2S+Xs5JWmlCNuM+Bdr9aTNPkNNN1VfuceJZx2+7MnKi?=
 =?us-ascii?Q?EVcSYq5ajQ7YxLcA52PwzmgEN1mZSG4K+FWcNjX39kJiHaZd9tpKOaPG5dc2?=
 =?us-ascii?Q?vZRPtZxVFBN0B2tflxrnRt4kikX5mvNVkwaYKn4ZUFZaOgcmWwBeufgF/yic?=
 =?us-ascii?Q?S6ENvHT+PWbhCTR+shpGihdzPqktjQrcLZP+mbhOCd/n4TmIfGO2q+Nfwb58?=
 =?us-ascii?Q?acAtkFzJEqYOc1ITwe1nq4ypk2bMthiJlY1IKDBJW/1plPFfxj4SWBBctx6K?=
 =?us-ascii?Q?dbgVTUXEj43tVNbYZNQoCmumwhth37FMwDcSGyyD8h7Dtl8WCu5gt2JfOYGR?=
 =?us-ascii?Q?Y/5WTvBhH+/FKXlgCWpuZ6ySdGHWjxSF4lMMmWNdKIoOCKaZbic6sTJNeHTV?=
 =?us-ascii?Q?kU6gR5rdD2qODhXYW0YbFuodcQIg0XF/DJ3w9WNGWnIfPE9j49M5/kl9ADo8?=
 =?us-ascii?Q?nxO1QaEuxXaIhhhKi2O/msmeXVhOk9nfSsjWZaPiog/rhCe26giCs5/J/IrI?=
 =?us-ascii?Q?7dqDVahj2wJT+aEZQBkLGfuGPVexP9ahUTT3mm+mCO2hdnmu2v8syZ37r3/n?=
 =?us-ascii?Q?klQRBQw2qtwU/f8DE7ZNbxa5XtHlKZq87yE2O14clpO67+i0/bEk6cifzDFx?=
 =?us-ascii?Q?q8BgaDYK2ryXsAZxjQsA/VEZ9EUcxKGssdDluWNrecg87f5N29a+ers5D3Kc?=
 =?us-ascii?Q?TcSEnllsNHA/13rT7JYGkZt3WFCxawbYbXwVrzNA+qrxxsg2FRMQsrGNrdev?=
 =?us-ascii?Q?Ux9+7PoGY2lxLDX2wI8yMrJT4LrgeO26DK7pRRIHHk+lKeLwcDYGFz6PTJeU?=
 =?us-ascii?Q?OKEAReJFNLYKVdlGlLXAEUNPk87Beu5aeMKEwOfvSvEY6Bh8BSNvI+sZc0dq?=
 =?us-ascii?Q?7gt+2lFFqS/bi9ew6RqAM1NZ0oHPluTzllWE4B38ihqS4Xftv8WeeS+YixLC?=
 =?us-ascii?Q?vFEoLpjL8oSyrsMPva+pUG0vFHcQqIvuSJ1t2E4vFqQGJ94Zc8o8+PLXnqzZ?=
 =?us-ascii?Q?rvEpyr1zqTIxONpUZ6d/li1iSLOdO7444D5Zj+nVoeCropthFjGTvhQr9Bbr?=
 =?us-ascii?Q?uAGtHDQ+RzUvfSImaJp6UGcYH4NHsuSOoZvGzefgVcAtEZRrP/XnUG5H91sT?=
 =?us-ascii?Q?6aDMxKkeUf3zG4h6m17dO0rAHxvlE6Hedp67UxA9hWy44bWR4mREv07PTIVJ?=
 =?us-ascii?Q?C0N65NmInxN9lR4NpLvm8EgAZRVYTKrow1nksZ0+Yg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PGcVl8APEb2Quv9P3GXZtbtpQcSmw/gzDP57VaZYHLgkvtgPVLP3BubzCy9L?=
 =?us-ascii?Q?sB5k+Pr4TDxAot877/aeEFnBAQPejQ48Mfyq8baMftodJEcoirebo2SJeCvF?=
 =?us-ascii?Q?69Wyq6DcLMUuvj9wO8AiNYoAxRvKhsxevPdQo8DPaXFFkhB58yMZy4v8hh8g?=
 =?us-ascii?Q?rjtkr7n1fnCyrPRzvjhsMW7qJyBWp4xvQ2QU86Gmx+F/qXzGMm2/9hO/Xip0?=
 =?us-ascii?Q?PXHvZBT0vEuBrZyJ3QkW0D/Dfniu12fEWnI8dqUxD9uHmV+hTK7YmXp9E7YG?=
 =?us-ascii?Q?vV5BuKHjLPGGz/KFrMaFh3842NAd6eCj5CJJC/O5eBu1JO50haw8xU6HbVB7?=
 =?us-ascii?Q?LQnMQY/zYYuQTUAnrcuFwUkfWNOhDH9J8wT0oBS4SaIr6dbbLKVQdNy1qhS0?=
 =?us-ascii?Q?7/iZASL2v2zBMStTwAivA8dA3i0YVPC7O42CBiPENd190d0f34+BPPspU33u?=
 =?us-ascii?Q?5WynQbfVkxE7hxlIQDFczdR7KEYYIDkQIYclApcWKZ7lkfMCKe1b9Pe8Wcpt?=
 =?us-ascii?Q?TjvPU+5d8RTx52Use/OYLaU2lz/hnCig8OmTCWLO62GGUtJctVmEd2Rs3D7P?=
 =?us-ascii?Q?s5HX5QnGgl8Ru7I9TH6nfnXJ+MoVuaJPY8AeweSblTA6Fyc7mSHk/9RW6chm?=
 =?us-ascii?Q?t75K0sIfe9DssVsWZ0GDsCpsqLpuIH9V1JY2jO5zIEn3mQpjQNzeUz+5Qudi?=
 =?us-ascii?Q?yvuEZNNJc6UpG6Eh6sNQkwpKVh1eFREENi44duYAwY7//RTGnowW7WUxY7dY?=
 =?us-ascii?Q?CnQ2Hb2BQkeNCpY9rUBJLQFvkIaE8pIWrAJhQlSdsWYWi1bZjF2pUmPoblZb?=
 =?us-ascii?Q?/CgBJhpT70RwzGSA5VnCYT0duazrXaIeCJJQG7ZOQ6dfKYsZ+biBshsOU7R/?=
 =?us-ascii?Q?JSpcBZO0XYs3igI21k+9aC1W4O72JjVPFD3MyJSEtCTKCoYx4CubJf3QBUBQ?=
 =?us-ascii?Q?q4wb+VGvjRYy9HtQP9Go8QWG7ol+e02iHdCqdpIAKI0osDXuT5fr1ABe649t?=
 =?us-ascii?Q?1w7KRlBltTn57ngOnpgNyZRvfgWv6EmLQ0kUAzcgTHkTim6LNUECbSUVoANq?=
 =?us-ascii?Q?5diRzRnLv9GBXh25T/Lg6zLj0lXZT4SANqMzJOvXvolh4MeyCHlYHyZrsn8P?=
 =?us-ascii?Q?9dwckZTGstoVKedKTbeuXQ+xVGkvX6smA4RUOr9KvcMANfWQrdk82n/0Mg4I?=
 =?us-ascii?Q?yoBIxtJLFTTO0Pw+6OdSDgzOu92pTuweVFGH3Q7/5EGZEel5FMy+XPE/MUhV?=
 =?us-ascii?Q?OsHeNRhRnp/pZ/M764kRViMucIaKzDguYmloFVAk4nbIq2s4qdVk7/PDJJVi?=
 =?us-ascii?Q?vW1t2OtyztpDDrYRsqAKgTGqvs7E6xIwT1q2dcdTOPy+I3adiFipi2pMVJ6d?=
 =?us-ascii?Q?B6g7YIBBLGWpzkkd2pido71ToFC9OgmeXHk/VSG7BjCZBGORfPM7nu8NXvIw?=
 =?us-ascii?Q?8nDsxogol61NPYZnUhuXreRiE80bKdAfTUXSxWQ/fDL1dfuoQ4Eq7RVOLZvA?=
 =?us-ascii?Q?jY9ZKetX6xc39Uy1taylFcwXMP/9fDHTXKpJhd2TbVC3OwnPKffXlojEAN1l?=
 =?us-ascii?Q?/k7i9o1vQr1i183jxHvOzM0aTSFzFYwOovcgIvn6Zf/KMAiTBTn4hxm3l0Gh?=
 =?us-ascii?Q?4Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b346430c-4583-4308-2a58-08dc7b7f8757
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2024 23:24:44.2961 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I+irjIgijxoMsawoJwD0GQb8eMAmTmn5j/DAye2yjzUeGwmuSzLLeiW0oYw9mjmN2YlG9+GuUTPqzPKjiSQmadSWTed/pFftHWUyksKCBMU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6011
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

On Fri, May 24, 2024 at 12:31:26AM +0200, Andi Shyti wrote:
> Hi Angus,
> 
> On Mon, May 13, 2024 at 02:19:17PM +0000, Chen, Angus wrote:
> > The WA should be extended to cover VDBOX engine. We found that
> > 28-channels 1080p VP9 encoding may hit this issue.
> > 
> > Signed-off-by: Chen, Angus <angus.chen@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index d1ab560fcdfc..da0a481a375e 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -1586,6 +1586,9 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> >  	 */
> >  	wa_write_or(wal, XELPMP_GSC_MOD_CTRL, FORCE_MISS_FTLB);
> >  
> > +	/* Wa_14018778641 */

I realize that the comment farther up in the code is wrong, but there's
no such workaround as "Wa_14018778641."  14018778641 is just an internal
database ID that isn't meaningful for tracking workarounds in code.
Workarounds are always identified by their "lineage" number, which is
the number that will identify the workaround in a consistent manner
across multiple platforms.  In this case it sounds like the expected
workaround number was actually Wa_14018575942.

> > +	wa_write_or(wal, XELPMP_VDBX_MOD_CTRL, FORCE_MISS_FTLB);
> 
> Wa_14018778641 says that we need to disable the FTLB for Compute,
> Render, GSC, VDBox and VEBox engines, but here we are doing it
> only for GSC and VDBox, why?

Wa_14018575942 (which is a follow-up to an older Wa_18018781329), was
originally supposed to apply to all engines.  But after some
investigation, the hardware teams decided that it was _probably_ only
needed on the CCS engines so they suggested dropping the workaround from
other engine types to reclaim performance unless we started seeing
functional issues when doing so.  At some point someone did report some
functional issues with the RCS engine, so the workaround got restored
there.  Based on this patch, it sounds like the media team is now
reporting that they also see functional failures on the VD engines
without the workaround, so it also needs to be restored there now.

> 
> Besides, in MTL we have the media GT where the MOD_CTRL family
> has address 0x38cf34. Should this be checked and included, as
> well?

The gt pointer passed into xelpmp_gt_workarounds_init() is always the
media GT.  And the GSI offset of 0x380000 gets added into the register
offset automatically so you don't need to worry about doing so manually.


Matt

> 
> Thanks,
> Andi
> 
> >  	/* Wa_22016670082 */
> >  	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
> >  
> > -- 
> > 2.34.1

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
