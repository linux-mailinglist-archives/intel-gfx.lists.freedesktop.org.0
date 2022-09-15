Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C04F05BA278
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 23:54:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0228310E10E;
	Thu, 15 Sep 2022 21:54:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 367F110E10E
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 21:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663278889; x=1694814889;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=xcFumeCPs90CIN2hUvaPzUmigl6x+5RY6qJzHVL8YHk=;
 b=Z06IHBc1CNb8wpxpeeeTuB9r9IhcFpMDRyPlvzeyurAsfFn6ovZJHIQQ
 ilRviRy2nUpSHcylNvTUY7i1a6YUBkY+gj5PgsN2fMtoCHbM+3ucoDFPZ
 fAE5xiPQ5SMKkwLyLKInavUUqwT1fQaSEEusTLwPnMZXSy0cusFO22DFM
 Lm02U5JrzuVUDesfHgT/AL0zQSmd/F19da8XFWD9uYrDiPI1IPPR6dy/k
 t9cIjkbFae9OmDPKYgDB/iZAN9NI1ccuDdlGamQfk157WuhejZ2R9ZWxY
 2m3OD+UvBpNAf0jcHbcdoQJtutMFG6+0pN/t1VUpCsiel9KPUGe6FdAp9 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="297571112"
X-IronPort-AV: E=Sophos;i="5.93,319,1654585200"; d="scan'208";a="297571112"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 14:54:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,319,1654585200"; d="scan'208";a="595000835"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 15 Sep 2022 14:54:47 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 14:54:47 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 14:54:46 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 15 Sep 2022 14:54:46 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 15 Sep 2022 14:54:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n3V5vnOvMPeR8r8z3On+H9o5mS1B4hu+Jm80PrDYzXoY8S1JW/WOaAUV5Rfn9HbyZGYvEOfCWbKn7Qu9hrVk1ZyBO3JrRLug7g1yvurIH53wwubTQkPAmkYMTZZILr7O5aIvNWO4hjucgzJOSQxwxXUbKtc7GGVLx+MSC2HtsgekgnnIF+iDKf6zrC/cN6OtHJ4OQY0zKKZwviZ/RcL4EmRmRQkd99LFvowmVwt5NiGusaY7A8apbiol/0eUOIx10WEkEwlGGdPS58B9KWs5xXq/rGDtVqHHz0XqL66TGe85crE2yPumyo3EY/HMadR6V2GQEQzkC0jWz7ayXclXGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mhlk900uEIe2AqS3DRvhNUFFzZNvk9LSD1m5aZxwNFA=;
 b=eW2TiQaxAyyMAV8c8bewnCiDfF8mb2RgF4uFgynlgK+ORVrZpIcP00W0BvVgpjAZ90cxqshqkfRCZAJj0vEajflo46A1V/7LyXQTY2xEXt2ZnwT3T1rlP8u41OBxoSqbfcHnrVceA9pRSsmDy+DgE3/f1b8C19JCoreeGYDG2vo131na/5QphhiuudF94/P2VxCrOVw5zmBiBNscH6gaHxWTXOzF8+VrzwYXBBJ1+IuXxWshS7hlz630bng6KVg4w9x8dJmoMZU24Vw/L02ZiBwEKo5nHVrXetD7C70Den6vvNJXcmBm6wznWy8oh9+2/VkR/V3saSj+pkul8BKh5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MW3PR11MB4697.namprd11.prod.outlook.com (2603:10b6:303:2c::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.15; Thu, 15 Sep
 2022 21:54:44 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::b80a:cf49:9118:24e7]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::b80a:cf49:9118:24e7%6]) with mapi id 15.20.5612.022; Thu, 15 Sep 2022
 21:54:44 +0000
Date: Thu, 15 Sep 2022 14:54:42 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20220915215442.lglgfn4tk44llxji@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20220915-stolen-v1-0-117c5f295bb2@intel.com>
 <166327671922.11974.16435649127429970763@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <166327671922.11974.16435649127429970763@emeril.freedesktop.org>
X-ClientProxiedBy: BY5PR13CA0025.namprd13.prod.outlook.com
 (2603:10b6:a03:180::38) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MW3PR11MB4697:EE_
