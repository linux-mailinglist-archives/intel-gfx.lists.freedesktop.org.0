Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F3DAADCD1
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 12:58:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23FF910E18C;
	Wed,  7 May 2025 10:58:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AoU/QO6n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3064C10E176;
 Wed,  7 May 2025 10:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746615522; x=1778151522;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=1KVXT7n9OAiinxc1cw2tUE4+wPzhDH2OaHS3i1407Ho=;
 b=AoU/QO6nVA4cuLU5hk/XwsJE6QEpkjt3OyJH7qE3TaShDr/qw6EaA+/G
 VdUQNnw2qoSLUGSil7kDj26YLp5qTRg0/wlRH5I0CyarV2BZdGRVko60K
 jPU5pAE0soVp+tirF+FHCSpv2kSLKexp8+gEH+6cTJQNII0eQ6bzhbw8Y
 sFVrXqbqFlEgkT02t45GRnX83mynmeKQJa4QORily9e0upjB1OO20BsYc
 qbMEYh776aX2SztyVb6ticnIXXO5WcYn5Z9cNS0wbxBbGndxpWpE3F71x
 hompIZeMHrf2WeHf9b3MPUZ9kRsdx1+L+UGaLrn8NtWzrRmi9/z1ny4ha g==;
X-CSE-ConnectionGUID: 0oK/xjDtTUySRykZRAZJng==
X-CSE-MsgGUID: 2PvvvsxERqaU2KrLi2Xp0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="58968160"
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="58968160"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 03:58:42 -0700
X-CSE-ConnectionGUID: K/ph2L1XQpyHU/5kN1plOA==
X-CSE-MsgGUID: rmmErQFUSliideEFEAyKZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="136851494"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 03:58:42 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 7 May 2025 03:58:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 7 May 2025 03:58:41 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 7 May 2025 03:58:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iVUKAY8kAeqtA5M13vMC/BcjcAjwLlEIGbieqtqbBs+lGpm1nSoc2UiDnUWSM60rpAU7P3bDO23af2RqTp+hiLTtEA1UVI0IiDl/TeTR1RZ3ZOM4V94G4eLJgrSJTq9z7HMKY3IHmJxAiD54o61ma5D9MhUzY1hAWleMvAJWgw0BVIIEJHAAoU2EVkg+7Jk71DV5p6PRQhm88t1vm2aBVruwHsDPO4Jy9HOvfEFpogp3ZBgGDWsSPFZqvea1aOVGejABvV6Jfiu/xDpZpfiCh4DE4YbOR37mjHJ/Hb0lTMhofixl0NIgbIgsUL/kSaV7hEyLxX1rJz6GKBhukOwojQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=55ghpR7o3XbJjZ07+PIq9kjWnjeYwKCMNhBa9JroVmI=;
 b=mh1oBJGaue0KIqtUEg6kReC5akiqERp5FEGU34VaGr7g9+iP4zAPebeCv25+Sc8KGiPPOY6BgBJDfAsX0o5JRCzAvcZOMpaiIp572MF7/JrV5qD2vV/QbISSUYFlVwPzAbizStLqYXBAC3ApGy27pVY4p0Fg9IcbMx3U6Q5tuIzyAsxEqeJpt9VhrBtWE/2C49ELzo98qmZbpYMnQ52UGHH+BlVXrwyi5DNJyjVfRjvDxWrsFxu3ZDiaMv6rpTAxDfEPvqjnzVXU15XoMdxFXoNlgfCw5eL4gHdi77TJrexq9Vy+A6TGWNi8YUHSL4wR1mc6JVCZ5mCDl79qmzFb4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ0PR11MB4799.namprd11.prod.outlook.com (2603:10b6:a03:2ae::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Wed, 7 May
 2025 10:58:18 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8722.020; Wed, 7 May 2025
 10:58:18 +0000
Date: Wed, 7 May 2025 13:58:26 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 09/12] drm/i915/display: Factor out
 intel_display_{min, max}_pipe_bpp()
