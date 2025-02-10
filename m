Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5248A2FC7B
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 22:50:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 339EB10E202;
	Mon, 10 Feb 2025 21:50:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pt44bxdd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A8EB10E1D1;
 Mon, 10 Feb 2025 21:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739224200; x=1770760200;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=xwslXmPTafB/JJe4StpvBwMFMKEvReHiIDuaPxD3ItE=;
 b=Pt44bxddapErIwUKFpyBxMwT8cgsxqjt+C+ufJCjAUBuB21RWzmcmEL/
 uzF9+opZwOjxMX7bu5Kue7FAeofwdVOHH7quGgaEVr7fwZkKIhVoNFQd1
 atAGpB0bdW+ay/mPOPOBlmjMOUpxCDJFC6+I+iPtiShDRzpmhFzQ82iRt
 olKOl2c19VW8JB5EjmuKCiFhpb9aAyvvWLgD9wF86PaaPuXeq66zIDxZl
 cS/EAAv+k8PWq2aJ7/O6eZLQXlHNGVVm76dWhLwKi5VySDHsi/NV+4hHf
 RwCpn6LDa+Vx0MnovqWkrZFDrIphRg+gFfuuvFRqJpbqi9XfR1wlaEXKn w==;
X-CSE-ConnectionGUID: e33cHQrBQmqJPmf/B/kMFg==
X-CSE-MsgGUID: 135ZEUlKQg+vGi1zisYz1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="43753018"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="43753018"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 13:49:55 -0800
X-CSE-ConnectionGUID: egPGdWPRRaSYePhG7qqXgw==
X-CSE-MsgGUID: HpBH2MGxT3e5lTzczoE4WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="112280734"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Feb 2025 13:49:55 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 10 Feb 2025 13:49:54 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 10 Feb 2025 13:49:54 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 10 Feb 2025 13:49:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EaEUwgJ9PoEFFgU2ulse8+xTsfj7yeOJeXD05Rp2hohMRz0/1iYIs18LpJwudDy7cC2zz6hbwLTCA0v7cF6oIgBiP5w1jhXPdoK1gO72tuzLIgKnkpFPmxVIlKleeQNtIPKCUsmVAxGdu+0cdIQteSiMP0JjbMxmTXEFBmcSErzb2lKfJlVOD9Q9QPmOKAhCfDvnQpw+DyOUWUn5drp0t9mgVc6p1h5xPrAxDnq6s5lrazrisrfPiKkWAli5xDPGi1NPfPtNFK/FysAqoE/SAoZyv/L97CfV2q79rOiwAthOl17Kw9kiTNcfozq7EiVWrwpDLOj0bxgBrXSp5bAAcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+sH14zIZ1y7lYLiZsretGjPPnind4ZJHog3FNwlbftE=;
 b=kaVPLFNny4aAVW+5Rg4pvsz6kzjhBrXzXZwdDGTxu5naUewRiBMxQwxakPydXH6BL9y5qpIVzwVRQvqPDv3VKDwvjWVFH1Icp5SL19ATNNmpRSqXS3Fr+H8wNgUAqMj04J2rQtavPoVz0ht5/AZkMuPzqPMz6uBrOOAuyT7JgUb0Tv+kNJoMf+pG+XshvZK+WzHWp+WXXN20JkPnaZhMf4miiAf4fDUCyL0CeSxDm5vUlXAadVZfI+4ibNJrCZ0k5gAOFUhbv0UcHMXg8ruUtRKtWiCHlGQ0DOASyOjVimVPGtBpJSIB3wZwsmEu3OXxrDPc6C75X+rOJ1FblpzMsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CO1PR11MB4817.namprd11.prod.outlook.com (2603:10b6:303:98::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.18; Mon, 10 Feb
 2025 21:49:20 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%5]) with mapi id 15.20.8422.015; Mon, 10 Feb 2025
 21:49:20 +0000