X-MS-Office365-Filtering-Correlation-Id: 25a8ba66-8455-4dfc-75e4-08da9764e61a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b6a8z850DKr+dFjHZOCTmO4EP+SiMLzGc9G+NhFyG9C4wARXwjPAvkuuI6W40RPbDCdfIeUAY4xNkyUlocqq+9NxV+DDO/jLw8kg7QR4q3Q+DjQmPNlCUx8uRv3Gwf0HPbnZXd5RXwla0t12aWj7scBsqVYvS9NZE6jh/LgqoFlLOVDowDMTd+4DakqURGgAi7RvC4LkD2FdKmMMWGaLxDlV20CDNuBz8l3eAHpjQqX7dF7+99NTVFZpLUoWD6cpjTl7+iTsxRkfUJWKPfDCL5GY+UiTj3I5+pnGhvw1y9jHI7e+hdWa3hw1D7s9+lG86pBw9oemhONXNBUHuhCo0DZPOwKEmVlJhm2u4wksRLJOk/sEQEjlHRWbD4JwO+APOPr+EriNVpag/rkqPGzAJTrQTBGd+p9S4iDVIVwFeV/qlZ1u9KhH/jTzZRmyXYfGQqFs02xyr9zaUZe0SOQxmlnYaaK04sDBWpHKsQyPEpsFjSdxF08fQnYvhbEhLDkhg+vr9Fu6fc+MVn3Yr67aZbv2u22PYKVFfMCWD948RaTGjALS1gDkv15wV6ogKiuF2Ju3GiP5YMwLwK7j2Kw/I1DrY3LA6YvvGerps9jEW/3sD03CDuUtQEM5GaLE0mNZsGp7iQ4n5MtYg5OVo8UmPVLMSDUk+nDttnAP5aCfLob1tKTtYCDWYWFIy7ojwweftdMJiR/kQNvSxVBsASk90mXm5ZSBpRkzbg+Du3BXIjWwSSFtbwFClE1RSF7bSClM
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(346002)(39860400002)(396003)(376002)(451199015)(8936002)(2906002)(86362001)(6486002)(5660300002)(6506007)(36756003)(83380400001)(6916009)(316002)(66556008)(478600001)(66476007)(966005)(66946007)(82960400001)(38100700002)(6512007)(9686003)(41300700001)(26005)(30864003)(1076003)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qKcqKQUcoGwXGDsH8KsHGhUMCf/spIO1HY7OBoDmP9jDtwwZDSNWyYmTHxDK?=
 =?us-ascii?Q?GZO+GWIqTy0xk/ReJjH8O6KNYqiQUODqQYEJh1p6P2zwU/mNwxAQ0Ob+8bZl?=
 =?us-ascii?Q?f0gf/rgEChW7vedVFmYZHR50vgQMN+bp2wzd+EOGhoIYTvcfdU+rFg8ODZHJ?=
 =?us-ascii?Q?cW8ojjiJmfIS97ARL/UGgSW8d5xB2Jb+uGRwCvwbdTIS2yS4xXilmsSNgwCk?=
 =?us-ascii?Q?bxU/yGdqJDxyidUqIhHJvc097CoyVlo47hOLuCc9JQs2RdRxgnvGMvdgNCd8?=
 =?us-ascii?Q?oPJq97brvWBJ6ox4KEel7kwvvI42AEDEdLadAcQ4cM4hQQS+pR6fImLgX2mf?=
 =?us-ascii?Q?Qx3O8xmKW6AJCOHC4wGHMHXhO1qlK9GuXyhPDucmvhLo/zUF7kCLJYNPoh1E?=
 =?us-ascii?Q?OyjgZJbS41p5yNwsKcodxDJXGwY+v//tW/pm9xJOgQw1X8YxbmciAHIMsq01?=
 =?us-ascii?Q?7fd2ea26KQPhGwG7T9+pnSXW0g9a+j9coA9Hatmo9tn94/5rxX0t9K/zLdz6?=
 =?us-ascii?Q?UliS9ojfhjfq6EQEYcnoMaJT51WrHMgluWLPht/Om7P2y6OYlqvJSxV7Y9rb?=
 =?us-ascii?Q?d5D7JKV4U4o8zjgP2KEsvOFsLSRIN+YvsXr7tlhESaMqJBotLXAon6EUV7+O?=
 =?us-ascii?Q?kBcwomyhTLIEW+4WiC8kZCDcPn1Lh9iGVmgmrQ5qTNM1z4BzoBxoy9zzMxRK?=
 =?us-ascii?Q?g3x3fk5hAs/g5fjM09Dien3QxbxZNE8vhPeTP3TTWyOSRRwvD9tk0lX0KnL7?=
 =?us-ascii?Q?1PB+Pt3oF8n3lvvYH6r3xF5Feh7Og1FQTGhPA7Jk2e1R7Tv+Oi7XwQnn3XZC?=
 =?us-ascii?Q?Id9Y8mGfBxWBo1MJ58C7QSjtiEN0GDH0ax8XKb/F0Z0nYFGJQFnbZRjpkaIc?=
 =?us-ascii?Q?oPBf2rt5BGyb5SlzAVHgQxO4tn/iDH2XnFAAlCt56whVvNmeKhuQ1p2pSOy1?=
 =?us-ascii?Q?prNoBEvSkDUaI+UCGb75wbCD72s2fM2hoEWavzh/dQab8k0FnKhejqYaogpJ?=
 =?us-ascii?Q?IzjrfLaLTDVkHz9zM3koTkUADDdxMRvVmjoJ7W57c4og6EQTl1QM7l4hsNdE?=
 =?us-ascii?Q?ySN9Nvn9JLAC8ZI/J//iZFcti8mU73of+GaZIPyYhYs4RAX2VrHWSYitZ77j?=
 =?us-ascii?Q?YY2qhxI93mCG4b4/msbV0UeKzpSC3HbRBy2BvIAEhbMO6ZVYliCv0Hv5b0g8?=
 =?us-ascii?Q?OsMctaoNM+u0ie/jHJK9EbKvLVzX3bArhRypLtLnXt+qCyO6RRO+wGpX1JNN?=
 =?us-ascii?Q?dKXXNcHhUuK5gxU9YpoHhemWjkAWawZPVF/uOrO9tG5/SJRDohLyGrJauXtl?=
 =?us-ascii?Q?6AhXl2SsYTOWUzRyvUl1ypM5TBZ6vsnW85IlQm7bHGdRVEhVJGn5ptchGVOi?=
 =?us-ascii?Q?7uanggDYlQ9BKy/vOLOPhev1e5dHz7BpyDG5Tl5K3lYmDYCqQ2hZgi2DU7DQ?=
 =?us-ascii?Q?d1FfpV+97H69hC+Ia1XRGLeMqFvJFEaLUSvNkIYcsy42SJmH1FqxF3c/cJC3?=
 =?us-ascii?Q?kWTnomR0gFRno0OPAd61M4gHSatB/2TAKkFbE9RoDHETTzHf12N6ZvcebrS+?=
 =?us-ascii?Q?cRN0T+CjGalTi6WetqaR15KIZ+rv1OxPzjkFZf8QvjdaCOLyw/HoL9zFNxrV?=
 =?us-ascii?Q?4g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 25a8ba66-8455-4dfc-75e4-08da9764e61a
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2022 21:54:44.1563 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5kpg0HRsXMhrZuCWVeNB6kXKjo7UaMpHEmRCBEzMCBGpISm5N+piatA+bZ7Tf5QfqJpGRMUNWkHCh1GfDZHx78yh96nbXLHLhSVo9HBBEl8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4697
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Improvements_to_stolen_memory_setup?=
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

