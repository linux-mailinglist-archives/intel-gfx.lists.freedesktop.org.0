Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0BF5B249AC
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Aug 2025 14:44:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA83A10E04D;
	Wed, 13 Aug 2025 12:44:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mmOuVYH7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6243C10E009;
 Wed, 13 Aug 2025 12:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755089054; x=1786625054;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=gfEKasIXJTP/+gm1F/VSSypFJZkqp0U4zTd4HiDDqeU=;
 b=mmOuVYH7QfYonuxO9L/IU2vKIB6YAluzOws38HaPC19RWFyIGK8YsjBj
 tagjvoyYmSUGyi5uu6q5ApbSse9mWuGSWIDTM5HviP170Ppd8X1i0Cp3g
 ERUXL47yFycdN1wnrhOPKPj+SzbJI2L5/LzdIwx9MxgC+2mXe4MVVlL+W
 peDRJ7ZJU1gWnf3uyfaxcSCrrHdZK5YKd467Oy2oa1KCn3aPQPvVKIuqk
 2OiILNSoupcUGQ4HJc1H8R9vNr5ZfjwFXWUVPaK+v9O1jWkDJRAKTIYvh
 m6Br99kZcRwsxtQXmtQa52wqr4BPklIFaIQVcznCS+jttIUjq1jxeLGsa Q==;
X-CSE-ConnectionGUID: h4cM5GtEQeiVnwXTTMo7Vg==
X-CSE-MsgGUID: fjhzu8cqQxm4/FCb1F4/bw==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="57098215"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="57098215"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 05:44:13 -0700
X-CSE-ConnectionGUID: vvVOn2E6TF+W3JwXl3Vpwg==
X-CSE-MsgGUID: styDN8yZTPGYkw1Bc+JAow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="166833024"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 05:44:12 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 13 Aug 2025 05:44:12 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 13 Aug 2025 05:44:11 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.85)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 13 Aug 2025 05:44:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oYsgUxyO48UIgUvF10ekR90VWGwRauvJ3tPlbHYpqDLGB/n961oiw/9dForaNO6eurZRnDwjr1vkU2gAShoZpDpxiuaNAh4FR52dWVQVEKDQvnB1geuL1Ksrm1d8+KRqoZP6k5qcaa9vSW/zkl3N49HK0OlzvBQzQs9eKtlZi17rj85dBaWZYTVHAp9Nq0ynyrgLRYox2Et9rXByvvvNMSQIry/tnmEk/GTclmO/ZuKCbxJ8Gq3pUSPJIWGWZ2ZjgcXNmqL8T2I8BBZejRhg44WxHW+js5oZRHtiuLJ+l335qTiVntwmbIgVFfcwKqbkEnMbkLlBSkFe6o8yvbCiOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0xtlrGkIehXosMIIECYmPCePZIOWsPPHX3odJCYxFUM=;
 b=JkycMgnfSuqX/4nsU+UOhvh1BpOt3rGG/YlyhbHyC4UBA7zAFIqTjf7dp4LYbGdyYdKaicMFdeo2fSYnB1qNanuHxBh5lgEvG4wtmgCuJNCmz+4ooFrpfydx8Ww8KWm6ECqTYQsTbkfGRaSszBZiJqjJy2cGpBrZrPguwfhLcdMR4/GN+gu1ToOP8UBhyxhIIzr9KXv8r/ekff0jx3vnO/RS8OnuQc0N2ws4L1E/dGI74AcOBPZFxy6uuqmomIo7dLz8g7PC7yu9cNDyaAIyX7VnhKTr2hez/jMp/TGOWY1lhlUIfvP/DwmnBfFINV9Phj3hhA/vrziNaGubRUM2cQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA1PR11MB8793.namprd11.prod.outlook.com (2603:10b6:806:46b::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.16; Wed, 13 Aug
 2025 12:44:06 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9031.012; Wed, 13 Aug 2025
 12:44:06 +0000
Date: Wed, 13 Aug 2025 15:43:56 +0300
From: Imre Deak <imre.deak@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, <I915-ci-infra@lists.freedesktop.org>
CC: Luciano Coelho <luciano.coelho@intel.com>, Jani Nikula
 <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?=
 =?utf-8?Q?lure_for_drm=2Fi915=2Ftc?= =?utf-8?Q?=3A?= Fix
 enabled/disconnected DP-alt sink handling (rev3)
Message-ID: <aJyIjFHdxZ9BWzQs@ideak-desk>
References: <20250805073700.642107-1-imre.deak@intel.com>
 <175439829105.213103.3969215907569188087@1538d3639d33>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <175439829105.213103.3969215907569188087@1538d3639d33>
X-ClientProxiedBy: DU6P191CA0015.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:540::16) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA1PR11MB8793:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a29d713-2466-4797-c9f0-08ddda6716e5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|10070799003|366016|1800799024|13003099007|7053199007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?mMwlKUttiK5tUM5W0UhQ24z2jzLeN3ZCgxV0Ebz14yD/W7LhRTk3WZRvvhPw?=
 =?us-ascii?Q?oGszyG3GT8nH4AlKcyoRfMbDWAGOCBfmIT4NdEXoukiT2ZHo+BTPd1G1HaBC?=
 =?us-ascii?Q?+GwkMwue3C+Xx8IdHtpM46uKrh58VIKzkzh2IA++qC1DnPuETbNnvfWzHBoB?=
 =?us-ascii?Q?1u4iASZI+jNz9GuYsH4xv/bD705qbLT1jnysypWOZaAndhcJ22bHe1LjRBbc?=
 =?us-ascii?Q?CYrnNMBJK0QE/IByN5/eZEZQkeXnDHC0D+HPadfLyCiJmSoo1vTjm1SjMur8?=
 =?us-ascii?Q?GNYpbH44rHOALj3fWzGX3Ofn4VsGEcUmg0QGN8vyZc0bJ+4OiMJtqHt09/6I?=
 =?us-ascii?Q?XyLJEmr0Xi35/58qOss6GVzPeIuspPCa3CnJjXizv7cV7/kOkTb3uXfHAXMv?=
 =?us-ascii?Q?bxPmfv+/DwxttWY5i7YdP/q/vfvkkbnHruuaz1xImBFuhvX+f3wt/uiQ1XY7?=
 =?us-ascii?Q?iaLz3z5vi7tSKwYOOt5DSc1C8dQWyUI2/sWIm152o7uySGrYAUsOo8dPONXF?=
 =?us-ascii?Q?Enyrkkv07H/iipxujrOiNLSG6YbU8huJtimVR8ErwCc2kP0xPFNT2ET3afKD?=
 =?us-ascii?Q?NkTzJt8xvONF/VySjTyFRlE7SIZ24f/kLhmwpMj+UcP96/5EjkBj9Vp//E4U?=
 =?us-ascii?Q?eXc+cxwlnZmjl8NZHgVBi0msTujuPEcmaodzlj4lzCoFkm0zvLjgYxW5iofN?=
 =?us-ascii?Q?+09MJr8+GIpXKIkflVHIm8858UrzBWDPYIrPVH3I/wPWZthJZS0BfBG2P+2P?=
 =?us-ascii?Q?Msdqn/PU+yYnoGtWNR05PcbY3+eQPkx4cmRph5jz4RrwbTiayGnuC+WuNY7z?=
 =?us-ascii?Q?IrFKQ6xkuRoyWEV76mij1e7CjHNVVEvueqQ4TSJy1I9/tWIT5SbXh9eQojQD?=
 =?us-ascii?Q?KU53Spft51zS1nuI8mvmtyeS6qrAqkrgB81q+godeHtNbJ4SuYiVne8Is0HM?=
 =?us-ascii?Q?xKViCFhfbtww2LGbsSwScDTRwgLavHz/8VZIwJEoaRxRpqL1YPMVZ2iO8/5c?=
 =?us-ascii?Q?2MjLsHHasFhR9LScyC8xb/XnGMuc+WFXlnoy/P/+x6IOhguSaNwRJZSsqwEk?=
 =?us-ascii?Q?2iqYD05pTS4OQ2x4JOZ4I/wQBO1LfXo6jiuDYWJZEhimRoNs2SBMAQUjo3bt?=
 =?us-ascii?Q?yakb//+C0DeX+mehofdLyB2I443Y/Vhcyb5mdvj/oPJWgBOeIJjA5M/6PG3P?=
 =?us-ascii?Q?lwDZjeTICIrdhKE1CIyWS/TnH5ysLeaqFefyt7qsYGW++KvqKDiuIGgRlBL/?=
 =?us-ascii?Q?DPlnpLRZ+sc7XnPa6ydeiRGk2r8OpPw/XZQtXlJ3Q+Kour5l/LSo13bs4jQ/?=
 =?us-ascii?Q?ubTGgKFDghPWOAH4G2+3Yh3SQL3MHG4EqHSuPEMbyibPqVk32oWWE+HHJtBk?=
 =?us-ascii?Q?tLnfX7Q=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024)(13003099007)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4jYj8W0DUAXJ9e0jowepP/LLk9+7/6y75c7PlhtQ7E9YI5cDeVfTbSyzdn4O?=
 =?us-ascii?Q?Z5kGaDAvWbgVoKs3YQyFX/4yBA79ZHQ6dql8d+dlRiDXauJzkzT1RuKrDa3L?=
 =?us-ascii?Q?yjxJP91EG/ycXvuRtrhliXkV7Fw6NPCmIt5D/uzmAgmm8Y1GOXY2W7MY+PaY?=
 =?us-ascii?Q?UmW6XtQ9z+iPdfe0j8jMDEuRYUQgfGCDAdTM3UGwyj9MOq2AqQ3GgsUnIQDf?=
 =?us-ascii?Q?x4BtmfgtJ8h7bPGoGDupe5PZ/T0mH79vmOS173w0r0HtM3x1vb4QL0BrRKYS?=
 =?us-ascii?Q?TR/Q8xOrTOpa5/924zxImeUbOYxRjTlVJ/WL0nhVHZic/O/f0bdxpHE7ocSL?=
 =?us-ascii?Q?GIugJSX2tQOtWwXT5BifjqocMWdbdOwmKLAsZizuXJpOP/nJR6JvSmCofLuo?=
 =?us-ascii?Q?l/z9zi0b5vnpQSY8pUhTvhOV96B20HKt0NcL0GP3mB5gEChuHzORv5rhYkRe?=
 =?us-ascii?Q?cDeIhfDM5fLdlSHhJP8SlhEjWiI8YHNDztdxCrJfV5pq5CS2Pr27Dxb8yW4f?=
 =?us-ascii?Q?Mn3ajgBhAR2XK5scsXFg3Y2vunzqskPSBk9cwUN7qOiOV9mIstJ5QguUy5V6?=
 =?us-ascii?Q?C4tN1je130JAgUuFGYpMhlwjmjSMFfj7jswFLVSUGvG3czaMiVXYjekCdWq/?=
 =?us-ascii?Q?HojEIbAdQETX3WKRo5J3rskco67zzPBLQ6hP5ZluDhFk5OMQ7Ji7wuJDDc4r?=
 =?us-ascii?Q?anhnDfTZ5Ztj5MvJjjRE3LSQMjcafxdrPV2al9pTZl7/pbWm/I6vOVIlKPUV?=
 =?us-ascii?Q?J3zp/z4BHKl/QdHnlQ2YWnQ8WTBHAtd5YqS6WpH08vQ33CbRC4w94BJbNqwx?=
 =?us-ascii?Q?Qb6g1Nj+9fxTsV3iBQAX6K1oHt9TThj8ni8uk2GQAziQXxq8SJKG+jnKSYtU?=
 =?us-ascii?Q?WpESAPBUben7eUvqf//mjM4GWbeUr49JgyTXScRj++TVeth5sEP59e8Ew9Fx?=
 =?us-ascii?Q?s2Aapr5K5swbS5qKoixu6OCQWjb5TsQ9yK1oz4cvOQELJhTG/mx7HuPRXwX4?=
 =?us-ascii?Q?VNIWEVNSSz8o5VZfylrXC62Ae7qJEzFIxlTS0GWDxyom3XWMoffLm54WuIg8?=
 =?us-ascii?Q?B+HTvIP9P24zS+qcTBbWEQJ79iGUiBGrYeuMwNK50C2Deiz2xaPXUr2tKIhk?=
 =?us-ascii?Q?uaBZnbxWGpI1t7kHnwopfdPU9Gv6xXuBZ+s+9EKAQs/o3ej6Q1sL4Z6nz47f?=
 =?us-ascii?Q?ZIgn5+ZrB8WAMfkVMTbW+eOAJdCGPWSyW0bnV10C3oqsGnJ5Nd5QS0Yp+qeZ?=
 =?us-ascii?Q?rhImTLCFBjwXAhhFPilrjBSvOfmJc8tHFMh2UoGzE6F8jCpw9HvcgWNpurmH?=
 =?us-ascii?Q?EsuIIwAsg3mNZQfen65GgmFlblKukpfCuxo0XSQZb7nrANbh79CmHSlhKhoF?=
 =?us-ascii?Q?3imfl/DbIYrU9GtJ/Ib+BYkNi08nNbLZHR3idYmRMbl4Cr1X86vg1zjjQzwc?=
 =?us-ascii?Q?m/Bx7tq87ZtrY6tR7MCaIhNFizx4bR/YpqlPUlOjS0mP/eHJ6dKadKi4+elu?=
 =?us-ascii?Q?8Y3Cp+0nkpmCokuU8d6lEGpyyZg0DFTciD1/EHvFaLRkB6tAl713sVW+AYKs?=
 =?us-ascii?Q?lUuZHeQCvw+IaDtNI/6cuLg938Phx5otgNznvS0YeggqkPzsKFO3jmDGBNwF?=
 =?us-ascii?Q?2zDeNdjPGdxj/W+PcovZgsOKMUUgZbqOmge7SH9bMJhF?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a29d713-2466-4797-c9f0-08ddda6716e5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2025 12:44:06.7163 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MGZdEAvU+4XAUqJZxdj2ZehVPGh3vccyX5uiEEiFLZnGbhwOtWXcIBo8Elf7RMTm9roVYtzFn48rTYJ+WhMoTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8793
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