Date: Mon, 10 Feb 2025 13:49:17 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: Lucas De Marchi <lucas.demarchi@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <gustavo.sousa@intel.com>
Subject: Re: [PATCH 0/3] drm/i915: Fix scanline_offset for LNL+/BMG+
Message-ID: <20250210214917.GP4460@mdroper-desk1.amr.corp.intel.com>
References: <20250207215406.19348-1-ville.syrjala@linux.intel.com>
 <hwau7ipfc7kfmjtosaxhdiz5cjvc3y3dborr4l36lugrfw2s75@bb4p7hjsb7wa>
 <Z6omejfSAI1NkOGj@intel.com>
 <2isgb47k5kc6rvergx7fsxlfjkfitebcqdgypz4opcvscin32z@ok2hpqxmzolk>
 <Z6pbch7aWutbSC8S@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z6pbch7aWutbSC8S@intel.com>
X-ClientProxiedBy: SJ0PR13CA0082.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::27) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CO1PR11MB4817:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e72a6e5-9a21-4c51-63a0-08dd4a1cc64c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?mJr4RrK3RJB7TuZpBVpisQjhWsyS6RI2xgQNer9vO7UJFsEahcQse9m5zc?=
 =?iso-8859-1?Q?gssqP0r9vwLXkWiX98D25yWgdJ0/qI+XvIndp5XTBEs6QGfYWb7HGU4erL?=
 =?iso-8859-1?Q?/WR65Kb1e9ZCVaT1Nmkf0RAhM/koucR1+fvSXkCvfKNUY69jhuUv//IELl?=
 =?iso-8859-1?Q?kuIo0kAC/bB+1FOdz7jxXLBjUuDw7gGdS+hJpd5pZrixCqrctQP7qd4l2E?=
 =?iso-8859-1?Q?RR5wXK+st1KSiSwUbJoLIHt9T82fxh7iPrEyOZ/uTPFa1D9x/9Tckv47PH?=
 =?iso-8859-1?Q?fiRy1qWbzOM9108mqwyiiiyPBe7qmCSK9hrRx5A9abI7yuX6afBjviLMUA?=
 =?iso-8859-1?Q?h2Ex6pbs1uPYQB3SVLRfKIK18764xAa/NpPLFFUY5AKCAdJkF1N+O8ZudQ?=
 =?iso-8859-1?Q?nfr0YMTcxJ+CN4wDO2++OQFMM8MdTOs+qAsppQzwf832RnqI816x8e/A0C?=
 =?iso-8859-1?Q?lkwRpn9jP02BERKFssafxvUMSI7xZeQ7TYozDtK+ZNZOkKXmr7JNhIVjBt?=
 =?iso-8859-1?Q?eWtaDiHGgRxoeTNTrJJVkvj1hnKQEhQvTRdbKR3K/ADK3NjEfeMZKIMEmn?=
 =?iso-8859-1?Q?0CT+GWwwMJEVQkp9nUe4ExmSZjKRyMfCkEvbU/2s0FOq0SBtg3is8LLlbI?=
 =?iso-8859-1?Q?SrtwdZ0QsmfOVS0pn/tEl1CweWj54eduR1cp5RXh56FhfiXYbS1sOs6E/4?=
 =?iso-8859-1?Q?xj0HvLAlIrby81ZXueHmNzEij//ldnZni6oEJ/AB8VM9Mt1u1x+SM7s0Kz?=
 =?iso-8859-1?Q?JmhYLv1RflavfxlQdr1KbEwsnUtzl6oWWgoQ0oHetPuFaX3I2zZLpxAMd9?=
 =?iso-8859-1?Q?XADbyYoE1AiO4ynSiUB6sfctbVBQZcCjFvLh5cawJaaU0qt62biQDduOYH?=
 =?iso-8859-1?Q?VsUvA40+SVfz+xC/ODJl/wUp2SDBt6k/5idjGRFNSbf4oQc8K+ieQyTMtk?=
 =?iso-8859-1?Q?By0b1vx+mx5gVnMDAznpE3eRp+IUhiAKdkNCRRloaP7wZyx4mdpJL6Crl2?=
 =?iso-8859-1?Q?MqlUopGRcvh9e/A/P+2zMVKlyAyv3njpmTUNzPyUtNQhncAbn5jQ4S5ErD?=
 =?iso-8859-1?Q?ovWy4iuWSx6C5zaQrvHBWxuY1tQAJ/1SKTcsw0wz7Wh+zCzFKImB9wxz0k?=
 =?iso-8859-1?Q?TpZ7FBVVeQIbPiULZZsxJCHKAYs4EYexKCfUqxuZY8eq+nW1USDnBPicLK?=
 =?iso-8859-1?Q?1wXIFIMwVmqUfT7rLc2AcxCLceE7Z2RZ5JgqA2GKN9fHaBmKBH8UVcS1FA?=
 =?iso-8859-1?Q?jQjWwEtWgYdVeJBsTTFbPCBGn2hOeCLMFG+mITXUnFG6POeZMCvSBQ/1f2?=
 =?iso-8859-1?Q?Q+3IoTyFQZRBNQSHHY4YncL2Xr46BzjYAQKLiBzdBVEI/LcgdLUY0WSIdG?=
 =?iso-8859-1?Q?sa8GE5bhSQo9vWRAtA7HPXnzHRL0O/zruaEQ6ltw0O3z+51bin1/D+vZhm?=
 =?iso-8859-1?Q?EJ2gUbql0ygEyWfp?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?Gni6skWprUj+OLgy+0+3AuMAVNP+jbPoUVFvQ2uaxHfwIt5LT+Q9mXvVz7?=
 =?iso-8859-1?Q?AY7WRDlYtSU5QRvLFdQu5mJ9PZSnmPH+rDcPL1qcRplKGqeYu8q4YePzLM?=
 =?iso-8859-1?Q?DBtxjZxIjnomHY7SardkXvcl3o99tWtFRhAZC3MOKJuUnIoapPLKDaMl0D?=
 =?iso-8859-1?Q?7G48igaRgm+jRSUOdhSvmEe2XeFlTjPIskrfpCFW+xHMTbHUBU3eRQ0ngd?=
 =?iso-8859-1?Q?ozZ4EFe+mQpbhTXlmHpmpxqIlDVj1ThtBdFXON0fUE9dp4cdtGCdMiJvOt?=
 =?iso-8859-1?Q?UZ8+QToJ9EVOV9bLYn9QHyyss7fsTEM2dwdmozHAKVTk3FLx2d9R3nKCBN?=
 =?iso-8859-1?Q?qMQu5WjLYS8juvkYEsX0+OI89qJYC18HtHtkzWE0igcmya8/+zo5X69FOp?=
 =?iso-8859-1?Q?YIHCcRATqRPBvaSD7CWcz7VqKcpV3y10dgVCWPJf6pusg0w2yA/BVHsV12?=
 =?iso-8859-1?Q?U1KdRKP1IdDJZ2G+J4It9CGByIK+CTgpo5shBKK+99f3IFgTH4huOwynhF?=
 =?iso-8859-1?Q?nk2Bn718sGGwrsQZDNTQCFvYQ2GqsKt9NLNRQCcO+qidShwLhaMZUsO+Ed?=
 =?iso-8859-1?Q?+T/2uiIRY2FgeGJAGtcq1h1nGPRdmgDlS3KjoZxQdXkGQTuYTFH154QsCS?=
 =?iso-8859-1?Q?MQuWAu0AwXgk9msVEgJU65GDveUYOiUds0IjInmEKRlg6wsOqlTKoJkmD1?=
 =?iso-8859-1?Q?j9jS46lCCUwpZlJpJ9GJHE2BEr7i37+gknzCQt2z76KLt8HzeaPWQ5s9o5?=
 =?iso-8859-1?Q?m+j+iH/Egf1hHgYDxjhnDv1dbrgM9xDff4NhQuS50yh55heRfn/JOiPHIJ?=
 =?iso-8859-1?Q?/ihFW2OiGjON9aZa65X+wsTDC2BaXxPyWDLwAcWr7kT/Y9Fd5DhL/sYwGQ?=
 =?iso-8859-1?Q?PXRHhdFWfiS4Kodd3kBWGJYOOQvSC2nSEPStE2VCkAUBTM7fZsw7lTaKJS?=
 =?iso-8859-1?Q?+T8cv8suSgPeU+txXu+PuGZQUTha1Hz0mGev4vECNVlP3cjUxobjqlRO8x?=
 =?iso-8859-1?Q?znI6RlF/ovi4Y5upebRI/KmgfdSOJYLtSNOVF5q3Gu3FLkAh690ZM1zgMq?=
 =?iso-8859-1?Q?TW3B1y9VvzGalbpqAvCId9jBqcwXHgtO6ntybwFGgrconKM846PGP35vh9?=
 =?iso-8859-1?Q?Cz+ahk5HIN4sYSeALSYDRdB5ePdBsMaRZDn0q0OnW4juSxywqRiqXqylQY?=
 =?iso-8859-1?Q?At3BxvJLWWPuZy7rS0zYooi4C8QT3BQZfUG7BhqofudCw7DeNhNH3cWymV?=
 =?iso-8859-1?Q?LtcmVxT6Fm5WYm/+pkqI0scZ6jn+NLN6kZdfdZbkYhZ0H+ecas5vRKTgwa?=
 =?iso-8859-1?Q?93XPG8JnxjYR2YA5036/rX4uK4tHdeD5rOH/kcqn7QbC0Rc/uu9SU4zLkR?=
 =?iso-8859-1?Q?pVPan0S3evqSpQs//H/SFniXxxfwvZHK02GvqXrMscgW6r1XRQx27l0foC?=
 =?iso-8859-1?Q?VMZNjn702kvJPJLer/BZ+uwQu/ZwnWEABhlnmpBeoqVtliTrUt708Wc/0Y?=
 =?iso-8859-1?Q?6idSrWnKyXcKlGsTxzaMvhQy6/4iDte6L5dXhkIfQmJzh4Nkjdp4mky1q5?=
 =?iso-8859-1?Q?qZCJcjzbgAiwrtuUFZcH23iHvZInZWQDiokHUgHw9WuexbWOfLXj+YkAcq?=
 =?iso-8859-1?Q?kUk3og4xSkII3l7LFouhISrRyYr5Z+hRWC1QvKPZbjfArnLujEJeZU6w?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e72a6e5-9a21-4c51-63a0-08dd4a1cc64c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2025 21:49:20.4582 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9+NgIJUeWAuO6e5sgDhI98tBGo17vS3pqNgKnp4gti3AbBYdRf59Ds+eLBqDMHZcghHbCIs13RtlWDBVIFyAXfrPda8SQvB5TcoAZ6VUpoU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4817
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

