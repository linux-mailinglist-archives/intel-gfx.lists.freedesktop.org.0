Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B735BCA3B39
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 14:02:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D88F910E94C;
	Thu,  4 Dec 2025 13:02:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MuFmiSP2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7401110E93D;
 Thu,  4 Dec 2025 13:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764853341; x=1796389341;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=Wotp7b1VenNN2pnsLwfq1cjY2kst00WiPQ78iK/Fug8=;
 b=MuFmiSP2L+bUw8MH/qcKF2hf+gnMtyi6jsqrGD0trU11IDe4nfpJOpBF
 qZQYdo2ZfNP9YQfqh9rJTOh8DqmYruweQw3SnfjvddZw0VrGTAq4vDgWJ
 x9WAB354W6h1+KbMBbIs2ccSYzWvywuK5gBErvhicPeNmy/azmMn/A06b
 rDB3sUDzc2Cq+C4bZKLadJI6IZXStPO++0sbSUfZkP+QFasumKA4uoa5h
 hCe/g9eoq6Vl89+iuTR3FyAppmT8yN46kB8z8ue8ftCm85XRral1sGHAu
 Uso5vXcsppaeyGD380fK3VhmN5oY2y0wyW3rk0bI0fy2PVIXsTshzFE6h w==;
X-CSE-ConnectionGUID: MG69ds6HTyy9BjMq4l+uHg==
X-CSE-MsgGUID: 906DY2/8SbOjPkWSUP43+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="84472815"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="84472815"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 05:02:19 -0800
X-CSE-ConnectionGUID: M0ysrUkyQFeXu8rjrLqOEg==
X-CSE-MsgGUID: Za/Fqw1qT4CiplbQAOR/lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="232310070"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 05:02:18 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 4 Dec 2025 05:02:17 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 4 Dec 2025 05:02:17 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.17) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 4 Dec 2025 05:02:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NcQRwfCFk1UXPEfxR89lQWHTmACk1ncGqDOwPUFpngiKoaqd5JETsW3avp9QrWo/E5lai/lUPg8+JKhcTGKhvDDkZ5UMEaC9eMKE4ydHUTtYtTMTX/fMvyc70bHOJ72ybr6FOkm1qVnrmR8p2K8NXbbI3yREQB9ROesLYPikQVTuz60LFlj2+zJTwTfegDI8bCrBUFBQ88jqwbdpmpsBiBDzN2+4axWJw9h63UNRJNvOulCDsQXpF4TquHtVPyC0VcfupVx+BHRds/CFJT4z29IZ7zjOqXysfqy/WmOaYeO8v657zW2MeZ6w+4cTfSpy6mSCpunk4fVOzwN1DifZBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cL0Y8jmYFsktW8pwdc4HclNzQ+6uLsniAZ1nec7JLp0=;
 b=p4ErC2oSmBo2o/TNUz/vFhd8G62UBs0I5cnKabLSCY5ydzXlyry0Ns/6c8vnu2QLSABAjV2elaG6XRWc/9DAdt5Qw5FEosV7tJN0HiJw4HCPW/REZTpgpWytMNNU/np1a51gis0e+NJgj3HG6WWIrbY1f2vW3qVBky7aLGE0vpI+Z4YwGtWVf14XXXkVq2xNf4Cr/TGzQGDEVCWPOw8CzLJ3Hl0tB4E2qJVmo0ruzJ24BNSjUbvngR5yZj89gE7xW1N9ks+h5VmhBPxrHSBL9q7sP9D6Nmz/f0eeWjMph2QOLsyw+bWU1qaJQXvb37VC3VWS1hvOdJe/mdIYIeUAJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS4PPF0BAC23327.namprd11.prod.outlook.com (2603:10b6:f:fc02::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.9; Thu, 4 Dec
 2025 13:02:15 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9388.009; Thu, 4 Dec 2025
 13:02:14 +0000
Date: Thu, 4 Dec 2025 15:02:06 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Mohammed Thasleem <mohammed.thasleem@intel.com>, <stable@vger.kernel.org>
Subject: Re: [PATCH] drm/i915/dmc: fix an unlikely NULL pointer deference at
 probe
Message-ID: <aTGGThc98Il6FCTC@ideak-desk>
References: <20251202183950.2450315-1-jani.nikula@intel.com>
 <aS9ZGmXG_n0IXv-N@ideak-desk> <aS9bj8RRYYc01Rzs@ideak-desk>
 <43c4d7f0d9fe4ba6acac828306b41d612dd4f085@intel.com>
 <aTATMrp6oysYUecR@ideak-desk>
 <7bfb6dabe5bf83028f695d4d248597b721ce0e0c@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <7bfb6dabe5bf83028f695d4d248597b721ce0e0c@intel.com>
X-ClientProxiedBy: LO4P265CA0181.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:311::8) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS4PPF0BAC23327:EE_
X-MS-Office365-Filtering-Correlation-Id: 23d997e8-3d8f-4d20-2b45-08de33355824
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|376014|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?jzX4ZxBws0P++exB3lb6BCXuebcH968GUIxbYLgaxqBY/P3W1V54Ycz4xOSc?=
 =?us-ascii?Q?LVJGgWsp2pzFNujI06lrA7xxE5saW4bb62B98zxTWRsbXhJfEY2V3HDgRi6c?=
 =?us-ascii?Q?EStGDCyRux6wl04dJ5UTySL3cDsQE8ZQT2/oUcWf3HOSSpwGLR/XgY57mf/S?=
 =?us-ascii?Q?v75CLhCz/zp4c+NOM3BVFpDXYvJS8WHzVBNPBBj2vGEgl8Y+EonV8r9HwF3j?=
 =?us-ascii?Q?ggWwN2es5CnHCYs/SMO8Pg9/CjmMAz+5QqDd0wiI9xUogMXXJA9Tmief+Sx8?=
 =?us-ascii?Q?moNsSOCK3KLhQCKExns/9a2zYkGLY+7UDgrYd1a0mLn7dMCtoA3RYePA0c7d?=
 =?us-ascii?Q?OPgbFkCY9QLjGPVG7KFBQtVMmYtqQxufPpR8o9pG2FIP0fCBBsyq9OtIUu1t?=
 =?us-ascii?Q?tWQ9F6Afrtil0O0Sh98pH3iHiJQQSkGvV5JNlr7e3w42pNg0dbIbD5mpo0hd?=
 =?us-ascii?Q?Unv/iIVwsgQwAIXiEsTkFFCpkRgSh+E5irzqQQiQbJfjzWsg2tadaz46nSGU?=
 =?us-ascii?Q?B2pPFW3JUIzk7NXL/aQE9utwYxy3iQVGbaD0/eI2cao/aOfVwgW5pMqDRHW2?=
 =?us-ascii?Q?rU41uUvszHZnhcXR/7wdD+WDMQ48lyTtnT+wUODynGt/jIIW3UupYA3KqDX5?=
 =?us-ascii?Q?VIwT2PQp9DY2OzuankI2XFC/DIIHrXQy0EqUhCbkPUsYssUdQjH3p09uEeoj?=
 =?us-ascii?Q?3NMRWqpTHEKO5OMd/JKJgHfiSJpAS1Bylt4mVJj+qoMyboym4kpzibJ47c+k?=
 =?us-ascii?Q?AVVWdASrGwLf20r7u0nwI/fzqdTHoCaLR8srpbgdfIwFYP+wkw00MfnLuGW8?=
 =?us-ascii?Q?JQsJd/+zmp5wWkYLgp5uOcD8Iw16q3UW+lD+AGmTjyE3EVbSnqEXIyOJhwYq?=
 =?us-ascii?Q?axXJQudCHU5wpNhQyqfIIs8XWIV7ND9BYT42SERjij1USJrO64pcckuWIGwh?=
 =?us-ascii?Q?gHwD/5S6u58g60p5hvCoo8EtR3jr6OR1ynHwN8SG9WHTGHNjQi2aI+MJi2aj?=
 =?us-ascii?Q?/9Idp7udp73RJXKjVx742uDLWC4Zb4uVV3STKZfQ+uxrpWdJJUBnwmyRrn/A?=
 =?us-ascii?Q?tgq0UFcRObO9ERthnMvaxLhlS7d/KVAUkU8kfYt8Rd+zVdQqD7ApH6BaSbi2?=
 =?us-ascii?Q?/cbuu74qSKn5QEl0fBJUw06hgpM5c2tCWDa+9uKsyJoM46yxuc5eOFV4D8oO?=
 =?us-ascii?Q?zSiVoP91xn+RzOC40scRD63zkRl+qwiBK2UiBKjjoPAc+C+wPwQD5IyUFeni?=
 =?us-ascii?Q?zS5tqDA75FjKiCpkcCylf61L5pXLlEDont7Vecdck6BCxh1EygntfRtLRlMx?=
 =?us-ascii?Q?MK+wDqz8DGcsua3PrCY2/Kq/rWfCPhKClOEJ7H1QLgMjaxOvmuQOtPJAxnkY?=
 =?us-ascii?Q?nNeVSxdgoNijT/1IpLEyoQiQK/Dhee8/Sx3O8WLPl3p80LOnCJ7eC5NrNUA0?=
 =?us-ascii?Q?6ZDWwyHcso+2o1/C33DT0pHgqnFls7fC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2N75VXtCzKC2Ca5vjXr5IxxZl6qeZBZtHcZrE4HjhdZewL4lvFfD7i0WzVKX?=
 =?us-ascii?Q?ointUJWbvRz9EwU87FzURtVumdzVhke6Gf0bCMtxgxgVUYLGBKRQSYhr18Ht?=
 =?us-ascii?Q?EkKNJvM/LJ2Rmf89njoW1lw2sl7LsEarmMxmyjtYL7QvNW2f/xHuX//mhX0c?=
 =?us-ascii?Q?gX7aXMGPBPEIxx2t0P43K+atlOmgxmFVOV71CxzjYLAUYX/Ow0clf1Y32FEZ?=
 =?us-ascii?Q?vqJQDJgw/Spb4GsEcFfoG6lHFD7HbzXYm5zMLCYgag55X41Y4qmdHTgChIAF?=
 =?us-ascii?Q?D/uDIKXJj+bpoNfrxEuxtq97bgMXRTi6zD4VXoflL8unZh2x2o0mE+tmgGgm?=
 =?us-ascii?Q?DMeHB8uhRme5wDfEjqVgYWWFSnvxTLyu9G+8canVrO7ufckJgK+BIr+HVpJu?=
 =?us-ascii?Q?j5U0HiR8nIMerB47l2UzyLdSMdiTfxMsdjMmBBiOQHwQepbuhSZDGYR+6huW?=
 =?us-ascii?Q?pgdGzZbqgFR3lx657vJeliN31I/0xwZ7zane3lH2XV95AgIn1XkrXaPiqeku?=
 =?us-ascii?Q?CLPe5muJZGiPl1zmO/0ZRHW1tkE1UpfK2XG3g+EW0zTc2ExxDkuMSknzTMT5?=
 =?us-ascii?Q?ysvWbpcI7L/RT7/pUJe9N92tFqs4TSr9jgiTg33NvnbvpEtrFYYWuWgX7eyB?=
 =?us-ascii?Q?JlPymV4grHMUeoVdTYCQhaBq2M/c5rVL1hQCR3mqe1NnwTLj06QAbge3pyJI?=
 =?us-ascii?Q?mOk4P+IAlj4OjII2lJPxqUAQNNIM/ukbzPfMvODhamY5RUtDz1DslB7pG1nv?=
 =?us-ascii?Q?cOkMKhu8fsLYWxequWnJcCxKqyEJh4ddZdenjCpSSVFvVYb68uH98okIR4bF?=
 =?us-ascii?Q?xwCy0fqm7fpkfRYz4MbfGLdE2iNG69x70DNMkaz0SzqsdIilihrReraOG8A8?=
 =?us-ascii?Q?RmYrKylW0/UmDlTU+7MBz20ZcR3sJuVSI6fAJtQqJSQ2HL8VJtqP3jMZH7Ei?=
 =?us-ascii?Q?MkJqy3lPOHVcp9fBGWPpQ5sNUJharNN9Jb9p+sFTnzZPlXezqJX+G5RU3xTd?=
 =?us-ascii?Q?z8RdggkC7OGYQx3RYqnXUAFUTzXOEhjbnAjykl1cuCXBWyQxh0Rs2ikeHhDp?=
 =?us-ascii?Q?EzYBRLpRc2PnOAF6JVeB4xwI7L6saHXUyf0bgeKdLZ/prPP6M1HZHSqnrFX3?=
 =?us-ascii?Q?orVrvRH90fJ7PwtnWtoGiQhlfQAVk9lWEBJW7OLHF1jw8Q2JlHOPy10ft5Ar?=
 =?us-ascii?Q?2bc/NthMcP4qpxCTeZqYAdUX44EfaCLrJ0IJaXaih8GWYYnB4TgPPkePOMnW?=
 =?us-ascii?Q?3Bj0eufoXuOX+nURdaAGJz7QozlRYCnGEyc+fNDMVNK0CAWRfsi7FnAYJZp6?=
 =?us-ascii?Q?rJT/FZ3iqNqyDK+NGPPYUCOGZ2OkqMim9a88ZdKU6R/LLSHM/7B3aANHCs1i?=
 =?us-ascii?Q?FerRJaDTeBVw143R6fTeO3xG11PswCKF6v7ux61C31xQ2Ifpm5teTigr24uq?=
 =?us-ascii?Q?1BwHJRQ9FD3UNwYrKajkElv8n1dLpnbFWpBM4HoEsi7t5ocnne5qLREaqvqa?=
 =?us-ascii?Q?zScVbwLNoN41rmz6oM2dATdzP9b0E5YNuXxi7TKMR1JXu5IOUZKr0f/gf8Dp?=
 =?us-ascii?Q?sqITpPR8nBdCqLdoVb+NJKXxUA87VRAbwnKvtwRwMDpkLiWO/bBflLlFAq9n?=
 =?us-ascii?Q?mo9iZIcuLUUF//A91JoRowbBA285VOYMZtoW67V2G/9Z?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 23d997e8-3d8f-4d20-2b45-08de33355824
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2025 13:02:14.8395 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 362odhkGpXJnvLlEEkCNR6a+9forKB1BWlO5JddoqHsswKH9AapkvX8KtpRqMkKsQum8jzkQbEHYzYWBXIcIVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF0BAC23327
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

