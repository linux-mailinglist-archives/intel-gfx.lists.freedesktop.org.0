Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB657BF73BD
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Oct 2025 17:03:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3A1210E095;
	Tue, 21 Oct 2025 15:03:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jf9pO5tk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B7E110E095;
 Tue, 21 Oct 2025 15:03:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761058996; x=1792594996;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=BoyYB930x5YJNVqq57SNeFdBRz4F791F15OjOYoXlvo=;
 b=Jf9pO5tkHLmxXaIjiWE/0YRgbCuvaylykYoNb3rku5AylamZtchs5ll8
 5V+mdmaZ9BO0UysUrJ2SI0BbYp9fstlzxxk+tm6p9cymYgYUwJTuAaUfg
 EbWIh7joJgX7WBQ0RENg1l4euu3Fggex8gwb1wd9qSCH2C+/8hLH7y8pH
 cjSYF7mbw/ZVQPY0arg12Q3UdYGGOdOYUWfCoIPW/W6kfRz79Doa95xFE
 x8h0Oq+IeDLlyz+U4omPTOSs36/87XwTXeUaZlkJZPXUYkj+kC87NJYuc
 97oN+ojSlUh9DMOm/DN7Ry+ri8LQPFILhuRzYZZFzeYf4v0pAOnirwHuM w==;
