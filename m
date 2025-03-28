Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E5AA7527E
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Mar 2025 23:30:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C51B10EAC4;
	Fri, 28 Mar 2025 22:30:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g3f+OIrQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D724710EAC4;
 Fri, 28 Mar 2025 22:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743201007; x=1774737007;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=LRf8zSQLmf3ShMEBa6L4QjT7ysPXQYMasEJALM1UrY0=;
 b=g3f+OIrQqb2SZV5of67tol6ko7kAnxl100YiUlvAP1ItxiQSJ5BRqOYf
 F4K/jMT5JwCf1SRgA+m1vaXQkbcvZ+yYQ/8ItEjVFPRegE3VN0WoNuy5N
 qD427Juc769HNRu5S3JU0j1WfYUCiGqVLqNPHedUCubjrzBdTZ7sK2cbv
 bsixh9s2pP8fP1jTZ7gaKeJoGGaU5nXoYI57dNwrNymQo3OtqT8KSDlgR
 zfQmcRVxLnThOqiZabMPWcRQ6hZwsnMSf8lKM0L9jwfJA1PvGlSCKv/9r
 tqZaeDQQWFUqAPjrHJYP8K53Vtk6nQ/+7p9HrZfd7zMnC740c1o6drOMz A==;
X-CSE-ConnectionGUID: HZa+J29YQR6UC3PSSVanbA==
X-CSE-MsgGUID: r3oBOjVER3CLN8dO/F4L0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11387"; a="69938856"
X-IronPort-AV: E=Sophos;i="6.14,284,1736841600"; d="scan'208";a="69938856"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 15:30:07 -0700
X-CSE-ConnectionGUID: 0ENE/lvRQAym5GvETHmKDw==
X-CSE-MsgGUID: M6wRQLcHR92dYk7hKJwbyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,284,1736841600"; d="scan'208";a="148742174"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 15:30:06 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 28 Mar 2025 15:30:06 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 28 Mar 2025 15:30:05 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 28 Mar 2025 15:30:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cuAls98uGs41MowjExoSFSKu0PZYvuNlfHYfQddGn5PEH6KcqmhH7+REt4rUQaCHnne0y1zqMyXcIBzUHRroYRneCOUh0M+sbUFjn841VDtrp8T9rSqJsVxAVARPYNgUW2VFVWbz2bJLROdtStCu2C/MJKhsXfeLkFpO1sPVzTMWfXcYx3W9Xahjn5fYTs3EUvIIdP5gJhwrp+CCyUqIqQb+jdijPlqAZdMAcqYST8zGEdlXap7OntJg50ZHfmgueyjjiqwCYvi54ilEsBAHx0CcynuqDmFsBc4k/MRHCPLtCw/Go5Wi1ET2IyrFkWV1Rw9gC+DOD5Vh3R7PO/wBlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BMt9h/NFkRbFNHATmFru+6wigdIHXx0og4Tjox/ib8s=;
 b=N18RzTkqy3q36nKwHQzjnBrRya8+tgj491rQLzRabU//C9LFB4JhZkvjJiD5ZgNuD7oP/xvAOsSBq5cR4bN2grlGDgQab/nzEqZmE4Ugu3ZBuLUINPmFh191iZR+kPMxhqFa0x12cYEL1DgPMP9ebvnxsGaX2A/hvEd9DFp0G3kqCvWwYOXkiXwQ+hDsQ0S0+oTCcxPh9Bc7GXNPG+Jg/dS8gsivg+QhhtgS0h/Skd/b04whfywUO7veiE1y7cyOYZTD2JwLPSTrTRs3PbsIc3QhToPW6wEMwe23Tt06qZS5GBMvoY/AcxrAXWKDOICfNjzExRyPSD7gsM7XG4FOsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA4PR11MB9034.namprd11.prod.outlook.com (2603:10b6:208:567::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Fri, 28 Mar
 2025 22:29:50 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8534.043; Fri, 28 Mar 2025
 22:29:50 +0000
