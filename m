Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FE099727E
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 19:00:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 771CA10E027;
	Wed,  9 Oct 2024 17:00:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ANsZlAys";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D01F910E027
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 17:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728493225; x=1760029225;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gi4RTKNI/gSt8FYUkR5ObA60vJOX5PuT3z+T28O83mM=;
 b=ANsZlAyswWIsoLPa5EwvGXgzmC/Dl09CnrSaVX+xILMf88227sOZqq6T
 vQXM41b5+q4PvTrPTewesYetih8QrbKv7pGzTCqifkWGbhe4ufy0+L5fl
 db58NValTEAqHpBE+qF+svlIQ8fPn8ZVKvM/yZzhNxxBWnCsTJy7E4w9G
 byjIsuYV5fLdCEi82BBAiv5VIyyhxlJkYUl0hGRA4hMXHq0DXn8X7cZ5m
 gDVmGNgMIti/unngNOzPZz4gVZii/kBf1TYkcejAWm0s0r1VYDcKoD3nG
 /cmGx0aJfMBApieRD48dm5841NR0Hbc6FGDekfS0MfizJhHttmxVfsgLL w==;
X-CSE-ConnectionGUID: EUv912ABTCeg4oc3YQ6ykQ==
X-CSE-MsgGUID: CF8aZpcgSCqwkB1g8J+WxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27966700"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="27966700"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 10:00:24 -0700
X-CSE-ConnectionGUID: UYOUgijHRMObsXeLS9X5rg==
X-CSE-MsgGUID: /4SSSbO3TNWHWk9SXjgeXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="76783450"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 10:00:24 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 10:00:23 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 10:00:23 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 10:00:23 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 10:00:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ftR6dS6O+G7327+w3EITzyjJNBYW9rA+fIw4ifIQJCXQ8+Xl5d3PReQP+dX6ocBW7jlzsWdyGK0HY5NQXNy5GJPbcFbEaCdUj5Iu1SAcGfu5hTla2IOoEQl9fZohm2diqmVWQW4Py9zj1vKntH1731py7+5/jseKor8KaoV+ANasVyLYzgAsXkZmOhnyBEQm/WO34wqrO70Twn3u+7XHzuYEOY03JqsmgUFS7bQQkdOq1sHQSSPzLtRYng8tp238F0mRvo8qe7GbM3GMtA5BxKOSf0IWP/u6k97maWWaPWp75UdrO1JGkNYLdyHFEGOH1tp4jMqj8DySKt6tMZaHOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nDpaL5Ehg+pa+4db6V6W7Bp/Mc3XW6zd61xZXfsJoAQ=;
 b=upnOdLp3eUJPtOVNbuGC+NrXgpsoQ+UBrw8IZGCzYBetsqy41yNL3nxw3ZLdvPX2NVX+S9jBJm6q3zKIgfYL2q4XcNy3etdEvjja4heBvcPTqy/TVruDai6DJgX2ytktCP44Sb9YS879QYPVgYDkZeOMbSynHypTcgBmFHAwbxngIqTEQ9c5pFh6ajMMx+OZjnOr54r01udB1Be7oqK8l/dWrLAQ2us3BZhpWgc+CfbJ0H4HKnh0P1hBT5HREHpz5Cb9SVKhBR/kTbP3IwhDx7LDJEpFnpYvJY0oo3/L1/Q/Hxu1Fq+qE/t8bBtNngLO0Tvd1hyMgJZvK+2RNqJ7Fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CO1PR11MB5044.namprd11.prod.outlook.com (2603:10b6:303:92::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Wed, 9 Oct
 2024 17:00:13 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8026.020; Wed, 9 Oct 2024
 17:00:13 +0000
Date: Wed, 9 Oct 2024 10:00:10 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?= =?utf-8?Q?e_fo?=
 =?utf-8?Q?r?= drm/i915/mtl: Update PLL c20 phy value for DP uhbr20 (rev2)
Message-ID: <20241009170010.GP4891@mdroper-desk1.amr.corp.intel.com>
References: <20240827141356.3024760-1-dnyaneshwar.bhadane@intel.com>
 <172492069281.830347.16274752322894629744@2413ebb6fbb6>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <172492069281.830347.16274752322894629744@2413ebb6fbb6>
X-ClientProxiedBy: SJ0PR05CA0005.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::10) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CO1PR11MB5044:EE_
X-MS-Office365-Filtering-Correlation-Id: 465b554f-a6e0-40f7-e02c-08dce883d738
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?zWnPbqoMOIGi2+tvtWDyrONyCRwLHg+Gu3Hcxv/Rutc8ccPjcrTSLSQaHLYU?=
 =?us-ascii?Q?NhmBdwtDxfD9ZAkt0Q8P0cJEJ7MqV2+oTxGAMvmKWfFIrXML9Vzg8/Ujul7O?=
 =?us-ascii?Q?ZxSshR8YjFwJ/A2r3SQcOf9Oeue/+jOqogTi61oRLPBIoN8a1ji+T7DiQ+Z/?=
 =?us-ascii?Q?ctfwNNXsh96y9QVb2nnltrvtvkoCqwiBEKDIo8QcxDfZZfzVEmcIgyIajRPH?=
 =?us-ascii?Q?bGLDWrweGUUP7Yl/XHeehV/aC7VtJdEL56e1BcAUKIGJhITTzKVHT29W062z?=
 =?us-ascii?Q?07uSXLQLX9E739M7jaV4d5IXqElRfcBCSLDbCQAxpkSfyXmX0Scs9sTaEYCM?=
 =?us-ascii?Q?2xY//tJ7IDNGyxTKdII+TjZ+musWpEmXL8449Tv6dZesH/gKwKCZNkdYgL7v?=
 =?us-ascii?Q?h2Qjcer0eAwTTdXKjFQRXAX5UHjdpmnrgdAhWBkVK2CkxZOnIwdHxCRQ7/Yg?=
 =?us-ascii?Q?5NBAfen8+yJNtKBn1AdRW1ETG1UBO4Gmwz/SSvQhVl4hyEI4lkBVc+JhtXCe?=
 =?us-ascii?Q?aYov0SA6YqeARDSFQ3zfxyyagou7Z+iP1laQsHY1upJmw366KOdpYTdUkIYw?=
 =?us-ascii?Q?jhORgOF32+rK9Cg9suiHUWUHNAf8FrQyYBuADj3NOKj/V0yFSTYNE8gbFany?=
 =?us-ascii?Q?YEt8Fo2EE1lh+aHf+bLrUTawuQG6J7IVtc1LQV8VRp+XSHixmDITGq4/5aq+?=
 =?us-ascii?Q?ITpKuhLe2eyc/JzEUQYwEKd3+fRyxkIG5tkb8ixVhYjOySJGiVibDxag5oLi?=
 =?us-ascii?Q?MnyVn7Z0C3Z6aayMu1Vbj97Z/qMycPVL7mBhsa6TcfVGYjkwttswgH2GQFo2?=
 =?us-ascii?Q?sWqynS03csxpkNnFEuOkBTNOqamXH7yhAO23ZWnD5BkhzCwflPllsNQLlaJN?=
 =?us-ascii?Q?1jWUTGXIuMhCglWgUTAaSPi+8lcklvGcvNzNsM/HwEOGW2dPJ3wBHqlPf19q?=
 =?us-ascii?Q?wx1v7qKSOWH6B/fcZ+0+IuUZ5zeXauwUdKkauMKEBHUXTQF5A+Zwa4hYbMux?=
 =?us-ascii?Q?cAMyD5/azTfx/YFkV6RpBU29teyOQj8k/eCPS3HPEAcJg6yOl3cXg7aeDjCr?=
 =?us-ascii?Q?d8RP+bpgkD+iqkOvw+3i1SXzlX3DMuue9GITVO8pTH8NRXyiOBDyjEOTOmXg?=
 =?us-ascii?Q?2iP0S3F19sqV0WY4u/MEAqYq22E5PDJaJdYLWRtI33yK5k1RHGvTC6hNI9Jz?=
 =?us-ascii?Q?t+31n9b4u05ryULlZNDhYyvdZZIFuCQffmCObn3t9jjmRV3K5F3kTMAbLk4?=
 =?us-ascii?Q?=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?a4I27OhVKBYG6SLtw/wXTLtBzp9KJocE1bGWPRr5DW1atZFqTMyb8rYMH/Sk?=
 =?us-ascii?Q?tkFY9PzGwPxt4+rK67KNz2e+s8aTE0MIMPxT/Gy8FPyGHk8Dtm+FdvzVFLmF?=
 =?us-ascii?Q?iGEVNkqZKIfxpTXSpXlFAWCL6LqdzXwJPM+2HrOgtqdyN1kCrfbI4tOUFpSM?=
 =?us-ascii?Q?HYITT8zzVtHVciIHCH+FRVFS4fTQ82X0mWz/DD7f+CdPeM/QvI4Pzpelbyf4?=
 =?us-ascii?Q?65sa9WXGb03khzeycP0SLwdlZdHgs3ZfOoziHmmXZvx5i0afof6jNxJh6MBl?=
 =?us-ascii?Q?clgo3iUr06BAqRCfHgz/7pMzbCEZQ7cnGUoedXihH3tSomiDmtcnM+McCcdz?=
 =?us-ascii?Q?+BPhAt7hIDqekVwKSfUUN2aIK8+a4BR12m9LM380b+1G90DExSLZAgZHhNnc?=
 =?us-ascii?Q?78i5L+FJjH/aFmToA731A1OsI4ap44wa2ZaRn+1zP10CYXd71p9/3eSK1bNI?=
 =?us-ascii?Q?5/rBc6M11mwgs3T8Ho68jJ4Qg7TIXcISd7N7vQqwbL6H1UV1g2vogNbtFdEk?=
 =?us-ascii?Q?oc67Ycr2MaKCICDhmjyyHqsK4Eq5mXCw0dgSDz0kUC3PGiTcvTOk9Gj/6Hdm?=
 =?us-ascii?Q?cv8sxB+iskb/g/auvYnEcZLLjtlNgLMbAPS2TYjGkmdeZdl6ItlAWlkz+dYx?=
 =?us-ascii?Q?zoe1COllbSNXJ2PWtFP2saY4Yw1LiKxNToyOB/hVi76z9qdJsDwnXqtzYRQC?=
 =?us-ascii?Q?Wiv7457fjwmCjIuYSDYXmGDW2Unu3bWShiCRcjlrXjO8RENVldcQw6a4V483?=
 =?us-ascii?Q?sM2MKaWn/6jI98IqCTkzUQ2t3yK3NxM7Gu+LvflCXaH4UQEluui0cSkW5tEz?=
 =?us-ascii?Q?W2GJo/pHifOmNn1X5N9IkirGjiXvKNkDfQOz4XT0lJ3afWeio1kbi1oCIt+b?=
 =?us-ascii?Q?slJ28wrGtZ1TgX0pW5EmR366su0BzAHQCVPKAtZXCJrr9ezjvxK5Vvis1F28?=
 =?us-ascii?Q?sxwZDWkgMgymrildSqRHaPjcEnJ62AfJYfIgSXsXuYcFCBNhUHa79+QgrRD9?=
 =?us-ascii?Q?MK5zY2LmXn8f74d8/HciDlZ4WI8OigFOs6iTUv27O1uS9/6K4uICxkdzw58i?=
 =?us-ascii?Q?YZpzGbXcLyhWaCssqyGuA78h4JUiYuiGyt9zvDrmFjr1Vln7RGzNHIr8Xk7g?=
 =?us-ascii?Q?W17WoOH335NOvSqH56OONCFZsZFgCnOhXSbLLwLgVDWeIljher/NoAQ63XHb?=
 =?us-ascii?Q?3HCDYxiOEWfctPs4aCnaBoGtLXNf5nKpppHtwwy0BJX+6NDxmvD1+pkz0Uw6?=
 =?us-ascii?Q?jpX0KyqfIwaDQdWBgggR0hOxVdf/p6yMIqXXxiNz5u4+fdGD3mNn0jC+CMrS?=
 =?us-ascii?Q?n3Fddg/4p+2JDstivW+pALfnsOyeWX8sNAWtDhGkFYcI/r749x2HpOUOeV67?=
 =?us-ascii?Q?8p96WqQ10BNks68oJaG3jAzSHm+vAqc39B6u8AL5XDAvqNrH2cqLaNaGJk+R?=
 =?us-ascii?Q?+8kFNRSJtiNH1eXOmIk7pI0KdNyJq5Fwn7PbD+JIkpcEREMONToGjIpWgNjx?=
 =?us-ascii?Q?tF/G3ZGI1ms+PDSfpjWK6kpiONZC0utQcsmODfok749HBkQ0cURCVvxbgcJl?=
 =?us-ascii?Q?hRoAesGVFfWXTImFMsPnantr2KOC96WwXe0ATAGYjYB5dNXe50f898i5+1AR?=
 =?us-ascii?Q?yA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 465b554f-a6e0-40f7-e02c-08dce883d738
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2024 17:00:13.1570 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5t5r9weDcdUjJuRgkjX9UrBMqlRycprYkLO7anALGbfhF7cfk3qtsS/ZVLFwTfpSlYSywGQ2J1J/4E/EQC3kpEf3sN/362o86z5+RK829UE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5044
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

