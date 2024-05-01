Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 456E58B844A
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2024 04:19:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2F08112FF1;
	Wed,  1 May 2024 02:19:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PgleJfZ5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5958112FF1
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2024 02:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714529986; x=1746065986;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lDW47PDZ/FHVuquw53F9+H61H27QJ5izJfW3RwPUcLQ=;
 b=PgleJfZ52pX/drtQDuDnx1m1/54S+6qGm3Rsoum+sQ3cFkaC/jEnSWz1
 Au2MRnMSiSIRO+jGTpeOqQ4qM1eYGGSrLb3XwYBfO3BL0DUpM78TncC+p
 ZsPkgQACpgALCvWjrELtwZpZDt+3wvrEgz8gDL/3wnq0mvxLdblx/PscI
 XRrv1dbY/cPGecPyhyCNs63d802j2DL61ZWbp/v0FWKF0SMQ8Uo+Xw1p5
 DDCmwsTBdmcb1GOO8ysb822hp+HjJRIUR+ZdFO+Agi/Pu/NXYHjcDf6oI
 3ymt5kqFzcmaUfdUndR2OoZf/MXrr9qPJ9AbL6xTYm/IlNMALnCOYb+eU w==;
X-CSE-ConnectionGUID: joK2Q76YRkeXrQ1RUx3voA==
X-CSE-MsgGUID: roMgwTaYQm+B3un4n60Nkg==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="10483747"
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="10483747"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 19:19:45 -0700
X-CSE-ConnectionGUID: gsbrseENRUuhugt6PRQyCQ==
X-CSE-MsgGUID: MhiSCnyCTXa8fiPDDQ69FA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="31485868"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Apr 2024 19:19:45 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:19:44 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Apr 2024 19:19:44 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Apr 2024 19:19:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M/SYYW30fpgMLRh8cvIb9fZSl8DvhPme1QwGTjL5R8Znlk2bCwQehmGlEuliwUneLklHc8+tUOr6TN8aa+MueY/CchX+lL+NEX3bzQSfRVjwAmuYsqp+nmbxG/2LoJrdhEzyjq5ARZoACQq05xRioDiSxiJphfv0hEH/Va2exb7soyIx3WASvGpshOAqmbqwmAxc4O0KXplCY3eiDslNqc6WY0+uRkpPJ7ZBhYjgRaFFo1+TzFdlHqAiE9LKyfEPaO8UMR7XbILcfCK/XoxGvvGC/17INxboxhGh3GgvZ5WoCdJZFJ/Zv34PgXBFBvmjim0ZpSPu8/QlS14qDh0GTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sXYSOHVD6rKLfqC/IMsm9nWv/wn5fiMmVwZuf1VgI1E=;
 b=fCS8z9JgMKsufql535ZCJcWo0SPyideK1pWawTYzGQOVoSoawnSM9z4WNceETDrFZabvHy3qfyPnqubh1ed3guIeuXf+VTThWmbUOoI6QyXOkdtQzFuS169+nO6w1eCBLOyOGleQBbCtDhRD225WifeYc5xv4Hg2BNVClvMUpq/HY0bJD/I8rRhIjA2kc5QVM/lD2Di8keHHErD2E3aRzC8YiN2y7KXkA+OU72809+6fpdkLCVs7z47SqKRlNp3kBsb445JAx9/Kta8KsGpk2h8g34xUhCJQFSvznA7/bUbK+/P7X3OkkdcfC99+1SFGE1Qonig1JTJ9czx9bYmWaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA3PR11MB7653.namprd11.prod.outlook.com (2603:10b6:806:306::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Wed, 1 May
 2024 02:19:42 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Wed, 1 May 2024
 02:19:42 +0000
Date: Tue, 30 Apr 2024 22:19:38 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jouni.hogander@intel.com>
Subject: Re: [PATCH 08/19] drm/i915: pass dev_priv explicitly to
 EDP_PSR_PERF_CNT
Message-ID: <ZjGmuhIfyH7XIN2n@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
 <21805960967ab88c1418037b98fe3e051eb00608.1714471597.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <21805960967ab88c1418037b98fe3e051eb00608.1714471597.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR13CA0030.namprd13.prod.outlook.com
 (2603:10b6:a03:180::43) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA3PR11MB7653:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e0b19e9-e68c-4d83-0cdd-08dc69852904
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?bY2FUv3QTGjsQbjs2GlR+XQ4dGdPkfXsx54bjWVcF69KPCIJt/2Ysx9yZh81?=
 =?us-ascii?Q?AQTLxzHjI3r60hqVfSj1Rikpq1rFQ2YhdUQfYjw4XVtHh1fZrDpUAAp3xFHv?=
 =?us-ascii?Q?ivRSI+vTUiyTefJa1QYX31cSLyCtb2h8Smaali//IiCk27Ek+bLRkM9bYtxf?=
 =?us-ascii?Q?DSPH2oLT/eanyZVzKr1WRWux80JMH7GGu7pljaqXP6RdN9dgrlSt8rw846w+?=
 =?us-ascii?Q?HmZdgIxJP7MiPjeY3pL0IM/RAoo2ntHBykAZUlGniLP9qzz6Vn3OgHkwCA1O?=
 =?us-ascii?Q?aJSojrazd7+5F4GkH2X1U6uD6UnF2D0jm2ZRlgZbtLZKJaucT39t8COuS4De?=
 =?us-ascii?Q?Cli+nFc+3k9siszEoVnY1EMA5uMvWL9ZG6E2q7Jril4HqoTHGWmutfDLVEoN?=
 =?us-ascii?Q?0E68abXFFICNfMFAm3QvEc1UDu2WjOmj95eOIsri11EhqXYtup2igq0iJa4K?=
 =?us-ascii?Q?vOvkXZPHKUEpHYcyRRJd36mcZfnLbK/ISiKQD6X1MLcMFW8C0x4Kzm1BnsON?=
 =?us-ascii?Q?z6sjzGjRrUS8VUFxXolCzoEfI8lKbBQ4Z0EhOan/TP4pzBCjo7UBw46eEM0A?=
 =?us-ascii?Q?mWcIWqXF3Nz0J02oNEyljgCH4rDbbTuh9uVL8SFwWd43xvgD2Vu4YFmlrCmt?=
 =?us-ascii?Q?gRO2Om17Cq5n+boabDpAVbMz7V3C+YflkQa44N7vz3VK7eED0AR7sRYIiI1Z?=
 =?us-ascii?Q?qAzmumyILDgh3X4k21Iz+WESjSsNxjnuwkYOqoK6xnfSqEIVA38lEj2NnwmX?=
 =?us-ascii?Q?+vsQfRVCSlsTUop53wzISKbRbqzlkY8nr0JSFlcc9uBTTy//Pv45FDV3MEnh?=
 =?us-ascii?Q?Glufo92mN0mqrD1z588Je71uJmiOHBhSqCSsJbsjmz4E1/g3nlST8bLzdLv0?=
 =?us-ascii?Q?T6tlJKysMvSXLKqixSrgaiL4ArgGlTPcplgFJC9MXubcly3+yevx9QRHL8HY?=
 =?us-ascii?Q?jezXwI1pT3N+2DuK0yCx5Th0t+Fc9kimk26r/ZSwgYosKdRSK88JTXbd/Uv7?=
 =?us-ascii?Q?5OUgIiyNgxO2bk9N0bONVcUvMRPetW9KMKBgTBaxEeZ9cPEtZO/QlgesJEOl?=
 =?us-ascii?Q?SnKqg/iQ0t+XRDZPecW26hQyB+U9ypIXjqzFyemCS7gxhP9iCv7toRm/b9n7?=
 =?us-ascii?Q?QP03q0/SH1DbWsC34sldCDmKZiKft69GTKvdzg6NM0auM/aHqiZFFHEw4uTx?=
 =?us-ascii?Q?9W/L5PJ7RIf5di340fkCZOq6TNvTDhRCvT5Qg2yfjkl7ThBzUP+iSk0m0fDU?=
 =?us-ascii?Q?GLzl9PiU3bBBWpDFiukPO9C2PoiV/Yu9FOunodzMew=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Bzy/9a7gtL5g1B6LdgNgNKrP7s+ogIQXfcECL7cdND0eSrwh4Q9Z/oMs7Gmm?=
 =?us-ascii?Q?y+g/Su4e/qNSRD80c5cvXaexs9VvMXLsrtnsEc2gQ48YXJU88nq1xGaZICks?=
 =?us-ascii?Q?Xd8OqjJUaa+nA30m2ykX1Ic/yQSks6jv7XreAxqygLeOtiq2wWUf135sY4FD?=
 =?us-ascii?Q?MfisSSAsyqucr5dqvA2H657QjkIt550LyoGQNRp50qBKALgLqpYRecN+dVse?=
 =?us-ascii?Q?eW7mXRF3IbmahpfFjRn+pvpqro0ba2kkQ+cN/Yxy9G1OMzlzFthHNELAn9Jq?=
 =?us-ascii?Q?ER89TPxL+qmbyEeU4Qcb26tqqIrNtS1CJ1RWWMxXUqDA9yM9tFA1nB5Od+Hn?=
 =?us-ascii?Q?9YaMOse8KNthbMC5mvQPCBFxVeB/9r3wZmZ0WN/oPlTBLfqwWNNgvKtxoVH1?=
 =?us-ascii?Q?w4gW0MybFqxC4J8C8YLeftHUweX0tPrOIq1wd9183fOM158LGuWitgDGvY9/?=
 =?us-ascii?Q?B/Um4EoilZHnWVH83gAhYgDSnG2ejUcQlXqyy4N7JcCUZROQYkfI59hdrubS?=
 =?us-ascii?Q?xTEaqB/Xt1Ugm+mJJeI6YxVhM9IxidiorOR5g/CcI47ppgPX00ELGdYiF/uN?=
 =?us-ascii?Q?t8fVvhFf92hTjA3FtnrPdJDoHIfaDSVhIbpOjHwkueDCXicbrQt3EYxOf/2t?=
 =?us-ascii?Q?xzzygVtUnPnU3P2k+H1rYiqRntE5zRkSKcpqcbV/1jLsxZJl/ysWG2NnwZQx?=
 =?us-ascii?Q?wzRWG1PbDLBWG8elAt+YIIfSriCWBeqNBfaQAgLEwn3Em+kDJCNB75fAu2YN?=
 =?us-ascii?Q?utMNFBsBNc3u7OCcXc7M4dz4isxcZXyb0o4ccJRfuZAnXDKrL6O1fIJ1U/VQ?=
 =?us-ascii?Q?YsUbQUeSYCVrZYBgLb9ILRzdBD92J/GM/J8BHdUQodDK7qbokKag8sZXp9+X?=
 =?us-ascii?Q?yQ2dB3VG3aX9pgstyiK4V9vdG+hjHqpIqQ1OKNL2+pLpkw1sod0BK3dP4Ifj?=
 =?us-ascii?Q?CBTGCqZpi4tmXinRbsmrnHS1Rhy01RUfhX8Y0h70NEArUD7HB+D8SC0FKbGG?=
 =?us-ascii?Q?5n07dKcSJ7jYMTKaiBSaUlkWgErEG6nvx+EIcfn6w9gkSwqpNmin9tRVX2qc?=
 =?us-ascii?Q?IKvoLzwFIIQjYHiGwKW12bIyEFPPJROoL9ixUnPOIZ5+plalGTIHWn2pC3bh?=
 =?us-ascii?Q?GPsvrOYhl4+B4JKV3f02VYg5n96E1Hjfw1IO94z0hqFwSPzVMHaJ969xbUZp?=
 =?us-ascii?Q?RHHt5VgiLztG0J5NWGiYu2Wv/7dH2f9ON/egOgaUAUZC2OvL6+GxY9n0fAxs?=
 =?us-ascii?Q?ayIaAFNQ85+zqjvfQswb474VFhxrD+O/Do3QTiNBrjPMzuwNzCYk4rqZW3p1?=
 =?us-ascii?Q?9QeZtoop1wUTWA61K79hm1OUfH9H3y6oZdqz85jHCN3cceAVnUuNAGyRwzw+?=
 =?us-ascii?Q?Xlkt5gWimglDM0ISXu0JZYLw3xpxXVvqd4fJ0texKz2Qk2N/gJdc1DBzorzt?=
 =?us-ascii?Q?TSmAyrHTS79mELjsV8vj6RamVssP3CF0QqT6HLOXKDnMVf3f8qW5HnsQlPNV?=
 =?us-ascii?Q?cvTkyjYENvCb85BT05afHnxrxMIVvVNZjd3NwvXp2/Nk9v6Lef9EH4UrioC4?=
 =?us-ascii?Q?xAMReptsF8t1+rlRG0Jtp3mlNEd5qfQd8KLeQWOgGhCbeIiHwqmSkmx4m4Jm?=
 =?us-ascii?Q?bg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e0b19e9-e68c-4d83-0cdd-08dc69852904
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2024 02:19:42.1157 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7+YVbMQsGCHyKBc9wPE+y/xQ9pSpfd7EtekK3VgPGsLu9rTK6ROQzOOp/xUewxmcNbwQgNW8AJp8i4HxBcy3WA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7653
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

On Tue, Apr 30, 2024 at 01:10:02PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the EDP_PSR_PERF_CNT register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c      | 2 +-
>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 1a52a69e1906..162dd07c243f 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -287,7 +287,7 @@ static i915_reg_t psr_perf_cnt_reg(struct drm_i915_private *dev_priv,
>  				   enum transcoder cpu_transcoder)
>  {
>  	if (DISPLAY_VER(dev_priv) >= 8)
> -		return EDP_PSR_PERF_CNT(cpu_transcoder);
> +		return EDP_PSR_PERF_CNT(dev_priv, cpu_transcoder);
>  	else
>  		return HSW_SRD_PERF_CNT;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index 4f3e58076a48..ef7f32c98d55 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -126,7 +126,7 @@
>  #define HSW_SRD_PERF_CNT		_MMIO(0x64844)
>  #define _SRD_PERF_CNT_A			0x60844
>  #define _SRD_PERF_CNT_EDP		0x6f844
> -#define EDP_PSR_PERF_CNT(tran)		_MMIO_TRANS2(dev_priv, tran, _SRD_PERF_CNT_A)
> +#define EDP_PSR_PERF_CNT(dev_priv, tran)		_MMIO_TRANS2(dev_priv, tran, _SRD_PERF_CNT_A)
>  #define   EDP_PSR_PERF_CNT_MASK		REG_GENMASK(23, 0)
>  
>  /* PSR_MASK on SKL+ */
> -- 
> 2.39.2
> 
