Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DDB6659ABC
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Dec 2022 17:56:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99E6810E459;
	Fri, 30 Dec 2022 16:56:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16C1B10E459
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Dec 2022 16:56:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672419371; x=1703955371;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=iuvET0ir6IaDUPnS2T8SEXg+vjyCw/uS0NZDlM0QtHo=;
 b=JZImgBgegf1UwtJMO16U2eX6ydWN9w4e5mIT3OtXGHMn6/Pd0goW0n+0
 fpHaze2A0A3eNBzyWKZ/fgr/FB1eVjAbp98lQPyavrJ/1xks9+xhG4k4B
 19QdeRnjjZvOAWG8EcMBrItff5yyZ3KBTC5GZlI7hAX/S7i1W3tAAOlwb
 t44GrtTzjsTDWdGQE35tHuz8iNUaTHvw18bJgMZVNAlXaBcSZt6nUwjB6
 h50UHISG1vck1/xGiU4mtzkoTKXeitk8UP3QpKvtFQDIOzEEwtRu+D//2
 juLKpdsNn4sblttG1roLrEep8gyEGkcFpVa0aocIGxOCXMowag7rM0p4s w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10576"; a="301601269"
X-IronPort-AV: E=Sophos;i="5.96,287,1665471600"; d="scan'208";a="301601269"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2022 08:56:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10576"; a="655900785"
X-IronPort-AV: E=Sophos;i="5.96,287,1665471600"; d="scan'208";a="655900785"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 30 Dec 2022 08:56:10 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 30 Dec 2022 08:56:10 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 30 Dec 2022 08:56:09 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 30 Dec 2022 08:56:09 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 30 Dec 2022 08:56:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lOAMs3InSKp8CmeDhFKocaIvD5i2wzqgF0C6HKC8zYk1X4HpgIzAVlO5iTwLtxocqx1fxb3qYD9W6JsBuWwXfBbAP2FNlqwa10FVPKCV7U0p3FOv4AzTziGRJ+l+gFfG0c71iplWQpxAlWBoy4eLgqo8wtz7k+Ld6NYeCcA+s2EOYmskpHRQr+b+A1MIR6axovGdmslIGHhQWcIzH7Q6ydqNNi/EoRn/grekFYAi9kUaZL6fjE8NptuiWRzl07lJAo36eyEIjbW05gG0lHUK4Z9o1xADNRduB0SpNUeTFn2io0Pjg3CUT+iNi1bqzMi+ZCKOcMOer6+kVuY9fSXQmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=miOIfdkdwk4JkN4L541KmbQSJnYNO7TFR7/iGYDNJzw=;
 b=HYUwfFJvrRpOJmhXm14mNvX/9UtJT9pifCcE9e1kZ9eglEP+V+HPiUp+t12BHVLkbACWWDqqd6XlnrO4JVEGG53hvQ0v5TaCCnhW6eiu0E2V9IAm2MkfukGa6k5940YfzzII1H2+I3X7xWR+sgOkDZ0LEv9/ZkhhgxVBMooGXGf7jmrGT78zFHSA+8TPcu1QzA9wNpiNWlKjRMSmnw/PP0yO7NjNex9ki5YXWUxy3pEmL1Z5kt0/In17S4fxknuAzYBOLitW4jyVuvBZacGKsROZcXTfvZtUsD3QirHDzGV4dQnzkqiBoa00lujd+ErOQ6xAix4ULrf8GWegyNfSDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CY8PR11MB6844.namprd11.prod.outlook.com (2603:10b6:930:5f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Fri, 30 Dec
 2022 16:56:05 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%9]) with mapi id 15.20.5944.016; Fri, 30 Dec 2022
 16:56:05 +0000
Date: Fri, 30 Dec 2022 11:56:00 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <Y68YIO5auRf0vR4u@intel.com>
References: <20221229190740.45471-1-gustavo.sousa@intel.com>
 <20221229190740.45471-3-gustavo.sousa@intel.com>
 <Y66lryH0QYwmtxbN@intel.com>
 <20221230133628.oyk4vlvaoi7ue3b7@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221230133628.oyk4vlvaoi7ue3b7@gjsousa-mobl2>
X-ClientProxiedBy: BYAPR21CA0022.namprd21.prod.outlook.com
 (2603:10b6:a03:114::32) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CY8PR11MB6844:EE_