Hi CI team,

please see one ticket below, which probably needs to be reopened.

On Tue, Aug 05, 2025 at 12:51:31PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/tc: Fix enabled/disconnected DP-alt sink handling (rev3)
> URL   : https://patchwork.freedesktop.org/series/152515/
> State : failure

Thanks for the review, patches 6-19 pushed to drm-intel-next, after
patches 1-5 got merged.

The failure is unrelated, details below.

The corresponding xe CI test passed:
https://patchwork.freedesktop.org/series/152514/#rev3

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16959_full -> Patchwork_152515v3_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_152515v3_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_152515v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (13 -> 12)
> ------------------------------
> 
>   Missing    (1): shard-snb-0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_152515v3_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_atomic_transition@plane-all-transition-fencing@pipe-a-hdmi-a-1:
>     - shard-tglu:         [PASS][1] -> [FAIL][2] +1 other test fail
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-tglu-7/igt@kms_atomic_transition@plane-all-transition-fencing@pipe-a-hdmi-a-1.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-10/igt@kms_atomic_transition@plane-all-transition-fencing@pipe-a-hdmi-a-1.html

There are TypeC PHYs/connectors on this host, but no sink is connected
on them, so the failure is unrelated. It's

(kms_atomic_transition:3067) CRITICAL: Test assertion failure function wait_for_transition, file ../tests/kms_atomic_transition.c:534:
(kms_atomic_transition:3067) CRITICAL: Failed assertion: fd_completed(fence_fd)

and looks to be the failure on the same host and spot in the earlier
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-tglu-10/igt@kms_atomic_transition@plane-all-transition-fencing@pipe-a-hdmi-a-1.html

The ticket which was opened for the above issue and then later closed is
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14064

