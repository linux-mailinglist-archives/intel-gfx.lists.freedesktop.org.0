Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2104B0F3C2
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jul 2025 15:19:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DEA510E16B;
	Wed, 23 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bwdsAtCM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 921B410E0F6;
 Wed, 23 Jul 2025 13:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753276792; x=1784812792;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=mpfnSquzGLx56zffctzQONjlnzwp8EVrEmsLHP5FQCs=;
 b=bwdsAtCMD1vy5UVp2kqbYdtNee39ygra6+NCfFM80ZaElDdYpb2+DSUl
 aVkpg/4dew6NUwMe8Lp9XFsPqrhmk0q6XxyBmOImzk/Q3AEt64qLW9r0L
 tJKwaY51t3e0IwGYEk1bcBHMgut3EjX6gG119T9Pd6DBuOjckCVgAmXly
 vwgK4XpEuPzbutzA3fofzapSHJ2sFZfXvZ3BPVcESSaJizjnKhSJrScKg
 N2Lq2ZrMW5PJsYU2ssnHOG4fDhLrMp3WKd5VDYXf1FDHG+60mikCLnDmM
 S0TPQNHWDFmpZN4iMglVrIVjwqQVzI4RJu31xQpfrWU0l3e+1LWzzjpuT Q==;
X-CSE-ConnectionGUID: BDalvRE6T+yoyR65F9fgAA==
X-CSE-MsgGUID: YNUZejCeQ/e68SLxlAypjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="55500497"
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="55500497"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 06:19:49 -0700
X-CSE-ConnectionGUID: cFvy4yUYQau1jv2l+y9psg==
X-CSE-MsgGUID: X2FDitLiRQu/+ax8fGfInA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="159526495"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 06:19:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 06:19:44 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 23 Jul 2025 06:19:44 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.51) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 06:19:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wW44YAflBgyu49hYJt6a05AG+cmnnX8jU1/z5yaX8XzTh5GScW0hnOpS//cxr4YbXcRa1+Vkimt1Wl/gRijV/AGtXp9+dWJ6P11VENIuS8VBkFDKsXCdbvy0GBXS0Tv/o3B2sqBNfhqDSpFiP9cV6igc+YEE2EgeIz3cWvPDWetMXDjaMgCuG7qgMPP4YJBoDKGxBU9PoS3Va/bbi+EIEDruCun7qGcL/63tqWE7mpBPevhr0Qza/PXLdlYJpvcQiylEmTiYkIp7gxVoWuR9XsGv8OEai0pr8JIUXZhq+lqGd7F7zXBhQ3xqFA2FnHtPtiT7YweFV7LG979LJNRb3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9SWt9OQ6xBnjKF3NCzXnDdppcRFauCThYb1O6JIWTwY=;
 b=W9A3aw7ppvL4qi+tWY9DaeRm4o2URsla1yMCc5q0ZHSdHqb+0nQGBuxsl+c/TZh0wlSS621TFHBdI014bEQ+bDZ9xnUzlk/1acqEx21fsj7lMpbsIj3LXVXQE/p0CxDwv0rnV/vg7Uu6YgCt8GqeWU0LCvw9AbtbEAl6gV2Xh0gXRROT7CaSc8zydOvx6LLYF6Q/nwBPrdOjGQiXi+ebKULsI8JWmFbwpK6ffpk+qIaaQrYz8psrAKj58NRrP1mKdqjmdFuIbmbQBhu8g8Uh1PIMmiJsT7QeDdz6go/C8Ot5TO+B+kGixFWRJKG6QKh1TM274pVUnbE5rx8Oo/nerQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by DS4PPFE12D62847.namprd11.prod.outlook.com (2603:10b6:f:fc02::58)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.29; Wed, 23 Jul
 2025 13:19:13 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8943.029; Wed, 23 Jul 2025
 13:19:12 +0000
Date: Wed, 23 Jul 2025 09:19:08 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>
Subject: Re: [PATCH v2] drm/xe/display: Block hpd during suspend
Message-ID: <aIDhTEcPoL5Y8Aoj@intel.com>
References: <20250723092946.1975018-1-dibin.moolakadan.subrahmanian@intel.com>
 <aICtgAa54ESMZ2ii@ideak-desk>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aICtgAa54ESMZ2ii@ideak-desk>
