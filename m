Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C52748C1C2B
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 03:42:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F61F10E12A;
	Fri, 10 May 2024 01:42:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q9eCLB3w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F89210E12A;
 Fri, 10 May 2024 01:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715305330; x=1746841330;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=fWRQaj0Q5bircGxOTdM3z8ockBz9gi9rLmoamB0i4o8=;
 b=Q9eCLB3wrtcNOWuxiydQTMxe1D6isHV4JGDPQwLhTcUelcPPCSpJzlXK
 vyD0WZHz787V1x+a8k1jU/yJHr62INXti+1mqU70HwUABokJ84nHBTynJ
 t9eVnSR0iT7w8dwn500ii3GHrRwPnltMunAz4xTuJs+bN1WgjxSnHRS3J
 VOwTA6S2S9K47wgRBqsCYL8RHlRVvGP33oqOwJWUTDgK1MbI8eYmr0GN/
 pXj13DQeOObPS6jbeQdPdOKGrmRKiRAcRwIyagKqkTLHflHz5cIb88bBr
 R67Z+l9YtunUTDFoSNMPHv6r5CVTUU74kknLw9IccIV683WPF+jK/UJ+j A==;
X-CSE-ConnectionGUID: zZnWzEJ2TOuuX65JZ8Kwzg==
X-CSE-MsgGUID: tQqMFpG+TYGM6ZiHmbEphQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11393933"
X-IronPort-AV: E=Sophos;i="6.08,149,1712646000"; d="scan'208";a="11393933"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 18:42:07 -0700
X-CSE-ConnectionGUID: kTxcuM5TSr2/jHeazAvU/w==
X-CSE-MsgGUID: r2JJwkUXTvazrn3ietjfDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,149,1712646000"; d="scan'208";a="34225035"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 May 2024 18:42:07 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 18:42:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 18:42:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 9 May 2024 18:42:05 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 9 May 2024 18:42:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mg8dvusVDI3SPqBLHDO42UHXbMqXSbZOEvFTVlg8WmzEoe8SujX11qdIRSm2NYJnCfpmIMUzTgLRCimr+LONRytgAAMQB8o5G6URQPk2IkTLJPPtP/M0lw5tHK/PG6mfm0iJ5au7OFgMVitYAtUrENWK98zUYfsEq8fB6pg185OYBNr8en2cSBSIurumR/9Pf7k9LMyOk1UOGtLY0G2YTXr7qgodqKaKt+FG2HdQRLrN+SPPMlUhyiaXeMBf0ki7xdXkpmgUV8cUSXVjDqqf1nD68REWp7K51MNn1oFEagAWQnMqCbEFnCi5u3KYN8FSvc5Tm/LVOx/QtOIMWmVT0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mNlrPUdaKKdzzCxI2wjfCQamfUPOOvW5VWBBxRZSxzs=;
 b=KgCj2LU3UinCLSCW6pmlQp/thdT8MVHz6SAV9e54DccdfiM6ufhD2224gHm07fJaB/xYjGKiD8DRYCQh7JEsDTrdYnqcJD3HbofOhWjhcsF2qZf1K+chHTOfR7xiY+H97Ly+Q19BvQLZ8ac7P+A9sZnui0t6n4POloUdWwfKGsQh0N0TCUz1RK1H8QHUXsRvSySVgq9/GmNAUBFNnHUVQaLOX03cvH7VLl7Dh2Z6DIkomk0RZci6XSYiQ0/gw+0DYflLIPq7+ybGlk7riza8pA/p4PsAS6ploJrnZpJHNLoWeKBWuRlh87aYn6NPP8wWw31oOmfIoh0lTJBzhSFiDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB6651.namprd11.prod.outlook.com (2603:10b6:510:1a9::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.47; Fri, 10 May
 2024 01:41:58 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7544.047; Fri, 10 May 2024
 01:41:58 +0000
Date: Thu, 9 May 2024 21:41:53 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v4 1/4] drm/xe: Remove safety check from
 __xe_ttm_stolen_io_mem_reserve_stolen
Message-ID: <Zj17YXyU3L0pV3qY@intel.com>
References: <20240506103604.146146-1-maarten.lankhorst@linux.intel.com>
 <20240506103604.146146-2-maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240506103604.146146-2-maarten.lankhorst@linux.intel.com>
X-ClientProxiedBy: MW4PR04CA0218.namprd04.prod.outlook.com
 (2603:10b6:303:87::13) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB6651:EE_