X-MS-Office365-Filtering-Correlation-Id: 12c94eb1-848c-4c94-22a8-08daea86bd6d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: STbOOY/P7wYOsLJSEOVm+6K/7PIu4rBBfcO+LNL/QWQllK1TRfL+jq+rat7d0REAbDBS422gQ5eopjHPaI1naJ4twDRoj5vKAzbNY//FXWD5Ff/kHZ57RXEuEHb9qUu5ACXVvwNnhBiCcjqoC/yfQqELmvETDCenKoKogwTp0vtXkHaSLxbmaqYerRhfISsBRlXu7UsweRqIa8Eatf060Lq4c9suMZy4HrIkmrQYJgbJxiIkJf5etP5br5GYnJ/eJUGq3gmMJsnlFaEYqgTIWfIzLwwhpdaXBTPFdx1eEJ19vDymh72hs5r2F4kDTmmyyPwpv0htxob/Ei73heewlFSbqG/Y6MZZp6QmfXIoaumghVm+Yj/rKlEe0WBJMr0PHicXix4EtuvNW9wlkmtt3FPA7uwUHAsrABGXK0F2GTldoeJsBGn7NF0bjsobpDBlBk7HhZ10fiFZEb7fXDZQXuXuDXar3JMbotHtg9Ve89j4wmHjR4sKR93hGrRMH6fo+orHS3EhT4I2aACJMyy025c8VvTEngCzYal4w1Lsikjp81r9/+PjNNo3qQVshOzVuvxqKCfAV0+LH8hxV0RQ4hXILnZQBXpKOMivoCv4MYP7oixp5cr+wNrGiav8C4t9xkGBSP2ahsblxBqKci3xhOPj8B3SUs2DrDQa4e6S4LU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(136003)(366004)(396003)(346002)(451199015)(6486002)(107886003)(186003)(4326008)(8676002)(36756003)(66946007)(966005)(5660300002)(66556008)(66476007)(2616005)(6666004)(6512007)(478600001)(6862004)(316002)(83380400001)(37006003)(86362001)(6636002)(8936002)(54906003)(26005)(6506007)(41300700001)(38100700002)(82960400001)(44832011)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XSiSQlxDlNNi546+hy2wtqd5IoQ0gZhGlCzqn6KNb2XkPwJEmLBoVm1Q6UXD?=
 =?us-ascii?Q?wKz+nkQhhxpf8OpqwTuJViz3BjvH2cG21ROMy5BTHqX2EHgS0jq8oUanVA+n?=
 =?us-ascii?Q?nMZ2ZSaX4R06PTjBCwABT8KZG34lffZso3eFryBIL1oLrWSsovOiUin9wca/?=
 =?us-ascii?Q?XLCUB76BqOldtBco7mwfD2ms5uBlg07WTj4RHy9qVrOhW5TsOOsAkfLPizcb?=
 =?us-ascii?Q?ofvod2xk4MnAE3ZsXKv5EtpVZzuERuXt/fYGmtESYe/B+LK/T/LCoUnemVzA?=
 =?us-ascii?Q?Xm5Q3RFmkwskai+tPeKKpZ/7bHS1DwpH1r5pw0RbNncxJAJlyzbt/oS4RJnJ?=
 =?us-ascii?Q?++BoJC7rn97s2RGB1Ohg8Nx6NbwGxg1JEiOU2XfOw198y5QNdyBK6/LEbx1n?=
 =?us-ascii?Q?QETXW1V+i+Da343SYYj4b7CWAKWq4AjIq0pQlf1zPxIGZlkAJo7AHB6hs9Df?=
 =?us-ascii?Q?QYuGcJ2t8PxXjnLb6p5uOTkGq3Ur0XOcqJ/dYFp32TxhcjFdVpYvV0ZIT7b3?=
 =?us-ascii?Q?W4wfODXH05fsTb1wbQiTbphimfv/cb0Rk53xkq748Yp8/FYccH4pC2Ok8mDT?=
 =?us-ascii?Q?2HRlxuuH3pDR9wQUF5gxGgIT3UXk5Q2wPz8nh9I5Y+oudZye4pVi9yVJYBro?=
 =?us-ascii?Q?PHJlgPz7FoB/qpgxw/47oUheGk6IJhkgewAm4R4qffFuFDOYeECXv109B5vR?=
 =?us-ascii?Q?bm1qXfFgjqv0CSFhBwVF1gVGSfr4C7wRligqKafAl16BBJkOFrTvxqqPOEd5?=
 =?us-ascii?Q?gus3/i3/uHWKX+fS/NYNaHjz7t+iX9scjXbaPY+jbhiKdjOK/jyToxnf2w/d?=
 =?us-ascii?Q?3a+lFLhu6Lh6AP1agCHOIeScFHpTa3uycVJrx3cyf8nnbEVSy/afRxw2gt85?=
 =?us-ascii?Q?q8o5hgObJ7uTX4mg5zN465xXYOc3ZC1Fln6EooFQ57EUm8JdzmRKYvmEeGnY?=
 =?us-ascii?Q?gevmESxLb98BM9Taks7L4CYMko/NOxjGmUwBkxGKhmKA53woLhz+7mlzxB4S?=
 =?us-ascii?Q?0gTASp9vHHfd2BOr4ywyn4JRa07LQvyoEvQp37RFH786W5F32XKq3b7eRCwf?=
 =?us-ascii?Q?yn50IwYhL9zbXh39kNczN6uLR//T4V3akXqm9isb6C43lzUvHYAztp8qDRYe?=
 =?us-ascii?Q?HUCxL0KbBn1Lelixi5ekLkdUmAgF6SkC6d3fT5cp6IK1gcYojL0Qz0Zl1xNt?=
 =?us-ascii?Q?y42eAHvv0hfZx6z5Y1ZBer+KdSm6vEBXBFtcBRWa+ttUwAjjgi7YObCivfR9?=
 =?us-ascii?Q?fORE5Hx3WVxUFfeKK4DSeJkR98XWVIKuAFxzrJstWrdgWg0UO0KwkZDcb7UP?=
 =?us-ascii?Q?5MmvAlBd9Aq2eTYk87sjL+LTrC5CULXgU0cuI1T5qdfPbpHN3Yj+7NQ7bHDH?=
 =?us-ascii?Q?K+ZdMyA3ML/ReESIzZmjmnPVfoeeRFpyh31bl/dnVkD0E4SSeifsX7LRfeST?=
 =?us-ascii?Q?M2nI3iFgISz1VJSt/68quu6CtFp3Nfuu3zICQXZtM6SSsBM7J+RqmRelNdnM?=
 =?us-ascii?Q?exywRa0VLlb2YJ0DN8t3TRXfPxpvU3rBzFtxz/e/knGwoT6qZ45BK50jwQju?=
 =?us-ascii?Q?N+NanGB0g7nFDQYe4IxVyMG2SCB77SKvYR/TMd0pp9AcfBA9eUVjH8trrx1+?=
 =?us-ascii?Q?YQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 12c94eb1-848c-4c94-22a8-08daea86bd6d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Dec 2022 16:56:05.2628 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: avD9jDd+FZqBxOoO7c2RkDySqog5ma9uTNr70Hj/eAOBYcc15wuZCOWMiFmVFKkeh2MrOgucXdde99kACD55wQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6844
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/dmc: Prepare to use
 unversioned paths
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 30, 2022 at 10:36:28AM -0300, Gustavo Sousa wrote:
> On Fri, Dec 30, 2022 at 03:47:43AM -0500, Rodrigo Vivi wrote:
> > On Thu, Dec 29, 2022 at 04:07:40PM -0300, Gustavo Sousa wrote:
> > > New DMC releases in linux-firmware will stop using version number in
> > > blob filenames. This new convention provides the following benefits:
> > > 
> > >   1. It simplifies code maintenance, as new DMC releases for a platform
> > >      using the new convention will always use the same filename for the
> > >      blob.
> > > 
> > >   2. It allows DMC to be loaded even if the target system does not have
> > >      the most recent firmware installed.
> > > 
> > > Prepare the driver by:
> > > 
> > >   - Using the new convention for DMC_PATH() and renaming the currently
> > >     used one to make it clear it is for the legacy scheme.
> > > 
> > >   - Implementing a fallback mechanism for future transitions from
> > >     versioned to unversioned paths so that we do not cause a regression
> > >     for systems not having the most up-to-date linux-firmware files.
> > > 
> > > v2:
> > >   - Keep using request_firmware() instead of firmware_request_nowarn().
> > >     (Jani)
> > > v3:
> > >   - Keep current DMC paths instead of directly using unversioned ones,
> > >     so that we do not disturb initrd generation.
> > >     (Lucas, Rodrigo)
> > > 
> > > References: https://lore.kernel.org/r/Y3081s7c5ksutpMW@intel.com
> > 
> > I also don't believe this link is a good reference here...
> 
> Noted.
> 
> > 
> > Regarding the patch, I liked the approach in general.
> > 
> > The patch is really neat, but I believe we will need to split it:
> > 
> > 1. Add the new DMC_PATH and DMC_LEGACY_PATH only with the introduction
> > of the mtl_dmc.bin
> > 
> > 2. And the fallback function, add only if/when we get a real fallback.
> 
> Okay. For future reference, how should that be implemented with respect to the
> organization of the patches? I see two ways of doing it and have a personal
> preference for the first one:
> 
> a) The future series would have first a patch adding the necessary functionality
>    and a second one using it.
> 
> b) The addition of the functionality would be incorporated in the same patch
>    using it.
> 
> For example, for (2), (a) would be a series two patches, the first adding the
> fallback mechanism and the second one changing ADLP to use unversioned paths;
> and (b) would be all of that in a single patch.
> 
> I looks to me that approach (b) has a potential issue. For example, let's say we
> in the future we decide to revert that specific firmware update but we already
> have other platforms also using the fallback - a clean revert is not possible
> there and we would need to make sure that the fallback mechanism is kept.
> 
> That's why I like (a) more and I think (b) would be more appropriate for cases
> where the functionality and it's user(s) have almost like a "1:1" relationship
> (not strictly speaking, read that as "having a somewhat static and restricted
> set of users").

yeap, it is case by case. The advantage on the (b) approach is that OSVs
can backport only 1 patch.

And the revert doesn't necessarily need to be a git-revert. In this case
it would be only one line getting back to the older firmware.

But really up to you ;)
As long as they are together either in the same patch or same series.