X-ClientProxiedBy: BY1P220CA0004.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:59d::15) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|DS4PPFE12D62847:EE_
X-MS-Office365-Filtering-Correlation-Id: 220f9860-7720-4235-6b17-08ddc9eb8403
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?pGWuQkQpbkwVGIUSuIKu9fMqA7Txhmg4qYD6nKFeWTX5wqFKwt7DAXhTrGj6?=
 =?us-ascii?Q?ML8T10ZQ9Me+bJDKVG9mxiyrAx/iIr26opTZe3LHe/c70Dk1d8UYl60P+23M?=
 =?us-ascii?Q?snP4PoJvtyFjzF3xUpqwHkLWt3sdYqwgifxZlp4alhzI3f6qX3XYnciiIQTC?=
 =?us-ascii?Q?rdApEvkJZGP8goKZqixxmUV0I4TetRVGJaapq4pg5Jf8Dx8nQ/6Yr8/RDhuF?=
 =?us-ascii?Q?DO14S0nLqHlK/f9XV7sjUav2xKvew0qOWQPtRkKoK4fq/4AyUscc80c81vWB?=
 =?us-ascii?Q?Zl7vPIEb0RzVYW8adMwOFYpDj6egjsL1v2Fq6B6rUd34TEo4EcaGPxn9l+tW?=
 =?us-ascii?Q?uS0hSjjNHaVzp6exiWPegxeNFES+8HSSyr/o2g6GhV0pUfKXZalZW40Lg3ik?=
 =?us-ascii?Q?tF1dgBkgRQoA945sqfE0qwZGr2WWUsecXc+GYiNEfs/l4Mj5FYR4CM5ni+v/?=
 =?us-ascii?Q?WTcU4yVPaGc8k2+AkgcrDlD5db0riyOkB9knKnVsOgtaXec2yqsKAkhOtcVn?=
 =?us-ascii?Q?6+Q+sYpUeP++KKnjt3Gy7XsIDSNuy9e7SJgmIVwzqgF/+Ad3FUMKUkuE2UuI?=
 =?us-ascii?Q?xVUklwacysHiTbM+0tXnNgZmFwLoUd44xBz1YAbPPmBBONd033o3oqtSnCyv?=
 =?us-ascii?Q?9woumvw0Ikfr7aRkVyy5kxDnYz7Xg/GHZjqS06Rpbs1OkOtrv8iY5jZADDX+?=
 =?us-ascii?Q?BJveAfvChk0hH3MClLTBQSBw1TvLrdrDYF90B+5i4EitOOdTMmI9ll1C1989?=
 =?us-ascii?Q?5/4RmxhYTPPwT3LYlRYEiIVeiLC6IzWkKrRgzxVjZtk8zv+AWxHh+tAJ8TOA?=
 =?us-ascii?Q?GjNGP9Ly6fFvND+aa2Owz/uYxNPkvKa8MiMME+EmSweYF3BA/h6Ab3pAJlN8?=
 =?us-ascii?Q?1xsopnK9fgr6LRx+wlRWQg/V2BnctMHu8hz/+LDw64tFJDy63fuy38tN5aCv?=
 =?us-ascii?Q?XIL9PmlnqDfaIfP3LNqnxzfpj1dMQMgt1spoWO1Me/esaPhe6iywRFY8vofi?=
 =?us-ascii?Q?9B0Xzm/HoDZUAfx6sSbX8b29RPZwPnil9Q3ufF3IAYeHUd7l5NPz+gdOyE62?=
 =?us-ascii?Q?RP/oq1Xktqitiu0qTdjBNJ7CDOfiddXJFQCfVPz0iIOgOd58cic17qdz09M+?=
 =?us-ascii?Q?7yI8Chd6OIw7B+Ag3MyLR6flgsfgzaIVBRx6OfDaqeD3VYBVA8HFUXLLRX7C?=
 =?us-ascii?Q?0YOYH+P1+eJp7SMXW+MefWTGX7ZDThCA1A86sKxt26EF0mp5Z/V07Ar+To3k?=
 =?us-ascii?Q?7kOPq/3Q1Y2WcWgHrhNBkB5FplGqkRI+ilwbHAcPONp74qqQp3Z0vPcOG+Uc?=
 =?us-ascii?Q?jMoCAFxtGo4MYBq9nmAzRjadjkpg5VQvIvgh4zOkea1+Oe55QmSIqBH8OnWA?=
 =?us-ascii?Q?/DZiDyk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LlJpbKCNaobY9vwmhxdHE0jah1l+al/WjLCWrvEWierLUByN5+wkZrXD6fkF?=
 =?us-ascii?Q?BSdhtVaajlGfPlQecTfeqiVSAmrtVL5vXXJzOt8b17o3uoqLGQRT3G40NZcc?=
 =?us-ascii?Q?NU0UJXkCeQ2IeRW5iEptqDnXkAYVlZPEX6yfDxGT3ZBaQiCsIawJIZcFBuET?=
 =?us-ascii?Q?+f5Kv8R9PKsP54S0JJ/wOMO/A+XLBEZcjiY1YGar3C2802mUBUudtkn0h9Aw?=
 =?us-ascii?Q?L5Y9IWRcsvgjq0Wz5E0VV1aECucr1YoHLwVD3vKLVeaDF6Y0lYZL8h7NVZcG?=
 =?us-ascii?Q?Qe2MBvHaJGOrEawEqcZb3XYOpm5oUy4t1AC4chMUOnZ2VbcEt8AMXmjCdPPG?=
 =?us-ascii?Q?STEtXnPgMshNpQDB6OxHuytnUzZCkqFJd7BOo8OL0Gf+WrDvXdFeU/DqwWza?=
 =?us-ascii?Q?r10frN/IrN6/Dt5MjRjOvWFA6/sZFBfAVNIqiSY5fX7Y+wyejxcK7/Sr1l6Y?=
 =?us-ascii?Q?vTSyMdNpkl5d+EaGYK/XIGB5O0Rn3ycKNJxkFOWuPhJbNv9UPOe5tZ0wJUiE?=
 =?us-ascii?Q?mfxMuWWf0Up4Rnn5k59/3fWid5O3Xu27aBTAWg4o4huzOsaN5vaUZrjdktId?=
 =?us-ascii?Q?EwxHn1iOR9bXItOf2QLSnD3P5Cgv07vitM7be+J894+SsEK3Vcadc76wzaVc?=
 =?us-ascii?Q?/3fcsZV3L2JMr/3yUGjslbakypt9Tm8ufG6sk1iBtRTt+KKuOThYIs7LD7eE?=
 =?us-ascii?Q?hUZ2YAW/tkd4oH/OjlKj5h2nsBgWQHxyPC9wKGt6ZyA/XrI7SxrZFTnw5Ofu?=
 =?us-ascii?Q?BP6Z9tZUsaUwchG4GHUjXLVO3IwIjUgdQhaLQZ9YMjGravp4YhsUL9a7CbHt?=
 =?us-ascii?Q?69q1FTJfbsX7AOq3dZChcEOG0QiVIoc8xatAupuXuKKACunYgwHqzwWf51fh?=
 =?us-ascii?Q?GmyPt/sv9MD4QLMgRWTKzc7l6MeSOxvc23nrIy+F4y1DqjvF2vVZ2hrCO4Vy?=
 =?us-ascii?Q?HurnRvTg/b5TLkV1ySu/Vbh8hhxOx0S46aqGWCuCAorswv/wgWBTBGz52bov?=
 =?us-ascii?Q?j0utytL7XiuXAawwgaPGzmM0D6Aen+7pfXF8nzaQ/a3nTzOebJk+KVbCQZJk?=
 =?us-ascii?Q?KhI/giZiMugFip+K/jIQVOXd62IViG2kZWv1KG4KmTlUWfdzpWSNJBP6PVCy?=
 =?us-ascii?Q?JVG1zHFRe1m5uULFKzuYliwvp5VwqmFQam9cdaQA0qog78pno59k3EdPJy6B?=
 =?us-ascii?Q?KCMZ67w1TAV00AIaV4KCqyxs2PCrl5kP1fezQuLTHeeI1u7CK0wPdlYpP2+F?=
 =?us-ascii?Q?cvU7uqVrGtVhbd0IZRpdLLVOcNSemP5FSNSVrbA8EyMU+XoBm8SHAaiWyutA?=
 =?us-ascii?Q?Vh6AOAQEdQTVsqLGdIKIzHSH6UgBtweUeZ6RsOnQOx7lTkSzF5auzgt3XXRw?=
 =?us-ascii?Q?eNw8IhPcKpX4Q8OtZ6GE479e12q1U0+VMC37x2F+wHiDTaA3Nz0WdKcpIEtJ?=
 =?us-ascii?Q?h5Z79Cqbe/YX0DtadR7NBb71C7dBd8vqBv1NhuFe9RvVEuzZDH4FIYefQxyL?=
 =?us-ascii?Q?b82xkN7Z6Zjj5OMN+jRYiufX1sOD5pHjn2iZKLMuf3z099RP2BlMUJ0KBe6K?=
 =?us-ascii?Q?52XhqIhi4C3uhQ6r8E45WF0jBTaq29Mcyvv8fkWo?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 220f9860-7720-4235-6b17-08ddc9eb8403
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jul 2025 13:19:12.7896 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i34vAfaflOripmMBn+XY6xfKZ8IVtq32K+ABENr82svqthipE4U7kifvgElwTI0+wExaZg/p9isZM97/bZ530A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFE12D62847
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