Message-ID: <aBs80q9JJaCArh9W@ideak-desk.fi.intel.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
 <20250428133135.3396080-10-imre.deak@intel.com>
 <abe21867-4735-4e73-a16a-bee34658cae7@intel.com>
 <aBon62ld9JyoRuY1@ideak-desk.fi.intel.com>
 <f5d72e0e-894d-4061-874b-d56d13741caf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <f5d72e0e-894d-4061-874b-d56d13741caf@intel.com>
X-ClientProxiedBy: DB8PR06CA0060.eurprd06.prod.outlook.com
 (2603:10a6:10:120::34) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ0PR11MB4799:EE_
X-MS-Office365-Filtering-Correlation-Id: 23cf4bda-abf4-478e-d16a-08dd8d5612f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?qcYpuuDEjDz3mon+idC438/QiPkjoXHlaSn9rYWASJCBPNHrftLQSpMgbcgP?=
 =?us-ascii?Q?ftP57npWb63Cv24J3mtcjgxUgvLedWagGKL/NlV50jG8voXf9MzV0z02S9hy?=
 =?us-ascii?Q?xLYSKTA3D4G7OpxHndwG3W432qH+IBSVVj/8RRyssV5Pw7YYpHioivn05cIQ?=
 =?us-ascii?Q?KWK4XK8GTsQ4QuM4+62WewJVtyxbM2sw+KjFzNZ+UiV8A7WII5vegJCUNX8i?=
 =?us-ascii?Q?wixqtEnmTvRObQ5H4qfHOz0Cau9LPMoZfeTLQFv22IO+l70j7f8Er3ag3WJ/?=
 =?us-ascii?Q?lueJqn3XRs9A41Ebzav3/L+YZgl1MjDj34t6N8yQq0xOxR7C6TXqOiOdXFzJ?=
 =?us-ascii?Q?AbkzIsB99e7Q1xv+pa8bJHjYxbMdYgDOMbwYVR6Oxmfn9enBEeCW4t7Nxt4Z?=
 =?us-ascii?Q?oPKa9Mj/3s+pbcMARen0aLYWmlfAUuge2lZ/lYxFewAsxrXEeNiMbUEpi8l5?=
 =?us-ascii?Q?6TumJZyWelVX8eWZPHSLSzM4NTA7LY0VDX3Cm2utt5cx/UF2uZV4pOkR6SsL?=
 =?us-ascii?Q?yQSjAGQ76hI0D2+ps8zbG+ATVTmPfah8HQfxo8qAyGIMnfcDeKIbEP3Rnlqg?=
 =?us-ascii?Q?YMeKp2zf6cQJged6TfVAD54yBnTsyRZEqu6wd3ixnFD4rOFjX9wQ/mKoE4bo?=
 =?us-ascii?Q?evXSpDpJEwMKWU2aJBGizNVigKnEGmGHCuDjFqNvYSN4LUl/UE/rJ1g6oDwJ?=
 =?us-ascii?Q?Pr50ltJyXwJ8KajC2vfbrUMDSjmK6GBBUFZu2+3bcJ7HsADaM0yJk6g4rQzN?=
 =?us-ascii?Q?Eviri2xnhJMr4omiW9I+svU7GXbbUKVg+vetmy6PPZM28+K/AkZbuek4GPUe?=
 =?us-ascii?Q?qtzRpomSI4bwmc/A72Fgz9E/VEejLxTuXr+h3ctXvNtx+mR/D83K8CyvJ6Pp?=
 =?us-ascii?Q?CqedGFioLoMYHBhP7ewEqb0AGbOd8abYFYj3W1Uur0yxJ+geX2GUNX7R/b0h?=
 =?us-ascii?Q?8wGbI3KHzXjnOuDQ1AjGlWSUiO34aMbb92WmyI0kmywJvPfjaTZN0DkY4yAt?=
 =?us-ascii?Q?KtahPYMUWItXDK7JN7mrpuAYVndTQbJdHN5qhw7UiapyYvuMYjAoqITK4pA0?=
 =?us-ascii?Q?In8zocl5dpDQGix6hqe0YZZPgm9DWs6F+/etKqlWCxEngySrG5qJVoDHyDCM?=
 =?us-ascii?Q?2K+gRMOX3QMltiui9UBMO8OqYSrHzhzXZV7cZHpY3v/MPGW9eOPKAzHtn2wH?=
 =?us-ascii?Q?Y6uJ4GAHFfZEHMeUs3wdOv/cdSU6oZ+6dvH5MBJ1NV1Sfm+eYr/d7kD3Kz23?=
 =?us-ascii?Q?TYFXfb3ogcpJ8lDIPqbDNacwgbKwuka8KAp66PSLH/4TwJFDZFnt+Xnm1jUO?=
 =?us-ascii?Q?g/+3bzVRAcQlEaD7AkJatWICO97+qsvQBNTXpKHwYpc7ITHi52eZDA+UZQFm?=
 =?us-ascii?Q?RFi3D62IUIXGGNNUEN/RzE9f5QFmL8AMqYB4laY407qISzc6YpL6Xd7QzJMK?=
 =?us-ascii?Q?QVxRTOR4U7c=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bVh9GhJCt4pima7MUvr6yNKD+rH6BaLB0WifVLJQXqG5rRZg+79QwRC1u/Tx?=
 =?us-ascii?Q?Bmdyy6GhAoQAkRJutT3MgvhQHAKaN9ce6ZHm0e1X3D/r5SoP+PzD6l/ruszD?=
 =?us-ascii?Q?qjmVNH2IlHKUrcGEGjE5TZ7+2edokYKs4yB+okCIV7dpdmTkTj9Y6xT716gF?=
 =?us-ascii?Q?Wlanu+gPtWHj9oO2hjqG6IE2Zqsu68AI/JmSkW+V+nPZ4gBz1vyC7TceuxxK?=
 =?us-ascii?Q?kZR1hyma6JpoCrzh5881t5jKOa9J5n/49Bhq4ZCPVYEWS9oq1PR8L7WqHADM?=
 =?us-ascii?Q?9omZexjrPMasgpdJ9r6P4A3+MwkPmiAnY3bM7gBXWa2ole5Kh6oJ4aCRg9K0?=
 =?us-ascii?Q?9/dZXU3VbQybqyxzPW+4vECqLvAfRGRvdolcK7tmp+pBQU42mYsk8VJacxRR?=
 =?us-ascii?Q?XSd6ApLmLLK743FOfDoB0Q2BjlpJUhz3WYL3JwYNINh1N5HYAP1Op+PvaVfO?=
 =?us-ascii?Q?9FRj1nerug/AFODJhcGhp9vBIWZej4NS3hFuSUUr3NR8elnOSSBP1cluo8vj?=
 =?us-ascii?Q?uxi24ORAUq9o0k6cDOcXfmrdk7iVOP/TAazl8fpmA0pd5Crh5X+O+ICeS6V9?=
 =?us-ascii?Q?UUX7nkjt9juokNHkFsdr7p3hVP/J1KdYdQYlIKp6ra03NkqX1XT68Rd73pNO?=
 =?us-ascii?Q?gOsrX1EVydEfckqqc28OVu06rpDxxy6IQU56VMaBRKO+xG7sOhElmNnNpQef?=
 =?us-ascii?Q?+KGHy3ckKf5Vkwl5kjmK7ckjco9tBvVmnHc/82Hft7Ue0l5qo8V0HIoVUodW?=
 =?us-ascii?Q?PFsDGfHb/6WNQBKgMDu5PBOEY9CRDOiiwZUzieQ5LdZK+w7R1LoFDRyjRGNn?=
 =?us-ascii?Q?xMZ1LPJMjqkIgjhDRE+k7849FImuGlgDBwr7MxdYVUjlbkto8ewQMsxhAyXC?=
 =?us-ascii?Q?IJzHY70ajIsBd6nwmaJj34udf/7KgNJnfPc05RYWGBrxYWxm28H/DzlX60Fe?=
 =?us-ascii?Q?3Qi5oV8Q6SwTjec2whLYseCBFs6IS5HXLzKpnIeabYYcKtmuEtvr1u8O7TIO?=
 =?us-ascii?Q?UmF+J7/GtCDOuGTdZnUgC5OjVZm98HJs/paK2yjSaepqjruS+l2L2IuTeUEe?=
 =?us-ascii?Q?SKLHuAuiai+HFSMK4DtQ1kA7rljMtuunjYYZ+rfm0Lzcq2oVlz9plsuMEYsX?=
 =?us-ascii?Q?bJEppQdRlh8pMTBc9b/XT15S/4ghe23bBqZLwegsCnRs0O3huuA1AUeH4sOv?=
 =?us-ascii?Q?wcnrEA7rcPg34pMxlLXwGvyJ920ue7QdK8WgrTublqvXvng6ynau/mtMzhG6?=
 =?us-ascii?Q?H9mtT9PnJpAkMI80lXkcAlnZaoQSp7CnDRZEonfouKvSAUHlWINXPdsFliRS?=
 =?us-ascii?Q?O+E7xlWgXb/jE/KFFMdhAUbyIS1zFijoeGzHBPYdSgyZzTvUecNHnPFbatX4?=
 =?us-ascii?Q?GkOlahrZrl2XorLCQogzqlYP2TOmA37ScO8eOZPyHcAvqZP1eft5omALfWPm?=
 =?us-ascii?Q?UKdYRB36JCOB11z+D1k3+5PLqjqNKkNQQKIuA5bzgOK/EW/si4HMhLPkwBu6?=
 =?us-ascii?Q?pDbmMaZLnvFBx+esgKI/+zr40VGQIZWw5PPLGorfX0/0kp74fLHEA77DStpZ?=
 =?us-ascii?Q?RTtD3ErSpa+QJ9/379R87iE9SOWDrNuOUnHmj0Hc?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 23cf4bda-abf4-478e-d16a-08dd8d5612f5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2025 10:58:18.3018 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mRflHl+SorqWRFqy2jSQ3KvgriBx+JLDMUYR0BQRKtTMOfrsD7LCQ/q9RmmAGqvd/jo7e+ptQJ1DkTfhJewa3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4799
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