On Thu, Sep 15, 2022 at 09:18:39PM +0000, Patchwork wrote:
>== Series Details ==
>
>Series: drm/i915: Improvements to stolen memory setup
>URL   : https://patchwork.freedesktop.org/series/108620/
>State : failure
>
>== Summary ==
>
>CI Bug Log - changes from CI_DRM_12143 -> Patchwork_108620v1
>====================================================
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_108620v1 absolutely need to be
>  verified manually.
>
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_108620v1, please notify your bug team to allow them
>  to document this new failure mode, which will reduce false positives in CI.
>
>  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108620v1/index.html
>
>Participating hosts (42 -> 40)
>------------------------------
>
>  Additional (2): fi-rkl-11600 bat-dg2-9
>  Missing    (4): fi-kbl-soraka fi-ctg-p8600 fi-hsw-4200u fi-tgl-u2
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_108620v1:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@i915_selftest@live@gt_engines:
>    - fi-ilk-650:         [PASS][1] -> [DMESG-WARN][2] +40 similar issues
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/fi-ilk-650/igt@i915_selftest@live@gt_engines.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108620v1/fi-ilk-650/igt@i915_selftest@live@gt_engines.html

ha, thanks

<7> [175.357162] i915 0000:00:02.0: [drm:i915_gem_init_stolen [i915]] ELK_STOLEN_RESERVED = 00000000
<3> [175.357332] i915 0000:00:02.0: [drm] *ERROR* inconsistent reservation 0x00000000e0000000 + 0x0000000000000000; ignoring

