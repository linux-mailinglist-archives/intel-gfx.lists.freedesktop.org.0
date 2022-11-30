Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E0A63E396
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Nov 2022 23:40:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D93610E027;
	Wed, 30 Nov 2022 22:40:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48B0C10E027
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 22:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669848050; x=1701384050;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ZSbgiTCMGyzXttnVu+V2kmL4s7PH3qnh33RN+FklzWw=;
 b=ReF7aXbJVpxdW0BTtFhh9ZSB8Xc+ptKInrK0v35SgrPVN1YROipXef5k
 Y41+CYooqXbyiTFzzga7akcbAfZ57x0fS+RJFPtbscVjmYLfKzKZRqJf0
 upY2ZMQfxpVen29i7VF/mJ1NKuUzZpBYIWVOdO7TqBYWuxf3z8mD4N9+p
 54IfAcR7S/X+rJYHQxHJhkDpUWjdSjYJWGzUL/goZ4KzqamzTWDrnd9QJ
 5ITVpQFz0HHUR6j/hLY3u5UifLZTyuon1vlivkva7vkmomknqGls1CaJc
 7Oduta4vBsOCh6a4V+8u1qd84wO0XxFewEPbxSU1qJeRpIN8VYE5jC0Ld Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="379806427"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="379806427"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 14:40:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="676992658"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="676992658"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 30 Nov 2022 14:40:49 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 14:40:48 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 14:40:48 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 14:40:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UAB/fvoiYgtgu/rbS1O8qR+ijALFkWvo5DOJp4MZFdetd06C0AY9Mrd9z9ODX7AB8DOY/AWFuM12TdkezXubRfj6ItpMQUexYmy+B26ep9g7jd8Jka8cSkF+Z58ST0xiFWzRidRFLxY11O7BRmxxU/bLYYQF8/iai3YJo6K0p6elboHUCWqkBtNE5UffKhRCZxp5zN3Vc2/agRmuCRYYWwQh4q3z3xppBMRZmGkd4Ai38oV67E00GfCn2IeDEiRkm3CftiDrZLxjm4NpYYxYYpo2PRSB2TH2Jf6+mKGVyGBnEwiWIrt55jr5srP9Uo5+CPMr2JDkeWg65YMSJfgC+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ejU/jReS4st3MZ2Oh/V8+qhQ19hQ9VOHSKa8cXI8zHU=;
 b=V4ENFwwpBhJ1F4Gy/axxKJWBJVA5Vw5MUmDD1NJEufIZoNAnF7qxo144rHv6YrTUC4khw2vos4sMG2t57Sg39q7WnkpAcpQQyk4GfS30EpW+QkZ5OWk6uoc76uirsxi9PfRVybLupfyVSgmgZ48gq5yjpTkk7c6zVboXXYe1L0svrS55+dFv6J/CJ8XG+s7E0dhUoVz9qiVqNDaJ52RsIUO5cp1/e1wz1J2WdbWZTyOiuBTcEAKcMzzzT4V3wuvk6mTPhNqYMVjn7F5Kg1XiA31lvGgpc7Y9HxWyQHviTkUkmSeTzAAudaOcnccSVv+M3/nAYrzM43cfIJrKAZDIHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by DS0PR11MB6541.namprd11.prod.outlook.com (2603:10b6:8:d3::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Wed, 30 Nov
 2022 22:40:46 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475%7]) with mapi id 15.20.5857.023; Wed, 30 Nov 2022
 22:40:46 +0000
Date: Wed, 30 Nov 2022 14:40:42 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y4fb6qENkGRW6NfW@mdroper-desk1.amr.corp.intel.com>
References: <20221128233014.4000136-1-matthew.d.roper@intel.com>
 <166982681082.2880.4059864651527625978@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166982681082.2880.4059864651527625978@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR05CA0070.namprd05.prod.outlook.com
 (2603:10b6:a03:74::47) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|DS0PR11MB6541:EE_
