Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC429B1D8EB
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 15:25:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6151C10E848;
	Thu,  7 Aug 2025 13:25:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RtGN6aN+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 674F710E848;
 Thu,  7 Aug 2025 13:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754573100; x=1786109100;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=m4ZXxcddpXsLhJgKNxXtQzT1x/wy8J6dkzQlptbPqKU=;
 b=RtGN6aN+HrfHZMluJwo7WzxiCKTIYNQgn/BMg+Hi4Jz2N6FVONK6k3cz
 mHysQn9lalOP0pVXe7oBlsYItbuiDv5rNnFvROF1bQ0vjk40MYY1THHda
 njoRIBUFgUeKC6IdzTCLe0IH0IhIX0IbtsBenxiOUhn+jDvVYllO/+XOP
 qnwN2kYbhzmD/eumkXmyTXp+FNUz/sGEN2e0nHUlvvFnxPQjzfeyn1dgp
 9dNri+0NjAsgd7pPFoZq1akRj9sIpzR61fJWU4HrCN50Tp7adxdmhq+Mr
 6Ezal342GDtwxWlMkjry+i5i11SHjLZrUZUktb3WEFaOgExns7C1wMLT8 A==;
X-CSE-ConnectionGUID: 0REcTxDKQxu/5Ewqg2Eu3A==
X-CSE-MsgGUID: kM2H2cx9Qvi+KC9ORCcmjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="56621141"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="56621141"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 06:24:59 -0700
X-CSE-ConnectionGUID: BNOw7oa0TUyJBxcE5TI8Iw==
X-CSE-MsgGUID: cYtvoTT0QJ6CeKZ8bMMFAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="169184928"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 06:24:59 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 06:24:58 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 06:24:58 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.66)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 06:24:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iBEhw49409sKxBNK+PXAG64+F+4SmnUrIJkUQzSItsdlzvCfqY2pxcw0N4Ie35bYPSSxJaot+2AlSRxvF6eph5AK75TvO1K6fBDoNvMDhk6zB89wA50ZjUdhc6zw9x0E7uM0UUqa5jRtQ+XaEkY/+iiNma0as8dVwAVgTmVKlNb4Ucjt08c+tv89L9s5cKfay5+ldJnKoa4ao8QexBSQTPTlP87lURO0dU7PTblmjxwgl5QeSk+Qiq1dnQoPamLsdOhblXQVbVT2hEZVr6LBy1RkRqvLMfbEul6/XtoRsy5qm6Nu7w/mYBIfYj5CF4k79IwSbdJwRhwbtT9aIxuQcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SVbTqs50Wrx9a7Fe9wKBUDkTFBPECwczUvGuDZ0/vZA=;
 b=H7MFL5DaX2T+eXMT39wtyp04gk0NHzhHVhAHNNZI3oNmzH1KGzSigcnqMC0+qO2gYnVIBQU/D1mZwihMguzD8nbygvehMlFvtFwV1MhC4hK8jc70xCTzptDEIq8vpBbXWX3oZUbq0AFQBpUFBmxxlF4Q3Sd5fl7q87lC2fbTigjoZYTWJ0fMpBZexhgsPMsKnRqxB+0FizqzpQ5EH4xqbEIpSXp/8DSdPc7NDz/L0n47A15Yj+7ZqfzQmqJUEKLv3Gs3gji4UWjulj6mnvum2rDuNzB3rQi1MXbKpLRcrBbAFvMQYb/+wM4XbnL1qaWpwPrM6SWZ3czwOMHz7eemRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB4840.namprd11.prod.outlook.com (2603:10b6:510:43::16)
 by DM3PPF9C026D2C1.namprd11.prod.outlook.com (2603:10b6:f:fc00::f3e)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.14; Thu, 7 Aug
 2025 13:24:56 +0000
Received: from PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::7044:24a0:758a:4bfd]) by PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::7044:24a0:758a:4bfd%5]) with mapi id 15.20.9009.017; Thu, 7 Aug 2025
 13:24:51 +0000
