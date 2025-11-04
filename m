Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B83C3114C
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 13:54:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7323310E5D9;
	Tue,  4 Nov 2025 12:54:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z7SrHULp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5436610E439;
 Tue,  4 Nov 2025 12:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762260841; x=1793796841;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=/6QaJMFy5+LCFersjXxpmIUyFzg9IK038rZW8KgQ4Go=;
 b=Z7SrHULplt0+U+yipIfOjPyqfYgABm8ugr7WG0qiPtaj1bMtn7teM0Cf
 J7xuhqKDXznVpEY7kaepy2zsg/RxR/si3mSaYExMSou2ANwZ495/hEweb
 ePdS7GHln7c+uDeouC3J0npYnaPSSHol3eJLzSXMgZf2J6BA6hHN8hRGC
 xxzhcSv6LB3pJqCJRYFFlxtL3FJsW3ByK3/JXwJ8lHJ+6ZbaW5d5rpQh3
 6bMUZSeiyZaJO9kX9BcUtP8fE2XPJGufE1aE1gKJFf3KsHkJqFq1gus5p
 cee9XVoBn3nyjOxZtGoUStPYWqmM2bTfPF+vmEm4ticNy8JJ1f+cm7tqi A==;
X-CSE-ConnectionGUID: UKmeKgi6RzC0EX3L9kyGmg==
X-CSE-MsgGUID: TpQzg3MKRhakW1b4ol9Lcw==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="86982390"
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="86982390"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 04:54:00 -0800
X-CSE-ConnectionGUID: fkHik9qST7u2Yk7nfxVbBA==
X-CSE-MsgGUID: 48WHp25VQ4umsu+WdSsawA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="224402009"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 04:53:46 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 04:53:47 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 04:53:47 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.34) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 04:53:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WY/MWiHWbQPUvoZ/NAlMzIKsFnVYp31vCx2wDEJOVCLcWeHKBDr2RQXEp4CMh4J0we1IbaDiymweFUHzN2lYbvrR7Dh76rqWRd2CE8AOfxEX1b52DDiNaHRLtGVp68MzoGlwL7hmk3fbKA/kyFAvj2P6i7LffKGIVGs/2z4Ci5/AvTjyXuYoAAEaP5CTMfroiJAB4e/R3CYYkXgnSYjhxsPdfXR0Fzu2/beVMY5kLxPYZI9/7LvcyeS0hqMHGyhvb9d6Q2FzMCe+/0tNAf6dWbXZJkDiPkmx9yall6mQRck5wUxMIfsJKTZzu1fwkE8+MBuxe0xeTUW82DnSrIjx8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+nmdTNqRdc8TOpgyXeoCx6inufeLVlCHj4v81FQLlYc=;
 b=vNYrz3Cl45kQQQRIYYt3SzTnTHwM6tB5C4k/+1HeoNJ8FCaSZqmz5Re5ySC2KFiPVb6ARYCPCfBYmH7ZOonAN2B2uP0ls4zD17hyF7vay6R3ZCknu1dj0bTFyP6jGf5vCx6xfN6ETsH70/8dCuMdSlpPDnqlonlsMzQLEnzYWkcHXp/Xb8UIEu1A/FkB8XJvl1NI3+FmGIvZg7M6LoN4Nttf89h+4medIeNhdzy6h7ShYOIwVzEkjddvQClldOuMVUEENvYH6tDxdLZlJwD/UTHObhBl31msrw00bIhM8cUVaXxViyVKg20poT4VaOJQLbRbLJmuJkVo0HWeN/PWMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7193.namprd11.prod.outlook.com (2603:10b6:930:91::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Tue, 4 Nov
 2025 12:53:35 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9275.011; Tue, 4 Nov 2025
 12:53:34 +0000
Date: Tue, 4 Nov 2025 14:53:29 +0200
From: Imre Deak <imre.deak@intel.com>
To: Khaled Almahallawy <khaled.almahallawy@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <I915-ci-infra@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?=
 =?utf-8?Q?lure_for_drm=2Fi915=2Fdisplay?= =?utf-8?Q?=3A?= Extend
 i915_display_info with Type-C port details (rev7)
Message-ID: <aQn3SeTdXySki2lb@ideak-desk>
References: <20251027200256.3058319-1-khaled.almahallawy@intel.com>
 <176223040285.14039.2911346354009586174@10055242dc62>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <176223040285.14039.2911346354009586174@10055242dc62>
X-ClientProxiedBy: DUZPR01CA0188.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b6::27) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY8PR11MB7193:EE_
X-MS-Office365-Filtering-Correlation-Id: 4409f07b-eadd-48fd-92f7-08de1ba12a21
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|13003099007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?/aLStABdw+VTIWrTLQey+XfeKn9pJ9kVQXt7iKqm9mVhRHewr+p/XJBvzGYW?=
 =?us-ascii?Q?rm9ygawxoVNJw+AFv3gKltsJrMIkwuYHLQtGpmeFuaCZWw30WNIBdJJaf0kL?=
 =?us-ascii?Q?Rw7iJHnKxx6Tro4lV5ajZ5CgRMVD3S3GJZ+9edZ4lnUcHRWiHm0hqbl8Yfql?=
 =?us-ascii?Q?czX8iNHYHu/3LyFfxRXYTDfBNHeP/HEEWX2YfwtkLDvhyuwoVnqO79K+pJ70?=
 =?us-ascii?Q?a3avx3DB5N15crRPzEej17Mn+StfdgkyoJ9qGAJWV9rzXSMVRnqyG+DubZzZ?=
 =?us-ascii?Q?yBRtxraVgqX1rQGoYSX4IWtkdjI9rh9Eh+afj56ZE8OND4G39CUusCC3vePW?=
 =?us-ascii?Q?XCbjRNUd1t+gtxffEvKAiIBBju+qG5ghsmx9OhGYhVzn00IkP0ByUp2vuVuM?=
 =?us-ascii?Q?WHLxQn8KYtyPs7MLkzpwdNFBw/r71CyJAhRShfwK3OCLMrqtyXBIQGBxdm1D?=
 =?us-ascii?Q?Sv0PRD+JbJpvcSKA7QHHmUvV+dAfjdvENsl/ST7Fhz+gnhNggtdlAI9VMu/J?=
 =?us-ascii?Q?XChhbZPfpGhpd7fPlYgePnzZ9LO5ti74nLH/GFwvJe8AG2J5zVgiGTjr56Ts?=
 =?us-ascii?Q?fWU0h0q05n0Ft/Q9mXTtAyp+v9kgnYPvnlxCtRcpHccVJHUbO6iDV+0ndYdC?=
 =?us-ascii?Q?lqlWhG3sTYBRRHz5rkbkTnFY00+jxhWQQKR2YQFCHtvGF24yuinBGQmjPND7?=
 =?us-ascii?Q?63ZxlVGYdA5jtybaolgQg+BKk21DsZCfxGmUOca9UwG/nI8QrC9M+AAxVOh2?=
 =?us-ascii?Q?PMsJ9acMGtZSZyoPKsB9/C/qDr4Mzwb1Ur4k2t4YP+fCL4M+Jz9Eez23v+9L?=
 =?us-ascii?Q?LL3NvrSC8zuOtMmRx2XBahFODRf4uhnYmsMKCti65trxjQmGMiQXwYI+2CC/?=
 =?us-ascii?Q?qyUjHfyEOsEfeufBr1E2Y/ULExqYGuGjTSSvb2N7K2VKj3Oe2kk2ZoMFqWRR?=
 =?us-ascii?Q?e36/m4JZ9u+Lg8CWSrrhyoHentP/OEFXguf2Gx/hQ1mjMzFJFjheqbYPlN2U?=
 =?us-ascii?Q?i27yKd48e0Kw3l33cJiDUP7MP0Z+7C1AO0tfAvBq47nwlnFN832RqOLgzVP/?=
 =?us-ascii?Q?nV1f109li6G+1aHw+N3QddHUZZbPp1YDj14XCRTVuU0hPv4ul8IhP2BGehJG?=
 =?us-ascii?Q?/LVW9VOHWhNeoJ0UAPZNCwrsNmAjtCM6DphbNn4f1ROqooG5Xq5O39OVI0Dj?=
 =?us-ascii?Q?18+Yo0yJjE/qQkNEfXTcNj96S5NAostAYvH/1EFss1/mWD1BYvgJ0X57rRGi?=
 =?us-ascii?Q?Qgnjib91aI3vqtbx3ZAdHbH8X5Ve+qKQQeqCgDWSsU/py2Oe8LkJ/Xgyn9NS?=
 =?us-ascii?Q?M8h8LNYaIpJnYyZLJGto4e7hKfgLkLpV2DcuCmCt7znTnknMKFHVMemOr1L0?=
 =?us-ascii?Q?7iSqcV4UHh/iGzaDdapovSLOp8an62OYMUh0wwurXAeQJ7Kt7w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(13003099007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iOZRsodA0zrvjE3b+mLcEBNu0O7eSj94OsiSc0UktVpeRwupunowJbctoA6w?=
 =?us-ascii?Q?y/eenrvdZXaoH/imHSaB+bNhM0xv7QVmuDDtGcJNjLZHa9Z2bD2liVd29KX/?=
 =?us-ascii?Q?RbVZOhK91SsumQpAUPaccA3oKpGnkVyG55PqC2Joub2xecaqPvxK/247hZKA?=
 =?us-ascii?Q?rzgcjpkcwVW8vC+qpcgyg3VmUdJjuQbT1pK5r9m0u3JtxSXO+P/uOvyMXy94?=
 =?us-ascii?Q?ES+d7ZMN+1e8dmqSK5zufAHCvUa+XjZwGM9p0j9lifjlHE1XriZJ60XUq+so?=
 =?us-ascii?Q?Hjz0qIkoA1aWSnWJdiZ63dw4o2P6DOqd0gj0cLBGh7raVVO1p423z1D+/cEb?=
 =?us-ascii?Q?zrSAWhxZbJTsn8AjlW/WK61J88iidRrGxHBJOgIOhj3hYici8ZGbWHxPZvIo?=
 =?us-ascii?Q?L38iymvSCMSslFwhdcsHm2P28Y2S7d4UXEA/S9YTYkZy+/Zx++KT86kdh86R?=
 =?us-ascii?Q?c59sYXRDl8OZ/Wo2kaD7liEBl4HzIzH+OBryaDYsa+YlN2olljLUR7GQ34N0?=
 =?us-ascii?Q?aLQmczkMNwFSAIwjs4OHDEfRjGzbNwaiWUXqHdJ4097cRuxyfuGcDfIhSeth?=
 =?us-ascii?Q?RbD/UVanuFymcPuidzUHQGOxnaqPwPPG/eeZ3UqYTUtb3PZsnpGv5++XzwuO?=
 =?us-ascii?Q?TYTz5sJ7Pc9y8to89cYHXx35/0no7IMxADzognw6/UpGNu3+6+OGbMgqnMB4?=
 =?us-ascii?Q?PBMNHbQAl/qV9o09CXlTG4O5+7oOLo43QuGE7rOA0TZkGs9X5ElOArquiOmU?=
 =?us-ascii?Q?11+rlVWoFI4dnLIfr/qTfKpnI737wpFIu97jezqNcGtuyxT15m5nz9F/B4ac?=
 =?us-ascii?Q?6ibQNro4r3V5xdaL4zXBXYyV+qMCdEuOpvcvxwWc+5+jAT24X5yNsxxMuXr5?=
 =?us-ascii?Q?EVxI8dUNXI3qXhssOb6WWWx04pqGrEfns6Dl5W9rztXF7xgcrrKaHj7n8PKh?=
 =?us-ascii?Q?nY2pUrXzRNCN0Dtyzv8Koq5AOROwkv7waGfYPFaKP9VVfH6BUDqNyUugP1kg?=
 =?us-ascii?Q?lTpt2OWwUp7ux6FlFkvsFcT/7WUKmnQAs3e+ka6omecWwOsL1tlwB2jbRgQT?=
 =?us-ascii?Q?AV1TsnnlhJaoKnbrOLAF2TzLW/IrStrrSLDqk6gRvQPkOzr9/p2WrBy4Y/Z3?=
 =?us-ascii?Q?DBSiD2pyvAl8WUN1+431BEYGX4jPZp1dWnS+7Wy3aUv2Y0ErY2/gYST1bxR2?=
 =?us-ascii?Q?4FEQJLPOOrWQP0BH7W09ArgGEtS0hUvAXohTmRfldtHI5gRfaS+10RyKPQ6w?=
 =?us-ascii?Q?RsppA28GYQfGRPF4IFu6qkx+qEzg3KvWnvMKWOjDqDMt3CGzKfq21XTbghH6?=
 =?us-ascii?Q?b2uu7MzahEHTBqepngcQioQZIAPLU3VuM1Kf61UfnGE9D4Rq/NvL0iwWqJpz?=
 =?us-ascii?Q?Uy+5zQVpccN4HrgwKs/Xxfmu079uvCjcGJZEmzWpt378tWfHPXhj8M87+4G4?=
 =?us-ascii?Q?PYqgUq/N3peO3GDghlwh9DRMlRBXkFNH/NwgC7EZpQ0+lZOyRTdk+ZNihR9D?=
 =?us-ascii?Q?O9ZcRCw4ABL1gMdylw/B1oZgGeXzcWM/WzXjJX3FZ6kWIvBZtknixfJtteRL?=
 =?us-ascii?Q?w9UCrI7EIcuwKk8QhRpAuashXpI0F50ofRn+S84yc7ekbIvwnYx/O6vlQdRa?=
 =?us-ascii?Q?QEKnwuPlLPtfFy4HgMgmJPmabYZrMz3Nc5Ap8cr5yowz?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4409f07b-eadd-48fd-92f7-08de1ba12a21
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2025 12:53:34.8820 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9KpkwFeKFhEDFDyWA27cf3rBw4gate/8lkujKKLkpRntScidavTNrQmYCx4Y83OIhn4VMsIbvRoE2zik5yYtkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7193
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

On Tue, Nov 04, 2025 at 04:26:42AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/display: Extend i915_display_info with Type-C port details (rev7)
> URL   : https://patchwork.freedesktop.org/series/155067/
> State : failure

Thanks for the patch, it's pushed to drm-intel-next.

The failure is unrelated see below.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_17475_full -> Patchwork_155067v7_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_155067v7_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_155067v7_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 12)
> ------------------------------
> 
>   Additional (2): shard-snb-0 shard-dg2-set2 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_155067v7_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-dg2:          [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-dg2-1/igt@i915_suspend@sysfs-reader.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-10/igt@i915_suspend@sysfs-reader.html

There is no TypeC encoder on the above host (even though DDI TCx is
used), so the changes in the patch are not related to the failure. It
seems to be some network problem:

This test caused an abort condition: Ping host did not respond to ping, network down

>   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
>     - shard-dg1:          [PASS][3] -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-dg1-14/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-13/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a3:
>     - shard-dg1:          NOTRUN -> [FAIL][5]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-13/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a3.html

None of the above have a TypeC encoder either, so the changes are
unrelated to the failure.

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_155067v7_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@object-reloc-purge-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][6] ([i915#8411])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-11/igt@api_intel_bb@object-reloc-purge-cache.html
> 
>   * igt@fbdev@read:
>     - shard-rkl:          [PASS][7] -> [SKIP][8] ([i915#14544] / [i915#2582])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@fbdev@read.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@fbdev@read.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-rkl:          NOTRUN -> [SKIP][9] ([i915#14544] / [i915#9323])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-tglu-1:       NOTRUN -> [SKIP][10] ([i915#3555] / [i915#9323])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_ccs@ctrl-surf-copy:
>     - shard-rkl:          NOTRUN -> [SKIP][11] ([i915#14544] / [i915#3555] / [i915#9323])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-tglu-1:       NOTRUN -> [SKIP][12] ([i915#6335])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-dg1:          NOTRUN -> [SKIP][13] ([i915#280])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-rkl:          NOTRUN -> [SKIP][14] ([i915#14544] / [i915#280])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_exec_balancer@bonded-sync:
>     - shard-mtlp:         NOTRUN -> [SKIP][15] ([i915#4771])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-mtlp-3/igt@gem_exec_balancer@bonded-sync.html
> 
>   * igt@gem_exec_balancer@hang:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][16] ([i915#12964])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@gem_exec_balancer@hang.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-rkl:          NOTRUN -> [SKIP][17] ([i915#14544] / [i915#4525])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-tglu-1:       NOTRUN -> [SKIP][18] ([i915#4525])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_capture@capture-recoverable:
>     - shard-rkl:          NOTRUN -> [SKIP][19] ([i915#14544] / [i915#6344])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@gem_exec_capture@capture-recoverable.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][20] ([i915#14544] / [i915#3281]) +7 other tests skip
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-read-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc-active:
>     - shard-mtlp:         NOTRUN -> [SKIP][21] ([i915#3281])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-mtlp-3/igt@gem_exec_reloc@basic-gtt-wc-active.html
> 
>   * igt@gem_exec_reloc@basic-wc-gtt-noreloc:
>     - shard-dg1:          NOTRUN -> [SKIP][22] ([i915#3281]) +2 other tests skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@gem_exec_reloc@basic-wc-gtt-noreloc.html
> 
>   * igt@gem_exec_schedule@deep@rcs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][23] ([i915#4537])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-mtlp-3/igt@gem_exec_schedule@deep@rcs0.html
> 
>   * igt@gem_exec_suspend@basic-s3-devices:
>     - shard-dg1:          [PASS][24] -> [DMESG-WARN][25] ([i915#4423]) +1 other test dmesg-warn
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-dg1-18/igt@gem_exec_suspend@basic-s3-devices.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-17/igt@gem_exec_suspend@basic-s3-devices.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-x:
>     - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#4860])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-11/igt@gem_fence_thrash@bo-write-verify-x.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences:
>     - shard-dg1:          NOTRUN -> [SKIP][27] ([i915#4860])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@gem_fenced_exec_thrash@no-spare-fences.html
> 
>   * igt@gem_lmem_evict@dontneed-evict-race:
>     - shard-tglu-1:       NOTRUN -> [SKIP][28] ([i915#4613] / [i915#7582])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@gem_lmem_evict@dontneed-evict-race.html
> 
>   * igt@gem_lmem_swapping@massive:
>     - shard-rkl:          NOTRUN -> [SKIP][29] ([i915#14544] / [i915#4613]) +1 other test skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@gem_lmem_swapping@massive.html
> 
>   * igt@gem_lmem_swapping@massive-random:
>     - shard-tglu:         NOTRUN -> [SKIP][30] ([i915#4613])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-6/igt@gem_lmem_swapping@massive-random.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-tglu-1:       NOTRUN -> [SKIP][31] ([i915#4613])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-glk:          NOTRUN -> [SKIP][32] ([i915#4613]) +1 other test skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-glk6/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          [PASS][33] -> [TIMEOUT][34] ([i915#5493]) +1 other test timeout
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-dg2-5/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-3/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_media_vme:
>     - shard-tglu-1:       NOTRUN -> [SKIP][35] ([i915#284])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@gem_media_vme.html
> 
>   * igt@gem_mmap_gtt@basic-read-write:
>     - shard-mtlp:         NOTRUN -> [SKIP][36] ([i915#4077])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-mtlp-3/igt@gem_mmap_gtt@basic-read-write.html
> 
>   * igt@gem_mmap_gtt@zero-extend:
>     - shard-dg1:          NOTRUN -> [SKIP][37] ([i915#4077]) +2 other tests skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@gem_mmap_gtt@zero-extend.html
> 
>   * igt@gem_mmap_wc@coherency:
>     - shard-dg1:          NOTRUN -> [SKIP][38] ([i915#4083]) +1 other test skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@gem_mmap_wc@coherency.html
> 
>   * igt@gem_partial_pwrite_pread@reads-display:
>     - shard-mtlp:         NOTRUN -> [SKIP][39] ([i915#3282]) +1 other test skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-mtlp-3/igt@gem_partial_pwrite_pread@reads-display.html
> 
>   * igt@gem_pread@bench:
>     - shard-rkl:          NOTRUN -> [SKIP][40] ([i915#14544] / [i915#3282]) +3 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@gem_pread@bench.html
> 
>   * igt@gem_pxp@display-protected-crc:
>     - shard-rkl:          [PASS][41] -> [TIMEOUT][42] ([i915#12917] / [i915#12964]) +1 other test timeout
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@gem_pxp@display-protected-crc.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-5/igt@gem_pxp@display-protected-crc.html
>     - shard-dg1:          NOTRUN -> [SKIP][43] ([i915#4270])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@gem_pxp@display-protected-crc.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-2:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][44] ([i915#12917] / [i915#12964]) +1 other test timeout
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-off-2.html
> 
>   * igt@gem_readwrite@beyond-eob:
>     - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#3282])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-11/igt@gem_readwrite@beyond-eob.html
> 
>   * igt@gem_render_copy@yf-tiled-ccs-to-x-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][46] ([i915#8428])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-mtlp-3/igt@gem_render_copy@yf-tiled-ccs-to-x-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-dg1:          NOTRUN -> [SKIP][47] ([i915#4079])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#4079])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-11/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-tglu-1:       NOTRUN -> [SKIP][49] ([i915#3297] / [i915#3323])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate:
>     - shard-dg1:          NOTRUN -> [SKIP][50] ([i915#3297] / [i915#4880])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@gem_userptr_blits@map-fixed-invalidate.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-dg1:          NOTRUN -> [SKIP][51] ([i915#3297])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-rkl:          NOTRUN -> [SKIP][52] ([i915#14544] / [i915#3297])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-mtlp:         NOTRUN -> [SKIP][53] ([i915#3297])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-mtlp-3/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gen9_exec_parse@basic-rejected:
>     - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#2856])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-11/igt@gen9_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - shard-tglu-1:       NOTRUN -> [SKIP][55] ([i915#2527] / [i915#2856]) +1 other test skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@gen9_exec_parse@batch-invalid-length.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#2527])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@i915_drm_fdinfo@busy-hang@vcs0:
>     - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#14073]) +5 other tests skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@i915_drm_fdinfo@busy-hang@vcs0.html
> 
>   * igt@i915_module_load@load:
>     - shard-snb:          ([PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82]) -> ([PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [SKIP][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-snb7/igt@i915_module_load@load.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-snb6/igt@i915_module_load@load.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-snb4/igt@i915_module_load@load.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-snb6/igt@i915_module_load@load.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-snb6/igt@i915_module_load@load.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-snb1/igt@i915_module_load@load.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-snb7/igt@i915_module_load@load.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-snb4/igt@i915_module_load@load.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-snb5/igt@i915_module_load@load.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-snb1/igt@i915_module_load@load.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-snb5/igt@i915_module_load@load.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-snb7/igt@i915_module_load@load.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-snb5/igt@i915_module_load@load.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-snb6/igt@i915_module_load@load.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-snb1/igt@i915_module_load@load.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-snb5/igt@i915_module_load@load.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-snb1/igt@i915_module_load@load.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-snb6/igt@i915_module_load@load.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-snb1/igt@i915_module_load@load.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-snb7/igt@i915_module_load@load.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-snb4/igt@i915_module_load@load.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-snb4/igt@i915_module_load@load.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-snb4/igt@i915_module_load@load.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-snb7/igt@i915_module_load@load.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-snb4/igt@i915_module_load@load.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-snb7/igt@i915_module_load@load.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-snb7/igt@i915_module_load@load.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-snb7/igt@i915_module_load@load.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-snb7/igt@i915_module_load@load.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-snb6/igt@i915_module_load@load.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-snb6/igt@i915_module_load@load.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-snb1/igt@i915_module_load@load.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-snb6/igt@i915_module_load@load.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-snb1/igt@i915_module_load@load.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-snb5/igt@i915_module_load@load.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-snb1/igt@i915_module_load@load.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-snb1/igt@i915_module_load@load.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-snb1/igt@i915_module_load@load.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-snb5/igt@i915_module_load@load.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-snb5/igt@i915_module_load@load.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-snb4/igt@i915_module_load@load.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-snb4/igt@i915_module_load@load.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-snb5/igt@i915_module_load@load.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-snb5/igt@i915_module_load@load.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-snb4/igt@i915_module_load@load.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-snb4/igt@i915_module_load@load.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-snb7/igt@i915_module_load@load.html
>     - shard-glk:          ([PASS][105], [PASS][106], [PASS][107], [PASS][108], [PASS][109], [PASS][110], [PASS][111], [PASS][112], [PASS][113], [PASS][114], [PASS][115], [PASS][116]) -> ([PASS][117], [PASS][118], [SKIP][119], [PASS][120], [PASS][121], [PASS][122], [PASS][123], [PASS][124])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-glk6/igt@i915_module_load@load.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-glk9/igt@i915_module_load@load.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-glk8/igt@i915_module_load@load.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-glk6/igt@i915_module_load@load.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-glk5/igt@i915_module_load@load.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-glk8/igt@i915_module_load@load.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-glk3/igt@i915_module_load@load.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-glk6/igt@i915_module_load@load.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-glk1/igt@i915_module_load@load.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-glk9/igt@i915_module_load@load.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-glk5/igt@i915_module_load@load.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-glk3/igt@i915_module_load@load.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-glk1/igt@i915_module_load@load.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-glk3/igt@i915_module_load@load.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-glk5/igt@i915_module_load@load.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-glk6/igt@i915_module_load@load.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-glk6/igt@i915_module_load@load.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-glk8/igt@i915_module_load@load.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-glk9/igt@i915_module_load@load.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-glk9/igt@i915_module_load@load.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#14544] / [i915#6590]) +1 other test skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@i915_pm_freq_mult@media-freq@gt0.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][126] ([i915#13356] / [i915#15172])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-glk10/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - shard-dg2:          [PASS][127] -> [DMESG-FAIL][128] ([i915#12061]) +1 other test dmesg-fail
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-dg2-3/igt@i915_selftest@live@workarounds.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-5/igt@i915_selftest@live@workarounds.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-tglu:         NOTRUN -> [INCOMPLETE][129] ([i915#4817] / [i915#7443])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-6/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-rkl:          [PASS][130] -> [ABORT][131] ([i915#15131])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@i915_suspend@debugfs-reader.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-4/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][132] ([i915#4817])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-glk1/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#12454] / [i915#12712] / [i915#14544])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-dg1:          NOTRUN -> [SKIP][134] ([i915#9531])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>     - shard-tglu:         [PASS][135] -> [FAIL][136] ([i915#14857]) +1 other test fail
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-tglu-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#1769] / [i915#3555])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-addfb-size-overflow:
>     - shard-tglu-1:       NOTRUN -> [SKIP][138] ([i915#5286]) +1 other test skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@kms_big_fb@4-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-dg1:          NOTRUN -> [SKIP][139] ([i915#4538] / [i915#5286])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][140] ([i915#5286]) +1 other test skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-mtlp:         [PASS][141] -> [FAIL][142] ([i915#5138])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
>     - shard-mtlp:         NOTRUN -> [SKIP][143] +4 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-mtlp-3/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#14544]) +43 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
>     - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#4538]) +1 other test skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#5190])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-11/igt@kms_big_fb@yf-tiled-addfb.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#6095]) +152 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-16/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][148] ([i915#6095]) +34 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#10307] / [i915#10434] / [i915#6095]) +4 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-4/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][150] ([i915#6095]) +4 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][151] ([i915#6095]) +14 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-mtlp-3/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-edp-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#6095]) +49 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#6095]) +23 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#14098] / [i915#6095]) +36 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#10307] / [i915#6095]) +110 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-4/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][156] ([i915#12313]) +1 other test skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> 
>   * igt@kms_chamelium_audio@hdmi-audio-edid:
>     - shard-dg1:          NOTRUN -> [SKIP][157] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@kms_chamelium_audio@hdmi-audio-edid.html
> 
>   * igt@kms_chamelium_color@ctm-0-50:
>     - shard-tglu-1:       NOTRUN -> [SKIP][158] +22 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@kms_chamelium_color@ctm-0-50.html
> 
>   * igt@kms_chamelium_color@ctm-limited-range:
>     - shard-tglu:         NOTRUN -> [SKIP][159] +4 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-6/igt@kms_chamelium_color@ctm-limited-range.html
> 
>   * igt@kms_chamelium_color@degamma:
>     - shard-glk10:        NOTRUN -> [SKIP][160] +46 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-glk10/igt@kms_chamelium_color@degamma.html
> 
>   * igt@kms_chamelium_edid@dp-edid-read:
>     - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#11151] / [i915#14544] / [i915#7828]) +2 other tests skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_chamelium_edid@dp-edid-read.html
> 
>   * igt@kms_chamelium_edid@vga-edid-read:
>     - shard-mtlp:         NOTRUN -> [SKIP][162] ([i915#11151] / [i915#7828]) +1 other test skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-mtlp-3/igt@kms_chamelium_edid@vga-edid-read.html
> 
>   * igt@kms_chamelium_frames@hdmi-aspect-ratio:
>     - shard-tglu:         NOTRUN -> [SKIP][163] ([i915#11151] / [i915#7828])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-6/igt@kms_chamelium_frames@hdmi-aspect-ratio.html
> 
>   * igt@kms_chamelium_frames@vga-frame-dump:
>     - shard-tglu-1:       NOTRUN -> [SKIP][164] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@kms_chamelium_frames@vga-frame-dump.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd:
>     - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#11151] / [i915#7828])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-11/igt@kms_chamelium_hpd@hdmi-hpd.html
> 
>   * igt@kms_color@legacy-gamma:
>     - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#12655] / [i915#14544]) +1 other test skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_color@legacy-gamma.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][167] ([i915#3116] / [i915#3299])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-tglu:         NOTRUN -> [SKIP][168] ([i915#6944] / [i915#9424])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-6/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@lic-type-0@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [FAIL][169] ([i915#7173])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-11/igt@kms_content_protection@lic-type-0@pipe-a-dp-3.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>     - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#13049])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-mtlp-3/igt@kms_cursor_crc@cursor-onscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][171] ([i915#13566]) +1 other test fail
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_cursor_crc@cursor-random-32x32:
>     - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#3555])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@kms_cursor_crc@cursor-random-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-tglu-1:       NOTRUN -> [SKIP][173] ([i915#13049])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#13049])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-11/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-64x21:
>     - shard-mtlp:         NOTRUN -> [SKIP][175] ([i915#8814])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-mtlp-3/igt@kms_cursor_crc@cursor-rapid-movement-64x21.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#4103] / [i915#4213])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
>     - shard-dg1:          NOTRUN -> [SKIP][177] +4 other tests skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          NOTRUN -> [FAIL][178] ([i915#2346])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>     - shard-rkl:          [PASS][179] -> [FAIL][180] ([i915#14001] / [i915#2346])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#3804])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_dp_link_training@non-uhbr-sst:
>     - shard-dg1:          NOTRUN -> [SKIP][182] ([i915#13749])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@kms_dp_link_training@non-uhbr-sst.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-dg2:          [PASS][183] -> [SKIP][184] ([i915#13707])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fallback.html
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-7/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#3840] / [i915#9688])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-11/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-mtlp:         NOTRUN -> [SKIP][186] ([i915#3555] / [i915#3840] / [i915#9053])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-mtlp-3/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_feature_discovery@display-2x:
>     - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#14544] / [i915#1839])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_feature_discovery@display-2x.html
> 
>   * igt@kms_feature_discovery@display-3x:
>     - shard-tglu-1:       NOTRUN -> [SKIP][188] ([i915#1839])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@kms_feature_discovery@display-3x.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-tglu-1:       NOTRUN -> [SKIP][189] ([i915#658])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
>     - shard-tglu:         NOTRUN -> [SKIP][190] ([i915#3637] / [i915#9934])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#14544] / [i915#9934]) +3 other tests skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_flip@2x-flip-vs-panning-interruptible.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race:
>     - shard-dg1:          NOTRUN -> [SKIP][192] ([i915#9934]) +2 other tests skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@kms_flip@2x-modeset-vs-vblank-race.html
> 
>   * igt@kms_flip@2x-plain-flip-interruptible:
>     - shard-tglu-1:       NOTRUN -> [SKIP][193] ([i915#3637] / [i915#9934]) +4 other tests skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@kms_flip@2x-plain-flip-interruptible.html
> 
>   * igt@kms_flip@flip-vs-fences-interruptible:
>     - shard-rkl:          [PASS][194] -> [SKIP][195] ([i915#14544] / [i915#3637]) +3 other tests skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@kms_flip@flip-vs-fences-interruptible.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_flip@flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#14544] / [i915#3637]) +2 other tests skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-hdmi-a4:
>     - shard-dg1:          NOTRUN -> [DMESG-WARN][197] ([i915#4423])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-14/igt@kms_flip@flip-vs-suspend@c-hdmi-a4.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible:
>     - shard-snb:          [PASS][198] -> [FAIL][199] ([i915#14600]) +1 other test fail
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-snb7/igt@kms_flip@plain-flip-ts-check-interruptible.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-snb1/igt@kms_flip@plain-flip-ts-check-interruptible.html
>     - shard-mtlp:         [PASS][200] -> [FAIL][201] ([i915#14600]) +1 other test fail
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-mtlp-8/igt@kms_flip@plain-flip-ts-check-interruptible.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-mtlp-8/igt@kms_flip@plain-flip-ts-check-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
>     - shard-mtlp:         NOTRUN -> [SKIP][202] ([i915#2672] / [i915#3555] / [i915#8813])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][203] ([i915#2672] / [i915#8813])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#2672]) +3 other tests skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][205] ([i915#2672] / [i915#3555])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][206] ([i915#2587] / [i915#2672])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][207] ([i915#14544] / [i915#3555]) +3 other tests skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-upscaling:
>     - shard-rkl:          [PASS][208] -> [SKIP][209] ([i915#14544] / [i915#3555]) +1 other test skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-upscaling.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:
>     - shard-dg1:          NOTRUN -> [SKIP][210] ([i915#2672] / [i915#3555])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][211] ([i915#2587] / [i915#2672])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render:
>     - shard-rkl:          [PASS][212] -> [SKIP][213] ([i915#14544] / [i915#1849] / [i915#5354]) +3 other tests skip
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][214] ([i915#5354]) +3 other tests skip
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][215] ([i915#8708]) +1 other test skip
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-tglu:         NOTRUN -> [SKIP][216] ([i915#5439])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-linear:
>     - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#14544] / [i915#1849] / [i915#5354]) +29 other tests skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][218] ([i915#15104])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][219] ([i915#8708]) +5 other tests skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt:
>     - shard-mtlp:         NOTRUN -> [SKIP][220] ([i915#1825]) +3 other tests skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][221] ([i915#15102] / [i915#3458]) +3 other tests skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-stridechange:
>     - shard-tglu:         NOTRUN -> [SKIP][222] ([i915#15102]) +6 other tests skip
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-6/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#8708])
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
>     - shard-tglu-1:       NOTRUN -> [SKIP][224] ([i915#15102]) +12 other tests skip
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#15102] / [i915#3458])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-tglu-1:       NOTRUN -> [SKIP][226] ([i915#3555] / [i915#8228])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-dg2:          [PASS][227] -> [SKIP][228] ([i915#3555] / [i915#8228])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-dg2-11/igt@kms_hdr@static-toggle.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-7/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_invalid_mode@bad-hsync-end:
>     - shard-rkl:          NOTRUN -> [SKIP][229] ([i915#14544] / [i915#3555] / [i915#8826])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_invalid_mode@bad-hsync-end.html
> 
>   * igt@kms_invalid_mode@bad-vsync-start:
>     - shard-rkl:          [PASS][230] -> [SKIP][231] ([i915#14544] / [i915#3555] / [i915#8826])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-3/igt@kms_invalid_mode@bad-vsync-start.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-start.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-tglu-1:       NOTRUN -> [SKIP][232] ([i915#12388])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-ultra-joiner:
>     - shard-tglu-1:       NOTRUN -> [SKIP][233] ([i915#12339])
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@kms_joiner@invalid-modeset-ultra-joiner.html
> 
>   * igt@kms_lease@empty-lease:
>     - shard-rkl:          [PASS][234] -> [SKIP][235] ([i915#14544]) +20 other tests skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@kms_lease@empty-lease.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_lease@empty-lease.html
> 
>   * igt@kms_pipe_crc_basic@read-crc:
>     - shard-rkl:          NOTRUN -> [SKIP][236] ([i915#11190] / [i915#14544])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_pipe_crc_basic@read-crc.html
> 
>   * igt@kms_plane@pixel-format:
>     - shard-rkl:          [PASS][237] -> [SKIP][238] ([i915#14544] / [i915#8825])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-3/igt@kms_plane@pixel-format.html
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_plane@pixel-format.html
> 
>   * igt@kms_plane_alpha_blend@constant-alpha-mid:
>     - shard-rkl:          NOTRUN -> [SKIP][239] ([i915#14544] / [i915#7294])
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_plane_alpha_blend@constant-alpha-mid.html
> 
>   * igt@kms_plane_multiple@2x-tiling-4:
>     - shard-tglu-1:       NOTRUN -> [SKIP][240] ([i915#13958])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-4.html
> 
>   * igt@kms_plane_multiple@2x-tiling-y:
>     - shard-tglu:         NOTRUN -> [SKIP][241] ([i915#13958])
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-6/igt@kms_plane_multiple@2x-tiling-y.html
> 
>   * igt@kms_plane_multiple@2x-tiling-yf:
>     - shard-mtlp:         NOTRUN -> [SKIP][242] ([i915#13958])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-mtlp-3/igt@kms_plane_multiple@2x-tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-tglu-1:       NOTRUN -> [SKIP][243] ([i915#6953])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers:
>     - shard-rkl:          [PASS][244] -> [SKIP][245] ([i915#14544] / [i915#8152]) +1 other test skip
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format:
>     - shard-rkl:          NOTRUN -> [SKIP][246] ([i915#14544] / [i915#8152])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c:
>     - shard-rkl:          NOTRUN -> [SKIP][247] ([i915#12247]) +1 other test skip
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
>     - shard-tglu-1:       NOTRUN -> [SKIP][248] ([i915#12247]) +4 other tests skip
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b:
>     - shard-rkl:          [PASS][249] -> [SKIP][250] ([i915#12247] / [i915#14544] / [i915#8152]) +4 other tests skip
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-a:
>     - shard-rkl:          [PASS][251] -> [SKIP][252] ([i915#12247] / [i915#14544]) +3 other tests skip
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-a.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
>     - shard-rkl:          [PASS][253] -> [SKIP][254] ([i915#14544] / [i915#6953] / [i915#8152])
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:
>     - shard-rkl:          NOTRUN -> [SKIP][255] ([i915#12247] / [i915#14544] / [i915#3555] / [i915#6953] / [i915#8152])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a:
>     - shard-rkl:          NOTRUN -> [SKIP][256] ([i915#12247] / [i915#14544]) +1 other test skip
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-b:
>     - shard-rkl:          NOTRUN -> [SKIP][257] ([i915#12247] / [i915#14544] / [i915#8152]) +1 other test skip
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-b.html
> 
>   * igt@kms_pm_backlight@bad-brightness:
>     - shard-tglu-1:       NOTRUN -> [SKIP][258] ([i915#9812])
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@kms_pm_backlight@bad-brightness.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-rkl:          NOTRUN -> [SKIP][259] ([i915#14544] / [i915#9685])
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc5-psr:
>     - shard-tglu-1:       NOTRUN -> [SKIP][260] ([i915#9685])
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@kms_pm_dc@dc5-psr.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-rkl:          NOTRUN -> [FAIL][261] ([i915#9295])
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-dg2:          [PASS][262] -> [SKIP][263] ([i915#9340])
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-dg2-4/igt@kms_pm_lpsp@kms-lpsp.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-8/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@cursor:
>     - shard-rkl:          NOTRUN -> [SKIP][264] ([i915#14544] / [i915#1849])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_pm_rpm@cursor.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg2:          [PASS][265] -> [SKIP][266] ([i915#15073]) +1 other test skip
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-dg2-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-tglu-1:       NOTRUN -> [SKIP][267] ([i915#15073])
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@pm-tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][268] ([i915#4077]) +1 other test skip
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-11/igt@kms_pm_rpm@pm-tiling.html
> 
>   * igt@kms_pm_rpm@system-suspend-modeset:
>     - shard-glk:          [PASS][269] -> [INCOMPLETE][270] ([i915#10553])
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-glk5/igt@kms_pm_rpm@system-suspend-modeset.html
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-glk8/igt@kms_pm_rpm@system-suspend-modeset.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-rkl:          NOTRUN -> [SKIP][271] ([i915#14544] / [i915#6524]) +1 other test skip
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][272] ([i915#11520])
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][273] ([i915#11520]) +3 other tests skip
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][274] ([i915#9808])
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-mtlp-3/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf@pipe-a-edp-1.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][275] ([i915#12316]) +1 other test skip
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-mtlp-3/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf@pipe-b-edp-1.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
>     - shard-dg1:          NOTRUN -> [SKIP][276] ([i915#11520]) +1 other test skip
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][277] ([i915#11520] / [i915#14544]) +3 other tests skip
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-cursor-plane-update-sf:
>     - shard-glk10:        NOTRUN -> [SKIP][278] ([i915#11520])
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-glk10/igt@kms_psr2_sf@psr2-cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][279] ([i915#11520]) +1 other test skip
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-glk6/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr@fbc-psr-cursor-blt@edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][280] ([i915#9688]) +3 other tests skip
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-mtlp-3/igt@kms_psr@fbc-psr-cursor-blt@edp-1.html
> 
>   * igt@kms_psr@fbc-psr-primary-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][281] ([i915#1072] / [i915#14544] / [i915#9732]) +5 other tests skip
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_psr@fbc-psr-primary-mmap-cpu.html
> 
>   * igt@kms_psr@fbc-psr2-cursor-mmap-gtt:
>     - shard-glk:          NOTRUN -> [SKIP][282] +64 other tests skip
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-glk6/igt@kms_psr@fbc-psr2-cursor-mmap-gtt.html
> 
>   * igt@kms_psr@fbc-psr2-no-drrs:
>     - shard-tglu:         NOTRUN -> [SKIP][283] ([i915#9732]) +2 other tests skip
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-6/igt@kms_psr@fbc-psr2-no-drrs.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-render:
>     - shard-tglu-1:       NOTRUN -> [SKIP][284] ([i915#9732]) +9 other tests skip
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@kms_psr@fbc-psr2-sprite-render.html
> 
>   * igt@kms_psr@psr-primary-mmap-gtt@edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][285] ([i915#4077] / [i915#9688]) +1 other test skip
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-mtlp-3/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html
> 
>   * igt@kms_psr@psr2-cursor-plane-move:
>     - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#1072] / [i915#9732])
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-11/igt@kms_psr@psr2-cursor-plane-move.html
> 
>   * igt@kms_psr@psr2-primary-mmap-cpu:
>     - shard-dg1:          NOTRUN -> [SKIP][287] ([i915#1072] / [i915#9732]) +5 other tests skip
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@kms_psr@psr2-primary-mmap-cpu.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-tglu-1:       NOTRUN -> [SKIP][288] ([i915#5289])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-mtlp:         NOTRUN -> [SKIP][289] ([i915#12755])
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-mtlp-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-dg2:          NOTRUN -> [SKIP][290] ([i915#8623])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-11/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_vrr@flip-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][291] ([i915#3555])
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-6/igt@kms_vrr@flip-suspend.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-tglu-1:       NOTRUN -> [SKIP][292] ([i915#3555] / [i915#9906])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@kms_vrr@negative-basic.html
> 
>   * igt@perf@polling@0-rcs0:
>     - shard-tglu:         [PASS][293] -> [FAIL][294] ([i915#10538]) +1 other test fail
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-tglu-4/igt@perf@polling@0-rcs0.html
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-7/igt@perf@polling@0-rcs0.html
> 
>   * igt@perf_pmu@frequency@gt0:
>     - shard-dg1:          NOTRUN -> [FAIL][295] ([i915#12549] / [i915#6806]) +1 other test fail
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@perf_pmu@frequency@gt0.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-dg1:          NOTRUN -> [SKIP][296] ([i915#8516])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-dg1:          NOTRUN -> [SKIP][297] ([i915#3708])
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][298] ([i915#14544] / [i915#3708])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@sriov_basic@bind-unbind-vf@vf-1:
>     - shard-tglu-1:       NOTRUN -> [FAIL][299] ([i915#12910]) +9 other tests fail
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-1/igt@sriov_basic@bind-unbind-vf@vf-1.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each:
>     - shard-rkl:          NOTRUN -> [SKIP][300] ([i915#14544] / [i915#9917])
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each.html
> 
>   * igt@syncobj_wait@invalid-signal-zero-handles:
>     - shard-rkl:          [PASS][301] -> [DMESG-WARN][302] ([i915#12964]) +3 other tests dmesg-warn
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-7/igt@syncobj_wait@invalid-signal-zero-handles.html
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-7/igt@syncobj_wait@invalid-signal-zero-handles.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@info:
>     - shard-rkl:          [SKIP][303] ([i915#14544] / [i915#1849] / [i915#2582]) -> [PASS][304]
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@fbdev@info.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@fbdev@info.html
> 
>   * igt@fbdev@unaligned-read:
>     - shard-rkl:          [SKIP][305] ([i915#14544] / [i915#2582]) -> [PASS][306] +1 other test pass
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@fbdev@unaligned-read.html
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@fbdev@unaligned-read.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-dg2:          [INCOMPLETE][307] ([i915#13356]) -> [PASS][308]
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-dg2-5/igt@gem_ccs@suspend-resume.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-11/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-smem-lmem0:
>     - shard-dg2:          [INCOMPLETE][309] ([i915#12392] / [i915#13356]) -> [PASS][310]
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-dg2-5/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-smem-lmem0.html
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-11/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-smem-lmem0.html
> 
>   * igt@gem_exec_balancer@sliced:
>     - shard-rkl:          [DMESG-WARN][311] ([i915#12917] / [i915#12964]) -> [PASS][312] +1 other test pass
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-7/igt@gem_exec_balancer@sliced.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@gem_exec_balancer@sliced.html
> 
>   * igt@gem_mmap_offset@clear-via-pagefault:
>     - shard-mtlp:         [ABORT][313] ([i915#14809]) -> [PASS][314] +1 other test pass
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-mtlp-7/igt@gem_mmap_offset@clear-via-pagefault.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-mtlp-3/igt@gem_mmap_offset@clear-via-pagefault.html
> 
>   * igt@gem_pxp@create-valid-protected-context:
>     - shard-rkl:          [TIMEOUT][315] ([i915#12964]) -> [PASS][316]
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-7/igt@gem_pxp@create-valid-protected-context.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@gem_pxp@create-valid-protected-context.html
> 
>   * igt@gem_pxp@protected-raw-src-copy-not-readible:
>     - shard-rkl:          [TIMEOUT][317] ([i915#12917] / [i915#12964]) -> [PASS][318] +2 other tests pass
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@gem_pxp@protected-raw-src-copy-not-readible.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@gem_pxp@protected-raw-src-copy-not-readible.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-rkl:          [INCOMPLETE][319] ([i915#4817]) -> [PASS][320]
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-3/igt@i915_suspend@forcewake.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_atomic_transition@plane-toggle-modeset-transition:
>     - shard-dg2:          [FAIL][321] ([i915#5956]) -> [PASS][322] +1 other test pass
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-dg2-7/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-3/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
> 
>   * igt@kms_color@ctm-0-75:
>     - shard-rkl:          [SKIP][323] ([i915#12655] / [i915#14544]) -> [PASS][324]
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_color@ctm-0-75.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_color@ctm-0-75.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-256x256:
>     - shard-rkl:          [SKIP][325] ([i915#14544]) -> [PASS][326] +55 other tests pass
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-256x256.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-256x256.html
> 
>   * igt@kms_cursor_crc@cursor-random-128x42:
>     - shard-tglu:         [FAIL][327] ([i915#13566]) -> [PASS][328] +1 other test pass
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-tglu-4/igt@kms_cursor_crc@cursor-random-128x42.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-tglu-7/igt@kms_cursor_crc@cursor-random-128x42.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x42:
>     - shard-rkl:          [FAIL][329] ([i915#13566]) -> [PASS][330]
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-128x42.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-128x42.html
> 
>   * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
>     - shard-rkl:          [SKIP][331] ([i915#11190] / [i915#14544]) -> [PASS][332] +3 other tests pass
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-rkl:          [SKIP][333] ([i915#14544] / [i915#14561]) -> [PASS][334]
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_fbcon_fbt@fbc-suspend.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-panning-interruptible:
>     - shard-rkl:          [SKIP][335] ([i915#14544] / [i915#3637]) -> [PASS][336] +9 other tests pass
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_flip@flip-vs-panning-interruptible.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_flip@flip-vs-panning-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
>     - shard-rkl:          [SKIP][337] ([i915#14544] / [i915#3555]) -> [PASS][338] +2 other tests pass
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
>     - shard-rkl:          [SKIP][339] ([i915#14544] / [i915#1849] / [i915#5354]) -> [PASS][340] +10 other tests pass
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-dg2:          [SKIP][341] ([i915#3555] / [i915#8228]) -> [PASS][342]
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-dg2-6/igt@kms_hdr@invalid-metadata-sizes.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-11/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_invalid_mode@bad-hsync-end:
>     - shard-dg1:          [DMESG-WARN][343] ([i915#4423]) -> [PASS][344]
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-dg1-13/igt@kms_invalid_mode@bad-hsync-end.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-14/igt@kms_invalid_mode@bad-hsync-end.html
> 
>   * igt@kms_invalid_mode@bad-hsync-start:
>     - shard-rkl:          [SKIP][345] ([i915#14544] / [i915#3555] / [i915#8826]) -> [PASS][346]
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_invalid_mode@bad-hsync-start.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_invalid_mode@bad-hsync-start.html
> 
>   * igt@kms_plane@pixel-format-source-clamping:
>     - shard-rkl:          [SKIP][347] ([i915#14544] / [i915#8825]) -> [PASS][348]
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_plane@pixel-format-source-clamping.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_plane@pixel-format-source-clamping.html
> 
>   * igt@kms_plane_alpha_blend@alpha-opaque-fb:
>     - shard-rkl:          [SKIP][349] ([i915#14544] / [i915#7294]) -> [PASS][350] +1 other test pass
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-opaque-fb.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_plane_alpha_blend@alpha-opaque-fb.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:
>     - shard-rkl:          [SKIP][351] ([i915#14544] / [i915#8152]) -> [PASS][352]
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a:
>     - shard-rkl:          [SKIP][353] ([i915#12247] / [i915#14544]) -> [PASS][354] +3 other tests pass
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:
>     - shard-rkl:          [SKIP][355] ([i915#14544] / [i915#3555] / [i915#8152]) -> [PASS][356]
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:
>     - shard-rkl:          [SKIP][357] ([i915#14544] / [i915#6953] / [i915#8152]) -> [PASS][358]
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25:
>     - shard-rkl:          [SKIP][359] ([i915#14544] / [i915#3555] / [i915#6953] / [i915#8152]) -> [PASS][360]
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25.html
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-b:
>     - shard-rkl:          [SKIP][361] ([i915#12247] / [i915#14544] / [i915#8152]) -> [PASS][362] +3 other tests pass
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-b.html
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-b.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg2:          [SKIP][363] ([i915#15073]) -> [PASS][364]
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-dg2-11/igt@kms_pm_rpm@dpms-lpsp.html
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-rkl:          [SKIP][365] ([i915#15073]) -> [PASS][366] +1 other test pass
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_properties@plane-properties-legacy:
>     - shard-rkl:          [SKIP][367] ([i915#11521] / [i915#14544]) -> [PASS][368]
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_properties@plane-properties-legacy.html
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_properties@plane-properties-legacy.html
> 
>   * igt@perf_pmu@interrupts-sync:
>     - shard-rkl:          [FAIL][369] ([i915#14470]) -> [PASS][370]
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@perf_pmu@interrupts-sync.html
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@perf_pmu@interrupts-sync.html
> 
>   * igt@sysfs_heartbeat_interval@nopreempt:
>     - shard-rkl:          [DMESG-WARN][371] ([i915#12964]) -> [PASS][372] +13 other tests pass
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@sysfs_heartbeat_interval@nopreempt.html
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@sysfs_heartbeat_interval@nopreempt.html
> 
>   
> #### Warnings ####
> 
>   * igt@api_intel_bb@object-reloc-purge-cache:
>     - shard-rkl:          [SKIP][373] ([i915#8411]) -> [SKIP][374] ([i915#14544] / [i915#8411]) +1 other test skip
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@api_intel_bb@object-reloc-purge-cache.html
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@api_intel_bb@object-reloc-purge-cache.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-rkl:          [SKIP][375] ([i915#9323]) -> [SKIP][376] ([i915#14544] / [i915#9323])
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@gem_ccs@suspend-resume.html
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-rkl:          [SKIP][377] ([i915#14544] / [i915#280]) -> [SKIP][378] ([i915#280])
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@gem_ctx_sseu@invalid-sseu.html
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-rkl:          [SKIP][379] ([i915#14544] / [i915#4525]) -> [SKIP][380] ([i915#4525]) +1 other test skip
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@gem_exec_balancer@parallel-bb-first.html
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_reloc@basic-gtt:
>     - shard-rkl:          [SKIP][381] ([i915#14544] / [i915#3281]) -> [SKIP][382] ([i915#3281]) +7 other tests skip
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@gem_exec_reloc@basic-gtt.html
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@gem_exec_reloc@basic-gtt.html
> 
>   * igt@gem_exec_reloc@basic-scanout:
>     - shard-rkl:          [SKIP][383] ([i915#3281]) -> [SKIP][384] ([i915#14544] / [i915#3281]) +3 other tests skip
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-3/igt@gem_exec_reloc@basic-scanout.html
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@gem_exec_reloc@basic-scanout.html
> 
>   * igt@gem_lmem_swapping@massive-random:
>     - shard-rkl:          [SKIP][385] ([i915#4613]) -> [SKIP][386] ([i915#14544] / [i915#4613])
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@gem_lmem_swapping@massive-random.html
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@gem_lmem_swapping@massive-random.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-rkl:          [SKIP][387] ([i915#14544] / [i915#4613]) -> [SKIP][388] ([i915#4613]) +1 other test skip
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@gem_lmem_swapping@parallel-multi.html
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-rkl:          [SKIP][389] ([i915#14544] / [i915#3282]) -> [SKIP][390] ([i915#3282]) +2 other tests skip
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@gem_pwrite@basic-exhaustion.html
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>     - shard-rkl:          [TIMEOUT][391] ([i915#12917] / [i915#12964]) -> [SKIP][392] ([i915#4270])
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
> 
>   * igt@gem_tiled_partial_pwrite_pread@writes:
>     - shard-rkl:          [SKIP][393] ([i915#3282]) -> [SKIP][394] ([i915#14544] / [i915#3282]) +1 other test skip
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@gem_tiled_partial_pwrite_pread@writes.html
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@gem_tiled_partial_pwrite_pread@writes.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-rkl:          [SKIP][395] ([i915#14544] / [i915#3282] / [i915#3297]) -> [SKIP][396] ([i915#3282] / [i915#3297])
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@gem_userptr_blits@forbidden-operations.html
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-rkl:          [SKIP][397] ([i915#14544] / [i915#3297]) -> [SKIP][398] ([i915#3297]) +2 other tests skip
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-cycles.html
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gen9_exec_parse@basic-rejected:
>     - shard-rkl:          [SKIP][399] ([i915#2527]) -> [SKIP][400] ([i915#14544] / [i915#2527])
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@gen9_exec_parse@basic-rejected.html
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@gen9_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - shard-rkl:          [SKIP][401] ([i915#14544] / [i915#2527]) -> [SKIP][402] ([i915#2527]) +2 other tests skip
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@gen9_exec_parse@batch-invalid-length.html
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@gen9_exec_parse@batch-invalid-length.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-rkl:          [SKIP][403] ([i915#14498] / [i915#14544]) -> [SKIP][404] ([i915#14498])
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-idle.html
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [INCOMPLETE][405] ([i915#13729] / [i915#13821]) -> [INCOMPLETE][406] ([i915#13821])
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-snb4/igt@i915_pm_rps@reset.html
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-snb7/igt@i915_pm_rps@reset.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-rkl:          [SKIP][407] ([i915#14544] / [i915#6245]) -> [SKIP][408] ([i915#6245])
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@i915_query@hwconfig_table.html
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@i915_query@hwconfig_table.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
>     - shard-rkl:          [SKIP][409] ([i915#5286]) -> [SKIP][410] ([i915#14544]) +1 other test skip
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
>     - shard-rkl:          [SKIP][411] ([i915#14544]) -> [SKIP][412] ([i915#5286]) +5 other tests skip
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-dg1:          [SKIP][413] ([i915#4538] / [i915#5286]) -> [SKIP][414] ([i915#4423] / [i915#4538] / [i915#5286])
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-dg1-13/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-14/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-90:
>     - shard-rkl:          [SKIP][415] ([i915#14544]) -> [SKIP][416] ([i915#3638]) +4 other tests skip
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-90.html
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_big_fb@linear-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb:
>     - shard-rkl:          [SKIP][417] -> [SKIP][418] ([i915#14544]) +7 other tests skip
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@kms_big_fb@yf-tiled-addfb.html
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_big_fb@yf-tiled-addfb.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-dg1:          [SKIP][419] ([i915#4538]) -> [SKIP][420] ([i915#4423] / [i915#4538])
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-dg1-15/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:
>     - shard-rkl:          [SKIP][421] ([i915#14098] / [i915#6095]) -> [SKIP][422] ([i915#14544]) +4 other tests skip
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:
>     - shard-dg1:          [SKIP][423] ([i915#4423] / [i915#6095]) -> [SKIP][424] ([i915#6095])
>    [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-dg1-17/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html
>    [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-12/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][425] ([i915#14098] / [i915#6095]) -> [SKIP][426] ([i915#6095]) +2 other tests skip
>    [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-2.html
>    [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs:
>     - shard-rkl:          [SKIP][427] ([i915#14544]) -> [SKIP][428] ([i915#14098] / [i915#6095]) +15 other tests skip
>    [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs.html
>    [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][429] ([i915#6095]) -> [SKIP][430] ([i915#14098] / [i915#6095]) +5 other tests skip
>    [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2.html
>    [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-5/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-read:
>     - shard-rkl:          [SKIP][431] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][432] ([i915#11151] / [i915#7828]) +8 other tests skip
>    [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-read.html
>    [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_chamelium_edid@hdmi-edid-read.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd:
>     - shard-rkl:          [SKIP][433] ([i915#11151] / [i915#7828]) -> [SKIP][434] ([i915#11151] / [i915#14544] / [i915#7828]) +1 other test skip
>    [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@kms_chamelium_hpd@hdmi-hpd.html
>    [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-hpd.html
> 
>   * igt@kms_color@deep-color:
>     - shard-rkl:          [SKIP][435] ([i915#12655] / [i915#14544] / [i915#3555]) -> [SKIP][436] ([i915#12655] / [i915#3555])
>    [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_color@deep-color.html
>    [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_color@deep-color.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-dg2:          [FAIL][437] ([i915#7173]) -> [SKIP][438] ([i915#7118] / [i915#9424])
>    [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html
>    [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-4/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-rkl:          [SKIP][439] ([i915#14544]) -> [SKIP][440] ([i915#3116]) +1 other test skip
>    [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0.html
>    [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-dg2:          [SKIP][441] ([i915#9424]) -> [FAIL][442] ([i915#7173])
>    [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-dg2-5/igt@kms_content_protection@lic-type-0.html
>    [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-11/igt@kms_content_protection@lic-type-0.html
>     - shard-rkl:          [SKIP][443] ([i915#9424]) -> [SKIP][444] ([i915#14544])
>    [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@kms_content_protection@lic-type-0.html
>    [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-rkl:          [SKIP][445] ([i915#14544]) -> [SKIP][446] ([i915#9424])
>    [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_content_protection@lic-type-1.html
>    [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg1:          [SKIP][447] ([i915#9424]) -> [SKIP][448] ([i915#9433])
>    [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-dg1-19/igt@kms_content_protection@mei-interface.html
>    [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-13/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2:          [FAIL][449] ([i915#7173]) -> [SKIP][450] ([i915#7118])
>    [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-dg2-11/igt@kms_content_protection@srm.html
>    [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-1/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>     - shard-rkl:          [SKIP][451] ([i915#14544]) -> [SKIP][452] ([i915#13049])
>    [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-512x170.html
>    [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-64x21:
>     - shard-rkl:          [SKIP][453] ([i915#14544]) -> [FAIL][454] ([i915#13566])
>    [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-64x21.html
>    [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-64x21.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-rkl:          [SKIP][455] ([i915#13049]) -> [SKIP][456] ([i915#14544])
>    [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@kms_cursor_crc@cursor-random-512x512.html
>    [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-rkl:          [SKIP][457] ([i915#14544]) -> [SKIP][458] ([i915#3555]) +2 other tests skip
>    [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
>    [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-suspend:
>     - shard-rkl:          [ABORT][459] ([i915#15132]) -> [SKIP][460] ([i915#14544])
>    [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-4/igt@kms_cursor_crc@cursor-suspend.html
>    [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_cursor_crc@cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-rkl:          [SKIP][461] ([i915#14544]) -> [SKIP][462] ([i915#4103])
>    [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
>    [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-rkl:          [SKIP][463] ([i915#3840]) -> [SKIP][464] ([i915#14544])
>    [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@kms_dsc@dsc-fractional-bpp.html
>    [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-rkl:          [SKIP][465] ([i915#14544]) -> [SKIP][466] ([i915#3555] / [i915#3840])
>    [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_dsc@dsc-with-bpc.html
>    [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-rkl:          [SKIP][467] ([i915#14544]) -> [SKIP][468] ([i915#3840] / [i915#9053])
>    [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
>    [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_feature_discovery@display-3x:
>     - shard-rkl:          [SKIP][469] ([i915#14544] / [i915#1839]) -> [SKIP][470] ([i915#1839])
>    [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_feature_discovery@display-3x.html
>    [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_feature_discovery@display-3x.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-rkl:          [SKIP][471] ([i915#14544] / [i915#658]) -> [SKIP][472] ([i915#658])
>    [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_feature_discovery@psr2.html
>    [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
>     - shard-rkl:          [SKIP][473] ([i915#14544] / [i915#9934]) -> [SKIP][474] ([i915#9934]) +6 other tests skip
>    [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html
>    [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check:
>     - shard-rkl:          [SKIP][475] ([i915#9934]) -> [SKIP][476] ([i915#14544] / [i915#9934]) +1 other test skip
>    [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-3/igt@kms_flip@2x-wf_vblank-ts-check.html
>    [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_flip@2x-wf_vblank-ts-check.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:
>     - shard-rkl:          [SKIP][477] ([i915#2672] / [i915#3555]) -> [SKIP][478] ([i915#14544] / [i915#3555])
>    [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html
>    [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
>     - shard-rkl:          [SKIP][479] ([i915#14544] / [i915#3555]) -> [SKIP][480] ([i915#2672] / [i915#3555]) +3 other tests skip
>    [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html
>    [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-rkl:          [SKIP][481] ([i915#5439]) -> [SKIP][482] ([i915#14544] / [i915#1849] / [i915#5354])
>    [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
>    [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][483] ([i915#14544]) -> [SKIP][484] ([i915#15102]) +5 other tests skip
>    [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
>    [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render:
>     - shard-dg1:          [SKIP][485] ([i915#15102]) -> [SKIP][486] ([i915#15102] / [i915#4423])
>    [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render.html
>    [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt:
>     - shard-rkl:          [SKIP][487] ([i915#1825]) -> [SKIP][488] ([i915#14544] / [i915#1849] / [i915#5354]) +8 other tests skip
>    [487]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt.html
>    [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>     - shard-rkl:          [SKIP][489] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][490] ([i915#15102] / [i915#3023]) +16 other tests skip
>    [489]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
>    [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
>     - shard-dg2:          [SKIP][491] ([i915#15102] / [i915#3458]) -> [SKIP][492] ([i915#10433] / [i915#15102] / [i915#3458])
>    [491]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
>    [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>     - shard-dg2:          [SKIP][493] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][494] ([i915#15102] / [i915#3458]) +2 other tests skip
>    [493]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
>    [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-cpu:
>     - shard-rkl:          [SKIP][495] ([i915#15102]) -> [SKIP][496] ([i915#14544])
>    [495]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-cpu.html
>    [496]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:
>     - shard-rkl:          [SKIP][497] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][498] ([i915#1825]) +33 other tests skip
>    [497]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html
>    [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-rkl:          [SKIP][499] ([i915#15102] / [i915#3023]) -> [SKIP][500] ([i915#14544] / [i915#1849] / [i915#5354]) +7 other tests skip
>    [499]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-suspend.html
>    [500]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-rkl:          [SKIP][501] ([i915#14544]) -> [SKIP][502] ([i915#3555] / [i915#8228]) +1 other test skip
>    [501]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_hdr@invalid-metadata-sizes.html
>    [502]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-rkl:          [SKIP][503] ([i915#12394]) -> [SKIP][504] ([i915#12394] / [i915#14544])
>    [503]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@kms_joiner@basic-force-ultra-joiner.html
>    [504]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_joiner@basic-force-ultra-joiner.html
> 
>   * igt@kms_joiner@basic-max-non-joiner:
>     - shard-rkl:          [SKIP][505] ([i915#13688] / [i915#14544]) -> [SKIP][506] ([i915#13688])
>    [505]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_joiner@basic-max-non-joiner.html
>    [506]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_joiner@basic-max-non-joiner.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][507] ([i915#14544] / [i915#4070] / [i915#4816]) -> [SKIP][508] ([i915#4070] / [i915#4816])
>    [507]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [508]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_pipe_stress@stress-xrgb8888-yftiled:
>     - shard-rkl:          [SKIP][509] ([i915#14712]) -> [SKIP][510] ([i915#14544])
>    [509]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html
>    [510]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html
> 
>   * igt@kms_plane_multiple@2x-tiling-none:
>     - shard-rkl:          [SKIP][511] ([i915#14544]) -> [SKIP][512] ([i915#13958]) +1 other test skip
>    [511]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-none.html
>    [512]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-none.html
> 
>   * igt@kms_plane_multiple@2x-tiling-y:
>     - shard-rkl:          [SKIP][513] ([i915#13958]) -> [SKIP][514] ([i915#14544])
>    [513]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@kms_plane_multiple@2x-tiling-y.html
>    [514]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-y.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a:
>     - shard-rkl:          [SKIP][515] ([i915#12247] / [i915#14544]) -> [SKIP][516] ([i915#12247]) +1 other test skip
>    [515]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a.html
>    [516]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
>     - shard-rkl:          [SKIP][517] ([i915#3555]) -> [SKIP][518] ([i915#14544] / [i915#3555] / [i915#8152])
>    [517]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
>    [518]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a:
>     - shard-rkl:          [SKIP][519] ([i915#12247]) -> [SKIP][520] ([i915#12247] / [i915#14544])
>    [519]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html
>    [520]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
>     - shard-rkl:          [SKIP][521] ([i915#12247]) -> [SKIP][522] ([i915#12247] / [i915#14544] / [i915#8152])
>    [521]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html
>    [522]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-b:
>     - shard-rkl:          [SKIP][523] ([i915#12247] / [i915#14544] / [i915#8152]) -> [SKIP][524] ([i915#12247]) +3 other tests skip
>    [523]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-b.html
>    [524]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-b.html
> 
>   * igt@kms_pm_backlight@bad-brightness:
>     - shard-rkl:          [SKIP][525] ([i915#14544] / [i915#5354]) -> [SKIP][526] ([i915#5354]) +1 other test skip
>    [525]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_pm_backlight@bad-brightness.html
>    [526]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_pm_backlight@bad-brightness.html
> 
>   * igt@kms_pm_dc@dc5-psr:
>     - shard-rkl:          [SKIP][527] ([i915#14544] / [i915#9685]) -> [SKIP][528] ([i915#9685])
>    [527]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_pm_dc@dc5-psr.html
>    [528]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_pm_dc@dc5-psr.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-rkl:          [SKIP][529] ([i915#4281]) -> [SKIP][530] ([i915#14544] / [i915#4281])
>    [529]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html
>    [530]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          [SKIP][531] ([i915#3828]) -> [SKIP][532] ([i915#9340])
>    [531]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html
>    [532]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-rkl:          [SKIP][533] ([i915#15073]) -> [SKIP][534] ([i915#14544] / [i915#15073])
>    [533]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
>    [534]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-rkl:          [SKIP][535] ([i915#14544] / [i915#15073]) -> [SKIP][536] ([i915#15073])
>    [535]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [536]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@pm-tiling:
>     - shard-dg1:          [SKIP][537] ([i915#4077] / [i915#4423]) -> [SKIP][538] ([i915#4077])
>    [537]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-dg1-18/igt@kms_pm_rpm@pm-tiling.html
>    [538]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-13/igt@kms_pm_rpm@pm-tiling.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-rkl:          [SKIP][539] ([i915#11520]) -> [SKIP][540] ([i915#11520] / [i915#14544]) +1 other test skip
>    [539]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html
>    [540]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
>     - shard-rkl:          [SKIP][541] ([i915#11520] / [i915#14544]) -> [SKIP][542] ([i915#11520]) +7 other tests skip
>    [541]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html
>    [542]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-rkl:          [SKIP][543] ([i915#9683]) -> [SKIP][544] ([i915#14544] / [i915#9683])
>    [543]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-3/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>    [544]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@fbc-psr-primary-mmap-gtt:
>     - shard-rkl:          [SKIP][545] ([i915#1072] / [i915#9732]) -> [SKIP][546] ([i915#1072] / [i915#14544] / [i915#9732]) +9 other tests skip
>    [545]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-4/igt@kms_psr@fbc-psr-primary-mmap-gtt.html
>    [546]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_psr@fbc-psr-primary-mmap-gtt.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-render:
>     - shard-rkl:          [SKIP][547] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][548] ([i915#1072] / [i915#9732]) +20 other tests skip
>    [547]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html
>    [548]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@kms_psr@fbc-psr2-sprite-render.html
> 
>   * igt@kms_psr@pr-dpms:
>     - shard-dg1:          [SKIP][549] ([i915#1072] / [i915#9732]) -> [SKIP][550] ([i915#1072] / [i915#4423] / [i915#9732])
>    [549]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-dg1-15/igt@kms_psr@pr-dpms.html
>    [550]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-dg1-19/igt@kms_psr@pr-dpms.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-rkl:          [SKIP][551] ([i915#14544]) -> [SKIP][552] ([i915#5289]) +1 other test skip
>    [551]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
>    [552]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_setmode@clone-exclusive-crtc:
>     - shard-rkl:          [SKIP][553] ([i915#14544] / [i915#3555]) -> [SKIP][554] ([i915#3555])
>    [553]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_setmode@clone-exclusive-crtc.html
>    [554]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_setmode@clone-exclusive-crtc.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-rkl:          [SKIP][555] ([i915#8623]) -> [SKIP][556] ([i915#14544])
>    [555]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@kms_tiled_display@basic-test-pattern.html
>    [556]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-rkl:          [SKIP][557] ([i915#14544]) -> [SKIP][558] ([i915#8623])
>    [557]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
>    [558]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_vrr@flip-suspend:
>     - shard-rkl:          [SKIP][559] ([i915#3555]) -> [SKIP][560] ([i915#14544]) +1 other test skip
>    [559]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-8/igt@kms_vrr@flip-suspend.html
>    [560]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_vrr@flip-suspend.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-rkl:          [SKIP][561] ([i915#14544] / [i915#2437]) -> [SKIP][562] ([i915#2437])
>    [561]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@kms_writeback@writeback-check-output.html
>    [562]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-rkl:          [SKIP][563] ([i915#2437]) -> [SKIP][564] ([i915#14544] / [i915#2437])
>    [563]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-5/igt@kms_writeback@writeback-invalid-parameters.html
>    [564]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-6/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-rkl:          [SKIP][565] ([i915#14544] / [i915#2436]) -> [SKIP][566] ([i915#2436])
>    [565]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html
>    [566]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf@per-context-mode-unprivileged:
>     - shard-rkl:          [SKIP][567] ([i915#14544] / [i915#2435]) -> [SKIP][568] ([i915#2435])
>    [567]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@perf@per-context-mode-unprivileged.html
>    [568]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-8/igt@perf@per-context-mode-unprivileged.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-rkl:          [SKIP][569] ([i915#14544] / [i915#3291] / [i915#3708]) -> [SKIP][570] ([i915#3291] / [i915#3708])
>    [569]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@prime_vgem@basic-write.html
>    [570]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@prime_vgem@basic-write.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-rkl:          [SKIP][571] ([i915#14544]) -> [SKIP][572] +15 other tests skip
>    [571]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17475/shard-rkl-6/igt@tools_test@sysfs_l3_parity.html
>    [572]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/shard-rkl-2/igt@tools_test@sysfs_l3_parity.html
> 
>   
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538
>   [i915#10553]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11521]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
>   [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
>   [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
>   [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
>   [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
>   [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
>   [i915#12549]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12549
>   [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
>   [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13729]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13729
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14001]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14001
>   [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14470]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14470
>   [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14561
>   [i915#14600]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600
>   [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
>   [i915#14809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14809
>   [i915#14857]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14857
>   [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
>   [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
>   [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
>   [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
>   [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
>   [i915#15172]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15172
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
>   [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
>   [i915#2435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
>   [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
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
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
>   [i915#6806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6806
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
>   [i915#7443]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443
>   [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
>   [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>   [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
>   [i915#8826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826
>   [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
>   [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_17475 -> Patchwork_155067v7
> 
>   CI-20190529: 20190529
>   CI_DRM_17475: 0a7f6a2acbba2432dd22f7404d48cdd3a1c555e9 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8605: 8605
>   Patchwork_155067v7: 0a7f6a2acbba2432dd22f7404d48cdd3a1c555e9 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v7/index.html