On Thu, Dec 04, 2025 at 01:30:27PM +0200, Jani Nikula wrote:
> On Wed, 03 Dec 2025, Imre Deak <imre.deak@intel.com> wrote:
> > On Wed, Dec 03, 2025 at 10:13:44AM +0200, Jani Nikula wrote:
> >> On Tue, 02 Dec 2025, Imre Deak <imre.deak@intel.com> wrote:
> >> > On Tue, Dec 02, 2025 at 11:24:42PM +0200, Imre Deak wrote:
> >> >> On Tue, Dec 02, 2025 at 08:39:50PM +0200, Jani Nikula wrote:
> >> >> > intel_dmc_update_dc6_allowed_count() oopses when DMC hasn't been
> >> >> > initialized, and dmc is thus NULL.
> >> >> > 
> >> >> > That would be the case when the call path is
> >> >> > intel_power_domains_init_hw() -> {skl,bxt,icl}_display_core_init() ->
> >> >> > gen9_set_dc_state() -> intel_dmc_update_dc6_allowed_count(), as
> >> >> > intel_power_domains_init_hw() is called *before* intel_dmc_init().
> >> >> > 
> >> >> > However, gen9_set_dc_state() calls intel_dmc_update_dc6_allowed_count()
> >> >> > conditionally, depending on the current and target DC states. At probe,
> >> >> > the target is disabled, but if DC6 is enabled, the function is called,
> >> >> > and an oops follows. Apparently it's quite unlikely that DC6 is enabled
> >> >> > at probe, as we haven't seen this failure mode before.
> >> >> > 
> >> >> > Add NULL checks and switch the dmc->display references to just display.
> >> >> > 
> >> >> > Fixes: 88c1f9a4d36d ("drm/i915/dmc: Create debugfs entry for dc6 counter")
> >> >> > Cc: Mohammed Thasleem <mohammed.thasleem@intel.com>
> >> >> > Cc: Imre Deak <imre.deak@intel.com>
> >> >> > Cc: <stable@vger.kernel.org> # v6.16+
> >> >> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> >> > 
> >> >> > ---
> >> >> > 
> >> >> > Rare case, but this may also throw off the rc6 counting in debugfs when
> >> >> > it does happen.
> >> >> 
> >> >> Yes, I missed the case where the driver is being loaded while DC6 is
> >> >> enabled, this is what happens for the reporter:
> >> >> 
> >> >> i915 0000:00:04.0: [drm] *ERROR* DC state mismatch (0x0 -> 0x2)
> >> >> 
> >> >> That's odd, as DC6 requires the DMC firmware, which - if it's indeed
> >> >> loaded by BIOS for instance - will be overwritten by the driver, not a
> >> >> well specified sequence (even though the driver is trying to handle it
> >> >> correctly by disabling any active firmware handler).
> >> >> 
> >> >> But as you pointed out this would also throw off the cooked-up DC6
> >> >> counter tracking,
> >> >
> >> > Actually the patch would keep the counter working, as the counter
> >> > wouldn't be updated in the dmc==NULL case. However I still think the
> >> > correct fix would be to check the correct DC state, which from the POV
> >> > of the counter tracking is the driver's version of the state, not the HW
> >> > state.
> >> 
> >> One thing I failed to mention is that this happens in a KASAN run in
> >> QEMU. So I'm kind of not surprised we haven't hit this before. And it
> >> impacts the deductions about the DC state.
> >
> > Ok, it's strange why QEMU decides to initialize the DC_STATE_EN register
> > to a non-zero value then. But in any case the driver should handle it.
> >
> >> I'm not quite sure what exactly you're suggesting, maybe a draft patch
> >> would communicate the idea better than plain English? ;)
> >
> > intel_dmc_get_dc6_allowed_count() still needs to check for dmc==NULL, as
> > the debugfs entry can be read at any point. With that, what I meant is:
> >
> > in gen9_set_dc_state():
> > ...
> > -       dc6_was_enabled = val & DC_STATE_EN_UPTO_DC6;
> > +       dc6_was_enabled = power_domains->dc_state & DC_STATE_EN_UPTO_DC6;
> 
> I still don't understand why we can trust our own value rather than
> what's in the hardware in this case.

