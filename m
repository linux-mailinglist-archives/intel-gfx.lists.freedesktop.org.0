Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45CB5BDFF5D
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 19:58:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A64310E8AD;
	Wed, 15 Oct 2025 17:58:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B3bujY7v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 914F710E8AB;
 Wed, 15 Oct 2025 17:58:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760551109; x=1792087109;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=atYSVDZTHgw7PoeXBqE7Zvx2f1OQfKa9XnWcOL8ek2A=;
 b=B3bujY7vNIS523NyuEHd2Ln0YtU1sqpXIKsennJewWExjb7uTYxOQaOW
 YlZgf9NyoxCJh4E0+MaemQYkxGyYlzSzZJYBn8Tk6lgSiXOkZmGsJoYyO
 cMEUd/mzhOGwPF/t3uuszJ/nYa62UmvkHezjR7K4F1Wp8Bo84G4m2zdrG
 fh4AnSBlT8LV+qqeDI1/ws7vAynuIJVDe3wnOLUFZNel5JtkNVATmOjsX
 Heb0Yc0HNLq17WIf1ip6NOv+qaR2Xfud0qMPrFXG4/kgVvYAlxgeHqcce
 SuYkHotlfgshsY3A1/B1WFgdR11EZo4GNAWI1PpZSjJq4IjFPkIAMOcLl Q==;
X-CSE-ConnectionGUID: 2RavelSRTtK1CJ0ySBH2tA==
X-CSE-MsgGUID: S4Jpfv/bQByyWHm/qWYaIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="50302803"
X-IronPort-AV: E=Sophos;i="6.19,232,1754982000"; d="scan'208";a="50302803"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 10:58:29 -0700
X-CSE-ConnectionGUID: Y7PIPXxOScyw4lm9uit5Cg==
X-CSE-MsgGUID: Xwc6SZoXRMmR9WbNggkWSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,232,1754982000"; d="scan'208";a="183028802"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 10:58:29 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 10:58:29 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 10:58:29 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.10) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 10:58:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hiKlM3oamqxp1kyq3BeZBRb5Xrytce5eRpUgeAGoO9O+ZNHPdxKiy3Cgo3p7ZFF4hlg2f+xGL7wfQferhL7ww8nKVzK9dm6Fo8wA50N93CbJAeIj6Gg4PK3KJyvUbFPI7sO0T+0clyxuIAWUpTEq0iwDYMi7/+kmyM/jXR/RgzgbM2qSims1MZ5I4ZTWDcH+QUPj+5dnpghSku9/1qqIrZntTUFORshgp8PKdRCmRaM8cLmdIlAFkGMB9UgY8wGDxRg9Po1StdatjX4N49ntsARPPHttE8NwKmIGHKZBF/6tmsjPGGn0ISudT85+4Rgc1Z6FWmHhzIcUFGK2JjHMAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/g09hP+JWCeEP5KmaWdy3ZQMUzs2CxCdhf3WeUtLym0=;
 b=jDofvywszw4QPBwsku5Z61tFsS6sDbc8YGazacaUhsoVs9aZoyBZms4laNgv948ffiFkgEV3jV5RQWnSU4Zl4zvMKTRquRXmXbf3kcBKF1H1QS8fakQONlPrp5L5e4GCPjEpj3OQjGVdeoRwWq7jdDKNsaNnImx/sat0wp3eUhukrZs1BCgHMJn6OPXpQaJbvSVBlztK6DXPQp7BpXmUf6cVG7vyFi+TgNWluc8gnc0j4EudzK4sDa373jXD7XE5ov7FXNxv8jXTTpE4RyvZDKXjV4hc517mtUYlAi00egLWGSiLJyhm2cZl9+/kYrRMM2ZGN4M4cg/ftnKHVNl8zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA3PR11MB9037.namprd11.prod.outlook.com (2603:10b6:208:580::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Wed, 15 Oct
 2025 17:58:21 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%4]) with mapi id 15.20.9228.009; Wed, 15 Oct 2025
 17:58:21 +0000
Date: Wed, 15 Oct 2025 10:58:18 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: Re: [PATCH 10/32] drm/i915/xe3p_lpd: Horizontal flip support for
 linear surfaces