Date: Thu, 7 Aug 2025 16:24:43 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: Luca Coelho <luca@coelho.fi>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <stable@vger.kernel.org>, Charlton Lin
 <charlton.lin@intel.com>, Khaled Almahallawy <khaled.almahallawy@intel.com>
Subject: Re: [PATCH 01/19] drm/i915/lnl+/tc: Fix handling of an
 enabled/disconnected dp-alt sink
Message-ID: <aJSpGwANqOYZrV2X@ideak-desk>
References: <20250805073700.642107-1-imre.deak@intel.com>
 <20250805073700.642107-2-imre.deak@intel.com>
 <95999d2602067f556dc2e5739758deef7c462e17.camel@coelho.fi>
 <aJSQKu72vVYmUd4Y@ideak-desk>
 <d8e9cabb243cd8bbe7ac942d117146bf7f68b631@intel.com>
 <aJSc9UaVwn132FqX@ideak-desk> <aJShB9ufOBH9AWLY@ideak-desk>
 <b8c6a347154b3ad39045c9fd2b805b522609f442@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <b8c6a347154b3ad39045c9fd2b805b522609f442@intel.com>
X-ClientProxiedBy: DU7PR01CA0041.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50e::6) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4840:EE_|DM3PPF9C026D2C1:EE_
X-MS-Office365-Filtering-Correlation-Id: 304b69ca-bebc-4606-ce01-08ddd5b5c91a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|366016|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?JCbdJW4TxgHmlmBxkFhhWx1VBhvbSp86B71Q3uTXFbUcidkp+2qNaA2w2rJs?=
 =?us-ascii?Q?YIOVSbOHxyOI/1Bw//SjUHzyCL9J1cSV9vVkrWndwLvlRRFx8NMTyMaXbDNU?=
 =?us-ascii?Q?osbT8CsRSKauTEcPefQJ3/Ns9oafRXVfhOflJG0DatDImCONOo6CFzZeDPgI?=
 =?us-ascii?Q?hscKrzNNXus7sBxrg5eD7+0ZATLL4wJjdr1dgXeIW0B43mazS60tFcYe1sfY?=
 =?us-ascii?Q?q/cCjVXQaLHj2fEthCP6+9zmF1wmRfj1zUbvCddijnK6F3JV4UvdErYvx0o4?=
 =?us-ascii?Q?Tx38RnvdRGZrS6nEWaLFWjtG7SUtLp213b7py8dB1Okxn1b+9IBCUNY8sPLT?=
 =?us-ascii?Q?V3oh+xBPgDU8/gGB60S0mXg+CQMNeiRjRqs8xRUPRDSuoieVq1A93JKTVti+?=
 =?us-ascii?Q?oPGkUTRXxEucCk1/7OVYjGwKZE5kwv+Nd+tKwHcRQ9/Y6SKqfxthdGYwi+Ih?=
 =?us-ascii?Q?OHdsMywtHYhmFVdW3Ijbs7xmIpEf3tL5kWVOvJa3GYFFD2Qrk0HDiwrv3Xeb?=
 =?us-ascii?Q?kXjfTtHaw6n6g1KBZ/LtZgTW2pwZcicAafnLiZjV61ENkpeFdMePBbRMGLPl?=
 =?us-ascii?Q?XAsfDot9LgFIQ0faxq6XB5CJPgdCGG3DnSX4JrNvWetAYfPatyCTTrv0qGRs?=
 =?us-ascii?Q?Zn8qAT9SML58WjMNRZhad7zn86xCkXDZrktX8wE1GK3W35ty1BNuexv9uUaH?=
 =?us-ascii?Q?TDHbgfbovKPBGtwgKjAeB4OOAjRO4oAPWqBlMI8wOWlDzbitayHwCrS8/FW3?=
 =?us-ascii?Q?2PucWZfCrtw/a8XxVzbcgw6yfmUuCRLofTbgEnMoYJ8JFvvD2m8AphATlYJB?=
 =?us-ascii?Q?mg8Qqh2X0xQehjmP2OaG2OIsmfToH3lSHApU1vrjVDTkXMOPPowZIPqmpPIa?=
 =?us-ascii?Q?UAemGNEkWVi1yWuV+uoZ9xenYWVO9TPoKbsvJeG5LAzoRbbqFtFmlx2AlEEl?=
 =?us-ascii?Q?1aPBR+q7aydA+0aQ6f8Ex3wm76N0zIEVcqcZ0SfsV474cHNuB2Fasnxcsk6c?=
 =?us-ascii?Q?XGrEh4wkGDujAlNDEVxUr5USj4gJr0HdJOzTXc/Y+m0ZVqUcmwMgbi09Zlz1?=
 =?us-ascii?Q?uDperjNJzob6xqDkz+GIlqmAlSQTcTCm87hneYiLs7lhQETno0fFD7p3oHbN?=
 =?us-ascii?Q?uhrxOh/w3SvaaZW2tLUnjV3SuWvWoV0gUjZEMrIu3aeGMqXhv5/t40VjR/0e?=
 =?us-ascii?Q?9ASCd3ra7pEOdNs1JehxQQ7pJou2IspAE55QbjT9Gs2fMlEQ1SYxcJkElCbU?=
 =?us-ascii?Q?3s82RQcUSIPZLHOT5bhTxyB2a4XuOkyhSohzaryFtClGaxr4hWQljJ0Mt+z5?=
 =?us-ascii?Q?dk0sLq1hDtZuHQkSc92cv1Jh6DDe/tNgmeIihQrGMaTHLy7EdKCqwkt9tt7c?=
 =?us-ascii?Q?NrXSH58hRYFLlvUxATJ6ewwhzZZykRgpDkwH6li8IdzUfiY1FA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4840.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?B0XHKBNWt/+ylqUKGtn0xH4ixFr8RltYV/8kPV+9lLGoIIztOZ6Hc1SMEED8?=
 =?us-ascii?Q?RSBbllDHHwNvETnek6rfnVeCpLE7tnOLfbhNMhV7URubVW3+R4oim3t5u3E4?=
 =?us-ascii?Q?KOPKEmuu3bmubmf8s3K4C8btV1wkMAPPmjRXaM1mCkCkrzcv0pvkErEQbJL4?=
 =?us-ascii?Q?3JdNUb80Peo29EME/6s2kwAO/EO3dauLmcd0igriXKq2sWH1Z5Uy40wAtO/Q?=
 =?us-ascii?Q?zRPj+vaPRDoQEqAKofmZ65AP0WvO9/g5hLkr7oia5fBM3A1j8pEsOT+rHjhI?=
 =?us-ascii?Q?s1eSW2C+v/BQyDhN7eYgLbf8fUQxCoW832S8tbcPGbt+h58pKkx2bWkT1Z5M?=
 =?us-ascii?Q?+yOfihRExXVnc1XlAkhuXURz4l5BOkuD6r0GHkjYux3ljj6PQiEUn5gJd7xZ?=
 =?us-ascii?Q?ABcUuDaaWw2Kze+OK2RVBj5eYghSBls7BAX8jemx/XQqd0Obr5pL1+EGBLR0?=
 =?us-ascii?Q?PGUHSX6scTwOaKoqTDIu09jB0tuNwULN4RGWc5tFMsbMUpSdjC4ux+j/qhFQ?=
 =?us-ascii?Q?MkRGd2oKFd6D+E44av5z+vg8OgkOQyUEbmUun11n5U9+Unk0aJIk/+7sgAvs?=
 =?us-ascii?Q?6xF8tlBz+of7oPuV32MHScVxlhaFEwENru620En0ogOc0oIbVpa4YuCoKwkw?=
 =?us-ascii?Q?VZB8Zj0jvDwB0tZxRKZFfGZA6phm+oWoq83w44gqxy9w6rtI8vu3jcKPfZaT?=
 =?us-ascii?Q?VI+7Lw+clBCY9x9vj01ctJZ2grTZWG2gOxgwDXNu9jc6simSRQyIDKZQI2MM?=
 =?us-ascii?Q?PTMjYQcmlLNFebzuTKmxeEKOpYB5ywYKrYusPR7x6WPmlElo0aK9a9AyMcNm?=
 =?us-ascii?Q?vQeeMhQfoEzC0FIjNDNevFeHQFrAGA6topx7kqyukVI1zMuBOg5vHuPscV8w?=
 =?us-ascii?Q?+F6HLxR2PNCoN+5TYyIOjiV8hxtSH2CANEh3Ie2Kt0HYWFqMR2+xFXSdYzfb?=
 =?us-ascii?Q?DS6vdakDKohWiWW6A3PXUwOH4cJhsYnBx82Fn8jx8y0+whG489G4OZo+A9Oh?=
 =?us-ascii?Q?VZ4405M+iT6L4cSEJ2/7GUAwz+gXBs/k1j/TFYun4I1PehapKpwDagCiUd3+?=
 =?us-ascii?Q?ynfgQSPbrglZ21tK5QGONzYP1BU/OTz/QyQX4ZDVrKoO2dL9DbDgxD6tieWK?=
 =?us-ascii?Q?C4q5eRbrRvX+uOJFA2yim+N0SOkxw2+9lbUy2Atk3XwXFkmNiIwwQHRAeRcx?=
 =?us-ascii?Q?quurO87piGS2avsZpVXNqPBf9tpWi641fFcS6hXhIouztdPv9BqsZTZG2JXm?=
 =?us-ascii?Q?h/Xz5QiU749kB6z9QK0Tjtxk32/0l8NAkJveBPMmsIdGezSM0v1bvCHf+STT?=
 =?us-ascii?Q?SKnJnIOps6Yj3rB4cCeZYV1wBV8vPx33LzfNiBXCcn3ELqjj++/hZFPx7N1T?=
 =?us-ascii?Q?mFVDszx6Kx0qzZ7HeK0NIkgUX9LQqUV78tD1NuzUDeVziZ0hpVcHNTeqkJKA?=
 =?us-ascii?Q?oiHjpdkar5rJRRL/VbMY6DE+h9zV0Cdjn2AI1gYLlYsUKERobpuzXiHE8a+l?=
 =?us-ascii?Q?r5ciCzOR53gKWgHbtcmJNLr+y/+qoZKHy3bjihfaps3fAMNW7nj+n0WuHYek?=
 =?us-ascii?Q?vjpQ62iLU9MWXoUrvapBHUkn5cQkOn8ZhbsYKSydFFGsS2P7XjM5W4CtgTPl?=
 =?us-ascii?Q?rwRl/2nwrHPVO0RSBa01ue2topK170RC9nYAv9M37Wc/?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 304b69ca-bebc-4606-ce01-08ddd5b5c91a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2025 13:24:50.9984 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XoDd7kZqrJEccN+tQeyT9yD3TqZDRKTwHuBR3Q6RVr/rT4Z8T7+N9LmbuhJ9SgIh1u5N7gZzsyKmZrD0hLQBjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF9C026D2C1
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

On Thu, Aug 07, 2025 at 04:05:14PM +0300, Jani Nikula wrote:
> On Thu, 07 Aug 2025, Imre Deak <imre.deak@intel.com> wrote:
> > Would you be ok with
> >
> > tc_phy_owned_by_display()
> 
> Sounds good to me. Maybe add a brief comment "Is the PHY in legacy or
> DP-alt mode" or something above the function.

Ok.

> BR,
> Jani.
> 
> 
> -- 
> Jani Nikula, Intel
