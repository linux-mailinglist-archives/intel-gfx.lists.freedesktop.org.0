Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5795AFBB6
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 07:28:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F31010E26B;
	Wed,  7 Sep 2022 05:27:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD18C10E279
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 05:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662528471; x=1694064471;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=46MKamBOnLBKuu9Tn/o4f2OkAFdAssBTCX1tZ9SNaeI=;
 b=hIKAVLAkkVH60HB/c6TiX/GMi6KDdts8SSX5C7cDkKJgeATmzGeufvj4
 VcnTk5MhZCukh9+h6pWLg2gVJdnQx0RZqZRL6UHu+EDCLGDggrAmgwnxX
 OMxUSDkpPTL4WWtCF5zOVVQf/sFLCZAcMvrgVXX43AOI+69W5dZsuyfwn
 +/9WCJlBrF6uYKCZ0NIpwSb0Wnof3Ch0+5JFIkngVfHnAuu/WQoyhoCpU
 Hj6vyeM3afmmDT7GBa1pOmF4UA7DWkJoCzlyHCsvYx6TF6SfgCnk3r1BG
 xooKcRO+dt1y88gN/tLzyt46dN5Z27l+0iZ6iRVJu7FY8Uicm1amMZ2Xj Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="383079011"
X-IronPort-AV: E=Sophos;i="5.93,295,1654585200"; d="scan'208";a="383079011"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 22:27:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,295,1654585200"; d="scan'208";a="676017598"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 06 Sep 2022 22:27:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 22:27:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 22:27:49 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 6 Sep 2022 22:27:49 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 6 Sep 2022 22:27:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kr4En+POAXozGbAs391EMsZqSK4CvuxkFf1/rStETelxrFbzJ7kpim9qDxEF8Gx+krA7WhKKdN/zOHhKdMySNHkg78nYLtqpHgz0PudA2ExXFB0MwhLtWK61CUniha0qh4ivggSCjE0/VBGhg5VWBlleOE9s2feIFSrnZKWVQban+LHG+UTjOk/0nnX/VMdFuTPjTtF6iVc/J78YCdYK/0CldgEST77Ktb2Zu2OHIyOoM0KPE5E/lCu12NBXPr7MZ8EM0WsyEAflnGOr3pFe5MMQmHiTYrjp3u2YRkVLvPa7JPma4NPhMzz2TKEAKkwBqoLYsAV6gWpllxJkH//fUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pNXyRKoOnPDkJqYlu2/NC6IeltHAc5ynbLn9W4WCVRo=;
 b=YpuZ8jDbOFHb3kJh3OVYYvOZ58ZDBVggGLne0kVXckexJYAbZCHGpBC5lEk0JXoPaQzV/n4VHZquULKKbi6xont7oaI0q9c/eVRc/pXui+AOmBwmB0sid7JlLNImHVRigSZKo6cmPZVjW1hbrmhU3Uk/drwwfwLh9Bprn0BmwQtghiZNzbVg1C99SNl9vZBtJ6EOiIU2vAcXBjBd7fOxxio/HaE7BpH1XaxOxNy/GRi1TDexaybY7FHviakkhFmldT13rIIKYHDSHhPBV8ECYE+2VQIY6dn5ssHV6m5gGCXWPcWHs+4slSWkDNKvGW5FNqadc/B/mX/CNtHlfVXLiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by BY5PR11MB4054.namprd11.prod.outlook.com (2603:10b6:a03:189::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.17; Wed, 7 Sep
 2022 05:27:46 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514%12]) with mapi id 15.20.5588.015; Wed, 7 Sep 2022
 05:27:46 +0000
Date: Tue, 6 Sep 2022 22:27:43 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Yxgrz3zIpxq8ash1@mdroper-desk1.amr.corp.intel.com>
References: <20220906234934.3655440-1-matthew.d.roper@intel.com>
 <166252358301.19839.5934388804145347816@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166252358301.19839.5934388804145347816@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR03CA0134.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::19) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 37c1fd01-dfbc-4148-c902-08da9091b22c