Message-ID: <20251015175818.GP1207432@mdroper-desk1.amr.corp.intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-10-d2d1e26520aa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-10-d2d1e26520aa@intel.com>
X-ClientProxiedBy: BYAPR02CA0029.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::42) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA3PR11MB9037:EE_
X-MS-Office365-Filtering-Correlation-Id: 381eac2d-e739-4a38-8012-08de0c146d98
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?dyZmGu+to8TpeO3Uo+vasbfxRFgOjynKe1e8Y0usNO6fyUeVr9fupa+QnY8w?=
 =?us-ascii?Q?WbuykspTCn0IT3Hu/AUNYguEjlpN6KfC8+pSUoROL53kzXcEHi+y4FvRwE7J?=
 =?us-ascii?Q?KW9HZUuXDb4Oou4fVsruIOOZYcepTQg0bJlc1YVBEkYvke98oBG6fQ8nqFlx?=
 =?us-ascii?Q?OniPtlhTgshRT12DKS6JEwKLMsFMhYuv7CtbRaTC66101MKRp8HUCS+Undeu?=
 =?us-ascii?Q?siIorykhY439zx8yaIYjXRoVShQ3gCNsTyVWWJ8F/cw9vLgzMawh1v85p0um?=
 =?us-ascii?Q?nJwXj4l2JAx771bQx0vGwmBtX3hCGFx4CS6knlNK3/P6L45T84mIeGH4wJaO?=
 =?us-ascii?Q?XYWt1PberGZpWyOXaWhvnLJhFho1pueXJGkC4aIoMpo1DX3Zl8sUnN7L6p6Y?=
 =?us-ascii?Q?yH113R5zQXld3WJoEWVO0eiiZauDAMx98unqD4FIPM+GaZ7X8evYW0fzbB3o?=
 =?us-ascii?Q?4iuVBXs9RWL7DINlCfEAv/0oC5PyTMQEvdPDcFsHxVwiJpPY3dExV3RKz2WI?=
 =?us-ascii?Q?MzW9I61nFoCV0SvG1sArXGsolkaTuk/d3wPKkpTV0LoEZhuFvStOXzA3TjYv?=
 =?us-ascii?Q?25rko/izI4Z/CFfGDXqZGm76go8UbQCC2vzKEowXFD6k1K8L9F2lvlHWEWEy?=
 =?us-ascii?Q?VWjWSr5gyICNkiycLjqbooVlVgvE5o3/fwlUsovNUpFxe2MQbM2Fa/IvuALx?=
 =?us-ascii?Q?YsTW+fCq+4kHHfi1nGpUHpjHllMoXMPHX+M9lLVC2wqFScDwHDtWftpbf4L5?=
 =?us-ascii?Q?EBletQCBNB9K8lhFUNmU+LVHbxxHohN5niJ4S1QSpprdxDAAv4INpnI33zrR?=
 =?us-ascii?Q?nYm1lkf8jGgAwNMuRw+umKSKBSvv2gIA5IxG0Dzmj3JEiRMCTlutCx0vBwd4?=
 =?us-ascii?Q?itVHtZxxIjHb00nG28kbxSe86Y+oOuNZHgAXBwOZ/Bo2FBjZbfhsU11D2cX9?=
 =?us-ascii?Q?PqOxxvIHTwklTTGRFYALgxlnkjT3qpiwcu4nJTO/Zgz1K0CiJQfwGk0QxVCh?=
 =?us-ascii?Q?6J2Bgjxq3hct+8kvMDghhBIvX2g933HyGcc4Q9H8FtBLh/ElcoxBbNPsGZFv?=
 =?us-ascii?Q?B+zdctiLxT4HaO7LT/X4b6bK4wvmcIgU/l69qVft+nV7lyzAtxmcMsOMO18L?=
 =?us-ascii?Q?0BMEr9WrUIpejKEWbPOoeJelWRgruUOF3uLoe6QKHyO3hmF+8/YUQBbzPuFh?=
 =?us-ascii?Q?pX0/Wl6ObmKgmmixjJkPnzAJ65p8FhHQ9oZfkENla4eNWaVW1acToL57dUaA?=
 =?us-ascii?Q?bbxn49CGbJoVii3kcKFMQnpWDpwDFVV1G5w/nZ5JbBupF46nKl5ZcK3AkZgY?=
 =?us-ascii?Q?I6Dl9bX3papbDuT2VpAw3h7d9jb+fWVFl9vh1z2b8TCFYwqHNkq3IgJpRTCV?=
 =?us-ascii?Q?HxYmLkuvqOTSFntSEM1d1uCaBh3dT3v5NQOZZ9LZNoy6fln1Sa3TDtvfWrdQ?=
 =?us-ascii?Q?k7uIcKW+K0DNOJjIp3g0G5raJln+91Un?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GBYha0+vCo0fhtHzgi2tr1SAKDOaHHr7wxAHiwdVm1zW1tAq1jR0xNBwaNmr?=
 =?us-ascii?Q?M4d0f5belDONY4IlPYFworzvppBHSgPmuQbKJDTDF2Uv3ss+MQhDJqsKOrjI?=
 =?us-ascii?Q?6rAtsRo2Ds1/5Igu0SO8kqP/+MkgxCKmDyKmzVPcrpWxVGeQ4xSMWnEy6fwt?=
 =?us-ascii?Q?TqBx3o/j/9dmkU8S/aJO6BOhxeJjaLxwIetsadcoSYQ3LXG4oEgrtXmT6Mlm?=
 =?us-ascii?Q?wpSMus3Ldc31fOZn+SRy0BliYcx2AHXa4Z8vo64r/FQZS+LiZ4vOAwgjS1Bg?=
 =?us-ascii?Q?KEW3Ugvj18UQ1pL2/Uf6igaTWnXPvdyzqPpBCMEfqPnHuMhUhroVsZ93kcRD?=
 =?us-ascii?Q?DLdSXqMHW24ggQJq4IJLcg/JeFxnmZUuRU9ebBpXOwR/9NhQdo36SBx+7mCd?=
 =?us-ascii?Q?yF5iHP6666Doq90LdEBVLtabYkVAKtFwaq4zef4uYlRHsk5qNurk3CrDwbGF?=
 =?us-ascii?Q?DyXrijNeIRjgGo4SoofYENUjAw6hg+lSVG/FF1orVk7GCDvgCejkBYdtlNT+?=
 =?us-ascii?Q?DwEh0IWzVrB/snbyYgaverdLJyLy7Qz6Vzw/P59BjRk0QRNaQGnQt0e6Yb+B?=
 =?us-ascii?Q?7AUgajjUzHHt1dI4xyYpql8tMfv0GggpGNNpsrb1vowMoeeUw0pd51TcFbAb?=
 =?us-ascii?Q?yM/Z3Yyev2+ojYH2dVl27MdaJOKRJtYKlz0t1KNre3qcYtHyBaXulFsrxwZl?=
 =?us-ascii?Q?8KWCA0/laXRzXYqVoZsMuR93O81ofw2KItnKydnPg28riIdmZi6ydWnq/8sX?=
 =?us-ascii?Q?7fxgWL9+A7Vifr7ZmlVvpJkgJb5R9HuKu5LYcf8gzB2q2QP0Y7K0AmMM07um?=
 =?us-ascii?Q?CHe47NpAX0QCjjkUV+YbVhgYL3PJHSe3AmR/8BPjU1nNyBnIsYEeM2o1BqlQ?=
 =?us-ascii?Q?jpncqn8pHQfAL+mFiXOmmNj00YFleGkL0wOGQP0B/siAP/nMz+IwjbtIYQqc?=
 =?us-ascii?Q?huJQ+vpR9+o2IQ3v+b1OizxnFgByAC/bOGGhC98z9bxl/Usn8KAkLOpL8xhb?=
 =?us-ascii?Q?8bR30eZXxQnCrS2uY3BZFR42hKlqoOnwuZlw07PaE1Vzn5sgdF085v7h7fpC?=
 =?us-ascii?Q?MaJGdySKYpEBmHadajiF7fSbKrXT/W940hTaoy9ON64MyOefT0yZQ30ymC+Q?=
 =?us-ascii?Q?54T28vzvWJmHBWdT9akADFoRPb5T74gtBWuJYGEyYgmAIauX2zd8JnPCu5IO?=
 =?us-ascii?Q?Trjk2mL+z4+R2A+xwutjAetL5F2cLYKf2a/vNOuLwQIxhBA9dkkKfCpozHSM?=
 =?us-ascii?Q?6LerabrqsbFABgJWUSOkb9wfVyyPS6yeaO0L9xg894u5y57Rc+dqij4R7jE3?=
 =?us-ascii?Q?fMIsvVgQevSBU/J/V0DhfP/PWKRz1NILI3GhpbrtUUguBuP3W7FUeSwfbQKl?=
 =?us-ascii?Q?n0A9CCjmIw4es818j/MeU1YKqYFLFabYw4YCrwPYtBj3m3jvG6qfy/4b9y1M?=
 =?us-ascii?Q?OeM3Q8YbeiLom47StZq/QB0wS3/gVOwKpvHnf1ZOR7sY8W0FoGAug9iMs2ED?=
 =?us-ascii?Q?JjTiN8tYvgSLhuff1r1h6XRfnfnGkqSy+5JOSe7M7I8LLn0nmjyMmmHst19p?=
 =?us-ascii?Q?WeYfy3VQiQ8EAhu2yCfi1onScFmoiBL/JbPPd0XOlwG+gfuXBK5baPELzcnY?=
 =?us-ascii?Q?Zg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 381eac2d-e739-4a38-8012-08de0c146d98
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 17:58:21.2620 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WqvSTymj3biOtZdVgAgg7w4FXqhYr2R1XtCjINlNO30vCUYJGviZ3iASSD4YfuI1AD4BZeBakGgr4jo9flbv0wfBL5mTrL/zOoMjzIHEexY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9037
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

On Wed, Oct 15, 2025 at 12:15:10AM -0300, Gustavo Sousa wrote:
> From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> 
> Starting from Xe3p_LPD, linear surfaces also support horizontal flip.
> 
> Bspec: 68904
> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 530adff81b99..9f1111324dab 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1753,7 +1753,8 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
>  	}
>  
>  	if (rotation & DRM_MODE_REFLECT_X &&
> -	    fb->modifier == DRM_FORMAT_MOD_LINEAR) {
> +	    fb->modifier == DRM_FORMAT_MOD_LINEAR &&
> +	    DISPLAY_VER(display) < 35) {
>  		drm_dbg_kms(display->drm,
>  			    "[PLANE:%d:%s] horizontal flip is not supported with linear surface formats\n",
>  			    plane->base.base.id, plane->base.name);
> 
> -- 
> 2.51.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
