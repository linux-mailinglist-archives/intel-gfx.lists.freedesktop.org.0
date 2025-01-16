Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA80A1460B
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 00:32:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC3ED10EA27;
	Thu, 16 Jan 2025 23:32:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BUwkF2qT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FA8510EA27
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2025 23:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737070340; x=1768606340;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=L/K1kqZC5fAN9qerhaMsx1tBDnl2CySTtDVzrGdRsBg=;
 b=BUwkF2qT6LcOK4qo50SbPE/HnSHNraTEXReWqKxsgKD+mWGW8xsDIykY
 x6Av/hMwsc2CVWVJkvsawNgKZmP8rVMNmrAfTAh6vKDRrOk2CFq1oiF9o
 ZJmUTGQfRJEhXhvTTxFbuYfGREjJcH9wyJaheVH0abDCS/EZvkmxMQhmu
 BH/7loBHbsV0H3b5u7W7CQ7hd2lzajHs0V2uEoVuKbReyBzvE1iDF+OER
 TBhN5+yrI92rZdk8cicD0O1SPOiabjImC/CCHG4/YDp9qzegFnCfMhpoP
 ppHAJLoZew0qRGc+zhGsy3TUpdbbDp8TpO6O5YiXEBcjASeskoi4ecuAv g==;
X-CSE-ConnectionGUID: PyTQRe4AQv+v59WJxWRo5w==
X-CSE-MsgGUID: 5llfPFQWT9SsGzaStYiArA==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="37642443"
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="37642443"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 15:32:20 -0800
X-CSE-ConnectionGUID: FU+8FoHYRyCY6ErxpF/yDQ==
X-CSE-MsgGUID: 56b1r7XGSMO956Hec6unaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="105469273"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Jan 2025 15:32:20 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 16 Jan 2025 15:32:19 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 16 Jan 2025 15:32:19 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 16 Jan 2025 15:32:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bgGftrS5Owyue6NBO42VE2pkAdTEF24duJcru1PgT2kMxxh9XzKIXMM1I4rraU+S+UaFC6VbkTVYUgIRg5faBdx8c5x191vKKdn+WFX8ZSkCECLMIFInXJW5nsA37zAIL8KcHDU02psIsNT6rJP4R6qQWbo6UeQUjV64vMwGe7cMMlssIIz5+wbQRotGGd7sNeOQFDX5+/iSHPok5dzP2CmxSul2c2/C6LSxtWt4Jze1K2WU0RrtScfewtnnqz4GeYdtThXsHcJuSe+jQWkHbVcIELRDNaGpW40a0sTG1iplAtRdgrIAIcc/VZ8vD+oYAW5t4Yd57Kb0NhdBEr8SHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yJAf5xJO7SiRTc1r9lPk5zP5EMUbX4ALaz92JZEWFns=;
 b=xrCvV3sAvt2YrgRylJoX/aZQwBYTAfIbi48+/XWlJlT+5fUMoEJPQpstGfYipELuU1mxFXgWi2MbhLmQmDVERpkzUc3GmnJ4Im9/F1Da+oY+xBRgyxXKx5ntdWSt+zU43HVzE6An6lTPwC/qwz2/l8HJMmUybPW2f8XA3eNidgDXyMrM1OCPsXIruplMO75WSwBEpNnOY1zDI8EvF1tDCe4kHKnF20v/KdJstjVxg46laBGDerr1XwylyZv7kGDydP9vYAhcZRKP4G+ce5EorTKTIRDc9DTJ3AVEoJEOMPycXuYHzABQE3EYNURmd1oakw+8fGlGUBHHygupKGXIBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA0PR11MB7744.namprd11.prod.outlook.com (2603:10b6:208:409::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.16; Thu, 16 Jan
 2025 23:31:41 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.8356.010; Thu, 16 Jan 2025
 23:31:41 +0000
Date: Thu, 16 Jan 2025 15:31:39 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?= =?utf-8?Q?lure_fo?=
 =?utf-8?Q?r?= drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value (rev5)
Message-ID: <20250116233139.GI5109@mdroper-desk1.amr.corp.intel.com>
References: <20241217201301.3593054-1-dnyaneshwar.bhadane@intel.com>
 <173686638566.3631731.3124666134132481068@b555e5b46a47>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <173686638566.3631731.3124666134132481068@b555e5b46a47>
X-ClientProxiedBy: SJ0PR05CA0090.namprd05.prod.outlook.com
 (2603:10b6:a03:332::35) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA0PR11MB7744:EE_
X-MS-Office365-Filtering-Correlation-Id: 2112c111-30f9-4e89-f7d6-08dd3685ee58
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?UJAR95zYUYjV+4ZqGc5qoF6p7nffUwPAVGUgoRcOPFpJj5H9bG+WAhLrKU2R?=
 =?us-ascii?Q?6D3g50WtqZPJNQBXcGYJ6/6EuAGZF5gQLsGwnyhMaG2WweIP8kD0+BpDPStM?=
 =?us-ascii?Q?/4E1HprBSmXQZIQpxWHe1ZSQV54nqwBt+WJUL9au6KCNlw64hg6gqfRS/lwk?=
 =?us-ascii?Q?XlKryyXLLC7Lu9yXy9gds33uL0LQgFIbXAyFiBuPYg+7I+T/ZHiLNiNqZQ0B?=
 =?us-ascii?Q?172Us67/FZA6jQyC+jkytcW3YCozdkjyIdJQ7QOvnPBpOd7gIOExPE4fnXU7?=
 =?us-ascii?Q?gJBQeKK1AH9lZxb72LJQpTP7yJpND+JrRFEUwDLcRvMRzPb75xYQB0tqQn4k?=
 =?us-ascii?Q?cCFU16Kld+WlOCVv9mgHrOnZXH9omm635qNoVa7UfgTm4k81XLcEvGpgHoT8?=
 =?us-ascii?Q?pUmc5d0dihNO3HxuljQY3J7F5WEoHO2SKn87+wtS/fpAF2DU6Z8KOvETii4Y?=
 =?us-ascii?Q?hocFcCKERnPzDXEPJUvG2vD9EugPWclXzeqtyLrU8JA/GNtTfsujqCQ1FLvN?=
 =?us-ascii?Q?SqWuWoGQCgBw3XkXoy49+7FLiLuYygR8mNtRpOrDuSsSzow4LaM7WUZueWSh?=
 =?us-ascii?Q?FJ6MJhod0VcJf3cZhMEBNq7zIh5+O+lrkgLveylzC62BtgLmU/dMLO+1i1zX?=
 =?us-ascii?Q?zzBtU59LRpCqObcTqELt9EDrdRciVJ8ar5aaezJR0Zo4KKg9WhZK05Lc2vdX?=
 =?us-ascii?Q?Dv0CcKfB4m4486tdHKcInM41nVB2H1rBJguEyeoinI8lIvT9119ZhzMl1BWo?=
 =?us-ascii?Q?n5oSgkXB9j6GbCjUNjRmRLqFbnkr6zfrYyjeWZp6nv43Vf6ANPyYL8/53OI1?=
 =?us-ascii?Q?kRd08xlimfIjbLKRcnn48gcVe/yKFjxU/OEi1t+t6AeEgDaJsj+6TRxsgcoD?=
 =?us-ascii?Q?wWPq9L4C3LMszBeVGyoWhXRNiJIggSyvpmVo8lGzM9759z2n0m5GIAcU8Uay?=
 =?us-ascii?Q?BaOM2k2EzLxRu9E71HefArg3meWaza6Q5A+N9+TPvcXZ28xlz+cIQCP3v+pM?=
 =?us-ascii?Q?ICq4j7dHLUDId+n/jj1B1TeCHU+ZfjgkY3Q8MdlsoiN3DdGxvIwT+8+BU8H1?=
 =?us-ascii?Q?CeKTV0W+1Q6/Yflbc0EHHly6sPMaioeOV8RPXRULUQn1yZiPVoPC/imcMIPG?=
 =?us-ascii?Q?ho6KqdJ45TDQBDXR/3p4ovk4bumvnIm4LB0KvLk2G4khDwHudJlyVZfBfHv7?=
 =?us-ascii?Q?KjKqUWvtANe15qaPFQOfo6VBC6MzXBxRXvEK95mQ2M30sLYRa1NwWJUZtKpa?=
 =?us-ascii?Q?RL9ks5IUzYl9wMpp7VK80nDjGm6NMKQ0tV5/nusY0iG+I/9iZN9c6ZWaFUJI?=
 =?us-ascii?Q?wYP9+TQNudLYLuoZ6horaBlP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2yZckrv7xbh6zpIvXYQyS/U//7gIDU6zaq+dpUrkgA1Iy2DcxwUNRt7GFskX?=
 =?us-ascii?Q?ogoh9x4FyGGXRi5aVvrU/bURGg0r3J5CLDLNYSYVpkQiNw5yiRuNoQF+s1N3?=
 =?us-ascii?Q?2LEWJfXcQFV6YevE4TSUQVfZBMlEZutDWz7G/SVbe76MiGf9QDq4amYjM9qj?=
 =?us-ascii?Q?WvI6PGswGjOk0S9ocPDJoMG76W8+AEOnn5dFVt/zCo5KQ3bBTpfubbmKT1Pl?=
 =?us-ascii?Q?mcOEcLLHYgCP9aNM0Og/xEjcbwc635BOOLsX36il1W5pt15WBBQObRrj82ik?=
 =?us-ascii?Q?GqyiF9hU43Ys07d5O601phBLXwA4lDe5jhkbHYhpfj0pJGIztgkXgQEg+tKs?=
 =?us-ascii?Q?DUC24c1HvNLJ/YNt6ai4g8sJu7MfMs39G6vDjcA7eiv+1KYGXN1mZuzFI7pX?=
 =?us-ascii?Q?YwoW993Y+6yUB/ZACxcyS0yAO2WWE8sdTf8AE9xhKI4OSe7q+OoQzOQ/isVh?=
 =?us-ascii?Q?PsxNXgqNNg7JXkNhMsCRqho0AftNoyem+sXu5yezW5hi0DwFRObYYwO6Lwx/?=
 =?us-ascii?Q?UTbesXDW35e+l/8qt0+MpagfbhdZ9Q22GZ8dbp+7u5AHNJcZtCgYkoLN7nfX?=
 =?us-ascii?Q?gC1vLaRBmeIWlfJl+RqkmoA6Tqvr9xf0SFibSWa/hn/SdvX0T8/qV9HxdCm7?=
 =?us-ascii?Q?WcbxpOv1Ve5znU2froDHf96cVocKXdzaGT6u05Lvhx5mQ/n1VmSXGJWrtIvr?=
 =?us-ascii?Q?btmkyoy8dkyV3tg0gy9mjRSX2unNidIo0rU46kobn5eDm/8uWCE0vCqke5yY?=
 =?us-ascii?Q?m/TuKsxpIJfiDT9SfwmGN5Obtf6hat+nAKW0Ct3CpQF760BAU1/oy3Bp9XUQ?=
 =?us-ascii?Q?8iTdm9S4rABw+nn8JaX/ohez8acICJnmX+WcXChws0T9wvV5BoZQBzMILuRW?=
 =?us-ascii?Q?bJQxL5SFfsXEiKV/+0H/SMJSgoCAH/XAI1DC668qGpbZZYai3mQNbW5bOKK9?=
 =?us-ascii?Q?gykb8XKymOssE4acoEidV5p883yfo1xld1izZUx4B7evb/1kRRG400y1OUGv?=
 =?us-ascii?Q?llLBP9DumDOXtLLWTWNsUMi1VkjJ/u1qxkWgbjqhJuFN8j3xo1sxHLT9ntjw?=
 =?us-ascii?Q?lxX5YsxakcIX5kq7JqhCepHk1+de0iMRTNs/+kqpv3w/hFh4HRxX2Q05nXxu?=
 =?us-ascii?Q?butiHC06z3Jw8aJbxvEuWgjF4ICZgO+jMWsHLe4RPDaT7VWDNRZIpLcgyGt0?=
 =?us-ascii?Q?HuCVqahj9ieOTkDchlwVOg/XWqBmXG3DvXUIKPkuYG5YfAwznDnVZ1e6JUiw?=
 =?us-ascii?Q?8RUmBxhfsz7juOaPcITVxmRpYm8Ptw66Lmq8FnKxdv2CcaB8Up8vFjo6Yl27?=
 =?us-ascii?Q?Mz7m7y0NuxvK32xf24CrkjZbt04SdTXxe36OzLZFSsPn7oe7W+LEWgvZrnTQ?=
 =?us-ascii?Q?pmzpDkkBCsKGZNM3yCvYZqQKo/vswT4XD3Tb3IDT6fIq8Ac01E8wuaAiyCVF?=
 =?us-ascii?Q?lf4QZLh2xvmF3hIbft4Qde502qS/FsN9jHWJtjWtTQCQjTubhBskdoNGoXdY?=
 =?us-ascii?Q?SopHaUM6hrMRg7MQrMtMZJYBGd2QaZ48iS5qBv1Em6/8wJx7aR8iFUlMzfW+?=
 =?us-ascii?Q?tDu3SYD5Er+huCOzJo1zARFlZ+a6cp1ydD6V0vxkog57r7at6zuXPKY40SPk?=
 =?us-ascii?Q?HA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2112c111-30f9-4e89-f7d6-08dd3685ee58
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2025 23:31:41.6722 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u7/mqdSMnSRxGErPz+WpxChkiHy1pEsrUbg84+AuHzVMW2EZH5IcqO5NTTojbh338waVOS2lQYtvitwMt23/JIRrwubmznVjTNsUrIXzumw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7744
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

On Tue, Jan 14, 2025 at 02:53:05PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value (rev5)
> URL   : https://patchwork.freedesktop.org/series/141280/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15926_full -> Patchwork_141280v5_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_141280v5_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_141280v5_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/index.html
> 
> Participating hosts (12 -> 11)
> ------------------------------
> 
>   Missing    (1): shard-glk-0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_141280v5_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_ctx_isolation@preservation-s3:
>     - shard-tglu-1:       NOTRUN -> [ABORT][1] +1 other test abort
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@gem_ctx_isolation@preservation-s3.html

CI problem; according to dmesg, the test actually ran and passed successfully without aborting.

> 
>   * igt@gem_ctx_isolation@preservation-s3@bcs0:
>     - shard-tglu-1:       NOTRUN -> [DMESG-WARN][2] +1 other test dmesg-warn
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@gem_ctx_isolation@preservation-s3@bcs0.html

C20 changes in this patch can't affect TGL behavior.

> 
>   * igt@gem_eio@execbuf:
>     - shard-mtlp:         [PASS][3] -> [ABORT][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-mtlp-3/igt@gem_eio@execbuf.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-4/igt@gem_eio@execbuf.html

GT MCR timeout; unrelated to the display changes in this patch.


Applied to drm-intel-next.  Thanks for the patches and reviews.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@gem_eio@kms:
>     - {shard-dg2-9}:      NOTRUN -> [INCOMPLETE][5]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg2-9/igt@gem_eio@kms.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_141280v5_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-tglu:         NOTRUN -> [SKIP][6] ([i915#11078])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-7/igt@device_reset@cold-reset-bound.html
> 
>   * igt@device_reset@unbind-reset-rebind:
>     - shard-tglu:         NOTRUN -> [ABORT][7] ([i915#12817] / [i915#5507])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-7/igt@device_reset@unbind-reset-rebind.html
> 
>   * igt@drm_fdinfo@all-busy-idle-check-all:
>     - shard-dg1:          NOTRUN -> [SKIP][8] ([i915#8414]) +1 other test skip
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@drm_fdinfo@all-busy-idle-check-all.html
> 
>   * igt@drm_fdinfo@most-busy-idle-check-all@ccs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][9] ([i915#8414]) +13 other tests skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-1/igt@drm_fdinfo@most-busy-idle-check-all@ccs0.html
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-tglu-1:       NOTRUN -> [SKIP][10] ([i915#3555] / [i915#9323])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-tglu-1:       NOTRUN -> [SKIP][11] ([i915#9323])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_ccs@ctrl-surf-copy-new-ctx:
>     - shard-dg1:          NOTRUN -> [SKIP][12] ([i915#9323])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-12/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-mtlp:         NOTRUN -> [SKIP][13] ([i915#7697])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-1/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-tglu:         NOTRUN -> [SKIP][14] ([i915#7697])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-2/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-tglu:         NOTRUN -> [SKIP][15] ([i915#6335])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-6/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-tglu-1:       NOTRUN -> [SKIP][16] ([i915#6335])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-dg1:          NOTRUN -> [SKIP][17] ([i915#8562])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_ctx_persistence@heartbeat-close:
>     - shard-dg1:          NOTRUN -> [SKIP][18] ([i915#8555])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-12/igt@gem_ctx_persistence@heartbeat-close.html
> 
>   * igt@gem_ctx_persistence@processes:
>     - shard-snb:          NOTRUN -> [SKIP][19] ([i915#1099]) +4 other tests skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-snb2/igt@gem_ctx_persistence@processes.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-snb:          NOTRUN -> [FAIL][20] ([i915#8898])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-snb2/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@bonded-pair:
>     - shard-dg1:          NOTRUN -> [SKIP][21] ([i915#4771])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@gem_exec_balancer@bonded-pair.html
> 
>   * igt@gem_exec_balancer@hog:
>     - shard-dg1:          NOTRUN -> [SKIP][22] ([i915#4812]) +1 other test skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@gem_exec_balancer@hog.html
> 
>   * igt@gem_exec_balancer@invalid-bonds:
>     - shard-mtlp:         NOTRUN -> [SKIP][23] ([i915#4036])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-8/igt@gem_exec_balancer@invalid-bonds.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-tglu:         NOTRUN -> [SKIP][24] ([i915#4525])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-7/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_big@single:
>     - shard-tglu-1:       NOTRUN -> [ABORT][25] ([i915#11713])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@gem_exec_big@single.html
> 
>   * igt@gem_exec_reloc@basic-concurrent16:
>     - shard-mtlp:         NOTRUN -> [SKIP][26] ([i915#3281]) +2 other tests skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-4/igt@gem_exec_reloc@basic-concurrent16.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read-noreloc:
>     - shard-dg1:          NOTRUN -> [SKIP][27] ([i915#3281]) +6 other tests skip
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@gem_exec_reloc@basic-gtt-read-noreloc.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts:
>     - shard-mtlp:         NOTRUN -> [SKIP][28] ([i915#4537] / [i915#4812])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-1/igt@gem_exec_schedule@preempt-queue-contexts.html
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - shard-dg2:          [PASS][29] -> [INCOMPLETE][30] ([i915#11441] / [i915#13304]) +1 other test incomplete
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-dg2-11/igt@gem_exec_suspend@basic-s0@smem.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg2-5/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
>     - shard-mtlp:         NOTRUN -> [SKIP][31] ([i915#4860]) +1 other test skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-4/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-glk:          NOTRUN -> [SKIP][32] ([i915#4613])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-glk2/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-tglu:         NOTRUN -> [SKIP][33] ([i915#4613]) +1 other test skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-2/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][34] ([i915#4613]) +2 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-4/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-tglu-1:       NOTRUN -> [SKIP][35] ([i915#4613]) +1 other test skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_media_vme:
>     - shard-dg1:          NOTRUN -> [SKIP][36] ([i915#284])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-12/igt@gem_media_vme.html
>     - shard-tglu:         NOTRUN -> [SKIP][37] ([i915#284])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-6/igt@gem_media_vme.html
> 
>   * igt@gem_mmap@bad-offset:
>     - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#4083])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-8/igt@gem_mmap@bad-offset.html
> 
>   * igt@gem_mmap_gtt@cpuset-medium-copy:
>     - shard-mtlp:         NOTRUN -> [SKIP][39] ([i915#4077]) +2 other tests skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-1/igt@gem_mmap_gtt@cpuset-medium-copy.html
> 
>   * igt@gem_mmap_wc@write:
>     - shard-dg1:          NOTRUN -> [SKIP][40] ([i915#4083]) +1 other test skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-12/igt@gem_mmap_wc@write.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-mtlp:         NOTRUN -> [SKIP][41] ([i915#3282]) +2 other tests skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-4/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-snb:          NOTRUN -> [WARN][42] ([i915#2658])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-snb2/igt@gem_pread@exhaustion.html
>     - shard-tglu:         NOTRUN -> [WARN][43] ([i915#2658])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-7/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pxp@create-regular-buffer:
>     - shard-dg1:          NOTRUN -> [SKIP][44] ([i915#4270]) +2 other tests skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-12/igt@gem_pxp@create-regular-buffer.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
>     - shard-glk:          NOTRUN -> [SKIP][45] +98 other tests skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-glk2/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html
> 
>   * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][46] ([i915#8428])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-1/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html
> 
>   * igt@gem_set_tiling_vs_pwrite:
>     - shard-dg1:          NOTRUN -> [SKIP][47] ([i915#4079]) +1 other test skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@gem_set_tiling_vs_pwrite.html
> 
>   * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
>     - shard-dg1:          NOTRUN -> [SKIP][48] ([i915#4077]) +8 other tests skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gem_tiled_swapping@non-threaded:
>     - shard-snb:          NOTRUN -> [ABORT][49] ([i915#13263] / [i915#13449])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-snb2/igt@gem_tiled_swapping@non-threaded.html
> 
>   * igt@gem_unfence_active_buffers:
>     - shard-dg1:          NOTRUN -> [SKIP][50] ([i915#4879])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@gem_unfence_active_buffers.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-tglu-1:       NOTRUN -> [SKIP][51] ([i915#3297]) +1 other test skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-tglu:         NOTRUN -> [SKIP][52] ([i915#3297]) +1 other test skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-7/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-dg1:          NOTRUN -> [SKIP][53] ([i915#3282] / [i915#3297])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-busy:
>     - shard-mtlp:         NOTRUN -> [SKIP][54] ([i915#3297]) +2 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-4/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-dg1:          NOTRUN -> [SKIP][55] ([i915#3297])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-12/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][56] ([i915#13356])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-glk5/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - shard-tglu-1:       NOTRUN -> [SKIP][57] ([i915#2527] / [i915#2856]) +1 other test skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@gen9_exec_parse@batch-invalid-length.html
> 
>   * igt@gen9_exec_parse@bb-start-cmd:
>     - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#2527]) +3 other tests skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@gen9_exec_parse@bb-start-cmd.html
> 
>   * igt@gen9_exec_parse@bb-start-out:
>     - shard-tglu:         NOTRUN -> [SKIP][59] ([i915#2527] / [i915#2856]) +2 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-2/igt@gen9_exec_parse@bb-start-out.html
> 
>   * igt@gen9_exec_parse@cmd-crossing-page:
>     - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#2856]) +2 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-4/igt@gen9_exec_parse@cmd-crossing-page.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg1:          NOTRUN -> [DMESG-WARN][61] ([i915#13475])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-12/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-tglu:         NOTRUN -> [ABORT][62] ([i915#12817] / [i915#9820])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-6/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-glk:          [PASS][63] -> [ABORT][64] ([i915#9820])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-glk4/igt@i915_module_load@reload-with-fault-injection.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-glk7/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-dg1:          NOTRUN -> [SKIP][65] ([i915#7178])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - shard-mtlp:         NOTRUN -> [SKIP][66] ([i915#11681] / [i915#6621])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-1/igt@i915_pm_rps@basic-api.html
> 
>   * igt@i915_pm_rps@thresholds:
>     - shard-dg1:          NOTRUN -> [SKIP][67] ([i915#11681])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@i915_pm_rps@thresholds.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-tglu-1:       NOTRUN -> [SKIP][68] ([i915#4387])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-tglu:         NOTRUN -> [SKIP][69] ([i915#5723])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-2/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@intel_hwmon@hwmon-write:
>     - shard-mtlp:         NOTRUN -> [SKIP][70] ([i915#7707])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-1/igt@intel_hwmon@hwmon-write.html
> 
>   * igt@kms_addfb_basic@tile-pitch-mismatch:
>     - shard-dg1:          NOTRUN -> [SKIP][71] ([i915#4212]) +4 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-12/igt@kms_addfb_basic@tile-pitch-mismatch.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-a-2-4-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#8709]) +11 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg2-11/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-a-2-4-mc-ccs.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-d-hdmi-a-1-y-rc-ccs-cc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][73] ([i915#8709]) +7 other tests skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-d-hdmi-a-1-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#8709]) +7 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html
> 
>   * igt@kms_atomic_transition@modeset-transition:
>     - shard-glk:          [PASS][75] -> [FAIL][76] ([i915#12238])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-glk8/igt@kms_atomic_transition@modeset-transition.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-glk8/igt@kms_atomic_transition@modeset-transition.html
> 
>   * igt@kms_atomic_transition@modeset-transition@2x-outputs:
>     - shard-glk:          [PASS][77] -> [FAIL][78] ([i915#11859])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-glk8/igt@kms_atomic_transition@modeset-transition@2x-outputs.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-glk8/igt@kms_atomic_transition@modeset-transition@2x-outputs.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>     - shard-dg2:          [PASS][79] -> [FAIL][80] ([i915#5956]) +1 other test fail
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-snb:          NOTRUN -> [SKIP][81] ([i915#1769])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-snb2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
>     - shard-tglu:         NOTRUN -> [SKIP][82] ([i915#1769] / [i915#3555])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-7/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-270:
>     - shard-tglu:         NOTRUN -> [SKIP][83] ([i915#5286]) +4 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-7/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][84] ([i915#4538] / [i915#5286]) +2 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>     - shard-tglu-1:       NOTRUN -> [SKIP][85] ([i915#5286]) +2 other tests skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:
>     - shard-dg1:          NOTRUN -> [SKIP][86] ([i915#5286])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-270:
>     - shard-dg1:          NOTRUN -> [SKIP][87] ([i915#3638]) +1 other test skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_big_fb@linear-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-90:
>     - shard-mtlp:         NOTRUN -> [SKIP][88] +3 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-1/igt@kms_big_fb@linear-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
>     - shard-dg1:          NOTRUN -> [SKIP][89] ([i915#4538]) +5 other tests skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][90] +48 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#4423] / [i915#6095]) +2 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-14/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][92] ([i915#6095]) +54 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][93] ([i915#6095]) +9 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-1/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-b-edp-1.html
> 
>   * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][94] ([i915#6095]) +29 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-2/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][95] ([i915#12313]) +1 other test skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-7/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][96] ([i915#12805])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#6095]) +7 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg2-4/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#10307] / [i915#6095]) +91 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-a-dp-4.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#6095]) +29 other tests skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-rkl-2/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#12313]) +1 other test skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][101] ([i915#6095]) +139 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#7213]) +3 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg2-11/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_chamelium_audio@dp-audio:
>     - shard-tglu:         NOTRUN -> [SKIP][103] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-6/igt@kms_chamelium_audio@dp-audio.html
> 
>   * igt@kms_chamelium_audio@hdmi-audio-edid:
>     - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#11151] / [i915#7828]) +8 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-12/igt@kms_chamelium_audio@hdmi-audio-edid.html
> 
>   * igt@kms_chamelium_edid@dp-edid-resolution-list:
>     - shard-mtlp:         NOTRUN -> [SKIP][105] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-1/igt@kms_chamelium_edid@dp-edid-resolution-list.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-fast:
>     - shard-tglu-1:       NOTRUN -> [SKIP][106] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@kms_chamelium_hpd@hdmi-hpd-fast.html
> 
>   * igt@kms_color@deep-color:
>     - shard-tglu-1:       NOTRUN -> [SKIP][107] ([i915#3555] / [i915#9979])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@kms_color@deep-color.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-dg1:          NOTRUN -> [SKIP][108] ([i915#7116] / [i915#9424]) +1 other test skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-mtlp:         NOTRUN -> [SKIP][109] ([i915#6944] / [i915#9424])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-4/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][110] ([i915#3116] / [i915#3299])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-tglu:         NOTRUN -> [SKIP][111] ([i915#6944] / [i915#9424])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-2/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg1:          NOTRUN -> [SKIP][112] ([i915#7116])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#3555] / [i915#6944] / [i915#9424])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-8/igt@kms_content_protection@type1.html
> 
>   * igt@kms_content_protection@uevent@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [FAIL][114] ([i915#1339] / [i915#7173])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg2-10/igt@kms_content_protection@uevent@pipe-a-dp-4.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x10:
>     - shard-mtlp:         NOTRUN -> [SKIP][115] ([i915#3555] / [i915#8814])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-1/igt@kms_cursor_crc@cursor-offscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>     - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#13049])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-6/igt@kms_cursor_crc@cursor-onscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-32x32:
>     - shard-tglu-1:       NOTRUN -> [SKIP][117] ([i915#3555]) +1 other test skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@kms_cursor_crc@cursor-random-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-dg1:          NOTRUN -> [SKIP][118] ([i915#3555]) +7 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x42:
>     - shard-mtlp:         NOTRUN -> [SKIP][119] ([i915#8814]) +2 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-8/igt@kms_cursor_crc@cursor-sliding-128x42.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x512:
>     - shard-dg1:          NOTRUN -> [SKIP][120] ([i915#13049]) +1 other test skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_cursor_crc@cursor-sliding-512x512.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-dg1:          NOTRUN -> [SKIP][121] ([i915#4103] / [i915#4213]) +1 other test skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
>     - shard-mtlp:         NOTRUN -> [SKIP][122] ([i915#9809]) +2 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-8/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          NOTRUN -> [FAIL][123] ([i915#2346])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-tglu-1:       NOTRUN -> [SKIP][124] ([i915#9067])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][125] ([i915#4213]) +1 other test skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-tglu:         NOTRUN -> [SKIP][126] ([i915#4103])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-mtlp:         NOTRUN -> [SKIP][127] ([i915#9833])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-8/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-dg1:          NOTRUN -> [SKIP][128] ([i915#1257])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][129] ([i915#8812])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-12/igt@kms_draw_crc@draw-method-mmap-wc.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-tglu:         NOTRUN -> [SKIP][130] ([i915#3840])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-2/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-tglu-1:       NOTRUN -> [SKIP][131] ([i915#3555] / [i915#3840])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-dg1:          NOTRUN -> [SKIP][132] ([i915#3555] / [i915#3840])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-tglu:         NOTRUN -> [SKIP][133] ([i915#3840] / [i915#9053])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-7/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-dg1:          NOTRUN -> [SKIP][134] ([i915#3469])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-tglu-1:       NOTRUN -> [SKIP][135] ([i915#1839])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_flip@2x-dpms-vs-vblank-race:
>     - shard-mtlp:         NOTRUN -> [SKIP][136] ([i915#3637]) +3 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-8/igt@kms_flip@2x-dpms-vs-vblank-race.html
> 
>   * igt@kms_flip@2x-flip-vs-fences-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#8381]) +1 other test skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_flip@2x-flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-modeset:
>     - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#3637]) +2 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-6/igt@kms_flip@2x-flip-vs-modeset.html
> 
>   * igt@kms_flip@2x-flip-vs-wf_vblank:
>     - shard-tglu-1:       NOTRUN -> [SKIP][139] ([i915#3637]) +4 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@kms_flip@2x-flip-vs-wf_vblank.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#9934]) +10 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-12/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check:
>     - shard-snb:          NOTRUN -> [FAIL][141] ([i915#11989]) +1 other test fail
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-snb5/igt@kms_flip@2x-wf_vblank-ts-check.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank:
>     - shard-rkl:          [PASS][142] -> [FAIL][143] ([i915#11989]) +2 other tests fail
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-rkl-2/igt@kms_flip@flip-vs-blocking-wf-vblank.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-rkl-2/igt@kms_flip@flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible:
>     - shard-dg1:          [PASS][144] -> [FAIL][145] ([i915#13027])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-dg1-13/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a4:
>     - shard-dg1:          NOTRUN -> [FAIL][146] ([i915#13027])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a4.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][147] ([i915#12745] / [i915#4839])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-glk6/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-hdmi-a1:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][148] ([i915#12745])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-glk6/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-wf_vblank-interruptible:
>     - shard-dg2:          [PASS][149] -> [FAIL][150] ([i915#11989])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-dg2-10/igt@kms_flip@flip-vs-wf_vblank-interruptible.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg2-3/igt@kms_flip@flip-vs-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-wf_vblank-interruptible@c-hdmi-a3:
>     - shard-dg2:          NOTRUN -> [FAIL][151] ([i915#11989])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg2-3/igt@kms_flip@flip-vs-wf_vblank-interruptible@c-hdmi-a3.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible:
>     - shard-tglu:         [PASS][152] -> [FAIL][153] ([i915#11989]) +3 other tests fail
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-tglu-6/igt@kms_flip@plain-flip-ts-check-interruptible.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-4/igt@kms_flip@plain-flip-ts-check-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#2587] / [i915#2672]) +2 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][155] ([i915#2672] / [i915#3555])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][156] ([i915#2587] / [i915#2672]) +1 other test skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
>     - shard-mtlp:         NOTRUN -> [SKIP][157] ([i915#2672] / [i915#3555] / [i915#8813])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][158] ([i915#2672] / [i915#8813])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][159] ([i915#2587] / [i915#2672] / [i915#3555])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][160] ([i915#2587] / [i915#2672]) +1 other test skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][161] ([i915#2587] / [i915#2672] / [i915#3555])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
>     - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#2672] / [i915#3555]) +2 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-12/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html
>     - shard-tglu:         NOTRUN -> [SKIP][163] ([i915#2672] / [i915#3555])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:
>     - shard-dg1:          [PASS][164] -> [DMESG-WARN][165] ([i915#4423]) +2 other tests dmesg-warn
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-dg1-13/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-14/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-tglu-1:       NOTRUN -> [SKIP][166] ([i915#5439])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-y:
>     - shard-mtlp:         NOTRUN -> [SKIP][167] ([i915#10055])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbc-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite:
>     - shard-dg1:          NOTRUN -> [SKIP][168] +39 other tests skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:
>     - shard-dg1:          NOTRUN -> [SKIP][169] ([i915#3458]) +17 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][170] +45 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][171] ([i915#8708]) +3 other tests skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:
>     - shard-mtlp:         NOTRUN -> [SKIP][172] ([i915#1825]) +9 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][173] ([i915#8708]) +10 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-dg1:          NOTRUN -> [SKIP][174] ([i915#3555] / [i915#8228]) +1 other test skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-mtlp:         NOTRUN -> [SKIP][175] ([i915#3555] / [i915#8228])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-1/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-tglu:         NOTRUN -> [SKIP][176] ([i915#3555] / [i915#8228])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-2/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_histogram@algo-basic:
>     - shard-dg1:          NOTRUN -> [SKIP][177] ([i915#13389])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_histogram@algo-basic.html
> 
>   * igt@kms_histogram@global-basic:
>     - shard-tglu-1:       NOTRUN -> [SKIP][178] ([i915#13388]) +1 other test skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@kms_histogram@global-basic.html
> 
>   * igt@kms_joiner@invalid-modeset-big-joiner:
>     - shard-mtlp:         NOTRUN -> [SKIP][179] ([i915#10656])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-1/igt@kms_joiner@invalid-modeset-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-ultra-joiner:
>     - shard-dg1:          NOTRUN -> [SKIP][180] ([i915#12339])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_joiner@invalid-modeset-ultra-joiner.html
> 
>   * igt@kms_lease@simple-lease@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][181] ([i915#12964]) +1 other test dmesg-warn
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-rkl-2/igt@kms_lease@simple-lease@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-dg1:          NOTRUN -> [SKIP][182] ([i915#1839]) +1 other test skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_plane_alpha_blend@alpha-opaque-fb:
>     - shard-glk:          NOTRUN -> [FAIL][183] ([i915#10647] / [i915#12169])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-glk2/igt@kms_plane_alpha_blend@alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][184] ([i915#10647]) +1 other test fail
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-glk2/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:
>     - shard-tglu-1:       NOTRUN -> [SKIP][185] ([i915#12247]) +4 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:
>     - shard-tglu:         NOTRUN -> [SKIP][186] ([i915#12247]) +18 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
>     - shard-tglu:         NOTRUN -> [SKIP][187] ([i915#3555])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:
>     - shard-dg1:          NOTRUN -> [SKIP][188] ([i915#12247]) +13 other tests skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-12/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
>     - shard-mtlp:         NOTRUN -> [SKIP][189] ([i915#12247] / [i915#6953])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:
>     - shard-mtlp:         NOTRUN -> [SKIP][190] ([i915#12247] / [i915#3555] / [i915#6953])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a:
>     - shard-mtlp:         NOTRUN -> [SKIP][191] ([i915#12247]) +7 other tests skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a.html
> 
>   * igt@kms_pm_backlight@basic-brightness:
>     - shard-tglu:         NOTRUN -> [SKIP][192] ([i915#9812])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-7/igt@kms_pm_backlight@basic-brightness.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-tglu:         [PASS][193] -> [FAIL][194] ([i915#9295])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-tglu-4/igt@kms_pm_dc@dc6-dpms.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu-1:       NOTRUN -> [SKIP][195] ([i915#4281])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-dg1:          NOTRUN -> [SKIP][196] ([i915#9340])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-dg1:          NOTRUN -> [SKIP][197] ([i915#9519])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-rkl:          [PASS][198] -> [SKIP][199] ([i915#9519])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-rkl-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-tglu-1:       NOTRUN -> [SKIP][200] ([i915#9519])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][201] ([i915#11520]) +3 other tests skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:
>     - shard-mtlp:         NOTRUN -> [SKIP][202] ([i915#12316]) +3 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-8/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][203] ([i915#9808]) +1 other test skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-8/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf@pipe-a-edp-1.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:
>     - shard-glk:          NOTRUN -> [SKIP][204] ([i915#11520]) +1 other test skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-glk2/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@pr-cursor-plane-update-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][205] ([i915#11520]) +2 other tests skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-7/igt@kms_psr2_sf@pr-cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-snb:          NOTRUN -> [SKIP][206] ([i915#11520]) +8 other tests skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-snb5/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:
>     - shard-dg1:          NOTRUN -> [SKIP][207] ([i915#11520]) +7 other tests skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-dg1:          NOTRUN -> [SKIP][208] ([i915#9683])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@fbc-pr-sprite-render:
>     - shard-dg1:          NOTRUN -> [SKIP][209] ([i915#1072] / [i915#9732]) +17 other tests skip
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_psr@fbc-pr-sprite-render.html
> 
>   * igt@kms_psr@fbc-psr-no-drrs:
>     - shard-tglu:         NOTRUN -> [SKIP][210] ([i915#9732]) +15 other tests skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-7/igt@kms_psr@fbc-psr-no-drrs.html
> 
>   * igt@kms_psr@pr-no-drrs:
>     - shard-mtlp:         NOTRUN -> [SKIP][211] ([i915#9688]) +8 other tests skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-1/igt@kms_psr@pr-no-drrs.html
> 
>   * igt@kms_psr@psr-sprite-mmap-cpu:
>     - shard-tglu-1:       NOTRUN -> [SKIP][212] ([i915#9732]) +12 other tests skip
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@kms_psr@psr-sprite-mmap-cpu.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-dg1:          NOTRUN -> [SKIP][213] ([i915#9685])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-12/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>     - shard-tglu:         NOTRUN -> [SKIP][214] ([i915#9685])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_rotation_crc@exhaust-fences:
>     - shard-dg1:          NOTRUN -> [SKIP][215] ([i915#4884])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_rotation_crc@exhaust-fences.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-dg1:          NOTRUN -> [SKIP][216] ([i915#5289]) +1 other test skip
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-tglu:         NOTRUN -> [SKIP][217] ([i915#5289]) +1 other test skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-glk:          NOTRUN -> [ABORT][218] ([i915#13179]) +1 other test abort
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-glk1/igt@kms_selftest@drm_framebuffer.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-tglu:         NOTRUN -> [SKIP][219] ([i915#8623])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-2/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_vrr@flip-basic:
>     - shard-mtlp:         NOTRUN -> [SKIP][220] ([i915#3555] / [i915#8808])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-1/igt@kms_vrr@flip-basic.html
> 
>   * igt@kms_vrr@lobf:
>     - shard-mtlp:         NOTRUN -> [SKIP][221] ([i915#11920])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-4/igt@kms_vrr@lobf.html
> 
>   * igt@kms_vrr@seamless-rr-switch-virtual:
>     - shard-tglu:         NOTRUN -> [SKIP][222] ([i915#9906])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-7/igt@kms_vrr@seamless-rr-switch-virtual.html
> 
>   * igt@kms_writeback@writeback-check-output-xrgb2101010:
>     - shard-dg1:          NOTRUN -> [SKIP][223] ([i915#2437] / [i915#9412])
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_writeback@writeback-check-output-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-glk:          NOTRUN -> [SKIP][224] ([i915#2437])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-glk5/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@gen12-group-concurrent-oa-buffer-read:
>     - shard-rkl:          [PASS][225] -> [DMESG-WARN][226] ([i915#12964]) +11 other tests dmesg-warn
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-rkl-2/igt@perf@gen12-group-concurrent-oa-buffer-read.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-rkl-2/igt@perf@gen12-group-concurrent-oa-buffer-read.html
> 
>   * igt@perf_pmu@busy-accuracy-98:
>     - shard-snb:          NOTRUN -> [SKIP][227] +297 other tests skip
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-snb5/igt@perf_pmu@busy-accuracy-98.html
> 
>   * igt@perf_pmu@busy-double-start@ccs0:
>     - shard-mtlp:         [PASS][228] -> [FAIL][229] ([i915#4349])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-mtlp-7/igt@perf_pmu@busy-double-start@ccs0.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-6/igt@perf_pmu@busy-double-start@ccs0.html
> 
>   * igt@perf_pmu@busy-start@ccs0:
>     - shard-dg2:          [PASS][230] -> [FAIL][231] ([i915#4349]) +1 other test fail
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-dg2-1/igt@perf_pmu@busy-start@ccs0.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg2-11/igt@perf_pmu@busy-start@ccs0.html
> 
>   * igt@perf_pmu@cpu-hotplug:
>     - shard-dg1:          NOTRUN -> [SKIP][232] ([i915#8850])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@perf_pmu@cpu-hotplug.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - shard-mtlp:         NOTRUN -> [SKIP][233] ([i915#3708])
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-1/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@basic-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][234] ([i915#3708] / [i915#4077]) +1 other test skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@prime_vgem@basic-gtt.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][235] ([i915#3708] / [i915#4077])
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-8/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-dg1:          NOTRUN -> [SKIP][236] ([i915#3708])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-12/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
>     - shard-tglu-1:       NOTRUN -> [FAIL][237] ([i915#12910])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_balancer@full-pulse:
>     - shard-mtlp:         [FAIL][238] ([i915#13364]) -> [PASS][239]
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-mtlp-6/igt@gem_exec_balancer@full-pulse.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-5/igt@gem_exec_balancer@full-pulse.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices:
>     - shard-tglu:         [ABORT][240] ([i915#7975] / [i915#8213]) -> [PASS][241] +1 other test pass
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-2/igt@gem_exec_suspend@basic-s4-devices.html
> 
>   * igt@i915_module_load@load:
>     - {shard-dg2-9}:      ([DMESG-FAIL][242], [PASS][243], [PASS][244]) -> ([PASS][245], [PASS][246])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-dg2-9/igt@i915_module_load@load.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-dg2-9/igt@i915_module_load@load.html
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-dg2-9/igt@i915_module_load@load.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg2-9/igt@i915_module_load@load.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg2-9/igt@i915_module_load@load.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-snb:          [ABORT][247] ([i915#9820]) -> [PASS][248]
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-mtlp:         [INCOMPLETE][249] ([i915#13491]) -> [PASS][250]
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-mtlp-2/igt@i915_suspend@debugfs-reader.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-4/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-a-2-y:
>     - shard-rkl:          [DMESG-WARN][251] ([i915#12964]) -> [PASS][252] +11 other tests pass
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-rkl-5/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-a-2-y.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-rkl-3/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-a-2-y.html
> 
>   * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing:
>     - shard-glk:          [DMESG-WARN][253] ([i915#118]) -> [PASS][254] +1 other test pass
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-glk7/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1:
>     - shard-mtlp:         [FAIL][255] ([i915#11808] / [i915#5956]) -> [PASS][256] +1 other test pass
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-mtlp-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-5/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1.html
> 
>   * igt@kms_atomic_transition@plane-all-transition-fencing:
>     - shard-dg1:          [DMESG-WARN][257] ([i915#4423]) -> [PASS][258]
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-dg1-18/igt@kms_atomic_transition@plane-all-transition-fencing.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-13/igt@kms_atomic_transition@plane-all-transition-fencing.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>     - shard-mtlp:         [FAIL][259] ([i915#2346]) -> [PASS][260]
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-mtlp-6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1:
>     - shard-tglu:         [FAIL][261] ([i915#11989]) -> [PASS][262] +3 other tests pass
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-tglu-8/igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1.html
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-tglu-3/igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-dg2:          [SKIP][263] ([i915#9519]) -> [PASS][264]
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-rkl:          [SKIP][265] ([i915#9519]) -> [PASS][266] +2 other tests pass
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
>     - shard-mtlp:         [FAIL][267] ([i915#9196]) -> [PASS][268] +1 other test pass
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-mtlp:         [INCOMPLETE][269] -> [PASS][270] +1 other test pass
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-mtlp-3/igt@perf_pmu@module-unload.html
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-1/igt@perf_pmu@module-unload.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-glk:          [INCOMPLETE][271] ([i915#13390]) -> [INCOMPLETE][272] ([i915#13197] / [i915#13390])
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-glk2/igt@gem_eio@in-flight-suspend.html
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-glk8/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-glk:          [INCOMPLETE][273] ([i915#4817]) -> [INCOMPLETE][274] ([i915#1982])
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-glk8/igt@i915_suspend@basic-s3-without-i915.html
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-glk3/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs:
>     - shard-dg1:          [SKIP][275] ([i915#6095]) -> [SKIP][276] ([i915#4423] / [i915#6095]) +2 other tests skip
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-dg1-13/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-14/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_chamelium_frames@dp-crc-fast:
>     - shard-dg1:          [SKIP][277] ([i915#11151] / [i915#7828]) -> [SKIP][278] ([i915#11151] / [i915#4423] / [i915#7828])
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-dg1-13/igt@kms_chamelium_frames@dp-crc-fast.html
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-14/igt@kms_chamelium_frames@dp-crc-fast.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-dg2:          [TIMEOUT][279] ([i915#7173]) -> [SKIP][280] ([i915#7118] / [i915#9424])
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-dg2-10/igt@kms_content_protection@legacy.html
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg2-3/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-dg2:          [SKIP][281] ([i915#7118] / [i915#9424]) -> [FAIL][282] ([i915#1339] / [i915#7173])
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-dg2-5/igt@kms_content_protection@uevent.html
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg2-10/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank:
>     - shard-dg1:          [SKIP][283] ([i915#9934]) -> [SKIP][284] ([i915#4423] / [i915#9934])
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-dg1-13/igt@kms_flip@2x-blocking-wf_vblank.html
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-14/igt@kms_flip@2x-blocking-wf_vblank.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
>     - shard-dg1:          [SKIP][285] ([i915#2672] / [i915#3555]) -> [SKIP][286] ([i915#2672] / [i915#3555] / [i915#4423])
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-dg1-13/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-14/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-dg1:          [SKIP][287] ([i915#2587] / [i915#2672]) -> [SKIP][288] ([i915#2587] / [i915#2672] / [i915#4423])
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-dg1-13/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-14/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
>     - shard-dg2:          [SKIP][289] ([i915#10433] / [i915#3458]) -> [SKIP][290] ([i915#3458]) +1 other test skip
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-onoff:
>     - shard-dg1:          [SKIP][291] -> [SKIP][292] ([i915#4423]) +2 other tests skip
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-onoff.html
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt:
>     - shard-dg1:          [SKIP][293] ([i915#8708]) -> [SKIP][294] ([i915#4423] / [i915#8708]) +1 other test skip
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-dg2:          [SKIP][295] ([i915#3458]) -> [SKIP][296] ([i915#10433] / [i915#3458]) +1 other test skip
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-mtlp:         [SKIP][297] ([i915#1187] / [i915#12713]) -> [SKIP][298] ([i915#12713])
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-mtlp-1/igt@kms_hdr@brightness-with-hdr.html
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-mtlp-2/igt@kms_hdr@brightness-with-hdr.html
>     - shard-dg1:          [SKIP][299] ([i915#1187] / [i915#12713]) -> [SKIP][300] ([i915#12713])
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-17/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_joiner@basic-ultra-joiner:
>     - shard-dg1:          [SKIP][301] ([i915#12339]) -> [SKIP][302] ([i915#12339] / [i915#4423])
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-dg1-13/igt@kms_joiner@basic-ultra-joiner.html
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-14/igt@kms_joiner@basic-ultra-joiner.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf:
>     - shard-dg1:          [SKIP][303] ([i915#11520]) -> [SKIP][304] ([i915#11520] / [i915#4423])
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15926/shard-dg1-13/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/shard-dg1-14/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#11713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713
>   [i915#118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/118
>   [i915#11808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11808
>   [i915#11859]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859
>   [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
>   [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
>   [i915#11989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989
>   [i915#12169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12169
>   [i915#12238]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12238
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
>   [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12817
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
>   [i915#13197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13197
>   [i915#13263]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13263
>   [i915#13304]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13304
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13364]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13364
>   [i915#13388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13388
>   [i915#13389]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13389
>   [i915#1339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339
>   [i915#13390]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390
>   [i915#13449]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13449
>   [i915#13475]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13475
>   [i915#13491]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13491
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
>   [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4036]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4036
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4879]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4879
>   [i915#4884]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4884
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5274]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5507]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5507
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6188]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6188
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7178]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7178
>   [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
>   [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806
>   [i915#8808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8808
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
>   [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>   [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821
>   [i915#8850]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8850
>   [i915#8898]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8898
>   [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
>   [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>   [i915#9833]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
>   [i915#9979]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9979
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_15926 -> Patchwork_141280v5
>   * Piglit: piglit_4509 -> None
> 
>   CI-20190529: 20190529
>   CI_DRM_15926: 1f1bf8d241872eacfc18a8393862302b8aa8442d @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8182: 8911eff2c6c06d2929c6072f3ba72d2d991985ea @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_141280v5: 1f1bf8d241872eacfc18a8393862302b8aa8442d @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141280v5/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
