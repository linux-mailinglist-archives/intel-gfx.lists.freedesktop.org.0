Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C21D3AB6C55
	for <lists+intel-gfx@lfdr.de>; Wed, 14 May 2025 15:13:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E01EF10E631;
	Wed, 14 May 2025 13:13:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JnpV//yb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B34610E62D;
 Wed, 14 May 2025 13:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747228408; x=1778764408;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=fF9rGJwGAQLnqTSE01afjU1AkP4Am4isNkgBxmyG9ds=;
 b=JnpV//ybHICEkT9gHVaChgWEI6MeCL5R0Rj0XONXyyBr81q73Sg5q1tV
 2fjK0frf9vZ2NlfexUwgTWf9Vxkh99jptTVOUdt2Btl/YHGt8omZWi81+
 jDDximpjnIrrHOtda6yEDES5JFaH1vV4djqc5qt5JMorv0eHE3JAnRZ4W
 /rXBDiSfA699xO5MZ5m06mvwwYPJXvoVXC1MlUF6tQvIp5Pk8qiGFybaN
 oirynVSzqrRfI64jKZlTomi5zvuHoh5p2HPNEjSFl7o4Zduei9OBV626Z
 wXIsrEK7sUncHavrdQ3vCCEMbtQrcnHqofmK/SqJGoxkckn4cVdAedXzm A==;
X-CSE-ConnectionGUID: iOHKX8BeR5m9jeQDB7C2Mg==
X-CSE-MsgGUID: OUaV0VeGSIGtR+sytY2Ljw==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="60461007"
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="60461007"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 06:13:21 -0700
X-CSE-ConnectionGUID: KVzoPNvdSGORcjZM+n0fJA==
X-CSE-MsgGUID: IFXjFV92TdGK+nuGWlJcGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="143156588"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 06:13:21 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 14 May 2025 06:13:20 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 14 May 2025 06:13:20 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 14 May 2025 06:13:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xg5wz877dEOYguWLZCvmGtMnl7+1qA7FuqRJ99sZ5NZgUxW7YpOD/0r7ZoPHAIaY5IW8/PzwugHaGLUXzXwSnkOuV+h22JvHR+2JcLfihQJ0n35JSM5364WF4Ix0h0TJLK1Qs9ErNC/w4oXYAq/7prxRzVL0b8jq20LmeM24pl9wYz1Qpt3FcLcE80S9CIo1jaJ9Ns5JWtDjodbf91LrSxxZm69fFBsNQsqPDlFPRLwBCSBrHaTTY6ytI3U9SmRS1q7U+DDjbvQBuzZYLg7E4h4HpeDkyOHCdR2Wyqbb7ebCnKsM3Zbxt7APdxH3tPzS8Xu7jMamzoCs9k1WM1ZIhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oVD6ji4/wjY1hgCrE13/U2itUmqjQyOfp6NDrKVPWAE=;
 b=if1rINNkl6MHZXBoqLyG0FGfbCdpyjzVsVC3qEipAhFKIuegV0bKE9P12WIXEsbH1RpvhWhqZDNyfMeQUj/5T9ONvNuZxCEV2aYZ1YK/ONcBhy6W2Ew5RiSc9lMfFbOLa5a0QVI8RlKKnd727T0jREaW7wYQWr2H/PrtR7bEClCt+2YpJh38eWNNP3pNa8VMh9KRevDHu0FUwje+WX1RmkZ7UrrG/bHK0VBetYs3nrRDeDO7f99bOGoTj9unA2KBD1TbosKL33FyGQZeAk04utMlSq8EguMHHuMr9DTg/j5wHNjoHsTyWciyv+X1Zn/YGypf+knxiFabtl7UgOnuwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS7PR11MB7690.namprd11.prod.outlook.com (2603:10b6:8:e6::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.29; Wed, 14 May
 2025 13:12:34 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%4]) with mapi id 15.20.8722.031; Wed, 14 May 2025
 13:12:33 +0000
Date: Wed, 14 May 2025 16:12:42 +0300
From: Imre Deak <imre.deak@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, Gustavo Sousa
 <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <I915-ci-infra@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?=
 =?utf-8?Q?lure_for_drm=2Fi915=2Fptl?= =?utf-8?Q?=3A?= Use everywhere the
 correct DDI port clock select mask
Message-ID: <aCSWyo60F_wRXPcm@ideak-desk.fi.intel.com>
References: <20250512142600.824347-1-imre.deak@intel.com>
 <174708367140.71634.6259169189791900977@c664b1dc75d1>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <174708367140.71634.6259169189791900977@c664b1dc75d1>