X-MS-Office365-Filtering-Correlation-Id: df8b6774-1f8b-4257-260a-08dc70926148
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?5VGbbQ5H1W71+BN3rC+Yy04hwgB6ws4DQIBlPJ80f6GHM54Pql7mJLx5JBFC?=
 =?us-ascii?Q?W0o7uzwiZSfWFEefhlDfxnnjXRXau2Q3afu4fiZ/oQNXawVc/mVXG9OYcRZV?=
 =?us-ascii?Q?1WyI3v8fb4MOUtyRKafEGDY7GEp/794e+rM/9b4BWVsja3MoenY6oZ8L/ETy?=
 =?us-ascii?Q?fIIzx2taa+MMv19Vue/3IoPr97yyZas1IMEMTCDjWC6/hrzcHTYXAXg8YETf?=
 =?us-ascii?Q?hHeKj7Yqglz0QHBbk4GZ0zCL2Bn13rStrxLNRE7OS0m8BF7crIjvhN89yhyc?=
 =?us-ascii?Q?h1Pb7fqhGxQXDpsBDSJn+KzvDKjtNwoAV/OgQ7MysFARLGCMJq0rr41LkfRM?=
 =?us-ascii?Q?CH5dLh2lJhnbQgIcnaGlTl21Uec4JbutDKk9HbolnTqaNmFp3ZBnt/6fafTF?=
 =?us-ascii?Q?kpIQBzbehF1WlGkl7zRSFYghUyNvrWQBHkFxSUeOA0+1cAnM/dpmjb7sEgt/?=
 =?us-ascii?Q?8+Qn7s6nV41kOI0ZW+K2GfxUq7ffWvtjOujFSESonPXzUoSC0p0S4Gs9mRHp?=
 =?us-ascii?Q?5O/S7R5PNvuC58ibGt5JbxYQxmri/T5Yr9Y0KK7TVtEK5oIoDiCesmRvG1td?=
 =?us-ascii?Q?4nrOQ/IRREjZhPI7pV73UOzcWStXfPEM6uPNT/MoV/hG3fqW6xFFjRhDi50h?=
 =?us-ascii?Q?PqWNA20ALF2u+/MOfGQaqldbLNOdKb4BSWyNKm+xhSg41cRzMbWXxEHlLKs8?=
 =?us-ascii?Q?XRi/hrSux6lidWLhA99fPCuVH/g6ZcdJK2luaM/0igYwum9g+FlyWHncHV9j?=
 =?us-ascii?Q?GSrBT4faWBiMfH9m9qzYHVQhByV6ThMiGaY8T7W4V92DyopSihhG0n+mXfee?=
 =?us-ascii?Q?Fhqi+YeXOFbHqRZw69L01BHnwpErvpZQ4J9MGaNy/u3xgpRrQCirS5dGgZ4P?=
 =?us-ascii?Q?2wl86JPwNqPHF7PFu6oaSLqcRAcTM7v64b9XOWKQi+9AjqUDVGL0srrJOLPx?=
 =?us-ascii?Q?6RrTTmsZxx8BLNvjRK9GU+NtdWxfTQqe1RGTC3sQS8OoGAByaxT2tR7Elw41?=
 =?us-ascii?Q?qkHLgJnAERCJAFKT1wLn5k2abnei2i/ReESOtet6vPi6c7P7NR8rO8H7j+B9?=
 =?us-ascii?Q?ytrIdf2VyorNsoDEov1H/ANGO0OVMn+L/FoSpC1ltu6RSI7NoHUjU6qGQPQS?=
 =?us-ascii?Q?OjIs6S0fUi8rp7EiO5MnG7K7/xMdw+l9gy562NBp33qxuTa/woFkFnBfuAr2?=
 =?us-ascii?Q?JEdL9pbFJCBnIDrab2sz1tiHG7k3pjFHvLSf24CdqA14hnVTlJI1pTm9hL/r?=
 =?us-ascii?Q?KGMPwmOSxvQ0SiaCa+CrfYRF4cNBjWS5FqPdZqlwrw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TVoXcA0z+xubJQOPILd/QDvEQIUSPKX7Z2LUD4xLmjTgW6W+xxhMiLIOEP2v?=
 =?us-ascii?Q?K75yqHOJiLhDVJWTmvP/m8B94rd/2BLuHNo1A9yDTqthtDX3MShYodeduxTZ?=
 =?us-ascii?Q?q/ujxsb8ClSGXCcI7pEffAIS0tz37HoKqMh7YDqEt70ua06arbvQ5SJCtNz0?=
 =?us-ascii?Q?Y5qjU7/nJzqKk/t159ZVEAPPo4XfVV5zvjzAdX3lq7z3ASceh+yyVOAOPOPO?=
 =?us-ascii?Q?5CDhJWP1fsmTkWqTC3MS99x327JubCAKU/t+LfUErYO0vw0t8xirFI4py10C?=
 =?us-ascii?Q?qeTEgFY93aRPWndBkSH2Zqr6oUkfrEIkXVeH30r1WzXY4grEDYIjSKGqhNqf?=
 =?us-ascii?Q?Zh1OhyFSKIYS1cK00D0G8WJ4G+k2etalvkVZt1CWmvJpC0dd1RdOOtx59bFV?=
 =?us-ascii?Q?CmRL6tC/aClpwupA3liExfaUSD5po5FS3ex1q3iExI3YATNzTbe6AWljYtKk?=
 =?us-ascii?Q?fJeTsbxSSZdUTSbWE12BPsgjfulZZ+EeODrjjHKM9Sp7lQ8fXWiYHyi1v72s?=
 =?us-ascii?Q?QJpn2zQ4KbQ0bAhR5Z3xs2vSAUPVUGr+G3aqYNj07vgdXoy0yZCZZNvutOuL?=
 =?us-ascii?Q?CL4qQYiQqbKW17CR41DAB3wRB5cOpfKU6sbDbawonxqTkP1vvrgYMUu/eQ2L?=
 =?us-ascii?Q?t9GDPZTsy3m2tPokAqIGjML0MupwvYNPWmZ9/bo49MBbg7IzbUNWeLvcrJ+B?=
 =?us-ascii?Q?/4h5TRlEAUtftOvMlRVaRlmBlzRjIHq+5XIrjMD8BRfNSDa6JVFzYFKMobJu?=
 =?us-ascii?Q?VKzu+TA9F7dljoT3YpCpxN4/fc+wB8nRGy5TUsvEuzC3oZ5SZ3i0wQQKFiZM?=
 =?us-ascii?Q?3E7MnSRR6eE3bDmwZH7EPhVQxboWDZnShTAWKOIp0IMTWsb8yspaohXgz1GF?=
 =?us-ascii?Q?1a8/4/duvX2+9xdGL5YjPvIx4YwDAiYJdUvlYAtXL6igksdB1gFlFLMuSp5D?=
 =?us-ascii?Q?5P8vCe30ElezN5TfRCvDIjTq0ST6POXtK4Mr4zl/Buwa0+nfgtolUjjvHvCm?=
 =?us-ascii?Q?2fws81isIgxJp62QmIJ6u4U3v9IwTTh1jVsc0JKM99Nby5rfxc7oOLfQn2NF?=
 =?us-ascii?Q?YH2wxnZVRlk7j9tgXVucrF4Jola6oJ8Gj7eH+jTYcLL/8nyyEqjqaXdETXqB?=
 =?us-ascii?Q?x4thU4kCkpeIZniB7f13WRnLUf+ObkfbJ70BLdcChLBEK8l/3C7Uux4+/0sE?=
 =?us-ascii?Q?HiYq/nNN3rgvaUYfjm0OsE78+G1FtaJBAsPzyG+qIdTCII1nI0ksJshW3pf1?=
 =?us-ascii?Q?PjLonLPZtEOIeC2qKBfAecpMMOXUbTQKrkCC9WQf32krXvX3hHO7fNVWtk8r?=
 =?us-ascii?Q?e/qg+QfLPFtfR3q32fYmcWNw/mxnK5Cotzf8vIVWSWD26lbvERnuRYRtNrCV?=
 =?us-ascii?Q?yT4Iw8c9iBTrlJ2mJG5U18HkXBg4/4IVMctvC8rFaZbdheOK3PciofKPSCOd?=
 =?us-ascii?Q?8ga9/mO8lM4v3BjtktsgnQ/1yc0Gm51+ciwHxbRsr04Fe8/bw/iZMK2KXjS0?=
 =?us-ascii?Q?touNto7u4iNr7HUdp9GHbmogJkx96ixpGwqVqCI8dhX01IfzkvVMr1TagQHG?=
 =?us-ascii?Q?OgaW3gf1uxe6SrdyaOPFgM3ih7KJaGOxsCND/t9xdkTcCKIVCUDFNJxE/JKj?=
 =?us-ascii?Q?VQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: df8b6774-1f8b-4257-260a-08dc70926148
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2024 01:41:58.2299 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nYy0q/GmKTAhYP0fJjA/0K6ekugeJGx/C3ooI5s+qdx7fiKdfcmamWfPiV8XzESFHRED4bcoCezDU6TT2hPhUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6651
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

On Mon, May 06, 2024 at 12:36:01PM +0200, Maarten Lankhorst wrote:
> This is invalid with display code when reworking DPT pinning.
> The only reason we added it, was because originally all display
> allocations also had the bit set.
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c b/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c
> index f77367329760..1613290b9eda 100644
> --- a/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c
> +++ b/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c
> @@ -298,10 +298,6 @@ static int __xe_ttm_stolen_io_mem_reserve_stolen(struct xe_device *xe,
>  
>  	XE_WARN_ON(IS_DGFX(xe));
>  
> -	/* XXX: Require BO to be mapped to GGTT? */
> -	if (drm_WARN_ON(&xe->drm, !(bo->flags & XE_BO_FLAG_GGTT)))
> -		return -EIO;
> -
>  	/* GGTT is always contiguously mapped */
>  	mem->bus.offset = xe_bo_ggtt_addr(bo) + mgr->io_base;
>  
> -- 
> 2.43.0
> 