X-MS-TrafficTypeDiagnostic: BY5PR11MB4054:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GbgBrKFzMhWeDtnpFhRrABhAQa2Wqw4rEoZdbKvg0r5CpNPo/BmH8PbXBot44wzc/Gkbdv+iM0T0kv3C5kZn+aunwuVbjwoH/3ZviqUioxpxkX9t2F/09Mdc0Fnxe/eaL2H+pDWTnCsONkxJj3PPlvRkl46h0FUxe+PyYDFU7fm9QT4zMoEHMUw1nQf8nwi1UdeN213n5/12cdVBL5BdVEcYcGIB7diOGJTCsIWMyvT2NdeDcRIFPKgLHd4wy7EmV+XUu1BPbbRH+nSyo2wBpTpCOB8WvNag/4n8kbvuwesihUZZBL4L4pDvnRTkfZCNwW3qtiZd4B02+NuBgNzj7Hvwyo4LkMbuFJUDJLvPP/LlXy54SVt/eECT0WJRdxOCfTSi6hB1eyug+YvqfbprKqGFKAgkHEGuOqbPAMotS0czAJoxbWIi0SU2xdPbKp6XYku8v4cqYSEBibEC8B2iffIjDTfe/bLhFI8TMJiuoW5xbs8PYcibIKVQ+KCHzXP1wWGOrPPeeylZ83MmcLYY7Y8c4i8w1Qt2mjnFUNierGaVapy48kQ0FNGmpYpX26xt+SU8LWpeNM/9w/JFmcapl+uKIOSbvGtF83GusLQQa8RcgxvhvUxSl3IVD7jPopmjmePv6AfwOKy+EydfmfyarwqTDRnW4rfWnUsYY3cfLyIcqY+lfc88I2uPv14VCddMLXKuPA3Mrq56TgNpBrb5Ug+rL3UaiOsRn8AzviTI9gV8YQYf55BRRWELn3fJtWLFNdqt7OsZ75bn/6SM7bm1CA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(366004)(136003)(39860400002)(376002)(396003)(6512007)(2906002)(82960400001)(66556008)(38100700002)(4326008)(66946007)(316002)(66476007)(6916009)(30864003)(8936002)(83380400001)(186003)(6666004)(478600001)(6506007)(6486002)(26005)(5660300002)(966005)(86362001)(107886003)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ncdm20i+Iclc7nIk4kePKGyJLVlBb87uHnR3FOuuy0fhQyxJAKsiCNUK5Zk/?=
 =?us-ascii?Q?YObcHRxNks+TDWvXET5/O7J0Or8GX2CJkVir8esRoSgpxn84xQ9bN9wdhnMf?=
 =?us-ascii?Q?WHuLCwCBPK/c9WFUsX98oaXJXuf4AcQQhxTm6pEHHARojgbCv80fS3S43Rby?=
 =?us-ascii?Q?qpNwH4RowEq0LbFmkJxKbSOVhOPkYXgFFqQmjxrKOthgDpoIMRSQquJ0uzda?=
 =?us-ascii?Q?hu1GZ8nytNkRmJ4ItHf6EcEThI0D+XuG79hpHwpOtjE8GI4eyCZNPkVETrvh?=
 =?us-ascii?Q?EzFif7ghoInc61++IA1l79W2WsT2IxO1bE5qSCF4RaxOMkzqEDukuD1wZ55c?=
 =?us-ascii?Q?Tgdz5e00f7N+hFsDELpMdUyefkABs2IHyzVy68AmuQBNzeQQSQot/o+DFY4d?=
 =?us-ascii?Q?iBpfRQSgGYEj6A+HuE1hKEg2XkPOf2LQ4sHree6wA/sK8C39bhodJubMZ/g+?=
 =?us-ascii?Q?wv0LbJmLYOWA91GqjcanqzFnBpWKsaOnoxBzbF9/DGQ1DqvYdA/igiOpkR0g?=
 =?us-ascii?Q?ow1iVmZCBmgB6mCrdLg2LcwwExYQhsiDULBIOkbINwWCOhSO8A6DJOMfyL0r?=
 =?us-ascii?Q?z43K5Ix4IVH/lwHyis7dyfVDrn41N1Ct3Jpw8msALhUJ50ZM/+r02BFa2ff9?=
 =?us-ascii?Q?RrLJtkQtox4GZfndTtJIpm0tkO/jbSKDQk0whxkw4CZ3CTOLPWasoBJ3qhWI?=
 =?us-ascii?Q?Di4hVwjOPt4y6U1TC6eqeNzbw9A9Cz9V8F8VBddaHHoQSIgK3B0ZI7DENpjn?=
 =?us-ascii?Q?c9mXJb7pf5+pAXxI5Mi5A5d56RlwYGH/vqxBvZ5pzxCa7Xg6a/dM4zl2X6sC?=
 =?us-ascii?Q?apRVSvr39UuLDvSAB1bY3ZpViaGSNoctQ6XqZrOHqWdpCWBc5T5MoVJu103J?=
 =?us-ascii?Q?VCbd4QiQc5S33UTpP67uWR01lcgLC1UTWsDKtWH4vfbpJAemzcha2n/Gonnt?=
 =?us-ascii?Q?DgjaeG8DypjXiZazJUpxVu5ZDw1+znWMGOHy8KG9HGe/Yh11MqW+hGpGeOAs?=
 =?us-ascii?Q?GxAdbLuVOsPu6XkWX1ZyWTApWXFY6/wIO7Gch2PpbynqL3ak9Fi6faKG5SiV?=
 =?us-ascii?Q?G7sfhaeh8Jt7UoPuIiFmEe3kDBe+CZNUEnQeq4p/2jLGP/KKAqIJh5oGSTjU?=
 =?us-ascii?Q?8FKYVUfXDbF06Tka0EjWQTpgZPtuwLQvpqYnEXiT135MIPmmFgRjJSCMbVST?=
 =?us-ascii?Q?lp8YokrztPUEHbas45VvspAe4JTBcfYS6m6vuMi2y7HKurhj3tKzzkdO19Sm?=
 =?us-ascii?Q?BNOp1IlpwpD2keatXAMK/6Hl8EutNLwLM2PY4tjCT1sd9U7ILNzEWp6HjDHu?=
 =?us-ascii?Q?P4nZtXCOAMXRqsN/s/uGJ/NoylUsIUxE7186tj2ScjDcxeDOeX6ibtonEwsy?=
 =?us-ascii?Q?Zt4ivzHWL2EyzbrF2sN/DsN+E+okf71XugD1obVJOletLtpnM2RiKLmDjC6A?=
 =?us-ascii?Q?fV8Jw0WxUEWP/gPKS/C31lzwzk2rhy5nkgFNsmlEGeHHcpQ+Y63paVFJZNnF?=
 =?us-ascii?Q?1skKqBxJWOKLokmPajfFVjaDKDEfOnJE19CtSrjjiAiUhhFnjD1F4bHng4dM?=
 =?us-ascii?Q?9HjeWfJRZHJLtXRyUt5f0cYAOzQ4wpKAjVLtoVHrjgT2+Lp6qXvJrqTEQihD?=
 =?us-ascii?Q?AA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 37c1fd01-dfbc-4148-c902-08da9091b22c
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2022 05:27:46.2158 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o6sktuvuo7A0EQNsiABdgXsfOh6vfLQiSp9eg7RjWDe2/CutqsytxvCsXR0g1kHLPm80+qMam6QqT6kTyFzCf/WkVajHyRnNA6uZC0Af2RE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4054
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5=3A_Add_=22standalone_media=22_support_for_MTL_=28rev4=29?=
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