X-ClientProxiedBy: DUZPR01CA0197.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b6::11) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS7PR11MB7690:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a69ceb8-ffa3-43a5-d811-08dd92e8fd2a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?DfrRz6KGVYufEyNVq1L/P2IEtHl9fCb8pBb//Pkmhb5+SM9NmTacxebnkvk6?=
 =?us-ascii?Q?sgbcEf2AxapYchxWp0G4fNj+Mzeee1/nteEp/7+tRFVi9+zYBkaFOvOmucy4?=
 =?us-ascii?Q?kREgcU3197E+4yl+sQpqUwY+aSYpykdfr298OyvdQ5xBm00T6ED7FaUmcvs2?=
 =?us-ascii?Q?yry0fgeKNqgfer8Fwh3f4h8vcG+KqaVT9aMZ/kRTgwCFogkVPDaIPVgeVG1b?=
 =?us-ascii?Q?yx4BKjbKN850pduwzNd7C6j3SkQgMcDwdlU+2xnV3KNy6sstSu1VcWeNASpz?=
 =?us-ascii?Q?ABccSpFbCjmgl0XYhwkrtNb7DCXpN4ElHmweT/EXQW5ahThzQViNWemev90C?=
 =?us-ascii?Q?N4hzxOenvVFUula6fvX0RtHRq6LAuqvzw0HkxsfjElh/xRkBKr+mPrFHQme/?=
 =?us-ascii?Q?CM1IVZLkNelEuEwC4XhKNcojrZcB2e6LR9pZp0fmi1zOfUaza+UwNQzYNXbf?=
 =?us-ascii?Q?f1jElsnyEFRq1s1/W/RMvfd4xq/gBuwndjNQ20OwBa0aiwIIU2BDdir9aYXh?=
 =?us-ascii?Q?7DmJ5UeT2IatiKME3V16qC2+YL2mYQYa0FCHNWEpWF5ZoHwuFfn+0YetY7Bd?=
 =?us-ascii?Q?nclOh1TrTaTSBAsuIQthHkVpkpm/wFd3tqHRY3bFIIt6NiHCrz+9zgvf4EYI?=
 =?us-ascii?Q?2+BHkWSVhZ+idloIx+5tbygafXZakny45slcfZniLknkyIiw02wh8rEzrFXD?=
 =?us-ascii?Q?zBB02TZbbV+r861RdPaBUFpDT73b1LApVcBlwjgsOzGyNPtoj2bmJmn+F5Gs?=
 =?us-ascii?Q?W6d3Ta59XtAa+Y7I7cxad0xzLfuJhLBcy7l6Z7lKq06Sajb0g2yy1BqLp51l?=
 =?us-ascii?Q?kvIC+KXxGZ9dGwsbZlE0FrnG0WR7iGfbXK4IZ2xnXI3VqvWwo+E+GU5prFxG?=
 =?us-ascii?Q?jtJov57vYifc6cnHtkRXUFbUhKmDNE3dtCMW9v3F9Fmd1y2RFJvMWG6tlGt4?=
 =?us-ascii?Q?hVzfzD7U+eu9DvqTS9z1pzmCLU9Iiy70QON/EqaGJf+vCt+iIVTg0YE38oVn?=
 =?us-ascii?Q?no9iRUuEd8zFsyrDg6xCIIbHHUzwROkKMJZyfgbnz+8fGTNFbVJ+utAhTCUm?=
 =?us-ascii?Q?CAigT6jZAigbUrHUHqVz1G/pX6G+QylDIwMwtEYHXg8OmW9atdCBL7NLAdFO?=
 =?us-ascii?Q?feWHaaNN4F1DZn6Nku3oaqrGMyleNQeg7ll5/nP7ffMi+HjYYwL50yVFI4wj?=
 =?us-ascii?Q?085+eXyTGboX/+JRYN61u1vAcndF5sz4RyNlSk9IfsPSP4jmujP+kTBtEFs5?=
 =?us-ascii?Q?sWYHT69gTv8f4jXwCluEsmpb5QoIt4ygYnS+dYG6diKHbbGo/kD+jP8FFwrm?=
 =?us-ascii?Q?W/L+5B3Up8S2sFhOtGyF7MYpwY6dgbA0fhrItH9xCnxL+Oa6KL/aFf1jU2Tu?=
 =?us-ascii?Q?avwo1eI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?c9iK+Zykr1hwHw5g+8eQv437WzBqDrBmYqkke7xhrbR+7F6H4WZ4+dVsGG/j?=
 =?us-ascii?Q?+Q582ZiraW8ub/U0LgeLjqKjX7BysMfFSWfPQCVNY77MFe8Eon9t0/cnKOnB?=
 =?us-ascii?Q?Wov60uiJOJ+zgs9szZqc3JaK61QbAftlPXbN8FezO47eM6rGCyRFkFe7h4qp?=
 =?us-ascii?Q?9JNMHu9UDpwgt2/DoXJYoGZebdJvWhegthuTtls3zts49tR0S7MUJ7Bo4rLw?=
 =?us-ascii?Q?d6jmkAUSMTqyjvmNikGGMCXzRjqSbRgTyz1brQ7WY0sIZXFKDyo2/61HvJ8R?=
 =?us-ascii?Q?LjoVMHexCgWyw28VHwmtUEbWMqelAsmRkYiWFDXv96aPx2yo9NPzgrg9za9p?=
 =?us-ascii?Q?fDLJ8j6wSyHM7g5NUvNmiHT+BjcGXH9gFVs1NXB1APmVEBq//9BEZwIoXhIr?=
 =?us-ascii?Q?sQObvLgSAIy25NWxoJl4LX3hkWRdnXe19zrjWcGg4tb+mro3eURfHcKinnc+?=
 =?us-ascii?Q?qnU2o6VCiRzwTMORYhv10uqm+HEglzztJiFAZ/ZY9k/bBE7mkU3vMbQAvCvi?=
 =?us-ascii?Q?BpvKDkgZhF76ypl0OhkZtq58BpWodjz450rI38fbCHdi+/6LfvrJo2/zhvYR?=
 =?us-ascii?Q?tQF4R+n3S/fsW1J9lk8YVIUJybdDDaKdFpkm22pVvuzsu+L31zSdyD3Qy9jK?=
 =?us-ascii?Q?02qF5YDD37lfXitiqaDLs6j51HpOc7UoXHEnn5vCa1Rj7H6A7gSlf0G8fv7S?=
 =?us-ascii?Q?Fwwd+T8HpyR4MbnjhuHUE4IW4r3DlsD/nd/WPStL8gB9XA60YBXJZ8UEEu6G?=
 =?us-ascii?Q?x11cXB7oO8QYG7Hf+dqCKMy+wmZeFM5UjDmbRt6Em1W0XGzOG0risZdATUNK?=
 =?us-ascii?Q?LMmLu60sl/G4ks9zxwJAt0ByeqXCKVzcAhA/aHjR0zZXlGAxs88SjegIVwOm?=
 =?us-ascii?Q?MlERsGfF09IqC2HeoZpzPFKX9zQq1gn6yb0+lLrJnUfQ1O7ImjzCZE7OWyNY?=
 =?us-ascii?Q?Z4YyonQqCQYGHu+BuE5yJBX7jhfevfPn9V3O1MBMCT2HkZNOP7STjZn+dvSa?=
 =?us-ascii?Q?EdsZUitbJkxBuATgQvcU3b8ym5HkviBdMWO739JWlJA0sm4DKGrlhrRfy/3Q?=
 =?us-ascii?Q?PyGOz2mMrYYOFAviDhkgcufnvtRYCNdCpFzoA5wv0Qh8fZCb4QCa/ZRHM3vf?=
 =?us-ascii?Q?ZmE2K1V5K3YYn0542s7pxhmi3OTdx1dNFNeUEIGlWRcthBppgAt7LT15HgeT?=
 =?us-ascii?Q?GZwgVsUjqB3x8+ESe+nr05gu4Fl7otcwVTgh7xlbbj5Dy/vrdi1VCUlpKZWd?=
 =?us-ascii?Q?MhaRc34738GQ/xn5oRDse8gIXczzjSCkvfbpVs7gmA0FdgvNURQHAwGdlcGf?=
 =?us-ascii?Q?mhzVhpi2s0JZkFFf0+tuiCxdShJhNhwYRk5c0pMlZSkt12iUtwmgKcVxjszH?=
 =?us-ascii?Q?QJzH4BU/oGyhxuBiOmmK6KEUpR0CMhY21hdqiF4uzx+5BOCnGDC8pezQL+iY?=
 =?us-ascii?Q?QogfvkM858IbxVMad75uqTTfz57T+7b+Mh+XlHa9JcoqmWn5PtbEJCbZmMCw?=
 =?us-ascii?Q?abm9sfmNW2TzwaPjHS4gqeVvnkt5XWLP9B+AEtaZg/9dn3qf2MfFHvTBLsNV?=
 =?us-ascii?Q?TWTIUKkbnoBH70/rY/B7Cy0bFZyXKH48Z2JZgIND?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a69ceb8-ffa3-43a5-d811-08dd92e8fd2a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2025 13:12:33.8830 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UvSGwev0sgi7btmJDGqZVukX2kG0XVAQhNrFP8ec0Nv6iYhBdfO0YB+YuXTKO8Wl5kTRTEQuBprTLahIWhCQAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7690
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 12, 2025 at 09:01:11PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/ptl: Use everywhere the correct DDI port clock select mask
> URL   : https://patchwork.freedesktop.org/series/148894/
> State : failure

