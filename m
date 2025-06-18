Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9160FADEE68
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 15:52:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FCCC10E84F;
	Wed, 18 Jun 2025 13:52:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VEtEPCn3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 779A110E84F;
 Wed, 18 Jun 2025 13:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750254723; x=1781790723;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=nOz7RkC8lDQfJIUN1lAtq6ovpeJyXYAp1Twc6pAx/H8=;
 b=VEtEPCn3jRWI0Cl020jkrp8VQJlPl5/2Q9IAJYa28Iuxz1hnP6QbBsrV
 owyq88yRdf44qIQ5b2rjAsOXvUJrlGlEQgDKGizejI82stsdtvgOjTARB
 exMP/JfW8gUjM78dRrFcHbW81qiMIOWIVliFUKwPQ5QGsNJ1l1ndX85aH
 /UQ1xDa/dfQbCph24L08ullnhCUx+cZm7MpEYfXNJXFa7BC9TTXcDCwf8
 +D0DwmWxfBz1yYx3eD3/7UjPPNv1vHhs+E/EDmadWOXsq6SpfcnF9zS0c
 tKiOeo0OGruwlddueS96ZHq0CLaPm6BQhib42numo87VyI33rMDD0V4zo A==;
X-CSE-ConnectionGUID: TRdZjUv6QpOe9ZP8L8S0fg==
X-CSE-MsgGUID: cgdvb5qOSn6ff/1xBkiajw==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="63143698"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="63143698"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 06:49:59 -0700
X-CSE-ConnectionGUID: AM12LfKzS+Sa8RroqbWpUQ==
X-CSE-MsgGUID: o8RmrKv4T+uwGHYQDeciqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="186942434"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 06:49:58 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 06:49:57 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 18 Jun 2025 06:49:57 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.70)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 06:49:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FybPDR3Kkf8AJCS2j3PN2uR2dl+ZhLM6xT5/XIY/is0sn+Tex/ZZwiXgaAuuMxi+nqM2DLaiKTpQRTuLNEDQZpadCb4K51nDm9ZShuqCT97KYSfziwXeaLKmVlOqkG+5xNhFogv/TBMRSxCwYgDc052vrAtq7WgJ7+6KP8mjGYKX6phX3yXB8W2ALO/Vr9QPXKtpIFyHyyvXLHHevEigdywMppjvhqZKCk3Udk6FZYTMf25W9R9d8w17f87RzFhQmW7Up5vEyvUHjjaZ1CpAFfE7FZJxtNERPskhtuH7ZVZ6NFW2+pdnJKCtccC6fmH7rskmTYkKbMxMFDd+VZFzKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KIbGuLJfrMIhiysDUU6P2xbfpTi9TUiE3kbI6oTDu6M=;
 b=LkOxOYfGrVrlGlH2+yAC3GRo7PjJ8ANKXHcbJ+m0gK+vcE6J+13sIvrm899bhR1LvG6Cr/BF6oabCHnh0D8mR2omfwUVH4gZREy9sgzfWO5Ekoq5uOd7PZFJnSL6udwA6bMHjzClUrWyMr5w16KETgcaoWTECobwZlWeDrlUkGCWYaI3u6O0MmQTZwprRWaFpGSGrUV37UIgy79AZas7GspPRUVXJWg+zwY68/I13qhtNCFD5hFuCf5XkUgt7z2hTGO668cXiaEqxiu771e4yAWnkGoiAnzL8pvjw7R9lf5d1S73TObB0mmUU5bBYkWR9l0193kN3vwaAYvvg8m3RQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by IA4PR11MB9396.namprd11.prod.outlook.com (2603:10b6:208:56a::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Wed, 18 Jun
 2025 13:49:35 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.8835.027; Wed, 18 Jun 2025
 13:49:35 +0000
Date: Wed, 18 Jun 2025 09:49:32 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 5/6] drm/i915/dram: switch to struct drm_device based
 pcode interface
Message-ID: <aFLD7P4_3I4YTY8Z@intel.com>
References: <cover.1749119274.git.jani.nikula@intel.com>
 <2e2f966a0e55d81636477d91cf4f71f1e02a2c1d.1749119274.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <2e2f966a0e55d81636477d91cf4f71f1e02a2c1d.1749119274.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR03CA0016.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::26) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|IA4PR11MB9396:EE_