Date: Fri, 28 Mar 2025 15:29:47 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 2/2] drm/i915/dram: Consolidate logging of DRAM type
Message-ID: <20250328222947.GL1439735@mdroper-desk1.amr.corp.intel.com>
References: <20250324-dram-type-v1-0-bf60ef33ac01@intel.com>
 <20250324-dram-type-v1-2-bf60ef33ac01@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250324-dram-type-v1-2-bf60ef33ac01@intel.com>
X-ClientProxiedBy: BYAPR08CA0037.namprd08.prod.outlook.com
 (2603:10b6:a03:117::14) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA4PR11MB9034:EE_
X-MS-Office365-Filtering-Correlation-Id: f9f6a387-af6b-48b6-ca3f-08dd6e480dad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?XlsbcXXIvS2fTwVbKivfxDJcZh5gggxxZUfqphjr6/PI7zePK4DgRUH9vEhM?=
 =?us-ascii?Q?u19lczgXNlYHAVJFQXUYoTSVO6EjvwhTgKHxyCfdwRwB+e334MDCvLpgyINt?=
 =?us-ascii?Q?FJCq/1I2cSvI5xvEuGg1C13oMVg0WAXHpcGZQsAqohZM4wlzhwwFj2bMkp7w?=
 =?us-ascii?Q?+DIiaPmfhvas8U/Cdi12tVvgpIaVn4t3V+ov/re/Tf6G+v6926oWLOSD4nQx?=
 =?us-ascii?Q?scV8Uaq/6pI+q0Wzf5XjM6CQYy3mWsqTLUj9BdRojlOY09l40PRKe3bm4cV0?=
 =?us-ascii?Q?fz5BWEeCC1C1/Zw4X027vzDj9CuGoKc26rJyEWq3uVRBJ85Cd/ceBWfA/Yyg?=
 =?us-ascii?Q?ND0Eye7NbxVMcxQstLbBU+brL1LsPHQ+RX6ve73WlWRMbZgkQemtiZEh3aE+?=
 =?us-ascii?Q?SJ3DfjrUOMovcmJKPH0kbXpdjOpzkedL6iYEaizMEK7ZNVGQKlTBpPdNcZyT?=
 =?us-ascii?Q?w4UKRgGAM77P3JUNN/+lr12N//St261xi26jkbjAlVEnMfw/6J4pUMoh0lzD?=
 =?us-ascii?Q?klAR1Q+OfDWoyf4HF73GMsJIJEvgCmyWj6J2o3AtF2iRkJRH2NfpjeYZUsSq?=
 =?us-ascii?Q?GC8LhUQokrH3uB74paB2v6uIgnuNuwJo+ENgn1XIs4vPXTKrVyxnY7hptl0B?=
 =?us-ascii?Q?Tr7B4UT4/lCXV1U/vswFziLcxyM7n0IC5FwhSSXCSvGxFhx4kUrcVFdGMhkX?=
 =?us-ascii?Q?VumbT5TJC+k8R2cuoQGCTAuE4opxRNZxLSL5W9Q1fDEzS6eDl9g8KjSoD0Lp?=
 =?us-ascii?Q?LnUKp7eFj2R23rihyPAYlB7zWsMqwtVJdm16CK792l0Ih54bEk19gU3GaVIv?=
 =?us-ascii?Q?Dkq7+ZXWr0J/wOzL/m2Pnsrxqbb/RTi2+oRSZoxwWYUiQ7KcHDUl9iFg3dd+?=
 =?us-ascii?Q?aMghSmNYEUUm6duXGIO1XRgjO9Rx2GHqhPxuxC2lyWH1f9j81vmXgJh4IeiE?=
 =?us-ascii?Q?rVL7kwCYbsTEB+moFfl6G5i2ESVVGeM5d/hcxnvijlANxUT1skOSj6KYVM7c?=
 =?us-ascii?Q?src3M/tyedLGbIJL7NO88B4ePUWajqGbSdBPy4QHBcAWTSRtv3U76Mhd9gDw?=
 =?us-ascii?Q?JVDpbN/Xd7bMqx7NpbYrqAjGXr0vCOh6NhhvaNk5vXcom9B3qe/Z3yZrr2RW?=
 =?us-ascii?Q?Y1e2n3oJXn9Kk3clrgIj9u8AnEg6SKdqD1I1zEKTfvcbtEscRjgi23zOcbm6?=
 =?us-ascii?Q?oPJjYJmKlSLJUCRmxrIS8zh4uEtUtPj4JiKiix0EwidbZbY7JbpHcXnixcGN?=
 =?us-ascii?Q?0Z6oXXHqlQMOu+fkbPnhXclFQXY2X6r5coJiJuN6QXfe1+wl6eDbHWtTpPKF?=
 =?us-ascii?Q?G3aJgZxzV88y4m6FaPbLGLhWeS8pvxLzVo7o1L29DfuXXbHK3fsFUQ0bh68B?=
 =?us-ascii?Q?ViqKjjiUp6IkzXb5xUYPPsIscHoL?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rz72+N/pGDLcR03sG/j2qxRndiIr4c6AIDZLuEWlMI27uHr+B3wLeX+Fx33c?=
 =?us-ascii?Q?UGulqdvTlSmOp5106ezWOIZxB6yThSWybJX1w2GwQJXNMqSeu6e73uUs6E4V?=
 =?us-ascii?Q?1pZItPvjpqs3KdDrktxG1GVfbhwzmA+9/QBX8pf51zf04m2oaOPpMNoM8dqs?=
 =?us-ascii?Q?V/8vFl7o1UfB1N8LfbgIRWN2+wc7kKYfWBoGpqBYyrk5yLN8VrRHPUPFTrcp?=
 =?us-ascii?Q?M+FZdAEVTiGHIsbhDk107fCIXpQ4ifXjE6I2X4/4r+wa7IVIumSztcT5m6xl?=
 =?us-ascii?Q?EZV6IbDeol2ht2Y6I50fiYY6GTDeQKIxmQ7wdKF3bUarC3guyP7dR8zAZEXB?=
 =?us-ascii?Q?X18hlTraMir57CIUVGo61+d91fLFc7efs/+2B3WzRWpv6xxaBYbc08ZjOCER?=
 =?us-ascii?Q?SJC5ZLnH5vDPPJgP2/VuOldegbRr8shRI4u9IZIp/YK6n9QDBo9s6YVki3Oy?=
 =?us-ascii?Q?kBdR4qri+MsDI40ymwobpBlQrMIAl/SThfgNgO3HTGPCN2VU0Z3XIOko9K27?=
 =?us-ascii?Q?wc6yUDHPN8kmoHSj7rkdRITwkWZ0dYBDtoh4Yrpkcbe2vFaHHc7dnQs91Ihb?=
 =?us-ascii?Q?CTnvJakfHrfXb6cfkMQi55Lvz2VfQxXb06+eCLsD3Pz/V30NR8E4Aerqj2xD?=
 =?us-ascii?Q?PS9CoxnWS+V8RJ8xRILWLAT2V1c+UbgoEYsTFjiT5QZAleuS8O9waKIECyzd?=
 =?us-ascii?Q?N6gp/q4pLzsHSmq/sO1wIF+LtY73jAt51BRR9zvcUFpQkYUWUL/1RttqHTB/?=
 =?us-ascii?Q?SfYIJ6UdMHStwviVTA5Eoy677HsLfFnLth5RbJFaeHhnyU2W+RhGOx/0qfx3?=
 =?us-ascii?Q?HZ28al/i4/vH1hU26JY5Ozq5PaZngY/tC/4DPZ8WgUv6Chl6pfW3p6hmvX3n?=
 =?us-ascii?Q?NuOLEMF1qNS2dgYOEQCWTR51hgruS4C1t8tSyO13/KhQK1vtOh7rmMSWx95p?=
 =?us-ascii?Q?wKDxrPXIFTCkuDUHVcfJaMNNp4NisCAQ17Nf9r59WZaFqYeUTxhiNAHjFRAp?=
 =?us-ascii?Q?74h4L5lDxoyNUjyaxmxnPNR8X1UYT/rl0pTITJ0ZLb0DKND8TbPFYVKzFsqq?=
 =?us-ascii?Q?PkF9P/ttK2JU7f/Wmr4loF3WnZklJThvyiH+ucl7xB4O4Du9uD2aXs+F9twq?=
 =?us-ascii?Q?vbs9KJ/P0gDBZiYfIuyXpRQoyqyw6bSsMUifXtHN8iIibw1F8NnRkFcoJR/J?=
 =?us-ascii?Q?UObRVlfYiefoSHGyGee8gj51UM+bSRCCXHG7xe2Y48c/HxsmvB9Jm6wV62F8?=
 =?us-ascii?Q?uDQQKFE4ttBdGR/Fm0Srlngw/4fdDPLdBJFA+fsmpnxvvdIDUcMyGmmYH33j?=
 =?us-ascii?Q?4k3XzOikOSGSW4Hrzq/B/AaVUAmBWe1tHX6DSBar67O0A2FXmFCQHR14cC0O?=
 =?us-ascii?Q?POyEuQmPXpnKU2nte88jhBM5MPZp5Z7YfNiReg9lnoj1db9T9hFkdIxE3/MQ?=
 =?us-ascii?Q?iv9sdaQenYZW/egZek+bmCEWHgWB0gUYFKUPVurNbeeT8b/13n1aJnV6v8y+?=
 =?us-ascii?Q?VC6yIARmtanG2571/DCkmBgKJSysB+X9EN0Sp2r0DSHUOfNx7wMYBq/gJUjU?=
 =?us-ascii?Q?omvCUstSotUGaZ+yUfuObIUox4U9kV2gbc+OCcvahDsHPYvWT6LKEQREPWMc?=
 =?us-ascii?Q?rw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f9f6a387-af6b-48b6-ca3f-08dd6e480dad
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2025 22:29:50.3883 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zFh03tlQkCptyjwgPxDTdalsm3vwIiV3g+hms+hTAlQv61TST/TnAIc1gPcbg/E75CTk8XKAJob/s++F41I9hpW6rztnon9akGp8H1EMw0U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9034
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