On Mon, Feb 10, 2025 at 10:02:58PM +0200, Ville Syrjälä wrote:
> On Mon, Feb 10, 2025 at 12:10:56PM -0600, Lucas De Marchi wrote:
> > On Mon, Feb 10, 2025 at 06:16:58PM +0200, Ville Syrjälä wrote:
> > >On Fri, Feb 07, 2025 at 04:41:11PM -0600, Lucas De Marchi wrote:
> > >> On Fri, Feb 07, 2025 at 11:54:03PM +0200, Ville Syrjälä wrote:
> > >> >From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > >> >
> > >> >Something has changed in the hardware on LNL/BMG because
> > >> >HDMI outputs no longer have the extra scanline offset.
> > >> >
> > >> >I confirmed that MTL still has the old behaviour, which
> > >> >is a bit weird since both MTL and BMG have display ver 14
> > >> >vs. LNL is version 20. But can't argue with actual
> > >> >hardware behaviour.
> > >>
> > >> <6>[  210.368608] xe 0000:03:00.0: [drm] Found battlemage (device ID e20b) discrete display version 14.01 stepping B0
> > >> vs
> > >> <6>[  412.999204] i915 0000:00:02.0: [drm] Found meteorlake (device ID 7d55) integrated display version 14.00 stepping C0
> > >>
> > >> So 14.01 vs 14.00. In the driver:
> > >>
> > >> static const struct {
> > >>          u16 ver;
> > >>          u16 rel;
> > >>          const struct intel_display_device_info *display;
> > >> } gmdid_display_map[] = {
> > >>          { 14,  0, &xe_lpdp_display },
> > >>          { 14,  1, &xe2_hpd_display },
> > >> 	...
> > >> }
> > >>
> > >> So maybe we need to check for the full version >= 1401 instead?
> > >
> > >Just another pointless detail I don't want to have to remember.
> > 
> > we don't need the pointless update to the driver X months/years from now
> > when another platform uses the same IP. 
> 
> We have no idea if details like this have anything to do with the
> IP version. And in fact we have no idea idea about that for most
> details since the spec doesn't actually specify any of that.
> The only thing you can really trust when reding bspec is the
> platform.

