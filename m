Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0747AA54A6
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Apr 2025 21:24:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F9C210E036;
	Wed, 30 Apr 2025 19:24:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R3dJ+/K3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F302810E036
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Apr 2025 19:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746041078; x=1777577078;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=EJfSNRE4cA1NGvl3UPAqHuK6nO8nzKTf9h3YEEeVB8c=;
 b=R3dJ+/K31ci7pE8TQk0v4BWby3CoKsKRgLeQLLdWsD+38ierOkSyK0K2
 ZVpPXhAzZeVBqScytxr97c2d1ZX6YXRuiSYMqwxOijSXsUNUOtNjINxoi
 xYqJzyvH/q4DY66otmzjJE03c8UWm4KZBPngmYngWiq7SLWj5gb4uXPEw
 5Re3T2hyjfOaCqttT5PdUtDb8/DKC4Tr9BteySnxsiaiMMj6rT4RE68VP
 4wHPEkxgFV13WHfJucZrWIyVsgBEZDe44ZKi3p7Ciom9kY08q+WQ3A8/v
 57iyTtERWhOCIpu4IcR702h/ZYWxsYwAr5Xe8bpL++cfEdEPJz8VqGz30 A==;
X-CSE-ConnectionGUID: pHYADgTxQgS85JrG19632Q==
X-CSE-MsgGUID: 5f942SPtQKWc89U/qWj40g==
X-IronPort-AV: E=McAfee;i="6700,10204,11419"; a="58377018"
X-IronPort-AV: E=Sophos;i="6.15,252,1739865600"; d="scan'208";a="58377018"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 12:24:36 -0700
X-CSE-ConnectionGUID: 6rpTQxoqTduwOdRihqyzDw==
X-CSE-MsgGUID: odwlkgxzTnaowO0YtoT2Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,252,1739865600"; d="scan'208";a="134098739"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 12:24:36 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 30 Apr 2025 12:24:35 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 30 Apr 2025 12:24:35 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 30 Apr 2025 12:24:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UhReg3R/vgDXhRpqpLuwI1rItyIFVyloDWMwsDIRk1A4DiG1xvmehKxOmaGIymvBJfpGswfEeheU99zf6cqUJ1Hd6qOxZ/Lyj1StyMtJQJXDksr0xi3EdT+UE/cI1KhyUz8hU5gkblH+Ekut24jSW6ldOOtDmuC+Kk0TdZ4ee35oTN1cp64joLXASEvby9yXErzkkwrE9F+aaDDntxRfdjFORV+BLXnLybrrC+/dyZ+vQ4t3xtPlomvoHNkNaqF7nQ4+ohWhrnGDIhizrEFu8vrDnBkM0Ho9Ay8LQvhcCe/6AFnBUF4RDStDtnVv3DZ01eC7cu4duqFnPc1uJbE9Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=80dpwzBNGpXJlur5fri0CL/Fce5+9+2RZ9b1FRHrOW8=;
 b=OQxhRHdvUK2vU5FUcnnkN/dlaaMNS2uXz415IMthu0P9czWKHjsoxpwuqHozZc50VjeC8REBBZsoLjvsCpe2LXiIfh6BTddjOdcYQSPKKYz6SmV71CzW1toSEbZPSbaCmY9VqN6+8dMW0GNYYkUTtGcxqX9BgIsb4SXupLcQuN04CuIEjLKMjCiaN/LO8JizdlFHtBhCNyToQu8EWvuvCv8Yr0CxSiJCpy2wTuCDQPsvEX+BCotJuX2nROkLv4dzRjVJgLoGKkfvNGHJDK/zFbTYjTse6aXbg/81/vsYiQVRHF1bJk4S7pdpKyjHgI6rdNQEnHOotVMzlKOD0EXQww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ0PR11MB5199.namprd11.prod.outlook.com (2603:10b6:a03:2dd::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.19; Wed, 30 Apr
 2025 19:24:03 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8699.019; Wed, 30 Apr 2025
 19:24:03 +0000
Date: Wed, 30 Apr 2025 22:24:08 +0300
From: Imre Deak <imre.deak@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyTIGk5MTUuQ0kuRnVsbDogc3Vj?= =?utf-8?Q?cess?= for
 Rework/Correction on minimum hblank calculation (rev8)
Message-ID: <aBJ42BcAPX1xS_O3@ideak-desk.fi.intel.com>
References: <20250424-hblank-v7-0-8b002f1506cc@intel.com>
 <174591448212.23453.3472226114006410439@c664b1dc75d1>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <174591448212.23453.3472226114006410439@c664b1dc75d1>
X-ClientProxiedBy: DB7PR05CA0068.eurprd05.prod.outlook.com
 (2603:10a6:10:2e::45) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ0PR11MB5199:EE_
X-MS-Office365-Filtering-Correlation-Id: cb27919e-0183-47e7-d1b3-08dd881c90da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?KQXcuZKtof6M8GSPZ0jLsn/+gYYWWb/lSzxzgTDOUTjnadn5meUDGBKRYD0x?=
 =?us-ascii?Q?66p7hxop3XT11p0ObdMs9gBeuvPyJ/2sD1ab+4lwZmrVCGiAgJaQ/TBF6rFK?=
 =?us-ascii?Q?3xmWuUmxyRgYZs9TIxDCZ/TPfs19ngni14pdNyes3RO/VU54RMJ2PUbvxyPQ?=
 =?us-ascii?Q?qnlX7ylZqzH9JGvDcyts8hoTbPKCnKdQ0iLENS3qb4KZLuHRL92Jx9SWY4c6?=
 =?us-ascii?Q?n6URy20RDw7bkd7J9J+/V9aDhgEEi00/zSnYxhl4ir7i6DNK2L7pziUzfAIv?=
 =?us-ascii?Q?j5IJBtMrNZpIfmRMlleh89D/BrChL/CIVDlY5mzKfFCfjxrgU/BRUv4wOnno?=
 =?us-ascii?Q?Gg/6RXTD8q8G8zfcTGcRNlO+Qbhi3VIyaOvN4DZxi94aw9R3v6x00JZKpAgr?=
 =?us-ascii?Q?9OKfokcnKtbev52qJYlyUKaq8IN8+9/vJw3roMFgK9OjCo1IF5r58Q2ARW4u?=
 =?us-ascii?Q?W6ti4SaOTWru2sIDWpiPH54iJJijuBs/lRQwVyCIa1lPgFt6Gz3jjHmQ/Vua?=
 =?us-ascii?Q?SrTyLeOmWp9Fem0bU3Dbn/VnA68aY7p6YlMtMbfEJnrB7vGZVd1oxlvWd04/?=
 =?us-ascii?Q?7zRIjmofv2JjBH3PNGDsxf3cuW3rUBDFouqUTr9bql5ECU7r2HgtBmjmzttO?=
 =?us-ascii?Q?5T5uSpr++wfqEsTmckGl2sw+lBET5uElgWTMuDn3/kQKIRy/BjBpfXp+DNXV?=
 =?us-ascii?Q?emiVU78Kr8tPsSLfiw3NlxKPjTOjs1ykF+Gz3VwtsGuAm3ZaF7dHjKNdAiTr?=
 =?us-ascii?Q?3ziRcJbTzg9p84iBg3kgCxPP3HAO+o0F1SkmIKJfXb8YFEfSr/vKehovi/4T?=
 =?us-ascii?Q?pKIBl5vuT2iF5dFPYsYWVoR35ER7lwzGvdZ0RSyOOP597fsTtgpfBKQf+nTD?=
 =?us-ascii?Q?0GLaKXiZGCC2WUOecvM10RJVJrBGVZlsyZuxmsnzlJ6EGPmMG9ZWIB12bUrY?=
 =?us-ascii?Q?+CXTFRQhOKyoiD+xVAlWU8QVe0byYFokVYOoq+RavnD7PpOWK0DkCkSxHnUr?=
 =?us-ascii?Q?gF3d6wp4Y9RzqYYPkg0YDORshOuNhJwKhoL29NNtmQhhi6LcomjvJ2ubaAQ3?=
 =?us-ascii?Q?B2RsBTalGDZQVojk70Dkop0U62Q/BStAt6ds0q+QaQAkJTc1zLiDz7CYD8aL?=
 =?us-ascii?Q?Hv9WxJUFyk6nJI2xIjKb+NrwcLEeXQ50e586euogmg7rnhQ0SHEEgc6xk04r?=
 =?us-ascii?Q?pDDs9mkuTETHEub5AN/22WOi4MCyKuDghEW0PqYEG/dQJ/IpEdpi4fdajM/g?=
 =?us-ascii?Q?DvOq3mZkGHQAcI6drPQiQ7wwjqml0EWKwTgI06sIT09gqSCkhcaM4KpbSoAc?=
 =?us-ascii?Q?Q6HO+6u1h42NZUYdP4t2sQek9yj3N53vx3vwUoUviTm09jfpKPSkQsdloh/6?=
 =?us-ascii?Q?11d2L5I=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OGfNzm/etSpv8yWWW2uMXL0KptxF8ZsvGMGni6Z+zDDMsweQf1BTj3JdSMEx?=
 =?us-ascii?Q?D3eEtCaFHTP5ElZsxxAQiOfQCah2EvG7Gd9TysnlkINdfENIj+G+GvIIyer2?=
 =?us-ascii?Q?+jRki/KjR5QowoTqL0HItXMhdQ2R9BfjVecWNwPyBhNMRZjKhtlaDU1WHqqw?=
 =?us-ascii?Q?AR/i7acsgFdpQ5o7pHsQ1BT1853G7ZyjMhiwTnBb8oEeQuySgC/d6EGUC35T?=
 =?us-ascii?Q?M/iL8MXtiPwmaExfpg3b8RNMChYrgOwOY2oLKnsG0dOp74M54KvKCvjaOzmI?=
 =?us-ascii?Q?3l0n2nNeZDSuCOmxZj7IxGOFgdEwg0zrQaX890kxcg3EADFIgRjF0muTKYPQ?=
 =?us-ascii?Q?s4Gkh9kGUdzJ1IaioBvK+SiElsLj2BV/Z6a4y3HDZsnyh0IH9Fb2KyPRSJPp?=
 =?us-ascii?Q?BBQtlWbXEUX0JZqWq22QrZBRMrzd5JZTkV1hWsClG4FqqsO7P1Cz2MsJ2sve?=
 =?us-ascii?Q?qM6sY2lesAWcG3Dc/cUEvBzYSdz5c0jwI2XXko7Uqa32b7XTacYuCh16fIaa?=
 =?us-ascii?Q?ugH76fPk0mEkIemMswm+Y8YLnLwkoHozN39ApV3euh4a90UPxS+dPrmDmG5u?=
 =?us-ascii?Q?mxOY61mhwO8/96nrvWoZjXecE8kwD762KBRn1JNq74EYTOj8bFBBRJSJnao7?=
 =?us-ascii?Q?H9htk5wW84FqHX1MvH6qusdW6oYnHVyiTHe3kjFv3T6IL8hxuI9QgrXqDhSU?=
 =?us-ascii?Q?gEXX/dh7+daJ/TO5AXHN1M6nbdkOO2KgWFBFQped2M122zjQkVXx7Ofjm2o/?=
 =?us-ascii?Q?VfAr1W05eBDVP/dcuS+B84sH6p3CudlCr5dX5gupNQHi5BL3SKkBSuiQ+f3g?=
 =?us-ascii?Q?in1pj6lGNO51Q3TNaXOMtAGgxcw4O1J1Nc3Gx6KJJccfe9UDN4kxu28ilq1w?=
 =?us-ascii?Q?hj//0H25dqmieC/M+Jtnukd9dK1oNc6Q2F5RAVjJH+xPxM9V32Hmd9/cR6Ha?=
 =?us-ascii?Q?ydQyx/8x+9TBrDzHJZHkjDv9D0W1vc6ZfF5Ghw1Wup5VxwMPphbby8PKXtqW?=
 =?us-ascii?Q?OZAoKxdVXvO35IvB7/8xmNKI8+xNCyQ2lrF4Q90/ErQcpdR3E4Rx54VoHkYM?=
 =?us-ascii?Q?O4du+pT7PZWnW4Efm1DoB91nPUWZUjPmDpov3h0dh/eEMt9H7MDRiOKf2jjA?=
 =?us-ascii?Q?TSiNy6Ja86+afWqrqJF1zJdcYaOBarWHsfEtRsTzphku4lwkHQ4HxUXvvt+n?=
 =?us-ascii?Q?opHboJ8WHJYovKpG9CMLd3Ar7OhDFXWOb+QJlTs/cawcxsdE5djwowAThA1X?=
 =?us-ascii?Q?sAZHCUvRhsl6z15TkGrhHrO4jyp//1RuN/2P2rhHt2XfHCHUQ8UlOQHrC4JK?=
 =?us-ascii?Q?D3WnVkAPRYe1O2JhoiKejEVn8+gjC/u5ykY1omxAlkk9q/Tz8IVaN8Uov1em?=
 =?us-ascii?Q?786naSxzzONqmS9faelyVSrWzwWUZVOJeSSU7Lmw7At6ytgILzXyQewIBLEL?=
 =?us-ascii?Q?AsG1UtnguD4A3KxxlkUEXi3zFsdtxPd7XXjIYkBK9HjF4Cce3GHtEdIQiC3p?=
 =?us-ascii?Q?1BQCkHdvobJ387CVb9CPQvt4Q2O6JzWmeM0NHTSCN9f8TtUasWctVGu8tEEX?=
 =?us-ascii?Q?5dFMVFengaHn5pG/6NqZ38bDr/mnrU/m+bIZRP2O?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cb27919e-0183-47e7-d1b3-08dd881c90da
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2025 19:24:03.4017 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lOmCOByaUDkXRNcbq0Wd7MeBjaW4a/h4T69nkpLM0YRT156LQocgBXTQF75i9fzfJM/zfGUEY80XSFOoOjYnVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5199
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

On Tue, Apr 29, 2025 at 08:14:42AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Rework/Correction on minimum hblank calculation (rev8)
> URL   : https://patchwork.freedesktop.org/series/147361/
> State : success

Patches pushed to drm-intel-next, thanks for the patches, review and
ack.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16467_full -> Patchwork_147361v8_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_147361v8_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@crc32:
>     - shard-rkl:          NOTRUN -> [SKIP][1] ([i915#6230])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@api_intel_bb@crc32.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-mtlp:         NOTRUN -> [SKIP][2] ([i915#7697])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-5/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_busy@semaphore:
>     - shard-dg2:          NOTRUN -> [SKIP][3] ([i915#3936])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@gem_busy@semaphore.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-rkl:          NOTRUN -> [SKIP][4] ([i915#7697])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-3/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_ctx_isolation@preservation-s3:
>     - shard-dg1:          [PASS][5] -> [DMESG-WARN][6] ([i915#4423]) +3 other tests dmesg-warn
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-dg1-13/igt@gem_ctx_isolation@preservation-s3.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg1-18/igt@gem_ctx_isolation@preservation-s3.html
> 
>   * igt@gem_eio@reset-stress:
>     - shard-mtlp:         [PASS][7] -> [ABORT][8] ([i915#13193] / [i915#13723]) +4 other tests abort
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-mtlp-6/igt@gem_eio@reset-stress.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-7/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_exec_balancer@bonded-pair:
>     - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#4771])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-11/igt@gem_exec_balancer@bonded-pair.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-rkl:          NOTRUN -> [SKIP][10] ([i915#4525])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-3/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_capture@capture@vecs0-lmem0:
>     - shard-dg2-9:        NOTRUN -> [FAIL][11] ([i915#11965]) +4 other tests fail
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@gem_exec_capture@capture@vecs0-lmem0.html
> 
>   * igt@gem_exec_endless@dispatch@vcs0:
>     - shard-dg2:          [PASS][12] -> [TIMEOUT][13] ([i915#3778] / [i915#7016]) +1 other test timeout
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-dg2-2/igt@gem_exec_endless@dispatch@vcs0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-1/igt@gem_exec_endless@dispatch@vcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-mtlp:         NOTRUN -> [SKIP][14] ([i915#3711])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-4/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-uc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][15] ([i915#3539] / [i915#4852])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
> 
>   * igt@gem_exec_flush@basic-uc-rw-default:
>     - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#3539] / [i915#4852])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-11/igt@gem_exec_flush@basic-uc-rw-default.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>     - shard-dg2:          NOTRUN -> [SKIP][17] ([i915#3281]) +3 other tests skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-scanout:
>     - shard-rkl:          NOTRUN -> [SKIP][18] ([i915#3281]) +10 other tests skip
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@gem_exec_reloc@basic-scanout.html
> 
>   * igt@gem_exec_reloc@basic-wc-read-active:
>     - shard-dg2-9:        NOTRUN -> [SKIP][19] ([i915#3281])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@gem_exec_reloc@basic-wc-read-active.html
> 
>   * igt@gem_exec_reloc@basic-write-cpu-active:
>     - shard-mtlp:         NOTRUN -> [SKIP][20] ([i915#3281])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-5/igt@gem_exec_reloc@basic-write-cpu-active.html
> 
>   * igt@gem_exec_schedule@preempt-queue:
>     - shard-mtlp:         NOTRUN -> [SKIP][21] ([i915#4537] / [i915#4812])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-5/igt@gem_exec_schedule@preempt-queue.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-x:
>     - shard-mtlp:         NOTRUN -> [SKIP][22] ([i915#4860])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-5/igt@gem_fence_thrash@bo-write-verify-x.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-rkl:          NOTRUN -> [SKIP][23] ([i915#4613]) +2 other tests skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_media_fill@media-fill:
>     - shard-mtlp:         NOTRUN -> [SKIP][24] ([i915#8289])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-5/igt@gem_media_fill@media-fill.html
> 
>   * igt@gem_mmap_gtt@basic-write:
>     - shard-mtlp:         NOTRUN -> [SKIP][25] ([i915#4077])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-5/igt@gem_mmap_gtt@basic-write.html
> 
>   * igt@gem_mmap_gtt@pf-nonblock:
>     - shard-dg2-9:        NOTRUN -> [SKIP][26] ([i915#4077]) +4 other tests skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@gem_mmap_gtt@pf-nonblock.html
> 
>   * igt@gem_mmap_gtt@zero-extend:
>     - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#4077]) +2 other tests skip
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-11/igt@gem_mmap_gtt@zero-extend.html
> 
>   * igt@gem_mmap_wc@pf-nonblock:
>     - shard-mtlp:         NOTRUN -> [SKIP][28] ([i915#4083])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-4/igt@gem_mmap_wc@pf-nonblock.html
> 
>   * igt@gem_mmap_wc@set-cache-level:
>     - shard-dg2-9:        NOTRUN -> [SKIP][29] ([i915#4083])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@gem_mmap_wc@set-cache-level.html
> 
>   * igt@gem_mmap_wc@write:
>     - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#4083])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-11/igt@gem_mmap_wc@write.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-mtlp:         NOTRUN -> [SKIP][31] ([i915#3282]) +1 other test skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-dg2-9:        NOTRUN -> [SKIP][32] ([i915#3282])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pwrite@basic-random:
>     - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#3282])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@gem_pwrite@basic-random.html
> 
>   * igt@gem_pwrite@basic-self:
>     - shard-rkl:          NOTRUN -> [SKIP][34] ([i915#3282]) +5 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-3/igt@gem_pwrite@basic-self.html
> 
>   * igt@gem_pxp@create-valid-protected-context:
>     - shard-dg2-9:        NOTRUN -> [SKIP][35] ([i915#4270]) +1 other test skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@gem_pxp@create-valid-protected-context.html
> 
>   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][36] ([i915#12964])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-3/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-context:
>     - shard-mtlp:         NOTRUN -> [SKIP][37] ([i915#13398])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-5/igt@gem_pxp@hw-rejects-pxp-context.html
> 
>   * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>     - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#4270])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-11/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
>     - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#4270])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
> 
>   * igt@gem_render_copy@linear-to-vebox-y-tiled:
>     - shard-dg2-9:        NOTRUN -> [SKIP][40] ([i915#5190] / [i915#8428])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@gem_render_copy@linear-to-vebox-y-tiled.html
> 
>   * igt@gem_render_copy@x-tiled-to-vebox-y-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#5190] / [i915#8428])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@gem_render_copy@x-tiled-to-vebox-y-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-dg2-9:        NOTRUN -> [SKIP][42] ([i915#4079]) +1 other test skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-rkl:          NOTRUN -> [SKIP][43] ([i915#3297] / [i915#3323])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-dg2-9:        NOTRUN -> [SKIP][44] ([i915#3282] / [i915#3297])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
>     - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#3297] / [i915#4880])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
> 
>   * igt@gem_userptr_blits@relocations:
>     - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#3281] / [i915#3297])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@gem_userptr_blits@relocations.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#3297])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-5/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - shard-rkl:          NOTRUN -> [SKIP][48] ([i915#2527]) +2 other tests skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@gen9_exec_parse@batch-invalid-length.html
> 
>   * igt@gen9_exec_parse@bb-large:
>     - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#2856]) +1 other test skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-7/igt@gen9_exec_parse@bb-large.html
> 
>   * igt@gen9_exec_parse@bb-start-param:
>     - shard-dg2-9:        NOTRUN -> [SKIP][50] ([i915#2856]) +1 other test skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@gen9_exec_parse@bb-start-param.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-mtlp:         NOTRUN -> [SKIP][51] ([i915#2856])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-4/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg2:          [PASS][52] -> [DMESG-WARN][53] ([i915#13447])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-8/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#6412])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-3/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_freq_api@freq-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#8399]) +2 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@i915_pm_freq_api@freq-suspend.html
> 
>   * igt@i915_pm_freq_api@freq-suspend@gt0:
>     - shard-dg2:          [PASS][56] -> [INCOMPLETE][57] ([i915#12455] / [i915#13820]) +1 other test incomplete
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-dg2-4/igt@i915_pm_freq_api@freq-suspend@gt0.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-4/igt@i915_pm_freq_api@freq-suspend@gt0.html
> 
>   * igt@i915_pm_rps@thresholds-idle:
>     - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#11681])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@i915_pm_rps@thresholds-idle.html
> 
>   * igt@i915_power@sanity:
>     - shard-mtlp:         [PASS][59] -> [SKIP][60] ([i915#7984])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-mtlp-4/igt@i915_power@sanity.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-8/igt@i915_power@sanity.html
> 
>   * igt@i915_query@query-topology-coherent-slice-mask:
>     - shard-dg2-9:        NOTRUN -> [SKIP][61] ([i915#6188])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@i915_query@query-topology-coherent-slice-mask.html
> 
>   * igt@i915_selftest@mock@memory_region:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][62] ([i915#9311]) +1 other test dmesg-warn
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@i915_selftest@mock@memory_region.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-mtlp:         NOTRUN -> [SKIP][63] ([i915#6645])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-4/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][64] ([i915#4212])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#8709]) +15 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-8/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs.html
> 
>   * igt@kms_async_flips@invalid-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#12967] / [i915#6228])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@kms_async_flips@invalid-async-flip.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#1769] / [i915#3555])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-toggle-modeset-transition:
>     - shard-dg2:          [PASS][68] -> [FAIL][69] ([i915#5956])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-dg2-2/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-8/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
> 
>   * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [FAIL][70] ([i915#5956])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-8/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#5286]) +5 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-90:
>     - shard-dg2-9:        NOTRUN -> [SKIP][72] +3 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_big_fb@linear-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#3638])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-3/igt@kms_big_fb@linear-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>     - shard-dg2-9:        NOTRUN -> [SKIP][74] ([i915#4538] / [i915#5190]) +4 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
>     - shard-dg2-9:        NOTRUN -> [SKIP][75] ([i915#5190])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#4538] / [i915#5190]) +2 other tests skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][77] +22 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-3/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
>     - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#5190])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
> 
>   * igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-c-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#10307] / [i915#6095]) +132 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-11/igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-c-dp-3.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#14098] / [i915#6095]) +23 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][81] ([i915#10307] / [i915#6095]) +29 other tests skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#12313])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#12805])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-d-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#6095]) +19 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-11/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-d-dp-3.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][85] ([i915#12313])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#6095]) +15 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][87] ([i915#6095]) +143 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-mtlp:         NOTRUN -> [SKIP][88] ([i915#13781]) +4 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-4/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#13784])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#13781]) +3 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-2/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_chamelium_color@ctm-green-to-red:
>     - shard-dg2:          NOTRUN -> [SKIP][91] +4 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@kms_chamelium_color@ctm-green-to-red.html
> 
>   * igt@kms_chamelium_color@ctm-negative:
>     - shard-mtlp:         NOTRUN -> [SKIP][92] +6 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-5/igt@kms_chamelium_color@ctm-negative.html
> 
>   * igt@kms_chamelium_frames@dp-crc-fast:
>     - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#11151] / [i915#7828]) +6 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@kms_chamelium_frames@dp-crc-fast.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-fast:
>     - shard-dg2-9:        NOTRUN -> [SKIP][94] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_chamelium_frames@hdmi-crc-fast.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-storm:
>     - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@kms_chamelium_hpd@dp-hpd-storm.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
>     - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#11151] / [i915#7828]) +1 other test skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-5/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#7118] / [i915#9424])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-7/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#3116])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#3299])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@lic-type-0@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [FAIL][100] ([i915#7173])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-11/igt@kms_content_protection@lic-type-0@pipe-a-dp-3.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#6944] / [i915#9424])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-5/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#9424])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#7118] / [i915#9424])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-3/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x170:
>     - shard-dg2-9:        NOTRUN -> [SKIP][104] ([i915#13049]) +2 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_cursor_crc@cursor-offscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x512:
>     - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#13049])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@kms_cursor_crc@cursor-offscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-256x256:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][106] ([i915#12964]) +2 other tests dmesg-warn
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-3/igt@kms_cursor_crc@cursor-sliding-256x256.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][107] ([i915#13566]) +1 other test fail
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#3555]) +5 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x512:
>     - shard-mtlp:         NOTRUN -> [SKIP][109] ([i915#13049])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-4/igt@kms_cursor_crc@cursor-sliding-512x512.html
> 
>   * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
>     - shard-dg2-9:        NOTRUN -> [SKIP][110] ([i915#13046] / [i915#5354]) +2 other tests skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-dg2-9:        NOTRUN -> [SKIP][111] ([i915#4103] / [i915#4213])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#4103] / [i915#4213])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#13046] / [i915#5354])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#9723])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-3/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
>     - shard-dg2:          [PASS][115] -> [SKIP][116] ([i915#3555])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
> 
>   * igt@kms_dp_link_training@non-uhbr-mst:
>     - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#13749])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@kms_dp_link_training@non-uhbr-mst.html
> 
>   * igt@kms_dp_link_training@non-uhbr-sst:
>     - shard-dg2-9:        NOTRUN -> [SKIP][118] ([i915#13749])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_dp_link_training@non-uhbr-sst.html
> 
>   * igt@kms_dp_link_training@uhbr-mst:
>     - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#13748])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@kms_dp_link_training@uhbr-mst.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#8812])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-dg2-9:        NOTRUN -> [SKIP][121] ([i915#3555] / [i915#3840])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-out-visible-area:
>     - shard-dg2-9:        NOTRUN -> [SKIP][122] ([i915#13798])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-out-visible-area.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#4854])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-3/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#658])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-11/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_fence_pin_leak:
>     - shard-mtlp:         NOTRUN -> [SKIP][125] ([i915#4881])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-5/igt@kms_fence_pin_leak.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:
>     - shard-snb:          [PASS][126] -> [TIMEOUT][127] ([i915#14033]) +1 other test timeout
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-snb7/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-snb6/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
>     - shard-dg2-9:        NOTRUN -> [SKIP][128] ([i915#9934]) +3 other tests skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#9934]) +7 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-3/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate:
>     - shard-snb:          [PASS][130] -> [FAIL][131] ([i915#13734]) +1 other test fail
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-snb5/igt@kms_flip@2x-plain-flip-fb-recreate.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-snb7/igt@kms_flip@2x-plain-flip-fb-recreate.html
> 
>   * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
>     - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#9934]) +2 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank:
>     - shard-snb:          NOTRUN -> [INCOMPLETE][133] ([i915#12314]) +1 other test incomplete
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-snb6/igt@kms_flip@flip-vs-absolute-wf_vblank.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2:
>     - shard-rkl:          NOTRUN -> [FAIL][134] ([i915#13734]) +1 other test fail
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-3/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank:
>     - shard-dg1:          [PASS][135] -> [FAIL][136] ([i915#13734])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-dg1-12/igt@kms_flip@flip-vs-blocking-wf-vblank.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg1-19/igt@kms_flip@flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a4:
>     - shard-dg1:          NOTRUN -> [FAIL][137] ([i915#13734])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg1-19/igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a4.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible:
>     - shard-dg2:          [PASS][138] -> [FAIL][139] ([i915#13027])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-dg2-3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a3:
>     - shard-dg2:          [PASS][140] -> [FAIL][141] ([i915#14155])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-dg2-3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a3.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a3.html
> 
>   * igt@kms_flip@flip-vs-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#8381])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@kms_flip@flip-vs-fences.html
> 
>   * igt@kms_flip@plain-flip-ts-check:
>     - shard-dg2:          [PASS][143] -> [FAIL][144] ([i915#13734])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-dg2-10/igt@kms_flip@plain-flip-ts-check.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-2/igt@kms_flip@plain-flip-ts-check.html
> 
>   * igt@kms_flip@plain-flip-ts-check@c-hdmi-a3:
>     - shard-dg2:          NOTRUN -> [FAIL][145] ([i915#13734]) +2 other tests fail
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-2/igt@kms_flip@plain-flip-ts-check@c-hdmi-a3.html
> 
>   * igt@kms_flip@plain-flip-ts-check@d-edp1:
>     - shard-mtlp:         [PASS][146] -> [FAIL][147] ([i915#13734])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-mtlp-5/igt@kms_flip@plain-flip-ts-check@d-edp1.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-2/igt@kms_flip@plain-flip-ts-check@d-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#2672]) +3 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#2672] / [i915#3555])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#2672]) +2 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
>     - shard-mtlp:         NOTRUN -> [SKIP][151] ([i915#2672] / [i915#3555] / [i915#8813]) +1 other test skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#2672] / [i915#8813]) +1 other test skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][153] ([i915#2672] / [i915#3555] / [i915#5190])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>     - shard-dg2-9:        NOTRUN -> [SKIP][154] ([i915#2672]) +1 other test skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#2672] / [i915#3555]) +3 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][156] ([i915#2672] / [i915#3555])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt:
>     - shard-dg2-9:        NOTRUN -> [FAIL][158] ([i915#6880])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#5354]) +8 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][160] ([i915#3458]) +5 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#3458]) +4 other tests skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][162] ([i915#8708]) +4 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#8708]) +6 other tests skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#10055])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#9766])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-3/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#3023]) +19 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][167] ([i915#8708]) +1 other test skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>     - shard-dg2-9:        NOTRUN -> [SKIP][168] ([i915#5354]) +15 other tests skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#1825]) +37 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-cpu:
>     - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#1825]) +4 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-dg2-9:        NOTRUN -> [SKIP][171] ([i915#3555] / [i915#8228]) +1 other test skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-dg2:          [PASS][172] -> [SKIP][173] ([i915#3555] / [i915#8228])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-dg2-10/igt@kms_hdr@static-toggle-dpms.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-2/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#12388])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#10656])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@kms_joiner@basic-force-ultra-joiner.html
> 
>   * igt@kms_joiner@basic-ultra-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#12339])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@kms_joiner@basic-ultra-joiner.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-dg2-9:        NOTRUN -> [SKIP][177] ([i915#6301])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_pipe_stress@stress-xrgb8888-ytiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][178] ([i915#13705])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-5/igt@kms_pipe_stress@stress-xrgb8888-ytiled.html
> 
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-dg2-9:        NOTRUN -> [SKIP][179] ([i915#3555] / [i915#8821])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_plane_lowres@tiling-yf.html
> 
>   * igt@kms_plane_multiple@2x-tiling-x:
>     - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#13958])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-11/igt@kms_plane_multiple@2x-tiling-x.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-dg2:          [PASS][181] -> [SKIP][182] ([i915#6953] / [i915#9423])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size.html
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-2/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:
>     - shard-dg2-9:        NOTRUN -> [SKIP][183] ([i915#12247] / [i915#9423])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d:
>     - shard-dg2-9:        NOTRUN -> [SKIP][184] ([i915#12247]) +7 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
>     - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#3555]) +3 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
>     - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#12247]) +8 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25:
>     - shard-dg2-9:        NOTRUN -> [SKIP][187] ([i915#12247] / [i915#6953] / [i915#9423])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_plane_scaling@planes-downscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
>     - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#12247] / [i915#6953] / [i915#9423])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a:
>     - shard-dg2:          NOTRUN -> [SKIP][189] ([i915#12247]) +3 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a.html
> 
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#3828])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-3/igt@kms_pm_dc@dc5-retention-flops.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#9519])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#12916])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-mtlp:         NOTRUN -> [SKIP][193] ([i915#6524])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-4/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#11520]) +2 other tests skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#11520]) +6 other tests skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-3/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:
>     - shard-mtlp:         NOTRUN -> [SKIP][196] ([i915#12316]) +2 other tests skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][197] ([i915#9808])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf@pipe-a-edp-1.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
>     - shard-dg2-9:        NOTRUN -> [SKIP][198] ([i915#11520]) +4 other tests skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#9683])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-pr-cursor-render:
>     - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#9688]) +4 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-5/igt@kms_psr@fbc-pr-cursor-render.html
> 
>   * igt@kms_psr@pr-sprite-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#1072] / [i915#9732]) +4 other tests skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@kms_psr@pr-sprite-blt.html
> 
>   * igt@kms_psr@pr-sprite-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][202] ([i915#1072] / [i915#9732]) +20 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-3/igt@kms_psr@pr-sprite-mmap-gtt.html
> 
>   * igt@kms_psr@psr-cursor-mmap-cpu:
>     - shard-dg2-9:        NOTRUN -> [SKIP][203] ([i915#1072] / [i915#9732]) +9 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_psr@psr-cursor-mmap-cpu.html
> 
>   * igt@kms_rotation_crc@exhaust-fences:
>     - shard-dg2-9:        NOTRUN -> [SKIP][204] ([i915#4235])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_rotation_crc@exhaust-fences.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#5289]) +1 other test skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-dg2-9:        NOTRUN -> [SKIP][206] ([i915#12755] / [i915#5190])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
>     - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#12755])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
> 
>   * igt@kms_scaling_modes@scaling-mode-none:
>     - shard-dg2-9:        NOTRUN -> [SKIP][208] ([i915#3555]) +2 other tests skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_scaling_modes@scaling-mode-none.html
> 
>   * igt@kms_setmode@basic@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [FAIL][209] ([i915#5465]) +2 other tests fail
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-5/igt@kms_setmode@basic@pipe-b-edp-1.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#8623])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-11/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
>     - shard-mtlp:         [PASS][211] -> [FAIL][212] ([i915#9196]) +1 other test fail
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-rkl:          NOTRUN -> [SKIP][213] ([i915#3555] / [i915#9906])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@kms_vrr@negative-basic.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-dg2:          NOTRUN -> [SKIP][214] ([i915#9906])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_vrr@seamless-rr-switch-virtual:
>     - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#9906])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@kms_vrr@seamless-rr-switch-virtual.html
> 
>   * igt@kms_writeback@writeback-check-output-xrgb2101010:
>     - shard-dg2-9:        NOTRUN -> [SKIP][216] ([i915#2437] / [i915#9412])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@kms_writeback@writeback-check-output-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-mtlp:         NOTRUN -> [SKIP][217] ([i915#2437])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-5/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@perf@blocking:
>     - shard-mtlp:         NOTRUN -> [FAIL][218] ([i915#10538]) +1 other test fail
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-5/igt@perf@blocking.html
> 
>   * igt@perf_pmu@most-busy-check-all:
>     - shard-dg2:          NOTRUN -> [FAIL][219] ([i915#11943]) +1 other test fail
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-10/igt@perf_pmu@most-busy-check-all.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#8516]) +1 other test skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-3/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@prime_vgem@basic-fence-flip:
>     - shard-dg2-9:        NOTRUN -> [SKIP][221] ([i915#3708])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@prime_vgem@basic-fence-flip.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-rkl:          NOTRUN -> [SKIP][222] ([i915#3291] / [i915#3708])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-8/igt@prime_vgem@basic-write.html
> 
>   * igt@sriov_basic@bind-unbind-vf:
>     - shard-dg2-9:        NOTRUN -> [SKIP][223] ([i915#9917]) +1 other test skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-9/igt@sriov_basic@bind-unbind-vf.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-rkl:          NOTRUN -> [SKIP][224] ([i915#9917]) +1 other test skip
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-rkl-3/igt@sriov_basic@enable-vfs-autoprobe-off.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@api_intel_allocator@two-level-inception-interruptible:
>     - shard-snb:          [INCOMPLETE][225] -> [PASS][226]
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-snb4/igt@api_intel_allocator@two-level-inception-interruptible.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-snb6/igt@api_intel_allocator@two-level-inception-interruptible.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-dg2:          [INCOMPLETE][227] ([i915#13356]) -> [PASS][228]
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-dg2-7/igt@gem_ccs@suspend-resume.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-11/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-smem-lmem0:
>     - shard-dg2:          [INCOMPLETE][229] ([i915#12392] / [i915#13356]) -> [PASS][230]
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-dg2-7/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-smem-lmem0.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-11/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-smem-lmem0.html
> 
>   * igt@i915_hangman@detector@vcs0:
>     - shard-mtlp:         [ABORT][231] ([i915#13193] / [i915#13723]) -> [PASS][232] +1 other test pass
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-mtlp-7/igt@i915_hangman@detector@vcs0.html
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-5/igt@i915_hangman@detector@vcs0.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-64x21:
>     - shard-dg1:          [DMESG-WARN][233] ([i915#4423]) -> [PASS][234] +2 other tests pass
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-dg1-14/igt@kms_cursor_crc@cursor-sliding-64x21.html
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg1-19/igt@kms_cursor_crc@cursor-sliding-64x21.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-dg2:          [SKIP][235] ([i915#1257]) -> [PASS][236]
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-dg2-7/igt@kms_dp_aux_dev.html
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-11/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_flip@plain-flip-ts-check:
>     - shard-snb:          [FAIL][237] ([i915#13734]) -> [PASS][238] +1 other test pass
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-snb1/igt@kms_flip@plain-flip-ts-check.html
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-snb5/igt@kms_flip@plain-flip-ts-check.html
>     - shard-dg1:          [DMESG-FAIL][239] ([i915#4423]) -> [PASS][240]
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-dg1-19/igt@kms_flip@plain-flip-ts-check.html
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg1-17/igt@kms_flip@plain-flip-ts-check.html
> 
>   * igt@kms_flip@plain-flip-ts-check@a-hdmi-a4:
>     - shard-dg1:          [FAIL][241] ([i915#13734] / [i915#4423]) -> [PASS][242]
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-dg1-19/igt@kms_flip@plain-flip-ts-check@a-hdmi-a4.html
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg1-17/igt@kms_flip@plain-flip-ts-check@a-hdmi-a4.html
> 
>   * igt@kms_flip@plain-flip-ts-check@b-hdmi-a4:
>     - shard-dg1:          [FAIL][243] ([i915#13734]) -> [PASS][244] +1 other test pass
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-dg1-19/igt@kms_flip@plain-flip-ts-check@b-hdmi-a4.html
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg1-17/igt@kms_flip@plain-flip-ts-check@b-hdmi-a4.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu:
>     - shard-snb:          [SKIP][245] -> [PASS][246]
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg2:          [SKIP][247] ([i915#3555] / [i915#8228]) -> [PASS][248] +1 other test pass
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-dg2-6/igt@kms_hdr@static-toggle-suspend.html
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-11/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-mtlp:         [INCOMPLETE][249] ([i915#13520]) -> [PASS][250]
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-mtlp-1/igt@perf_pmu@module-unload.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-mtlp-4/igt@perf_pmu@module-unload.html
> 
>   * igt@testdisplay:
>     - shard-snb:          [DMESG-WARN][251] -> [PASS][252]
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-snb5/igt@testdisplay.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-snb7/igt@testdisplay.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-dg2:          [SKIP][253] ([i915#9424]) -> [FAIL][254] ([i915#7173])
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-dg2-7/igt@kms_content_protection@lic-type-0.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-11/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-dg2:          [FAIL][255] ([i915#1339] / [i915#7173]) -> [SKIP][256] ([i915#7118] / [i915#9424])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-dg2-11/igt@kms_content_protection@uevent.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-1/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
>     - shard-dg2:          [SKIP][257] ([i915#10433] / [i915#3458]) -> [SKIP][258] ([i915#3458]) +2 other tests skip
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-pri-indfb-multidraw:
>     - shard-dg1:          [SKIP][259] ([i915#4423]) -> [SKIP][260]
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16467/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-2p-pri-indfb-multidraw.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-2p-pri-indfb-multidraw.html
> 
>   
>   [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#11943]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11943
>   [i915#11965]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11965
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
>   [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
>   [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
>   [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
>   [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
>   [i915#12455]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12455
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12916]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#12967]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12967
>   [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13193]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13193
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#1339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339
>   [i915#13398]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
>   [i915#13447]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13447
>   [i915#13520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13705]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13705
>   [i915#13723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13723
>   [i915#13734]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13734
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
>   [i915#13784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13784
>   [i915#13798]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13798
>   [i915#13820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14155]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14155
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3711]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3711
>   [i915#3778]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3778
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3936]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3936
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5465]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6188]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6188
>   [i915#6228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6228
>   [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6645]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6645
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7016]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7016
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8289
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
>   [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16467 -> Patchwork_147361v8
> 
>   CI-20190529: 20190529
>   CI_DRM_16467: 4dfede9f7f69716060d29d84a1267f893da9dbee @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8340: 9eda33fedff747e846671328a19fa516b5bd7015 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_147361v8: 4dfede9f7f69716060d29d84a1267f893da9dbee @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147361v8/index.html