X-MS-Office365-Filtering-Correlation-Id: 704a6649-1a70-447f-7695-08ddae6ef632
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?WFLhQO+2ONPHx+WYbILqJ6ucL2Ziu8AxHy114RVduZNcP0/mKyCWuwQDDdRj?=
 =?us-ascii?Q?YXYI57WdJfybCV59olsWn4AYjbaqZBbSylJwpPmHsuHR6vVaoXBHZLTByk5G?=
 =?us-ascii?Q?mYTHU96PrUWSBNVPuR/lDXjobpkt39ldXbdLoL8yYFkHIaSRAMbTZLXHIuPR?=
 =?us-ascii?Q?602QWn1ULKW5/AnPadl0KQZfqDmKwkUoqoYzHApzkfFVV4s+dwMQXLrqISj9?=
 =?us-ascii?Q?D7MGT9HBQMnrYDG7dXxmV3BbosDBVnGAnStpjIWsCuswFcy6yr6E3RSAKp3k?=
 =?us-ascii?Q?owggFtJzh1OJCHy1R+d9+OAu0eYsZMLXN26w3nA7c9PAE6I1ms33KutUUdw6?=
 =?us-ascii?Q?bmlqGRBEGZey2aMCxfqFeYinFwCaHEJ7eMkSEysEYGrkoXFIzjJrcminFk91?=
 =?us-ascii?Q?8IVrO/uLxXTQGKwZoOsy5ymgKfcNtihjPdrGFn723d5+qr0gQ9uempZaTZFy?=
 =?us-ascii?Q?ZJYPSgYx2D/Qng4RV+KrueOOSrR+CGXLJ4DDL40XQTVpSwCU2FIfB/Sdgyxe?=
 =?us-ascii?Q?q37nuyoNrCgaC+v0RttGJc51hRQs15H86xT3H9YIyx2Gf7iU7a97TivwHgzn?=
 =?us-ascii?Q?Xpwf0h/N6nHUxZd//ktGVBEF7tLeMfh3hmPz7tu0GafUe0onc217YsuH5es7?=
 =?us-ascii?Q?C8ZbvjzMC6f76wat0S0iIohU1w77G0/oA7cOOsqTDxQF7IvVUfP8H1kHDBFj?=
 =?us-ascii?Q?jq1zki5cpwmu9vvcoQc4/GUDgC1o+fejsq98SycsfGlQnP6AP9KaEghhP3uH?=
 =?us-ascii?Q?+oK8SZYqAmF8D7J1hR54WmFoVOiYPJaE1r45nhJYPnRnamfbZTZ5BKbePrYX?=
 =?us-ascii?Q?HdvR56Uca5wyqPz2il3aUFeJnzDpeKjgnDAQThVHdqj1TGRTdnhoxAxGbTd8?=
 =?us-ascii?Q?8zvLSmPSk8H8fCDK9z5wm2lYVx4BTbb7N3r51pzw5L9QtVaNfKdDJwEdNR0l?=
 =?us-ascii?Q?6zrjjeFsdFhTrVJ5mZY6VLLJ/r/4bd5DPF9ZTA0/xRjM9bfuKAX4LgWVXPK6?=
 =?us-ascii?Q?ErCygZne21NUFjbORc+1iYqXp7zjYss30hbmp98ujDES8FmMwWuljg8ujAXc?=
 =?us-ascii?Q?+oxOiZtzk2gIzr1sGpZrfi3CUZsytvzNQM6JIwZifrjQ6ZxW3t9EBJqiUO5z?=
 =?us-ascii?Q?Jxnp46kjYiNHfmb/9Illx6ehZ4t7yNqG25bSj2w91jYwIOoFfdcDHsuzZ7Ab?=
 =?us-ascii?Q?ObrMqfT1OBm/mp6CIHKWtgY/DQW7vA/JMi10fU7DaK513hkAlYqqgPbJWJv/?=
 =?us-ascii?Q?ZeWskMW8p+7wTUOdrPCfi8M6E22ydO64KLRE+TazakfuWbkpZ5WBAfMVISlV?=
 =?us-ascii?Q?Y2NH8swNs5kXaRMP4TJZpQZO8vHkrw0TobUTrIuRsawOR80ZN7BJ3WPplm8S?=
 =?us-ascii?Q?Z2M+kbgau29HNWdWf5XMFtOvXZsFngKFE+mN0rwCKClehspbW33HR3SUUBCr?=
 =?us-ascii?Q?BohR5AHIP4Y=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wwnDxwHQsjr4L/6vUrL37CP9E7knkImFZRGxMKI5yk3BJlvWi4i+Ji3k/Jwg?=
 =?us-ascii?Q?TqX3G+HTLDL+o/h20nArscQySUPZ+LdvWvcmL5Jl3XVofW7SGk23Y2ugam/G?=
 =?us-ascii?Q?1bEqRstth9NQSBvpY6RxnjfbzcVuZgtTOQPjb+MdPMBY1I/CiuxCs2xe+P4r?=
 =?us-ascii?Q?MTfCZtA4tE/mCwYVD0EV9LnfMQYZeoVlvK3JAfpEsk2fWl4r/ZHfXbqfJ7QO?=
 =?us-ascii?Q?eXA5tUgMgQ2lC647nyvEun1Ao1jwJMoa7jVfJusgVWjPuSbEABqgjRY/YXo7?=
 =?us-ascii?Q?w4/XA0LaB+HY2iFL2sLjVhGSEZFbUtDQ8T5h/CgW8C1kFGUWZYas+t2NY9z9?=
 =?us-ascii?Q?m6qt0pf0I1p7OrWT0TTZ5u+DZ0M9fqDHk+VE61KLhVO/0Fis4WDtUcPMAmZL?=
 =?us-ascii?Q?0kIAvzjLarwC4lvBlLM22kP0q8ECpv3yyu7Z0zuT/hIXmlfTh2WNmkuWQojJ?=
 =?us-ascii?Q?hKKbrBlTdV3DLAT+O7ro0osJP0iFi8SyYvXt962iepBcaLtxPSal6ELfxKSU?=
 =?us-ascii?Q?9aDja3k/GNwYDr5GisgA2TmFNcFlg4ixRcPAkw+6W6dPNel4RJ7f4ehAicPe?=
 =?us-ascii?Q?5ahC/tuGXwpcYrQpL/dN7aDrbi7vBZEDqsKUqk1rCWcaL5YPS4DWiNBsBNuO?=
 =?us-ascii?Q?5CfmkNMrl5tzAdpPT8DHjWaz9MNjZwb9GQU419HAv0Y9njUcp0vgu1QkGoNW?=
 =?us-ascii?Q?9vr1jZdbVBVDac08aq8Bj1OBVRGxkK4QWGI4kwU5JyOdFnuSk3wf+I8r8ckz?=
 =?us-ascii?Q?a2ZEEa7CRWYfsyzGmHI4KMV9P/+tO3lid2GF6De+8qLIecHhAoQXk0iN3YBa?=
 =?us-ascii?Q?cnIFlZ8mNsapgjRTFcgv44YCFYLHiyYDS1gk1hTvv3Z+9pRLkiDhc3obB7Jf?=
 =?us-ascii?Q?KPhZVaoSZmaejHkKc8TnP0hV8GGyLdKz9mj2HEPYqmxaA2NMAhbeB8jaUenr?=
 =?us-ascii?Q?gBr/Wyp88zgBNQvZEFRxHSGAOePAIfiGwwXdVznchCRmB1lwbLWDAiflUQRD?=
 =?us-ascii?Q?d5JuZAKPX1pFEYdc8H5w//n9QL8xY3J6MVgWSZsAhgOA6gFOjd3Sb3F7sMn/?=
 =?us-ascii?Q?Lvhr+u6pvxLb6k3XODSt+etksLdzaVEFo4wUX1R3VldCJinb6gWuxy8+VWvO?=
 =?us-ascii?Q?S0WcpPj1SAvLdEngZvaqQqzzg0x+M5wz6EIpXOOc+239Hz6ISOsOa1WuEtH0?=
 =?us-ascii?Q?l+ghVqDicMoFSdQ/WGbx/ovR8WFgC36vJfiUSYsaY1JBLcAbBzEnjQGQ8Sr3?=
 =?us-ascii?Q?EOr+6X+ABDTQCYI9kA1cp240YdOniWH7k0DZ7e6iZrIdCg6agDzcIKhlQu+k?=
 =?us-ascii?Q?YZOzW7E4E+qiVoFuNN5v3sjNocONMwsO3bubVE+7UJAY2yubuxS5D5P5Szg/?=
 =?us-ascii?Q?en3K9ZXjVl6GsjcMuRlO7QKrCsWhOfT/UZ59/1B3j/8d83SrL/VreaOQHU2N?=
 =?us-ascii?Q?AhqLkjHKrS/4Lfi8HMvQmivCi09ypKzfjmOSgoylS5OIXjeBiwVvymwFo6eP?=
 =?us-ascii?Q?PatQ2wvssl+hUNca30hTXVsKs9P5GSmiewFacOtav23wAKZ5pol4bpd+w8XF?=
 =?us-ascii?Q?senrc63GJGxSlX/dNcHM1DB28qtCC/iqcmc3u7ct?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 704a6649-1a70-447f-7695-08ddae6ef632
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2025 13:49:35.8745 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E2qfXJ/gR/qgLd8tklnUxvLtJ2XYEOlwJL3H3dcGikV9Nwra1/NWZztvqf3ekYaFPio4Jw6tiRg8q/Mjxerl1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9396
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

On Thu, Jun 05, 2025 at 01:29:37PM +0300, Jani Nikula wrote:
> With the struct drm_device based pcode interface in place in both i915
> and xe, we can switch dram code to use that.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/soc/intel_dram.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> index 59032c939d0f..5d43042b0fb5 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -590,8 +590,8 @@ static int icl_pcode_read_mem_global_info(struct drm_i915_private *dev_priv,
>  	u32 val = 0;
>  	int ret;
>  
> -	ret = snb_pcode_read(&dev_priv->uncore, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
> -			     ICL_PCODE_MEM_SS_READ_GLOBAL_INFO, &val, NULL);
> +	ret = intel_pcode_read(&dev_priv->drm, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
> +			       ICL_PCODE_MEM_SS_READ_GLOBAL_INFO, &val, NULL);
>  	if (ret)
>  		return ret;
>  
> -- 
> 2.39.5
> 