looks like I screwed somewhere for the older platforms.

>
>  * igt@i915_selftest@live@guc_multi_lrc:
>    - fi-snb-2600:        [PASS][3] -> [DMESG-WARN][4] +40 similar issues
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/fi-snb-2600/igt@i915_selftest@live@guc_multi_lrc.html
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108620v1/fi-snb-2600/igt@i915_selftest@live@guc_multi_lrc.html
>
>  * igt@i915_selftest@live@reset:
>    - fi-snb-2520m:       [PASS][5] -> [DMESG-WARN][6] +40 similar issues
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/fi-snb-2520m/igt@i915_selftest@live@reset.html
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108620v1/fi-snb-2520m/igt@i915_selftest@live@reset.html

/me procures a ilk and snb for proper test next.

Lucas De Marchi

>
>
>#### Suppressed ####
>
>  The following results come from untrusted machines, tests, or statuses.
>  They do not affect the overall result.
>
>  * igt@fbdev@read:
>    - {fi-tgl-mst}:       [PASS][7] -> [FAIL][8]
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/fi-tgl-mst/igt@fbdev@read.html
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108620v1/fi-tgl-mst/igt@fbdev@read.html
>
>  * igt@gem_exec_suspend@basic-s0@smem:
>    - {fi-tgl-mst}:       [DMESG-WARN][9] ([i915#5122]) -> [DMESG-WARN][10]
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/fi-tgl-mst/igt@gem_exec_suspend@basic-s0@smem.html
>   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108620v1/fi-tgl-mst/igt@gem_exec_suspend@basic-s0@smem.html
>
>
>New tests
>---------
>
>  New tests have been introduced between CI_DRM_12143 and Patchwork_108620v1:
>
>### New IGT tests (1) ###
>
>  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-7:
>    - Statuses : 1 pass(s)
>    - Exec time: [3.68] s
>
>
>
>Known issues
>------------
>
>  Here are the changes found in Patchwork_108620v1 that come from known issues:
>
>### IGT changes ###
>
>#### Issues hit ####
>
>  * igt@gem_huc_copy@huc-copy:
>    - fi-rkl-11600:       NOTRUN -> [SKIP][11] ([i915#2190])
>   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108620v1/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html
>
>  * igt@gem_lmem_swapping@basic:
>    - fi-rkl-11600:       NOTRUN -> [SKIP][12] ([i915#4613]) +3 similar issues
>   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108620v1/fi-rkl-11600/igt@gem_lmem_swapping@basic.html
>
>  * igt@gem_tiled_pread_basic:
>    - fi-rkl-11600:       NOTRUN -> [SKIP][13] ([i915#3282])
>   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108620v1/fi-rkl-11600/igt@gem_tiled_pread_basic.html
>
>  * igt@i915_pm_backlight@basic-brightness:
>    - fi-rkl-11600:       NOTRUN -> [SKIP][14] ([i915#3012])
>   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108620v1/fi-rkl-11600/igt@i915_pm_backlight@basic-brightness.html
>
>  * igt@i915_selftest@live@client:
>    - fi-elk-e7500:       [PASS][15] -> [DMESG-WARN][16] ([i915#6836]) +40 similar issues
>   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/fi-elk-e7500/igt@i915_selftest@live@client.html
>   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108620v1/fi-elk-e7500/igt@i915_selftest@live@client.html
>
>  * igt@i915_selftest@live@gem:
>    - fi-blb-e6850:       [PASS][17] -> [DMESG-FAIL][18] ([i915#4528])
>   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/fi-blb-e6850/igt@i915_selftest@live@gem.html
>   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108620v1/fi-blb-e6850/igt@i915_selftest@live@gem.html
>
>  * igt@i915_suspend@basic-s3-without-i915:
>    - fi-rkl-11600:       NOTRUN -> [INCOMPLETE][19] ([i915#5982])
>   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108620v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
>
>  * igt@kms_chamelium@hdmi-edid-read:
>    - fi-rkl-11600:       NOTRUN -> [SKIP][20] ([fdo#111827]) +7 similar issues
>   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108620v1/fi-rkl-11600/igt@kms_chamelium@hdmi-edid-read.html
>
>  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
>    - fi-rkl-11600:       NOTRUN -> [SKIP][21] ([i915#4103])
>   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108620v1/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
>
>  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
>    - fi-bsw-kefka:       [PASS][22] -> [FAIL][23] ([i915#6298])
>   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
>   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108620v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
>
>  * igt@kms_force_connector_basic@force-load-detect:
>    - fi-rkl-11600:       NOTRUN -> [SKIP][24] ([fdo#109285] / [i915#4098])
>   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108620v1/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html
>
>  * igt@kms_pipe_crc_basic@suspend-read-crc:
>    - fi-ivb-3770:        NOTRUN -> [SKIP][25] ([fdo#109271])
>   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108620v1/fi-ivb-3770/igt@kms_pipe_crc_basic@suspend-read-crc.html
>
>  * igt@kms_psr@primary_page_flip:
>    - fi-rkl-11600:       NOTRUN -> [SKIP][26] ([i915#1072]) +3 similar issues
>   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108620v1/fi-rkl-11600/igt@kms_psr@primary_page_flip.html
>
>  * igt@kms_setmode@basic-clone-single-crtc:
>    - fi-rkl-11600:       NOTRUN -> [SKIP][27] ([i915#3555] / [i915#4098])
>   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108620v1/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html
>
>  * igt@prime_vgem@basic-read:
>    - fi-rkl-11600:       NOTRUN -> [SKIP][28] ([fdo#109295] / [i915#3291] / [i915#3708]) +2 similar issues
>   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108620v1/fi-rkl-11600/igt@prime_vgem@basic-read.html
>
>  * igt@prime_vgem@basic-userptr:
>    - fi-rkl-11600:       NOTRUN -> [SKIP][29] ([fdo#109295] / [i915#3301] / [i915#3708])
>   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108620v1/fi-rkl-11600/igt@prime_vgem@basic-userptr.html
>
>  * igt@runner@aborted:
>    - fi-blb-e6850:       NOTRUN -> [FAIL][30] ([fdo#109271] / [i915#2403] / [i915#4312])
>   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108620v1/fi-blb-e6850/igt@runner@aborted.html
>    - fi-bdw-5557u:       NOTRUN -> [FAIL][31] ([i915#4312])
>   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108620v1/fi-bdw-5557u/igt@runner@aborted.html
>
>
>  {name}: This element is suppressed. This means it is ignored when computing
>          the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
>  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
>  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
>  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
>  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
>  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
>  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
>  [i915#5982]: https://gitlab.freedesktop.org/drm/intel/issues/5982
>  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
>  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
>  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>  [i915#6836]: https://gitlab.freedesktop.org/drm/intel/issues/6836
>
>
>Build changes
>-------------
>
>  * Linux: CI_DRM_12143 -> Patchwork_108620v1
>
>  CI-20190529: 20190529
>  CI_DRM_12143: bb4f6b2281b11b009210f62eecd291f7b75c1e85 @ git://anongit.freedesktop.org/gfx-ci/linux
>  IGT_6656: 24100c4e181c50e3678aeca9c641b8a43555ad73 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>  Patchwork_108620v1: bb4f6b2281b11b009210f62eecd291f7b75c1e85 @ git://anongit.freedesktop.org/gfx-ci/linux
>
>
>### Linux commits
>
>d9b4c33384c5 drm/i915/dgfx: Make failure to setup stolen non-fatal
>fc192e2c02b6 drm/i915: Split i915_gem_init_stolen()
>f2b6dafac523 drm/i915: Add missing mask when reading GEN12_DSMBASE
>e22a03ddc301 drm/i915: Move dsm assignment to be after adjustment
>
>== Logs ==
>
>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108620v1/index.html