The BIOS/FW can set random flags in the register, as in the above case,
so it can't be trusted. The counter update ending the tracking of the
duration of a DC6 enabled state only works if the driver did in fact
enable DC6 previously and has started the tracking accordingly. This is
only guaranteed if the driver has set DC_STATE_EN_UPTO_DC6 in
power_domains->dc_state, the corrsponding HW flag doesn't guarantee it.

> For resume, we even call gen9_sanitize_dc_state(), but not for probe.

After system suspend, the driver enabling DC9 by setting the
corrsponding DC9 flag in the DC_STATE_EN register, the HW/firmware will
disable DC9 while resuming. The SW version of the DC state will be
updated accordingly in the above function to reflect the disabled DC9
state.

> > ...
> >
> > in intel_dmc_get_dc6_allowed_count():
> > ...
> >         if (DISPLAY_VER(display) < 14)
> >                 return false;
> >  
> > +       if (!dmc) {
> > +               *count = 0;
> > +               return true;
> > +       }
> > +
> 
> This seems neat but is overkill. dmc is never NULL here, but I added the
> check for completeness.

intel_dmc_get_dc6_allowed_count() shouldn't fall back on DISPLAY_VER>=14
to report the DC6 residency in a way that only works for older
platforms. Hence the function should return true for DISPLAY_VER>=14.