On Wed, May 07, 2025 at 09:29:21AM +0530, Nautiyal, Ankit K wrote:
> 
> On 5/6/2025 8:46 PM, Imre Deak wrote:
> > On Tue, May 06, 2025 at 06:37:50PM +0530, Nautiyal, Ankit K wrote:
> > > On 4/28/2025 7:01 PM, Imre Deak wrote:
> > > > Factor out helpers that can be used in a follow-up change to query the
> > > > minimum and maximum pipe bpp supported by the HW.
> > > > 
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >    drivers/gpu/drm/i915/display/intel_display.c | 28 +++++++++++++-------
> > > >    drivers/gpu/drm/i915/display/intel_display.h |  3 +++
> > > >    drivers/gpu/drm/i915/display/intel_dp.c      |  2 +-
> > > >    3 files changed, 22 insertions(+), 11 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > > index b4ddffe53e23f..cf2c11826ffb3 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -4301,6 +4301,22 @@ compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
> > > >    	return 0;
> > > >    }
> > > > +int intel_display_min_pipe_bpp(void)
> > > > +{
> > > > +	return 6 * 3;
> > > Hmm.. I think this is DP specific, for HDMI min is 8 * 3 = 24 bpp.
> > > 
> > > I see this is function is used while checking for min bpp while adding
> > > support for forcing a bpp for different connectors.
> > > 
> > > Would it make sense to make this connector specific?
> > I wonder if it could be kept simple for now and use the platform's min
> > bpp value in the above debugfs entry. IIUC the
> > platform/connector/output_type specific min pipe bpps are:
> > 
> > DP/RGB:      18
> > DP/YCBCR:    24
> > LVDS:        18
> > DSI/DDI:     24
> > DSI/non-DDI: 18
> > All other:   24
> > 
> > It would make sense to add a helper and use it everywhere, but it would
> > be a bigger change. Are you ok to do this as a follow up?
> 
> Yes we can have a follow up for this, to get this connector specific.
> 
> Should we make the min as 24 for now, that will work for most things.
> 
> Or else we can let that be 18 for now, and the tests when forcing a
> particular bpp, will then use modeset with try commit.
>
> If commit fails with -EINVAL, tests will try again with higher bpp.

Yes, I think it can be left on the platform minimum 18 (for now). The
valid range of the debugfs entry is anyway the platform's valid range
not the connected sink's valid range, so a commit can anyway fail if a
value outside of the sink's range is set. This is so that you can set
the debugfs entry _before_ connecting a sink.

> Regards,
> 
> Ankit
> 
> 
> 
> > 
> > > Regards,
> > > 
> > > Ankit
> > > 
> > > 
> > > > +}
> > > > +
> > > > +int intel_display_max_pipe_bpp(struct intel_display *display)
> > > > +{
> > > > +	if (display->platform.g4x || display->platform.valleyview ||
> > > > +	    display->platform.cherryview)
> > > > +		return 10*3;
> > > > +	else if (DISPLAY_VER(display) >= 5)
> > > > +		return 12*3;
> > > > +	else
> > > > +		return 8*3;
> > > > +}
> > > > +
> > > >    static int
> > > >    compute_baseline_pipe_bpp(struct intel_atomic_state *state,
> > > >    			  struct intel_crtc *crtc)
> > > > @@ -4310,17 +4326,9 @@ compute_baseline_pipe_bpp(struct intel_atomic_state *state,
> > > >    		intel_atomic_get_new_crtc_state(state, crtc);
> > > >    	struct drm_connector *connector;
> > > >    	struct drm_connector_state *connector_state;
> > > > -	int bpp, i;
> > > > +	int i;
> > > > -	if (display->platform.g4x || display->platform.valleyview ||
> > > > -	    display->platform.cherryview)
> > > > -		bpp = 10*3;
> > > > -	else if (DISPLAY_VER(display) >= 5)
> > > > -		bpp = 12*3;
> > > > -	else
> > > > -		bpp = 8*3;
> > > > -
> > > > -	crtc_state->pipe_bpp = bpp;
> > > > +	crtc_state->pipe_bpp = intel_display_max_pipe_bpp(display);
> > > >    	/* Clamp display bpp to connector max bpp */
> > > >    	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> > > > index 3b54a62c290af..b6610e9175a7a 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > > > @@ -524,6 +524,9 @@ void intel_plane_fixup_bitmasks(struct intel_crtc_state *crtc_state);
> > > >    bool intel_crtc_vrr_disabling(struct intel_atomic_state *state,
> > > >    			      struct intel_crtc *crtc);
> > > > +int intel_display_min_pipe_bpp(void);
> > > > +int intel_display_max_pipe_bpp(struct intel_display *display);
> > > > +
> > > >    /* modesetting */
> > > >    int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
> > > >    				      const char *reason, u8 pipe_mask);
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > index 0f89a301e4a0d..73ca9f8efefc5 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > @@ -1198,7 +1198,7 @@ intel_dp_output_format(struct intel_connector *connector,
> > > >    int intel_dp_min_bpp(enum intel_output_format output_format)
> > > >    {
> > > >    	if (output_format == INTEL_OUTPUT_FORMAT_RGB)
> > > > -		return 6 * 3;
> > > > +		return intel_display_min_pipe_bpp();
> > > >    	else
> > > >    		return 8 * 3;
> > > >    }