> 
> > 
> > Oh, and I just realized that when doing the new _dmc.bin path we also
> > need to make sure that we read the fw_version from the header and
> > print as a drm_info msg somewhere.
> 
> I think the version is already being read by parse_dmc_fw_css() and printed at
> the end of dmc_load_work_fn() if the blob was loaded and parsed succesfully.

Oh, I had missed that. If it is already happening please disregard my comment.

> 
> > 
> > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dmc.c | 62 ++++++++++++++++++------
> > >  1 file changed, 46 insertions(+), 16 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > index 4124b3d37110..12f05b2d33a3 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > @@ -42,51 +42,59 @@
> > >  #define DMC_VERSION_MAJOR(version)	((version) >> 16)
> > >  #define DMC_VERSION_MINOR(version)	((version) & 0xffff)
> > >  
> > > -#define DMC_PATH(platform, major, minor) \
> > > -	"i915/"				 \
> > > -	__stringify(platform) "_dmc_ver" \
> > > -	__stringify(major) "_"		 \
> > > +#define DMC_PATH(platform) \
> > > +	"i915/" __stringify(platform) "_dmc.bin"
> > > +
> > > +/*
> > > + * New DMC additions should not use this. This is used solely to remain
> > > + * compatible with systems that have not yet updated DMC blobs to use
> > > + * unversioned file names.
> > > + */
> > > +#define DMC_LEGACY_PATH(platform, major, minor) \
> > > +	"i915/"					\
> > > +	__stringify(platform) "_dmc_ver"	\
> > > +	__stringify(major) "_"			\
> > >  	__stringify(minor) ".bin"
> > >  
> > >  #define DISPLAY_VER13_DMC_MAX_FW_SIZE	0x20000
> > >  
> > >  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
> > >  
> > > -#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 08)
> > > +#define DG2_DMC_PATH			DMC_LEGACY_PATH(dg2, 2, 08)
> > >  MODULE_FIRMWARE(DG2_DMC_PATH);
> > >  
> > > -#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
> > > +#define ADLP_DMC_PATH			DMC_LEGACY_PATH(adlp, 2, 16)
> > >  MODULE_FIRMWARE(ADLP_DMC_PATH);
> > >  
> > > -#define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
> > > +#define ADLS_DMC_PATH			DMC_LEGACY_PATH(adls, 2, 01)
> > >  MODULE_FIRMWARE(ADLS_DMC_PATH);
> > >  
> > > -#define DG1_DMC_PATH			DMC_PATH(dg1, 2, 02)
> > > +#define DG1_DMC_PATH			DMC_LEGACY_PATH(dg1, 2, 02)
> > >  MODULE_FIRMWARE(DG1_DMC_PATH);
> > >  
> > > -#define RKL_DMC_PATH			DMC_PATH(rkl, 2, 03)
> > > +#define RKL_DMC_PATH			DMC_LEGACY_PATH(rkl, 2, 03)
> > >  MODULE_FIRMWARE(RKL_DMC_PATH);
> > >  
> > > -#define TGL_DMC_PATH			DMC_PATH(tgl, 2, 12)
> > > +#define TGL_DMC_PATH			DMC_LEGACY_PATH(tgl, 2, 12)
> > >  MODULE_FIRMWARE(TGL_DMC_PATH);
> > >  
> > > -#define ICL_DMC_PATH			DMC_PATH(icl, 1, 09)
> > > +#define ICL_DMC_PATH			DMC_LEGACY_PATH(icl, 1, 09)
> > >  #define ICL_DMC_MAX_FW_SIZE		0x6000
> > >  MODULE_FIRMWARE(ICL_DMC_PATH);
> > >  
> > > -#define GLK_DMC_PATH			DMC_PATH(glk, 1, 04)
> > > +#define GLK_DMC_PATH			DMC_LEGACY_PATH(glk, 1, 04)
> > >  #define GLK_DMC_MAX_FW_SIZE		0x4000
> > >  MODULE_FIRMWARE(GLK_DMC_PATH);
> > >  
> > > -#define KBL_DMC_PATH			DMC_PATH(kbl, 1, 04)
> > > +#define KBL_DMC_PATH			DMC_LEGACY_PATH(kbl, 1, 04)
> > >  #define KBL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
> > >  MODULE_FIRMWARE(KBL_DMC_PATH);
> > >  
> > > -#define SKL_DMC_PATH			DMC_PATH(skl, 1, 27)
> > > +#define SKL_DMC_PATH			DMC_LEGACY_PATH(skl, 1, 27)
> > >  #define SKL_DMC_MAX_FW_SIZE		BXT_DMC_MAX_FW_SIZE
> > >  MODULE_FIRMWARE(SKL_DMC_PATH);
> > >  
> > > -#define BXT_DMC_PATH			DMC_PATH(bxt, 1, 07)
> > > +#define BXT_DMC_PATH			DMC_LEGACY_PATH(bxt, 1, 07)
> > >  #define BXT_DMC_MAX_FW_SIZE		0x3000
> > >  MODULE_FIRMWARE(BXT_DMC_PATH);
> > >  
> > > @@ -821,16 +829,38 @@ static void intel_dmc_runtime_pm_put(struct drm_i915_private *dev_priv)
> > >  	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
> > >  }
> > >  
> > > +static const char *dmc_fallback_path(struct drm_i915_private *i915)
> > > +{
> > > +	/* No fallback paths for now. */
> > > +	return NULL;
> > > +}
> > > +
> > >  static void dmc_load_work_fn(struct work_struct *work)
> > >  {
> > >  	struct drm_i915_private *dev_priv;
> > >  	struct intel_dmc *dmc;
> > >  	const struct firmware *fw = NULL;
> > > +	const char *fallback_path;
> > > +	int err;
> > >  
> > >  	dev_priv = container_of(work, typeof(*dev_priv), display.dmc.work);
> > >  	dmc = &dev_priv->display.dmc;
> > >  
> > > -	request_firmware(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
> > > +	err = request_firmware(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
> > > +
> > > +	if (err == -ENOENT && !dev_priv->params.dmc_firmware_path) {
> > > +		fallback_path = dmc_fallback_path(dev_priv);
> > > +		if (fallback_path) {
> > > +			drm_dbg_kms(&dev_priv->drm,
> > > +				    "%s not found, falling back to %s\n",
> > > +				    dmc->fw_path,
> > > +				    fallback_path);
> > > +			err = request_firmware(&fw, fallback_path, dev_priv->drm.dev);
> > > +			if (err == 0)
> > > +				dev_priv->display.dmc.fw_path = fallback_path;
> > > +		}
> > > +	}
> > > +
> > >  	parse_dmc_fw(dev_priv, fw);
> > >  
> > >  	if (intel_dmc_has_payload(dev_priv)) {
> > > -- 
> > > 2.39.0
> > > 