> It's the intel_dmc_update_dc6_allowed_count() that's more fragile, and I
> want that to have the !dmc check, instead of relying on the subtle
> dependency on power_domains->dc_state.

The counter tracking should depend on the power_domians->dc_state SW
state as described above, so that's the correct thing to do there.
dmc==NULL in intel_dmc_update_dc6_allowed_count() would be only a bug in
the driver, if you wanted to check for that it should be a
WARN_ON(!dmc) check.

> >         mutex_lock(&power_domains->lock);
> > -       dc6_enabled = intel_de_read(display, DC_STATE_EN) &
> > -                     DC_STATE_EN_UPTO_DC6;
> > +       dc6_enabled = power_domains->dc_state & DC_STATE_EN_UPTO_DC6;
> > ...
> >
> >> Anyway, I think "not oopsing" is a lot better than "inaccurate DC
> >> counters in debugfs".
> >
> > Agreed, the above would ensure both.
> >
> >> 
> >> BR,
> >> Jani.
> >> 
> >> 
> >> >
> >> >> so could instead the counter update depend on the
> >> >> driver's DC state instead of the HW state? I.e. set
> >> >> gen9_set_dc_state()/dc6_was_enabled,
> >> >> intel_dmc_get_dc6_allowed_count()/dc6_enable if power_domains->dc_state
> >> >> says that DC6 was indeed enabled by the driver (instead of checking the
> >> >> HW state).
> >> >> 
> >> >> That would fix the reporter's oops when calling
> >> >> intel_dmc_update_dc6_allowed_count(start_tracking=false), by not calling
> >> >> it if the driver hasn't actually enabled DC6 and it would also keep the
> >> >> DC6 counter tracking correct.
> >> >> 
> >> >> intel_dmc_update_dc6_allowed_count(start_tracking=true) would be also
> >> >> guaranteed to be called only once the firmware is loaded, as until that
> >> >> point enabling DC6 is blocked (by holding a reference on the DC_off
> >> >> power well).
> >> >> 
> >> >> > ---
> >> >> >  drivers/gpu/drm/i915/display/intel_dmc.c | 6 +++---
> >> >> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >> >> > 
> >> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> >> >> > index 2fb6fec6dc99..169bbbc91f6d 100644
> >> >> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> >> >> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> >> >> > @@ -1570,10 +1570,10 @@ void intel_dmc_update_dc6_allowed_count(struct intel_display *display,
> >> >> >  	struct intel_dmc *dmc = display_to_dmc(display);
> >> >> >  	u32 dc5_cur_count;
> >> >> >  
> >> >> > -	if (DISPLAY_VER(dmc->display) < 14)
> >> >> > +	if (!dmc || DISPLAY_VER(display) < 14)
> >> >> >  		return;
> >> >> >  
> >> >> > -	dc5_cur_count = intel_de_read(dmc->display, DG1_DMC_DEBUG_DC5_COUNT);
> >> >> > +	dc5_cur_count = intel_de_read(display, DG1_DMC_DEBUG_DC5_COUNT);
> >> >> >  
> >> >> >  	if (!start_tracking)
> >> >> >  		dmc->dc6_allowed.count += dc5_cur_count - dmc->dc6_allowed.dc5_start;
> >> >> > @@ -1587,7 +1587,7 @@ static bool intel_dmc_get_dc6_allowed_count(struct intel_display *display, u32 *
> >> >> >  	struct intel_dmc *dmc = display_to_dmc(display);
> >> >> >  	bool dc6_enabled;
> >> >> >  
> >> >> > -	if (DISPLAY_VER(display) < 14)
> >> >> > +	if (!dmc || DISPLAY_VER(display) < 14)
> >> >> >  		return false;
> >> >> >  
> >> >> >  	mutex_lock(&power_domains->lock);
> >> >> > -- 
> >> >> > 2.47.3
> >> >> > 
> >> 
> >> -- 
> >> Jani Nikula, Intel
> 
> -- 
> Jani Nikula, Intel
