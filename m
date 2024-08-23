Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 109D295D60C
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2024 21:26:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C46F10E004;
	Fri, 23 Aug 2024 19:26:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D8h7OE+5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD16010E0A5
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2024 19:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724441161; x=1755977161;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BGI0/y3oxz9E7R1JPy/vNif1wtoBLaKD4ija+JEmCIA=;
 b=D8h7OE+5wMpJAAbN/cQT2gsf/EjDzG/YAwyeE+8xt9rWakMcWg+1YHY/
 Lv2qMSnBwhzKaJQ9/P6EXi2jt+y4wg7PsHaRTxJ7KJrKNTGr/iJfk4zGh
 odf9UA0jMPTbgroEXnShoN6fZ9zOXmG2AbzY+/58RGmJcpLm89utRe/HX
 ptHmuiGPMKP7kz9qZx8y4QBb9W/UHxyrdU9wLy7G43yDTDQId7eQfUsVj
 6oJtjFg9ym1TLMPu99yBTcfZSa9GjlmAriomeTiy2Bv13L7H4Qazx41Up
 JsPpADL7/SjqpcFEIwtmMe3t7z4EvprsPel8UoHHBBfvugAx+/6mXAtla w==;
X-CSE-ConnectionGUID: t56QmLPUTQSnIOozCRWtUQ==
X-CSE-MsgGUID: UrxZXCeLSB20wrhaTtuEGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="23056221"
X-IronPort-AV: E=Sophos;i="6.10,171,1719903600"; d="scan'208";a="23056221"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2024 12:25:56 -0700
X-CSE-ConnectionGUID: NOV8+bJHRvayGUhnER9eQQ==
X-CSE-MsgGUID: Iss29zf/RLuVYg4yl0W10Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,171,1719903600"; d="scan'208";a="62054033"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Aug 2024 12:25:55 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 23 Aug 2024 12:25:55 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 23 Aug 2024 12:25:55 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 23 Aug 2024 12:25:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P2Yh/uKSW/Cu3EXSEKyCV0K4CIknHfy2PwxkzVYzBvM9wV6pQUSER5RA2zWcSUIQPNslaTFDT39Eu/kwVAJKnZHL1k8Df94EbqiyAf4LjNTdK6b9alUDcpDD68FjCcjFsV1m+vLRm13hgdRPX2npU4wc0efFNx+gwnLBNW+KTTHzlvVN8eMRUVUDFYhA+DmZbFTHkEbiHECM67tit1+xI5sffwgF7oXWcKnto8ZPkdfi7coU3y3++YmzDQESpeauK+mxI4+7mA0KJ10yp7Sz6K/S2uf9zs3t9Tmga3OxlXGFoqT9gzEHYrt4tDBQ/5ayPMVO6IH5XZ45Ryl8rTjGWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fOhMp2JftzDFM+WM4soE0hoXtu2ZAOLO/NTVajyh0qM=;
 b=tkfvb623Gut4G+023did1CzEepE/0VD8rqC6PkLpzOlHOT9K7cvip2l3m3FJDyg/3F/l0/99XLRus2cbtYSNQedmVeuEgQ4lPELbSwB2AoY0+NNjosCtFPVdbPsq3s025PCLGrcE9/b8ONnNLtVE3k8BL31quuMpkOvGVLLZEWex8aIvlasQpyXC55EVa63Rz/RxqwhRt8l8wPkO9ot713r/4x5+Ro/gpuf1u8aHZVlt/3R7RmzHtCLeU32zap9L8jRra019PwpBHifTrs3ScXyL+K34IKAlpMEtrryZVB3MxZXDWGPZLDGRwvjF2zuwFzJsr+Zbp+s9dsmCvnUUUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA0PR11MB4750.namprd11.prod.outlook.com (2603:10b6:806:9d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Fri, 23 Aug
 2024 19:25:52 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7875.019; Fri, 23 Aug 2024
 19:25:52 +0000
Date: Fri, 23 Aug 2024 12:25:50 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Nanley Chery <nanley.g.chery@intel.com>
Subject: Re: [PATCH] drm/i915/gt: Disable Redundant HZ Plane expansions for
 MTL/ARL and DG2
Message-ID: <20240823192550.GA5091@mdroper-desk1.amr.corp.intel.com>
References: <20240823101009.2093667-1-dnyaneshwar.bhadane@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240823101009.2093667-1-dnyaneshwar.bhadane@intel.com>
X-ClientProxiedBy: SJ2PR07CA0002.namprd07.prod.outlook.com
 (2603:10b6:a03:505::25) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA0PR11MB4750:EE_
X-MS-Office365-Filtering-Correlation-Id: c429009b-291e-4c22-3a4d-08dcc3a96719
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?SFLM+UVFvfp6k0Dt77XogVjDwakGLTsel3SN9/AOV2JeCaCnfRoQVmlqCoTT?=
 =?us-ascii?Q?MbTxCmMG62ngFYiFTE1AEK0CaUzH/qwllK5okqrewfAEsW2q5WCjmDe6uXSr?=
 =?us-ascii?Q?lnJznmLASWZ8TA8VXdu8mo7RFLYIy+mtRu5QfHUlnFq77EbcU4wG/87bDO7/?=
 =?us-ascii?Q?oOBiKTVpjsn2puXlPNKmxdi14bZYG5nbRdnYODtI0wwjJtPVA1clmtSx3FIz?=
 =?us-ascii?Q?8eIsdUmqqcoYyfxXHa1sjHeTsUv363/ifmRJrrh3nPkFZw7ZB6nwuFFzZKbH?=
 =?us-ascii?Q?bCYWKn4MtqYsYF+vRPpcLRKBfPM2yK8o5tRQcFGEm8gk5UZq+KqUDrL47W31?=
 =?us-ascii?Q?Df83YRcf+/lvEAOe2Bg1zJairjHqT9uSYb1r1C91WTDmtGwnZA5VFwK9fZex?=
 =?us-ascii?Q?TNB/zLh9BJU/jD6ZKvtqnVZi491r+pAubSQEkcvuh/o6PnAHpMAPxrvrA5S0?=
 =?us-ascii?Q?+rin5VWsCPy5OdZ9iZGZN8GHpffjfAID4fAx6coqMmHEA1tAszSTHjUGlS0v?=
 =?us-ascii?Q?LAiqAXyCjUUVVbAhQsauktG30NtwHU4XW99C7Z5aDmuby/Trt9qzMKpRippX?=
 =?us-ascii?Q?tX4BClnqXVDrINab2pwSsDru0nJEYLYiZrdbPPfIVeH0MJAMjvF/Fpf1jyl3?=
 =?us-ascii?Q?CZFZDrDmlJYEMMNR4R2Rv13knXA4Dyv5pjzgucuT+t4RoVb/5DyMS7BZ1BzK?=
 =?us-ascii?Q?VkEJedrzW8zBY9ocHEhlQ/O151rVnb2/S0zrArPhiktJojsSst01O43iSIPL?=
 =?us-ascii?Q?3r/VKykrM1cspl7xfqCWHK3ec/k3b2JKCOMmukhv32EgMWy6PaqFPG+wR3/p?=
 =?us-ascii?Q?+flBizzNlkbae9tdmp7N0I26Oji6CyfIpEWDlbkSlhTDznijGEOXRIeVS2NU?=
 =?us-ascii?Q?8l8pWsMqSQvmfmUR7NpC9MhCTJXxypGj7zEEkENzhHy+pu51+N3ioEtiYS+H?=
 =?us-ascii?Q?ZTye7MaxonXvrTEm6Z2dGqrKSwsZbz1JkOpDNeYvbWDHU+SWM4/VC9oiT3kE?=
 =?us-ascii?Q?dDfwbFNKRXieoOauDTBT9MZWwfoRhvlyY4xRtoT045Kr1KQW2RFilyyLZHm7?=
 =?us-ascii?Q?GBZuEjK5ffrRJ+K007WGbVnorhqYpDezvnAOJam2gZ85Tvm/3eHu6V9I8PF9?=
 =?us-ascii?Q?gIDRPHOGf98SWZJTjqQ6QSmK7Wv6SIX4EDI5F9HGCFDrC7eZEeHLkO/rqK7m?=
 =?us-ascii?Q?FNxUTcYu+4SukWKbtHJTpZeMdVdnyfK/LnjihQm5PM6BTHxIlZwMuUCP2dnH?=
 =?us-ascii?Q?W2fDOuCc4KCz9JpTR5nXzKONeeAbzTT19KYafz+G//Syyh5X+O6Ia8qcr3qH?=
 =?us-ascii?Q?JHXWksdaxBFbIOLp4NkiALzsIpOMj4RpnmLrIN2oMnh/jQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xfuNb+qH5z8vI+MJqHQuIf1JO2zF3jLjvHXpACbOFp9Cj2vEGlJOaIhM/Esv?=
 =?us-ascii?Q?fV0uuSzNAtnmAkWBvtAMtDFCYS3lIVhJ1pk7s5Gn7hHsKkNVA1cNYpr/Dqxy?=
 =?us-ascii?Q?jk7hCL01ztkCMpNSAETQU6/svSM4SWK8O2W0m4v+6vVS7rUPPcBANQUH/Ha5?=
 =?us-ascii?Q?qewkkjDCvmudOxWhBCrN0SVe0YOVD4lcvXXdd6HPl9rmAxftiumnt5s4iL6Y?=
 =?us-ascii?Q?BU7bg+OmQs61xueYs6wWgrOOkzpiBdMH6oDzqqau+KFEVPBC+eqtjYS++39G?=
 =?us-ascii?Q?wYTHsarkKZ7vsIjIQedRWgT20fY4fD+gICC/fAdlIFd3f8+0z6fUpnztiG/U?=
 =?us-ascii?Q?xbOSnxr0xNtJmb5oNzpz329xEwnlmU7lNUn3PqwlSFyIMpx/mJ0otixrKLQD?=
 =?us-ascii?Q?3JhCtJ9WzQ3dXJaY5PdCDX3CeR8IGAd5ylqgtdK1qP5teH8Um5HLEmNqIgXO?=
 =?us-ascii?Q?GDia+MUdGRakGPXa9blcOivl0StbWV2aLR6V5ZUizZmpWPqFeoZs/YYG69ce?=
 =?us-ascii?Q?Vwba+cZQQiTiawWIBVqwlYJTDA+ZiTeCsLB8Vx2rJHvbJdnE3ci2h5UVBoTW?=
 =?us-ascii?Q?7rqCbSsRnPVSfZIrNLK4QbGENB9PIIwwk67uzynWPRHx+vdoeqcKOVkNu4PZ?=
 =?us-ascii?Q?so613xT0rLP6jOGB0+OoIrZSiw6/d5S3s8TYNCJ/AKuaQ3eIf7OX3UzBdNoh?=
 =?us-ascii?Q?+XN8rmxFp6Q3v8lbUAdNfE/MNS5nrxlnVgxd0LXeNl+LUFqE2ctyhxn6GT+2?=
 =?us-ascii?Q?rhdCbX0+q4rDkBCWC8FPtvb24OwBsH8NePCybjxGBdOxDvYIeLCNp+aW17Om?=
 =?us-ascii?Q?5oyuf+ypcTdsFPqJjHUzRa1oBBYS/6/S6GosymoYnjp7TWhBKv/6W1GC1Vf0?=
 =?us-ascii?Q?j37O7CuwaR3e2I6Vc/pvPfkhHVTHiuJUENShQaKz0v3VndaBtn9o/OyU61D3?=
 =?us-ascii?Q?chaRflQTziu1FBtDZK93E4lZ8HNI/qIqwPubCVhPZVXBVWZz5R4gC6Ek57lx?=
 =?us-ascii?Q?2Fmww7d+jXNd19tBZEVlPgmjbXaIvPDRSHs1IM+N7GCQNckr8fEujms6MpVp?=
 =?us-ascii?Q?hQJUyum7huXJGdzDH+/Ciqn6hatU+Bzwo+7WZJeyOzzgn0fcKoL1Laq6SM/e?=
 =?us-ascii?Q?mTCZPRpJsYFu+hnzyTMffNGnR8Q3B6Gcj0+hlJ5Mmq5CluViP1izaI/yCj8E?=
 =?us-ascii?Q?wQYOo4nkoVmn84T7uCXTjGz29B7xaFCoED03kCabQVeVYQoPHcqfn4EEIBQQ?=
 =?us-ascii?Q?JCklNmYUw89xA7tfbr9nlVyZNrK+8Qy219DsWOWm5/joARtj/K91wVqeuMdJ?=
 =?us-ascii?Q?/jcpmfDfufazIJcJ+eoaqPQW7M0d+8UlvrnJL5jBwvRAoODK3ygXbklfNz9h?=
 =?us-ascii?Q?yHJRp9l1DwmEZUm0+K4XL4EuIx2P479Tj2g9bt/kbtUP9tIwRMDvBgTbEKV9?=
 =?us-ascii?Q?aHckZxgCeVzhaIOfOMilrE3+xEhH7+w2UqljkHu2MAII4w5qytg/sJK/1DYt?=
 =?us-ascii?Q?W1CnK6rvDXgOcNi3wBVlsTwLBTjO+XkeVUu4z/aRlIK/QKiu4ijXtPUubCZ/?=
 =?us-ascii?Q?98rkCxXJfhdYvjSP59NwnlxgwcsH8/382Ub2h+L80jHBUxjFskS23tYzrOKy?=
 =?us-ascii?Q?AA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c429009b-291e-4c22-3a4d-08dcc3a96719
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2024 19:25:52.7728 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JGDxIV+7dC5yaxeFvWbAyDKVSd5GPi4PC/NpOEOD7LMmAhtccHTRb9eR1puiYvFtLAgovLQDhMQCaX0mVC2Rdnd2xiCKXUutDa5sdDXIk00=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4750
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

On Fri, Aug 23, 2024 at 03:40:09PM +0530, Dnyaneshwar Bhadane wrote:
> Program HZ Plane disable bit to 1 to stop sending the redundant
> plane expansions.
> 
> Bspec: 68331
> 
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     |  5 +++--
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 17 +++++++++++++++--
>  2 files changed, 18 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index e42b3a5d4e63..74b633a78eda 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -446,8 +446,9 @@
>  
>  /* GEN7 chicken */
>  #define GEN7_COMMON_SLICE_CHICKEN1		_MMIO(0x7010)
> -#define   GEN7_CSC1_RHWO_OPT_DISABLE_IN_RCC	(1 << 10)
> -#define   GEN9_RHWO_OPTIMIZATION_DISABLE	(1 << 14)
> +#define   GEN9_RHWO_OPTIMIZATION_DISABLE	REG_BIT(14)
> +#define   GEN7_CSC1_RHWO_OPT_DISABLE_IN_RCC	REG_BIT(10)
> +#define   HIZ_PLANE_OPTIMIZATION_DISABLE	REG_BIT(9)
>  
>  #define COMMON_SLICE_CHICKEN2			_MMIO(0x7014)
>  #define   GEN9_PBE_COMPRESSED_HASH_SELECTION	(1 << 13)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index bfe6d8fc820f..ff257bb2d15a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1550,6 +1550,13 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  
>  	/* Wa_14010648519:dg2 */
>  	wa_mcr_write_or(wal, XEHP_L3NODEARBCFG, XEHP_LNESPARE);
> +
> +	/*
> +	 * DisableHIZPlaneOptimizationForRedundantZPlaneUnit
> +	 * This is not WA,THis is required by recommended tuning setting.
> +	 */
> +	wa_masked_dis(wal,
> +		      GEN7_COMMON_SLICE_CHICKEN1, HIZ_PLANE_OPTIMIZATION_DISABLE);

The bspec's performance guide page says that this should be done
selectively, on a workload-specific basis when certain conditions are
met.  So we don't want to set the value of this bit directly in the KMD
because we don't know anything about the workloads being executed.  We
just want to make the register writable from userspace so that they can
flip this bit themselves when it's appropriate.  The
{dg2,xelp}_whitelist_build changes you have farther down take care of
granting userspace access to do this; we can drop the changes here to
the {dg2,xelpg}_gt_workarounds_init functions.

From a quick skim of the Mesa source code, it looks like Mesa is only
setting this register bit right now on the older gen12 platforms to
address Wa_1808121037 (in src/intel/vulkan/genX_cmd_buffer.c and
src/gallium/drivers/iris/iris_state.c), but I don't see them setting
this anywhere that isn't guarded by "#if INTEL_NEEDS_WA_1808121037" yet.
They might not have seen the update in the performance guide, or they
might have been waiting for us to whitelist the register on these
platforms before adding their implementation.

+Cc Nanley from the Mesa team since he implemented the Wa_1808121037
code and will probably know best if/how the Mesa code should be updated
to also address the DG2 + MTL performance tuning setting recommended on
bspec 68331.


Matt

>  }
>  
>  static void
> @@ -1570,6 +1577,12 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  		/* Wa_14015795083 */
>  		wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
>  	}
> +	/*
> +	 * DisableHIZPlaneOptimizationForRedundantZPlaneUnit
> +	 * This is not WA, This is required by recommended tuning setting.
> +	 */
> +	wa_masked_dis(wal,
> +		      GEN7_COMMON_SLICE_CHICKEN1, HIZ_PLANE_OPTIMIZATION_DISABLE);
>  
>  	/*
>  	 * Unlike older platforms, we no longer setup implicit steering here;
> @@ -2072,7 +2085,7 @@ static void dg2_whitelist_build(struct intel_engine_cs *engine)
>  	case RENDER_CLASS:
>  		/* Required by recommended tuning setting (not a workaround) */
>  		whitelist_mcr_reg(w, XEHP_COMMON_SLICE_CHICKEN3);
> -
> +		whitelist_reg(w, GEN7_COMMON_SLICE_CHICKEN1);
>  		break;
>  	default:
>  		break;
> @@ -2087,7 +2100,7 @@ static void xelpg_whitelist_build(struct intel_engine_cs *engine)
>  	case RENDER_CLASS:
>  		/* Required by recommended tuning setting (not a workaround) */
>  		whitelist_mcr_reg(w, XEHP_COMMON_SLICE_CHICKEN3);
> -
> +		whitelist_reg(w, GEN7_COMMON_SLICE_CHICKEN1);
>  		break;
>  	default:
>  		break;
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
