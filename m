Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F30B9B5896
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 01:27:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 678E510E3DE;
	Wed, 30 Oct 2024 00:27:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jy5LMUFn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81EE410E3DE
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 00:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730248032; x=1761784032;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=w3kD7EbQADUuJ4yNQ/xoL2v02ST7X49TVPUl9ohz92w=;
 b=jy5LMUFnnavtCwFydwuydF5L7bjNRVgBhwsPsjkbHBLyWvsVOVkDvqH+
 yoXRX+Gfrn1uAoJK6ZH6u+6N9mlnEfkGo2sXZWhr6YiOBQDbxrtPEH9r+
 egZ7u0VMhaNxQvCSw51ww+LYJNhBMlydFp5yxwZjWatGLwBmC6HlQF66B
 /6CwjcA8tWSZ5Wdz52OZwbMmw/ChbT819tpGqEtLKkFFLEYmnYPaNQH3x
 ShnNTLVH5h/7Ii93paQWIbqE/Mo3W/YIO2pws0F/GOC8tnraahDp/uT9r
 dTvh7aEba+TgkycS4s+gv4rssovI+Cds2ayICCfvDvqXXTATL1laR4x2A A==;
X-CSE-ConnectionGUID: Ssrm9cwnTeyMt7g+mcIxwA==
X-CSE-MsgGUID: qzmWzgNPTqeKP7StzNN7cg==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="47406438"
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="47406438"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 17:27:11 -0700
X-CSE-ConnectionGUID: Ef/8ICmSQTCvsTToe/LlpQ==
X-CSE-MsgGUID: yyLvLnyrQ8eYaFqbbdyW7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="86077714"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 17:27:11 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 17:27:10 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 17:27:10 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 17:27:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=REYIiXBAjz+o/fKtcZLNUxVeMW7elDiRS6wvUMnMO+q7OqBZZmhyjEdodZAKt2jkueHmKdpSU8sh81pj/KTFLru8U9FviGQUan8+TWmsA7AH8K/CDGEl20SJ5+kgYAqrB0MMUcTDLZIgs4w2za0FcGM9FFxntyVRxr4CeVxl3IcOkZkCZVi+yGFiGfBoiOP5wAiuC/2Zzov7KCNLATNlDlcjzxX6WcBZZlvvTW7M8hB5dNv59HuX4TihLq2Xto5+Vqpxa3MSw77uxf3jKbPltaKrkcEhaG4Si3R5OO4VXQgIN28w3Ma+pufFxqYO3ieaGilmmenmZ6vdCWBADs2f8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GVftS9/arRNpUjeescdxmRWKkPrMvTk/OsUbUCJ3MC0=;
 b=IoFEhz1nun8j1wb7dM6YrDSX1WXpVY2aDTfCRtS8Cubjo+oE8lglbm2Ld5EeAa+aRhu1XHWehTVSjbQdKVsRtgIsgGNnKVFL3y9gOOgyxDZmm4vHktgmXjU0q+8jTBm5HLE6/jKqd2Z4AByE9G/BaKvIAPDomagGsmMg8UQX3zrBk10kjlNzqZaSd6ClcFIEsICAX8rxqJXE9j/sYMg3qnI5+x+pn5uUTPpZ768mhnaTzsru9pyDEjJGwTjyOVvw/tK4UKF7io+X81bHrRAoyslfVlqWYdprWlocXl7/A4x43hfuJgtfBRMdcZBgCRu1kWEk/hQ8joaVpBT4pZntpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CO1PR11MB4994.namprd11.prod.outlook.com (2603:10b6:303:91::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.27; Wed, 30 Oct
 2024 00:27:01 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8093.027; Wed, 30 Oct 2024
 00:27:01 +0000
Date: Tue, 29 Oct 2024 17:26:58 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Clint Taylor <clinton.a.taylor@intel.com>
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?=
 =?utf-8?Q?e_for_drm=2Fi915=2Fdisplay=2Fdp?= =?utf-8?Q?=3A?= Reduce log level
 for SOURCE OUI write failures (rev2)
Message-ID: <20241030002658.GG4891@mdroper-desk1.amr.corp.intel.com>
References: <20241004210816.3976058-1-clinton.a.taylor@intel.com>
 <173024701696.1362048.3563240726131040619@2413ebb6fbb6>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <173024701696.1362048.3563240726131040619@2413ebb6fbb6>
X-ClientProxiedBy: SJ2PR07CA0002.namprd07.prod.outlook.com
 (2603:10b6:a03:505::25) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CO1PR11MB4994:EE_
X-MS-Office365-Filtering-Correlation-Id: 3a664e47-0592-4bfc-ff50-08dcf879924d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?LvnxihKsp3k5vyqTB7O+o9CnOUCWupz0uYvRW0gV6pSQubsSNFVbYVXVkB13?=
 =?us-ascii?Q?UN8aEbpnR1uvPalfraYDrK4u2Ve/FbNZUPY9M+xSvThjOmSoqn3S6/lmB/VC?=
 =?us-ascii?Q?f6KGMpa+88VHGqRp8TEXE5iAWujBYDim2GgpDUX3SiqfX4NMSgIwvvycf2Zr?=
 =?us-ascii?Q?8TuxsJlgHHMnAFYjBBX/CKyWFdqa5AOwdOwLINfp2yapvlDI4q2ZoLQS8Ctb?=
 =?us-ascii?Q?LOoDH8K3llmt9GZlYVYOhzTlZ+hxycjt42reUD9rekkvKc1Wi2tO+up5hE0P?=
 =?us-ascii?Q?oIANEyxpY59sP8ytUVNQ68XXAN3xw2NeYHj7tJy4T2GNjpakmqZjpFgyaFMC?=
 =?us-ascii?Q?dIWV97VLDuEQzJFx5n24hbtd4l5Jl2koXJPUqwx1qKM6+0hhXMNpTDjP5bmo?=
 =?us-ascii?Q?G6f0VMTfnUCgrjP0nQeiNlJdPfO4K7fIsJL6Ni9/ETEkc0u3HtDxTsDvT5yD?=
 =?us-ascii?Q?BW722NcmJIufwsBMDwaEKc8VUOMSSu7PrOR6x8fbDYeV9sQKP2c8/KTXncYg?=
 =?us-ascii?Q?oecQwJZHXwr7WhE2RDmmHobWmEBC4ptir6YAt5UGYHpjK7aqBM9fx8NcnA4N?=
 =?us-ascii?Q?lxZ7e89phaVLbGUVHhL/P53dcH+ktPXuZFB5NEzcKybDRKftc64T46WFy3gQ?=
 =?us-ascii?Q?kCG9KNdvgDFT4M7LTrrWV73pZc967aHJ0MR5Ct8QipoqZxRTZ/oy1o/NPsWG?=
 =?us-ascii?Q?bOdGZa/IGk/yoJjHXHWyQTYEVWkb6Er9VniM6GBRMhqwWWI9DnDMxGklUkT7?=
 =?us-ascii?Q?gMLAB31bEVcdSgRs+vx3W1obyq7c+w+P+5TLFZhHb618plZFUVUbPVjy5jMd?=
 =?us-ascii?Q?UnuxB6GvHeZnU7vSbouEZ1rfnNgaWl04X6I3pCjci9vAaVj5SiezUJMRhYSv?=
 =?us-ascii?Q?75Yn+5rMNrdfwSOn7wIsR2G9upx0xJuz/Tmwulbi0FKl97mb4IFGLLg41iMc?=
 =?us-ascii?Q?yOE9THaDWz9Hk5Uvp4xrxAz7zDR+/ocFHsP1N7RvP6lHeLSNJmTBpXnnZNez?=
 =?us-ascii?Q?CJGL4ivl7dJgCdy9Xp3a2tc4b2Ept65zrta7q2MmCmxb7cTshk9jDM2fh+99?=
 =?us-ascii?Q?dRKkm565JOEQ6uJ/BiZglBcuaW1Gt9K83c5VvJWwMk535OTy0KxVEoLEeeDx?=
 =?us-ascii?Q?Kh5ECOx8GE4h3QCtmX6TX0/fvHmxnhStcHIKmNVTz6X85Vd3kIG1xREKh2p4?=
 =?us-ascii?Q?Z3rFm2tNjA+ykmv0sYJE7xVIRu4+L3lcN/PdNkIQG3podWINGUNQ0OiH5EKK?=
 =?us-ascii?Q?393xMEDPzHHtWfwEkRHxPoaiDKbscwWgJHEXjkeXbQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xSA1EwC1F9r8DFeIqoking7s/ZhwHdE4fOxHxxbExsgNl1ivk+qzcXCjxBog?=
 =?us-ascii?Q?fAPf/BtZVXzJJ8QaKc/RusibgyNIMux9oXpY+m1s/4yGBFE4QdkOitqwl1S2?=
 =?us-ascii?Q?1Sb3aF8CvRTwUxvDQuuPCTLyjjbUDujICRh2/Q82q50cmfgpaTZmkjJZblN5?=
 =?us-ascii?Q?XDp9k/tsS8dIfGGE+MnSdIuZowztKFEpEDxXiHtV5zODn12YQ1S4FfkpVXsE?=
 =?us-ascii?Q?m5/IygRgMLRO1uhj+Wa4SoltBw9NJDgb1JLzmMXoDuQZSyIzmWrgp4WQhI1n?=
 =?us-ascii?Q?HdXjtx1OmigIW8Yb6gU0YmIPTz9ZuaVuFaYKuNjO7+dYiH2CIXodGrfaE+E/?=
 =?us-ascii?Q?nZVimn3/63B+pveC+YUW9TwM8h6Awr3rZQWI0ijDU0PmAarFJeO3fD8x71/P?=
 =?us-ascii?Q?j3z4wxJ80T6yniyWRQZgTUbr202x7XzH+U2zkfRAiboZU76b9Kv1KYM6g/0r?=
 =?us-ascii?Q?dOQhJZs+QaXbKCNdpPL4vF05min2EFWpZq9plKvMj2bC/cdONGzTE6TK6Qhi?=
 =?us-ascii?Q?fNt9N17k8cXQZtJEhx4xEiKFypNl0STxuy1ygQSCvlzRQL6+IUWBY9/XqfRx?=
 =?us-ascii?Q?+0fHZkoQBTbStzypCrXqJ854sV1vXYnN8nfx/oPCQ/TFLDcwVyytJtC5ZoeU?=
 =?us-ascii?Q?lxVqi7qKJxeQN5n2AI2Iz9ei7vpo27OFRZwf4ZXOMKmVgR6AcoPIKH644w9i?=
 =?us-ascii?Q?+zxbaPKN+6fPY0nBwGe9JGQ69L6s4zKqsm09Ujw2L6JA0w41FcDRrgJ5Yokl?=
 =?us-ascii?Q?bVO7CUA19vH4MZMKhmbfNFNZ7HeNi+z6h/f6iZ5oQQ0p41N2Qop7dceFzFFA?=
 =?us-ascii?Q?JC79DYpYPX4w/nyAqZUqHwFZIIA/wWG7Y+AZpXuAwmD6MYR8t+dqEI5khXJR?=
 =?us-ascii?Q?RMakSLrL5gY5eDt1LZiVihZKGPuRhu44kLu3ZDgOYmo4nNXbzjJ4R5ZBgq8/?=
 =?us-ascii?Q?1DR1koosrWqSdV7Zr3c4kKvP9zc/DZGfARWJA7MwDDrpRet3FViMfIAErg8n?=
 =?us-ascii?Q?r98TQ2+6ahMxuXqu+DRLdcGREahFJxM3yxJr8KKVSryh+o3z7X8BslAwHGHa?=
 =?us-ascii?Q?GdzBKXzmXNcVFE2vwJ9FwB5GJm7nVQhb+DRwd3m3tDzjW58kZ3gFKM4d1lfN?=
 =?us-ascii?Q?Rifotfxcp82ZsLabHzlzDw/piqzD+s87fPhaH7mx2JU7EoI+NgPn8tNYSqlQ?=
 =?us-ascii?Q?6LFGM8GcWczp979PbsxI1T+WzTPDMMe21owZfYadkfs9uWpzHYuVpXKcIOPH?=
 =?us-ascii?Q?AYOB6F1fkzL5/Go7e/B2CXywthv45WOQtFU6pfEe6UY0exoPY2GyCj9lDIQQ?=
 =?us-ascii?Q?f8fvZ4ER5q36rUMkyJs2m+Y64MdMtpy1UNUy+wl0tVuFIy5cMsabWR0HP6zz?=
 =?us-ascii?Q?bRvuo/4124upsasqD3Tqi7HVNjcMx3Bf8l411bVG1UZCC44LFRk7VXVx+HLv?=
 =?us-ascii?Q?DVC0SFqgX1SM73/3R4ckqb2NjEp2bx++5eCOGo9I5n6i2/A9ZnEZCQT1pLfE?=
 =?us-ascii?Q?Ccvho1hr5bFkOHFiBXNpsCIG8a3ymCz8n79bzUJEeVjrfYS0N/A74NyV10R8?=
 =?us-ascii?Q?Tgnfy5d+TPvQadcW9qVLGnqH8RTLmExMSxKWLrDagHCWTakqF7unolHf06AC?=
 =?us-ascii?Q?yg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a664e47-0592-4bfc-ff50-08dcf879924d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2024 00:27:01.2452 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +69ovQWk7O47S4tKg7QckLPAoyQjLExTRwrriPKzepz8a3qMYPTC5bo5nUUn5S5JZFI6ZDF6bNFLekJMCJ1OOHMQwoMvSW7k3AtIS5ZT9RA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4994
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

On Wed, Oct 30, 2024 at 12:10:16AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/display/dp: Reduce log level for SOURCE OUI write failures (rev2)
> URL   : https://patchwork.freedesktop.org/series/139585/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15605_full -> Patchwork_139585v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_139585v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_139585v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (9 -> 9)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_139585v2_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_schedule@wide@ccs0:
>     - shard-dg2:          NOTRUN -> [DMESG-WARN][1] +1 other test dmesg-warn
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-8/igt@gem_exec_schedule@wide@ccs0.html
> 
>   * igt@kms_color@ctm-0-50:
>     - shard-dg2:          NOTRUN -> [SKIP][2]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-2/igt@kms_color@ctm-0-50.html
> 
>   * igt@kms_color@degamma:
>     - shard-dg2:          [PASS][3] -> [SKIP][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-1/igt@kms_color@degamma.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-2/igt@kms_color@degamma.html

None of these are related to the log level downgrade in this commit.

Applied to drm-intel-next.  Thanks for the patch and review.


Matt

> 
>   
> #### Warnings ####
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-tglu:         [SKIP][5] ([i915#1187]) -> [SKIP][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-6/igt@kms_hdr@brightness-with-hdr.html
> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs:
>     - {shard-dg2-9}:      NOTRUN -> [SKIP][7] +336 other tests skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-9/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - {shard-dg2-9}:      NOTRUN -> [FAIL][8] +5 other tests fail
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-9/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_139585v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@crc32:
>     - shard-dg1:          NOTRUN -> [SKIP][9] ([i915#6230])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-19/igt@api_intel_bb@crc32.html
> 
>   * igt@api_intel_bb@object-reloc-keep-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][10] ([i915#8411]) +1 other test skip
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-10/igt@api_intel_bb@object-reloc-keep-cache.html
>     - shard-dg1:          NOTRUN -> [SKIP][11] ([i915#8411])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-15/igt@api_intel_bb@object-reloc-keep-cache.html
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-tglu:         NOTRUN -> [SKIP][12] ([i915#11078])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@device_reset@cold-reset-bound.html
> 
>   * igt@drm_fdinfo@busy-check-all@vecs1:
>     - shard-dg2:          NOTRUN -> [SKIP][13] ([i915#8414]) +9 other tests skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-8/igt@drm_fdinfo@busy-check-all@vecs1.html
> 
>   * igt@drm_fdinfo@virtual-busy-idle-all:
>     - shard-mtlp:         NOTRUN -> [SKIP][14] ([i915#8414])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-mtlp-8/igt@drm_fdinfo@virtual-busy-idle-all.html
> 
>   * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][15] ([i915#12392] / [i915#7297])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#7697])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-8/igt@gem_close_race@multigpu-basic-threads.html
>     - shard-rkl:          NOTRUN -> [SKIP][17] ([i915#7697])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-3/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-tglu:         NOTRUN -> [SKIP][18] ([i915#6335]) +1 other test skip
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_ctx_isolation@preservation-s3:
>     - shard-dg1:          NOTRUN -> [DMESG-WARN][19] ([i915#4423]) +2 other tests dmesg-warn
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-19/igt@gem_ctx_isolation@preservation-s3.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs1:
>     - shard-dg1:          NOTRUN -> [DMESG-WARN][20] ([i915#4391] / [i915#4423])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-19/igt@gem_ctx_isolation@preservation-s3@vcs1.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#8555]) +2 other tests skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-8/igt@gem_ctx_persistence@heartbeat-hang.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hostile:
>     - shard-dg1:          NOTRUN -> [SKIP][22] ([i915#8555])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-15/igt@gem_ctx_persistence@heartbeat-hostile.html
> 
>   * igt@gem_ctx_persistence@hostile:
>     - shard-rkl:          [PASS][23] -> [FAIL][24] ([i915#11980] / [i915#12580])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-rkl-1/igt@gem_ctx_persistence@hostile.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-4/igt@gem_ctx_persistence@hostile.html
>     - shard-dg1:          [PASS][25] -> [FAIL][26] ([i915#11980] / [i915#12580])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg1-15/igt@gem_ctx_persistence@hostile.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-13/igt@gem_ctx_persistence@hostile.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-tglu:         NOTRUN -> [SKIP][27] ([i915#280])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-9/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-tglu-1:       NOTRUN -> [SKIP][28] ([i915#280])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#280]) +1 other test skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-10/igt@gem_ctx_sseu@invalid-sseu.html
>     - shard-dg1:          NOTRUN -> [SKIP][30] ([i915#280])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-15/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_exec_balancer@bonded-false-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#4812]) +4 other tests skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-8/igt@gem_exec_balancer@bonded-false-hang.html
> 
>   * igt@gem_exec_balancer@invalid-bonds:
>     - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#4036])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-3/igt@gem_exec_balancer@invalid-bonds.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-rkl:          NOTRUN -> [SKIP][33] ([i915#4525])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-3/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][34] ([i915#6334]) +1 other test skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-dg1:          NOTRUN -> [SKIP][35] ([i915#3539] / [i915#4852])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-19/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-solo:
>     - shard-tglu:         NOTRUN -> [FAIL][36] ([i915#2842]) +7 other tests fail
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@gem_exec_fair@basic-none-solo.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][37] ([i915#2842]) +3 other tests fail
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-3/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace:
>     - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#3539])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-2/igt@gem_exec_fair@basic-pace.html
> 
>   * igt@gem_exec_fair@basic-throttle:
>     - shard-tglu-1:       NOTRUN -> [FAIL][39] ([i915#2842]) +1 other test fail
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@gem_exec_fair@basic-throttle.html
> 
>   * igt@gem_exec_fence@submit3:
>     - shard-dg1:          NOTRUN -> [SKIP][40] ([i915#4812])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-16/igt@gem_exec_fence@submit3.html
> 
>   * igt@gem_exec_flush@basic-uc-ro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#3539] / [i915#4852]) +5 other tests skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-4/igt@gem_exec_flush@basic-uc-ro-default.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#3281]) +4 other tests skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#3281]) +8 other tests skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-7/igt@gem_exec_reloc@basic-gtt-wc.html
> 
>   * igt@gem_exec_reloc@basic-write-read-active:
>     - shard-dg1:          NOTRUN -> [SKIP][44] ([i915#3281]) +1 other test skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-19/igt@gem_exec_reloc@basic-write-read-active.html
> 
>   * igt@gem_exec_schedule@preempt-queue:
>     - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#4537] / [i915#4812])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-3/igt@gem_exec_schedule@preempt-queue.html
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][46] ([i915#11441]) +1 other test incomplete
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-2/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices:
>     - shard-dg2:          [PASS][47] -> [ABORT][48] ([i915#7975] / [i915#8213]) +1 other test abort
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-1/igt@gem_exec_suspend@basic-s4-devices.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
>     - shard-mtlp:         NOTRUN -> [SKIP][49] ([i915#4860])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-mtlp-8/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html
> 
>   * igt@gem_fenced_exec_thrash@too-many-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#4860]) +1 other test skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-7/igt@gem_fenced_exec_thrash@too-many-fences.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglu:         NOTRUN -> [SKIP][51] ([i915#2190])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_evict@dontneed-evict-race:
>     - shard-tglu:         NOTRUN -> [SKIP][52] ([i915#4613] / [i915#7582])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@gem_lmem_evict@dontneed-evict-race.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-tglu:         NOTRUN -> [SKIP][53] ([i915#4613]) +2 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#4613]) +1 other test skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-3/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][55] ([i915#12193])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-19/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-ccs@lmem0:
>     - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#4565])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-19/igt@gem_lmem_swapping@verify-ccs@lmem0.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#4077]) +3 other tests skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-18/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
>     - shard-mtlp:         NOTRUN -> [SKIP][58] ([i915#4077]) +1 other test skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-mtlp-1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@gem_mmap_gtt@fault-concurrent-y:
>     - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#4077]) +15 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-11/igt@gem_mmap_gtt@fault-concurrent-y.html
> 
>   * igt@gem_mmap_wc@close:
>     - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#4083]) +4 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-7/igt@gem_mmap_wc@close.html
> 
>   * igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
>     - shard-dg1:          NOTRUN -> [SKIP][61] ([i915#4083])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-19/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html
> 
>   * igt@gem_partial_pwrite_pread@reads:
>     - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#3282]) +6 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-5/igt@gem_partial_pwrite_pread@reads.html
> 
>   * igt@gem_pread@self:
>     - shard-dg1:          NOTRUN -> [SKIP][63] ([i915#3282]) +1 other test skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-16/igt@gem_pread@self.html
> 
>   * igt@gem_pread@snoop:
>     - shard-rkl:          NOTRUN -> [SKIP][64] ([i915#3282]) +1 other test skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-5/igt@gem_pread@snoop.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-tglu:         NOTRUN -> [WARN][65] ([i915#2658])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-8/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@create-valid-protected-context:
>     - shard-dg1:          NOTRUN -> [SKIP][66] ([i915#4270])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-15/igt@gem_pxp@create-valid-protected-context.html
> 
>   * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>     - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#4270])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-5/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
> 
>   * igt@gem_pxp@regular-baseline-src-copy-readible:
>     - shard-tglu:         NOTRUN -> [SKIP][68] ([i915#4270]) +4 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-8/igt@gem_pxp@regular-baseline-src-copy-readible.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-1:
>     - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#4270]) +2 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-4/igt@gem_pxp@reject-modify-context-protection-off-1.html
> 
>   * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
>     - shard-mtlp:         NOTRUN -> [SKIP][70] ([i915#4270])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-mtlp-8/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
> 
>   * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>     - shard-tglu-1:       NOTRUN -> [SKIP][71] ([i915#4270]) +2 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
> 
>   * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#5190] / [i915#8428]) +9 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-11/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#4079]) +2 other tests skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-10/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
> 
>   * igt@gem_softpin@evict-snoop:
>     - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#4885])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-mtlp-8/igt@gem_softpin@evict-snoop.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-tglu-1:       NOTRUN -> [SKIP][75] ([i915#3297]) +2 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-dg1:          NOTRUN -> [SKIP][76] ([i915#3297])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-18/igt@gem_userptr_blits@coherency-unsync.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#3297]) +1 other test skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-8/igt@gem_userptr_blits@dmabuf-unsync.html
>     - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#3297]) +1 other test skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-3/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
>     - shard-tglu:         NOTRUN -> [SKIP][79] ([i915#3297])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
> 
>   * igt@gem_userptr_blits@relocations:
>     - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#3281] / [i915#3297])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-5/igt@gem_userptr_blits@relocations.html
> 
>   * igt@gen9_exec_parse@basic-rejected-ctx-param:
>     - shard-tglu:         NOTRUN -> [SKIP][81] ([i915#2527] / [i915#2856]) +3 other tests skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@gen9_exec_parse@basic-rejected-ctx-param.html
> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#2527]) +1 other test skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-5/igt@gen9_exec_parse@bb-start-far.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][83] ([i915#2527] / [i915#2856]) +2 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@gen9_exec_parse@bb-start-far.html
> 
>   * igt@gen9_exec_parse@cmd-crossing-page:
>     - shard-dg1:          NOTRUN -> [SKIP][84] ([i915#2527])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-16/igt@gen9_exec_parse@cmd-crossing-page.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#2856]) +7 other tests skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-5/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg1:          [PASS][86] -> [ABORT][87] ([i915#9820])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg1-13/igt@i915_module_load@reload-with-fault-injection.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-12/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-tglu:         NOTRUN -> [ABORT][88] ([i915#9820])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#7091])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-4/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
> 
>   * igt@i915_pm_freq_api@freq-reset-multiple:
>     - shard-tglu:         NOTRUN -> [SKIP][90] ([i915#8399])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@i915_pm_freq_api@freq-reset-multiple.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - shard-tglu:         NOTRUN -> [SKIP][91] ([i915#6590]) +1 other test skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-9/igt@i915_pm_freq_mult@media-freq@gt0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-tglu:         NOTRUN -> [WARN][92] ([i915#2681]) +4 other tests warn
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_pm_rps@min-max-config-idle:
>     - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#11681] / [i915#6621])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-5/igt@i915_pm_rps@min-max-config-idle.html
> 
>   * igt@i915_pm_rps@thresholds:
>     - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#11681])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-4/igt@i915_pm_rps@thresholds.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#4387])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-2/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-dg1:          NOTRUN -> [SKIP][96] ([i915#6245])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-15/igt@i915_query@hwconfig_table.html
> 
>   * igt@i915_selftest@mock:
>     - shard-tglu:         NOTRUN -> [DMESG-WARN][97] ([i915#9311]) +1 other test dmesg-warn
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-9/igt@i915_selftest@mock.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-rkl:          [PASS][98] -> [INCOMPLETE][99] ([i915#4817])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@intel_hwmon@hwmon-write:
>     - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#7707])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-5/igt@intel_hwmon@hwmon-write.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][101] ([i915#7707])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@intel_hwmon@hwmon-write.html
> 
>   * igt@kms_addfb_basic@basic-x-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#4212]) +3 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@clobberred-modifier:
>     - shard-dg1:          NOTRUN -> [SKIP][103] ([i915#4212])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-16/igt@kms_addfb_basic@clobberred-modifier.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#12454])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-3/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#8709]) +3 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][106] ([i915#8709]) +7 other tests skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][107] ([i915#8709]) +7 other tests skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-17/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#8709]) +11 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html
> 
>   * igt@kms_async_flips@invalid-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#6228])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-4/igt@kms_async_flips@invalid-async-flip.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#9531])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>     - shard-tglu:         NOTRUN -> [SKIP][111] ([i915#9531])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#1769] / [i915#3555])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-dg1:          NOTRUN -> [SKIP][113] ([i915#4538] / [i915#5286]) +1 other test skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-16/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#5286]) +3 other tests skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][115] ([i915#5286]) +4 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:
>     - shard-dg1:          NOTRUN -> [SKIP][116] ([i915#5286])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-15/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][117] ([i915#5286]) +4 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-180:
>     - shard-rkl:          [PASS][118] -> [ABORT][119] ([i915#10354])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-rkl-3/igt@kms_big_fb@linear-8bpp-rotate-180.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-1/igt@kms_big_fb@linear-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#5190] / [i915#9197])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-2/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#3638]) +2 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-3/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
>     - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#5190]) +2 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#4538] / [i915#5190]) +11 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][124] ([i915#4538]) +1 other test skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-19/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][125] +12 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][126] ([i915#6095]) +39 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][127] ([i915#6095]) +49 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-9/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc:
>     - shard-glk:          NOTRUN -> [SKIP][128] +15 other tests skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-glk9/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][129] ([i915#12313])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][130] ([i915#6095]) +4 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-mtlp-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-edp-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][132] ([i915#12313])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#12313])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
>     - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#12313])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#10307] / [i915#6095]) +160 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:
>     - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#9197]) +12 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#6095]) +65 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-1/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][138] ([i915#12313])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-19/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][139] ([i915#6095]) +66 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-12/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#3742])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-3/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][141] ([i915#3742])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#11616] / [i915#7213]) +4 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-8/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#4087]) +3 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-5/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_chamelium_audio@hdmi-audio-edid:
>     - shard-tglu-1:       NOTRUN -> [SKIP][144] ([i915#7828]) +5 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_chamelium_audio@hdmi-audio-edid.html
> 
>   * igt@kms_chamelium_color@degamma:
>     - shard-dg2:          NOTRUN -> [SKIP][145] +13 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-5/igt@kms_chamelium_color@degamma.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
>     - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#7828]) +4 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-3/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-storm:
>     - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#7828]) +2 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-19/igt@kms_chamelium_hpd@dp-hpd-storm.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
>     - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#7828]) +9 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-5/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
>     - shard-tglu:         NOTRUN -> [SKIP][149] ([i915#7828]) +5 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#7118] / [i915#9424]) +1 other test skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-8/igt@kms_content_protection@atomic-dpms.html
>     - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#7118] / [i915#9424])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-3/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-tglu:         NOTRUN -> [SKIP][152] ([i915#3116] / [i915#3299])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#6944] / [i915#9424])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@kms_content_protection@lic-type-0.html
>     - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#9424])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-5/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#9424])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-5/igt@kms_content_protection@mei-interface.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][156] ([i915#6944] / [i915#9424])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][157] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x512:
>     - shard-tglu:         NOTRUN -> [SKIP][158] ([i915#11453] / [i915#3359])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@kms_cursor_crc@cursor-offscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-tglu:         NOTRUN -> [SKIP][159] ([i915#3555]) +3 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-9/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-random-max-size:
>     - shard-tglu-1:       NOTRUN -> [SKIP][160] ([i915#3555]) +3 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_cursor_crc@cursor-random-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#11453] / [i915#3359])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-10/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
>     - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#11453] / [i915#3359])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-15/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
>     - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#3555])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x32:
>     - shard-mtlp:         NOTRUN -> [SKIP][164] ([i915#3555] / [i915#8814])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-mtlp-8/igt@kms_cursor_crc@cursor-sliding-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-mtlp:         NOTRUN -> [SKIP][165] ([i915#11453] / [i915#3359])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-mtlp-8/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#4103])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [PASS][167] -> [FAIL][168] ([i915#2346])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-snb:          [PASS][169] -> [FAIL][170] ([i915#2346])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-snb4/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#9067])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-5/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][172] ([i915#9067])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#4103] / [i915#4213])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-tglu:         NOTRUN -> [SKIP][174] ([i915#9723])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-8/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-dg1:          NOTRUN -> [SKIP][175] ([i915#9723])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-19/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#3555] / [i915#3804])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#3804])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#1257])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-5/igt@kms_dp_aux_dev.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][179] ([i915#1257])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-tglu:         NOTRUN -> [SKIP][180] ([i915#3555] / [i915#3840])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-9/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#3840] / [i915#9688])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-4/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-tglu:         NOTRUN -> [SKIP][182] ([i915#3840])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#3555] / [i915#3840])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-8/igt@kms_dsc@dsc-with-bpc.html
>     - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#3555] / [i915#3840])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-3/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-dg1:          NOTRUN -> [SKIP][185] ([i915#3555] / [i915#3840])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-19/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#1849])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-2/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#3955])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-3/igt@kms_fbcon_fbt@psr-suspend.html
>     - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#3469])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-8/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-tglu-1:       NOTRUN -> [SKIP][189] ([i915#1839])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_feature_discovery@display-4x.html
>     - shard-dg1:          NOTRUN -> [SKIP][190] ([i915#1839])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-15/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-mtlp:         NOTRUN -> [SKIP][191] ([i915#9337])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-mtlp-1/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
>     - shard-tglu:         NOTRUN -> [SKIP][192] ([i915#3637]) +7 other tests skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-9/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms:
>     - shard-tglu-1:       NOTRUN -> [SKIP][193] ([i915#3637]) +4 other tests skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms.html
> 
>   * igt@kms_flip@2x-flip-vs-panning:
>     - shard-dg1:          NOTRUN -> [SKIP][194] ([i915#9934]) +1 other test skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-16/igt@kms_flip@2x-flip-vs-panning.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank:
>     - shard-dg2:          [PASS][195] -> [FAIL][196] ([i915#2122])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-5/igt@kms_flip@flip-vs-blocking-wf-vblank.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-10/igt@kms_flip@flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank@c-dp3:
>     - shard-dg2:          NOTRUN -> [FAIL][197] ([i915#2122]) +2 other tests fail
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-10/igt@kms_flip@flip-vs-blocking-wf-vblank@c-dp3.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank:
>     - shard-glk:          [PASS][198] -> [FAIL][199] ([i915#79]) +1 other test fail
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-glk7/igt@kms_flip@flip-vs-expired-vblank.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-glk9/igt@kms_flip@flip-vs-expired-vblank.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:
>     - shard-dg2:          NOTRUN -> [FAIL][200] ([i915#79])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-3/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
> 
>   * igt@kms_flip@wf_vblank-ts-check:
>     - shard-dg2:          [PASS][201] -> [SKIP][202] ([i915#5354]) +1 other test skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-6/igt@kms_flip@wf_vblank-ts-check.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-2/igt@kms_flip@wf_vblank-ts-check.html
> 
>   * igt@kms_flip@wf_vblank-ts-check-interruptible:
>     - shard-rkl:          [PASS][203] -> [FAIL][204] ([i915#2122])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-rkl-2/igt@kms_flip@wf_vblank-ts-check-interruptible.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-5/igt@kms_flip@wf_vblank-ts-check-interruptible.html
>     - shard-dg1:          [PASS][205] -> [FAIL][206] ([i915#12517] / [i915#2122])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg1-12/igt@kms_flip@wf_vblank-ts-check-interruptible.html
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-12/igt@kms_flip@wf_vblank-ts-check-interruptible.html
> 
>   * igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a3:
>     - shard-dg1:          [PASS][207] -> [FAIL][208] ([i915#12517])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg1-12/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a3.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-12/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a3.html
> 
>   * igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1:
>     - shard-glk:          [PASS][209] -> [FAIL][210] ([i915#2122]) +2 other tests fail
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-glk3/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-glk3/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1.html
> 
>   * igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a2:
>     - shard-rkl:          NOTRUN -> [FAIL][211] ([i915#11961]) +1 other test fail
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-5/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a2.html
> 
>   * igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a3:
>     - shard-dg1:          [PASS][212] -> [FAIL][213] ([i915#12457])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg1-12/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a3.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-12/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a3.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][214] ([i915#2672] / [i915#3555]) +2 other tests skip
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][215] ([i915#2587] / [i915#2672]) +3 other tests skip
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#2672]) +4 other tests skip
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][217] ([i915#2672] / [i915#3555]) +2 other tests skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-dg1:          NOTRUN -> [SKIP][218] ([i915#2587] / [i915#2672] / [i915#3555])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][219] ([i915#2587] / [i915#2672])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][220] ([i915#2587] / [i915#2672] / [i915#3555])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][221] ([i915#2672]) +2 other tests skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][222] ([i915#2587] / [i915#2672] / [i915#3555])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][223] ([i915#2587] / [i915#2672]) +3 other tests skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][224] ([i915#2672] / [i915#3555]) +2 other tests skip
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#3555] / [i915#5190])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#2672] / [i915#3555]) +4 other tests skip
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
>     - shard-dg1:          [PASS][227] -> [DMESG-WARN][228] ([i915#4423]) +2 other tests dmesg-warn
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff:
>     - shard-mtlp:         NOTRUN -> [SKIP][229] ([i915#1825])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move:
>     - shard-tglu:         NOTRUN -> [SKIP][230] +80 other tests skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][231] ([i915#8708]) +4 other tests skip
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-dg1:          NOTRUN -> [SKIP][232] ([i915#3458]) +4 other tests skip
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
>     - shard-rkl:          NOTRUN -> [SKIP][233] ([i915#3023]) +13 other tests skip
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][234] ([i915#1825]) +14 other tests skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][235] ([i915#8708]) +19 other tests skip
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#5354]) +60 other tests skip
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
>     - shard-dg1:          NOTRUN -> [SKIP][237] +8 other tests skip
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>     - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#10433] / [i915#3458]) +1 other test skip
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-rte:
>     - shard-dg2:          NOTRUN -> [SKIP][239] ([i915#3458]) +19 other tests skip
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][240] +57 other tests skip
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-tglu:         NOTRUN -> [SKIP][241] ([i915#3555] / [i915#8228])
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-9/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-tglu-1:       NOTRUN -> [SKIP][242] ([i915#3555] / [i915#8228])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#3555] / [i915#8228]) +1 other test skip
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-8/igt@kms_hdr@static-toggle-dpms.html
>     - shard-rkl:          NOTRUN -> [SKIP][244] ([i915#3555] / [i915#8228])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-3/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg2:          [PASS][245] -> [SKIP][246] ([i915#3555] / [i915#8228])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-3/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_invalid_mode@uint-max-clock:
>     - shard-dg2:          [PASS][247] -> [SKIP][248] ([i915#3555])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-6/igt@kms_invalid_mode@uint-max-clock.html
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-2/igt@kms_invalid_mode@uint-max-clock.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][249] ([i915#12388])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-5/igt@kms_joiner@basic-force-big-joiner.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][250] ([i915#12388])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_joiner@basic-ultra-joiner:
>     - shard-tglu-1:       NOTRUN -> [SKIP][251] ([i915#12339])
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_joiner@basic-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#12388])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-11/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][253] ([i915#12394])
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-ultra-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][254] ([i915#12339])
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-9/igt@kms_joiner@invalid-modeset-ultra-joiner.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-tglu:         NOTRUN -> [SKIP][255] ([i915#6301])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][256] ([i915#6301])
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-11/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc:
>     - shard-dg2:          [PASS][257] -> [SKIP][258] ([i915#9197]) +14 other tests skip
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-6/igt@kms_pipe_crc_basic@suspend-read-crc.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-2/igt@kms_pipe_crc_basic@suspend-read-crc.html
> 
>   * igt@kms_plane_multiple@tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][259] ([i915#8806])
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-10/igt@kms_plane_multiple@tiling-y.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-dg1:          NOTRUN -> [SKIP][260] ([i915#3555]) +2 other tests skip
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-19/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-dg2:          NOTRUN -> [SKIP][261] ([i915#6953] / [i915#9423])
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-4/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@invalid-parameters:
>     - shard-dg2:          NOTRUN -> [SKIP][262] ([i915#8152] / [i915#9423])
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-2/igt@kms_plane_scaling@invalid-parameters.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c:
>     - shard-tglu:         NOTRUN -> [SKIP][263] ([i915#12247]) +8 other tests skip
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
>     - shard-dg2:          [PASS][264] -> [SKIP][265] ([i915#3555] / [i915#8152] / [i915#9423])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
>     - shard-dg2:          NOTRUN -> [SKIP][266] ([i915#12247] / [i915#6953] / [i915#9423]) +2 other tests skip
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
>     - shard-tglu:         NOTRUN -> [SKIP][267] ([i915#12247] / [i915#6953])
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a:
>     - shard-dg2:          NOTRUN -> [SKIP][268] ([i915#12247]) +15 other tests skip
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
>     - shard-dg2:          NOTRUN -> [SKIP][269] ([i915#12247] / [i915#3555] / [i915#9423])
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
>     - shard-dg1:          NOTRUN -> [SKIP][270] ([i915#12247] / [i915#3555])
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-15/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a:
>     - shard-dg1:          NOTRUN -> [SKIP][271] ([i915#12247]) +8 other tests skip
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-15/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
>     - shard-rkl:          NOTRUN -> [SKIP][272] ([i915#12247] / [i915#6953])
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][273] ([i915#12247] / [i915#6953])
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a:
>     - shard-rkl:          NOTRUN -> [SKIP][274] ([i915#12247]) +1 other test skip
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c:
>     - shard-tglu-1:       NOTRUN -> [SKIP][275] ([i915#12247]) +13 other tests skip
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:
>     - shard-dg2:          [PASS][276] -> [SKIP][277] ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-c:
>     - shard-dg2:          [PASS][278] -> [SKIP][279] ([i915#12247]) +5 other tests skip
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-c.html
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-c.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-d:
>     - shard-dg2:          [PASS][280] -> [SKIP][281] ([i915#12247] / [i915#8152]) +1 other test skip
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-d.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-d.html
> 
>   * igt@kms_pm_backlight@bad-brightness:
>     - shard-tglu-1:       NOTRUN -> [SKIP][282] ([i915#9812])
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_pm_backlight@bad-brightness.html
>     - shard-dg1:          NOTRUN -> [SKIP][283] ([i915#5354])
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-15/igt@kms_pm_backlight@bad-brightness.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][284] ([i915#9812])
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_pm_dc@dc5-psr:
>     - shard-dg2:          NOTRUN -> [SKIP][285] ([i915#9685])
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-2/igt@kms_pm_dc@dc5-psr.html
> 
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-tglu-1:       NOTRUN -> [SKIP][286] ([i915#3828])
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_pm_dc@dc5-retention-flops.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-dg1:          NOTRUN -> [SKIP][287] ([i915#3361])
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-19/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-dg2:          NOTRUN -> [SKIP][288] ([i915#8430])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-8/igt@kms_pm_lpsp@screens-disabled.html
>     - shard-rkl:          NOTRUN -> [SKIP][289] ([i915#8430])
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-3/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-tglu:         NOTRUN -> [SKIP][290] ([i915#9519])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-8/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-dg1:          NOTRUN -> [SKIP][291] ([i915#9519])
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-19/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][292] ([i915#9519])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [PASS][293] -> [SKIP][294] ([i915#9519])
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@system-suspend-modeset:
>     - shard-dg2:          [PASS][295] -> [SKIP][296] ([i915#3547])
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-6/igt@kms_pm_rpm@system-suspend-modeset.html
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-2/igt@kms_pm_rpm@system-suspend-modeset.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-dg2:          NOTRUN -> [SKIP][297] ([i915#6524] / [i915#6805])
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-7/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][298] ([i915#11520]) +11 other tests skip
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-7/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][299] ([i915#11520]) +4 other tests skip
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-5/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][300] ([i915#11520]) +6 other tests skip
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
>     - shard-dg1:          NOTRUN -> [SKIP][301] ([i915#11520]) +1 other test skip
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-15/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
>     - shard-mtlp:         NOTRUN -> [SKIP][302] ([i915#12316]) +1 other test skip
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-mtlp-8/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][303] ([i915#9808])
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-mtlp-8/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf@pipe-a-edp-1.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][304] ([i915#11520]) +4 other tests skip
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][305] ([i915#11520])
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-glk9/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-tglu:         NOTRUN -> [SKIP][306] ([i915#9683])
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-9/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-tglu-1:       NOTRUN -> [SKIP][307] ([i915#9683])
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-pr-sprite-render:
>     - shard-tglu-1:       NOTRUN -> [SKIP][308] ([i915#9732]) +13 other tests skip
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_psr@fbc-pr-sprite-render.html
> 
>   * igt@kms_psr@fbc-psr-cursor-plane-onoff:
>     - shard-tglu:         NOTRUN -> [SKIP][309] ([i915#9732]) +15 other tests skip
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-9/igt@kms_psr@fbc-psr-cursor-plane-onoff.html
> 
>   * igt@kms_psr@psr-sprite-plane-onoff:
>     - shard-dg1:          NOTRUN -> [SKIP][310] ([i915#1072] / [i915#9732]) +6 other tests skip
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-19/igt@kms_psr@psr-sprite-plane-onoff.html
> 
>   * igt@kms_psr@psr2-cursor-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][311] ([i915#1072] / [i915#9732]) +27 other tests skip
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-4/igt@kms_psr@psr2-cursor-blt.html
> 
>   * igt@kms_psr@psr2-cursor-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][312] ([i915#1072] / [i915#9732]) +8 other tests skip
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-5/igt@kms_psr@psr2-cursor-mmap-gtt.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-tglu-1:       NOTRUN -> [SKIP][313] ([i915#9685])
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_rotation_crc@exhaust-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][314] ([i915#4235])
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-11/igt@kms_rotation_crc@exhaust-fences.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>     - shard-tglu:         NOTRUN -> [SKIP][315] ([i915#5289])
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-9/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-rotation-270:
>     - shard-dg2:          NOTRUN -> [SKIP][316] ([i915#11131] / [i915#4235]) +1 other test skip
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-11/igt@kms_rotation_crc@primary-rotation-270.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-dg1:          NOTRUN -> [SKIP][317] ([i915#5289]) +1 other test skip
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-19/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-tglu-1:       NOTRUN -> [SKIP][318] ([i915#5289])
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-dg1:          NOTRUN -> [ABORT][319] ([i915#12231]) +1 other test abort
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-19/igt@kms_selftest@drm_framebuffer.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc:
>     - shard-dg2:          NOTRUN -> [SKIP][320] ([i915#3555]) +6 other tests skip
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-4/igt@kms_setmode@invalid-clone-single-crtc.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak:
>     - shard-mtlp:         NOTRUN -> [FAIL][321] ([i915#9196])
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak.html
> 
>   * igt@kms_vrr@flip-basic-fastset:
>     - shard-rkl:          NOTRUN -> [SKIP][322] ([i915#9906])
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-5/igt@kms_vrr@flip-basic-fastset.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][323] ([i915#9906])
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_vrr@flip-basic-fastset.html
> 
>   * igt@kms_vrr@lobf:
>     - shard-dg2:          NOTRUN -> [SKIP][324] ([i915#11920])
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-4/igt@kms_vrr@lobf.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-dg2:          NOTRUN -> [SKIP][325] ([i915#3555] / [i915#9906])
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-11/igt@kms_vrr@negative-basic.html
>     - shard-mtlp:         [PASS][326] -> [FAIL][327] ([i915#10393]) +1 other test fail
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-mtlp-2/igt@kms_vrr@negative-basic.html
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-mtlp-5/igt@kms_vrr@negative-basic.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-dg2:          NOTRUN -> [SKIP][328] ([i915#9906])
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-7/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-tglu:         NOTRUN -> [SKIP][329] ([i915#9906])
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-tglu-1:       NOTRUN -> [SKIP][330] ([i915#2437])
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][331] ([i915#2437] / [i915#9412])
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-5/igt@kms_writeback@writeback-pixel-formats.html
>     - shard-tglu:         NOTRUN -> [SKIP][332] ([i915#2437] / [i915#9412])
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-3/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-dg2:          NOTRUN -> [SKIP][333] ([i915#2436])
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-5/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf@non-zero-reason@0-rcs0:
>     - shard-dg2:          NOTRUN -> [FAIL][334] ([i915#9100]) +1 other test fail
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html
> 
>   * igt@perf_pmu@multi-client:
>     - shard-mtlp:         [PASS][335] -> [FAIL][336] ([i915#12519]) +1 other test fail
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-mtlp-2/igt@perf_pmu@multi-client.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-mtlp-2/igt@perf_pmu@multi-client.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][337] ([i915#8516])
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-4/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@perf_pmu@render-node-busy-idle@vcs1:
>     - shard-dg2:          NOTRUN -> [FAIL][338] ([i915#4349]) +5 other tests fail
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-4/igt@perf_pmu@render-node-busy-idle@vcs1.html
> 
>   * igt@prime_mmap@test_aperture_limit:
>     - shard-dg2:          NOTRUN -> [WARN][339] ([i915#9351])
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-4/igt@prime_mmap@test_aperture_limit.html
> 
>   * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
>     - shard-dg2:          NOTRUN -> [CRASH][340] ([i915#9351])
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-4/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
> 
>   * igt@prime_vgem@basic-fence-mmap:
>     - shard-dg2:          NOTRUN -> [SKIP][341] ([i915#3708] / [i915#4077])
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-8/igt@prime_vgem@basic-fence-mmap.html
> 
>   * igt@prime_vgem@basic-read:
>     - shard-rkl:          NOTRUN -> [SKIP][342] ([i915#3291] / [i915#3708])
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-5/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][343] ([i915#3708])
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-2/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on:
>     - shard-tglu-1:       NOTRUN -> [SKIP][344] ([i915#9917])
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-1/igt@sriov_basic@enable-vfs-autoprobe-on.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each:
>     - shard-dg1:          NOTRUN -> [SKIP][345] ([i915#9917]) +1 other test skip
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-19/igt@sriov_basic@enable-vfs-bind-unbind-each.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@info:
>     - shard-dg2:          [SKIP][346] ([i915#1849] / [i915#2582]) -> [PASS][347]
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-2/igt@fbdev@info.html
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-3/igt@fbdev@info.html
> 
>   * igt@fbdev@pan:
>     - shard-dg2:          [SKIP][348] ([i915#2582]) -> [PASS][349]
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-2/igt@fbdev@pan.html
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-3/igt@fbdev@pan.html
> 
>   * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
>     - shard-dg2:          [INCOMPLETE][350] ([i915#7297]) -> [PASS][351]
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-7/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
> 
>   * igt@gem_exec_fair@basic-none-share:
>     - shard-rkl:          [FAIL][352] ([i915#2842]) -> [PASS][353] +1 other test pass
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-rkl-5/igt@gem_exec_fair@basic-none-share.html
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-7/igt@gem_exec_fair@basic-none-share.html
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-tglu:         [ABORT][354] ([i915#8213]) -> [PASS][355] +1 other test pass
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-tglu-3/igt@gem_exec_suspend@basic-s0.html
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-8/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem_exec_suspend@basic-s3-devices:
>     - shard-dg1:          [DMESG-WARN][356] ([i915#4423]) -> [PASS][357] +3 other tests pass
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg1-12/igt@gem_exec_suspend@basic-s3-devices.html
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-13/igt@gem_exec_suspend@basic-s3-devices.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices:
>     - shard-dg1:          [ABORT][358] ([i915#7975] / [i915#8213]) -> [PASS][359] +1 other test pass
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices.html
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-19/igt@gem_exec_suspend@basic-s4-devices.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg2:          [ABORT][360] ([i915#9820]) -> [PASS][361]
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-5/igt@i915_module_load@reload-with-fault-injection.html
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_freq_api@freq-suspend@gt0:
>     - shard-dg2:          [INCOMPLETE][362] ([i915#12455]) -> [PASS][363] +1 other test pass
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend@gt0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
>     - shard-dg1:          [FAIL][364] ([i915#12548] / [i915#3591]) -> [PASS][365] +1 other test pass
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
> 
>   * igt@i915_suspend@basic-s2idle-without-i915:
>     - shard-dg1:          [DMESG-WARN][366] ([i915#4391] / [i915#4423]) -> [PASS][367]
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg1-17/igt@i915_suspend@basic-s2idle-without-i915.html
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-12/igt@i915_suspend@basic-s2idle-without-i915.html
> 
>   * igt@kms_atomic_interruptible@atomic-setmode:
>     - shard-dg2:          [SKIP][368] ([i915#9197]) -> [PASS][369] +53 other tests pass
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-2/igt@kms_atomic_interruptible@atomic-setmode.html
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-5/igt@kms_atomic_interruptible@atomic-setmode.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4:
>     - shard-dg1:          [FAIL][370] ([i915#5956]) -> [PASS][371] +1 other test pass
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg1-19/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4.html
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg1-14/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_color@ctm-negative:
>     - shard-dg2:          [SKIP][372] -> [PASS][373]
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-2/igt@kms_color@ctm-negative.html
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-6/igt@kms_color@ctm-negative.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [FAIL][374] ([i915#2346]) -> [PASS][375]
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@torture-move:
>     - shard-tglu:         [DMESG-WARN][376] -> [PASS][377]
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-tglu-4/igt@kms_cursor_legacy@torture-move.html
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-9/igt@kms_cursor_legacy@torture-move.html
> 
>   * igt@kms_cursor_legacy@torture-move@pipe-a:
>     - shard-tglu:         [DMESG-WARN][378] ([i915#1982]) -> [PASS][379]
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-tglu-4/igt@kms_cursor_legacy@torture-move@pipe-a.html
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-9/igt@kms_cursor_legacy@torture-move@pipe-a.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
>     - shard-dg2:          [SKIP][380] ([i915#3555]) -> [PASS][381] +5 other tests pass
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-8/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
>     - shard-glk:          [FAIL][382] ([i915#2122]) -> [PASS][383] +1 other test pass
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-glk7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-glk9/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank@d-edp1:
>     - shard-mtlp:         [FAIL][384] ([i915#11989]) -> [PASS][385] +2 other tests pass
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-mtlp-2/igt@kms_flip@flip-vs-blocking-wf-vblank@d-edp1.html
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-mtlp-2/igt@kms_flip@flip-vs-blocking-wf-vblank@d-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-dg2:          [INCOMPLETE][386] ([i915#4839] / [i915#6113]) -> [PASS][387]
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-3/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-11/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a2:
>     - shard-dg2:          [INCOMPLETE][388] ([i915#6113]) -> [PASS][389]
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-3/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a2.html
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-11/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a2.html
> 
>   * igt@kms_flip@wf_vblank-ts-check-interruptible:
>     - shard-dg2:          [FAIL][390] ([i915#2122]) -> [PASS][391] +1 other test pass
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-3/igt@kms_flip@wf_vblank-ts-check-interruptible.html
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-11/igt@kms_flip@wf_vblank-ts-check-interruptible.html
> 
>   * igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1:
>     - shard-tglu:         [FAIL][392] ([i915#2122]) -> [PASS][393]
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-tglu-7/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1.html
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-tglu-2/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1.html
> 
>   * igt@kms_flip@wf_vblank-ts-check-interruptible@b-vga1:
>     - shard-snb:          [FAIL][394] ([i915#2122]) -> [PASS][395] +2 other tests pass
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-snb1/igt@kms_flip@wf_vblank-ts-check-interruptible@b-vga1.html
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-snb6/igt@kms_flip@wf_vblank-ts-check-interruptible@b-vga1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
>     - shard-dg2:          [SKIP][396] ([i915#5354]) -> [PASS][397] +18 other tests pass
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-dg2:          [SKIP][398] ([i915#3555] / [i915#8228]) -> [PASS][399]
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-5/igt@kms_hdr@bpc-switch-suspend.html
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-10/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend:
>     - shard-dg2:          [SKIP][400] ([i915#8825]) -> [PASS][401]
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-2/igt@kms_plane@plane-panning-bottom-right-suspend.html
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-6/igt@kms_plane@plane-panning-bottom-right-suspend.html
> 
>   * igt@kms_plane_scaling@invalid-num-scalers:
>     - shard-dg2:          [SKIP][402] ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][403]
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-2/igt@kms_plane_scaling@invalid-num-scalers.html
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-5/igt@kms_plane_scaling@invalid-num-scalers.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers:
>     - shard-dg2:          [SKIP][404] ([i915#8152] / [i915#9423]) -> [PASS][405] +2 other tests pass
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d:
>     - shard-dg2:          [SKIP][406] ([i915#8152]) -> [PASS][407] +2 other tests pass
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d.html
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:
>     - shard-dg2:          [SKIP][408] ([i915#12247] / [i915#8152] / [i915#9423]) -> [PASS][409]
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-d:
>     - shard-dg2:          [SKIP][410] ([i915#12247] / [i915#8152]) -> [PASS][411] +2 other tests pass
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-d.html
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-d.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:
>     - shard-dg2:          [SKIP][412] ([i915#12247] / [i915#3558] / [i915#8152] / [i915#9423]) -> [PASS][413] +1 other test pass
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-c:
>     - shard-dg2:          [SKIP][414] ([i915#12247]) -> [PASS][415] +17 other tests pass
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-c.html
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-c.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-rkl:          [SKIP][416] ([i915#9519]) -> [PASS][417] +2 other tests pass
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-rkl-1/igt@kms_pm_rpm@dpms-lpsp.html
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg2:          [SKIP][418] ([i915#9519]) -> [PASS][419]
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-dg2:          [SKIP][420] ([i915#9197]) -> [SKIP][421] ([i915#1769] / [i915#3555])
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
>     - shard-dg2:          [SKIP][422] -> [SKIP][423] ([i915#9197])
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15605/shard-dg2-6/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
>    [423]: htt
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139585v2/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
