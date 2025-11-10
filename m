Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E80FCC47CE9
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 17:11:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AC4810E287;
	Mon, 10 Nov 2025 16:11:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PIBoNoBR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99B2810E287
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Nov 2025 16:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762791098; x=1794327098;
 h=date:from:to:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=NKQ+BVb8IbCM2VRX3lQj3wq8a+ArI4DAYuUNc1suo8k=;
 b=PIBoNoBRGNG47fkraPJs60THHPx8R/Bp68OhYd1xFC6uSlp492gEYUyO
 M/YWO0Z5NzKvWXcTcdtuxXGpicMVBscZ2S2Fgh8NKenCMJoqhunDr2M63
 wVB3XKec90HLFOp58T9R1FpEpy+t3NlZn4SZzSpYUzefYdkD2BHJbLO+E
 jsDbXkj94awIitEkV4LZkrj3ACkgHMix8bYDLjyqjUZywb4eAIy72cSOS
 89BMjFI8Q2Na/rXzxvbuKZ7f8A7JJXthEleYJhAlNDHeQaj2T1YJyYjtm
 MNC5E7WKtq3Iwg5WO/dxmom+MEtvZNpyt8HYZ1k9Nhfg3E5cG/zo+T0E+ Q==;
X-CSE-ConnectionGUID: dFM/2xG8TcK6/3BHqSs2tA==
X-CSE-MsgGUID: 8G6yd5zLSp+ZEbQ/bhVzMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="76190960"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="76190960"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 08:11:38 -0800
X-CSE-ConnectionGUID: CnJfXkVtRNKswJkgoMnw2A==
X-CSE-MsgGUID: SNPxvC5iR1KLzB+GKZ1/9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="193717919"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 08:11:38 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 08:11:37 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 08:11:37 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.64)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 08:11:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IXLTm1v9iri8a2MYPpZZrWJYSlD/eCDsJJE2SDor1GELJxcG59laivT/iAEVKvCS72PkrIY0vQ/vuHgnG3V05Wv16iWSrJbnsognoKCb/1BpqQzUh1B9CMJg2+LyJYqz3fq/2lJR4Wg1MQNZdf/loPpSTd/hQZCs/S0xuOSTJOnEP0LfQFswqjg8n8L6x3+TyG88pk4+WIQ/3YJjkKcGtMtkZLRmHSLRt2uPXLIHlJptpNObsa4CXajMbyRr47m2GajxuSuyJVWwrhKVDzPjT+bv3BxZfN9ufbiHDx1kZvuMGtE2Zesgt1xtqmIr9vVjW15NEF3PzdpnQtwaB7YrrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZOyQH3gcL1eQDqwaQB3lukWx366w8VOYwIpThzqiYhk=;
 b=IxaLQT9S9r3l8m7xAqYkvvwHwcne1jj5nXD74XoB/stRhd7Eep6nDtJs/g1ZwUolNNmF4E7rtJRM97alVrEfxOmTT7OgzWDIJDTJujInJo7kIdwKYg1VwSVtPvezbmIwkWPESlVtIAKCyrAj5YV3MrR0ykJ9N6lF/KJf5E80Z9EJotcOMTkMSBMo0YHoX99lsOnJyTNcve0eJljigxbB9yj5t2Fmmw0bii7tpg+pc8cQ/tAQ5SvUKaC1501gpdtcP5MW7ONnzRDN9kazw71EGD0yUjE7hUEYlr7h9wwmISB49hwNcyEWpWYgFm1DTBLhhmJdq4x6Tc7rqdqEW82vtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6413.namprd11.prod.outlook.com (2603:10b6:930:37::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Mon, 10 Nov
 2025 16:11:31 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9298.015; Mon, 10 Nov 2025
 16:11:31 +0000
Date: Mon, 10 Nov 2025 18:11:26 +0200
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyTIGk5MTUuQ0kuRnVsbA==?= =?utf-8?Q?=3A?= success for
 drm/i915/dp_mst: Disable Panel Replay
Message-ID: <aRIOrma6eJgydGwa@ideak-desk>
References: <20251107124141.911895-1-imre.deak@intel.com>
 <176257881728.31057.6716893907295689835@10055242dc62>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <176257881728.31057.6716893907295689835@10055242dc62>
X-ClientProxiedBy: LO2P123CA0105.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:139::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY5PR11MB6413:EE_
X-MS-Office365-Filtering-Correlation-Id: 90e64d99-78fd-41a6-462c-08de2073cf7a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|366016|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?cB+pFY0VOv5k5qv4bwC7aZUopFIxRp+pPc878K1LJHb9RLQ3GDUDihPLFJs/?=
 =?us-ascii?Q?1C/V4+y3FdkTwyrPXFAa6tlr2LpkK7T8yXtO9cVXO0edpmHZdYJNyWiNTpOI?=
 =?us-ascii?Q?ZcAIHk61RAJCpirIPiifxBxxhZ8vhZFGPwYqQzDIHqTNA+lWTkBck67nzseW?=
 =?us-ascii?Q?Xe1HdbYBv+omDL7rbfiTYgK+VH0OkzsSySFmZttRPE+ddE/4duTgvONnVp0j?=
 =?us-ascii?Q?6gizgP1aL6Bkn55b0gGeLNkhtg/zkY+D/4QXXfWvdjvnZLvcumz6yX3kiAkl?=
 =?us-ascii?Q?KFimbYByAHBTme51ApdC3PQOxc9pyF521Lc76ztTh8jbZsTQTed2+1TD6QEE?=
 =?us-ascii?Q?jZCSEHxFpWnFchfKrmkdoXvXFQvxvYE7OczbvtWlUDwNAsbpV/ZtbpWwTsqV?=
 =?us-ascii?Q?kdIkBLL/iTuFiTpPxUpWGhgO9YTHM8AoEfdTF80oNNA6lZRvTv+ZTNoVHATv?=
 =?us-ascii?Q?WVRswaPd6GWYLx7rQB6SDtceOwV/DM9jly1hMCdZMn/EnHsMwR2jsxGqhNwn?=
 =?us-ascii?Q?XuswnmlFpBwYgXF9iA9+17RHdfBy4DpGEnAbqaDzEEHKLtL6nssXLfu7/fI+?=
 =?us-ascii?Q?ZNjUmQspiegdcqNoPObeZFHLSjT41pxTLZWywbhQWhm2b94ppYgkKCUrOd6P?=
 =?us-ascii?Q?k3JYev0JGEFkJsCo+YqOcbLr4EOVWkJzL6QKZ8+p1NrJfnkAb6+jUDjyKCUg?=
 =?us-ascii?Q?k3fUvo3HKBgg1K7603LkwTubdsDx8fK9h7kwWzdRwAc6X7Lr1CSvYD2J3dAl?=
 =?us-ascii?Q?ThxCyIm68TabHaw1jwBu1Uy2Myqi8aL7pLXphGO2xDqx33jOp0gS9KiSwdfT?=
 =?us-ascii?Q?5mrWT32sbA/yao3M0RTpsOxNwoiAdKZcpuXZ2J03HAuwb0iBfZEENPOVZj7T?=
 =?us-ascii?Q?fLJgSkkbJyrfMyLLObrx8ukiZWBCbyUv9PIl9uEugckO/6UhTN4cn9YoW4d4?=
 =?us-ascii?Q?3G/oSuQemZqn7fzntkdGGTeacFPbTp4n93yac0/4cgFpalHACirfjt4b70lE?=
 =?us-ascii?Q?NFkMWoaPVstW7Q9guTlZXXqwj+WYwBhUV238U402H2bJgUepBYB2VT3YjvuF?=
 =?us-ascii?Q?DgD5qm0jm8C4p5mCOVA1rCc1KzMZLXcWkvH5mdGaYnST+H5bApZOhBBnMfEz?=
 =?us-ascii?Q?uihRJNUIGVgq8d+Qf+MJ6g+JUWQzray9PGo+isnT//8JvKYmzwUzRanXF5Jp?=
 =?us-ascii?Q?IOsUqPh0oj/UpvUzC+8/1vHqfneAe8RwiBAFF7gGWy+kiX4ArGlbMIEQ2kXX?=
 =?us-ascii?Q?n6eSnjsBPUdDXFPAjUDJiX40QnSK+Cq7oY8PL7AG1O8f6VpmCqctZ9TcLn12?=
 =?us-ascii?Q?msYU7BosSBcsqaXKp6WbefIpDpsq+fHQn5sAjfR1NRGDdVfWWN7ujCisEAEk?=
 =?us-ascii?Q?ceoJ3/qM9TOcknPZVTxbXyZY3xmhwasxA7kq96ag887ERCzG5g=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5Pj0k/pY6FlRNlAQl+NZfsmcZm6m+31UXyLYYPIyYw7oRUNk/AtlfuyLw9WG?=
 =?us-ascii?Q?1Q3Ul/gDc09QBduEC3ZzINnRTSdH8dOj5NpO/pGma6t/gy3zOvST6xJdRVwf?=
 =?us-ascii?Q?aWqQzUzxdYWXK9YleIhIhRhNCQ3TGPCYowArE08xsDsSAuEyMy9sKC80zvff?=
 =?us-ascii?Q?xEqdyYFeBvG0XHX5UlbBN2K4wpa2RHSzDO9Epy9KtDDZy7EFE3KYBZHOFF8+?=
 =?us-ascii?Q?8OYb7VSVXYvYbJNGWLQ8Y9gd7h9zrpJQZNYTOysCZT/mTQgQWZMVQ7qOOSmg?=
 =?us-ascii?Q?W+IxJyr3in65QXCUo7ruUz9FBzt0UJa0V1BO0edEj6RN8eMHbkIJgh+lWF0o?=
 =?us-ascii?Q?g9mxhOrrG9oGnnK26izv8Nq3PKok97SdAaLfjo8uOl9JGvwmObLAY3SZg5WW?=
 =?us-ascii?Q?REfWu4u7VPPCbFwU04cXvln3BtTeOu76HxHhXYGyvwEWmLKzSygdnVoRIXTg?=
 =?us-ascii?Q?IixaXNYyDynM8FI5CUQjdcWJOXiWuok3JmwWw8/IgQIeyZhNdkMWUOApwvAN?=
 =?us-ascii?Q?a3njOGMu7E4gvYdPPSDvFrDB1NtfBzn/yprRmAIbqANFW5SjNOEH1/ehMw5T?=
 =?us-ascii?Q?5wVDrBB1L0wY1O4n8msWKJ6LoABvSS14AQDpkkxFxScGVB0lfd0SdtJuX0nY?=
 =?us-ascii?Q?98Bfv7GII39ASsqdcMIXiIhtKEfsHgIPf5LC/ZMKKqpzXfLIQp+vM5SwKqve?=
 =?us-ascii?Q?68M3075GDXOQ2e3oidBJn5rsE3om8FBqjtxyist8BQD5jdXXciI8/Q4cqsnY?=
 =?us-ascii?Q?irKHAcymYCpb/VAN7zg/dXxi83icH1jpTE54nSiWwPl0ujxBPN+d9mndwEsz?=
 =?us-ascii?Q?gxdYAh0yI1XzItvmxWylCNMVmXLgti3Kr2kLBi6wZpRIn2oUzyhzjSA5by3M?=
 =?us-ascii?Q?MvUywj2VUEPBeC/zyxOPEFTW4mZAIleyB/j2drVp17fQRPGxLvupdN5CGsvC?=
 =?us-ascii?Q?9v4EahRJgRntxysQ87GpCKRR1PhuK0CDAANTgIjiNGGA52VGp6vlWiw1bU8q?=
 =?us-ascii?Q?LmFtu0/MLBxY22G4ee/Ln0F2ATueb+vlPfakDYcQ1XTX7XJAPUKwiS83mr+1?=
 =?us-ascii?Q?GmI+6p6qGiKNIvPGiQU8dTtKHbuPx8RKFLlJQCL0yVD7qOoL8cvwgaiXdoEz?=
 =?us-ascii?Q?GIjfCT8JLMASRNh4BPeB+3BvY9iu/4MeJxdr5VU16flDbw/pc3uyDvj/oPDH?=
 =?us-ascii?Q?myLavwer2lrV5vQD+LAwpgfGLV+UkIdIR2OG9ha3LAtirNS5/dIc+urAsjME?=
 =?us-ascii?Q?4jNK5b1pzEN3ayOdBaCB8SgSuVivHC6MJysUHW+4xNK0N+/dNPHCfzfc8Nwu?=
 =?us-ascii?Q?deQft7+FPSbR2M/wR1/fOHMD6fmvS7x4KHJBrKGrl9T9mniTg83evDbsUkHo?=
 =?us-ascii?Q?H3NDfeRNMCKc5wls5Wo89OUdnmNxjtbcjpGVX4l1GgHOyfPGpSIX1vOEtbhi?=
 =?us-ascii?Q?F+S+zrNVTRYDqQEvRby4hpG3x6yX9TOzeoS4glx636JTVae8Zacw8KhQjNcP?=
 =?us-ascii?Q?/N9jHvmU8w1x+xNRMhKhT9qZGCRmsAbvgnilFYD8OlfuG0Qkn+KMjimdM5Fb?=
 =?us-ascii?Q?pPsW9gGbD+5+VBnId2CochLAldVXQfYKlrRoAH0AMvy3uesrtRt8xpvHTfDd?=
 =?us-ascii?Q?hgKdL1EYyHpSWNVV7nVaiTHca+ALsMgDsut+bjSMVPXq?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 90e64d99-78fd-41a6-462c-08de2073cf7a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2025 16:11:31.5691 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yopOGvamV5FN5OkYzBsFj/mufJR+xFDXNNBrVhLcEhmo3AxlyeMMbQXKj2pFwwrgOgKVKWfWin8cP/xWdOYKEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6413
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

On Sat, Nov 08, 2025 at 05:13:37AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp_mst: Disable Panel Replay
> URL   : https://patchwork.freedesktop.org/series/157225/
> State : success

The patch is merged to drm-intel-next, thanks for the review.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_17509_full -> Patchwork_157225v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **WARNING**
> 
>   Minor unknown changes coming with Patchwork_157225v1_full need to be verified
>   manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_157225v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 11)
> ------------------------------
> 
>   Additional (1): shard-dg2-set2 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_157225v1_full:
> 
> ### IGT changes ###
> 
> #### Warnings ####
> 
>   * igt@panthor/panthor_query@query:
>     - shard-rkl:          [SKIP][1] ([i915#14544]) -> [SKIP][2] +1 other test skip
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@panthor/panthor_query@query.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@panthor/panthor_query@query.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_157225v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-rkl:          NOTRUN -> [SKIP][3] ([i915#14544] / [i915#8411]) +1 other test skip
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@fbdev@info:
>     - shard-rkl:          [PASS][4] -> [SKIP][5] ([i915#14544] / [i915#1849] / [i915#2582])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@fbdev@info.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@fbdev@info.html
> 
>   * igt@gem_bad_reloc@negative-reloc-lut:
>     - shard-rkl:          NOTRUN -> [SKIP][6] ([i915#3281]) +6 other tests skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-2/igt@gem_bad_reloc@negative-reloc-lut.html
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-rkl:          NOTRUN -> [SKIP][7] ([i915#14544] / [i915#3555] / [i915#9323])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-rkl:          NOTRUN -> [SKIP][8] ([i915#7697])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-2/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-tglu-1:       NOTRUN -> [SKIP][9] ([i915#280])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][10] ([i915#13390])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-glk5/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_eio@kms:
>     - shard-tglu-1:       NOTRUN -> [DMESG-WARN][11] ([i915#13363])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-rkl:          NOTRUN -> [SKIP][12] ([i915#14544] / [i915#4525])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-tglu-1:       NOTRUN -> [SKIP][13] ([i915#4525])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_capture@capture-invisible:
>     - shard-glk10:        NOTRUN -> [SKIP][14] ([i915#6334]) +1 other test skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-glk10/igt@gem_exec_capture@capture-invisible.html
> 
>   * igt@gem_exec_capture@capture-recoverable:
>     - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#14544] / [i915#6344])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@gem_exec_capture@capture-recoverable.html
>     - shard-tglu:         NOTRUN -> [SKIP][16] ([i915#6344])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-10/igt@gem_exec_capture@capture-recoverable.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read:
>     - shard-rkl:          NOTRUN -> [SKIP][17] ([i915#14544] / [i915#3281]) +2 other tests skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-read.html
> 
>   * igt@gem_exec_schedule@wide:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][18] ([i915#12964]) +14 other tests dmesg-warn
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@gem_exec_schedule@wide.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-rkl:          NOTRUN -> [SKIP][19] ([i915#2190])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-5/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][20] ([i915#4613])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-4/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-tglu-1:       NOTRUN -> [SKIP][21] ([i915#4613]) +3 other tests skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][22] ([i915#4613]) +1 other test skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-5/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-glk:          NOTRUN -> [SKIP][23] ([i915#4613]) +3 other tests skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-glk9/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][24] ([i915#14544] / [i915#4613])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_mmap@basic-small-bo:
>     - shard-dg2:          NOTRUN -> [SKIP][25] ([i915#4083])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-1/igt@gem_mmap@basic-small-bo.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-rkl:          NOTRUN -> [SKIP][26] ([i915#14544] / [i915#3282]) +1 other test skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-glk:          NOTRUN -> [WARN][27] ([i915#14702] / [i915#2658])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-glk9/igt@gem_pwrite@basic-exhaustion.html
>     - shard-tglu-1:       NOTRUN -> [WARN][28] ([i915#2658])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@create-protected-buffer:
>     - shard-rkl:          [PASS][29] -> [TIMEOUT][30] ([i915#12964])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-8/igt@gem_pxp@create-protected-buffer.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-2/igt@gem_pxp@create-protected-buffer.html
> 
>   * igt@gem_pxp@display-protected-crc:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][31] ([i915#12917] / [i915#12964]) +2 other tests timeout
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@gem_pxp@display-protected-crc.html
> 
>   * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>     - shard-rkl:          [PASS][32] -> [TIMEOUT][33] ([i915#12917] / [i915#12964])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-8/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-2/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
> 
>   * igt@gem_readwrite@write-bad-handle:
>     - shard-rkl:          NOTRUN -> [SKIP][34] ([i915#3282]) +2 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-5/igt@gem_readwrite@write-bad-handle.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-rkl:          NOTRUN -> [SKIP][35] ([i915#14544] / [i915#3297]) +1 other test skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-glk:          NOTRUN -> [SKIP][36] ([i915#3323])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-glk9/igt@gem_userptr_blits@dmabuf-sync.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][37] ([i915#3297] / [i915#3323])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-rkl:          NOTRUN -> [SKIP][38] ([i915#14544] / [i915#3282] / [i915#3297])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gem_userptr_blits@readonly-unsync:
>     - shard-tglu-1:       NOTRUN -> [SKIP][39] ([i915#3297])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@gem_userptr_blits@readonly-unsync.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - shard-tglu-1:       NOTRUN -> [SKIP][40] ([i915#2527] / [i915#2856]) +2 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@gen9_exec_parse@bb-large:
>     - shard-rkl:          NOTRUN -> [SKIP][41] ([i915#14544] / [i915#2527])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@gen9_exec_parse@bb-large.html
> 
>   * igt@gen9_exec_parse@bb-start-cmd:
>     - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#2527])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-cmd.html
> 
>   * igt@i915_pm_freq_api@freq-basic-api:
>     - shard-tglu-1:       NOTRUN -> [SKIP][43] ([i915#8399])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@i915_pm_freq_api@freq-basic-api.html
> 
>   * igt@i915_pm_freq_api@freq-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][44] ([i915#14544] / [i915#8399])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@i915_pm_freq_api@freq-suspend.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][45] ([i915#13356] / [i915#15172])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-glk6/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@i915_query@query-topology-unsupported:
>     - shard-dg2:          NOTRUN -> [SKIP][46]
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-4/igt@i915_query@query-topology-unsupported.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - shard-mtlp:         [PASS][47] -> [DMESG-FAIL][48] ([i915#12061]) +1 other test dmesg-fail
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-mtlp-3/igt@i915_selftest@live@workarounds.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-mtlp-4/igt@i915_selftest@live@workarounds.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-rkl:          [PASS][49] -> [INCOMPLETE][50] ([i915#4817])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-7/igt@i915_suspend@debugfs-reader.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-3/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@intel_hwmon@hwmon-read:
>     - shard-tglu:         NOTRUN -> [SKIP][51] ([i915#7707])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-4/igt@intel_hwmon@hwmon-read.html
> 
>   * igt@kms_async_flips@async-flip-suspend-resume@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [ABORT][52] ([i915#15132])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-4/igt@kms_async_flips@async-flip-suspend-resume@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-glk:          NOTRUN -> [SKIP][53] ([i915#1769])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-glk6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [FAIL][54] ([i915#5956]) +1 other test fail
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_big_fb@4-tiled-addfb-size-overflow:
>     - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#5286]) +3 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-5/igt@kms_big_fb@4-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][56] ([i915#5286]) +3 other tests skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-4/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-tglu-1:       NOTRUN -> [SKIP][57] ([i915#5286]) +2 other tests skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#3638]) +2 other tests skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-5/igt@kms_big_fb@linear-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][59] +11 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][60] ([i915#6095]) +34 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#6095]) +34 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-4/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#12313]) +1 other test skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-5/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][63] ([i915#12805])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-b-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#6095]) +11 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-11/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-b-dp-3.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#14098] / [i915#6095]) +45 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][66] ([i915#12313])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-10/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#10307] / [i915#6095]) +112 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][68] ([i915#6095]) +107 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg1-17/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-1:
>     - shard-glk10:        NOTRUN -> [SKIP][70] +201 other tests skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-glk10/igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc:
>     - shard-tglu:         NOTRUN -> [SKIP][71] ([i915#6095]) +34 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-4/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][72] +306 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-glk1/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-read:
>     - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-5/igt@kms_chamelium_edid@hdmi-edid-read.html
> 
>   * igt@kms_chamelium_hpd@common-hpd-after-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#11151] / [i915#14544] / [i915#7828]) +3 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][75] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
>     - shard-tglu:         NOTRUN -> [SKIP][76] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-10/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html
> 
>   * igt@kms_color@degamma:
>     - shard-rkl:          [PASS][77] -> [SKIP][78] ([i915#12655] / [i915#14544]) +1 other test skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_color@degamma.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_color@degamma.html
> 
>   * igt@kms_color@legacy-gamma-reset:
>     - shard-rkl:          NOTRUN -> [SKIP][79] ([i915#12655] / [i915#14544])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_color@legacy-gamma-reset.html
> 
>   * igt@kms_content_protection@atomic@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [FAIL][80] ([i915#7173])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-11/igt@kms_content_protection@atomic@pipe-a-dp-3.html
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#9424])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-5/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][82] ([i915#13566])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-256x256:
>     - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#14544]) +54 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-256x256.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-tglu-1:       NOTRUN -> [SKIP][84] ([i915#3555]) +5 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-tglu:         NOTRUN -> [SKIP][85] ([i915#13049])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-4/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [FAIL][86] ([i915#13566]) +1 other test fail
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-10/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#13049])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-1/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
>     - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#3555]) +4 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
>     - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#13049])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
> 
>   * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#13046] / [i915#5354])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
>     - shard-rkl:          [PASS][91] -> [SKIP][92] ([i915#11190] / [i915#14544]) +2 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#9067])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-5/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#4103])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-tglu-1:       NOTRUN -> [SKIP][95] ([i915#13691])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#3804])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-dg2:          [PASS][97] -> [SKIP][98] ([i915#1257])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg2-11/igt@kms_dp_aux_dev.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-7/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_dp_link_training@non-uhbr-mst:
>     - shard-tglu-1:       NOTRUN -> [SKIP][99] ([i915#13749])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@kms_dp_link_training@non-uhbr-mst.html
> 
>   * igt@kms_dp_link_training@uhbr-mst:
>     - shard-tglu-1:       NOTRUN -> [SKIP][100] ([i915#13748])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@kms_dp_link_training@uhbr-mst.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-dg2:          [PASS][101] -> [SKIP][102] ([i915#13707])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fallback.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-5/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#11190] / [i915#14544]) +1 other test skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#3840])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-2/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#14544] / [i915#3955])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@display-3x:
>     - shard-tglu:         NOTRUN -> [SKIP][106] ([i915#1839])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-4/igt@kms_feature_discovery@display-3x.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#14544] / [i915#1839])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-tglu:         NOTRUN -> [SKIP][108] ([i915#658])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-10/igt@kms_feature_discovery@psr1.html
>     - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#14544] / [i915#658])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_flip@2x-absolute-wf_vblank:
>     - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#9934]) +3 other tests skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-2/igt@kms_flip@2x-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-dpms-vs-vblank-race:
>     - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#14544] / [i915#9934]) +2 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_flip@2x-dpms-vs-vblank-race.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][112] ([i915#9934])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-4/igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-fences:
>     - shard-tglu-1:       NOTRUN -> [SKIP][113] ([i915#3637] / [i915#9934]) +2 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-fences.html
> 
>   * igt@kms_flip@2x-flip-vs-modeset:
>     - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#9934])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-1/igt@kms_flip@2x-flip-vs-modeset.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][115] ([i915#12745] / [i915#4839])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-glk6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][116] ([i915#4839])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-glk6/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-nonexisting-fb:
>     - shard-tglu:         NOTRUN -> [SKIP][117] ([i915#3637] / [i915#9934]) +2 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-4/igt@kms_flip@2x-nonexisting-fb.html
> 
>   * igt@kms_flip@blocking-absolute-wf_vblank:
>     - shard-rkl:          [PASS][118] -> [SKIP][119] ([i915#14544] / [i915#3637]) +1 other test skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_flip@blocking-absolute-wf_vblank.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_flip@blocking-absolute-wf_vblank.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
>     - shard-dg1:          [PASS][120] -> [DMESG-WARN][121] ([i915#4423]) +2 other tests dmesg-warn
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg1-18/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg1-19/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][122] ([i915#12745] / [i915#4839] / [i915#6113])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][123] ([i915#12745])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html
> 
>   * igt@kms_flip@modeset-vs-vblank-race-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#14544] / [i915#3637])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_flip@modeset-vs-vblank-race-interruptible.html
> 
>   * igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1:
>     - shard-tglu:         [PASS][125] -> [FAIL][126] ([i915#14600]) +1 other test fail
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-tglu-8/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-3/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#2672] / [i915#3555])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][128] ([i915#2587] / [i915#2672] / [i915#3555])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][129] ([i915#2587] / [i915#2672]) +1 other test skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][130] ([i915#2672] / [i915#3555]) +1 other test skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling:
>     - shard-rkl:          [PASS][131] -> [SKIP][132] ([i915#14544] / [i915#3555]) +2 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][133] ([i915#2587] / [i915#2672]) +1 other test skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][134] ([i915#2672] / [i915#3555])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#2672]) +2 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_tiling@flip-change-tiling:
>     - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#14544] / [i915#3555]) +3 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_flip_tiling@flip-change-tiling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
>     - shard-rkl:          [PASS][137] -> [SKIP][138] ([i915#14544] / [i915#1849] / [i915#5354]) +4 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#15102]) +1 other test skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-wc:
>     - shard-tglu:         NOTRUN -> [SKIP][140] ([i915#15102]) +14 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
>     - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#14544] / [i915#1849] / [i915#5354]) +28 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#5354])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][143] ([i915#15102]) +11 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>     - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#15102] / [i915#3023]) +13 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#1825]) +21 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-dg2:          [PASS][146] -> [SKIP][147] ([i915#3555] / [i915#8228]) +1 other test skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg2-11/igt@kms_hdr@static-swap.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-7/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_invalid_mode@bad-hsync-end:
>     - shard-rkl:          [PASS][148] -> [SKIP][149] ([i915#14544] / [i915#3555] / [i915#8826]) +1 other test skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_invalid_mode@bad-hsync-end.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_invalid_mode@bad-hsync-end.html
> 
>   * igt@kms_invalid_mode@bad-hsync-start:
>     - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#14544] / [i915#3555] / [i915#8826])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_invalid_mode@bad-hsync-start.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#12388])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-2/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_joiner@basic-max-non-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#13688])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-5/igt@kms_joiner@basic-max-non-joiner.html
> 
>   * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#13522])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-2/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#6301])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-2/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
>     - shard-tglu-1:       NOTRUN -> [SKIP][155] +25 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html
> 
>   * igt@kms_pipe_stress@stress-xrgb8888-4tiled:
>     - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#14712])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-2/igt@kms_pipe_stress@stress-xrgb8888-4tiled.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic:
>     - shard-glk10:        NOTRUN -> [FAIL][157] ([i915#12178])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-glk10/igt@kms_plane_alpha_blend@alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:
>     - shard-glk10:        NOTRUN -> [FAIL][158] ([i915#7862]) +1 other test fail
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-glk10/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_alpha_blend@alpha-transparent-fb:
>     - shard-glk:          NOTRUN -> [FAIL][159] ([i915#10647] / [i915#12177])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-glk6/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][160] ([i915#10647]) +1 other test fail
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-glk6/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant:
>     - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#14544] / [i915#7294]) +1 other test skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html
> 
>   * igt@kms_plane_multiple@2x-tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#13958])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-4.html
> 
>   * igt@kms_plane_multiple@2x-tiling-yf:
>     - shard-tglu:         NOTRUN -> [SKIP][163] ([i915#13958])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-4/igt@kms_plane_multiple@2x-tiling-yf.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-tglu:         NOTRUN -> [SKIP][164] ([i915#14259])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-10/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@2x-scaler-multi-pipe:
>     - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#13046] / [i915#5354] / [i915#9423])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-1/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-dg2:          [PASS][166] -> [SKIP][167] ([i915#6953] / [i915#9423])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-5/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-a:
>     - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#12247] / [i915#14544]) +2 other tests skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-c:
>     - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#12247])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-c.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b:
>     - shard-rkl:          [PASS][170] -> [SKIP][171] ([i915#12247] / [i915#14544] / [i915#8152]) +3 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
>     - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#14544] / [i915#8152])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b:
>     - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#12247] / [i915#14544] / [i915#8152]) +3 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:
>     - shard-tglu-1:       NOTRUN -> [SKIP][174] ([i915#12247]) +4 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75:
>     - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#12247] / [i915#14544] / [i915#3555] / [i915#6953] / [i915#8152])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75.html
> 
>   * igt@kms_plane_scaling@planes-scaler-unity-scaling:
>     - shard-rkl:          [PASS][176] -> [SKIP][177] ([i915#14544] / [i915#3555] / [i915#8152]) +1 other test skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_plane_scaling@planes-scaler-unity-scaling.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_plane_scaling@planes-scaler-unity-scaling.html
> 
>   * igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a:
>     - shard-rkl:          [PASS][178] -> [SKIP][179] ([i915#12247] / [i915#14544]) +2 other tests skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a.html
> 
>   * igt@kms_pm_backlight@bad-brightness:
>     - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#14544] / [i915#5354])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_pm_backlight@bad-brightness.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#9685])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-2/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#14544] / [i915#9685])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_pm_dc@dc6-psr.html
>     - shard-tglu:         NOTRUN -> [SKIP][183] ([i915#9685])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-10/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-tglu-1:       NOTRUN -> [SKIP][184] ([i915#3828])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#15073]) +1 other test skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@fences-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#14544] / [i915#1849])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_pm_rpm@fences-dpms.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-rkl:          [PASS][187] -> [SKIP][188] ([i915#14544] / [i915#15073])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp.html
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-rkl:          [PASS][189] -> [SKIP][190] ([i915#15073])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#6524])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-5/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-tglu:         NOTRUN -> [SKIP][192] ([i915#6524])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-4/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#11520])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-1/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][194] ([i915#11520]) +4 other tests skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][195] ([i915#11520]) +8 other tests skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-glk6/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-glk10:        NOTRUN -> [SKIP][196] ([i915#11520]) +5 other tests skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-glk10/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#11520]) +4 other tests skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-2/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][198] ([i915#11520]) +3 other tests skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-4/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#11520] / [i915#14544]) +3 other tests skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr@fbc-psr-cursor-render:
>     - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#1072] / [i915#9732])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-1/igt@kms_psr@fbc-psr-cursor-render.html
> 
>   * igt@kms_psr@pr-cursor-render:
>     - shard-rkl:          NOTRUN -> [SKIP][201] ([i915#1072] / [i915#14544] / [i915#9732]) +9 other tests skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_psr@pr-cursor-render.html
>     - shard-tglu:         NOTRUN -> [SKIP][202] ([i915#9732]) +9 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-10/igt@kms_psr@pr-cursor-render.html
> 
>   * igt@kms_psr@psr-sprite-plane-onoff:
>     - shard-tglu-1:       NOTRUN -> [SKIP][203] ([i915#9732]) +11 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@kms_psr@psr-sprite-plane-onoff.html
> 
>   * igt@kms_psr@psr2-cursor-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#1072] / [i915#9732]) +13 other tests skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-5/igt@kms_psr@psr2-cursor-blt.html
> 
>   * igt@kms_scaling_modes@scaling-mode-center:
>     - shard-tglu:         NOTRUN -> [SKIP][205] ([i915#3555])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-4/igt@kms_scaling_modes@scaling-mode-center.html
> 
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-tglu-1:       NOTRUN -> [ABORT][206] ([i915#13179]) +1 other test abort
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@kms_selftest@drm_framebuffer.html
> 
>   * igt@kms_sharpness_filter@filter-formats:
>     - shard-tglu:         NOTRUN -> [SKIP][207] ([i915#15232]) +1 other test skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-4/igt@kms_sharpness_filter@filter-formats.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-tglu-1:       NOTRUN -> [SKIP][208] ([i915#8623])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_vblank@query-forked-busy:
>     - shard-rkl:          [PASS][209] -> [SKIP][210] ([i915#14544]) +27 other tests skip
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_vblank@query-forked-busy.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_vblank@query-forked-busy.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#9906])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-2/igt@kms_vrr@max-min.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#3555] / [i915#9906])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-5/igt@kms_vrr@negative-basic.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-tglu-1:       NOTRUN -> [SKIP][213] ([i915#9906])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-rkl:          NOTRUN -> [SKIP][214] ([i915#14544] / [i915#2437])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_writeback@writeback-check-output.html
>     - shard-tglu:         NOTRUN -> [SKIP][215] ([i915#2437])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-10/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-check-output-xrgb2101010:
>     - shard-glk:          NOTRUN -> [SKIP][216] ([i915#2437])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-glk6/igt@kms_writeback@writeback-check-output-xrgb2101010.html
> 
>   * igt@panthor/panthor_query@query:
>     - shard-tglu:         NOTRUN -> [SKIP][217] ([i915#2575]) +1 other test skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-4/igt@panthor/panthor_query@query.html
> 
>   * igt@panthor/panthor_vm@vm_unbind_invalid_address:
>     - shard-tglu-1:       NOTRUN -> [SKIP][218] ([i915#2575])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@panthor/panthor_vm@vm_unbind_invalid_address.html
> 
>   * igt@perf@per-context-mode-unprivileged:
>     - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#14544] / [i915#2435])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@perf@per-context-mode-unprivileged.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-rkl:          [PASS][220] -> [ABORT][221] ([i915#15131])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-7/igt@perf_pmu@rc6-suspend.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-4/igt@perf_pmu@rc6-suspend.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][222] ([i915#8516])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - shard-rkl:          NOTRUN -> [SKIP][223] ([i915#14544] / [i915#3291] / [i915#3708]) +1 other test skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-tglu:         NOTRUN -> [SKIP][224] +23 other tests skip
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-4/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
>     - shard-tglu-1:       NOTRUN -> [FAIL][225] ([i915#12910])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@vecs0:
>     - shard-rkl:          [PASS][226] -> [DMESG-WARN][227] ([i915#12964]) +19 other tests dmesg-warn
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-8/igt@sysfs_heartbeat_interval@mixed@vecs0.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-2/igt@sysfs_heartbeat_interval@mixed@vecs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@unaligned-write:
>     - shard-rkl:          [SKIP][228] ([i915#14544] / [i915#2582]) -> [PASS][229]
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@fbdev@unaligned-write.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@fbdev@unaligned-write.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-rkl:          [INCOMPLETE][230] ([i915#13390]) -> [PASS][231]
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-3/igt@gem_eio@in-flight-suspend.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@i915_module_load@reload-no-display:
>     - shard-dg1:          [DMESG-WARN][232] ([i915#13029] / [i915#14545]) -> [PASS][233]
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg1-13/igt@i915_module_load@reload-no-display.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg1-17/igt@i915_module_load@reload-no-display.html
> 
>   * igt@i915_pm_rpm@system-suspend:
>     - shard-dg1:          [DMESG-WARN][234] ([i915#4423]) -> [PASS][235] +1 other test pass
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg1-16/igt@i915_pm_rpm@system-suspend.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg1-19/igt@i915_pm_rpm@system-suspend.html
> 
>   * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3:
>     - shard-dg2:          [FAIL][236] ([i915#5956]) -> [PASS][237] +1 other test pass
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg2-3/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-1/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs:
>     - shard-rkl:          [SKIP][238] ([i915#14544]) -> [PASS][239] +15 other tests pass
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc:
>     - shard-dg2:          [ABORT][240] ([i915#15091] / [i915#15132]) -> [PASS][241]
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg2-10/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc.html
> 
>   * igt@kms_color@ctm-0-50:
>     - shard-rkl:          [SKIP][242] ([i915#12655] / [i915#14544]) -> [PASS][243]
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_color@ctm-0-50.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_color@ctm-0-50.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-b-hdmi-a-1:
>     - shard-rkl:          [ABORT][244] ([i915#15132]) -> [PASS][245] +2 other tests pass
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-4/igt@kms_cursor_crc@cursor-suspend@pipe-b-hdmi-a-1.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-2/igt@kms_cursor_crc@cursor-suspend@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
>     - shard-rkl:          [SKIP][246] ([i915#11190] / [i915#14544]) -> [PASS][247]
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
>     - shard-dg2:          [SKIP][248] ([i915#3555]) -> [PASS][249]
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg2-6/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-dg2:          [FAIL][250] ([i915#4767]) -> [PASS][251]
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg2-11/igt@kms_fbcon_fbt@fbc-suspend.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-3/igt@kms_fbcon_fbt@fbc-suspend.html
>     - shard-rkl:          [SKIP][252] ([i915#14544] / [i915#14561]) -> [PASS][253]
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_fbcon_fbt@fbc-suspend.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible:
>     - shard-rkl:          [SKIP][254] ([i915#14544] / [i915#3637]) -> [PASS][255] +1 other test pass
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:
>     - shard-rkl:          [SKIP][256] ([i915#14544] / [i915#3555]) -> [PASS][257] +1 other test pass
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:
>     - shard-rkl:          [SKIP][258] ([i915#14544] / [i915#1849] / [i915#5354]) -> [PASS][259] +3 other tests pass
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-dg2:          [SKIP][260] ([i915#3555] / [i915#8228]) -> [PASS][261]
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg2-7/igt@kms_hdr@static-toggle-dpms.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-11/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_invalid_mode@overflow-vrefresh:
>     - shard-rkl:          [SKIP][262] ([i915#14544] / [i915#8826]) -> [PASS][263]
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_invalid_mode@overflow-vrefresh.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_invalid_mode@overflow-vrefresh.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-dg2:          [SKIP][264] ([i915#12388]) -> [PASS][265]
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg2-1/igt@kms_joiner@invalid-modeset-force-big-joiner.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-11/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers:
>     - shard-rkl:          [SKIP][266] ([i915#14544] / [i915#8152]) -> [PASS][267]
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:
>     - shard-rkl:          [SKIP][268] ([i915#12247] / [i915#14544] / [i915#8152]) -> [PASS][269] +4 other tests pass
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-a:
>     - shard-rkl:          [SKIP][270] ([i915#12247] / [i915#14544]) -> [PASS][271] +2 other tests pass
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-a.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-a.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-rkl:          [SKIP][272] ([i915#14544] / [i915#15073]) -> [PASS][273]
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-dg2:          [SKIP][274] ([i915#15073]) -> [PASS][275]
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp.html
>     - shard-rkl:          [SKIP][276] ([i915#15073]) -> [PASS][277]
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_properties@crtc-properties-legacy:
>     - shard-rkl:          [SKIP][278] ([i915#11521] / [i915#14544]) -> [PASS][279]
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_properties@crtc-properties-legacy.html
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_properties@crtc-properties-legacy.html
> 
>   * igt@kms_vblank@ts-continuation-dpms-suspend:
>     - shard-rkl:          [INCOMPLETE][280] ([i915#12276]) -> [PASS][281] +1 other test pass
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-3/igt@kms_vblank@ts-continuation-dpms-suspend.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-5/igt@kms_vblank@ts-continuation-dpms-suspend.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-mtlp:         [FAIL][282] ([i915#10393]) -> [PASS][283] +1 other test pass
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-mtlp-7/igt@kms_vrr@negative-basic.html
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-mtlp-7/igt@kms_vrr@negative-basic.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-rkl:          [FAIL][284] ([i915#14550]) -> [PASS][285]
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@perf@polling-small-buf.html
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@perf@polling-small-buf.html
> 
>   * igt@perf_pmu@interrupts-sync:
>     - shard-rkl:          [FAIL][286] ([i915#14470]) -> [PASS][287]
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-5/igt@perf_pmu@interrupts-sync.html
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-8/igt@perf_pmu@interrupts-sync.html
> 
>   * igt@syncobj_basic@bad-handle-to-fd:
>     - shard-rkl:          [DMESG-WARN][288] ([i915#12964]) -> [PASS][289] +1 other test pass
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-4/igt@syncobj_basic@bad-handle-to-fd.html
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-5/igt@syncobj_basic@bad-handle-to-fd.html
> 
>   
> #### Warnings ####
> 
>   * igt@api_intel_bb@object-reloc-keep-cache:
>     - shard-rkl:          [SKIP][290] ([i915#14544] / [i915#8411]) -> [SKIP][291] ([i915#8411])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@api_intel_bb@object-reloc-keep-cache.html
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@api_intel_bb@object-reloc-keep-cache.html
> 
>   * igt@gem_ccs@ctrl-surf-copy-new-ctx:
>     - shard-rkl:          [SKIP][292] ([i915#9323]) -> [SKIP][293] ([i915#14544] / [i915#9323])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-rkl:          [SKIP][294] ([i915#6335]) -> [SKIP][295] ([i915#14544] / [i915#6335])
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@gem_create@create-ext-cpu-access-sanity-check.html
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-rkl:          [SKIP][296] ([i915#4525]) -> [SKIP][297] ([i915#14544] / [i915#4525])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@gem_exec_balancer@parallel-bb-first.html
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-rkl:          [SKIP][298] ([i915#14544] / [i915#4525]) -> [SKIP][299] ([i915#4525])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-4/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-rkl:          [SKIP][300] ([i915#14544]) -> [SKIP][301] +4 other tests skip
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_exec_reloc@basic-wc-gtt-active:
>     - shard-rkl:          [SKIP][302] ([i915#3281]) -> [SKIP][303] ([i915#14544] / [i915#3281]) +4 other tests skip
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@gem_exec_reloc@basic-wc-gtt-active.html
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@gem_exec_reloc@basic-wc-gtt-active.html
> 
>   * igt@gem_exec_reloc@basic-write-read-active:
>     - shard-rkl:          [SKIP][304] ([i915#14544] / [i915#3281]) -> [SKIP][305] ([i915#3281]) +2 other tests skip
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@gem_exec_reloc@basic-write-read-active.html
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@gem_exec_reloc@basic-write-read-active.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-rkl:          [SKIP][306] ([i915#4613]) -> [SKIP][307] ([i915#14544] / [i915#4613]) +1 other test skip
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@gem_lmem_swapping@heavy-random.html
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
>     - shard-rkl:          [SKIP][308] ([i915#14544] / [i915#4613]) -> [SKIP][309] ([i915#4613]) +1 other test skip
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
> 
>   * igt@gem_pread@bench:
>     - shard-rkl:          [SKIP][310] ([i915#3282]) -> [SKIP][311] ([i915#14544] / [i915#3282]) +2 other tests skip
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@gem_pread@bench.html
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@gem_pread@bench.html
> 
>   * igt@gem_tiled_partial_pwrite_pread@reads:
>     - shard-rkl:          [SKIP][312] ([i915#14544] / [i915#3282]) -> [SKIP][313] ([i915#3282]) +1 other test skip
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@gem_tiled_partial_pwrite_pread@reads.html
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@gem_tiled_partial_pwrite_pread@reads.html
> 
>   * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
>     - shard-rkl:          [SKIP][314] ([i915#3297]) -> [SKIP][315] ([i915#14544] / [i915#3297]) +1 other test skip
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
> 
>   * igt@gen9_exec_parse@cmd-crossing-page:
>     - shard-rkl:          [SKIP][316] ([i915#2527]) -> [SKIP][317] ([i915#14544] / [i915#2527])
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@gen9_exec_parse@cmd-crossing-page.html
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@gen9_exec_parse@cmd-crossing-page.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-rkl:          [SKIP][318] ([i915#6412]) -> [SKIP][319] ([i915#14544] / [i915#6412])
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@i915_module_load@resize-bar.html
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_rpm@reg-read-ioctl:
>     - shard-rkl:          [SKIP][320] ([i915#13328]) -> [SKIP][321] ([i915#13328] / [i915#14544])
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@i915_pm_rpm@reg-read-ioctl.html
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@i915_pm_rpm@reg-read-ioctl.html
> 
>   * igt@intel_hwmon@hwmon-read:
>     - shard-rkl:          [SKIP][322] ([i915#14544] / [i915#7707]) -> [SKIP][323] ([i915#7707])
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@intel_hwmon@hwmon-read.html
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@intel_hwmon@hwmon-read.html
> 
>   * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
>     - shard-dg1:          [SKIP][324] ([i915#4212] / [i915#4423]) -> [SKIP][325] ([i915#4212])
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg1-12/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg1-18/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-rkl:          [SKIP][326] ([i915#12454] / [i915#12712]) -> [SKIP][327] ([i915#12454] / [i915#12712] / [i915#14544])
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_async_flips@async-flip-suspend-resume:
>     - shard-rkl:          [SKIP][328] ([i915#14544]) -> [ABORT][329] ([i915#15132])
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_async_flips@async-flip-suspend-resume.html
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-4/igt@kms_async_flips@async-flip-suspend-resume.html
> 
>   * igt@kms_atomic_interruptible@legacy-pageflip:
>     - shard-rkl:          [DMESG-WARN][330] ([i915#12964]) -> [SKIP][331] ([i915#14544]) +1 other test skip
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_atomic_interruptible@legacy-pageflip.html
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_atomic_interruptible@legacy-pageflip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-rkl:          [SKIP][332] ([i915#5286]) -> [SKIP][333] ([i915#14544]) +2 other tests skip
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>     - shard-rkl:          [SKIP][334] ([i915#14544]) -> [SKIP][335] ([i915#5286]) +1 other test skip
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-90:
>     - shard-rkl:          [SKIP][336] ([i915#3638]) -> [SKIP][337] ([i915#14544])
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_big_fb@linear-32bpp-rotate-90.html
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>     - shard-rkl:          [SKIP][338] ([i915#14544]) -> [SKIP][339] ([i915#3638])
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-rkl:          [SKIP][340] -> [SKIP][341] ([i915#14544]) +11 other tests skip
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
>     - shard-dg1:          [SKIP][342] ([i915#4538]) -> [SKIP][343] ([i915#4423] / [i915#4538])
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg1-18/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg1-19/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:
>     - shard-rkl:          [SKIP][344] ([i915#14544]) -> [SKIP][345] ([i915#14098] / [i915#6095]) +4 other tests skip
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs:
>     - shard-dg1:          [SKIP][346] ([i915#4423] / [i915#6095]) -> [SKIP][347] ([i915#6095]) +2 other tests skip
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg1-16/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs.html
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg1-19/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
>     - shard-rkl:          [SKIP][348] ([i915#12805]) -> [SKIP][349] ([i915#14544])
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
>     - shard-rkl:          [SKIP][350] ([i915#14098] / [i915#6095]) -> [SKIP][351] ([i915#14544]) +4 other tests skip
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][352] ([i915#14098] / [i915#6095]) -> [SKIP][353] ([i915#6095]) +3 other tests skip
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-2.html
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
>     - shard-rkl:          [SKIP][354] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][355] ([i915#11151] / [i915#7828])
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
>     - shard-rkl:          [SKIP][356] ([i915#11151] / [i915#7828]) -> [SKIP][357] ([i915#11151] / [i915#14544] / [i915#7828]) +3 other tests skip
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-dg2:          [SKIP][358] ([i915#7118] / [i915#9424]) -> [FAIL][359] ([i915#7173])
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg2-7/igt@kms_content_protection@atomic.html
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-11/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-dg2:          [FAIL][360] ([i915#7173]) -> [SKIP][361] ([i915#9424])
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg2-11/igt@kms_content_protection@lic-type-0.html
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-5/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2:          [FAIL][362] ([i915#7173]) -> [SKIP][363] ([i915#7118])
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg2-11/igt@kms_content_protection@srm.html
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-5/igt@kms_content_protection@srm.html
>     - shard-dg1:          [SKIP][364] ([i915#4423] / [i915#7116]) -> [SKIP][365] ([i915#7116])
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg1-12/igt@kms_content_protection@srm.html
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg1-18/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          [SKIP][366] ([i915#7118] / [i915#7162] / [i915#9424]) -> [SKIP][367] ([i915#7118] / [i915#9424])
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg2-10/igt@kms_content_protection@type1.html
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-1/igt@kms_content_protection@type1.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-dg2:          [FAIL][368] ([i915#1339] / [i915#7173]) -> [SKIP][369] ([i915#7118] / [i915#9424])
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg2-11/igt@kms_content_protection@uevent.html
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-7/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-rkl:          [SKIP][370] ([i915#14544]) -> [SKIP][371] ([i915#13049])
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-512x512.html
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-random-64x21:
>     - shard-rkl:          [FAIL][372] ([i915#13566]) -> [SKIP][373] ([i915#14544])
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_cursor_crc@cursor-random-64x21.html
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_cursor_crc@cursor-random-64x21.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-rkl:          [SKIP][374] ([i915#13049]) -> [SKIP][375] ([i915#14544]) +1 other test skip
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
>     - shard-dg1:          [SKIP][376] ([i915#4423]) -> [SKIP][377]
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg1-16/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg1-19/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>     - shard-dg1:          [SKIP][378] -> [SKIP][379] ([i915#4423])
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg1-16/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg1-19/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-rkl:          [SKIP][380] ([i915#4103]) -> [SKIP][381] ([i915#14544])
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-rkl:          [SKIP][382] ([i915#9723]) -> [SKIP][383] ([i915#14544])
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-rkl:          [SKIP][384] ([i915#3555] / [i915#3840]) -> [SKIP][385] ([i915#14544])
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_dsc@dsc-with-formats.html
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_feature_discovery@display-3x:
>     - shard-rkl:          [SKIP][386] ([i915#14544] / [i915#1839]) -> [SKIP][387] ([i915#1839])
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_feature_discovery@display-3x.html
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_feature_discovery@display-3x.html
> 
>   * igt@kms_flip@2x-flip-vs-panning:
>     - shard-rkl:          [SKIP][388] ([i915#14544] / [i915#9934]) -> [SKIP][389] ([i915#9934]) +2 other tests skip
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_flip@2x-flip-vs-panning.html
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_flip@2x-flip-vs-panning.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race:
>     - shard-rkl:          [SKIP][390] ([i915#9934]) -> [SKIP][391] ([i915#14544] / [i915#9934]) +5 other tests skip
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_flip@2x-modeset-vs-vblank-race.html
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_flip@2x-modeset-vs-vblank-race.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
>     - shard-rkl:          [SKIP][392] ([i915#2672] / [i915#3555]) -> [SKIP][393] ([i915#14544] / [i915#3555])
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
>     - shard-rkl:          [SKIP][394] ([i915#14544] / [i915#3555]) -> [SKIP][395] ([i915#2672] / [i915#3555]) +1 other test skip
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-rkl:          [DMESG-WARN][396] ([i915#12964]) -> [SKIP][397] ([i915#14544] / [i915#1849] / [i915#5354])
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
>     - shard-rkl:          [SKIP][398] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][399] ([i915#15102] / [i915#3023]) +7 other tests skip
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render:
>     - shard-rkl:          [SKIP][400] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][401] ([i915#1825]) +4 other tests skip
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render.html
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
>     - shard-rkl:          [SKIP][402] ([i915#1825]) -> [SKIP][403] ([i915#14544] / [i915#1849] / [i915#5354]) +20 other tests skip
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
>     - shard-rkl:          [SKIP][404] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][405]
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
>     - shard-dg1:          [SKIP][406] ([i915#8708]) -> [SKIP][407] ([i915#4423] / [i915#8708])
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
>     - shard-dg2:          [SKIP][408] ([i915#15102] / [i915#3458]) -> [SKIP][409] ([i915#10433] / [i915#15102] / [i915#3458]) +2 other tests skip
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>     - shard-rkl:          [SKIP][410] ([i915#5439]) -> [SKIP][411] ([i915#14544] / [i915#1849] / [i915#5354])
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-cpu:
>     - shard-rkl:          [SKIP][412] ([i915#14544]) -> [SKIP][413] ([i915#15102])
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc:
>     - shard-rkl:          [SKIP][414] ([i915#15102]) -> [SKIP][415] ([i915#14544]) +1 other test skip
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc.html
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
>     - shard-rkl:          [SKIP][416] ([i915#15102] / [i915#3023]) -> [SKIP][417] ([i915#14544] / [i915#1849] / [i915#5354]) +7 other tests skip
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-rkl:          [SKIP][418] ([i915#3555] / [i915#8228]) -> [SKIP][419] ([i915#14544]) +1 other test skip
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_hdr@bpc-switch-suspend.html
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-dg2:          [SKIP][420] ([i915#13331]) -> [SKIP][421] ([i915#12713])
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg2-11/igt@kms_hdr@brightness-with-hdr.html
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg2-5/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
>     - shard-dg1:          [SKIP][422] ([i915#13522]) -> [SKIP][423] ([i915#13522] / [i915#4423])
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg1-18/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
>    [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg1-19/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][424] ([i915#4070] / [i915#4816]) -> [SKIP][425] ([i915#1839] / [i915#4816])
>    [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-8/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-rkl:          [SKIP][426] ([i915#3555]) -> [SKIP][427] ([i915#14544])
>    [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_plane_lowres@tiling-yf.html
>    [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_plane_lowres@tiling-yf.html
> 
>   * igt@kms_plane_multiple@2x-tiling-yf:
>     - shard-rkl:          [SKIP][428] ([i915#14544]) -> [SKIP][429] ([i915#13958])
>    [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-yf.html
>    [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_plane_multiple@2x-tiling-yf.html
> 
>   * igt@kms_pm_backlight@brightness-with-dpms:
>     - shard-rkl:          [SKIP][430] ([i915#12343]) -> [SKIP][431] ([i915#12343] / [i915#14544])
>    [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_pm_backlight@brightness-with-dpms.html
>    [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_pm_backlight@brightness-with-dpms.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [SKIP][432] ([i915#15073]) -> [SKIP][433] ([i915#14544] / [i915#15073])
>    [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@pm-caching:
>     - shard-dg1:          [SKIP][434] ([i915#4077] / [i915#4423]) -> [SKIP][435] ([i915#4077])
>    [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg1-12/igt@kms_pm_rpm@pm-caching.html
>    [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg1-13/igt@kms_pm_rpm@pm-caching.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-rkl:          [SKIP][436] ([i915#14544] / [i915#6524]) -> [SKIP][437] ([i915#6524])
>    [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_prime@d3hot.html
>    [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:
>     - shard-rkl:          [SKIP][438] ([i915#11520]) -> [SKIP][439] ([i915#11520] / [i915#14544]) +3 other tests skip
>    [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html
>    [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:
>     - shard-dg1:          [SKIP][440] ([i915#11520]) -> [SKIP][441] ([i915#11520] / [i915#4423])
>    [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-dg1-13/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html
>    [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-dg1-17/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
>     - shard-rkl:          [SKIP][442] ([i915#11520] / [i915#14544]) -> [SKIP][443] ([i915#11520]) +2 other tests skip
>    [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
>    [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr@pr-primary-mmap-gtt:
>     - shard-rkl:          [SKIP][444] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][445] ([i915#1072] / [i915#9732]) +5 other tests skip
>    [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_psr@pr-primary-mmap-gtt.html
>    [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-4/igt@kms_psr@pr-primary-mmap-gtt.html
> 
>   * igt@kms_psr@psr-cursor-plane-move:
>     - shard-rkl:          [SKIP][446] ([i915#1072] / [i915#9732]) -> [SKIP][447] ([i915#1072] / [i915#14544] / [i915#9732]) +9 other tests skip
>    [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_psr@psr-cursor-plane-move.html
>    [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_psr@psr-cursor-plane-move.html
> 
>   * igt@kms_scaling_modes@scaling-mode-center:
>     - shard-rkl:          [SKIP][448] ([i915#14544]) -> [SKIP][449] ([i915#3555])
>    [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_scaling_modes@scaling-mode-center.html
>    [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_scaling_modes@scaling-mode-center.html
> 
>   * igt@kms_sharpness_filter@filter-formats:
>     - shard-rkl:          [SKIP][450] ([i915#14544]) -> [SKIP][451] ([i915#15232])
>    [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@kms_sharpness_filter@filter-formats.html
>    [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@kms_sharpness_filter@filter-formats.html
> 
>   * igt@kms_sharpness_filter@invalid-filter-with-scaler:
>     - shard-rkl:          [SKIP][452] ([i915#15232]) -> [SKIP][453] ([i915#14544]) +1 other test skip
>    [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@kms_sharpness_filter@invalid-filter-with-scaler.html
>    [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@kms_sharpness_filter@invalid-filter-with-scaler.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-rkl:          [SKIP][454] ([i915#3708]) -> [SKIP][455] ([i915#14544] / [i915#3708])
>    [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-2/igt@prime_vgem@fence-read-hang.html
>    [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-6/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-rkl:          [SKIP][456] ([i915#14544] / [i915#3708]) -> [SKIP][457] ([i915#3708])
>    [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17509/shard-rkl-6/igt@prime_vgem@fence-write-hang.html
>    [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/shard-rkl-7/igt@prime_vgem@fence-write-hang.html
> 
>   
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10393]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10393
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11521]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12177]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12177
>   [i915#12178]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12178
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
>   [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
>   [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
>   [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#13029]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
>   [i915#13328]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13328
>   [i915#13331]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13363]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13363
>   [i915#1339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339
>   [i915#13390]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390
>   [i915#13522]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
>   [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
>   [i915#14470]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14470
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
>   [i915#14550]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14550
>   [i915#14561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14561
>   [i915#14600]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600
>   [i915#14702]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14702
>   [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
>   [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
>   [i915#15091]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15091
>   [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
>   [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
>   [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
>   [i915#15172]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15172
>   [i915#15232]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15232
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
>   [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
>   [i915#2435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
>   [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4767
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
>   [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7862]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7862
>   [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_17509 -> Patchwork_157225v1
> 
>   CI-20190529: 20190529
>   CI_DRM_17509: 35cd059ed9ec8f39c25a160137ba85a150349160 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8613: b542242f5b116e3b554b4068ef5dfa4451075b2b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_157225v1: 35cd059ed9ec8f39c25a160137ba85a150349160 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157225v1/index.html