Thanks for the triaging, reviews, testing, patch is pushed to
drm-intel-next.

The failures are unrelated see below.

As I commented earlier, it's unclear to me from the spec alone if a
register bit can be assumed to be 0 always. However, it'd be great to
simplify things with that assumption, I think this can be done as a
follow-up after clarifying the semantics of the particular register in
question.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16534_full -> Patchwork_148894v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_148894v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_148894v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_148894v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@fbdev@write:
>     - shard-dg2-9:        NOTRUN -> [FAIL][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@fbdev@write.html
> 
>   * igt@i915_pm_rpm@gem-pread:
>     - shard-dg2-9:        NOTRUN -> [DMESG-WARN][2]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@i915_pm_rpm@gem-pread.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-tglu:         NOTRUN -> [ABORT][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-6/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:
>     - shard-rkl:          [PASS][4] -> [INCOMPLETE][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-rkl-6/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-3/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render:
>     - shard-dg2-9:        NOTRUN -> [ABORT][6]
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html

None of the above hosts have a Cx0 PHY. All the 3 DG2 issues are on the
same host and same test run and seem to be a consequence of/related to
an earlier issue at:

<3> [295.897522] i915 0000:03:00.0: [drm] *ERROR* GT0: GUC: mmio request 0x508: no reply 508
<3> [295.898082] i915 0000:03:00.0: [drm] *ERROR* GT0: GUC: Unsuccessful self-config (-ETIMEDOUT) key 0x906 value 0x14c0800
<3> [295.898219] i915 0000:03:00.0: [drm] *ERROR* GT0: GUC: CT: Failed to register RECV buffer (-ETIMEDOUT)
<3> [295.898227] i915 0000:03:00.0: [drm] *ERROR* GT0: GUC: CT: Failed to enable CTB (-ETIMEDOUT)

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_148894v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][7] ([i915#8411]) +1 other test skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-8/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@api_intel_bb@object-reloc-purge-cache:
>     - shard-dg2-9:        NOTRUN -> [SKIP][8] ([i915#8411])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@api_intel_bb@object-reloc-purge-cache.html
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-rkl:          NOTRUN -> [SKIP][9] ([i915#11078])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-8/igt@device_reset@cold-reset-bound.html
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-tglu-1:       NOTRUN -> [SKIP][10] ([i915#3555] / [i915#9323])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@gem_ccs@block-multicopy-inplace.html
>     - shard-dg1:          NOTRUN -> [SKIP][11] ([i915#3555] / [i915#9323])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-19/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-dg2:          [PASS][12] -> [INCOMPLETE][13] ([i915#13356]) +1 other test incomplete
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-dg2-11/igt@gem_ccs@suspend-resume.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-5/igt@gem_ccs@suspend-resume.html
>     - shard-tglu:         NOTRUN -> [SKIP][14] ([i915#9323])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-6/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_compute@compute-square:
>     - shard-dg2-9:        NOTRUN -> [FAIL][15] ([i915#13665])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@gem_compute@compute-square.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-rkl:          NOTRUN -> [SKIP][16] ([i915#6335])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-8/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@bcs0:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][17] ([i915#12353]) +1 other test incomplete
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-glk5/igt@gem_ctx_isolation@preservation-s3@bcs0.html
> 
>   * igt@gem_ctx_persistence@heartbeat-stop:
>     - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#8555])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-8/igt@gem_ctx_persistence@heartbeat-stop.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#280])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-11/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-tglu:         [PASS][20] -> [ABORT][21] ([i915#10030] / [i915#7975] / [i915#8213])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-tglu-4/igt@gem_eio@hibernate.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-10/igt@gem_eio@hibernate.html
> 
>   * igt@gem_eio@in-flight-contexts-immediate:
>     - shard-mtlp:         [PASS][22] -> [ABORT][23] ([i915#13193] / [i915#13723])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-mtlp-3/igt@gem_eio@in-flight-contexts-immediate.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-mtlp-7/igt@gem_eio@in-flight-contexts-immediate.html
> 
>   * igt@gem_exec_balancer@invalid-bonds:
>     - shard-dg2-9:        NOTRUN -> [SKIP][24] ([i915#4036])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@gem_exec_balancer@invalid-bonds.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-tglu-1:       NOTRUN -> [SKIP][25] ([i915#4525])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-rkl:          NOTRUN -> [SKIP][26] ([i915#4525])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-8/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-tglu:         NOTRUN -> [SKIP][27] ([i915#4525]) +1 other test skip
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-4/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_balancer@sliced:
>     - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#4812])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-11/igt@gem_exec_balancer@sliced.html
> 
>   * igt@gem_exec_big@single:
>     - shard-tglu-1:       NOTRUN -> [ABORT][29] ([i915#11713])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@gem_exec_big@single.html
> 
>   * igt@gem_exec_fence@submit3:
>     - shard-dg2-9:        NOTRUN -> [SKIP][30] ([i915#4812])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@gem_exec_fence@submit3.html
> 
>   * igt@gem_exec_flush@basic-uc-prw-default:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#3539])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-8/igt@gem_exec_flush@basic-uc-prw-default.html
> 
>   * igt@gem_exec_flush@basic-uc-ro-default:
>     - shard-dg2-9:        NOTRUN -> [SKIP][32] ([i915#3539] / [i915#4852]) +1 other test skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@gem_exec_flush@basic-uc-ro-default.html
> 
>   * igt@gem_exec_flush@basic-wb-pro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#3539] / [i915#4852]) +1 other test skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-11/igt@gem_exec_flush@basic-wb-pro-default.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][34] ([i915#3281]) +4 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-8/igt@gem_exec_reloc@basic-cpu-gtt.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#3281]) +3 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-8/igt@gem_exec_reloc@basic-gtt-wc.html
> 
>   * igt@gem_exec_reloc@basic-range:
>     - shard-dg2-9:        NOTRUN -> [SKIP][36] ([i915#3281]) +5 other tests skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@gem_exec_reloc@basic-range.html
> 
>   * igt@gem_exec_schedule@preempt-queue:
>     - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#4537] / [i915#4812])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-11/igt@gem_exec_schedule@preempt-queue.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][38] ([i915#4613])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
>     - shard-dg1:          NOTRUN -> [SKIP][39] ([i915#12193])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-19/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:
>     - shard-dg1:          NOTRUN -> [SKIP][40] ([i915#4565])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-19/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-rkl:          NOTRUN -> [SKIP][41] ([i915#4613]) +1 other test skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-7/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-tglu:         NOTRUN -> [SKIP][42] ([i915#4613])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-6/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_media_vme:
>     - shard-tglu:         NOTRUN -> [SKIP][43] ([i915#284])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-4/igt@gem_media_vme.html
> 
>   * igt@gem_mmap@basic:
>     - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#4083])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-11/igt@gem_mmap@basic.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy:
>     - shard-dg1:          NOTRUN -> [SKIP][45] ([i915#4077]) +1 other test skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-19/igt@gem_mmap_gtt@cpuset-big-copy.html
> 
>   * igt@gem_mmap_wc@bad-size:
>     - shard-dg2-9:        NOTRUN -> [SKIP][46] ([i915#4083]) +3 other tests skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@gem_mmap_wc@bad-size.html
> 
>   * igt@gem_partial_pwrite_pread@write-snoop:
>     - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#3282]) +2 other tests skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-8/igt@gem_partial_pwrite_pread@write-snoop.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
>     - shard-dg1:          NOTRUN -> [SKIP][48] ([i915#3282])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-19/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-glk:          NOTRUN -> [WARN][49] ([i915#2658])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-glk5/igt@gem_pread@exhaustion.html
>     - shard-tglu:         NOTRUN -> [WARN][50] ([i915#2658])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-4/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pread@snoop:
>     - shard-dg2-9:        NOTRUN -> [SKIP][51] ([i915#3282]) +1 other test skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@gem_pread@snoop.html
> 
>   * igt@gem_pxp@create-regular-context-1:
>     - shard-dg2-9:        NOTRUN -> [SKIP][52] ([i915#4270]) +2 other tests skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@gem_pxp@create-regular-context-1.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-1:
>     - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#4270]) +1 other test skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-8/igt@gem_pxp@reject-modify-context-protection-off-1.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-3:
>     - shard-rkl:          [PASS][54] -> [TIMEOUT][55] ([i915#12917] / [i915#12964])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-off-3.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-4/igt@gem_pxp@reject-modify-context-protection-off-3.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
>     - shard-dg2-9:        NOTRUN -> [SKIP][56] ([i915#5190] / [i915#8428]) +4 other tests skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#5190] / [i915#8428]) +4 other tests skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-11/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#4079])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-8/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-dg2-9:        NOTRUN -> [SKIP][59] ([i915#4079])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
> 
>   * igt@gem_softpin@evict-snoop-interruptible:
>     - shard-dg2-9:        NOTRUN -> [SKIP][60] ([i915#4885])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@gem_softpin@evict-snoop-interruptible.html
> 
>   * igt@gem_tiled_pread_pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#3282]) +3 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-8/igt@gem_tiled_pread_pwrite.html
> 
>   * igt@gem_userptr_blits@readonly-pwrite-unsync:
>     - shard-tglu:         NOTRUN -> [SKIP][62] ([i915#3297]) +1 other test skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-6/igt@gem_userptr_blits@readonly-pwrite-unsync.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-tglu:         NOTRUN -> [SKIP][63] ([i915#2527] / [i915#2856]) +1 other test skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-6/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@batch-zero-length:
>     - shard-rkl:          NOTRUN -> [SKIP][64] ([i915#2527])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-8/igt@gen9_exec_parse@batch-zero-length.html
> 
>   * igt@gen9_exec_parse@bb-large:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#2856])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-11/igt@gen9_exec_parse@bb-large.html
> 
>   * igt@gen9_exec_parse@bb-start-cmd:
>     - shard-dg2-9:        NOTRUN -> [SKIP][66] ([i915#2856])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@gen9_exec_parse@bb-start-cmd.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-tglu-1:       NOTRUN -> [SKIP][67] ([i915#2527] / [i915#2856])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@i915_drm_fdinfo@busy:
>     - shard-dg2-9:        NOTRUN -> [SKIP][68] ([i915#14073]) +7 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@i915_drm_fdinfo@busy.html
> 
>   * igt@i915_drm_fdinfo@busy-check-all@bcs0:
>     - shard-dg2-9:        NOTRUN -> [SKIP][69] ([i915#11527]) +7 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@i915_drm_fdinfo@busy-check-all@bcs0.html
> 
>   * igt@i915_drm_fdinfo@most-busy-check-all@vecs0:
>     - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#14073]) +15 other tests skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-11/igt@i915_drm_fdinfo@most-busy-check-all@vecs0.html
> 
>   * igt@i915_drm_fdinfo@virtual-busy-hang:
>     - shard-dg1:          NOTRUN -> [SKIP][71] ([i915#14118])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-19/igt@i915_drm_fdinfo@virtual-busy-hang.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
>     - shard-dg1:          [PASS][72] -> [FAIL][73] ([i915#3591])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
> 
>   * igt@i915_query@query-topology-coherent-slice-mask:
>     - shard-dg2-9:        NOTRUN -> [SKIP][74] ([i915#6188])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@i915_query@query-topology-coherent-slice-mask.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-tglu:         NOTRUN -> [SKIP][75] ([i915#5723])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-4/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@kms_addfb_basic@basic-x-tiled-legacy:
>     - shard-dg1:          NOTRUN -> [SKIP][76] ([i915#4212])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-19/igt@kms_addfb_basic@basic-x-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-tglu:         NOTRUN -> [SKIP][77] ([i915#12454] / [i915#12712])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-4/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-tiled@pipe-c-hdmi-a-2-y-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#8709]) +2 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-8/igt@kms_async_flips@async-flip-with-page-flip-events-tiled@pipe-c-hdmi-a-2-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-tiled@pipe-d-hdmi-a-1-4-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#8709]) +7 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-4/igt@kms_async_flips@async-flip-with-page-flip-events-tiled@pipe-d-hdmi-a-1-4-mc-ccs.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-dg2-9:        NOTRUN -> [SKIP][80] ([i915#9531])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#5286]) +2 other tests skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-8/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
>     - shard-tglu-1:       NOTRUN -> [SKIP][82] ([i915#5286]) +1 other test skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
>     - shard-tglu:         NOTRUN -> [SKIP][83] ([i915#5286]) +2 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-4/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>     - shard-dg1:          NOTRUN -> [SKIP][84] ([i915#4538] / [i915#5286])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-19/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#3638]) +1 other test skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-8/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-0:
>     - shard-dg2-9:        NOTRUN -> [SKIP][86] ([i915#4538] / [i915#5190]) +5 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#4538] / [i915#5190]) +3 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][88] +27 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html
> 
>   * igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#10307] / [i915#6095]) +170 other tests skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-8/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][90] ([i915#12313])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#12313])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-11/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#6095]) +44 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-8/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][93] ([i915#10307] / [i915#6095]) +39 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc:
>     - shard-glk:          NOTRUN -> [SKIP][94] +71 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-glk5/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][95] ([i915#6095]) +34 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-4/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#6095]) +20 other tests skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][97] ([i915#6095]) +154 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-15/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-a-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][98] ([i915#6095]) +24 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][99] ([i915#12313])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#14098] / [i915#6095]) +44 other tests skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-4/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-8/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][102] ([i915#3742])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@kms_cdclk@mode-transition-all-outputs.html
>     - shard-dg1:          NOTRUN -> [SKIP][103] ([i915#3742])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-19/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#3742])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-6/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_chamelium_audio@dp-audio:
>     - shard-tglu:         NOTRUN -> [SKIP][105] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-4/igt@kms_chamelium_audio@dp-audio.html
> 
>   * igt@kms_chamelium_color@ctm-green-to-red:
>     - shard-dg2-9:        NOTRUN -> [SKIP][106]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_chamelium_color@ctm-green-to-red.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-8/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html
> 
>   * igt@kms_chamelium_frames@vga-frame-dump:
>     - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-8/igt@kms_chamelium_frames@vga-frame-dump.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:
>     - shard-dg2-9:        NOTRUN -> [SKIP][109] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-storm:
>     - shard-tglu-1:       NOTRUN -> [SKIP][110] ([i915#11151] / [i915#7828])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@kms_chamelium_hpd@hdmi-hpd-storm.html
>     - shard-dg1:          NOTRUN -> [SKIP][111] ([i915#11151] / [i915#7828])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-19/igt@kms_chamelium_hpd@hdmi-hpd-storm.html
> 
>   * igt@kms_color@gamma:
>     - shard-rkl:          [PASS][112] -> [DMESG-WARN][113] ([i915#12964]) +3 other tests dmesg-warn
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-rkl-8/igt@kms_color@gamma.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-4/igt@kms_color@gamma.html
> 
>   * igt@kms_color@gamma@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][114] ([i915#12964])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-4/igt@kms_color@gamma@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#3116])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-8/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#3299])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-11/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-tglu-1:       NOTRUN -> [SKIP][117] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@lic-type-0@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [FAIL][118] ([i915#7173])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-10/igt@kms_content_protection@lic-type-0@pipe-a-dp-4.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#9424])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-8/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-dg2-9:        NOTRUN -> [SKIP][120] ([i915#7118] / [i915#9424]) +1 other test skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x10:
>     - shard-tglu:         NOTRUN -> [SKIP][121] ([i915#3555]) +1 other test skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-4/igt@kms_cursor_crc@cursor-offscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-256x85:
>     - shard-tglu:         NOTRUN -> [FAIL][122] ([i915#13566]) +1 other test fail
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-6/igt@kms_cursor_crc@cursor-onscreen-256x85.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-max-size:
>     - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#3555]) +2 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-11/igt@kms_cursor_crc@cursor-onscreen-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-tglu-1:       NOTRUN -> [SKIP][124] ([i915#13049])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-64x21:
>     - shard-tglu-1:       NOTRUN -> [FAIL][125] ([i915#13566]) +3 other tests fail
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-64x21.html
> 
>   * igt@kms_cursor_crc@cursor-random-64x21@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][126] ([i915#13566]) +1 other test fail
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-4/igt@kms_cursor_crc@cursor-random-64x21@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
>     - shard-tglu:         NOTRUN -> [SKIP][127] ([i915#13049])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-4/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1:
>     - shard-tglu:         [PASS][128] -> [FAIL][129] ([i915#13566]) +1 other test fail
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-tglu-5/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-7/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-dg2-9:        NOTRUN -> [SKIP][130] ([i915#13049]) +1 other test skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x512:
>     - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#13049])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-8/igt@kms_cursor_crc@cursor-sliding-512x512.html
> 
>   * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#13046] / [i915#5354]) +2 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-11/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
>     - shard-dg2-9:        NOTRUN -> [SKIP][133] ([i915#13046] / [i915#5354]) +2 other tests skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][134] +7 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-7/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-tglu:         NOTRUN -> [SKIP][135] ([i915#9067])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_dp_link_training@non-uhbr-sst:
>     - shard-dg2:          [PASS][136] -> [SKIP][137] ([i915#13749])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-dg2-11/igt@kms_dp_link_training@non-uhbr-sst.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-7/igt@kms_dp_link_training@non-uhbr-sst.html
> 
>   * igt@kms_dp_linktrain_fallback@dsc-fallback:
>     - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#13707])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-8/igt@kms_dp_linktrain_fallback@dsc-fallback.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][139] ([i915#3840])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-tglu-1:       NOTRUN -> [SKIP][140] ([i915#3555] / [i915#3840]) +1 other test skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-dirtyfb-tests:
>     - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#13798])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-11/igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-dirtyfb-tests.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-tglu:         NOTRUN -> [SKIP][142] ([i915#3469])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-6/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#3955])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-tglu-1:       NOTRUN -> [SKIP][144] ([i915#658])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@kms_feature_discovery@psr2.html
>     - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#658])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-19/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_fence_pin_leak:
>     - shard-dg1:          NOTRUN -> [SKIP][146] ([i915#4881])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-19/igt@kms_fence_pin_leak.html
> 
>   * igt@kms_flip@2x-absolute-wf_vblank:
>     - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#9934])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-19/igt@kms_flip@2x-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank:
>     - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#9934]) +4 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-11/igt@kms_flip@2x-blocking-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
>     - shard-dg2-9:        NOTRUN -> [SKIP][149] ([i915#9934]) +3 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][150] ([i915#9934])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-4/igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank:
>     - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#9934])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-8/igt@kms_flip@2x-flip-vs-expired-vblank.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
>     - shard-tglu-1:       NOTRUN -> [SKIP][152] ([i915#3637] / [i915#9934]) +2 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1:
>     - shard-snb:          [PASS][153] -> [FAIL][154] ([i915#13734]) +1 other test fail
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-snb7/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-snb6/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-fences-interruptible:
>     - shard-dg2-9:        NOTRUN -> [SKIP][155] ([i915#8381])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_flip@flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-rkl:          [PASS][156] -> [INCOMPLETE][157] ([i915#6113])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-rkl-6/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-3/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible:
>     - shard-tglu:         [PASS][158] -> [FAIL][159] ([i915#13734]) +3 other tests fail
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-tglu-3/igt@kms_flip@plain-flip-ts-check-interruptible.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-2/igt@kms_flip@plain-flip-ts-check-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#2672] / [i915#3555] / [i915#5190])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#2672])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][162] ([i915#2587] / [i915#2672] / [i915#3555])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][163] ([i915#2587] / [i915#2672]) +2 other tests skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][164] ([i915#2587] / [i915#2672]) +1 other test skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][165] ([i915#2672] / [i915#3555]) +1 other test skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][166] ([i915#2672] / [i915#3555]) +1 other test skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][167] ([i915#2672] / [i915#3555] / [i915#5190])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:
>     - shard-dg2-9:        NOTRUN -> [SKIP][168] ([i915#2672])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][169] ([i915#8708]) +3 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:
>     - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#5354]) +10 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#8708]) +9 other tests skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-y:
>     - shard-dg2-9:        NOTRUN -> [SKIP][172] ([i915#10055])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][173] ([i915#3458]) +3 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#1825]) +15 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-cpu:
>     - shard-dg1:          NOTRUN -> [SKIP][175] +2 other tests skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
>     - shard-tglu:         NOTRUN -> [SKIP][176] +38 other tests skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#3023]) +9 other tests skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][178] ([i915#3458]) +13 other tests skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#3458]) +11 other tests skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][180] ([i915#8708]) +15 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>     - shard-dg2-9:        NOTRUN -> [SKIP][181] ([i915#5354]) +11 other tests skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][182] ([i915#3555] / [i915#8228]) +2 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-4/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#3555] / [i915#8228])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-8/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#3555] / [i915#8228])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-8/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg2:          [PASS][185] -> [SKIP][186] ([i915#3555] / [i915#8228]) +1 other test skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-dg2-11/igt@kms_hdr@static-toggle-suspend.html
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-7/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-dg2-9:        NOTRUN -> [SKIP][187] ([i915#10656])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_joiner@basic-force-ultra-joiner.html
> 
>   * igt@kms_joiner@basic-ultra-joiner:
>     - shard-tglu-1:       NOTRUN -> [SKIP][188] ([i915#12339])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@kms_joiner@basic-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-big-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][189] ([i915#10656])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-4/igt@kms_joiner@invalid-modeset-big-joiner.html
> 
>   * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#13522])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-7/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-tglu-1:       NOTRUN -> [SKIP][191] ([i915#6301])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
>     - shard-dg2:          NOTRUN -> [SKIP][192] +11 other tests skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-8/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][193] ([i915#13476])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#3555] / [i915#8821])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-8/igt@kms_plane_lowres@tiling-yf.html
> 
>   * igt@kms_plane_multiple@2x-tiling-4:
>     - shard-tglu:         NOTRUN -> [SKIP][195] ([i915#13958]) +1 other test skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-6/igt@kms_plane_multiple@2x-tiling-4.html
> 
>   * igt@kms_plane_multiple@2x-tiling-yf:
>     - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#13958])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-8/igt@kms_plane_multiple@2x-tiling-yf.html
> 
>   * igt@kms_plane_multiple@tiling-y:
>     - shard-dg2-9:        NOTRUN -> [SKIP][197] ([i915#14259])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_plane_multiple@tiling-y.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#14259])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-11/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c:
>     - shard-tglu:         NOTRUN -> [SKIP][199] ([i915#12247]) +8 other tests skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-6/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25:
>     - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#12247] / [i915#6953] / [i915#9423])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][201] ([i915#12247] / [i915#9423])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c:
>     - shard-dg2-9:        NOTRUN -> [SKIP][202] ([i915#12247]) +3 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c:
>     - shard-rkl:          NOTRUN -> [SKIP][203] ([i915#12247]) +6 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-8/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d:
>     - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#12247]) +3 other tests skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
>     - shard-tglu:         NOTRUN -> [SKIP][205] ([i915#12247] / [i915#6953])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
>     - shard-tglu-1:       NOTRUN -> [SKIP][206] ([i915#12247] / [i915#6953])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c:
>     - shard-tglu-1:       NOTRUN -> [SKIP][207] ([i915#12247]) +8 other tests skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c.html
> 
>   * igt@kms_pm_backlight@basic-brightness:
>     - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#5354])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-8/igt@kms_pm_backlight@basic-brightness.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#9685])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-7/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc5-psr:
>     - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#9685])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-11/igt@kms_pm_dc@dc5-psr.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-tglu-1:       NOTRUN -> [FAIL][211] ([i915#9295])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@kms_pm_dc@dc6-dpms.html
>     - shard-dg1:          NOTRUN -> [SKIP][212] ([i915#3361])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-19/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-rkl:          [PASS][213] -> [SKIP][214] ([i915#9519]) +1 other test skip
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-dg2:          [PASS][215] -> [SKIP][216] ([i915#9519]) +2 other tests skip
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-3/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-tglu:         NOTRUN -> [SKIP][217] ([i915#9519])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@pm-tiling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][218] ([i915#4077]) +7 other tests skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_pm_rpm@pm-tiling.html
> 
>   * igt@kms_properties@get_properties-sanity-atomic:
>     - shard-tglu:         NOTRUN -> [FAIL][219] ([i915#14036])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-4/igt@kms_properties@get_properties-sanity-atomic.html
>     - shard-glk:          NOTRUN -> [FAIL][220] ([i915#14036])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-glk5/igt@kms_properties@get_properties-sanity-atomic.html
> 
>   * igt@kms_properties@get_properties-sanity-non-atomic:
>     - shard-dg2-9:        NOTRUN -> [FAIL][221] ([i915#14036])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_properties@get_properties-sanity-non-atomic.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
>     - shard-glk:          NOTRUN -> [SKIP][222] ([i915#11520]) +1 other test skip
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-glk5/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][223] ([i915#11520]) +2 other tests skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-8/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][224] ([i915#11520]) +2 other tests skip
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html
>     - shard-dg1:          NOTRUN -> [SKIP][225] ([i915#11520])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-19/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@pr-cursor-plane-update-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][226] ([i915#11520]) +3 other tests skip
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-4/igt@kms_psr2_sf@pr-cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-dg2-9:        NOTRUN -> [SKIP][227] ([i915#11520]) +1 other test skip
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
>     - shard-dg2:          NOTRUN -> [SKIP][228] ([i915#11520]) +3 other tests skip
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-11/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-dg2-9:        NOTRUN -> [SKIP][229] ([i915#9683])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@fbc-pr-sprite-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][230] ([i915#1072] / [i915#9732])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-19/igt@kms_psr@fbc-pr-sprite-blt.html
> 
>   * igt@kms_psr@fbc-pr-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][231] ([i915#1072] / [i915#9732]) +10 other tests skip
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-7/igt@kms_psr@fbc-pr-suspend.html
> 
>   * igt@kms_psr@pr-primary-page-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][232] ([i915#9732]) +11 other tests skip
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-6/igt@kms_psr@pr-primary-page-flip.html
> 
>   * igt@kms_psr@psr-cursor-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][233] ([i915#1072] / [i915#9732]) +10 other tests skip
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-8/igt@kms_psr@psr-cursor-mmap-cpu.html
> 
>   * igt@kms_psr@psr2-primary-page-flip:
>     - shard-dg2-9:        NOTRUN -> [SKIP][234] ([i915#1072] / [i915#9732]) +10 other tests skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_psr@psr2-primary-page-flip.html
> 
>   * igt@kms_psr@psr2-sprite-blt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][235] ([i915#9732]) +5 other tests skip
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@kms_psr@psr2-sprite-blt.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-dg2-9:        NOTRUN -> [SKIP][236] ([i915#9685])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-dg2-9:        NOTRUN -> [SKIP][237] ([i915#5190]) +1 other test skip
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-tglu-1:       NOTRUN -> [SKIP][238] ([i915#5289])
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-tglu:         NOTRUN -> [SKIP][239] ([i915#5289])
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_scaling_modes@scaling-mode-center:
>     - shard-rkl:          NOTRUN -> [SKIP][240] ([i915#3555]) +3 other tests skip
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-7/igt@kms_scaling_modes@scaling-mode-center.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][241] ([i915#3555]) +1 other test skip
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-dg2-9:        NOTRUN -> [SKIP][242] ([i915#8623])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_vrr@flip-basic-fastset:
>     - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#9906])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-8/igt@kms_vrr@flip-basic-fastset.html
> 
>   * igt@kms_vrr@flipline:
>     - shard-dg2-9:        NOTRUN -> [SKIP][244] ([i915#3555]) +2 other tests skip
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_vrr@flipline.html
> 
>   * igt@kms_vrr@lobf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][245] ([i915#11920])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@kms_vrr@lobf.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-dg2-9:        NOTRUN -> [SKIP][246] ([i915#9906])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_vrr@max-min.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-glk:          NOTRUN -> [SKIP][247] ([i915#2437])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-glk5/igt@kms_writeback@writeback-fb-id.html
>     - shard-tglu:         NOTRUN -> [SKIP][248] ([i915#2437])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-4/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-tglu-1:       NOTRUN -> [SKIP][249] ([i915#2437] / [i915#9412])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-1/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-rkl:          NOTRUN -> [SKIP][250] ([i915#2437])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-7/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-dg2-9:        NOTRUN -> [SKIP][251] ([i915#2437] / [i915#9412])
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@blocking@0-rcs0:
>     - shard-rkl:          [PASS][252] -> [FAIL][253] ([i915#10538]) +1 other test fail
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-rkl-3/igt@perf@blocking@0-rcs0.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-7/igt@perf@blocking@0-rcs0.html
> 
>   * igt@perf@per-context-mode-unprivileged:
>     - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#2435])
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-8/igt@perf@per-context-mode-unprivileged.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - shard-dg2-9:        NOTRUN -> [FAIL][255] ([i915#4349]) +4 other tests fail
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-9/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-tglu:         NOTRUN -> [SKIP][256] ([i915#8516])
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-4/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@prime_vgem@basic-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][257] ([i915#3708] / [i915#4077])
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-11/igt@prime_vgem@basic-gtt.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][258] ([i915#3708])
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-11/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@sriov_basic@bind-unbind-vf@vf-4:
>     - shard-tglu:         NOTRUN -> [FAIL][259] ([i915#12910]) +9 other tests fail
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-tglu-6/igt@sriov_basic@bind-unbind-vf@vf-4.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg1:          [TIMEOUT][260] ([i915#14044] / [i915#5493]) -> [PASS][261] +1 other test pass
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_pxp@create-protected-buffer:
>     - shard-rkl:          [TIMEOUT][262] ([i915#12964]) -> [PASS][263]
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-rkl-6/igt@gem_pxp@create-protected-buffer.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-8/igt@gem_pxp@create-protected-buffer.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-1:
>     - shard-rkl:          [TIMEOUT][264] ([i915#12917] / [i915#12964]) -> [PASS][265]
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-rkl-7/igt@gem_pxp@reject-modify-context-protection-off-1.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-off-1.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-rkl:          [DMESG-WARN][266] ([i915#12964]) -> [PASS][267] +1 other test pass
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-8/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
>     - shard-dg1:          [FAIL][268] ([i915#3591]) -> [PASS][269]
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
> 
>   * igt@i915_pm_rpm@gem-execbuf:
>     - shard-dg1:          [ABORT][270] ([i915#4423]) -> [PASS][271] +1 other test pass
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-dg1-18/igt@i915_pm_rpm@gem-execbuf.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-19/igt@i915_pm_rpm@gem-execbuf.html
> 
>   * igt@i915_pm_rpm@gem-execbuf@smem0:
>     - shard-dg1:          [DMESG-WARN][272] ([i915#4423]) -> [PASS][273] +3 other tests pass
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-dg1-18/igt@i915_pm_rpm@gem-execbuf@smem0.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-19/igt@i915_pm_rpm@gem-execbuf@smem0.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - shard-mtlp:         [DMESG-FAIL][274] ([i915#12061]) -> [PASS][275] +1 other test pass
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-mtlp-5/igt@i915_selftest@live@workarounds.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-mtlp-4/igt@i915_selftest@live@workarounds.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-rkl:          [INCOMPLETE][276] ([i915#4817]) -> [PASS][277]
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-rkl-6/igt@i915_suspend@forcewake.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-8/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3:
>     - shard-dg2:          [FAIL][278] ([i915#5956]) -> [PASS][279] +1 other test pass
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-dg2-3/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
>     - shard-rkl:          [FAIL][280] ([i915#2346]) -> [PASS][281] +1 other test pass
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-dg2:          [SKIP][282] ([i915#13707]) -> [PASS][283]
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-dg2-7/igt@kms_dp_linktrain_fallback@dp-fallback.html
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-10/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:
>     - shard-snb:          [TIMEOUT][284] ([i915#14033]) -> [PASS][285] +1 other test pass
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-snb5/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-snb7/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible:
>     - shard-snb:          [FAIL][286] ([i915#13734]) -> [PASS][287] +1 other test pass
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-snb4/igt@kms_flip@plain-flip-ts-check-interruptible.html
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-snb2/igt@kms_flip@plain-flip-ts-check-interruptible.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg2:          [SKIP][288] ([i915#9519]) -> [PASS][289]
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-dg2-6/igt@kms_pm_rpm@dpms-lpsp.html
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-rkl:          [SKIP][290] ([i915#9519]) -> [PASS][291]
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@system-suspend-modeset:
>     - shard-rkl:          [INCOMPLETE][292] -> [PASS][293]
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-rkl-3/igt@kms_pm_rpm@system-suspend-modeset.html
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-7/igt@kms_pm_rpm@system-suspend-modeset.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-dg2:          [SKIP][294] ([i915#3555] / [i915#9906]) -> [PASS][295]
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-dg2-7/igt@kms_vrr@negative-basic.html
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-10/igt@kms_vrr@negative-basic.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][296] ([i915#14098] / [i915#6095]) -> [SKIP][297] ([i915#6095]) +6 other tests skip
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-rkl-5/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-8/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-dg2:          [SKIP][298] ([i915#9424]) -> [FAIL][299] ([i915#7173])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-dg2-6/igt@kms_content_protection@lic-type-0.html
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-10/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg1:          [SKIP][300] ([i915#9433]) -> [SKIP][301] ([i915#9424])
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-dg1-13/igt@kms_content_protection@mei-interface.html
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-18/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
>     - shard-dg2:          [SKIP][302] ([i915#10433] / [i915#3458]) -> [SKIP][303] ([i915#3458]) +2 other tests skip
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
>     - shard-dg2:          [SKIP][304] ([i915#3458]) -> [SKIP][305] ([i915#10433] / [i915#3458]) +2 other tests skip
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-onoff:
>     - shard-dg1:          [SKIP][306] ([i915#4423]) -> [SKIP][307]
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-onoff.html
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-onoff.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-mtlp:         [SKIP][308] ([i915#1187] / [i915#12713]) -> [SKIP][309] ([i915#12713])
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-mtlp-1/igt@kms_hdr@brightness-with-hdr.html
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-mtlp-6/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          [SKIP][310] ([i915#9340]) -> [SKIP][311] ([i915#3828])
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-rkl-3/igt@kms_pm_lpsp@kms-lpsp.html
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@pm-caching:
>     - shard-dg1:          [SKIP][312] ([i915#4077] / [i915#4423]) -> [SKIP][313] ([i915#4077])
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-dg1-12/igt@kms_pm_rpm@pm-caching.html
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-dg1-16/igt@kms_pm_rpm@pm-caching.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-glk:          [INCOMPLETE][314] ([i915#13356]) -> [INCOMPLETE][315] ([i915#13356] / [i915#14242])
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16534/shard-glk6/igt@perf_pmu@rc6-suspend.html
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/shard-glk2/igt@perf_pmu@rc6-suspend.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10030
>   [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11527
>   [i915#11713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713
>   [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
>   [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12193]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12193
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
>   [i915#12353]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12353
>   [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
>   [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13193]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13193
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
>   [i915#13522]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13665]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13665
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13723
>   [i915#13734]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13734
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13798]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13798
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
>   [i915#14036]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14036
>   [i915#14044]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14044
>   [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
>   [i915#14242]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14242
>   [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
>   [i915#2435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
>   [i915#4036]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4036
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4881]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881
>   [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6188]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6188
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
>   [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16534 -> Patchwork_148894v1
> 
>   CI-20190529: 20190529
>   CI_DRM_16534: f3767db51c5d8bc3ba3f2b342332ab329044fe5b @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8361: 8361
>   Patchwork_148894v1: f3767db51c5d8bc3ba3f2b342332ab329044fe5b @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148894v1/index.html