On Thu, Aug 29, 2024 at 08:38:12AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/mtl: Update PLL c20 phy value for DP uhbr20 (rev2)
> URL   : https://patchwork.freedesktop.org/series/137844/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15307_full -> Patchwork_137844v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_137844v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_137844v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
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
>   Here are the unknown changes that may have been introduced in Patchwork_137844v2_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_pm_rc6_residency@rc6-accuracy@gt0:
>     - shard-dg2:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-10/igt@i915_pm_rc6_residency@rc6-accuracy@gt0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-10/igt@i915_pm_rc6_residency@rc6-accuracy@gt0.html
> 
>   * igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-glk5/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-2.html

Neither of these platforms use C20 PHYs, so these failures are not
caused by this patch.

Applied to drm-intel-next.  Thanks for the patch and review.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_137844v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-purge-cache:
>     - shard-rkl:          NOTRUN -> [SKIP][4] ([i915#8411])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-6/igt@api_intel_bb@blit-reloc-purge-cache.html
> 
>   * igt@drm_fdinfo@busy-check-all@bcs0:
>     - shard-dg1:          NOTRUN -> [SKIP][5] ([i915#8414]) +10 other tests skip
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-15/igt@drm_fdinfo@busy-check-all@bcs0.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-rkl:          NOTRUN -> [SKIP][6] ([i915#9323])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-3/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-rkl:          NOTRUN -> [SKIP][7] ([i915#7697])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-1/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_ctx_persistence@engines-mixed-process:
>     - shard-snb:          NOTRUN -> [SKIP][8] ([i915#1099]) +1 other test skip
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-snb4/igt@gem_ctx_persistence@engines-mixed-process.html
> 
>   * igt@gem_ctx_persistence@heartbeat-many:
>     - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#8555]) +1 other test skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-1/igt@gem_ctx_persistence@heartbeat-many.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-dg2:          NOTRUN -> [SKIP][10] ([i915#280])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-5/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-rkl:          NOTRUN -> [SKIP][11] ([i915#280])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-3/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_exec_balancer@bonded-false-hang:
>     - shard-dg1:          NOTRUN -> [SKIP][12] ([i915#4812]) +1 other test skip
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-16/igt@gem_exec_balancer@bonded-false-hang.html
> 
>   * igt@gem_exec_balancer@invalid-bonds:
>     - shard-dg1:          NOTRUN -> [SKIP][13] ([i915#4036])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-16/igt@gem_exec_balancer@invalid-bonds.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-rkl:          NOTRUN -> [SKIP][14] ([i915#4525]) +2 other tests skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-6/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_capture@capture-invisible@lmem0:
>     - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#6334]) +1 other test skip
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-1/igt@gem_exec_capture@capture-invisible@lmem0.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-rkl:          NOTRUN -> [SKIP][16] ([i915#6334])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-6/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][17] ([i915#2842]) +1 other test fail
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-1/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share:
>     - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#3539] / [i915#4852]) +2 other tests skip
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-5/igt@gem_exec_fair@basic-pace-share.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#2842])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#3539])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-10/igt@gem_exec_fair@basic-sync.html
> 
>   * igt@gem_exec_fence@syncobj-backward-timeline-chain-engines:
>     - shard-snb:          NOTRUN -> [SKIP][22] +53 other tests skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-snb4/igt@gem_exec_fence@syncobj-backward-timeline-chain-engines.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][23] ([i915#3281]) +17 other tests skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-read-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-write-read:
>     - shard-dg1:          NOTRUN -> [SKIP][24] ([i915#3281]) +3 other tests skip
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-15/igt@gem_exec_reloc@basic-write-read.html
> 
>   * igt@gem_exec_reloc@basic-write-read-active:
>     - shard-dg2:          NOTRUN -> [SKIP][25] ([i915#3281]) +5 other tests skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-1/igt@gem_exec_reloc@basic-write-read-active.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-y:
>     - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#4860])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-1/igt@gem_fence_thrash@bo-write-verify-y.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-rkl:          NOTRUN -> [SKIP][27] ([i915#2190])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-3/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][28] ([i915#4613]) +3 other tests skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-2/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
>     - shard-glk:          NOTRUN -> [SKIP][29] ([i915#4613])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-glk8/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][30] ([i915#5493])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_lmem_swapping@verify-random-ccs@lmem0:
>     - shard-dg1:          NOTRUN -> [SKIP][31] ([i915#4565])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-16/igt@gem_lmem_swapping@verify-random-ccs@lmem0.html
> 
>   * igt@gem_mmap_gtt@big-copy:
>     - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#4077]) +6 other tests skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-1/igt@gem_mmap_gtt@big-copy.html
> 
>   * igt@gem_mmap_gtt@medium-copy-odd:
>     - shard-dg1:          NOTRUN -> [SKIP][33] ([i915#4077]) +5 other tests skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-15/igt@gem_mmap_gtt@medium-copy-odd.html
> 
>   * igt@gem_mmap_wc@close:
>     - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#4083])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-10/igt@gem_mmap_wc@close.html
> 
>   * igt@gem_mmap_wc@read:
>     - shard-dg1:          NOTRUN -> [SKIP][35] ([i915#4083]) +4 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-16/igt@gem_mmap_wc@read.html
> 
>   * igt@gem_partial_pwrite_pread@reads-uncached:
>     - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#3282]) +5 other tests skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-3/igt@gem_partial_pwrite_pread@reads-uncached.html
> 
>   * igt@gem_partial_pwrite_pread@write:
>     - shard-dg1:          NOTRUN -> [SKIP][37] ([i915#3282]) +3 other tests skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-16/igt@gem_partial_pwrite_pread@write.html
> 
>   * igt@gem_pwrite@basic-random:
>     - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#3282]) +4 other tests skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-7/igt@gem_pwrite@basic-random.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-3:
>     - shard-dg1:          NOTRUN -> [SKIP][39] ([i915#4270]) +1 other test skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-16/igt@gem_pxp@reject-modify-context-protection-off-3.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-on:
>     - shard-rkl:          NOTRUN -> [SKIP][40] ([i915#4270]) +2 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-2/igt@gem_pxp@reject-modify-context-protection-on.html
> 
>   * igt@gem_render_copy@linear-to-vebox-yf-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#5190] / [i915#8428]) +6 other tests skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-1/igt@gem_render_copy@linear-to-vebox-yf-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-dg1:          NOTRUN -> [SKIP][42] ([i915#4079])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-15/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-dg1:          NOTRUN -> [SKIP][43] ([i915#3297])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-14/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-dg1:          NOTRUN -> [SKIP][44] ([i915#3282] / [i915#3297])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-15/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gem_userptr_blits@readonly-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#3297])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-6/igt@gem_userptr_blits@readonly-unsync.html
> 
>   * igt@gem_userptr_blits@unsync-overlap:
>     - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#3297])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-5/igt@gem_userptr_blits@unsync-overlap.html
> 
>   * igt@gen7_exec_parse@bitmasks:
>     - shard-dg2:          NOTRUN -> [SKIP][47] +15 other tests skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-10/igt@gen7_exec_parse@bitmasks.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [PASS][48] -> [ABORT][49] ([i915#5566])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-glk4/igt@gen9_exec_parse@allowed-single.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-glk9/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-rkl:          NOTRUN -> [SKIP][50] ([i915#2527]) +4 other tests skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-6/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#2856]) +2 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-5/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@gen9_exec_parse@unaligned-jump:
>     - shard-dg1:          NOTRUN -> [SKIP][52] ([i915#2527])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-15/igt@gen9_exec_parse@unaligned-jump.html
> 
>   * igt@i915_module_load@load:
>     - shard-snb:          NOTRUN -> [SKIP][53] ([i915#6227])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-snb4/igt@i915_module_load@load.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#6412])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-3/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#6590])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-1/igt@i915_pm_freq_mult@media-freq@gt0.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#11681] / [i915#6621])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-1/igt@i915_pm_rps@basic-api.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#4387])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-10/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_selftest@mock@memory_region:
>     - shard-dg2:          NOTRUN -> [DMESG-WARN][58] ([i915#9311])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-5/igt@i915_selftest@mock@memory_region.html
> 
>   * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>     - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#4212]) +1 other test skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-16/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#8709]) +11 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#1769] / [i915#3555])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
>     - shard-glk:          NOTRUN -> [SKIP][62] ([i915#1769])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-glk8/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#5286]) +9 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-2/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-dg1:          NOTRUN -> [SKIP][64] ([i915#5286])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-15/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-dg1:          NOTRUN -> [SKIP][65] ([i915#4538] / [i915#5286]) +1 other test skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-16/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#3638]) +6 other tests skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-2/igt@kms_big_fb@linear-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-dg1:          NOTRUN -> [SKIP][67] ([i915#3638]) +1 other test skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-16/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-overflow:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#5190])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-5/igt@kms_big_fb@y-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#4538] / [i915#5190]) +6 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
>     - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#4538]) +2 other tests skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-16/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html
> 
>   * igt@kms_big_joiner@basic-force-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#10656]) +1 other test skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-6/igt@kms_big_joiner@basic-force-joiner.html
> 
>   * igt@kms_big_joiner@invalid-modeset-force-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#10656]) +1 other test skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-10/igt@kms_big_joiner@invalid-modeset-force-joiner.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#12042]) +1 other test skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-1/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#6095]) +79 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#12042]) +2 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][76] ([i915#6095]) +99 other tests skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-13/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#10307] / [i915#6095]) +143 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-2/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-2/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#11616] / [i915#7213]) +3 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-2/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-fast:
>     - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#7828]) +3 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-15/igt@kms_chamelium_frames@hdmi-crc-fast.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#7828]) +6 other tests skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-5/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-fast:
>     - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#7828]) +13 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-fast.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#3299])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-10/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#3116])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-3/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#7118] / [i915#9424]) +1 other test skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-2/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-dg1:          NOTRUN -> [SKIP][86] ([i915#9424])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-15/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#9424])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-1/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x512:
>     - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#11453])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-5/igt@kms_cursor_crc@cursor-offscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
>     - shard-dg1:          NOTRUN -> [SKIP][89] ([i915#11453])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-16/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
>     - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#3555])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-14/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#3555]) +10 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-1/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#11453])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-3/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#4103]) +2 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#9833])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-10/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#1257])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-2/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-dg1:          NOTRUN -> [SKIP][96] ([i915#3555] / [i915#3840]) +1 other test skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-15/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#3555] / [i915#3840])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#3840] / [i915#9053])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-1/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-dg1:          NOTRUN -> [SKIP][99] ([i915#4854])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-16/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@display-3x:
>     - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#1839]) +1 other test skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-1/igt@kms_feature_discovery@display-3x.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#1839]) +1 other test skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-2/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#658])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-3/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][103] +32 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank@b-vga1:
>     - shard-snb:          [PASS][104] -> [FAIL][105] ([i915#2122]) +2 other tests fail
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-snb4/igt@kms_flip@flip-vs-blocking-wf-vblank@b-vga1.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-snb7/igt@kms_flip@flip-vs-blocking-wf-vblank@b-vga1.html
> 
>   * igt@kms_flip@flip-vs-fences-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][106] ([i915#8381])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-16/igt@kms_flip@flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#2672]) +3 other tests skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][108] ([i915#2587] / [i915#2672]) +3 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-16/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#2672]) +5 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-rte:
>     - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#5354]) +30 other tests skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-2p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#10055])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#3023]) +30 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][113] ([i915#8708]) +4 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#1825]) +49 other tests skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#8708]) +6 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:
>     - shard-dg1:          NOTRUN -> [SKIP][116] +27 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-dg1:          NOTRUN -> [SKIP][117] ([i915#9766])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-15/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][118] ([i915#3458]) +8 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff:
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#3458]) +15 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#3555] / [i915#8228])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-5/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#3555] / [i915#8228]) +1 other test skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-1/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#4070] / [i915#4816])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#3555] / [i915#8806])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-5/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][124] ([i915#9423]) +7 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-16/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#9423]) +11 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#5176] / [i915#9423]) +3 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-16/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#5235] / [i915#9423]) +2 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#9423]) +20 other tests skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][129] ([i915#9728]) +7 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-13/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_pm_backlight@bad-brightness:
>     - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#5354]) +1 other test skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-1/igt@kms_pm_backlight@bad-brightness.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-dg1:          NOTRUN -> [SKIP][131] ([i915#5354])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-16/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#9685]) +1 other test skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-5/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc5-psr:
>     - shard-dg1:          NOTRUN -> [SKIP][133] ([i915#9685])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-15/igt@kms_pm_dc@dc5-psr.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#3361])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-1/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#8430])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-6/igt@kms_pm_lpsp@screens-disabled.html
>     - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#8430])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-1/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#9519])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          [PASS][138] -> [SKIP][139] ([i915#9519]) +1 other test skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#9519]) +1 other test skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#11520]) +5 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-1/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-sf:
>     - shard-dg1:          NOTRUN -> [SKIP][142] ([i915#11520]) +2 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-16/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#11520]) +2 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-10/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#9683])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-2/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-psr2-cursor-mmap-gtt:
>     - shard-glk:          NOTRUN -> [SKIP][145] +87 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-glk6/igt@kms_psr@fbc-psr2-cursor-mmap-gtt.html
> 
>   * igt@kms_psr@pr-sprite-plane-onoff:
>     - shard-dg1:          NOTRUN -> [SKIP][146] ([i915#1072] / [i915#9732]) +9 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-15/igt@kms_psr@pr-sprite-plane-onoff.html
> 
>   * igt@kms_psr@psr-sprite-plane-move:
>     - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#1072] / [i915#9732]) +29 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-2/igt@kms_psr@psr-sprite-plane-move.html
> 
>   * igt@kms_psr@psr2-no-drrs:
>     - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#1072] / [i915#9732]) +14 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-5/igt@kms_psr@psr2-no-drrs.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
>     - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#5289]) +1 other test skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
>     - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#11131]) +1 other test skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-5/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
> 
>   * igt@kms_scaling_modes@scaling-mode-none:
>     - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#3555]) +2 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-10/igt@kms_scaling_modes@scaling-mode-none.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-dg2:          [PASS][152] -> [FAIL][153] ([IGT#2])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@kms_sysfs_edid_timing.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#8623])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-2/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
>     - shard-tglu:         [PASS][155] -> [FAIL][156] ([i915#9196])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4:
>     - shard-dg1:          [PASS][157] -> [FAIL][158] ([i915#9196])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg1-14/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-14/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_vrr@lobf:
>     - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#11920])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-6/igt@kms_vrr@lobf.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#9906])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#9906])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-1/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_vrr@seamless-rr-switch-virtual:
>     - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#9906])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-16/igt@kms_vrr@seamless-rr-switch-virtual.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#2437])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-15/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@perf@global-sseu-config:
>     - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#7387])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-10/igt@perf@global-sseu-config.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - shard-dg2:          NOTRUN -> [FAIL][165] ([i915#4349]) +3 other tests fail
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-1/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   * igt@perf_pmu@cpu-hotplug:
>     - shard-dg1:          NOTRUN -> [SKIP][166] ([i915#8850])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-15/igt@perf_pmu@cpu-hotplug.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#8516]) +1 other test skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-1/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#3708]) +1 other test skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-2/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@sriov_basic@bind-unbind-vf:
>     - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#9917]) +2 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-2/igt@sriov_basic@bind-unbind-vf.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
>     - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#9917])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-1/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
> 
>   * igt@syncobj_timeline@invalid-wait-zero-handles:
>     - shard-rkl:          NOTRUN -> [FAIL][171] ([i915#9781])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-6/igt@syncobj_timeline@invalid-wait-zero-handles.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#4818])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-5/igt@tools_test@sysfs_l3_parity.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@core_setmaster@master-drop-set-root:
>     - shard-dg2:          [FAIL][173] -> [PASS][174]
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@core_setmaster@master-drop-set-root.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@core_setmaster@master-drop-set-root.html
> 
>   * igt@fbdev@read:
>     - shard-dg2:          [SKIP][175] ([i915#2582]) -> [PASS][176]
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@fbdev@read.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@fbdev@read.html
> 
>   * igt@gem_ctx_engines@invalid-engines:
>     - shard-rkl:          [FAIL][177] ([i915#12027]) -> [PASS][178]
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-rkl-1/igt@gem_ctx_engines@invalid-engines.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-1/igt@gem_ctx_engines@invalid-engines.html
> 
>   * igt@gem_eio@reset-stress:
>     - shard-dg1:          [FAIL][179] ([i915#5784]) -> [PASS][180]
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg1-14/igt@gem_eio@reset-stress.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg1-15/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-rkl:          [FAIL][181] ([i915#2842]) -> [PASS][182] +2 other tests pass
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-rkl-1/igt@gem_exec_fair@basic-none@vecs0.html
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-4/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-tglu:         [FAIL][183] ([i915#2842]) -> [PASS][184]
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-tglu-8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-tglu-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg2:          [ABORT][185] ([i915#9820]) -> [PASS][186]
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [INCOMPLETE][187] ([i915#7790]) -> [PASS][188]
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-snb2/igt@i915_pm_rps@reset.html
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-snb4/igt@i915_pm_rps@reset.html
> 
>   * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1:
>     - shard-mtlp:         [FAIL][189] ([i915#11808] / [i915#5956]) -> [PASS][190]
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-mtlp-1/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-mtlp-4/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html
> 
>   * igt@kms_cursor_edge_walk@64x64-top-bottom@pipe-a-hdmi-a-3:
>     - shard-dg2:          [INCOMPLETE][191] -> [PASS][192]
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-1/igt@kms_cursor_edge_walk@64x64-top-bottom@pipe-a-hdmi-a-3.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-7/igt@kms_cursor_edge_walk@64x64-top-bottom@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu:
>     - shard-dg2:          [SKIP][193] -> [PASS][194] +6 other tests pass
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
>     - shard-dg2:          [FAIL][195] ([i915#6880]) -> [PASS][196]
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_getfb@getfb2-accept-ccs:
>     - shard-dg2:          [SKIP][197] ([i915#2575]) -> [PASS][198] +29 other tests pass
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@kms_getfb@getfb2-accept-ccs.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@kms_getfb@getfb2-accept-ccs.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-rkl:          [SKIP][199] ([i915#9519]) -> [PASS][200]
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
>     - shard-tglu:         [FAIL][201] ([i915#9196]) -> [PASS][202] +1 other test pass
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
> 
>   * igt@perf_pmu@busy-double-start@bcs0:
>     - shard-mtlp:         [FAIL][203] ([i915#4349]) -> [PASS][204]
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-mtlp-8/igt@perf_pmu@busy-double-start@bcs0.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-mtlp-6/igt@perf_pmu@busy-double-start@bcs0.html
> 
>   * igt@perf_pmu@invalid-init:
>     - shard-dg2:          [SKIP][205] ([i915#11692]) -> [PASS][206] +2 other tests pass
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@perf_pmu@invalid-init.html
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@perf_pmu@invalid-init.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-flow:
>     - shard-dg2:          [SKIP][207] ([i915#2575]) -> [SKIP][208] ([i915#3539] / [i915#4852])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@gem_exec_fair@basic-flow.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@gem_exec_fair@basic-flow.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-rkl:          [FAIL][209] ([i915#2842]) -> [FAIL][210] ([i915#2876])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-4/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fence@submit67:
>     - shard-dg2:          [SKIP][211] ([i915#2575]) -> [SKIP][212] ([i915#4812])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@gem_exec_fence@submit67.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@gem_exec_fence@submit67.html
> 
>   * igt@gem_exec_flush@basic-uc-set-default:
>     - shard-dg2:          [SKIP][213] ([i915#2575]) -> [SKIP][214] ([i915#3539])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@gem_exec_flush@basic-uc-set-default.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@gem_exec_flush@basic-uc-set-default.html
> 
>   * igt@gem_exec_reloc@basic-cpu-read-noreloc:
>     - shard-dg2:          [SKIP][215] ([i915#2575]) -> [SKIP][216] ([i915#3281]) +3 other tests skip
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-read-noreloc.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@gem_exec_reloc@basic-cpu-read-noreloc.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-chain:
>     - shard-dg2:          [SKIP][217] ([i915#2575]) -> [SKIP][218] ([i915#4537] / [i915#4812])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-contexts-chain.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@gem_exec_schedule@preempt-queue-contexts-chain.html
> 
>   * igt@gem_mmap_gtt@hang:
>     - shard-dg2:          [SKIP][219] ([i915#2575]) -> [SKIP][220] ([i915#4077]) +1 other test skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@gem_mmap_gtt@hang.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@gem_mmap_gtt@hang.html
> 
>   * igt@gem_mmap_wc@write-cpu-read-wc:
>     - shard-dg2:          [SKIP][221] ([i915#2575]) -> [SKIP][222] ([i915#4083]) +1 other test skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@gem_mmap_wc@write-cpu-read-wc.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@gem_mmap_wc@write-cpu-read-wc.html
> 
>   * igt@gem_pwrite_snooped:
>     - shard-dg2:          [SKIP][223] ([i915#2575]) -> [SKIP][224] ([i915#3282])
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@gem_pwrite_snooped.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@gem_pwrite_snooped.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-2:
>     - shard-dg2:          [SKIP][225] ([i915#2575]) -> [SKIP][226] ([i915#4270])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@gem_pxp@reject-modify-context-protection-off-2.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@gem_pxp@reject-modify-context-protection-off-2.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs:
>     - shard-dg2:          [SKIP][227] ([i915#2575] / [i915#5190]) -> [SKIP][228] ([i915#5190] / [i915#8428])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-dg2:          [SKIP][229] ([i915#2575]) -> [SKIP][230] ([i915#3297])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@gem_userptr_blits@create-destroy-unsync.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-dg2:          [SKIP][231] ([i915#2575]) -> [SKIP][232] ([i915#2856]) +1 other test skip
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@gen9_exec_parse@shadow-peek.html
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-dg2:          [SKIP][233] ([i915#5190]) -> [SKIP][234] ([i915#4538] / [i915#5190]) +2 other tests skip
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_chamelium_audio@hdmi-audio:
>     - shard-dg2:          [SKIP][235] ([i915#2575]) -> [SKIP][236] ([i915#7828]) +2 other tests skip
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@kms_chamelium_audio@hdmi-audio.html
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@kms_chamelium_audio@hdmi-audio.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-dg2:          [SKIP][237] ([i915#2575]) -> [SKIP][238] ([i915#3299])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@kms_content_protection@dp-mst-type-0.html
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          [SKIP][239] ([i915#7118] / [i915#7162] / [i915#9424]) -> [SKIP][240] ([i915#7118] / [i915#9424])
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@kms_content_protection@type1.html
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-5/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>     - shard-dg2:          [SKIP][241] ([i915#2575]) -> [SKIP][242] ([i915#11453])
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@kms_cursor_crc@cursor-onscreen-512x170.html
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@kms_cursor_crc@cursor-onscreen-512x170.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-dg2:          [SKIP][243] ([i915#2575]) -> [SKIP][244] ([i915#4103] / [i915#4213])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-dg2:          [SKIP][245] -> [SKIP][246] ([i915#3840] / [i915#9688])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@kms_dsc@dsc-fractional-bpp.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_flip@2x-busy-flip:
>     - shard-dg2:          [SKIP][247] ([i915#2575]) -> [SKIP][248] +4 other tests skip
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@kms_flip@2x-busy-flip.html
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@kms_flip@2x-busy-flip.html
> 
>   * igt@kms_flip@2x-flip-vs-fences:
>     - shard-dg2:          [SKIP][249] ([i915#2575]) -> [SKIP][250] ([i915#8381])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@kms_flip@2x-flip-vs-fences.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@kms_flip@2x-flip-vs-fences.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc:
>     - shard-dg2:          [SKIP][251] -> [SKIP][252] ([i915#8708]) +3 other tests skip
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:
>     - shard-dg2:          [SKIP][253] ([i915#3458]) -> [SKIP][254] ([i915#10433] / [i915#3458]) +1 other test skip
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-rte:
>     - shard-dg2:          [SKIP][255] -> [SKIP][256] ([i915#3458]) +3 other tests skip
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-rte.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>     - shard-dg2:          [SKIP][257] -> [SKIP][258] ([i915#5354]) +5 other tests skip
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-rkl:          [FAIL][259] ([i915#9295]) -> [SKIP][260] ([i915#3361])
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-rkl-3/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg2:          [SKIP][261] ([i915#11717]) -> [SKIP][262] ([i915#9519])
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp.html
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-dg2:          [SKIP][263] -> [SKIP][264] ([i915#9683])
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@fbc-psr-sprite-blt:
>     - shard-dg2:          [SKIP][265] ([i915#1072] / [i915#9732]) -> [SKIP][266] ([i915#1072] / [i915#9673] / [i915#9732]) +4 other tests skip
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-6/igt@kms_psr@fbc-psr-sprite-blt.html
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-11/igt@kms_psr@fbc-psr-sprite-blt.html
> 
>   * igt@kms_psr@pr-cursor-mmap-cpu:
>     - shard-dg2:          [SKIP][267] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][268] ([i915#1072] / [i915#9732]) +5 other tests skip
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@kms_psr@pr-cursor-mmap-cpu.html
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-5/igt@kms_psr@pr-cursor-mmap-cpu.html
> 
>   * igt@kms_psr@psr-no-drrs:
>     - shard-dg2:          [SKIP][269] -> [SKIP][270] ([i915#1072] / [i915#9732]) +4 other tests skip
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@kms_psr@psr-no-drrs.html
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@kms_psr@psr-no-drrs.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-dg2:          [SKIP][271] ([i915#2575] / [i915#5190]) -> [SKIP][272] ([i915#5190])
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-90:
>     - shard-dg2:          [SKIP][273] ([i915#2575]) -> [SKIP][274] ([i915#11131])
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-90.html
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@kms_rotation_crc@sprite-rotation-90.html
> 
>   * igt@kms_vrr@flip-suspend:
>     - shard-dg2:          [SKIP][275] ([i915#2575]) -> [SKIP][276] ([i915#3555])
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-11/igt@kms_vrr@flip-suspend.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-3/igt@kms_vrr@flip-suspend.html
> 
>   * igt@perf@non-zero-reason@0-rcs0:
>     - shard-dg2:          [FAIL][277] ([i915#7484]) -> [FAIL][278] ([i915#9100])
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15307/shard-dg2-1/igt@perf@non-zero-reason@0-rcs0.html
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/shard-dg2-6/igt@perf@non-zero-reason@0-rcs0.html
> 
>   
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
>   [i915#11131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131
>   [i915#11453]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11616]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#11692]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11692
>   [i915#11717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11717
>   [i915#11808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11808
>   [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
>   [i915#12027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12027
>   [i915#12042]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12042
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#2876]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2876
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4036]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4036
>   [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4818]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#5176]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
>   [i915#5566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
>   [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6227]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6227
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162
>   [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
>   [i915#7387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387
>   [i915#7484]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7484
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7790
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806
>   [i915#8850]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8850
>   [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
>   [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9728]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9728
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781
>   [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>   [i915#9833]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_15307 -> Patchwork_137844v2
> 
>   CI-20190529: 20190529
>   CI_DRM_15307: 2940d1fa7abe0d2a9acc95fd1c704a8d8cbc68f4 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7993: 3b6b2d238e864ff1af9e33159d3bbf4b7f01d86d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_137844v2: 2940d1fa7abe0d2a9acc95fd1c704a8d8cbc68f4 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137844v2/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