This all fundamentally changed with MTL and its related IP blocks (not
just at the driver level, but across the whole Intel organization
workflow).  Aside from some special cases that are tied to the SoC
rather than display design, display hardware changes are no longer
designed and defined against specific platforms.  Instead the whole
process happens on a specific IP branch, identified by a number like
14.00, 14.01, or 20.00.  The binding of IP branches to specific
platform(s) (or SKUs) is something that happens separately and may or
may not change over time as new platforms/SKUs come out; some which may
or may not use a new branch vs reuse an existing one.

If you dig into it, the pages and various changes in the bspec aren't
truly tagged to platforms anymore; instead they're tagged with something
that only ties back to the IP branch and version number.  For historical
reasons the bspec tool tries to be "helpful" by attempting to do a
mapping of IP -> platform when it shows the labels, although the reality
is that this "helpful" part seems to just cause more confusion than it's
worth given the modern mix-and-match way IPs get used in platforms.
Supposedly the bspec is eventually supposed to start showing/filtering
based on IP rather than platform, which will more accurately reflect how
drivers are actually supposed to be implemented these days.

The special cases that are still tied to a specific platform's SoC tend
to be the physical/electrical characteristics like memory bandwidth,
voltage levels, etc.


Matt

> 
> You can try to work backwards by first checking basically
> all the platforms, and then trying to see if there's some common
> IP version among them, and no other platform has that same
> IP version. But it'll still be just a guess, and based on past
> experience it's probably going to break as soon as the next
> random derivative platform comes along.
> 
> > >Also it's already a huge pain in the backside trying to figure out
> > >what new platform has what display ip. Someone really needs to at
> > >least document this properly. Or perhaps we should just put the
> > >expected display ip version back into the platform definition and
> > >then just double check that the version we read from the GMD thing
> > >matches our expectations.
> > 
> > there's this indirection with gmdid_display_map and name of the IP, but
> > other than that it's pretty much discoverable. From the bspec pov it's
> > all in the configuration page for the platform and you don't even need
> > the IP name. Example: 70821.
> 
> But you can't even filter on the IP version number, and filtering
> is the only way to make any sense of anything these days. Ie. 
> the only thing you can actually trust is the platform name.
> 
> Also no one wants to have to open up all those pages for most
> platforms every time just to figure out which platforms have
> which IP version. We should just keep that information in the
> code so that you don't have to go through all that pain every
> single time.
> 
> > 
> > >
> > >Until the hardware people get their act together and the display ip
> > >version actually has some real meaning we shouldn't use it outside
> > >the major version IMO.
> > 
> > it already does.
> 
> As I said, the spec doesn't tell us anything about what's supported
> and/or broken on each IP version number. So it's all just guesswork.
> 
> > ver.rel is what we need from the gmdid here. And it's
> > used on the graphics/media side as well:
> > 
> > 	git grep VERx100 -- drivers/gpu/drm/xe
> 
> Every time I see that crap I get super annoyed. I know which
> platorm I'm working on, I don't want to have to figure out
> all the different minor IP versions that it may or may not have,
> or what other platforms may or may not have those as well.
> 
> Major numbers I think we can sort of use because those generally
> do map fairly well to actual features (though there are tons of
> exceptions to that rule all over the place as well).
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
