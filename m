Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EEB0AB384A
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 15:18:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F21AD10E40B;
	Mon, 12 May 2025 13:17:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g2MFV2Hw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97FCE10E18A;
 Mon, 12 May 2025 13:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747055877; x=1778591877;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=ZutErs+EM9CJT3o2eRZErXaHrx9ryd4KOALkGo9ZwgY=;
 b=g2MFV2Hw6/WpxKde3NAVAiHtcUSnRLFdqJvOocJclCfeEDqFOsk6kgHz
 CVWYs39GktIzHgMhUYJbHIQrGmPuaP6F4yNVePBB60N72YFlAjjJXCJ2o
 VapjTQlj+cPmniMW2H8HUPG1Y0SmFYbbu7oV01JlXHHYZO7zFuqsqg1+M
 7mJx4aCGPwOn/aXrygMm+JdYpHvUI3lfV4opzhsNTvptCwny06UEKgIjX
 vPUnbky2dbeIb4fdL+y+EXJjYvJGkT0LUc2CMTqS5oxT89EfHU7zPwIcs
 ISkvXOlfc3xrohpOqvju/aSQng9a1AxBrQIcySLbB590NPRk2BPM/Dz7J Q==;
X-CSE-ConnectionGUID: 8Xp9CBG2Siyjse/z3YkY/g==
X-CSE-MsgGUID: /knOvOIvShSjpy+p0wzC3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="52660004"
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="52660004"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 06:17:57 -0700
X-CSE-ConnectionGUID: kNPpGa09SHaTWtowAGaKHg==
X-CSE-MsgGUID: zXpJxuP4QeiGulHdQsJjVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="142127932"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 06:17:57 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 12 May 2025 06:17:56 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 12 May 2025 06:17:56 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 12 May 2025 06:17:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZACLRvibLPNUSZQzSRJjlCIVQJJ63Gj6dB3cik8Tw0D7AnpNRRzC10qS5aYvYKUCBD7zzXyVxJshXwaN3jtqGMRkAVsmoRxULjMlR2hUaSslmF0VL4InjxP5DnJRLW9qpDcWQAYtXzeLKePaxAOxjpjyRLpF8P1aUAJzohbRj9ds+toJSTNZHts33xhFyVN50xmCcfTFEgwMQLsCIoGt2cxMZh75H6uJu34R+6rULxBXFppvL7NWsSL8hPD25hincS1BBvyBjBCz5abfLa4MxSEmF4cQD6wI/CIMf7R0vCNanO6i84X1idvEqNDDXPfhFf3is5TW7vViJk8rMYfojw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ipgvqSMLsqax0gcqRIVAf4y4/fyUsMV8s2hNJehPtMo=;
 b=b8YR48WjaKLiLmQf/MbLRCbp7QkYJmEXNApghI8UTb4kKxO8du1a51yLNUjkaU/F++POw1PuHOU3V+SO8LwKdkVpnsWKbgUWRr9jy7PxAmpyLUcL/3hldTgAq2uIjJKhKdBB4T34Yiq7EFctOSyiWc2HzPiKeKVFuTMYSrS6VbUhhs273jELgzvKVNTtsaya6iX0CeDtmpbo90xSRTfWJHv+GQmmZs/cAxA6E7xNEp2GXXTlNuiK56maTWpEbeGrzXFQvQWLejmVTAUMGKtUXQaC3yjQ0ZxcZvVS8ARYWZYFhqBaJuc3ftEkdlYk5kKPUndgQEhLoBmoXFC6nnvNSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4834.namprd11.prod.outlook.com (2603:10b6:303:90::20)
 by BN9PR11MB5291.namprd11.prod.outlook.com (2603:10b6:408:118::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.30; Mon, 12 May
 2025 13:17:35 +0000
Received: from CO1PR11MB4834.namprd11.prod.outlook.com
 ([fe80::1dff:f717:6190:8c17]) by CO1PR11MB4834.namprd11.prod.outlook.com
 ([fe80::1dff:f717:6190:8c17%5]) with mapi id 15.20.8722.027; Mon, 12 May 2025
 13:17:35 +0000
Date: Mon, 12 May 2025 16:17:41 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, Ankit K Nautiyal
 <ankit.k.nautiyal@intel.com>, Luciano Coelho <luciano.coelho@intel.com>
CC: <I915-ci-infra@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, 
 <intel-xe@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?= =?utf-8?Q?lure_fo?=
 =?utf-8?Q?r?= drm/i915/dp_mst: Add support for fractional link bpps (rev4)
Message-ID: <aCH09crRFjO8NM-9@ideak-desk.fi.intel.com>
References: <20250509180340.554867-1-imre.deak@intel.com>
 <174682473888.65798.17504210416000728787@c664b1dc75d1>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <174682473888.65798.17504210416000728787@c664b1dc75d1>
X-ClientProxiedBy: DB8PR03CA0004.eurprd03.prod.outlook.com
 (2603:10a6:10:be::17) To CO1PR11MB4834.namprd11.prod.outlook.com
 (2603:10b6:303:90::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4834:EE_|BN9PR11MB5291:EE_
X-MS-Office365-Filtering-Correlation-Id: dacfb657-4f42-457d-843a-08dd91575b45
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?MPLTs0EDwRichwSmaqRPlHwgLuMcJCciYJXQbst400AIisK6i2WP/2huCq4h?=
 =?us-ascii?Q?WOZW4K6sDq7Gjj1apqMnuWDgz3uj3Ppy5lGA2fMyHSg4pZ2AbNTd9KwesUcz?=
 =?us-ascii?Q?GgalvAdYa3yzuVnoLTjtGcaKrrWdhD+Ny5pBq78bNiDMF6oTftDGCY1Uslyj?=
 =?us-ascii?Q?hgyNilnm2kvs7EHbYZCs0QqCM1/8W0E0ckcHppSDy2o3DPKQvb/i23QfHYSb?=
 =?us-ascii?Q?VAE/Q2NhgrprePMj0rHj9zECEASQVjtRRpw5r68vQsdazV2DsVgCPo1ftp25?=
 =?us-ascii?Q?apV8hdddSGF3mTLaBGYMHY+Jg+igUi0gBvoG9yf0YvOTaW+ecy5Vv5JlcS/N?=
 =?us-ascii?Q?bW/brA9GY1t5p1kAgmuyTu7Tut0q/pcVrn3wfwon47hHdptI5VAKd4pdpk3g?=
 =?us-ascii?Q?fcqzD/RhPlW4nuevJ5RHDv8umL3L4tiFX46jemolfrY+febdC+c0peWGBVyE?=
 =?us-ascii?Q?B/uK1tKJOzF9RH3JaMtMRvTK/Yk3cnyJMjcEzCcYOvYne/00rCRnoGv/K9AA?=
 =?us-ascii?Q?MCqJzas6SLENKQDNo3NsnaypRq8qMKU1W7H+jcYYJm2//Lz6Ocidboav1Noi?=
 =?us-ascii?Q?ffca3bYuCuQQX2KQYTczipjG2u1B8t4US8dw7mEh81M/s0D0zpXwDsg3HH/1?=
 =?us-ascii?Q?3TCNF6mII0itNZ0HTQoO3Uqj+M+30NB/t1iEguz+LV8p3WHgB4SjFQhuRRpo?=
 =?us-ascii?Q?45s2bgA0xWOZXCDPPOZdvyXJdjJsNC46zBY40CbYNhHWHqyjfuCbCIRMlI96?=
 =?us-ascii?Q?b7PCPITIaIZDRkPT6MTmAVbdMEqVRBCpGsbFQBzq4/fdqMk+jAiD/R/PtFwt?=
 =?us-ascii?Q?B5RU0VqH4Fl5pVOBMbnqBnKWpYQosAInNqIOPZmDc3j2vw+2/fPmqjfnuA5P?=
 =?us-ascii?Q?9TOWB0zxzOO6COtKcBxrhM6x5Z7tUkSvtqnIq7gOGdmWkF/y1Gxz2AZmabfo?=
 =?us-ascii?Q?CaiXb1IRmG+cixb9Lno9OPL3SoNWXDoJWJjhq/Jzs0YWj5f+n7F6UDvgIm5i?=
 =?us-ascii?Q?olXKrpLRGw+9Gov80kZjRjPphSrM1qXD/4mpwP+J2zF2Rc0k0sYnf8UY7jVo?=
 =?us-ascii?Q?GUT4fUM90lBY1tiPgOaM/NMV++uE+iESJNwVpldmUIK01dVbDQ18Rwag15yg?=
 =?us-ascii?Q?JzBfh7C2m6xHXnO3Z48goU6s51ZrQ3aEETfVFNZAZ4qY/K7vJuWwtvY8aG2H?=
 =?us-ascii?Q?DKkUJNUwcAnVgnEO/XIowbqZwE6jWGd8PCYYAIUQ2qnHNKK/D0NHI7UZLYMW?=
 =?us-ascii?Q?TNmuM/0HqqnePmaensQyXrJBb9cSw3LS31fLhoFe0rr6MHT8yfj2rmOBlJ44?=
 =?us-ascii?Q?2430Qbj09s/lT4geeB8u29RW/gR2bG09Ir/acT8iPOVdRyexs1NoKd7GfLvk?=
 =?us-ascii?Q?qdcdg6E=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4834.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ooa6IBuplDVWoCICLCnPVyAx1PuVYeeozBV58NG6l6Nyywsu72flFpvNGI8U?=
 =?us-ascii?Q?dY2T6j10xd7jkY3AA6X7mwFy21b/Y3pNMH0au5AFYHVJ+7nLANhPOjBdGMaz?=
 =?us-ascii?Q?M7xIf8oe2ZWSygC2/eydcPbjejEVK3mYa9Sh6JCjKnv04IqKT0kN9SoHw08d?=
 =?us-ascii?Q?53zpmXjxl6oyXgExJWqejMhbo0STfiN0YmLlWuEoQtmD1I0RaT9Vg6IPX8JU?=
 =?us-ascii?Q?RU0WOQK0PLWLPrK3Cf08fbmsEVit+EqYwBZ1m+Xwbyy9BR/BCUVODO1fub2/?=
 =?us-ascii?Q?4hAy6BWRYEtc6p55NRGOyWCJ/CDB7Db6j1VgDLBlJb8aL7v4XvY4DLDs472R?=
 =?us-ascii?Q?E4eJpa9cn1gc7pXOf5hfwmP/V7Avd4AqLexTULYyaD6KeiIrGh+7CENuRdnL?=
 =?us-ascii?Q?ZdDpjau7TT2JEhNST49t+RrrIpD5oHXVVbwFr6kO9BorN7itkA0vHY+UNkPc?=
 =?us-ascii?Q?iNG3kYONVg5kR72Wwg4BMAjoEuY8Vo9nqEhO6IZXda+wGFIvQVtQJHNhmsbA?=
 =?us-ascii?Q?RbrGIn5+d8bbyDUgpx+uhhQEy9zTThqhplHvrRJdWJwvQBoqreuquEU5f0nt?=
 =?us-ascii?Q?JdqDdR9uGRMouWurbQ7/KX0+37P7wx4w0kEur04mwPVtJ91zu8lmoWc1eSUw?=
 =?us-ascii?Q?epHryvMg7u2bXAiFzlb9zIEUMjqfAwx3JfCgOk2URbogKqD963BVdHzuubf8?=
 =?us-ascii?Q?l9a4vln+mT7sBxXHfLQNe/4loh7cSfeyKL4/HsdW3RZWcCnc7A+ljs8p7pgn?=
 =?us-ascii?Q?jnyYxsK14a7JwlG7ajtAGIOTm/xML5oHjoStBnRG05VWttg40VvhIAy1K11S?=
 =?us-ascii?Q?Ugti8zYc4A7QLuTmN92/KoE2Qh+wPkOfoWItgcaIa1rNTl8xoemZLxqMkInW?=
 =?us-ascii?Q?sAM/Ly1fWVfatEjobQt3e7g+sObVQ3y+vCdP1MPSXY4XDnj9FeFhBY/JBIZh?=
 =?us-ascii?Q?BKEqfBjXTQr4siBEbeJAMFv7XIobiZN5bItfmLAoN7cixlTbERrTHQmgVUgX?=
 =?us-ascii?Q?/YB7m4eeN82nqXpAMK64viGYa3zzABILJyGDWcWW5+9t26DbkKFeh5hGSAiZ?=
 =?us-ascii?Q?GtAvuGjsxbRo3a+RS0H38TqWr1HQXnThxBgjdZcogpBVfSJ0Afp0y3i9GDxL?=
 =?us-ascii?Q?Qa0WCjWJtJkKk4/h2JGGFxrhRcRZeH9yd9WXevuV3XE7+g6Mhc7u67nmlf5q?=
 =?us-ascii?Q?ooIUv31IZZB/1PTEua8jClnU/s2PsPVZYvUL51Mbk6tJ2nU5POWo4GxOtBJN?=
 =?us-ascii?Q?8F2pWUvNWtCQwj18GZCFW3A9nCPoqbuVrqXVyWAE9MGpMfZtn84uwpMLQ7I3?=
 =?us-ascii?Q?smaPOXddrAVZlpUE5ciJnMswHu/fSsiSjnAtl4rsNAH0mzn6dE3J2txdcohB?=
 =?us-ascii?Q?gX85yLKvW/dDFbCzxmqwbeYkGnWzC7JfobtCkaHn3mlUjkM6OSrvPiQnZpzu?=
 =?us-ascii?Q?7VuEmQqoy5nEeIgydcxemW+yPnnuS/ynnv12YaQOE5qb6vnW02K2NHjmXC5P?=
 =?us-ascii?Q?gV+o/qr4ArAQIZDmmC36AlDMrmrXaUs2ccOaYuHi0gh+roiGm+OVehso9dsb?=
 =?us-ascii?Q?cP72S0yR4UkeZx5XADZJJxYuXSkLrycFtzfqUd/j?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dacfb657-4f42-457d-843a-08dd91575b45
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4834.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2025 13:17:35.1108 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r/Rl+7jYpr8woTVgaCQ4O+pt7RKdR+np3YparRRj5qaFHYEDf6sbsU6lie1ondSdlErfg/SihHYdf0IBtMY6Kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5291
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

On Fri, May 09, 2025 at 09:05:38PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp_mst: Add support for fractional link bpps (rev4)
> URL   : https://patchwork.freedesktop.org/series/147435/
> State : failure

Thanks for the reviews, patchset is pushed to drm-intel-next.

The failures are unrelated, see below.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16525_full -> Patchwork_147435v4_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_147435v4_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_147435v4_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_147435v4_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_sync@basic-each:
>     - shard-snb:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-snb2/igt@gem_sync@basic-each.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-snb2/igt@gem_sync@basic-each.html

This doesn't seem to be gem_sync, rather
<7>[  307.730378] [IGT] kms_frontbuffer_tracking: starting subtest fbc-1p-primscrn-spr-indfb-draw-blt

The host has an HDMI output on an FDI link, which is related to the
patchset, however I can't see any changes in the modeset for it (pipe
bpp remains 36 as before) and I can't spot either any other issues in
the log.

A previous instance of the same test hanging on the same host (while not
seeing any other occurance of a hang in this test):
$ tail -1 IGTPW_13084/shard-snb2/21/igt_runner.log:
[662.947396] [115/131] (398s left) kms_frontbuffer_tracking (fbcpsr-1p-primscrn-shrfb-pgflip-blt)

> #### Warnings ####
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-dg1:          [TIMEOUT][3] ([i915#14044] / [i915#5493]) -> [WARN][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg1-16/igt@gem_lmem_swapping@smem-oom.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg1-19/igt@gem_lmem_swapping@smem-oom.html


It looks like some GEM issue, couldn't find the difference between the
previous TIMEOUT and the current WARN state.

The host has only an HDMI output, but it's not on an FDI link, so not
relevant to the changes.

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_147435v4_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-purge-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][5] ([i915#8411]) +2 other tests skip
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-5/igt@api_intel_bb@blit-reloc-purge-cache.html
> 
>   * igt@api_intel_bb@crc32:
>     - shard-rkl:          NOTRUN -> [SKIP][6] ([i915#6230])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-7/igt@api_intel_bb@crc32.html
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-tglu-1:       NOTRUN -> [SKIP][7] ([i915#11078])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-1/igt@device_reset@cold-reset-bound.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][8] ([i915#11078])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@device_reset@cold-reset-bound.html
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#11078])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-5/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-tglu:         NOTRUN -> [SKIP][10] ([i915#3555] / [i915#9323])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-4/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_ccs@ctrl-surf-copy:
>     - shard-rkl:          NOTRUN -> [SKIP][11] ([i915#3555] / [i915#9323])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy.html
> 
>   * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
>     - shard-dg2:          [PASS][12] -> [INCOMPLETE][13] ([i915#13356])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-rkl:          NOTRUN -> [SKIP][14] ([i915#7697])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-7/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#6335])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-3/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_ctx_persistence@engines-mixed-process:
>     - shard-mtlp:         [PASS][16] -> [ABORT][17] ([i915#13193] / [i915#13723]) +2 other tests abort
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-mtlp-4/igt@gem_ctx_persistence@engines-mixed-process.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-7/igt@gem_ctx_persistence@engines-mixed-process.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hostile:
>     - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#8555])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-4/igt@gem_ctx_persistence@heartbeat-hostile.html
>     - shard-mtlp:         NOTRUN -> [SKIP][19] ([i915#8555])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-3/igt@gem_ctx_persistence@heartbeat-hostile.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-rkl:          NOTRUN -> [SKIP][20] ([i915#280])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-4/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-tglu:         NOTRUN -> [SKIP][21] ([i915#280])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-4/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_exec_balancer@bonded-dual:
>     - shard-mtlp:         NOTRUN -> [SKIP][22] ([i915#4771])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-1/igt@gem_exec_balancer@bonded-dual.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][23] ([i915#4771])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@gem_exec_balancer@bonded-dual.html
> 
>   * igt@gem_exec_balancer@bonded-false-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#4812]) +4 other tests skip
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-7/igt@gem_exec_balancer@bonded-false-hang.html
> 
>   * igt@gem_exec_balancer@bonded-true-hang:
>     - shard-mtlp:         NOTRUN -> [SKIP][25] ([i915#4812])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-3/igt@gem_exec_balancer@bonded-true-hang.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-rkl:          NOTRUN -> [SKIP][26] ([i915#4525]) +3 other tests skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-7/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_capture@capture:
>     - shard-mtlp:         NOTRUN -> [FAIL][27] ([i915#11965]) +1 other test fail
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-3/igt@gem_exec_capture@capture.html
> 
>   * igt@gem_exec_capture@capture-invisible:
>     - shard-rkl:          NOTRUN -> [SKIP][28] ([i915#6334]) +1 other test skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-4/igt@gem_exec_capture@capture-invisible.html
> 
>   * igt@gem_exec_capture@capture@vecs0-lmem0:
>     - shard-dg2:          NOTRUN -> [FAIL][29] ([i915#11965]) +4 other tests fail
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-4/igt@gem_exec_capture@capture@vecs0-lmem0.html
> 
>   * igt@gem_exec_flush@basic-uc-prw-default:
>     - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#3539])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-5/igt@gem_exec_flush@basic-uc-prw-default.html
> 
>   * igt@gem_exec_flush@basic-wb-prw-default:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#3539] / [i915#4852]) +2 other tests skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-7/igt@gem_exec_flush@basic-wb-prw-default.html
> 
>   * igt@gem_exec_reloc@basic-cpu-read:
>     - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#3281]) +8 other tests skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-5/igt@gem_exec_reloc@basic-cpu-read.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][33] ([i915#3281]) +5 other tests skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-8/igt@gem_exec_reloc@basic-gtt-read-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-wc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][34] ([i915#3281]) +2 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@gem_exec_reloc@basic-wc.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-chain:
>     - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#4537] / [i915#4812]) +1 other test skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-7/igt@gem_exec_schedule@preempt-queue-contexts-chain.html
> 
>   * igt@gem_exec_schedule@reorder-wide:
>     - shard-mtlp:         NOTRUN -> [SKIP][36] ([i915#4537] / [i915#4812])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-1/igt@gem_exec_schedule@reorder-wide.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][37] ([i915#4537] / [i915#4812])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@gem_exec_schedule@reorder-wide.html
> 
>   * igt@gem_exec_whisper@basic-queues-priority-all:
>     - shard-rkl:          [PASS][38] -> [DMESG-WARN][39] ([i915#12964]) +6 other tests dmesg-warn
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-rkl-8/igt@gem_exec_whisper@basic-queues-priority-all.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-5/igt@gem_exec_whisper@basic-queues-priority-all.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-y:
>     - shard-dg2-9:        NOTRUN -> [SKIP][40] ([i915#4860]) +2 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@gem_fence_thrash@bo-write-verify-y.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
>     - shard-mtlp:         NOTRUN -> [SKIP][41] ([i915#4860])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-1/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4860])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-5/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-rkl:          NOTRUN -> [SKIP][43] ([i915#2190])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-4/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - shard-tglu-1:       NOTRUN -> [SKIP][44] ([i915#4613])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-1/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@massive:
>     - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#4613]) +4 other tests skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-4/igt@gem_lmem_swapping@massive.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-tglu:         NOTRUN -> [SKIP][46] ([i915#4613])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-4/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_media_vme:
>     - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#284])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-7/igt@gem_media_vme.html
> 
>   * igt@gem_mmap@basic:
>     - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#4083]) +2 other tests skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-5/igt@gem_mmap@basic.html
> 
>   * igt@gem_mmap_gtt@fault-concurrent-x:
>     - shard-dg2-9:        NOTRUN -> [SKIP][49] ([i915#4077]) +5 other tests skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@gem_mmap_gtt@fault-concurrent-x.html
> 
>   * igt@gem_mmap_wc@read-write-distinct:
>     - shard-dg2-9:        NOTRUN -> [SKIP][50] ([i915#4083]) +3 other tests skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@gem_mmap_wc@read-write-distinct.html
> 
>   * igt@gem_mmap_wc@write-prefaulted:
>     - shard-mtlp:         NOTRUN -> [SKIP][51] ([i915#4083]) +1 other test skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-1/igt@gem_mmap_wc@write-prefaulted.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-tglu:         NOTRUN -> [WARN][52] ([i915#2658])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-4/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pread@snoop:
>     - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#3282]) +8 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-5/igt@gem_pread@snoop.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#3282]) +5 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-4/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@create-regular-context-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][55] ([i915#4270])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@gem_pxp@create-regular-context-2.html
> 
>   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>     - shard-rkl:          [PASS][56] -> [TIMEOUT][57] ([i915#12964])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-rkl-8/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-5/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-buffer:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][58] ([i915#12917] / [i915#12964]) +2 other tests timeout
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-5/igt@gem_pxp@hw-rejects-pxp-buffer.html
>     - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#13398])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-1/igt@gem_pxp@hw-rejects-pxp-buffer.html
> 
>   * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>     - shard-rkl:          [PASS][60] -> [TIMEOUT][61] ([i915#12917] / [i915#12964])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-rkl-8/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-5/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
> 
>   * igt@gem_pxp@regular-baseline-src-copy-readible:
>     - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#4270]) +1 other test skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-4/igt@gem_pxp@regular-baseline-src-copy-readible.html
> 
>   * igt@gem_readwrite@new-obj:
>     - shard-dg2-9:        NOTRUN -> [SKIP][63] ([i915#3282]) +1 other test skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@gem_readwrite@new-obj.html
> 
>   * igt@gem_readwrite@read-bad-handle:
>     - shard-mtlp:         NOTRUN -> [SKIP][64] ([i915#3282])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-3/igt@gem_readwrite@read-bad-handle.html
> 
>   * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][65] ([i915#8428]) +1 other test skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-3/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html
>     - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#5190] / [i915#8428]) +2 other tests skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-4/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html
> 
>   * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
>     - shard-dg2-9:        NOTRUN -> [SKIP][67] ([i915#5190] / [i915#8428]) +4 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html
> 
>   * igt@gem_render_tiled_blits@basic:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#4079])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-5/igt@gem_render_tiled_blits@basic.html
> 
>   * igt@gem_softpin@evict-snoop:
>     - shard-dg2-9:        NOTRUN -> [SKIP][69] ([i915#4885])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@gem_softpin@evict-snoop.html
> 
>   * igt@gem_userptr_blits@access-control:
>     - shard-dg2-9:        NOTRUN -> [SKIP][70] ([i915#3297])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@gem_userptr_blits@access-control.html
> 
>   * igt@gem_userptr_blits@readonly-pwrite-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#3297])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-5/igt@gem_userptr_blits@readonly-pwrite-unsync.html
> 
>   * igt@gem_userptr_blits@readonly-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#3297]) +2 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-4/igt@gem_userptr_blits@readonly-unsync.html
> 
>   * igt@gem_userptr_blits@relocations:
>     - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#3281] / [i915#3297])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-3/igt@gem_userptr_blits@relocations.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#2527]) +2 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-7/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#2856]) +2 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-4/igt@gen9_exec_parse@bb-start-far.html
>     - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#2856])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-3/igt@gen9_exec_parse@bb-start-far.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-tglu:         NOTRUN -> [SKIP][77] ([i915#2527] / [i915#2856])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-4/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-dg2-9:        NOTRUN -> [SKIP][78] ([i915#2856]) +1 other test skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@gen9_exec_parse@shadow-peek.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][79] ([i915#2527] / [i915#2856]) +1 other test skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-1/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@i915_drm_fdinfo@busy-idle@vcs0:
>     - shard-dg2-9:        NOTRUN -> [SKIP][80] ([i915#14073]) +7 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@i915_drm_fdinfo@busy-idle@vcs0.html
> 
>   * igt@i915_drm_fdinfo@isolation@rcs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#14073]) +6 other tests skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-3/igt@i915_drm_fdinfo@isolation@rcs0.html
>     - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#14073]) +7 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-4/igt@i915_drm_fdinfo@isolation@rcs0.html
> 
>   * igt@i915_drm_fdinfo@virtual-busy-all:
>     - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#14118])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-5/igt@i915_drm_fdinfo@virtual-busy-all.html
> 
>   * igt@i915_drm_fdinfo@virtual-busy-hang:
>     - shard-dg2-9:        NOTRUN -> [SKIP][84] ([i915#14118])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@i915_drm_fdinfo@virtual-busy-hang.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-tglu:         NOTRUN -> [SKIP][85] ([i915#6412])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-4/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#6590]) +1 other test skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-5/igt@i915_pm_freq_mult@media-freq@gt0.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt1:
>     - shard-mtlp:         NOTRUN -> [SKIP][87] ([i915#6590]) +2 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-1/igt@i915_pm_freq_mult@media-freq@gt1.html
> 
>   * igt@i915_pm_rc6_residency@rc6-accuracy:
>     - shard-rkl:          NOTRUN -> [FAIL][88] ([i915#12942]) +1 other test fail
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-7/igt@i915_pm_rc6_residency@rc6-accuracy.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:
>     - shard-dg1:          [PASS][89] -> [FAIL][90] ([i915#3591])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
> 
>   * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
>     - shard-mtlp:         NOTRUN -> [SKIP][91] +4 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-3/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-glk:          [PASS][92] -> [INCOMPLETE][93] ([i915#12797])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-glk5/igt@i915_pm_rpm@system-suspend-execbuf.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-glk8/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@i915_pm_rps@min-max-config-loaded:
>     - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#11681] / [i915#6621])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-5/igt@i915_pm_rps@min-max-config-loaded.html
> 
>   * igt@i915_pm_rps@thresholds-idle:
>     - shard-mtlp:         NOTRUN -> [SKIP][95] ([i915#11681])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-3/igt@i915_pm_rps@thresholds-idle.html
>     - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#11681])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-4/igt@i915_pm_rps@thresholds-idle.html
> 
>   * igt@i915_pm_rps@waitboost:
>     - shard-mtlp:         NOTRUN -> [FAIL][97] ([i915#8346])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-1/igt@i915_pm_rps@waitboost.html
> 
>   * igt@i915_query@query-topology-coherent-slice-mask:
>     - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#6188])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-5/igt@i915_query@query-topology-coherent-slice-mask.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-tglu:         NOTRUN -> [SKIP][99] ([i915#5723])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-4/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - shard-mtlp:         [PASS][100] -> [DMESG-FAIL][101] ([i915#12061]) +1 other test dmesg-fail
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-mtlp-4/igt@i915_selftest@live@workarounds.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-8/igt@i915_selftest@live@workarounds.html
> 
>   * igt@i915_suspend@basic-s2idle-without-i915:
>     - shard-rkl:          [PASS][102] -> [DMESG-WARN][103] ([i915#12917] / [i915#12964])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-rkl-8/igt@i915_suspend@basic-s2idle-without-i915.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-5/igt@i915_suspend@basic-s2idle-without-i915.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-dg1:          [PASS][104] -> [DMESG-WARN][105] ([i915#4391] / [i915#4423])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg1-19/igt@i915_suspend@basic-s3-without-i915.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg1-13/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_addfb_basic@clobberred-modifier:
>     - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#4212])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-7/igt@kms_addfb_basic@clobberred-modifier.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-tglu-1:       NOTRUN -> [SKIP][107] ([i915#12454] / [i915#12712])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-1/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_addfb_basic@tile-pitch-mismatch:
>     - shard-dg2-9:        NOTRUN -> [SKIP][108] ([i915#4212])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_addfb_basic@tile-pitch-mismatch.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic@pipe-b-hdmi-a-4-y-rc-ccs-cc:
>     - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#8709]) +3 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg1-14/igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic@pipe-b-hdmi-a-4-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-tiled@pipe-b-hdmi-a-1-y-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#8709]) +1 other test skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-7/igt@kms_async_flips@async-flip-with-page-flip-events-tiled@pipe-b-hdmi-a-1-y-rc-ccs-cc.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>     - shard-dg2-9:        NOTRUN -> [FAIL][111] ([i915#5956]) +1 other test fail
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
>     - shard-mtlp:         NOTRUN -> [SKIP][112] ([i915#1769] / [i915#3555])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][113] ([i915#12964]) +15 other tests dmesg-warn
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-3/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#5286]) +6 other tests skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-3/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-tglu-1:       NOTRUN -> [SKIP][115] ([i915#5286])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
>     - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#5286]) +1 other test skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-180:
>     - shard-dg1:          [PASS][117] -> [FAIL][118] ([i915#5138])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg1-13/igt@kms_big_fb@linear-64bpp-rotate-180.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg1-14/igt@kms_big_fb@linear-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-270:
>     - shard-dg2-9:        NOTRUN -> [SKIP][119] +2 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_big_fb@linear-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#3638]) +2 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-4/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
>     - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#4538] / [i915#5190]) +6 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-4/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@y-tiled-addfb:
>     - shard-dg2-9:        NOTRUN -> [SKIP][122] ([i915#5190])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_big_fb@y-tiled-addfb.html
>     - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#6187])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-1/igt@kms_big_fb@y-tiled-addfb.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-dg2-9:        NOTRUN -> [SKIP][124] ([i915#4538] / [i915#5190]) +4 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][125] ([i915#4538])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg1-14/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
>     - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#5190]) +1 other test skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-5/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#6095]) +151 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg1-14/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#10307] / [i915#10434] / [i915#6095]) +2 other tests skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-8/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#6095]) +46 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-3/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][130] ([i915#6095]) +19 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-4/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][131] ([i915#10307] / [i915#6095]) +39 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#12313]) +2 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-4/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#12313]) +1 other test skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-7/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][134] ([i915#6095]) +19 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-1/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][135] ([i915#12313])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][136] ([i915#12313])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#10307] / [i915#6095]) +174 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#6095]) +7 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-10/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-a-dp-4.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][139] ([i915#6095]) +4 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#14098] / [i915#6095]) +55 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][141] ([i915#6095]) +24 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-1/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-edp-1.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-rkl:          NOTRUN -> [SKIP][142] ([i915#3742]) +1 other test skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-8/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#13784])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-1/igt@kms_cdclk@mode-transition-all-outputs.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][144] ([i915#13784])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-d-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#13783]) +3 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-10/igt@kms_cdclk@plane-scaling@pipe-d-dp-4.html
> 
>   * igt@kms_chamelium_color@ctm-green-to-red:
>     - shard-dg2:          NOTRUN -> [SKIP][146] +9 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-7/igt@kms_chamelium_color@ctm-green-to-red.html
> 
>   * igt@kms_chamelium_frames@dp-crc-fast:
>     - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-5/igt@kms_chamelium_frames@dp-crc-fast.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
>     - shard-tglu:         NOTRUN -> [SKIP][148] ([i915#11151] / [i915#7828])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-4/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-fast:
>     - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#11151] / [i915#7828]) +8 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-4/igt@kms_chamelium_hpd@hdmi-hpd-fast.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
>     - shard-tglu-1:       NOTRUN -> [SKIP][150] ([i915#11151] / [i915#7828]) +1 other test skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-1/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][151] ([i915#11151] / [i915#7828]) +1 other test skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-1/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][152] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
> 
>   * igt@kms_content_protection@atomic@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [FAIL][153] ([i915#7173])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-11/igt@kms_content_protection@atomic@pipe-a-dp-3.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#3116])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-3/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-tglu:         NOTRUN -> [SKIP][155] ([i915#6944] / [i915#7116] / [i915#7118])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-4/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#7118] / [i915#9424])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-4/igt@kms_content_protection@type1.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#7118] / [i915#9424])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-7/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x32:
>     - shard-tglu-1:       NOTRUN -> [SKIP][158] ([i915#3555]) +3 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>     - shard-dg2-9:        NOTRUN -> [SKIP][159] ([i915#13049])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_cursor_crc@cursor-onscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#13049]) +2 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-4/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#13049])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-4/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-random-64x21:
>     - shard-tglu:         [PASS][162] -> [FAIL][163] ([i915#13566]) +1 other test fail
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-tglu-3/igt@kms_cursor_crc@cursor-random-64x21.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-10/igt@kms_cursor_crc@cursor-random-64x21.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
>     - shard-dg2-9:        NOTRUN -> [SKIP][164] ([i915#3555]) +4 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x42:
>     - shard-mtlp:         NOTRUN -> [SKIP][165] ([i915#8814])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-3/igt@kms_cursor_crc@cursor-sliding-128x42.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-256x85:
>     - shard-tglu:         NOTRUN -> [FAIL][166] ([i915#13566]) +1 other test fail
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-4/igt@kms_cursor_crc@cursor-sliding-256x85.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][167] ([i915#13566])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#13046] / [i915#5354]) +1 other test skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>     - shard-glk:          [PASS][169] -> [FAIL][170] ([i915#13028])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
>     - shard-mtlp:         NOTRUN -> [SKIP][171] ([i915#9809])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
>     - shard-dg2-9:        NOTRUN -> [SKIP][172] ([i915#13046] / [i915#5354]) +2 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#4103])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#9723])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-4/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-dg2-9:        NOTRUN -> [SKIP][175] ([i915#13691])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_display_modes@extended-mode-basic.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][176] ([i915#13691])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-1/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-dg2:          [PASS][177] -> [SKIP][178] ([i915#3555])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_dp_link_training@uhbr-mst:
>     - shard-mtlp:         NOTRUN -> [SKIP][179] ([i915#13749])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-1/igt@kms_dp_link_training@uhbr-mst.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][180] ([i915#13748])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_dp_link_training@uhbr-mst.html
>     - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#13748])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-5/igt@kms_dp_link_training@uhbr-mst.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-dg2:          [PASS][182] -> [SKIP][183] ([i915#13707])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fallback.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-2/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_dp_linktrain_fallback@dsc-fallback:
>     - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#13707])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-7/igt@kms_dp_linktrain_fallback@dsc-fallback.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#3840] / [i915#9688])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-7/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#3840])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-8/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-dg2-9:        NOTRUN -> [SKIP][187] ([i915#3555] / [i915#3840])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_dsc@dsc-with-output-formats.html
>     - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#3555] / [i915#3840])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-5/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-tglu:         NOTRUN -> [SKIP][189] ([i915#3469])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-4/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#3955])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-3/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#658])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-3/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#658])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-5/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
>     - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#9934]) +4 other tests skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-4/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-on-nop:
>     - shard-tglu-1:       NOTRUN -> [SKIP][194] ([i915#9934])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms-on-nop.html
> 
>   * igt@kms_flip@2x-flip-vs-modeset:
>     - shard-tglu:         NOTRUN -> [SKIP][195] ([i915#3637] / [i915#9934]) +1 other test skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-4/igt@kms_flip@2x-flip-vs-modeset.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-interruptible:
>     - shard-dg2-9:        NOTRUN -> [SKIP][196] ([i915#9934]) +1 other test skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_flip@2x-flip-vs-panning-interruptible.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][197] ([i915#3637] / [i915#9934])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-1/igt@kms_flip@2x-flip-vs-panning-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:
>     - shard-snb:          [PASS][198] -> [TIMEOUT][199] ([i915#14033]) +1 other test timeout
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-snb7/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-snb5/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#9934]) +5 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-4/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a2:
>     - shard-rkl:          NOTRUN -> [FAIL][201] ([i915#13734])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1:
>     - shard-snb:          [PASS][202] -> [FAIL][203] ([i915#13734])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-snb6/igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-snb2/igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#2672] / [i915#3555]) +2 other tests skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#2672]) +2 other tests skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
>     - shard-mtlp:         NOTRUN -> [SKIP][206] ([i915#2672] / [i915#3555] / [i915#8813])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][207] ([i915#2672] / [i915#3555] / [i915#5190])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][208] ([i915#2672] / [i915#8813])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>     - shard-dg2-9:        NOTRUN -> [SKIP][209] ([i915#2672]) +1 other test skip
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][210] ([i915#2672] / [i915#3555])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][211] ([i915#2587] / [i915#2672])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][212] ([i915#2672] / [i915#3555])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][213] ([i915#2587] / [i915#2672])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][214] ([i915#2672] / [i915#3555]) +3 other tests skip
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][215] ([i915#2672] / [i915#3555])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][216] ([i915#2672]) +3 other tests skip
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][217] ([i915#8708]) +2 other tests skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][218] ([i915#5354]) +14 other tests skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:
>     - shard-mtlp:         NOTRUN -> [SKIP][219] ([i915#1825]) +5 other tests skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite:
>     - shard-tglu:         NOTRUN -> [SKIP][220] +19 other tests skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][221] +19 other tests skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#10055])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][223] ([i915#8708]) +10 other tests skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][224] ([i915#3023]) +30 other tests skip
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#10433] / [i915#3458])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][226] +25 other tests skip
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-msflip-blt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][227] ([i915#5354]) +12 other tests skip
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][228] ([i915#8708]) +14 other tests skip
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][229] ([i915#1825]) +41 other tests skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
>     - shard-dg2-9:        NOTRUN -> [SKIP][230] ([i915#3458]) +6 other tests skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#3458]) +8 other tests skip
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_getfb@getfb-reject-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#6118])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-4/igt@kms_getfb@getfb-reject-ccs.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][233] ([i915#3555] / [i915#8228])
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-7/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-dg2:          NOTRUN -> [SKIP][234] ([i915#3555] / [i915#8228])
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-4/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#10656])
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-8/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][236] ([i915#12394])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-4/igt@kms_joiner@basic-force-ultra-joiner.html
> 
>   * igt@kms_joiner@basic-max-non-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][237] ([i915#13688])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-7/igt@kms_joiner@basic-max-non-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#10656])
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-4/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-dg2:          NOTRUN -> [SKIP][239] ([i915#6301])
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-4/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][240] ([i915#13026]) +1 other test incomplete
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-glk1/igt@kms_plane@plane-panning-bottom-right-suspend.html
> 
>   * igt@kms_plane_lowres@tiling-y:
>     - shard-dg2-9:        NOTRUN -> [SKIP][241] ([i915#8821])
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_plane_lowres@tiling-y.html
> 
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-rkl:          NOTRUN -> [SKIP][242] ([i915#3555]) +7 other tests skip
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-4/igt@kms_plane_lowres@tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-rkl:          NOTRUN -> [SKIP][243] ([i915#6953])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c:
>     - shard-rkl:          NOTRUN -> [SKIP][244] ([i915#12247]) +11 other tests skip
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-8/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:
>     - shard-tglu-1:       NOTRUN -> [SKIP][245] ([i915#12247]) +4 other tests skip
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d:
>     - shard-dg2-9:        NOTRUN -> [SKIP][246] ([i915#12247]) +7 other tests skip
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][247] ([i915#12247] / [i915#9423]) +1 other test skip
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c:
>     - shard-mtlp:         NOTRUN -> [SKIP][248] ([i915#12247]) +8 other tests skip
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
>     - shard-rkl:          NOTRUN -> [SKIP][249] ([i915#12247] / [i915#3555])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
>     - shard-mtlp:         NOTRUN -> [SKIP][250] ([i915#12247] / [i915#6953])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
> 
>   * igt@kms_pm_backlight@brightness-with-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][251] ([i915#12343])
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-4/igt@kms_pm_backlight@brightness-with-dpms.html
> 
>   * igt@kms_pm_backlight@fade:
>     - shard-rkl:          NOTRUN -> [SKIP][252] ([i915#5354])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-7/igt@kms_pm_backlight@fade.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-rkl:          NOTRUN -> [SKIP][253] ([i915#9685])
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-4/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#3828])
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-8/igt@kms_pm_dc@dc5-retention-flops.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#9685])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-5/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][256] ([i915#9340])
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][257] ([i915#9340])
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg2-9:        NOTRUN -> [SKIP][258] ([i915#9519])
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg2:          [PASS][259] -> [SKIP][260] ([i915#9519]) +1 other test skip
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg2-3/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@i2c:
>     - shard-dg1:          [PASS][261] -> [DMESG-WARN][262] ([i915#4423]) +3 other tests dmesg-warn
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg1-14/igt@kms_pm_rpm@i2c.html
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg1-15/igt@kms_pm_rpm@i2c.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-rkl:          [PASS][263] -> [SKIP][264] ([i915#9519]) +2 other tests skip
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@pm-tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][265] ([i915#4077]) +5 other tests skip
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-4/igt@kms_pm_rpm@pm-tiling.html
> 
>   * igt@kms_prime@basic-crc-vgem:
>     - shard-dg2-9:        NOTRUN -> [SKIP][266] ([i915#6524] / [i915#6805])
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_prime@basic-crc-vgem.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-rkl:          NOTRUN -> [SKIP][267] ([i915#6524])
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-4/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-dg2:          NOTRUN -> [SKIP][268] ([i915#6524] / [i915#6805])
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-7/igt@kms_prime@d3hot.html
> 
>   * igt@kms_properties@get_properties-sanity-atomic:
>     - shard-dg2-9:        NOTRUN -> [FAIL][269] ([i915#14036])
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_properties@get_properties-sanity-atomic.html
>     - shard-rkl:          NOTRUN -> [FAIL][270] ([i915#14036])
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-5/igt@kms_properties@get_properties-sanity-atomic.html
>     - shard-mtlp:         NOTRUN -> [FAIL][271] ([i915#14036])
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-1/igt@kms_properties@get_properties-sanity-atomic.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][272] ([i915#9808])
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-3/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-a-edp-1.html
> 
>   * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][273] ([i915#11520]) +2 other tests skip
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-4/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-mtlp:         NOTRUN -> [SKIP][274] ([i915#12316]) +2 other tests skip
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-1/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][275] ([i915#11520]) +1 other test skip
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-1/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][276] ([i915#11520]) +10 other tests skip
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-3/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
>     - shard-dg2-9:        NOTRUN -> [SKIP][277] ([i915#11520]) +3 other tests skip
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-plane-move-sf-dmg-area:
>     - shard-dg2:          NOTRUN -> [SKIP][278] ([i915#11520]) +5 other tests skip
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-5/igt@kms_psr2_sf@psr2-plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr@fbc-psr-primary-render:
>     - shard-tglu:         NOTRUN -> [SKIP][279] ([i915#9732]) +4 other tests skip
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-4/igt@kms_psr@fbc-psr-primary-render.html
> 
>   * igt@kms_psr@fbc-psr-sprite-mmap-cpu:
>     - shard-dg2-9:        NOTRUN -> [SKIP][280] ([i915#1072] / [i915#9732]) +9 other tests skip
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_psr@fbc-psr-sprite-mmap-cpu.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-render:
>     - shard-rkl:          NOTRUN -> [SKIP][281] ([i915#1072] / [i915#9732]) +26 other tests skip
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-4/igt@kms_psr@fbc-psr2-sprite-render.html
> 
>   * igt@kms_psr@pr-primary-render:
>     - shard-mtlp:         NOTRUN -> [SKIP][282] ([i915#9688]) +5 other tests skip
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-1/igt@kms_psr@pr-primary-render.html
> 
>   * igt@kms_psr@psr-no-drrs:
>     - shard-glk:          NOTRUN -> [SKIP][283] +23 other tests skip
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-glk5/igt@kms_psr@psr-no-drrs.html
> 
>   * igt@kms_psr@psr-sprite-plane-onoff:
>     - shard-tglu-1:       NOTRUN -> [SKIP][284] ([i915#9732]) +4 other tests skip
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-1/igt@kms_psr@psr-sprite-plane-onoff.html
> 
>   * igt@kms_psr@psr2-primary-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][285] ([i915#1072] / [i915#9732]) +15 other tests skip
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-7/igt@kms_psr@psr2-primary-mmap-gtt.html
> 
>   * igt@kms_rotation_crc@exhaust-fences:
>     - shard-dg2-9:        NOTRUN -> [SKIP][286] ([i915#4235])
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_rotation_crc@exhaust-fences.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
>     - shard-rkl:          NOTRUN -> [SKIP][287] ([i915#5289])
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-4/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-tglu:         NOTRUN -> [SKIP][288] ([i915#5289])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
>     - shard-dg2:          NOTRUN -> [SKIP][289] ([i915#12755])
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-5/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
> 
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-rkl:          NOTRUN -> [ABORT][290] ([i915#13179]) +1 other test abort
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-6/igt@kms_selftest@drm_framebuffer.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak:
>     - shard-mtlp:         [PASS][291] -> [FAIL][292] ([i915#9196]) +1 other test fail
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak.html
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak.html
> 
>   * igt@kms_vrr@flip-suspend:
>     - shard-mtlp:         NOTRUN -> [SKIP][293] ([i915#3555] / [i915#8808])
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-1/igt@kms_vrr@flip-suspend.html
> 
>   * igt@kms_vrr@flipline:
>     - shard-dg2:          NOTRUN -> [SKIP][294] ([i915#3555]) +2 other tests skip
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-5/igt@kms_vrr@flipline.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-dg2:          NOTRUN -> [SKIP][295] ([i915#9906])
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-5/igt@kms_vrr@max-min.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-dg2-9:        NOTRUN -> [SKIP][296] ([i915#2437])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@kms_writeback@writeback-check-output.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][297] ([i915#2437])
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-1/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@perf@mi-rpc:
>     - shard-dg2:          NOTRUN -> [SKIP][298] ([i915#2434])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-4/igt@perf@mi-rpc.html
>     - shard-mtlp:         NOTRUN -> [SKIP][299] ([i915#2434])
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-3/igt@perf@mi-rpc.html
> 
>   * igt@perf@per-context-mode-unprivileged:
>     - shard-rkl:          NOTRUN -> [SKIP][300] ([i915#2435])
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-4/igt@perf@per-context-mode-unprivileged.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-dg2:          [PASS][301] -> [INCOMPLETE][302] ([i915#13520])
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg2-4/igt@perf_pmu@module-unload.html
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-5/igt@perf_pmu@module-unload.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-rkl:          NOTRUN -> [SKIP][303] ([i915#8516])
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-4/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@prime_vgem@basic-fence-mmap:
>     - shard-mtlp:         NOTRUN -> [SKIP][304] ([i915#3708] / [i915#4077])
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-3/igt@prime_vgem@basic-fence-mmap.html
>     - shard-dg2:          NOTRUN -> [SKIP][305] ([i915#3708] / [i915#4077])
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-4/igt@prime_vgem@basic-fence-mmap.html
> 
>   * igt@prime_vgem@basic-read:
>     - shard-rkl:          NOTRUN -> [SKIP][306] ([i915#3291] / [i915#3708])
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-7/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-dg2-9:        NOTRUN -> [SKIP][307] ([i915#3291] / [i915#3708])
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-9/igt@prime_vgem@basic-write.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@hibernate:
>     - shard-mtlp:         [ABORT][308] ([i915#13193] / [i915#13723] / [i915#7975]) -> [PASS][309]
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-mtlp-7/igt@gem_eio@hibernate.html
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-3/igt@gem_eio@hibernate.html
> 
>   * igt@gem_eio@reset-stress:
>     - shard-mtlp:         [ABORT][310] ([i915#13193] / [i915#13723]) -> [PASS][311]
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-mtlp-7/igt@gem_eio@reset-stress.html
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-1/igt@gem_eio@reset-stress.html
>     - shard-dg1:          [FAIL][312] ([i915#12543] / [i915#5784]) -> [PASS][313]
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg1-16/igt@gem_eio@reset-stress.html
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg1-12/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-dg1:          [FAIL][314] ([i915#12714] / [i915#5784]) -> [PASS][315]
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg1-18/igt@gem_eio@unwedge-stress.html
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg1-13/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - shard-dg2:          [INCOMPLETE][316] ([i915#11441] / [i915#13304]) -> [PASS][317] +1 other test pass
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg2-2/igt@gem_exec_suspend@basic-s0@smem.html
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-7/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-execution:
>     - shard-rkl:          [TIMEOUT][318] ([i915#12917] / [i915#12964]) -> [PASS][319] +1 other test pass
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-rkl-4/igt@gem_pxp@verify-pxp-stale-buf-execution.html
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-8/igt@gem_pxp@verify-pxp-stale-buf-execution.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [ABORT][320] ([i915#5566]) -> [PASS][321]
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-glk3/igt@gen9_exec_parse@allowed-single.html
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-glk2/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
>     - shard-dg1:          [FAIL][322] ([i915#3591]) -> [PASS][323]
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - shard-dg2:          [DMESG-FAIL][324] ([i915#12061]) -> [PASS][325] +1 other test pass
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg2-11/igt@i915_selftest@live@workarounds.html
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-2/igt@i915_selftest@live@workarounds.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-glk:          [INCOMPLETE][326] ([i915#4817]) -> [PASS][327]
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-glk8/igt@i915_suspend@fence-restore-untiled.html
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-glk5/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-mtlp:         [FAIL][328] ([i915#10991]) -> [PASS][329] +1 other test pass
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-mtlp-2/igt@kms_async_flips@alternate-sync-async-flip.html
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-2/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_atomic_transition@plane-toggle-modeset-transition:
>     - shard-dg2:          [FAIL][330] ([i915#5956]) -> [PASS][331] +1 other test pass
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg2-3/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-7/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-mtlp:         [FAIL][332] ([i915#5138]) -> [PASS][333]
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_color@deep-color:
>     - shard-dg2:          [SKIP][334] ([i915#3555]) -> [PASS][335]
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg2-2/igt@kms_color@deep-color.html
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-11/igt@kms_color@deep-color.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-256x256:
>     - shard-rkl:          [DMESG-WARN][336] ([i915#12964]) -> [PASS][337] +9 other tests pass
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-256x256.html
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-256x256.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-dg2:          [SKIP][338] ([i915#1257]) -> [PASS][339]
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg2-7/igt@kms_dp_aux_dev.html
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-10/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-dg2:          [SKIP][340] ([i915#3555] / [i915#8228]) -> [PASS][341]
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg2-7/igt@kms_hdr@static-swap.html
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-10/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_plane_cursor@viewport:
>     - shard-glk:          [DMESG-FAIL][342] ([i915#118]) -> [PASS][343] +1 other test pass
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-glk8/igt@kms_plane_cursor@viewport.html
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-glk5/igt@kms_plane_cursor@viewport.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu:         [SKIP][344] ([i915#4281]) -> [PASS][345]
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-tglu-3/igt@kms_pm_dc@dc9-dpms.html
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-10/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-rkl:          [SKIP][346] ([i915#9519]) -> [PASS][347]
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-8/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-dg2:          [SKIP][348] ([i915#9519]) -> [PASS][349]
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg2-3/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_properties@crtc-properties-atomic:
>     - shard-dg1:          [DMESG-WARN][350] ([i915#4423]) -> [PASS][351] +1 other test pass
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg1-15/igt@kms_properties@crtc-properties-atomic.html
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg1-19/igt@kms_properties@crtc-properties-atomic.html
> 
>   * igt@perf_pmu@busy-accuracy-50:
>     - shard-tglu:         [FAIL][352] ([i915#4349]) -> [PASS][353] +1 other test pass
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-tglu-7/igt@perf_pmu@busy-accuracy-50.html
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-tglu-8/igt@perf_pmu@busy-accuracy-50.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg1:          [TIMEOUT][354] ([i915#14044] / [i915#5493]) -> [CRASH][355] ([i915#5493])
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][356] ([i915#6095]) -> [SKIP][357] ([i915#14098] / [i915#6095]) +6 other tests skip
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-2.html
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-dg2:          [SKIP][358] ([i915#7118] / [i915#9424]) -> [FAIL][359] ([i915#7173])
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg2-1/igt@kms_content_protection@atomic.html
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-11/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-dg2:          [FAIL][360] ([i915#7173]) -> [SKIP][361] ([i915#7118] / [i915#9424])
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg2-11/igt@kms_content_protection@legacy.html
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-2/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-rkl:          [FAIL][362] ([i915#14001] / [i915#2346]) -> [FAIL][363] ([i915#2346])
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-rkl-3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-glk:          [INCOMPLETE][364] ([i915#12314] / [i915#12745] / [i915#4839]) -> [INCOMPLETE][365] ([i915#12745] / [i915#4839] / [i915#6113])
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-glk8/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:
>     - shard-glk:          [INCOMPLETE][366] ([i915#12314] / [i915#12745]) -> [INCOMPLETE][367] ([i915#12745])
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-glk8/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-dg2:          [SKIP][368] ([i915#3458]) -> [SKIP][369] ([i915#10433] / [i915#3458])
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>     - shard-dg2:          [SKIP][370] ([i915#10433] / [i915#3458]) -> [SKIP][371] ([i915#3458])
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
>     - shard-dg1:          [SKIP][372] ([i915#8708]) -> [SKIP][373] ([i915#4423] / [i915#8708])
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-dg2:          [SKIP][374] ([i915#13331]) -> [SKIP][375] ([i915#12713])
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-dg2-11/igt@kms_hdr@brightness-with-hdr.html
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-dg2-2/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][376] ([i915#4816]) -> [SKIP][377] ([i915#1839] / [i915#4816])
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-rkl-8/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-glk:          [SKIP][378] -> [FAIL][379] ([i915#10959])
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/shard-glk8/igt@kms_tiled_display@basic-test-pattern.html
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/shard-glk3/igt@kms_tiled_display@basic-test-pattern.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10959]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959
>   [i915#10991]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10991
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/118
>   [i915#11965]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11965
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
>   [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
>   [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
>   [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
>   [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
>   [i915#12543]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12543
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12714]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12714
>   [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12797]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12797
>   [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
>   [i915#12942]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12942
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#13026]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026
>   [i915#13028]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13028
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
>   [i915#13193]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13193
>   [i915#13304]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13304
>   [i915#13331]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13398]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
>   [i915#13520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
>   [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13723
>   [i915#13734]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13734
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
>   [i915#13784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13784
>   [i915#14001]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14001
>   [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
>   [i915#14036]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14036
>   [i915#14044]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14044
>   [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
>   [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
>   [i915#2435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
>   [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
>   [i915#5566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6118
>   [i915#6187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6187
>   [i915#6188]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6188
>   [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8346
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8808
>   [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
>   [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>   [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
>   [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16525 -> Patchwork_147435v4
> 
>   CI-20190529: 20190529
>   CI_DRM_16525: b0db97d4270c697ade930cfefdb7aaef12cd80c9 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8359: 807f0cbcc771d1d0bb0d27a78231a5f92dc02126 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_147435v4: b0db97d4270c697ade930cfefdb7aaef12cd80c9 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/index.html