X-CSE-ConnectionGUID: Z2U+CZ8ORXK+yDpFaZmSgg==
X-CSE-MsgGUID: gWl4rV3rQuepZA6ij1b5hg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63090494"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63090494"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 08:03:15 -0700
X-CSE-ConnectionGUID: bGG9fIcBRmGHqm7m0MDK9w==
X-CSE-MsgGUID: rxLXUybFQ2mH8LIum2oqvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,245,1754982000"; d="scan'208";a="214243057"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 08:03:15 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 21 Oct 2025 08:03:14 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 21 Oct 2025 08:03:14 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.35) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 21 Oct 2025 08:03:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TyqiwGEec85qbxrlaVjC/tLp9vf93TuoHfkZwj6oucMzt1T5r6iAKbIGhyNc7db1lzNqFfK8Srv4J6SNDiOkvLc6UZfxFOGkJ6KvDoLO801TrNQRsZVoO3ZQcxZgeexZaTVFejrFOrSPxXc6HEcdCtmn29Wfo2tCjXLDE53MsMyeKeaCaWS+w531X8XQf+uxCMKrOm0zahuoc5pcqLuqRt7e9W7ZGNxiQ1gsTsDUvZrbk/uHfHQgqyA8WZTF8YrvMYIdVeDKctKeSgY4e3cezHW84l0vdgywhrzp9G68QHRqwv0frvmpnzvXDunmrfPt1xbdIT28Eo2JXw6OcyTuAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+UUfUBaYnhUpGVtZwOtWNSSqedsrvRGTX+padY3SK7M=;
 b=r6SnTHgQVMihB42KP2ngIzGD2Xn39sc2hY03djgtfJ2Te3bDbFrEzfjS1g6sD50oSgCtNMq+OjjQZFeOX1TJU37k8Y+2G77yGYj3Zw/VI531Gr2DWwePh92yEOP5og4GxDys8SrItor+KZ5y+Lsrx2XP4WNcajXnZXP+ok11OeVGjc7pueB3H0sLKoUR9EohPXUeS1wiVAg78Fg/szLrdsE7hZJcNUPbsyZZN98snbzRVYhJsCs9qSXox9/OyFewTNrM9vOJTEivf1rfq9gwpQNhc+d4ScGiKSGTcQEzZ4TQX/KZrYCA+nPgdGmT3gWpuXL0dMDZ7d+8POtSgd8J7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by DM4PR11MB7349.namprd11.prod.outlook.com (2603:10b6:8:106::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.17; Tue, 21 Oct
 2025 15:03:11 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.9228.016; Tue, 21 Oct 2025
 15:03:11 +0000
Date: Tue, 21 Oct 2025 11:03:08 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Lucas De Marchi" <lucas.demarchi@intel.com>, Ville
 =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [RFC] drm/i915: move i915 specific display adaptation files to
 display-adapt
Message-ID: <aPegrJ86dlSm0ZWW@intel.com>
References: <20251015160140.2296120-1-jani.nikula@intel.com>
 <aPFKieIQItOPUE0d@intel.com>
 <72ccceeca6ecfb2c5a6c57c0ee80e3b0fe533b19@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <72ccceeca6ecfb2c5a6c57c0ee80e3b0fe533b19@intel.com>
X-ClientProxiedBy: BYAPR21CA0013.namprd21.prod.outlook.com
 (2603:10b6:a03:114::23) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|DM4PR11MB7349:EE_
X-MS-Office365-Filtering-Correlation-Id: d6f089b3-493f-4ea2-7e1e-08de10b2f3a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?YeJdi07o2nb6FVBqGhrvNn+NP/LdT77b641/YxPGoqkiaZb4yDinLhhVwC?=
 =?iso-8859-1?Q?xeilsqsp2BpQgPUi7b0TLzr+L5F4ZD/KPID90UVKbfee0XvnC7YswOB+dS?=
 =?iso-8859-1?Q?Mv3UcHnFwL4cJ40BAUg6INSuj8DEkBk+ekkbUnNkKaa/ZWSNOC2gY7TUEa?=
 =?iso-8859-1?Q?t5GSYmPsttPFA219EV9nOHbbE4Dp00koFNLz8d0qqNWOwubS4zZTkcOLgO?=
 =?iso-8859-1?Q?ddR1ctqmoKAFqdzxJMhsW9U/y4bVDm70tRpaFOj1bR8YLm4HC1fB3yXLn4?=
 =?iso-8859-1?Q?LjLMUunT5kOV4BJTRICHBNknc0ncZ5UWRqSEN/NICJVZqoIJl80Dn8YsvL?=
 =?iso-8859-1?Q?FxqgR7Y+y0ZUnMAfcxRldNcuy8sZbmyDcF9GaTdD/rk8+jNO/EkJuTRDYC?=
 =?iso-8859-1?Q?VPeFwbvPYjbksnTvWiEdGQcdBYLU9J+1vf/E570lYbwTbIKHYZPPO4DIJq?=
 =?iso-8859-1?Q?pWSHCrc/5pD2UfgqRl/WGe8Skc15rQcD2nSVSI+eEZLmq0l8kjRmVrCPtq?=
 =?iso-8859-1?Q?XfpGspaebMIUNwLh5UeOvR80fV91frGCILbRGwDOQdSbzQ1qtOPco7kS2J?=
 =?iso-8859-1?Q?hPtpivOGGNjBpIZuFhhJO3UNqTUui2LYQwnHxKMBgWzK7i3OHuRpOW7U4y?=
 =?iso-8859-1?Q?DLEjn/fCiE2RF0B3g4G9OLZARvAQW6jBqI1MTnClKBlTAp253lWD5ymuv/?=
 =?iso-8859-1?Q?aFJXg26CIuXvFWDCFqXqswtO6aZN/joMrsldMzlrnRHjzaJOglegeEksXa?=
 =?iso-8859-1?Q?QkYF48RYTGiMjVPJYNBChF7V8YXSpRfahId19vQkLg/Gs5DgoL+qkVnwUw?=
 =?iso-8859-1?Q?tN1D0xUirMcI+rJXyPxvHuAuEo7tz72/TfQ6vg0F491OBOaX9O+CRp+hQA?=
 =?iso-8859-1?Q?mwFc/IyVkPeuKorPffZzvL70eq1+YYC7jpVaU2d8JEBG5l6s9JlQRA/n7j?=
 =?iso-8859-1?Q?w26M0gSPWA2knUvrAaeaAg8wWFR52AEk4t/TMSCCuwsvnl+WCUYKizLzAV?=
 =?iso-8859-1?Q?xGbC3m44kjomXfoNuZhFHyq2ONFzYLZ/rdJiKQnQuHf5hBEugGoj7Q+AZm?=
 =?iso-8859-1?Q?5keeq0RU+xtUu/KplE6hZ3WnSvnSLcoPgHJpgt+Y1r7f5Z35AwihW5JCyD?=
 =?iso-8859-1?Q?z1kPWPTzc3a/amvQhbq/IPPECyYK2YVWDUDTUyjBj7qtdcES2nURZTeH14?=
 =?iso-8859-1?Q?ihLG9lwWVC+q+LyLBmXmgwsw8S/ZesXyW8owHJNKxDdH1qQieRYCvW+sNn?=
 =?iso-8859-1?Q?15pW9znmSLT6cMLYhmZPskaD7OFw+foRQqzDEhy65gSAYaW/esJEwMMbyB?=
 =?iso-8859-1?Q?nrShRLRsaWMUXTeuHXuDFeA/l2XyKzunS0HIMDp3T/vRkt4WsBOb7gQ74X?=
 =?iso-8859-1?Q?z2ub3jDZKP6haGTYY6zoNsjODcc3ZDl2H5obAzfDt5M4lGZ7bmSwRrjqIr?=
 =?iso-8859-1?Q?FsAwZ3liSvbuoSfdilB4lel3pg/gJsZKhuAa2TMOVjBntZZLgY8JTwAZN7?=
 =?iso-8859-1?Q?FdOK3y07tl4Hp30B8tfNIQ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?txEqw4aTj4d7WPooQEae5ikOEmidwY6zoEiCERlFQtkZ2Aa4kVndE52Hso?=
 =?iso-8859-1?Q?2FmXt3XJUdyikxJ5x9ybXdzrwGYlusMSjq25QK1A9fjIP46sj5wtC86YOO?=
 =?iso-8859-1?Q?bax3ZVIA0QRM04DFyJO1iEKVyw78XaXwnLTRugWjiBP8yYq8TAfphddNvK?=
 =?iso-8859-1?Q?kD8IRMkzLcsb+pF8zGMUiTeylFGr41u1HF+2dOTnX1xBVOFQf9mdpw+EZ0?=
 =?iso-8859-1?Q?PammhHx4tbvGBYB73lPKqFulvLQKVRnq/g/LoD9rcg/t1B7yQ4EM1EMDd3?=
 =?iso-8859-1?Q?Ws0fba0ySl9zF+KPCxad3dQQkgGIfpR2WQNj2MNbEW/4io/vOI0GkT3yEz?=
 =?iso-8859-1?Q?3Bh4XO2WkeSiHPu6ACmmJD+hB8MkvWJSxGLRPHy6XVV62DZ1QsYDiuU15Z?=
 =?iso-8859-1?Q?dgKwMs7rNuhYU04pfRR/jce0XIngm3Ztrm7TlXpCB3La37bLoFHl5T8q3c?=
 =?iso-8859-1?Q?v7VYohWkFQCI/O+p7qc+RwQPTD0Ujv/KZQYNuYcJhPeYUgawCrpKg7NdGc?=
 =?iso-8859-1?Q?PV/CzUeKNxNslsdUbdncuP46AkAhlY1REjeFWtFAZdHAlwhuSY2sRpToHK?=
 =?iso-8859-1?Q?srdMMHBcHlkcYRitk7ouVaRlxTA+WJbfliEdMoihjMVPqwgcZHL+XXob4U?=
 =?iso-8859-1?Q?FTBKlYuPOXssZElY2JZDRqeoYSq0sunmYF4GFPNfINJajnSOZE95nPbKOU?=
 =?iso-8859-1?Q?mLzTtmiwyHKOqxQwO+KiFStozKK/XZkvWb5VRyyczOS3geCnBE8e/cARY4?=
 =?iso-8859-1?Q?NS1frUtz2OOMTYj0HfTb+a/Q53EM0BZih2pIq576B+jIlx/VChNQu7nBud?=
 =?iso-8859-1?Q?/Gaoh17EQuFzAwebQAsie1iMKKTLaPiiJSEsPDF6j2a1ZVy8aDYM5VH/8O?=
 =?iso-8859-1?Q?bcU2k8e1pF9EilOP72c0Rxg0FIa3p8Q8nBpmtuyWEsw2JNMk+OcdFwF/Fj?=
 =?iso-8859-1?Q?PgoyuOBYmJp3Fq34aydTpkshwXoWjxF8hNEbf4dHtBrMNMPy1G9UnjEHZ7?=
 =?iso-8859-1?Q?ZjqCtMm14ChbTvBFW4hdRC0VvkYZjzB6FhtcQJbjGB3rYroxAnjfdbbZJP?=
 =?iso-8859-1?Q?LFhFV6ioVvAa8cc4R3y0zUJRxi5l3ByTdMt6cGqPUzPcl6YwOJglsUpmx5?=
 =?iso-8859-1?Q?vTRGlUQN12DWPMo10Z5sXO64U6D7OSUOdRsGlQ6RALOZAjJw65ikTErdXF?=
 =?iso-8859-1?Q?roHI15F/qDfEF0nFA/5DESYA1D+zMalAj14l1eh9l1ocGqkC7gZBHTeWYB?=
 =?iso-8859-1?Q?RozOPDwhJC+qLFd9J2T21AqRsLKPdHxUJbOB/jsRKecR34j6Oxln18rMYX?=
 =?iso-8859-1?Q?3axkKd1XxMZUlzS6erD4bNRMS5x4SKX/Q7abUjgZWKSZirJCd0TXZwp3lY?=
 =?iso-8859-1?Q?BFZsG/ZJwETewxypHac6+p6Ax7gY1J0DUlev0LjPoWrSgzngcCEkGmiz8g?=
 =?iso-8859-1?Q?NxllugpOcxAgHkNfES7kmtIkjgJWLRgc7imCb1H+0SOapSKouU48j/IU8m?=
 =?iso-8859-1?Q?KKJIXN06GEObXjMg9Wkw6+e5CBi4bjmUz7XqqAWWYVAVuBbtVzTKkcGkwh?=
 =?iso-8859-1?Q?lizfxWUgB8m5I0hXK+apBE8PL3hGI7hl8OkNdfWuxdhv0L48g4s2bdAtK8?=
 =?iso-8859-1?Q?IgsYmoz26nMFhQB3L3jYg0aQ37Z3ggZZ8Y?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d6f089b3-493f-4ea2-7e1e-08de10b2f3a1
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2025 15:03:11.3729 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sLQRAcIHUWhrpRUgSUvjHdDVmfYjk3q/5m761NbO/NyvdhSuE+Uc1KxVcPYD/1f6gRvrIJsjrDAW8AgzR68mQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7349
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

On Tue, Oct 21, 2025 at 12:00:27PM +0300, Jani Nikula wrote:
> On Thu, 16 Oct 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > On Wed, Oct 15, 2025 at 07:01:40PM +0300, Jani Nikula wrote:
> >> The display/ subdirectory currently contains files that are about i915
> >> core driver adaptation to display rather than generic display
> >> implementation. Move them to a new i915 subdirectory display-adapt/.
> >> 
> >> In the xe driver, all of its display/ is basically xe core adaptation to
> >> display. It's just that i915 display/ contains the actual display
> >> implementation for both. Ideally, we'd have the shared display code
> >> somewhere else, and the adaptation in i915 would be under display/, but
> >> we're not quite ready for that kind of churn yet. So let's just call it
> >> display-adapt for now.
> >> 
> >> xe basically has equivalent files to the ones that are being moved,
> >> apart from intel_dpt.c, for which the implementation is quite different.
> >> 
> >> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> >> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/Makefile                 | 23 +++++++++++--------
> >>  .../{display => display-adapt}/intel_bo.c     |  3 ++-
> >>  .../intel_display_rpm.c                       |  5 ++--
> >>  .../{display => display-adapt}/intel_dpt.c    | 11 +++++----
> >>  .../intel_dsb_buffer.c                        |  5 ++--
> >>  .../{display => display-adapt}/intel_fb_bo.c  |  9 ++++----
> >>  .../{display => display-adapt}/intel_fb_pin.c | 14 +++++------
> >>  .../intel_fbdev_fb.c                          |  5 +++-
> >>  .../intel_hdcp_gsc.c                          |  2 +-
> >>  .../{display => display-adapt}/intel_panic.c  |  6 ++---
> >>  .../intel_plane_initial.c                     | 17 +++++++-------
> >>  11 files changed, 56 insertions(+), 44 deletions(-)
> >>  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_bo.c (98%)
> >>  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_display_rpm.c (95%)
> >>  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_dpt.c (97%)
> >>  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_dsb_buffer.c (96%)
> >>  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_fb_bo.c (94%)
> >>  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_fb_pin.c (97%)
> >>  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_fbdev_fb.c (94%)
> >>  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_hdcp_gsc.c (99%)
> >>  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_panic.c (84%)
> >>  rename drivers/gpu/drm/i915/{display => display-adapt}/intel_plane_initial.c (97%)
> >
> > or perhaps we are ready to move everything else not in above list to
> > to drivers/gpu/drm/intel-display/ ?
> 
> That's probably the end goal, but I'm a bit hesitant to do it before
> we're closer to actually making it a dedicated kernel module. Doing it
> now would require hackish makefiles in both i915 and xe, now we only
> have it in xe. ;)

fair enough

> 
> > then keep i915/display like the xe/display both as this adapt layer
> > tending minimize or even die at some point?!
> 
> I kind of like having the display adaptation in a separate
> directory. Especially in xe it can be left out completely when
> CONFIG_DRM_XE_DISPLAY=n.

perhaps we rename xe/display to xe/display-adapt to just make the
equivalent consistency?!

but just a thought, not a blocker.

Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

on the idea here

> 
> BR,
> Jani.
> 
> 
> -- 
> Jani Nikula, Intel
