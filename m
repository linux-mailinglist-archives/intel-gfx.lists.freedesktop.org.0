Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5CA7FBEF7
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 17:08:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E1DA10E589;
	Tue, 28 Nov 2023 16:08:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CC3B10E15D
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 16:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701187689; x=1732723689;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=dsemmiLZ2E9VXaOqTDLtyWjShJYVb+rmwnpjuXedTp0=;
 b=Q/wNyvttjtDkev2+mTmMf95IOou5Ye0o/Iit70T91xI7hXM0yWZRoRXr
 vEBDyqK2lZRs6I8wzAbm8LP/Uvnd5z82WHRPbhJNnncQijHwyjNCClU4P
 vL2CoZh5LNPzMzZzSv3acpPY6vzvEOzbPNzto4DjcxP/DXOxXfzXlx/dI
 yl10Z9zKYUd7V3ZDWaJbdzo8fOpipDFAJKSLYX+xa2ASG6J+Dkmhai4bP
 UwyEWa0kydfKWBhXMsg/5+3Rzlebuao1O2zdx+zLjBzF/tyAfZsi5Gt9M
 WxOG0iFZZMgP1gzcS2oK6VFf3doX3sV2xvVCedZh64UNjCrlmFLY3Z7K4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="392704253"
X-IronPort-AV: E=Sophos;i="6.04,234,1695711600"; d="scan'208";a="392704253"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 08:08:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="768568730"
X-IronPort-AV: E=Sophos;i="6.04,234,1695711600"; d="scan'208";a="768568730"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Nov 2023 08:08:06 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 28 Nov 2023 08:08:06 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 28 Nov 2023 08:08:06 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 28 Nov 2023 08:08:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QFqoj8TZLJJjxiL8XO871iWm9Guxq2k/pe0n1z9PtnrZTvlMdNnHmLCwOe45mezlt9xojgt07Y4o4btniRgsqXu3hvTku69EzrAwGRQtI6vrxEXrbCsUaCoORDPkpxo+W3Td2B0VEi36jCOwQHmJlv4DUiKL4VQVmun2FlixQbF6oCDHf6cyRVszxUFuveOVEMmLV9IDUyoU30wcYazK8N93FPzc5HdIL2+U1vSZv2mOUgrzOWbevUZX2T/P1/BqLCq5XpE6FKzJdIlCs/YN854stfnge3XIsL39n0ht+4SAR4NOtSvMBsPX3uvhqLJqGOZnMSNs5bgUuWaris8qdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ffx+uzvdTTl5uIpSnQRW/y6D1fctnHXOXgx00+5LdEk=;
 b=W9y0lV06FtgcQwTMmXwmW8nFF3/BB5zD4Y0oiqifOGI9tcWnhmlsKX1pBqEkwl1JtD0VXe5rbg9LtChxBVeQLmDsm3s2LL3rXiNcFnJ68iRd8srTnNn1jQPM8xraiusTKvGySvv1TKksEn2Ioi3X2mM3OfTG+JrDMDzgrDc+tGUeX3xW2hp5FJMglhMrOpAuCapx1lgfiFcfNSE3XRIVnZALaZAYcOpI7CNXlGVFtAIKpRgxpTK0lwLZSr/NR0WW2KIA/GzeurZh8fVWYKEvOIGVkI/5RHc79XFRfJEk/2L1Acex3yVQ9fJ2xvGeULKe5iebyyi1FdlvI5CIBYgtOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CY8PR11MB7194.namprd11.prod.outlook.com (2603:10b6:930:92::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.29; Tue, 28 Nov
 2023 16:07:23 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7025.022; Tue, 28 Nov 2023
 16:07:23 +0000
Date: Tue, 28 Nov 2023 08:07:20 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20231128160720.GS1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231127190043.4099109-2-matthew.d.roper@intel.com>
 <170114783196.8220.11063024693352219379@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <170114783196.8220.11063024693352219379@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR03CA0090.namprd03.prod.outlook.com
 (2603:10b6:a03:331::35) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CY8PR11MB7194:EE_
X-MS-Office365-Filtering-Correlation-Id: f4d0bc7f-2be3-475a-9ddb-08dbf02c1b45
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GMGpE8n+3eCkquvbKB4iZTFYGJUWR+rCzw5DPZLDDFz5yrRN3IIHaUyogH3qN8ltR3JdPZl0PuV4gA5hJw8kbCItlaSpLGBzVnTOwca0038uW2xJ3CiBank4vDGc8opOZPKUDyZ95iQKM+UzL8KCd4NFF5jLoJLkrzVauBEWM24HGwDqzFA4EK7PXoSmgFtvtPDAsMuFgqDOX9ijlh3qoOADekwqEu50sriiYxorn9peuom1/Keqo5NM+rMkLiA30qZNIWYNVwN0xNd488p5SsSGK4VA5AfpLjfSJSlZRCpWsPwo+VFvFC+dKlxHjm36kYkwB3Gm72fu7GWR8EsLrLmWuPIKINYEdpQOwI+dv/iY823NCcSwjO+lWccohekhpuOx3wnVZR6r1UtH6SK5Kj7uebqWYtqSxiwyNSv9BisHDOs/yK3dwHsZUchCkqswVZbzsw7ye3J7DASXUBD1aF65xg/mFr4SfO8cQWx6YfC+InbrXDEqEVUlUFym1kptWCXDbS3R8jUugOD0lbweSx8x+2c1S0wyPyRPS7hGg1cZeJX7S9WXPqKxuXmnRnPt1AldDnxEKPUx2DSjKVKr65sm2aGhASdxFimw5SrsJjPp4UKqnls77j96xI+pl8tsXwk4G06LCyDR3csBOq1UkYy1obYvlI1+NZroOux0u0I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(366004)(39860400002)(396003)(376002)(230173577357003)(230273577357003)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(38100700002)(41300700001)(1076003)(33656002)(30864003)(83380400001)(5660300002)(82960400001)(26005)(2906002)(86362001)(66476007)(6512007)(6506007)(8936002)(966005)(6486002)(478600001)(316002)(66946007)(6916009)(66556008)(13750500001)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JDiLKTJL3dxqeEKGajc/Z4AkjCJKuXbbwIc3O+i6yxPdlrPn+CTeMPkiErjd?=
 =?us-ascii?Q?iHBZ3WzRtYWkGMsLsmLNpmCNA2Ay1sWWkPRlQnDA80YnfYveFgWuCqcFIK8R?=
 =?us-ascii?Q?/ucwr3zOeLcwKDmtzedAGj2Tdlq30Kb03F+turBaAtchxE7MojDy4eWFS+Wb?=
 =?us-ascii?Q?bwCMN4LL20cjQivNh+9ghmAvRbqUqABoEMVOsiQLykfNNNRMavLFKGOUknDN?=
 =?us-ascii?Q?ZwwhYHBQyoxEoaB0tqaUO74Y4HogtcTmPPWm30hjK5lkVYX70rN6PW/t3sXj?=
 =?us-ascii?Q?pxcGZrx+DtJPnTi2jEMRnRcBKRC/ZWrFAdwg6OjvByFVpWSNJ0bG29FLNw6u?=
 =?us-ascii?Q?FitnresTqk5cKDGtnSF+n4Z9R+3mSbRsspibUwBrypbGGEJoszq6D0+PWmVK?=
 =?us-ascii?Q?znBWENp22INm4Uz6JyP+3v7bcI9KP08uF9EL23vCRMDwnkb8JowNi2aOQux6?=
 =?us-ascii?Q?nDiBEUh7tud8mvQWxyr51jsox/6VEiXfa2zuovojj+9gmygUyX5Pq4cboab0?=
 =?us-ascii?Q?/AfmFxKtJs6guGfFqq0M9YkehdXgJ+GfK3KMFVEgWxlQM8NWEmH4TRPltvGY?=
 =?us-ascii?Q?YGPo7AP0NFlB+wxrJk4A4yrHqk53eUt+oyvoduLAlODf3O4x2Wq8XA3BQ5wa?=
 =?us-ascii?Q?5fGk5TariFVyv2Iorb9LR/rHMdgU//XiJS/OCpFH8H56OEDCGbU4fLV7WvVp?=
 =?us-ascii?Q?oRQVBm0IEfDIdCCQBiAnjYhoEtkhZS8jt4ZLUGb55k5Wr1kl1nj5oBH+RDur?=
 =?us-ascii?Q?x++CHvzcZXx3Y5ZhTSbEEE9F/UEv3augO6oLIadbiaTY6UhpBVJUWssSAigI?=
 =?us-ascii?Q?NNEeKniG6x5t7BJhuPARE3htlLhtHBclZK/Au8Q5Fn6VFv/gZV7acajMjZR0?=
 =?us-ascii?Q?2tqTDepC77e8ca1Xw7cC7RXqgJxaQcojWhBlpMC8ghl6glLxVvCUbMthWrF4?=
 =?us-ascii?Q?scuh41UiDVn9CjXbM8YgzOEAnIKDCXDpzGA4mTAKT2NlifjtlBvqpGz0e8YQ?=
 =?us-ascii?Q?zkn9dcdwkL6FotVXenPziPBeMMfNHG5hST4fsJiUrP7A72zlTGjoiQHFAaY3?=
 =?us-ascii?Q?JfuPuKK/YrIMj5ThwzIaGNrTkdebtXwOpIhCEqds3XoY2KhAYYfCznkCWoZX?=
 =?us-ascii?Q?IaOgPCxnDl5J60NbqYUUb6j1J0G7fsz5k0pa9JRpZtnX4SIF4QA0Wyxl7iFs?=
 =?us-ascii?Q?I7dhcBOEVZWFXcG6LhP9z9JYUIdvrCiVvIqjw5TpRrNvtc6DsiDPiet1GEWk?=
 =?us-ascii?Q?v0veqGwaFsjN5sOdXmI2E8y6i8VKz30j1AAgQTkFLOg10jl6bMOn+WxdfBi7?=
 =?us-ascii?Q?/5ClJDqJezm/HGznIizmcMo0GJZSQdTNAkfO1NJlZsq0Bsg16/tcKW3gJame?=
 =?us-ascii?Q?peiHwgQwszXcCVcl2bmPeWsqqtu0nqq4dHbBTrd2ageZlMRi+Q1939UoDF2U?=
 =?us-ascii?Q?rh5PKKyeI8ZazD2wMMgSPtxiGAz+Az0+Ow3tvgHlQulxUqenSjII6x65hNJj?=
 =?us-ascii?Q?wPCHEsMjGEWPrdbWtxy4zoYhmbSr6GKGmLzflGsG8GI/phUdZOgDIBpMHXcZ?=
 =?us-ascii?Q?i/kNa0EJJeCdpZh30cpTX2pvMkIs+74BN5BIeWIz19fGwFPu+meFpJs3mS3V?=
 =?us-ascii?Q?Mg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f4d0bc7f-2be3-475a-9ddb-08dbf02c1b45
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2023 16:07:23.2070 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nUxiXNhHwRGwLeTZbcAScYZSCabGV1p59FhtCWYqmF6T0R6gttVxhEhwyo7HpQ5hTJ1uwT0ubiwxwSOeiKaPbZozxCxAKQJ6187izDR1PGk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7194
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Drop_Wa=5F22014600077?=
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

On Tue, Nov 28, 2023 at 05:03:51AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dg2: Drop Wa_22014600077
> URL   : https://patchwork.freedesktop.org/series/126942/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13929_full -> Patchwork_126942v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_126942v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_126942v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
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
>   Here are the unknown changes that may have been introduced in Patchwork_126942v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-vga1:
>     - shard-snb:          [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-snb4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-vga1.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-snb7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-vga1.html

Lock corruption outside the graphics driver.  Not related to i915 or
this patch.

Patch applied to drm-intel-gt-next.  Thanks Gustavo for the review.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_126942v1_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-glk:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [FAIL][11], [PASS][12], [PASS][13], [PASS][14], [FAIL][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) ([i915#8293]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk9/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk9/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk9/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk8/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk8/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk8/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk8/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk7/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk7/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk7/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk6/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk6/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk5/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk4/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk4/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk4/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk3/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk3/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk3/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk2/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk2/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk2/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk1/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk1/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk1/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk9/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk9/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk9/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk8/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk8/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk8/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk7/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk7/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk6/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk6/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk6/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk5/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk5/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk4/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk4/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk4/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk3/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk3/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk3/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk2/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk2/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk2/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk1/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk1/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk1/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@object-reloc-keep-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#8411])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@api_intel_bb@object-reloc-keep-cache.html
> 
>   * igt@api_intel_bb@object-reloc-purge-cache:
>     - shard-mtlp:         NOTRUN -> [SKIP][54] ([i915#8411])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-2/igt@api_intel_bb@object-reloc-purge-cache.html
> 
>   * igt@api_intel_bb@render-ccs:
>     - shard-dg2:          NOTRUN -> [FAIL][55] ([i915#6122])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-5/igt@api_intel_bb@render-ccs.html
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#7701])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-6/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@drm_fdinfo@all-busy-check-all:
>     - shard-mtlp:         NOTRUN -> [SKIP][57] ([i915#8414])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-5/igt@drm_fdinfo@all-busy-check-all.html
> 
>   * igt@drm_fdinfo@most-busy-idle-check-all@vecs1:
>     - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#8414]) +19 other tests skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#3555])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-2/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#8562])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#8555]) +2 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-6/igt@gem_ctx_persistence@heartbeat-hang.html
> 
>   * igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:
>     - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#5882]) +9 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#280]) +1 other test skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_exec_balancer@sliced:
>     - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#4812])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-6/igt@gem_exec_balancer@sliced.html
> 
>   * igt@gem_exec_capture@many-4k-zero:
>     - shard-dg2:          NOTRUN -> [FAIL][65] ([i915#9606])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@gem_exec_capture@many-4k-zero.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-mtlp:         NOTRUN -> [SKIP][66] ([i915#4473] / [i915#4771])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-2/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-glk:          [PASS][67] -> [FAIL][68] ([i915#2842])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fence@submit3:
>     - shard-mtlp:         NOTRUN -> [SKIP][69] ([i915#4812])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-2/igt@gem_exec_fence@submit3.html
> 
>   * igt@gem_exec_flush@basic-wb-rw-before-default:
>     - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#3539] / [i915#4852]) +2 other tests skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@gem_exec_flush@basic-wb-rw-before-default.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu-active:
>     - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#3281]) +9 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@gem_exec_reloc@basic-gtt-cpu-active.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][72] ([i915#3281]) +3 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-2/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-chain:
>     - shard-mtlp:         NOTRUN -> [SKIP][73] ([i915#4537] / [i915#4812])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-2/igt@gem_exec_schedule@preempt-queue-contexts-chain.html
> 
>   * igt@gem_fenced_exec_thrash@too-many-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#4860]) +1 other test skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@gem_fenced_exec_thrash@too-many-fences.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][75] ([i915#4613])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-tglu-2/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
> 
>   * igt@gem_lmem_swapping@massive-random:
>     - shard-glk:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#4613])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk6/igt@gem_lmem_swapping@massive-random.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          [PASS][77] -> [DMESG-WARN][78] ([i915#4936] / [i915#5493])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-dg2-5/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#4613])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-5/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_mmap_gtt@medium-copy-xy:
>     - shard-mtlp:         NOTRUN -> [SKIP][80] ([i915#4077]) +2 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-2/igt@gem_mmap_gtt@medium-copy-xy.html
> 
>   * igt@gem_mmap_wc@read-write:
>     - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#4083]) +1 other test skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-2/igt@gem_mmap_wc@read-write.html
> 
>   * igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
>     - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#4083]) +2 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html
> 
>   * igt@gem_partial_pwrite_pread@reads:
>     - shard-mtlp:         NOTRUN -> [SKIP][83] ([i915#3282]) +2 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-2/igt@gem_partial_pwrite_pread@reads.html
> 
>   * igt@gem_partial_pwrite_pread@write-snoop:
>     - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#3282]) +1 other test skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@gem_partial_pwrite_pread@write-snoop.html
> 
>   * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>     - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#4270]) +2 other tests skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-execution:
>     - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#4270]) +2 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-2/igt@gem_pxp@verify-pxp-stale-buf-execution.html
> 
>   * igt@gem_render_copy@y-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][87] ([i915#8428]) +3 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-5/igt@gem_render_copy@y-tiled.html
> 
>   * igt@gem_set_tiling_vs_gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#4079])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-6/igt@gem_set_tiling_vs_gtt.html
> 
>   * igt@gem_tiling_max_stride:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#4077]) +8 other tests skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-6/igt@gem_tiling_max_stride.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#3297]) +1 other test skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-5/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#3297])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-5/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
> 
>   * igt@gem_userptr_blits@sd-probe:
>     - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#3297] / [i915#4958])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@gem_userptr_blits@sd-probe.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-tglu:         NOTRUN -> [FAIL][93] ([i915#3318])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-tglu-2/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen3_render_linear_blits:
>     - shard-dg2:          NOTRUN -> [SKIP][94] ([fdo#109289]) +4 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@gen3_render_linear_blits.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#2856]) +4 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@unaligned-jump:
>     - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#2856]) +1 other test skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-5/igt@gen9_exec_parse@unaligned-jump.html
> 
>   * igt@i915_pm_rpm@gem-mmap-type@gtt-smem0:
>     - shard-mtlp:         NOTRUN -> [SKIP][97] ([i915#8431])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-5/igt@i915_pm_rpm@gem-mmap-type@gtt-smem0.html
> 
>   * igt@i915_pm_rps@thresholds-park@gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#8925])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@i915_pm_rps@thresholds-park@gt0.html
> 
>   * igt@i915_query@query-topology-known-pci-ids:
>     - shard-dg2:          NOTRUN -> [SKIP][99] ([fdo#109303])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-6/igt@i915_query@query-topology-known-pci-ids.html
> 
>   * igt@i915_selftest@live@gem_contexts:
>     - shard-mtlp:         [PASS][100] -> [DMESG-FAIL][101] ([i915#9579])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-mtlp-4/igt@i915_selftest@live@gem_contexts.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-4/igt@i915_selftest@live@gem_contexts.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-mtlp:         NOTRUN -> [SKIP][102] ([i915#6645])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-2/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#4212])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-5/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
> 
>   * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#5190]) +9 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
> 
>   * igt@kms_async_flips@crc@pipe-b-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [FAIL][105] ([i915#8247]) +3 other tests fail
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg1-13/igt@kms_async_flips@crc@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_async_flips@crc@pipe-d-dp-4:
>     - shard-dg2:          NOTRUN -> [FAIL][106] ([i915#8247]) +3 other tests fail
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-11/igt@kms_async_flips@crc@pipe-d-dp-4.html
> 
>   * igt@kms_async_flips@test-cursor:
>     - shard-mtlp:         NOTRUN -> [SKIP][107] ([i915#6229])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-5/igt@kms_async_flips@test-cursor.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-glk:          NOTRUN -> [SKIP][108] ([fdo#109271] / [i915#1769])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][109] ([fdo#111614]) +2 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-tglu:         [PASS][110] -> [FAIL][111] ([i915#3743]) +2 other tests fail
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-tglu-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-tglu-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
>     - shard-mtlp:         NOTRUN -> [SKIP][112] ([fdo#111615]) +5 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#4538] / [i915#5190]) +5 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_joiner@basic:
>     - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#2705])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@kms_big_joiner@basic.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#4087] / [i915#7213]) +3 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-5/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#4087]) +3 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-6/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_chamelium_color@ctm-blue-to-red:
>     - shard-mtlp:         NOTRUN -> [SKIP][117] ([fdo#111827]) +1 other test skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-5/igt@kms_chamelium_color@ctm-blue-to-red.html
> 
>   * igt@kms_chamelium_color@ctm-negative:
>     - shard-glk:          NOTRUN -> [SKIP][118] ([fdo#109271]) +86 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk2/igt@kms_chamelium_color@ctm-negative.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k:
>     - shard-tglu:         NOTRUN -> [SKIP][119] ([i915#7828])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-tglu-2/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k.html
> 
>   * igt@kms_chamelium_frames@dp-frame-dump:
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#7828]) +8 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-6/igt@kms_chamelium_frames@dp-frame-dump.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd:
>     - shard-mtlp:         NOTRUN -> [SKIP][121] ([i915#7828]) +3 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-2/igt@kms_chamelium_hpd@hdmi-hpd.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-tglu:         NOTRUN -> [SKIP][122] ([i915#6944] / [i915#7116] / [i915#7118])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-tglu-2/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#7118])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-max-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][124] ([i915#3555] / [i915#8814])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-offscreen-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-max-size:
>     - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#3555]) +5 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@kms_cursor_crc@cursor-onscreen-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
>     - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#3359])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-2/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
> 
>   * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
>     - shard-mtlp:         NOTRUN -> [SKIP][127] ([i915#3546]) +1 other test skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-5/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][128] ([i915#4213]) +1 other test skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][129] ([fdo#109274] / [i915#5354]) +3 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
>     - shard-mtlp:         NOTRUN -> [SKIP][130] ([fdo#111767] / [i915#3546])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-5/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [PASS][131] -> [FAIL][132] ([i915#2346])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#8812])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@kms_draw_crc@draw-method-mmap-wc.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#3555] / [i915#3840] / [i915#4098])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_fence_pin_leak:
>     - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#4881])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-6/igt@kms_fence_pin_leak.html
> 
>   * igt@kms_flip@2x-absolute-wf_vblank:
>     - shard-mtlp:         NOTRUN -> [SKIP][136] ([i915#3637]) +1 other test skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-2/igt@kms_flip@2x-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank:
>     - shard-snb:          NOTRUN -> [SKIP][137] ([fdo#109271]) +8 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-snb4/igt@kms_flip@2x-blocking-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
>     - shard-dg2:          NOTRUN -> [SKIP][138] ([fdo#109274] / [fdo#111767])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-6/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank:
>     - shard-tglu:         NOTRUN -> [SKIP][139] ([fdo#109274] / [i915#3637])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-tglu-2/igt@kms_flip@2x-flip-vs-expired-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
>     - shard-mtlp:         NOTRUN -> [SKIP][140] ([fdo#111767] / [i915#3637])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-5/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][141] ([fdo#109274]) +7 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-6/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend@d-hdmi-a3:
>     - shard-dg1:          NOTRUN -> [DMESG-WARN][142] ([i915#4423])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg1-12/igt@kms_flip@flip-vs-suspend@d-hdmi-a3.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#2672])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][144] ([i915#2587] / [i915#2672])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-tglu-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#2672]) +2 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([fdo#109285])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#8708]) +13 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc:
>     - shard-mtlp:         NOTRUN -> [SKIP][148] ([i915#1825]) +16 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-cpu:
>     - shard-tglu:         NOTRUN -> [SKIP][149] ([fdo#110189])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-tglu-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#5354]) +28 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#3458]) +10 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#5460]) +1 other test skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][153] ([i915#8708]) +4 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite:
>     - shard-tglu:         NOTRUN -> [SKIP][154] ([fdo#109280]) +1 other test skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#3555] / [i915#8228]) +1 other test skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-1/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [FAIL][156] ([i915#8292])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg1-12/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][157] ([i915#5235]) +2 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][158] ([i915#3555] / [i915#5235])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#5235]) +11 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][160] ([i915#5235]) +3 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg1-13/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#9683]) +2 other tests skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-5/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#9732]) +1 other test skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#9685])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:
>     - shard-mtlp:         NOTRUN -> [SKIP][164] ([i915#5289])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
>     - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#4235] / [i915#5190])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-mtlp:         NOTRUN -> [SKIP][166] ([i915#4235])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-270:
>     - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#4235])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-6/igt@kms_rotation_crc@sprite-rotation-270.html
>     - shard-dg1:          [PASS][168] -> [DMESG-WARN][169] ([i915#4423]) +1 other test dmesg-warn
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-dg1-15/igt@kms_rotation_crc@sprite-rotation-270.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg1-12/igt@kms_rotation_crc@sprite-rotation-270.html
> 
>   * igt@kms_scaling_modes@scaling-mode-none:
>     - shard-tglu:         NOTRUN -> [SKIP][170] ([i915#3555])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-tglu-2/igt@kms_scaling_modes@scaling-mode-none.html
> 
>   * igt@kms_setmode@basic@pipe-a-vga-1:
>     - shard-snb:          NOTRUN -> [FAIL][171] ([i915#5465]) +1 other test fail
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-snb4/igt@kms_setmode@basic@pipe-a-vga-1.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc:
>     - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#3555] / [i915#4098]) +1 other test skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-6/igt@kms_setmode@invalid-clone-single-crtc.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-mtlp:         NOTRUN -> [SKIP][173] ([i915#3555] / [i915#8808])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-5/igt@kms_vrr@flip-dpms.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-glk:          NOTRUN -> [SKIP][174] ([fdo#109271] / [i915#2437]) +1 other test skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk2/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-mtlp:         NOTRUN -> [SKIP][175] ([fdo#109289]) +1 other test skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-5/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf_pmu@busy-double-start@vcs0:
>     - shard-dg1:          [PASS][176] -> [FAIL][177] ([i915#4349])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-dg1-16/igt@perf_pmu@busy-double-start@vcs0.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg1-16/igt@perf_pmu@busy-double-start@vcs0.html
> 
>   * igt@perf_pmu@faulting-read@gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][178] ([i915#8440])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-2/igt@perf_pmu@faulting-read@gtt.html
> 
>   * igt@perf_pmu@frequency@gt0:
>     - shard-dg2:          NOTRUN -> [FAIL][179] ([i915#6806])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-6/igt@perf_pmu@frequency@gt0.html
> 
>   * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][180] ([i915#5493])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
> 
>   * igt@prime_udl:
>     - shard-dg2:          NOTRUN -> [SKIP][181] ([fdo#109291])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@prime_udl.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#3291] / [i915#3708])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@prime_vgem@basic-write.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#3708])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@v3d/v3d_job_submission@multiple-singlesync-to-multisync:
>     - shard-tglu:         NOTRUN -> [SKIP][184] ([fdo#109315] / [i915#2575]) +1 other test skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-tglu-2/igt@v3d/v3d_job_submission@multiple-singlesync-to-multisync.html
> 
>   * igt@v3d/v3d_submit_cl@valid-submission:
>     - shard-mtlp:         NOTRUN -> [SKIP][185] ([i915#2575]) +4 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-5/igt@v3d/v3d_submit_cl@valid-submission.html
> 
>   * igt@v3d/v3d_submit_csd@job-perfmon:
>     - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#2575]) +8 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@v3d/v3d_submit_csd@job-perfmon.html
> 
>   * igt@vc4/vc4_lookup_fail@bad-color-write:
>     - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#7711]) +5 other tests skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-10/igt@vc4/vc4_lookup_fail@bad-color-write.html
> 
>   * igt@vc4/vc4_tiling@get-bad-handle:
>     - shard-mtlp:         NOTRUN -> [SKIP][188] ([i915#7711]) +3 other tests skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-2/igt@vc4/vc4_tiling@get-bad-handle.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglu:         [FAIL][189] ([i915#6268]) -> [PASS][190]
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-tglu-7/igt@gem_ctx_exec@basic-nohangcheck.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-tglu-10/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-mtlp:         [ABORT][191] ([i915#7975] / [i915#8213] / [i915#9262]) -> [PASS][192]
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-mtlp-4/igt@gem_eio@hibernate.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-5/igt@gem_eio@hibernate.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-dg1:          [FAIL][193] ([i915#5784]) -> [PASS][194]
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-dg1-16/igt@gem_eio@unwedge-stress.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg1-12/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][195] ([i915#2842]) -> [PASS][196]
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg1:          [TIMEOUT][197] ([i915#5493]) -> [PASS][198]
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_workarounds@reset-context:
>     - shard-mtlp:         [ABORT][199] ([i915#9414]) -> [PASS][200]
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-mtlp-8/igt@gem_workarounds@reset-context.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-2/igt@gem_workarounds@reset-context.html
> 
>   * igt@i915_pm_freq_api@freq-suspend@gt0:
>     - shard-dg2:          [INCOMPLETE][201] ([i915#9407]) -> [PASS][202]
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-mtlp:         [FAIL][203] ([i915#5138]) -> [PASS][204]
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-tglu:         [FAIL][205] ([i915#3743]) -> [PASS][206] +1 other test pass
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-tglu-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [FAIL][207] ([i915#2346]) -> [PASS][208]
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@forked-move@all-pipes:
>     - shard-mtlp:         [DMESG-WARN][209] ([i915#2017]) -> [PASS][210]
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-mtlp-4/igt@kms_cursor_legacy@forked-move@all-pipes.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-2/igt@kms_cursor_legacy@forked-move@all-pipes.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite:
>     - shard-dg2:          [FAIL][211] ([i915#6880]) -> [PASS][212]
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html
> 
>   * {igt@kms_pm_dc@dc6-dpms}:
>     - shard-tglu:         [FAIL][213] ([i915#9295]) -> [PASS][214]
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-tglu-10/igt@kms_pm_dc@dc6-dpms.html
> 
>   * {igt@kms_pm_rpm@modeset-non-lpsp}:
>     - shard-dg2:          [SKIP][215] ([i915#9519]) -> [PASS][216]
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-vga-1:
>     - shard-snb:          [FAIL][217] ([i915#9196]) -> [PASS][218]
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-snb2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-vga-1.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-snb2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-vga-1.html
> 
>   * igt@perf@non-zero-reason@0-rcs0:
>     - shard-dg2:          [FAIL][219] ([i915#7484]) -> [PASS][220]
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-1/igt@perf@non-zero-reason@0-rcs0.html
> 
>   * igt@perf_pmu@busy-double-start@bcs0:
>     - shard-mtlp:         [FAIL][221] ([i915#4349]) -> [PASS][222]
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-mtlp-2/igt@perf_pmu@busy-double-start@bcs0.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-mtlp-5/igt@perf_pmu@busy-double-start@bcs0.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - shard-dg2:          [FAIL][223] ([i915#4349]) -> [PASS][224] +3 other tests pass
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-dg2-5/igt@perf_pmu@busy-double-start@vecs1.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   
> #### Warnings ####
> 
>   * igt@device_reset@unbind-reset-rebind:
>     - shard-dg1:          [INCOMPLETE][225] ([i915#9408]) -> [ABORT][226] ([i915#9618])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-dg1-15/igt@device_reset@unbind-reset-rebind.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg1-13/igt@device_reset@unbind-reset-rebind.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-180:
>     - shard-dg1:          [SKIP][227] ([i915#4538] / [i915#5286]) -> [SKIP][228] ([i915#4423] / [i915#4538] / [i915#5286])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-dg1-15/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg1-12/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html
> 
>   * igt@kms_psr@psr2_cursor_plane_move:
>     - shard-dg2:          [SKIP][229] ([i915#9732]) -> [SKIP][230] ([i915#9736]) +1 other test skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-dg2-5/igt@kms_psr@psr2_cursor_plane_move.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-11/igt@kms_psr@psr2_cursor_plane_move.html
> 
>   * igt@kms_psr@psr2_cursor_render:
>     - shard-dg2:          [SKIP][231] ([i915#9736]) -> [SKIP][232] ([i915#9732])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-dg2-11/igt@kms_psr@psr2_cursor_render.html
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-1/igt@kms_psr@psr2_cursor_render.html
> 
>   * igt@kms_psr@psr2_primary_mmap_gtt:
>     - shard-dg2:          [SKIP][233] -> [SKIP][234] ([i915#9732])
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13929/shard-dg2-11/igt@kms_psr@psr2_primary_mmap_gtt.html
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/shard-dg2-6/igt@kms_psr@psr2_primary_mmap_gtt.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
>   [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
>   [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
>   [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
>   [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5460]: https://gitlab.freedesktop.org/drm/intel/issues/5460
>   [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
>   [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5882]: https://gitlab.freedesktop.org/drm/intel/issues/5882
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6122]: https://gitlab.freedesktop.org/drm/intel/issues/6122
>   [i915#6229]: https://gitlab.freedesktop.org/drm/intel/issues/6229
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
>   [i915#6806]: https://gitlab.freedesktop.org/drm/intel/issues/6806
>   [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
>   [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
>   [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/intel/issues/8430
>   [i915#8431]: https://gitlab.freedesktop.org/drm/intel/issues/8431
>   [i915#8440]: https://gitlab.freedesktop.org/drm/intel/issues/8440
>   [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>   [i915#8562]: https://gitlab.freedesktop.org/drm/intel/issues/8562
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
>   [i915#8808]: https://gitlab.freedesktop.org/drm/intel/issues/8808
>   [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
>   [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
>   [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
>   [i915#9053]: https://gitlab.freedesktop.org/drm/intel/issues/9053
>   [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
>   [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262
>   [i915#9295]: https://gitlab.freedesktop.org/drm/intel/issues/9295
>   [i915#9310]: https://gitlab.freedesktop.org/drm/intel/issues/9310
>   [i915#9407]: https://gitlab.freedesktop.org/drm/intel/issues/9407
>   [i915#9408]: https://gitlab.freedesktop.org/drm/intel/issues/9408
>   [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414
>   [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
>   [i915#9579]: https://gitlab.freedesktop.org/drm/intel/issues/9579
>   [i915#9606]: https://gitlab.freedesktop.org/drm/intel/issues/9606
>   [i915#9618]: https://gitlab.freedesktop.org/drm/intel/issues/9618
>   [i915#9653]: https://gitlab.freedesktop.org/drm/intel/issues/9653
>   [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/intel/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
>   [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
>   [i915#9736]: https://gitlab.freedesktop.org/drm/intel/issues/9736
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13929 -> Patchwork_126942v1
> 
>   CI-20190529: 20190529
>   CI_DRM_13929: 1b1063eb3fa1689c7da7e5c7c4ff8a8d36d421aa @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7605: 7605
>   Patchwork_126942v1: 1b1063eb3fa1689c7da7e5c7c4ff8a8d36d421aa @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126942v1/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