On Wed, Jul 23, 2025 at 12:38:08PM +0300, Imre Deak wrote:
> On Wed, Jul 23, 2025 at 02:59:46PM +0530, Dibin Moolakadan Subrahmanian wrote:
> > It has been observed that during `xe_display_pm_suspend()` execution,
> > an HPD interrupt can still be triggered, resulting in `dig_port_work`
> > being scheduled. The issue arises when this work executes after
> > `xe_display_pm_suspend_late()`, by which time the display is fully
> > suspended.
> > 
> > This can lead to errors such as "DC state mismatch", as the dig_port
> > work accesses display resources that are no longer available or
> > powered.
> > 
> > To address this, introduce  'intel_encoder_block_all_hpds' and
> > 'intel_encoder_unblock_all_hpds' functions, which iterate over all
> > encoders and block/unblock HPD respectively.
> > 
> > These are used to:
> > - Block HPD IRQs before calling 'intel_hpd_cancel_work' in suspend
> >   and shutdown
> > - Unblock HPD IRQs after 'intel_hpd_init' in resume
> > 
> > This will prevent 'dig_port_work' being scheduled during display
> > suspend.
> > 
> > Continuation of previous patch discussion:
> > https://patchwork.freedesktop.org/patch/663964/
> > 
> > Changes in v2:
> >  - Add 'intel_encoder_block_all_hpds' to 'xe_display_pm_shutdown'
> >  - Add 'intel_hpd_cancel_work' to 'xe_display_fini_early' to cancel
> >    any HPD pending work at late driver removal
> > 
> > Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_encoder.c | 23 ++++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_encoder.h |  3 +++
> >  drivers/gpu/drm/i915/display/intel_hotplug.c |  2 --
> >  drivers/gpu/drm/xe/display/xe_display.c      |  6 +++++
> >  4 files changed, 32 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_encoder.c b/drivers/gpu/drm/i915/display/intel_encoder.c
> > index 0b7bd26f4339..4e2b77b87678 100644
> > --- a/drivers/gpu/drm/i915/display/intel_encoder.c
> > +++ b/drivers/gpu/drm/i915/display/intel_encoder.c
> > @@ -8,6 +8,7 @@
> >  #include "intel_display_core.h"
> >  #include "intel_display_types.h"
> >  #include "intel_encoder.h"
> > +#include "intel_hotplug.h"
> >  
> >  static void intel_encoder_link_check_work_fn(struct work_struct *work)
> >  {
> > @@ -37,6 +38,28 @@ void intel_encoder_link_check_queue_work(struct intel_encoder *encoder, int dela
> >  			 &encoder->link_check_work, msecs_to_jiffies(delay_ms));
> >  }
> >  
> > +void intel_encoder_unblock_all_hpds(struct intel_display *display)
> > +{
> > +	struct intel_encoder *encoder;
> > +
> > +	if (!HAS_DISPLAY(display))
> > +		return;
> > +
> > +	for_each_intel_encoder(display->drm, encoder)
> > +		intel_hpd_unblock(encoder);
> > +}
> > +
> > +void intel_encoder_block_all_hpds(struct intel_display *display)
> > +{
> > +	struct intel_encoder *encoder;
> > +
> > +	if (!HAS_DISPLAY(display))
> > +		return;
> > +
> > +	for_each_intel_encoder(display->drm, encoder)
> > +		intel_hpd_block(encoder);
> > +}
> > +
> >  void intel_encoder_suspend_all(struct intel_display *display)
> >  {
> >  	struct intel_encoder *encoder;
> > diff --git a/drivers/gpu/drm/i915/display/intel_encoder.h b/drivers/gpu/drm/i915/display/intel_encoder.h
> > index 3fa5589f0b1c..e1d3aeab7c00 100644
> > --- a/drivers/gpu/drm/i915/display/intel_encoder.h
> > +++ b/drivers/gpu/drm/i915/display/intel_encoder.h
> > @@ -17,4 +17,7 @@ void intel_encoder_link_check_flush_work(struct intel_encoder *encoder);
> >  void intel_encoder_suspend_all(struct intel_display *display);
> >  void intel_encoder_shutdown_all(struct intel_display *display);
> >  
> > +void intel_encoder_block_all_hpds(struct intel_display *display);
> > +void intel_encoder_unblock_all_hpds(struct intel_display *display);
> > +
> >  #endif /* __INTEL_ENCODER_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
> > index 265aa97fcc75..c69b535497bf 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> > @@ -971,8 +971,6 @@ void intel_hpd_cancel_work(struct intel_display *display)
> >  
> >  	spin_lock_irq(&display->irq.lock);
> >  
> > -	drm_WARN_ON(display->drm, get_blocked_hpd_pin_mask(display));
> > -
> >  	display->hotplug.long_hpd_pin_mask = 0;
> >  	display->hotplug.short_hpd_pin_mask = 0;
> >  	display->hotplug.event_bits = 0;
> > diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> > index e2e0771cf274..9e984a045059 100644
> > --- a/drivers/gpu/drm/xe/display/xe_display.c
> > +++ b/drivers/gpu/drm/xe/display/xe_display.c
> > @@ -96,6 +96,7 @@ static void xe_display_fini_early(void *arg)
> >  	if (!xe->info.probe_display)
> >  		return;
> >  
> > +	intel_hpd_cancel_work(display);
> >  	intel_display_driver_remove_nogem(display);
> >  	intel_display_driver_remove_noirq(display);
> >  	intel_opregion_cleanup(display);
> > @@ -340,6 +341,8 @@ void xe_display_pm_suspend(struct xe_device *xe)
> >  
> >  	xe_display_flush_cleanup_work(xe);
> >  
> > +	intel_encoder_block_all_hpds(display);
> > +
> >  	intel_hpd_cancel_work(display);
> >  
> >  	if (has_display(xe)) {
> > @@ -369,6 +372,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
> >  	}
> >  
> >  	xe_display_flush_cleanup_work(xe);
> > +	intel_encoder_block_all_hpds(display);
> 
> MST still needs HPD IRQs for side-band messaging, so the HPD IRQs must
> be blocked only after intel_dp_mst_suspend().
> 
> Otherwise the patch looks ok to me, so with the above fixed and provided
> that Maarten is ok to disable all display IRQs only later:

Also probably good to identify the patch as both xe and i915 in the subject
drm/{i915,xe}/display:

and Maarten or Imre, any preference on which branch to go? any chance of
conflicting with any of work you might be doing in any side?

From my side I believe that any conflict might be easy to handle, so

Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

from either side...

> 
> Reviewed-by: Imre Deak <imre.deak@intel.com>
> 
> >  	intel_dp_mst_suspend(display);
> >  	intel_hpd_cancel_work(display);
> >  
> > @@ -471,6 +475,8 @@ void xe_display_pm_resume(struct xe_device *xe)
> >  
> >  	intel_hpd_init(display);
> >  
> > +	intel_encoder_unblock_all_hpds(display);
> > +
> >  	if (has_display(xe)) {
> >  		intel_display_driver_resume(display);
> >  		drm_kms_helper_poll_enable(&xe->drm);
> > -- 
> > 2.43.0
> > 