On Wed, Sep 07, 2022 at 04:06:23AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: i915: Add "standalone media" support for MTL (rev4)
> URL   : https://patchwork.freedesktop.org/series/107908/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12083_full -> Patchwork_107908v4_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_107908v4_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_107908v4_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (11 -> 12)
> ------------------------------
> 
>   Additional (1): shard-rkl 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_107908v4_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_ctx_exec@basic-close-race:
>     - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-tglb1/igt@gem_ctx_exec@basic-close-race.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-tglb5/igt@gem_ctx_exec@basic-close-race.html

Unexpected incomplete with no errors.  Does not appear to be related to
this series.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_107908v4_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][3] -> [TIMEOUT][4] ([i915#3063])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-tglb5/igt@gem_eio@unwedge-stress.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-tglb3/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#4525]) +2 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-iclb4/igt@gem_exec_balancer@parallel-out-fence.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb3/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2846])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-glk2/igt@gem_exec_fair@basic-deadline.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-glk1/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#2842])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][11] ([i915#2842])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_lmem_swapping@verify-random-ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][12] ([i915#4613])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-tglb2/igt@gem_lmem_swapping@verify-random-ccs.html
> 
>   * igt@gem_pxp@create-regular-context-1:
>     - shard-tglb:         NOTRUN -> [SKIP][13] ([i915#4270])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-tglb2/igt@gem_pxp@create-regular-context-1.html
> 
>   * igt@gen3_render_mixed_blits:
>     - shard-iclb:         NOTRUN -> [SKIP][14] ([fdo#109289]) +1 similar issue
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb5/igt@gen3_render_mixed_blits.html
> 
>   * igt@gen7_exec_parse@basic-allocation:
>     - shard-tglb:         NOTRUN -> [SKIP][15] ([fdo#109289])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-tglb2/igt@gen7_exec_parse@basic-allocation.html
> 
>   * igt@gen9_exec_parse@bb-start-cmd:
>     - shard-tglb:         NOTRUN -> [SKIP][16] ([i915#2527] / [i915#2856])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-tglb2/igt@gen9_exec_parse@bb-start-cmd.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - shard-tglb:         NOTRUN -> [SKIP][17] ([i915#6590])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-tglb2/igt@i915_pm_freq_mult@media-freq@gt0.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition:
>     - shard-tglb:         NOTRUN -> [SKIP][18] ([i915#1769])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-tglb2/igt@kms_atomic_transition@plane-all-modeset-transition.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
>     - shard-iclb:         NOTRUN -> [SKIP][19] ([i915#5286])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb5/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-addfb-size-overflow:
>     - shard-tglb:         NOTRUN -> [SKIP][20] ([i915#5286]) +1 similar issue
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-tglb2/igt@kms_big_fb@4-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][21] ([fdo#110725] / [fdo#111614])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb5/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
>     - shard-tglb:         NOTRUN -> [SKIP][22] ([fdo#111615])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-tglb2/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-iclb:         NOTRUN -> [SKIP][23] ([fdo#110723])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-bad-rotation-90-4_tiled_dg2_rc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][24] ([i915#3689] / [i915#6095]) +1 similar issue
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-tglb2/igt@kms_ccs@pipe-a-bad-rotation-90-4_tiled_dg2_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][25] ([i915#3689] / [i915#3886])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-tglb2/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][26] ([fdo#109278] / [i915#3886]) +1 similar issue
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb5/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_dg2_rc_ccs_cc:
>     - shard-tglb:         NOTRUN -> [SKIP][27] ([i915#6095])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-tglb2/igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_dg2_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][28] ([i915#3689])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-tglb2/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][29] ([fdo#111615] / [i915#3689]) +1 similar issue
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-tglb2/igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-d-bad-pixel-format-4_tiled_dg2_rc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#109278]) +6 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb5/igt@kms_ccs@pipe-d-bad-pixel-format-4_tiled_dg2_rc_ccs.html
> 
>   * igt@kms_chamelium@hdmi-hpd-storm-disable:
>     - shard-tglb:         NOTRUN -> [SKIP][31] ([fdo#109284] / [fdo#111827]) +3 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-tglb2/igt@kms_chamelium@hdmi-hpd-storm-disable.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>     - shard-glk:          [PASS][32] -> [FAIL][33] ([i915#2346])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][34] ([i915#3555]) +1 similar issue
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][35] ([i915#2672]) +8 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][36] ([i915#2672] / [i915#3555]) +1 similar issue
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#109280]) +5 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][38] ([fdo#109280] / [fdo#111825]) +12 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-tglb2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-tglb:         NOTRUN -> [SKIP][39] ([i915#1839])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-tglb2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1:
>     - shard-iclb:         [PASS][40] -> [SKIP][41] ([i915#5176]) +2 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-iclb6/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-vga-1:
>     - shard-snb:          NOTRUN -> [SKIP][42] ([fdo#109271]) +1 similar issue
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-snb4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-vga-1.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb4/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109441]) +2 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb4/igt@kms_psr@psr2_cursor_blt.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-tglb:         NOTRUN -> [FAIL][47] ([i915#132] / [i915#3467])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-tglb2/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_selftest@all:
>     - shard-iclb:         NOTRUN -> [SKIP][48] ([i915#6433])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb5/igt@kms_selftest@all.html
> 
>   * igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:
>     - shard-iclb:         NOTRUN -> [SKIP][49] ([i915#2530])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb5/igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame.html
> 
>   * igt@nouveau_crc@pipe-c-source-outp-inactive:
>     - shard-tglb:         NOTRUN -> [SKIP][50] ([i915#2530])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-tglb2/igt@nouveau_crc@pipe-c-source-outp-inactive.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-iclb:         [PASS][51] -> [FAIL][52] ([i915#5639])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-iclb1/igt@perf@polling-parameterized.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb6/igt@perf@polling-parameterized.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-apl:          [PASS][53] -> [DMESG-WARN][54] ([i915#180]) +1 similar issue
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-apl3/igt@perf_pmu@rc6-suspend.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-apl6/igt@perf_pmu@rc6-suspend.html
> 
>   * igt@prime_nv_pcopy@test1_macro:
>     - shard-tglb:         NOTRUN -> [SKIP][55] ([fdo#109291])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-tglb2/igt@prime_nv_pcopy@test1_macro.html
> 
>   * igt@sysfs_clients@busy:
>     - shard-iclb:         NOTRUN -> [SKIP][56] ([i915#2994])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb5/igt@sysfs_clients@busy.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [SKIP][57] ([i915#658]) -> [PASS][58]
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-iclb6/igt@feature_discovery@psr2.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb2/igt@feature_discovery@psr2.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-iclb:         [SKIP][59] ([i915#4525]) -> [PASS][60] +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-iclb8/igt@gem_exec_balancer@parallel.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb1/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - {shard-tglu}:       [FAIL][61] ([i915#2842]) -> [PASS][62]
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-tglu-4/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-tglu-3/igt@gem_exec_fair@basic-none-share@rcs0.html
>     - shard-iclb:         [FAIL][63] ([i915#2842]) -> [PASS][64]
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [SKIP][65] ([i915#2190]) -> [PASS][66]
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-tglb7/igt@gem_huc_copy@huc-copy.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-tglb5/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>     - shard-tglb:         [WARN][67] ([i915#2681]) -> [PASS][68]
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-tglb7/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-tglb6/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
> 
>   * igt@i915_selftest@live@gt_timelines:
>     - shard-iclb:         [DMESG-FAIL][69] ([i915#4391]) -> [PASS][70]
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-iclb7/igt@i915_selftest@live@gt_timelines.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb5/igt@i915_selftest@live@gt_timelines.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - shard-iclb:         [DMESG-WARN][71] ([i915#4391]) -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-iclb7/igt@i915_selftest@live@workarounds.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb5/igt@i915_selftest@live@workarounds.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip@toggle:
>     - shard-iclb:         [FAIL][73] ([i915#5072]) -> [PASS][74] +1 similar issue
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@toggle.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb2/igt@kms_cursor_legacy@cursor-vs-flip@toggle.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-snb:          [DMESG-WARN][75] ([i915#5090]) -> [PASS][76]
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-snb2/igt@kms_fbcon_fbt@fbc-suspend.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-snb4/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@wf_vblank-ts-check@b-edp1:
>     - shard-tglb:         [INCOMPLETE][77] -> [PASS][78]
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-tglb6/igt@kms_flip@wf_vblank-ts-check@b-edp1.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-tglb2/igt@kms_flip@wf_vblank-ts-check@b-edp1.html
> 
>   * igt@kms_psr@psr2_cursor_plane_onoff:
>     - shard-iclb:         [SKIP][79] ([fdo#109441]) -> [PASS][80]
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-iclb7/igt@kms_psr@psr2_cursor_plane_onoff.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
> 
>   * igt@perf@blocking:
>     - shard-tglb:         [FAIL][81] ([i915#1542]) -> [PASS][82]
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-tglb6/igt@perf@blocking.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-tglb2/igt@perf@blocking.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-tglb:         [FAIL][83] ([i915#5639]) -> [PASS][84]
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-tglb2/igt@perf@polling-parameterized.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-tglb7/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][85] ([i915#588]) -> [SKIP][86] ([i915#658])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-iclb:         [SKIP][87] ([i915#2920]) -> [SKIP][88] ([fdo#111068] / [i915#658])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb4/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-iclb:         [SKIP][89] ([fdo#111068] / [i915#658]) -> [SKIP][90] ([i915#2920]) +2 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12083/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3987]: https://gitlab.freedesktop.org/drm/intel/issues/3987
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
>   [i915#5090]: https://gitlab.freedesktop.org/drm/intel/issues/5090
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
>   [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12083 -> Patchwork_107908v4
> 
>   CI-20190529: 20190529
>   CI_DRM_12083: 6d9507979ab2eb2f0f4a57e491410eae49b330d0 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6646: c1f420ae84b76079cd32ac014cfdf95b5f2922f7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_107908v4: 6d9507979ab2eb2f0f4a57e491410eae49b330d0 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v4/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