X-MS-Office365-Filtering-Correlation-Id: b3c0b38e-8e6a-406e-4ac3-08dad323eb2f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ele6EsYu+UQOai/2DAVMvTXxYwPSts5Z5BIXNP4rVGRj0U3m7HQgP7KRw0dVE2pBOe+2E+GuvCV9qCVajgf6KNcD8XSYNKxj3ZVmTmQYT/o1R9yzWwSnom+J8kji7+Wxv46uwGwY5Rieoqn1ZPgcaaMi5oLdCbLWlrxG0CzIiOLxZAQeRukHIKkdfmttaNfpDoTDQSz+DS1YKIS/6VvmNuClx1QJ7HEMIUe5qTxsRYqGn1q3xNqp5NYaI9DB6mTKIWgokpg3kv0DZ4+lTJvEGHvQoeFexuYcZG+SorbcyV7Z0km8/Uq/SWd6bS0HrEvpu3wCS7yN/yx5KsJZbStx1BOiLySKF7s1Jd8D4q6gW3OJevWEuIXiSu6T7s32MQLrGLpPBtJllauG80to43MV2lR6A4rs8vzojH5SFk4Ee+18oAWtsvP8JiAjGHOSIhDsQNeWEzWIthYqtL9R3UXKU/SzhjcdHdcUxotJmWPtJxDjUsH+IHRlYprig3w5Ry5vwIYJ/aF0MsnhWVUlCqO3Ehu+laYdyEMT9sBccOJXYQkv3NuXLq9ae6S3t8Fh42XV9ZAJeu8OIwjA2s0m26gWsB2D0YUBQ4aQlQEkicE7Zz9lJb0f1JfHETYxCxTf8LlUtk6KKgaevVuqDBAh94r5ubt3qY1D99zddZ1zlsiLbhZCfrkG6aEUaqGyB/XXrAbO
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(376002)(366004)(39860400002)(396003)(451199015)(83380400001)(2906002)(478600001)(6486002)(966005)(82960400001)(6506007)(38100700002)(6666004)(316002)(6916009)(107886003)(66556008)(66946007)(6512007)(4326008)(66476007)(8936002)(186003)(41300700001)(86362001)(26005)(5660300002)(30864003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lRhVmVwSPWlZ8xR4PbOHsHhw87AaaZVKN/1nUvTK9NAvL8H/DQ1fGWV6AaHl?=
 =?us-ascii?Q?ZTHZsEWy5x6EJRjFRxTLHBx2JDlpq+QUyKtAGBeS+HATh2DxikWWjADDP1VS?=
 =?us-ascii?Q?bn79uYdE/y+n0dkgIUqmtJbGq7HDgpHzvEFeCwxIhabBqN/dOV8AFjQXbX7t?=
 =?us-ascii?Q?jZIv8Y9ox664NnFcOWajFJEd3KBMZFckvmbnoo2FJX8bPIHW25J8nm8oChvt?=
 =?us-ascii?Q?OWD8AToa4ysVUjPFi+3rfzKb+1TyklY+Nm+I9tMoRYYaR1XJBI/jEQH1EJxA?=
 =?us-ascii?Q?MdXpJHnCGRwDDjNdEg0NySAGn/dGmoxEKfP9r/gRQpjoaL2mc0nI8aWnlx/b?=
 =?us-ascii?Q?4bmL3MtYCYewx9GQTRzrRL5gK/eRUPXbWysdnwg9uQ4APGtgCv/y06bSAS7X?=
 =?us-ascii?Q?j/zvUY0i1JrUFpih3cB4Arka7oefaR0n8bUkQVxRAR4QslARuOT6d7dm/Qtk?=
 =?us-ascii?Q?iuXfU0xtPfsT0/4aw37rkwS36LjfwA+h7wneF4Ph+YvE2Z13K7Y4Gr9x7HXT?=
 =?us-ascii?Q?UuJ/EwI5vZICxA9YJO0cp8sK/Sc7/LnsCfeoOyL2V97F4N62tsL45c7PuQzd?=
 =?us-ascii?Q?2rnGHYmWwdapHQrsSNK12THufAmkpirknxEThBAr899aqkUcJVl8RHVIgFa6?=
 =?us-ascii?Q?g/uJ4NcUY1useia38dKDSh9Cjs/KP+IO3Cisa/Vz4TYMPENxs9mvE0zMe9Hu?=
 =?us-ascii?Q?H/NzqOKpwmfCgjbl5GwgMECUcfhNj6B8p1W0ToU+ZPGT2+2dfbkGCXBt8NF/?=
 =?us-ascii?Q?SycImz7V5Wd7HoD5GMQuJImpLi+M4NSoffKs8sN0cQN2EUZQN7EAOm0w61Pt?=
 =?us-ascii?Q?leMSNPR4Qqz/kcnN95mEOKesVRncZfk2rgIZsh83xkd+cBMwgjgjSRYt1QWX?=
 =?us-ascii?Q?FdqfL94hhrkZ6edMALg69HKXBSn1qIveVX706z2TQ+LzOAA2BJj7kWPYVhQW?=
 =?us-ascii?Q?5qOv0xTorQ4iIQ1rm/9OMUJnQsRq4Hq/RDs+8kaucWMyGHyWoGJGM//AX0lg?=
 =?us-ascii?Q?FRgvDLW/J8acIyJnUYOq8IWQ4fRL/x2ZNGX8m1GFVbwwxPV3aGeInRKlz0DX?=
 =?us-ascii?Q?HQb9RxtlB15UQUTzPrIUTx29E75tGhFXnnDJCM2pl3l7yWSmrkLK/k5+cgV5?=
 =?us-ascii?Q?1FTDGkOH1/83TmtcSxcDdshOQLl1909f7ixwee6009FI2L2tjXHvfgy+FujX?=
 =?us-ascii?Q?bVsnA1YgekmJJDTXWHoIAJnhLshgqEiHicvgNtoQf56a0Bmk3rZ0bplGnfvm?=
 =?us-ascii?Q?moYid951QdwfyFO23QGAFejrIDCdJV4BXtKwrKeuLGZ4Ii1IE7peZMuOccF+?=
 =?us-ascii?Q?mDZMfTH5buv+/nGB5aAoc678VNMBO24sEgdR/wA+WFIiCAOhWZ86kgNsN93G?=
 =?us-ascii?Q?ZYWNFkgBAstEj8fuDC5dkXWWv1Jscu77gSXI9cpnDCzK9pAM77f8w0PnUIKv?=
 =?us-ascii?Q?dzdM52X3VP0bmXUpPiJH9U96DshLjfYlGRGUxHeE2rE4yoY8kvUm4PR5tcTZ?=
 =?us-ascii?Q?YXrzCevOWXYl7okOpFEo5etiOE9/vk7cuKXOtJ/QJ8/QFUdYMY7bYKBqtC3X?=
 =?us-ascii?Q?acj0TmvUnrKaKbefMYVjTHNBGSBjHreIdp/MqXh3SAa14LJPMkXz9uTB4L7+?=
 =?us-ascii?Q?Og=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b3c0b38e-8e6a-406e-4ac3-08dad323eb2f
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2022 22:40:46.1125 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v4ObYcbv4nm9XQOVyvGQ2GUwWbHH7XHleIlY88SXrcwqmErKWzPNkJXIU1fQS8967WgnlbrnR7GkQdipyqeKPPMt6AO9EJRwrzV1OUKRd1s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6541
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5=3A_dedicated_MCR_locking_and_hardware_semaphore_=28rev3=29?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 30, 2022 at 04:46:50PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: i915: dedicated MCR locking and hardware semaphore (rev3)
> URL   : https://patchwork.freedesktop.org/series/111220/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12455 -> Patchwork_111220v3
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_111220v3 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_111220v3, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/index.html
> 
> Participating hosts (29 -> 32)
> ------------------------------
> 
>   Additional (5): fi-kbl-7567u fi-glk-dsi fi-glk-j4005 fi-kbl-x1275 fi-kbl-8809g 
>   Missing    (2): bat-dg1-6 fi-skl-6600u 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_111220v3:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_suspend@basic-s2idle-without-i915:
>     - fi-elk-e7500:       [PASS][1] -> [WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12455/fi-elk-e7500/igt@i915_suspend@basic-s2idle-without-i915.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/fi-elk-e7500/igt@i915_suspend@basic-s2idle-without-i915.html

(i915_suspend:4706) igt_kmod-WARNING: Could not stop 1 audio process(es)

Not related to this series.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@i915_selftest@live@hangcheck:
>     - {fi-jsl-1}:         [PASS][3] -> [INCOMPLETE][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12455/fi-jsl-1/igt@i915_selftest@live@hangcheck.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/fi-jsl-1/igt@i915_selftest@live@hangcheck.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_111220v3 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_huc_copy@huc-copy:
>     - fi-kbl-7567u:       NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#2190])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html
>     - fi-kbl-8809g:       NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#2190])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html
>     - fi-glk-dsi:         NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#2190])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/fi-glk-dsi/igt@gem_huc_copy@huc-copy.html
>     - fi-glk-j4005:       NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#2190])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html
>     - fi-kbl-x1275:       NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#2190])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - fi-glk-j4005:       NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#4613]) +3 similar issues
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/fi-glk-j4005/igt@gem_lmem_swapping@basic.html
>     - fi-kbl-7567u:       NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#4613]) +3 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - fi-glk-dsi:         NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#4613]) +3 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/fi-glk-dsi/igt@gem_lmem_swapping@verify-random.html
>     - fi-kbl-x1275:       NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#4613]) +3 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/fi-kbl-x1275/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_tiled_blits@basic:
>     - fi-glk-dsi:         NOTRUN -> [SKIP][14] ([fdo#109271]) +12 similar issues
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/fi-glk-dsi/igt@gem_tiled_blits@basic.html
> 
>   * igt@i915_module_load@reload:
>     - fi-kbl-8809g:       NOTRUN -> [DMESG-WARN][15] ([i915#6899])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/fi-kbl-8809g/igt@i915_module_load@reload.html
> 
>   * igt@kms_chamelium@dp-crc-fast:
>     - fi-glk-dsi:         NOTRUN -> [SKIP][16] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/fi-glk-dsi/igt@kms_chamelium@dp-crc-fast.html
>     - fi-kbl-x1275:       NOTRUN -> [SKIP][17] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/fi-kbl-x1275/igt@kms_chamelium@dp-crc-fast.html
> 
>   * igt@kms_chamelium@dp-hpd-fast:
>     - fi-kbl-7567u:       NOTRUN -> [SKIP][18] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/fi-kbl-7567u/igt@kms_chamelium@dp-hpd-fast.html
> 
>   * igt@kms_chamelium@hdmi-crc-fast:
>     - fi-glk-j4005:       NOTRUN -> [SKIP][19] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/fi-glk-j4005/igt@kms_chamelium@hdmi-crc-fast.html
> 
>   * igt@kms_chamelium@vga-edid-read:
>     - fi-kbl-8809g:       NOTRUN -> [SKIP][20] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/fi-kbl-8809g/igt@kms_chamelium@vga-edid-read.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
>     - fi-kbl-8809g:       NOTRUN -> [SKIP][21] ([fdo#109271]) +24 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/fi-kbl-8809g/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
> 
>   * igt@kms_psr@cursor_plane_move:
>     - fi-kbl-7567u:       NOTRUN -> [SKIP][22] ([fdo#109271]) +30 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/fi-kbl-7567u/igt@kms_psr@cursor_plane_move.html
> 
>   * igt@kms_psr@sprite_plane_onoff:
>     - fi-glk-j4005:       NOTRUN -> [SKIP][23] ([fdo#109271]) +9 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/fi-glk-j4005/igt@kms_psr@sprite_plane_onoff.html
> 
>   * igt@prime_vgem@basic-userptr:
>     - fi-kbl-x1275:       NOTRUN -> [SKIP][24] ([fdo#109271]) +10 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/fi-kbl-x1275/igt@prime_vgem@basic-userptr.html
> 
>   * igt@runner@aborted:
>     - fi-kbl-8809g:       NOTRUN -> [FAIL][25] ([i915#4312] / [i915#4991])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/fi-kbl-8809g/igt@runner@aborted.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@write:
>     - fi-apl-guc:         [SKIP][26] ([fdo#109271]) -> [PASS][27] +6 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12455/fi-apl-guc/igt@fbdev@write.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/fi-apl-guc/igt@fbdev@write.html
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - {bat-rpls-2}:       [DMESG-WARN][28] ([i915#6434]) -> [PASS][29]
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12455/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@gem_exec_suspend@basic-s3@smem:
>     - {bat-rpls-1}:       [DMESG-WARN][30] ([i915#6687]) -> [PASS][31]
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12455/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - {fi-ehl-2}:         [INCOMPLETE][32] ([i915#5153]) -> [PASS][33]
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12455/fi-ehl-2/igt@i915_selftest@live@hangcheck.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/fi-ehl-2/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_addfb_basic@bad-pitch-0:
>     - fi-apl-guc:         [DMESG-WARN][34] -> [PASS][35] +40 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12455/fi-apl-guc/igt@kms_addfb_basic@bad-pitch-0.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/fi-apl-guc/igt@kms_addfb_basic@bad-pitch-0.html
> 
>   
> #### Warnings ####
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - fi-apl-guc:         [DMESG-WARN][36] -> [INCOMPLETE][37] ([i915#7073])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12455/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5153]: https://gitlab.freedesktop.org/drm/intel/issues/5153
>   [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434
>   [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
>   [i915#6899]: https://gitlab.freedesktop.org/drm/intel/issues/6899
>   [i915#7073]: https://gitlab.freedesktop.org/drm/intel/issues/7073
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12455 -> Patchwork_111220v3
> 
>   CI-20190529: 20190529
>   CI_DRM_12455: 1698371742cb7b775e043a383abe49074a305a60 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7076: 888725538e0d6bbb94bbbb1ac278d4afcbbbdad0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_111220v3: 1698371742cb7b775e043a383abe49074a305a60 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> 3d875d326e79 drm/i915/mtl: Hold forcewake and MCR lock over PPAT setup
> 73e2c38d82dc drm/i915/mtl: Add hardware-level lock for steering
> b0cb4e393073 drm/i915/gt: Add dedicated MCR lock
> 7dd4f5129977 drm/i915/gt: Pass gt rather than uncore to lowest-level reads/writes
> 7657679ea7a2 drm/i915/gt: Correct kerneldoc for intel_gt_mcr_wait_for_reg()
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v3/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