so looks like it needs to be reopened.

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_152515v3_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@object-reloc-purge-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][3] ([i915#8411])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-7/igt@api_intel_bb@object-reloc-purge-cache.html
> 
>   * igt@fbdev@pan:
>     - shard-rkl:          [PASS][4] -> [SKIP][5] ([i915#14544] / [i915#2582])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@fbdev@pan.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@fbdev@pan.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-dg2-9:        NOTRUN -> [SKIP][6] ([i915#7697])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-tglu:         NOTRUN -> [SKIP][7] ([i915#9323])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-7/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-rkl:          NOTRUN -> [SKIP][8] ([i915#7697])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-4/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_compute@compute-square:
>     - shard-dg2:          NOTRUN -> [FAIL][9] ([i915#13665])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@gem_compute@compute-square.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-tglu-1:       NOTRUN -> [SKIP][10] ([i915#6335]) +1 other test skip
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_ctx_isolation@preservation-s3:
>     - shard-dg2:          [PASS][11] -> [INCOMPLETE][12] ([i915#12353]) +1 other test incomplete
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg2-3/igt@gem_ctx_isolation@preservation-s3.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-2/igt@gem_ctx_isolation@preservation-s3.html
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][13] ([i915#12353]) +1 other test incomplete
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk10/igt@gem_ctx_isolation@preservation-s3.html
> 
>   * igt@gem_ctx_persistence@heartbeat-close:
>     - shard-dg2-9:        NOTRUN -> [SKIP][14] ([i915#8555])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@gem_ctx_persistence@heartbeat-close.html
> 
>   * igt@gem_ctx_persistence@processes:
>     - shard-snb:          NOTRUN -> [SKIP][15] ([i915#1099])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-snb1/igt@gem_ctx_persistence@processes.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#280])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@gem_ctx_sseu@mmap-args.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][17] ([i915#280])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][18] ([i915#13390])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk10/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_eio@kms:
>     - shard-tglu:         NOTRUN -> [DMESG-WARN][19] ([i915#13363])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-3/igt@gem_eio@kms.html
> 
>   * igt@gem_eio@reset-stress:
>     - shard-dg2:          [PASS][20] -> [FAIL][21] ([i915#5784])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg2-8/igt@gem_eio@reset-stress.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-10/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_eio@wait-wedge-10ms:
>     - shard-dg1:          [PASS][22] -> [DMESG-WARN][23] ([i915#4391] / [i915#4423]) +1 other test dmesg-warn
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg1-18/igt@gem_eio@wait-wedge-10ms.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg1-13/igt@gem_eio@wait-wedge-10ms.html
> 
>   * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
>     - shard-rkl:          NOTRUN -> [SKIP][24] ([i915#4525])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-2/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-tglu-1:       NOTRUN -> [SKIP][25] ([i915#4525])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-tglu:         NOTRUN -> [SKIP][26] ([i915#4525]) +1 other test skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-3/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_balancer@sliced:
>     - shard-dg2-9:        NOTRUN -> [SKIP][27] ([i915#4812]) +2 other tests skip
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@gem_exec_balancer@sliced.html
> 
>   * igt@gem_exec_big@single:
>     - shard-tglu:         [PASS][28] -> [ABORT][29] ([i915#11713] / [i915#14756])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-tglu-2/igt@gem_exec_big@single.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-8/igt@gem_exec_big@single.html
> 
>   * igt@gem_exec_capture@capture-invisible:
>     - shard-glk11:        NOTRUN -> [SKIP][30] ([i915#6334]) +1 other test skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk11/igt@gem_exec_capture@capture-invisible.html
> 
>   * igt@gem_exec_flush@basic-wb-prw-default:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#3539] / [i915#4852])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@gem_exec_flush@basic-wb-prw-default.html
> 
>   * igt@gem_exec_flush@basic-wb-set-default:
>     - shard-dg2-9:        NOTRUN -> [SKIP][32] ([i915#3539] / [i915#4852]) +2 other tests skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@gem_exec_flush@basic-wb-set-default.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][33] ([i915#3281]) +3 other tests skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-2/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-cpu-read:
>     - shard-dg2-9:        NOTRUN -> [SKIP][34] ([i915#3281]) +6 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@gem_exec_reloc@basic-cpu-read.html
> 
>   * igt@gem_exec_reloc@basic-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#3281]) +2 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-7/igt@gem_exec_reloc@basic-wc.html
> 
>   * igt@gem_exec_schedule@preempt-queue:
>     - shard-dg2-9:        NOTRUN -> [SKIP][36] ([i915#4537] / [i915#4812])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@gem_exec_schedule@preempt-queue.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-chain:
>     - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#4537] / [i915#4812]) +2 other tests skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@gem_exec_schedule@preempt-queue-contexts-chain.html
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-dg2:          [PASS][38] -> [INCOMPLETE][39] ([i915#11441] / [i915#13304])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg2-6/igt@gem_exec_suspend@basic-s0.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-7/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem_exec_suspend@basic-s0@lmem0:
>     - shard-dg2:          [PASS][40] -> [INCOMPLETE][41] ([i915#11441])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg2-6/igt@gem_exec_suspend@basic-s0@lmem0.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-7/igt@gem_exec_suspend@basic-s0@lmem0.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4860])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@gem_fenced_exec_thrash@no-spare-fences.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
>     - shard-dg2-9:        NOTRUN -> [SKIP][43] ([i915#4860])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-tglu:         NOTRUN -> [SKIP][44] ([i915#4613]) +1 other test skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-3/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-glk:          NOTRUN -> [SKIP][45] ([i915#4613]) +2 other tests skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk1/igt@gem_lmem_swapping@verify-ccs.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][46] ([i915#4613]) +1 other test skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-random-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][47] ([i915#4613])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-2/igt@gem_lmem_swapping@verify-random-ccs.html
> 
>   * igt@gem_madvise@dontneed-before-exec:
>     - shard-dg2-9:        NOTRUN -> [SKIP][48] ([i915#3282]) +2 other tests skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@gem_madvise@dontneed-before-exec.html
> 
>   * igt@gem_mmap_gtt@basic-copy:
>     - shard-dg2-9:        NOTRUN -> [SKIP][49] ([i915#4077]) +11 other tests skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@gem_mmap_gtt@basic-copy.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#4077]) +9 other tests skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@gem_mmap_wc@bad-offset:
>     - shard-dg2-9:        NOTRUN -> [SKIP][51] ([i915#4083])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@gem_mmap_wc@bad-offset.html
> 
>   * igt@gem_mmap_wc@close:
>     - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#4083])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-7/igt@gem_mmap_wc@close.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-display:
>     - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#3282]) +3 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-tglu-1:       NOTRUN -> [WARN][54] ([i915#2658])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@gem_pwrite@basic-exhaustion.html
>     - shard-glk10:        NOTRUN -> [WARN][55] ([i915#14702] / [i915#2658])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk10/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@create-protected-buffer:
>     - shard-rkl:          [PASS][56] -> [TIMEOUT][57] ([i915#12964])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@gem_pxp@create-protected-buffer.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@gem_pxp@create-protected-buffer.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-buffer:
>     - shard-tglu-1:       NOTRUN -> [SKIP][58] ([i915#13398])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@gem_pxp@hw-rejects-pxp-buffer.html
> 
>   * igt@gem_pxp@regular-baseline-src-copy-readible:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][59] ([i915#12964])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-2/igt@gem_pxp@regular-baseline-src-copy-readible.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-3:
>     - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#4270])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@gem_pxp@reject-modify-context-protection-off-3.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-on:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][61] ([i915#12917] / [i915#12964])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-4/igt@gem_pxp@reject-modify-context-protection-on.html
> 
>   * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
>     - shard-rkl:          [PASS][62] -> [TIMEOUT][63] ([i915#12917] / [i915#12964]) +2 other tests timeout
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-2/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
>     - shard-dg2-9:        NOTRUN -> [SKIP][64] ([i915#4270]) +2 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
> 
>   * igt@gem_readwrite@read-write:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#3282]) +4 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-7/igt@gem_readwrite@read-write.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-linear:
>     - shard-dg2-9:        NOTRUN -> [SKIP][66] ([i915#5190] / [i915#8428]) +2 other tests skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@gem_render_copy@y-tiled-to-vebox-linear.html
> 
>   * igt@gem_render_copy@yf-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#5190] / [i915#8428]) +3 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@gem_render_copy@yf-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>     - shard-dg2-9:        NOTRUN -> [SKIP][68] ([i915#4079]) +1 other test skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
> 
>   * igt@gem_unfence_active_buffers:
>     - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#4879])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@gem_unfence_active_buffers.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#3297]) +1 other test skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-7/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-tglu:         NOTRUN -> [SKIP][71] ([i915#3297] / [i915#3323])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-3/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@unsync-overlap:
>     - shard-dg2-9:        NOTRUN -> [SKIP][72] ([i915#3297]) +1 other test skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@gem_userptr_blits@unsync-overlap.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-tglu-1:       NOTRUN -> [SKIP][73] ([i915#3297])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gen7_exec_parse@basic-allocation:
>     - shard-dg2-9:        NOTRUN -> [SKIP][74] +8 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@gen7_exec_parse@basic-allocation.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-tglu:         NOTRUN -> [SKIP][75] ([i915#2527] / [i915#2856])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-7/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-dg2-9:        NOTRUN -> [SKIP][76] ([i915#2856]) +2 other tests skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@gen9_exec_parse@unaligned-jump:
>     - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#2856]) +1 other test skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@gen9_exec_parse@unaligned-jump.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-tglu-1:       NOTRUN -> [SKIP][78] ([i915#2527] / [i915#2856]) +1 other test skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_drm_fdinfo@virtual-busy-all:
>     - shard-dg2-9:        NOTRUN -> [SKIP][79] ([i915#14118])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@i915_drm_fdinfo@virtual-busy-all.html
> 
>   * igt@i915_drm_fdinfo@virtual-busy-hang-all:
>     - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#14118])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@i915_drm_fdinfo@virtual-busy-hang-all.html
> 
>   * igt@i915_module_load@reload-no-display:
>     - shard-tglu-1:       NOTRUN -> [DMESG-WARN][81] ([i915#13029] / [i915#14545])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@i915_module_load@reload-no-display.html
>     - shard-snb:          [PASS][82] -> [DMESG-WARN][83] ([i915#14545])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-snb1/igt@i915_module_load@reload-no-display.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-snb7/igt@i915_module_load@reload-no-display.html
> 
>   * igt@i915_pm_freq_api@freq-reset-multiple:
>     - shard-tglu:         NOTRUN -> [SKIP][84] ([i915#8399])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-7/igt@i915_pm_freq_api@freq-reset-multiple.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-tglu:         NOTRUN -> [WARN][85] ([i915#13790] / [i915#2681]) +1 other test warn
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-3/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#14498])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-4/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#4387])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-2/igt@i915_pm_sseu@full-enable.html
>     - shard-tglu:         NOTRUN -> [SKIP][88] ([i915#4387])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-3/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_query@query-topology-coherent-slice-mask:
>     - shard-dg2-9:        NOTRUN -> [SKIP][89] ([i915#6188])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@i915_query@query-topology-coherent-slice-mask.html
> 
>   * igt@i915_suspend@basic-s2idle-without-i915:
>     - shard-rkl:          [PASS][90] -> [DMESG-WARN][91] ([i915#12917] / [i915#12964])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@i915_suspend@basic-s2idle-without-i915.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-7/igt@i915_suspend@basic-s2idle-without-i915.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-glk11:        NOTRUN -> [INCOMPLETE][92] ([i915#4817])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk11/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][93] ([i915#4212]) +1 other test skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
> 
>   * igt@kms_addfb_basic@basic-x-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#4212]) +1 other test skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@kms_addfb_basic@basic-x-tiled-legacy.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip-atomic:
>     - shard-glk:          NOTRUN -> [FAIL][95] ([i915#10991] / [i915#13335])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip-atomic.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [FAIL][96] ([i915#13335])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][97] ([i915#10991])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][98] ([i915#12761]) +1 other test incomplete
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk9/igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-glk:          NOTRUN -> [SKIP][99] ([i915#1769])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#1769] / [i915#3555])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-4/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-all-transition-fencing:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][101] ([i915#12964]) +8 other tests dmesg-warn
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-4/igt@kms_atomic_transition@plane-all-transition-fencing.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#5286]) +2 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-4/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
>     - shard-tglu-1:       NOTRUN -> [SKIP][103] ([i915#5286]) +4 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#5286]) +3 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#3638]) +1 other test skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-2/igt@kms_big_fb@linear-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-270:
>     - shard-dg2-9:        NOTRUN -> [SKIP][106] ([i915#4538] / [i915#5190]) +6 other tests skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
>     - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#4538] / [i915#5190]) +4 other tests skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-7/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-addfb:
>     - shard-dg2-9:        NOTRUN -> [SKIP][108] ([i915#5190])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_big_fb@y-tiled-addfb.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
>     - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#5190])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-7/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
>     - shard-tglu-1:       NOTRUN -> [SKIP][110] +56 other tests skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][111] +5 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_busy@basic@flip:
>     - shard-rkl:          [PASS][112] -> [DMESG-WARN][113] ([i915#12964]) +15 other tests dmesg-warn
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-5/igt@kms_busy@basic@flip.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-4/igt@kms_busy@basic@flip.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][114] ([i915#12313]) +1 other test skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-7/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#14098] / [i915#6095]) +42 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-b-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][116] ([i915#10307] / [i915#6095]) +64 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][117] ([i915#6095]) +39 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-7/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#10307] / [i915#6095]) +154 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-11/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][119] ([i915#6095]) +114 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg1-13/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#12805])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-7/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][121] ([i915#6095]) +4 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][122] ([i915#6095]) +49 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-b-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#6095]) +20 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-10/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-b-dp-3.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#6095]) +45 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#4423] / [i915#6095])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg1-18/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][127] ([i915#12313])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-c-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#13783]) +3 other tests skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-11/igt@kms_cdclk@plane-scaling@pipe-c-dp-3.html
> 
>   * igt@kms_chamelium_color@ctm-green-to-red:
>     - shard-dg2:          NOTRUN -> [SKIP][129] +11 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@kms_chamelium_color@ctm-green-to-red.html
> 
>   * igt@kms_chamelium_edid@vga-edid-read:
>     - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-4/igt@kms_chamelium_edid@vga-edid-read.html
> 
>   * igt@kms_chamelium_frames@hdmi-aspect-ratio:
>     - shard-tglu:         NOTRUN -> [SKIP][131] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-3/igt@kms_chamelium_frames@hdmi-aspect-ratio.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-fast:
>     - shard-dg2-9:        NOTRUN -> [SKIP][132] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_chamelium_frames@hdmi-crc-fast.html
> 
>   * igt@kms_chamelium_frames@hdmi-frame-dump:
>     - shard-tglu-1:       NOTRUN -> [SKIP][133] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@kms_chamelium_frames@hdmi-frame-dump.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-7/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html
> 
>   * igt@kms_color@deep-color:
>     - shard-dg2:          [PASS][135] -> [SKIP][136] ([i915#12655] / [i915#3555])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg2-11/igt@kms_color@deep-color.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-1/igt@kms_color@deep-color.html
> 
>   * igt@kms_color@deep-color@pipe-c-edp-1-gamma:
>     - shard-mtlp:         [PASS][137] -> [FAIL][138] ([i915#6892])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-mtlp-8/igt@kms_color@deep-color@pipe-c-edp-1-gamma.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-mtlp-4/igt@kms_color@deep-color@pipe-c-edp-1-gamma.html
> 
>   * igt@kms_color@degamma:
>     - shard-rkl:          [PASS][139] -> [SKIP][140] ([i915#12655] / [i915#14544]) +1 other test skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_color@degamma.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_color@degamma.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-dg2-9:        NOTRUN -> [SKIP][141] ([i915#7118] / [i915#9424])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#9424])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-dg2-9:        NOTRUN -> [SKIP][143] ([i915#3299])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#3299])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@kms_content_protection@dp-mst-lic-type-1.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][145] ([i915#3116] / [i915#3299]) +1 other test skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#7118])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-2/igt@kms_content_protection@srm.html
>     - shard-tglu:         NOTRUN -> [SKIP][147] ([i915#6944] / [i915#7116] / [i915#7118])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-3/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-max-size:
>     - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#3555]) +2 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@kms_cursor_crc@cursor-offscreen-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-256x256:
>     - shard-rkl:          [PASS][149] -> [SKIP][150] ([i915#14544]) +26 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-256x256.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-256x256.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#3555]) +2 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-tglu-1:       NOTRUN -> [SKIP][152] ([i915#13049])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-max-size:
>     - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#3555]) +1 other test skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-3/igt@kms_cursor_crc@cursor-onscreen-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-random-max-size:
>     - shard-tglu-1:       NOTRUN -> [SKIP][154] ([i915#3555]) +4 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@kms_cursor_crc@cursor-random-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-dg2-9:        NOTRUN -> [SKIP][155] ([i915#13049]) +3 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:
>     - shard-dg2-9:        NOTRUN -> [SKIP][156] ([i915#13046] / [i915#5354]) +4 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-tglu:         NOTRUN -> [SKIP][157] ([i915#4103]) +1 other test skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-tglu-1:       NOTRUN -> [SKIP][158] ([i915#4103]) +2 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
>     - shard-glk11:        NOTRUN -> [SKIP][159] ([i915#11190]) +1 other test skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk11/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-atomic:
>     - shard-glk11:        NOTRUN -> [SKIP][160] +169 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk11/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#13046] / [i915#5354]) +1 other test skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#4103] / [i915#4213])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-tglu:         NOTRUN -> [SKIP][163] ([i915#9723])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-3/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#9833])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][165] ([i915#9723])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-dg2:          [PASS][166] -> [SKIP][167] ([i915#3555])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#3804])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-dg2:          [PASS][169] -> [SKIP][170] ([i915#1257])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg2-11/igt@kms_dp_aux_dev.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-1/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_dp_link_training@non-uhbr-sst:
>     - shard-dg2-9:        NOTRUN -> [SKIP][171] ([i915#13749]) +1 other test skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_dp_link_training@non-uhbr-sst.html
> 
>   * igt@kms_dp_linktrain_fallback@dsc-fallback:
>     - shard-tglu-1:       NOTRUN -> [SKIP][172] ([i915#13707])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@kms_dp_linktrain_fallback@dsc-fallback.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#8812])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-tglu:         NOTRUN -> [SKIP][174] ([i915#3555] / [i915#3840])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-3/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#3555] / [i915#3840])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@kms_dsc@dsc-with-formats.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][176] ([i915#3555] / [i915#3840])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][177] ([i915#3840] / [i915#9053])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-dg2:          [PASS][178] -> [ABORT][179] ([i915#8213])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg2-11/igt@kms_fbcon_fbt@fbc-suspend.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-10/igt@kms_fbcon_fbt@fbc-suspend.html
>     - shard-rkl:          [PASS][180] -> [SKIP][181] ([i915#14544] / [i915#14561])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_fbcon_fbt@fbc-suspend.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-tglu-1:       NOTRUN -> [SKIP][182] ([i915#3469])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-dg2-9:        NOTRUN -> [SKIP][183] ([i915#1839])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-tglu:         NOTRUN -> [SKIP][184] ([i915#658])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-7/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank:
>     - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#9934]) +1 other test skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@kms_flip@2x-blocking-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
>     - shard-dg2-9:        NOTRUN -> [SKIP][186] ([i915#9934]) +9 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][187] ([i915#4839])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk6/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race:
>     - shard-tglu-1:       NOTRUN -> [SKIP][188] ([i915#3637] / [i915#9934]) +4 other tests skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@kms_flip@2x-modeset-vs-vblank-race.html
> 
>   * igt@kms_flip@2x-plain-flip-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][189] ([i915#3637] / [i915#9934]) +1 other test skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-7/igt@kms_flip@2x-plain-flip-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check:
>     - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#9934]) +2 other tests skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-4/igt@kms_flip@2x-plain-flip-ts-check.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
>     - shard-rkl:          [PASS][191] -> [SKIP][192] ([i915#14544] / [i915#3637]) +2 other tests skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-dpms-on-nop:
>     - shard-rkl:          [PASS][193] -> [SKIP][194] ([i915#14544] / [i915#14553])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_flip@flip-vs-dpms-on-nop.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_flip@flip-vs-dpms-on-nop.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][195] ([i915#12745] / [i915#4839] / [i915#6113])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk1/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][196] ([i915#12745] / [i915#4839]) +1 other test incomplete
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk5/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][197] ([i915#12745])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk5/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-hdmi-a1:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][198] ([i915#12745] / [i915#6113])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk1/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][199] ([i915#2672] / [i915#3555]) +3 other tests skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][200] ([i915#2672] / [i915#3555]) +1 other test skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][201] ([i915#2672] / [i915#3555] / [i915#5190])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
>     - shard-dg2-9:        NOTRUN -> [SKIP][202] ([i915#2672]) +2 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][203] ([i915#2587] / [i915#2672] / [i915#3555])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#2672]) +3 other tests skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][205] ([i915#2587] / [i915#2672]) +3 other tests skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][207] ([i915#2672] / [i915#3555]) +1 other test skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#2672]) +2 other tests skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html
>     - shard-tglu:         NOTRUN -> [SKIP][209] ([i915#2587] / [i915#2672]) +3 other tests skip
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][210] ([i915#2672] / [i915#3555]) +2 other tests skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling:
>     - shard-rkl:          [PASS][211] -> [SKIP][212] ([i915#14544] / [i915#3555]) +1 other test skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#2672] / [i915#3555]) +1 other test skip
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-rkl:          [PASS][214] -> [SKIP][215] ([i915#14544] / [i915#1849] / [i915#5354]) +6 other tests skip
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#8708]) +12 other tests skip
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move:
>     - shard-dg2-9:        NOTRUN -> [SKIP][217] ([i915#5354]) +21 other tests skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
>     - shard-snb:          NOTRUN -> [SKIP][218] +69 other tests skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
>     - shard-dg2-9:        NOTRUN -> [SKIP][219] ([i915#3458]) +19 other tests skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#3458]) +10 other tests skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#5354]) +24 other tests skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][222] ([i915#1825]) +16 other tests skip
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
>     - shard-tglu:         NOTRUN -> [SKIP][223] +56 other tests skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-rkl:          NOTRUN -> [SKIP][224] ([i915#9766])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-4/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][225] ([i915#8708]) +5 other tests skip
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render:
>     - shard-rkl:          NOTRUN -> [SKIP][226] ([i915#3023]) +6 other tests skip
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][227] ([i915#3555] / [i915#8228]) +2 other tests skip
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-3/igt@kms_hdr@bpc-switch-suspend.html
>     - shard-rkl:          NOTRUN -> [SKIP][228] ([i915#3555] / [i915#8228])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-2/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-dg2-9:        NOTRUN -> [SKIP][229] ([i915#3555] / [i915#8228])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_invalid_mode@bad-htotal:
>     - shard-rkl:          [PASS][230] -> [SKIP][231] ([i915#14544] / [i915#3555] / [i915#8826]) +1 other test skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_invalid_mode@bad-htotal.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_invalid_mode@bad-htotal.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][232] ([i915#12388])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-3/igt@kms_joiner@basic-force-big-joiner.html
>     - shard-rkl:          NOTRUN -> [SKIP][233] ([i915#12388])
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-2/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_joiner@basic-max-non-joiner:
>     - shard-tglu-1:       NOTRUN -> [SKIP][234] ([i915#13688])
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@kms_joiner@basic-max-non-joiner.html
> 
>   * igt@kms_joiner@basic-ultra-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#12339])
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-4/igt@kms_joiner@basic-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-ultra-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][236] ([i915#12339])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-3/igt@kms_joiner@invalid-modeset-ultra-joiner.html
> 
>   * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#13522])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-4/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#4816])
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-tglu-1:       NOTRUN -> [SKIP][239] ([i915#6301]) +1 other test skip
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][240] ([i915#6301])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][241] ([i915#13409] / [i915#13476])
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-dg2-9:        NOTRUN -> [SKIP][242] ([i915#3555] / [i915#8821])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_plane_lowres@tiling-yf.html
> 
>   * igt@kms_plane_multiple@2x-tiling-none:
>     - shard-dg2-9:        NOTRUN -> [SKIP][243] ([i915#13958])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_plane_multiple@2x-tiling-none.html
> 
>   * igt@kms_plane_multiple@2x-tiling-x:
>     - shard-tglu-1:       NOTRUN -> [SKIP][244] ([i915#13958])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-x.html
> 
>   * igt@kms_plane_multiple@2x-tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#13958])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-7/igt@kms_plane_multiple@2x-tiling-y.html
> 
>   * igt@kms_plane_multiple@2x-tiling-yf:
>     - shard-tglu:         NOTRUN -> [SKIP][246] ([i915#13958])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-3/igt@kms_plane_multiple@2x-tiling-yf.html
>     - shard-rkl:          NOTRUN -> [SKIP][247] ([i915#13958])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-yf.html
> 
>   * igt@kms_plane_multiple@tiling-4:
>     - shard-tglu:         NOTRUN -> [SKIP][248] ([i915#14259])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-7/igt@kms_plane_multiple@tiling-4.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-dg2-9:        NOTRUN -> [SKIP][249] ([i915#6953] / [i915#9423])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format@pipe-b:
>     - shard-rkl:          [PASS][250] -> [SKIP][251] ([i915#12247] / [i915#14544] / [i915#8152]) +3 other tests skip
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format@pipe-b.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format@pipe-b.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d:
>     - shard-tglu-1:       NOTRUN -> [SKIP][252] ([i915#12247]) +4 other tests skip
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:
>     - shard-rkl:          NOTRUN -> [SKIP][253] ([i915#12247])
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-a:
>     - shard-rkl:          [PASS][254] -> [SKIP][255] ([i915#12247] / [i915#14544]) +1 other test skip
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-a.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-a.html
> 
>   * igt@kms_pm_backlight@basic-brightness:
>     - shard-tglu:         NOTRUN -> [SKIP][256] ([i915#9812])
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-3/igt@kms_pm_backlight@basic-brightness.html
> 
>   * igt@kms_pm_backlight@fade:
>     - shard-tglu-1:       NOTRUN -> [SKIP][257] ([i915#9812])
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@kms_pm_backlight@fade.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-dg2-9:        NOTRUN -> [SKIP][258] ([i915#9685])
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-dg2-9:        NOTRUN -> [SKIP][259] ([i915#3828])
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_pm_dc@dc5-retention-flops.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-dg2-9:        NOTRUN -> [SKIP][260] ([i915#14104])
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-rkl:          NOTRUN -> [SKIP][261] ([i915#9685]) +1 other test skip
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-2/igt@kms_pm_dc@dc6-psr.html
>     - shard-tglu:         NOTRUN -> [SKIP][262] ([i915#9685])
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-3/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-glk10:        NOTRUN -> [SKIP][263] +183 other tests skip
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk10/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg2:          [PASS][264] -> [SKIP][265] ([i915#9519])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-1/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-rkl:          [PASS][266] -> [SKIP][267] ([i915#14544] / [i915#9519])
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_pm_rpm@dpms-non-lpsp.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_pm_rpm@i2c:
>     - shard-dg1:          [PASS][268] -> [DMESG-WARN][269] ([i915#4423]) +1 other test dmesg-warn
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg1-16/igt@kms_pm_rpm@i2c.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg1-14/igt@kms_pm_rpm@i2c.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-dg2:          NOTRUN -> [SKIP][270] ([i915#9519]) +1 other test skip
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-rkl:          [PASS][271] -> [SKIP][272] ([i915#9519])
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-tglu:         NOTRUN -> [SKIP][273] ([i915#9519])
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-dg2-9:        NOTRUN -> [SKIP][274] ([i915#6524] / [i915#6805])
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_properties@crtc-properties-legacy:
>     - shard-rkl:          [PASS][275] -> [SKIP][276] ([i915#11521] / [i915#14544])
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_properties@crtc-properties-legacy.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_properties@crtc-properties-legacy.html
> 
>   * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf:
>     - shard-snb:          NOTRUN -> [SKIP][277] ([i915#11520]) +1 other test skip
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-snb1/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][278] ([i915#11520]) +5 other tests skip
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-7/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
>     - shard-glk11:        NOTRUN -> [SKIP][279] ([i915#11520]) +4 other tests skip
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk11/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html
>     - shard-rkl:          NOTRUN -> [SKIP][280] ([i915#11520]) +1 other test skip
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-4/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][281] ([i915#11520]) +5 other tests skip
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:
>     - shard-glk:          NOTRUN -> [SKIP][282] ([i915#11520]) +7 other tests skip
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk6/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][283] ([i915#11520]) +4 other tests skip
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-glk10:        NOTRUN -> [SKIP][284] ([i915#11520]) +2 other tests skip
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk10/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:
>     - shard-dg2-9:        NOTRUN -> [SKIP][285] ([i915#11520]) +5 other tests skip
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-rkl:          NOTRUN -> [SKIP][286] ([i915#9683])
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-2/igt@kms_psr2_su@page_flip-xrgb8888.html
>     - shard-tglu:         NOTRUN -> [SKIP][287] ([i915#9683]) +1 other test skip
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-3/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-psr-sprite-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][288] ([i915#1072] / [i915#9732]) +13 other tests skip
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-7/igt@kms_psr@fbc-psr-sprite-mmap-gtt.html
> 
>   * igt@kms_psr@fbc-psr-suspend:
>     - shard-dg2-9:        NOTRUN -> [SKIP][289] ([i915#1072] / [i915#9732]) +15 other tests skip
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_psr@fbc-psr-suspend.html
> 
>   * igt@kms_psr@fbc-psr2-cursor-mmap-gtt:
>     - shard-glk:          NOTRUN -> [SKIP][290] +316 other tests skip
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk6/igt@kms_psr@fbc-psr2-cursor-mmap-gtt.html
> 
>   * igt@kms_psr@pr-cursor-plane-onoff:
>     - shard-rkl:          NOTRUN -> [SKIP][291] ([i915#1072] / [i915#9732]) +7 other tests skip
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-4/igt@kms_psr@pr-cursor-plane-onoff.html
> 
>   * igt@kms_psr@pr-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][292] ([i915#9732]) +13 other tests skip
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-7/igt@kms_psr@pr-dpms.html
> 
>   * igt@kms_psr@psr2-cursor-mmap-gtt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][293] ([i915#9732]) +14 other tests skip
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@kms_psr@psr2-cursor-mmap-gtt.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-dg2:          NOTRUN -> [SKIP][294] ([i915#9685])
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
>     - shard-rkl:          NOTRUN -> [SKIP][295] ([i915#5289])
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-2/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
>     - shard-tglu:         NOTRUN -> [SKIP][296] ([i915#5289])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-3/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-rotation-270:
>     - shard-dg2-9:        NOTRUN -> [SKIP][297] ([i915#12755])
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_rotation_crc@primary-rotation-270.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-dg2-9:        NOTRUN -> [SKIP][298] ([i915#12755] / [i915#5190])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_scaling_modes@scaling-mode-center:
>     - shard-dg2-9:        NOTRUN -> [SKIP][299] ([i915#3555])
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_scaling_modes@scaling-mode-center.html
> 
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-tglu:         NOTRUN -> [ABORT][300] ([i915#13179]) +1 other test abort
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-7/igt@kms_selftest@drm_framebuffer.html
>     - shard-glk:          NOTRUN -> [ABORT][301] ([i915#13179]) +1 other test abort
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk6/igt@kms_selftest@drm_framebuffer.html
> 
>   * igt@kms_setmode@basic:
>     - shard-tglu:         NOTRUN -> [FAIL][302] ([i915#5465]) +2 other tests fail
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-3/igt@kms_setmode@basic.html
> 
>   * igt@kms_setmode@basic@pipe-b-edp-1:
>     - shard-mtlp:         [PASS][303] -> [FAIL][304] ([i915#5465]) +2 other tests fail
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-mtlp-5/igt@kms_setmode@basic@pipe-b-edp-1.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-mtlp-5/igt@kms_setmode@basic@pipe-b-edp-1.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-tglu:         NOTRUN -> [SKIP][305] ([i915#8623])
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-3/igt@kms_tiled_display@basic-test-pattern.html
>     - shard-rkl:          NOTRUN -> [SKIP][306] ([i915#8623])
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-2/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_vrr@lobf:
>     - shard-dg2:          NOTRUN -> [SKIP][307] ([i915#11920])
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@kms_vrr@lobf.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][308] ([i915#11920])
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@kms_vrr@lobf.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-mtlp:         [PASS][309] -> [FAIL][310] ([i915#10393]) +1 other test fail
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-mtlp-7/igt@kms_vrr@negative-basic.html
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-mtlp-1/igt@kms_vrr@negative-basic.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][311] ([i915#9906])
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-rkl:          NOTRUN -> [SKIP][312] ([i915#9906])
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-2/igt@kms_vrr@seamless-rr-switch-vrr.html
>     - shard-tglu:         NOTRUN -> [SKIP][313] ([i915#9906]) +1 other test skip
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-3/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@kms_writeback@writeback-check-output-xrgb2101010:
>     - shard-dg2-9:        NOTRUN -> [SKIP][314] ([i915#2437] / [i915#9412])
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_writeback@writeback-check-output-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-dg2-9:        NOTRUN -> [SKIP][315] ([i915#2437])
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-glk:          NOTRUN -> [SKIP][316] ([i915#2437])
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk1/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
>     - shard-dg2:          NOTRUN -> [SKIP][317] ([i915#2437] / [i915#9412])
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-rkl:          NOTRUN -> [SKIP][318] ([i915#2437])
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-4/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-dg2:          NOTRUN -> [SKIP][319] ([i915#2436])
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-7/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf@mi-rpc:
>     - shard-dg2:          NOTRUN -> [SKIP][320] ([i915#2434])
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@perf@mi-rpc.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-rkl:          [PASS][321] -> [FAIL][322] ([i915#14550])
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@perf@polling-small-buf.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@perf@polling-small-buf.html
> 
>   * igt@perf_pmu@interrupts-sync:
>     - shard-rkl:          [PASS][323] -> [FAIL][324] ([i915#14470])
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-7/igt@perf_pmu@interrupts-sync.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-7/igt@perf_pmu@interrupts-sync.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-dg2:          NOTRUN -> [SKIP][325] ([i915#8516])
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@perf_pmu@rc6-all-gts.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][326] ([i915#8516])
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-1/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@prime_vgem@basic-fence-flip:
>     - shard-dg2-9:        NOTRUN -> [SKIP][327] ([i915#3708])
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@prime_vgem@basic-fence-flip.html
>     - shard-rkl:          [PASS][328] -> [SKIP][329] ([i915#14544] / [i915#3708])
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@prime_vgem@basic-fence-flip.html
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@prime_vgem@basic-fence-flip.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][330] ([i915#3708])
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-3/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@runner@aborted:
>     - shard-mtlp:         NOTRUN -> ([FAIL][331], [FAIL][332]) ([i915#14489])
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-mtlp-1/igt@runner@aborted.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-mtlp-1/igt@runner@aborted.html
> 
>   * igt@sriov_basic@bind-unbind-vf:
>     - shard-rkl:          NOTRUN -> [SKIP][333] ([i915#9917])
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-2/igt@sriov_basic@bind-unbind-vf.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on:
>     - shard-tglu:         NOTRUN -> [FAIL][334] ([i915#12910]) +19 other tests fail
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-tglu-3/igt@sriov_basic@enable-vfs-autoprobe-on.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each:
>     - shard-dg2-9:        NOTRUN -> [SKIP][335] ([i915#9917])
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-9/igt@sriov_basic@enable-vfs-bind-unbind-each.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
>     - shard-dg2:          NOTRUN -> [SKIP][336] ([i915#9917])
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-7/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_mmap_wc@set-cache-level:
>     - shard-rkl:          [SKIP][337] ([i915#14544] / [i915#1850]) -> [PASS][338]
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@gem_mmap_wc@set-cache-level.html
> 
>   * igt@gem_pxp@display-protected-crc:
>     - shard-rkl:          [TIMEOUT][339] ([i915#12917] / [i915#12964]) -> [PASS][340] +2 other tests pass
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@gem_pxp@display-protected-crc.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@gem_pxp@display-protected-crc.html
> 
>   * igt@gem_pxp@fail-invalid-protected-context:
>     - shard-rkl:          [TIMEOUT][341] ([i915#12964]) -> [PASS][342]
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-3/igt@gem_pxp@fail-invalid-protected-context.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@gem_pxp@fail-invalid-protected-context.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-dg2:          [DMESG-WARN][343] ([i915#14545]) -> [PASS][344]
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg2-2/igt@i915_module_load@resize-bar.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-8/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_power@sanity:
>     - shard-mtlp:         [SKIP][345] ([i915#7984]) -> [PASS][346]
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-mtlp-4/igt@i915_power@sanity.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-mtlp-6/igt@i915_power@sanity.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-rkl:          [INCOMPLETE][347] ([i915#4817]) -> [PASS][348]
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-3/igt@i915_suspend@sysfs-reader.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-2/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-dg1:          [FAIL][349] ([i915#10991] / [i915#12518] / [i915#12766]) -> [PASS][350]
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg1-18/igt@kms_async_flips@alternate-sync-async-flip.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg1-17/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-4:
>     - shard-dg1:          [FAIL][351] ([i915#10991]) -> [PASS][352]
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg1-18/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-4.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg1-17/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-4.html
> 
>   * {igt@kms_async_flips@async-flip-hang}:
>     - shard-rkl:          [SKIP][353] ([i915#14544]) -> [PASS][354] +14 other tests pass
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_async_flips@async-flip-hang.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_async_flips@async-flip-hang.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-2:
>     - shard-rkl:          [DMESG-WARN][355] ([i915#12964]) -> [PASS][356] +10 other tests pass
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-3/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-2.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180:
>     - shard-dg1:          [DMESG-WARN][357] ([i915#4391] / [i915#4423]) -> [PASS][358]
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg1-18/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg1-17/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:
>     - shard-rkl:          [INCOMPLETE][359] ([i915#12796]) -> [PASS][360]
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-4/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
> 
>   * igt@kms_color@ctm-blue-to-red:
>     - shard-rkl:          [SKIP][361] ([i915#12655] / [i915#14544]) -> [PASS][362]
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_color@ctm-blue-to-red.html
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_color@ctm-blue-to-red.html
> 
>   * igt@kms_color@deep-color@pipe-b-edp-1-gamma:
>     - shard-mtlp:         [FAIL][363] ([i915#6892]) -> [PASS][364]
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-mtlp-8/igt@kms_color@deep-color@pipe-b-edp-1-gamma.html
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-mtlp-4/igt@kms_color@deep-color@pipe-b-edp-1-gamma.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
>     - shard-rkl:          [FAIL][365] ([i915#14786]) -> [PASS][366]
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-7/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-rkl:          [FAIL][367] ([i915#2346]) -> [PASS][368]
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@2x-flip-vs-fences-interruptible:
>     - shard-glk:          [SKIP][369] -> [PASS][370]
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-glk8/igt@kms_flip@2x-flip-vs-fences-interruptible.html
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk9/igt@kms_flip@2x-flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible:
>     - shard-dg2:          [FAIL][371] ([i915#13027]) -> [PASS][372]
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg2-2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@modeset-vs-vblank-race:
>     - shard-rkl:          [SKIP][373] ([i915#14544] / [i915#3637]) -> [PASS][374] +2 other tests pass
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_flip@modeset-vs-vblank-race.html
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_flip@modeset-vs-vblank-race.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling:
>     - shard-rkl:          [SKIP][375] ([i915#14544] / [i915#3555]) -> [PASS][376]
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][377] ([i915#14544] / [i915#1849] / [i915#5354]) -> [PASS][378] +2 other tests pass
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:
>     - shard-dg2:          [FAIL][379] ([i915#6880]) -> [PASS][380] +1 other test pass
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-dg2:          [SKIP][381] ([i915#3555] / [i915#8228]) -> [PASS][382] +1 other test pass
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg2-5/igt@kms_hdr@static-swap.html
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-11/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_invalid_mode@bad-vtotal:
>     - shard-rkl:          [SKIP][383] ([i915#14544] / [i915#3555] / [i915#8826]) -> [PASS][384]
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_invalid_mode@bad-vtotal.html
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_invalid_mode@bad-vtotal.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-dg2:          [SKIP][385] ([i915#12388]) -> [PASS][386]
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg2-5/igt@kms_joiner@invalid-modeset-force-big-joiner.html
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-11/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc:
>     - shard-dg2:          [ABORT][387] ([i915#8213]) -> [PASS][388]
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg2-10/igt@kms_pipe_crc_basic@suspend-read-crc.html
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-7/igt@kms_pipe_crc_basic@suspend-read-crc.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:
>     - shard-rkl:          [SKIP][389] ([i915#14544] / [i915#8152]) -> [PASS][390]
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a:
>     - shard-rkl:          [SKIP][391] ([i915#12247] / [i915#14544]) -> [PASS][392]
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a.html
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-b:
>     - shard-rkl:          [SKIP][393] ([i915#12247] / [i915#14544] / [i915#8152]) -> [PASS][394]
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-b.html
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-b.html
> 
>   * igt@kms_pm_rpm@fences-dpms:
>     - shard-rkl:          [SKIP][395] ([i915#14544] / [i915#1849]) -> [PASS][396]
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_pm_rpm@fences-dpms.html
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_pm_rpm@fences-dpms.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg2:          [SKIP][397] ([i915#9519]) -> [PASS][398]
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp.html
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-rkl:          [SKIP][399] ([i915#9519]) -> [PASS][400] +3 other tests pass
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   
> #### Warnings ####
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-rkl:          [SKIP][401] ([i915#11078] / [i915#14544]) -> [SKIP][402] ([i915#11078])
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@device_reset@cold-reset-bound.html
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@device_reset@cold-reset-bound.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-rkl:          [SKIP][403] ([i915#7697]) -> [SKIP][404] ([i915#14544] / [i915#7697])
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@gem_basic@multigpu-create-close.html
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-rkl:          [SKIP][405] ([i915#14544] / [i915#4525]) -> [SKIP][406] ([i915#4525])
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@gem_exec_balancer@parallel-bb-first.html
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-rkl:          [SKIP][407] ([i915#4525]) -> [SKIP][408] ([i915#14544] / [i915#4525])
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@gem_exec_balancer@parallel-out-fence.html
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu:
>     - shard-rkl:          [SKIP][409] ([i915#3281]) -> [SKIP][410] ([i915#14544] / [i915#3281]) +5 other tests skip
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@gem_exec_reloc@basic-gtt-cpu.html
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu.html
> 
>   * igt@gem_exec_reloc@basic-write-read:
>     - shard-rkl:          [SKIP][411] ([i915#14544] / [i915#3281]) -> [SKIP][412] ([i915#3281]) +2 other tests skip
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@gem_exec_reloc@basic-write-read.html
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@gem_exec_reloc@basic-write-read.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-rkl:          [SKIP][413] ([i915#14544] / [i915#4613]) -> [SKIP][414] ([i915#4613])
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random.html
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-rkl:          [SKIP][415] ([i915#4613]) -> [SKIP][416] ([i915#14544] / [i915#4613]) +1 other test skip
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@gem_lmem_swapping@parallel-random.html
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_pwrite@basic-random:
>     - shard-rkl:          [SKIP][417] ([i915#3282]) -> [SKIP][418] ([i915#14544] / [i915#3282]) +1 other test skip
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@gem_pwrite@basic-random.html
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@gem_pwrite@basic-random.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-rkl:          [SKIP][419] ([i915#14544] / [i915#3297]) -> [SKIP][420] ([i915#3297]) +1 other test skip
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@gem_userptr_blits@dmabuf-unsync.html
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@readonly-pwrite-unsync:
>     - shard-rkl:          [SKIP][421] ([i915#3297]) -> [SKIP][422] ([i915#14544] / [i915#3297]) +2 other tests skip
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@gem_userptr_blits@readonly-pwrite-unsync.html
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@gem_userptr_blits@readonly-pwrite-unsync.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - shard-rkl:          [SKIP][423] ([i915#2527]) -> [SKIP][424] ([i915#14544] / [i915#2527])
>    [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@gen9_exec_parse@batch-without-end.html
>    [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@gen9_exec_parse@bb-start-out:
>     - shard-rkl:          [SKIP][425] ([i915#14544] / [i915#2527]) -> [SKIP][426] ([i915#2527])
>    [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@gen9_exec_parse@bb-start-out.html
>    [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@gen9_exec_parse@bb-start-out.html
> 
>   * igt@i915_pm_freq_api@freq-reset:
>     - shard-rkl:          [SKIP][427] ([i915#14544] / [i915#8399]) -> [SKIP][428] ([i915#8399])
>    [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@i915_pm_freq_api@freq-reset.html
>    [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@i915_pm_freq_api@freq-reset.html
> 
>   * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>     - shard-dg1:          [SKIP][429] ([i915#4212]) -> [SKIP][430] ([i915#4212] / [i915#4423])
>    [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg1-15/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
>    [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg1-17/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
>     - shard-rkl:          [SKIP][431] ([i915#5286]) -> [SKIP][432] ([i915#14544]) +2 other tests skip
>    [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html
>    [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
>     - shard-rkl:          [SKIP][433] ([i915#14544]) -> [SKIP][434] ([i915#5286])
>    [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html
>    [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>     - shard-rkl:          [SKIP][435] ([i915#3638]) -> [SKIP][436] ([i915#14544]) +1 other test skip
>    [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
>    [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-rkl:          [SKIP][437] ([i915#14544]) -> [SKIP][438] +3 other tests skip
>    [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
>    [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc:
>     - shard-rkl:          [SKIP][439] ([i915#14544]) -> [SKIP][440] ([i915#14098] / [i915#6095]) +2 other tests skip
>    [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc.html
>    [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][441] ([i915#6095]) -> [SKIP][442] ([i915#14098] / [i915#6095]) +3 other tests skip
>    [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-2.html
>    [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-3/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-a-hdmi-a-4:
>     - shard-dg1:          [SKIP][443] ([i915#6095]) -> [SKIP][444] ([i915#4423] / [i915#6095]) +1 other test skip
>    [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg1-14/igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-a-hdmi-a-4.html
>    [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg1-15/igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][445] ([i915#14098] / [i915#6095]) -> [SKIP][446] ([i915#6095])
>    [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-3/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html
>    [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
>     - shard-rkl:          [SKIP][447] ([i915#12313]) -> [SKIP][448] ([i915#14544])
>    [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
>    [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
>     - shard-rkl:          [SKIP][449] ([i915#14544]) -> [SKIP][450] ([i915#12313])
>    [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
>    [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:
>     - shard-glk:          [INCOMPLETE][451] ([i915#12796]) -> [INCOMPLETE][452] ([i915#12796] / [i915#14694]) +1 other test incomplete
>    [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-glk6/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html
>    [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-glk3/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs:
>     - shard-rkl:          [SKIP][453] ([i915#14098] / [i915#6095]) -> [SKIP][454] ([i915#14544]) +6 other tests skip
>    [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html
>    [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs:
>     - shard-dg1:          [SKIP][455] ([i915#4423] / [i915#6095]) -> [SKIP][456] ([i915#6095])
>    [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs.html
>    [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg1-18/igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
>     - shard-rkl:          [SKIP][457] ([i915#11151] / [i915#7828]) -> [SKIP][458] ([i915#11151] / [i915#14544] / [i915#7828]) +3 other tests skip
>    [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
>    [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-storm:
>     - shard-rkl:          [SKIP][459] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][460] ([i915#11151] / [i915#7828]) +1 other test skip
>    [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-hpd-storm.html
>    [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_chamelium_hpd@hdmi-hpd-storm.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-dg2:          [FAIL][461] ([i915#7173]) -> [SKIP][462] ([i915#7118] / [i915#9424])
>    [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg2-10/igt@kms_content_protection@atomic.html
>    [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-4/igt@kms_content_protection@atomic.html
>     - shard-rkl:          [SKIP][463] ([i915#14544]) -> [SKIP][464] ([i915#7118] / [i915#9424])
>    [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_content_protection@atomic.html
>    [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-rkl:          [SKIP][465] ([i915#9424]) -> [SKIP][466] ([i915#14544])
>    [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_content_protection@lic-type-1.html
>    [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          [SKIP][467] ([i915#7118] / [i915#7162] / [i915#9424]) -> [SKIP][468] ([i915#7118] / [i915#9424])
>    [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg2-11/igt@kms_content_protection@type1.html
>    [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-1/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x512:
>     - shard-rkl:          [SKIP][469] ([i915#14544]) -> [SKIP][470] ([i915#13049])
>    [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html
>    [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_cursor_crc@cursor-offscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-rkl:          [SKIP][471] ([i915#3555]) -> [SKIP][472] ([i915#14544]) +2 other tests skip
>    [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-32x10.html
>    [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>     - shard-rkl:          [SKIP][473] -> [SKIP][474] ([i915#14544]) +8 other tests skip
>    [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
>    [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-rkl:          [SKIP][475] ([i915#9067]) -> [SKIP][476] ([i915#14544])
>    [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
>    [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-rkl:          [SKIP][477] ([i915#14544]) -> [SKIP][478] ([i915#3555] / [i915#3804])
>    [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
>    [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_dp_link_training@non-uhbr-sst:
>     - shard-rkl:          [SKIP][479] ([i915#13749]) -> [SKIP][480] ([i915#14544])
>    [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_dp_link_training@non-uhbr-sst.html
>    [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-sst.html
> 
>   * igt@kms_feature_discovery@display-2x:
>     - shard-rkl:          [SKIP][481] ([i915#14544] / [i915#1839]) -> [SKIP][482] ([i915#1839])
>    [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_feature_discovery@display-2x.html
>    [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_feature_discovery@display-2x.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms:
>     - shard-rkl:          [SKIP][483] ([i915#14544] / [i915#9934]) -> [SKIP][484] ([i915#9934]) +1 other test skip
>    [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html
>    [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_flip@2x-flip-vs-dpms.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
>     - shard-rkl:          [SKIP][485] ([i915#9934]) -> [SKIP][486] ([i915#14544] / [i915#9934]) +4 other tests skip
>    [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html
>    [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
>     - shard-rkl:          [SKIP][487] ([i915#14544] / [i915#3555]) -> [SKIP][488] ([i915#2672] / [i915#3555])
>    [487]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html
>    [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-rkl:          [SKIP][489] ([i915#2672] / [i915#3555]) -> [SKIP][490] ([i915#14544] / [i915#3555]) +1 other test skip
>    [489]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
>    [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][491] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][492] ([i915#1825]) +10 other tests skip
>    [491]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
>    [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
>     - shard-dg2:          [SKIP][493] ([i915#3458]) -> [SKIP][494] ([i915#10433] / [i915#3458]) +2 other tests skip
>    [493]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
>    [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
>     - shard-rkl:          [SKIP][495] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][496] ([i915#3023]) +4 other tests skip
>    [495]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
>    [496]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>     - shard-rkl:          [SKIP][497] ([i915#3023]) -> [SKIP][498] ([i915#14544] / [i915#1849] / [i915#5354]) +11 other tests skip
>    [497]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
>    [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:
>     - shard-dg2:          [SKIP][499] ([i915#10433] / [i915#3458]) -> [SKIP][500] ([i915#3458]) +2 other tests skip
>    [499]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
>    [500]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:
>     - shard-rkl:          [SKIP][501] ([i915#1825]) -> [SKIP][502] ([i915#14544] / [i915#1849] / [i915#5354]) +14 other tests skip
>    [501]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html
>    [502]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-mtlp:         [SKIP][503] ([i915#1187] / [i915#12713]) -> [SKIP][504] ([i915#12713])
>    [503]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-mtlp-1/igt@kms_hdr@brightness-with-hdr.html
>    [504]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-mtlp-5/igt@kms_hdr@brightness-with-hdr.html
>     - shard-dg2:          [SKIP][505] ([i915#13331]) -> [SKIP][506] ([i915#12713])
>    [505]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg2-11/igt@kms_hdr@brightness-with-hdr.html
>    [506]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg2-1/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-dg1:          [SKIP][507] ([i915#3555] / [i915#8228]) -> [SKIP][508] ([i915#3555] / [i915#4423] / [i915#8228])
>    [507]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg1-18/igt@kms_hdr@invalid-hdr.html
>    [508]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg1-13/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-rkl:          [SKIP][509] ([i915#14544]) -> [SKIP][510] ([i915#14259])
>    [509]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html
>    [510]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
>     - shard-rkl:          [SKIP][511] ([i915#3555]) -> [SKIP][512] ([i915#14544] / [i915#3555] / [i915#8152])
>    [511]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
>    [512]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a:
>     - shard-rkl:          [SKIP][513] ([i915#12247]) -> [SKIP][514] ([i915#12247] / [i915#14544])
>    [513]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html
>    [514]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
>     - shard-rkl:          [SKIP][515] ([i915#12247]) -> [SKIP][516] ([i915#12247] / [i915#14544] / [i915#8152])
>    [515]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html
>    [516]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:
>     - shard-rkl:          [SKIP][517] ([i915#12247] / [i915#14544] / [i915#8152]) -> [SKIP][518] ([i915#12247]) +1 other test skip
>    [517]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html
>    [518]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-a:
>     - shard-rkl:          [SKIP][519] ([i915#12247] / [i915#14544]) -> [SKIP][520] ([i915#12247])
>    [519]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-a.html
>    [520]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-a.html
> 
>   * igt@kms_pm_backlight@fade-with-suspend:
>     - shard-rkl:          [SKIP][521] ([i915#5354]) -> [SKIP][522] ([i915#14544] / [i915#5354])
>    [521]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_pm_backlight@fade-with-suspend.html
>    [522]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_pm_backlight@fade-with-suspend.html
> 
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-rkl:          [SKIP][523] ([i915#3828]) -> [SKIP][524] ([i915#14544] / [i915#3828])
>    [523]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_pm_dc@dc5-retention-flops.html
>    [524]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_pm_dc@dc5-retention-flops.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          [SKIP][525] ([i915#3828]) -> [SKIP][526] ([i915#9340])
>    [525]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html
>    [526]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-rkl:          [SKIP][527] ([i915#6524]) -> [SKIP][528] ([i915#14544] / [i915#6524])
>    [527]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_prime@basic-crc-hybrid.html
>    [528]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-rkl:          [SKIP][529] ([i915#11520] / [i915#14544]) -> [SKIP][530] ([i915#11520]) +1 other test skip
>    [529]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html
>    [530]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-rkl:          [SKIP][531] ([i915#11520]) -> [SKIP][532] ([i915#11520] / [i915#14544]) +3 other tests skip
>    [531]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
>    [532]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-rkl:          [SKIP][533] ([i915#9683]) -> [SKIP][534] ([i915#14544] / [i915#9683])
>    [533]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_psr2_su@page_flip-p010.html
>    [534]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr@fbc-pr-sprite-plane-onoff:
>     - shard-rkl:          [SKIP][535] ([i915#1072] / [i915#9732]) -> [SKIP][536] ([i915#1072] / [i915#14544] / [i915#9732]) +8 other tests skip
>    [535]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_psr@fbc-pr-sprite-plane-onoff.html
>    [536]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_psr@fbc-pr-sprite-plane-onoff.html
> 
>   * igt@kms_psr@fbc-psr-cursor-plane-move:
>     - shard-dg1:          [SKIP][537] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][538] ([i915#1072] / [i915#9732])
>    [537]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-dg1-18/igt@kms_psr@fbc-psr-cursor-plane-move.html
>    [538]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-dg1-17/igt@kms_psr@fbc-psr-cursor-plane-move.html
> 
>   * igt@kms_psr@fbc-psr-primary-page-flip:
>     - shard-rkl:          [SKIP][539] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][540] ([i915#1072] / [i915#9732]) +4 other tests skip
>    [539]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_psr@fbc-psr-primary-page-flip.html
>    [540]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_psr@fbc-psr-primary-page-flip.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-rkl:          [SKIP][541] ([i915#5289]) -> [SKIP][542] ([i915#14544])
>    [541]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
>    [542]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-rkl:          [SKIP][543] ([i915#14544]) -> [SKIP][544] ([i915#5289])
>    [543]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
>    [544]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_setmode@clone-exclusive-crtc:
>     - shard-rkl:          [SKIP][545] ([i915#3555]) -> [SKIP][546] ([i915#14544] / [i915#3555])
>    [545]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_setmode@clone-exclusive-crtc.html
>    [546]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_setmode@clone-exclusive-crtc.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-rkl:          [SKIP][547] ([i915#14544]) -> [SKIP][548] ([i915#8623])
>    [547]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
>    [548]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-rkl:          [SKIP][549] ([i915#3555] / [i915#9906]) -> [SKIP][550] ([i915#14544])
>    [549]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-8/igt@kms_vrr@negative-basic.html
>    [550]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-6/igt@kms_vrr@negative-basic.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - shard-rkl:          [SKIP][551] ([i915#14544] / [i915#3291] / [i915#3708]) -> [SKIP][552] ([i915#3291] / [i915#3708])
>    [551]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16959/shard-rkl-6/igt@prime_vgem@basic-fence-read.html
>    [552]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/shard-rkl-8/igt@prime_vgem@basic-fence-read.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10393]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10393
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
>   [i915#10991]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10991
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
>   [i915#11441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11521]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521
>   [i915#11713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713
>   [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
>   [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
>   [i915#12353]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12353
>   [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
>   [i915#12518]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12518
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12761]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761
>   [i915#12766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12766
>   [i915#12796]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
>   [i915#13029]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
>   [i915#13304]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13304
>   [i915#13331]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331
>   [i915#13335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13335
>   [i915#13363]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13363
>   [i915#13390]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390
>   [i915#13398]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
>   [i915#13409]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409
>   [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
>   [i915#13522]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522
>   [i915#13665]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13665
>   [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
>   [i915#13790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14104
>   [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
>   [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
>   [i915#14470]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14470
>   [i915#14489]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14489
>   [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
>   [i915#14550]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14550
>   [i915#14553]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14553
>   [i915#14561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14561
>   [i915#14694]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14694
>   [i915#14702]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14702
>   [i915#14756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14756
>   [i915#14786]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14786
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
>   [i915#1850]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1850
>   [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
>   [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
>   [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
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
>   [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4879]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4879
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5465]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465
>   [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6188]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6188
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6892]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6892
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
>   [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821
>   [i915#8826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826
>   [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9833]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16959 -> Patchwork_152515v3
> 
>   CI-20190529: 20190529
>   CI_DRM_16959: c79dfb5e415ae8c63601b02f7b3a2082d1a2345b @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8485: cb040c57e8bbc1cdac111ada808d5a7dd569a546 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_152515v3: c79dfb5e415ae8c63601b02f7b3a2082d1a2345b @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152515v3/index.html