On Mon, Mar 24, 2025 at 07:28:42PM -0700, Lucas De Marchi wrote:
> Instead of logging the dram type in the per version/platform function,
> do it in the generic one. This fixes a few discrepancies depending on
> the platform:
> 
> 	- There was no DRAM type logging for graphics version 12 and
> 	  above
> 	- For graphics version 11, it would log the DRAM type in
> 	  skl_get_dram_info(), but could possibly override it later
> 	  without any log in icl_pcode_read_mem_global_info()
> 
> For bxt_get_dram_info(), there's no need to log the type for each dimm,
> as the drm_WARN_ON() already covers the case the are not all the same.
> 
> This maintains the behavior of skl_get_dram_info() that would log the
> DRAM type even on failures.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/soc/intel_dram.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> index 39d8520ee621d..eee5c4f45a43c 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -450,8 +450,6 @@ skl_get_dram_info(struct drm_i915_private *i915)
>  	int ret;
>  
>  	dram_info->type = skl_get_dram_type(i915);
> -	drm_dbg_kms(&i915->drm, "DRAM type: %s\n",
> -		    intel_dram_type_str(dram_info->type));
>  
>  	ret = skl_dram_get_channels_info(i915);
>  	if (ret)
> @@ -566,10 +564,9 @@ static int bxt_get_dram_info(struct drm_i915_private *i915)
>  			    dram_info->type != type);
>  
>  		drm_dbg_kms(&i915->drm,
> -			    "CH%u DIMM size: %u Gb, width: X%u, ranks: %u, type: %s\n",
> +			    "CH%u DIMM size: %u Gb, width: X%u, ranks: %u\n",
>  			    i - BXT_D_CR_DRP0_DUNIT_START,
> -			    dimm.size, dimm.width, dimm.ranks,
> -			    intel_dram_type_str(type));
> +			    dimm.size, dimm.width, dimm.ranks);
>  
>  		if (valid_ranks == 0)
>  			valid_ranks = dimm.ranks;
> @@ -736,6 +733,10 @@ void intel_dram_detect(struct drm_i915_private *i915)
>  		ret = bxt_get_dram_info(i915);
>  	else
>  		ret = skl_get_dram_info(i915);
> +
> +	drm_dbg_kms(&i915->drm, "DRAM type: %s\n",
> +		    intel_dram_type_str(dram_info->type));
> +
>  	if (ret)
>  		return;
>  
> 
> -- 
> 2.49.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
