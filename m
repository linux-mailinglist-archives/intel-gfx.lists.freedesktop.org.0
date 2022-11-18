Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E84B62FF05
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 21:54:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F82B10E249;
	Fri, 18 Nov 2022 20:54:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88CA410E249
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 20:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668804882; x=1700340882;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=JfQxxQCPTs+7vSq2o3jHpTbPmnN36GPco2IoltFyYaI=;
 b=kPxsEUAlktwx3u4GdOxaNS9hVFygq8l0jel+ERsltk+A+zqm5UKWCOMY
 U6l2JEVAfWPI9Ofv+GtMIEBUDIN8S7eYOI0KYqLa2wazxKG/QpYzwfPmo
 9CBpKc9oP4Nlvlc1Fxds0DQ0SHE6y0vQrn760qapbGCreGVV2WEiBzhxb
 zdpBib8WHCnKicA0fxkla6OVPzbTZn9soIHaV89QiqV+/thAOSYNTuG4H
 BKNTrY1aA/3UbWQrKI9K6WJkcaccSaknaFr+v09gWdVHjcb6aUrX6Y5Lp
 f9SRR3uCQ4WGAkh/v/yWCIaXcErnhKAOkADAxnndudM333u3bIqcpD0lF w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="310864043"
X-IronPort-AV: E=Sophos;i="5.96,175,1665471600"; d="scan'208";a="310864043"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 12:54:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="709164056"
X-IronPort-AV: E=Sophos;i="5.96,175,1665471600"; d="scan'208";a="709164056"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 18 Nov 2022 12:54:41 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 12:54:41 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 12:54:41 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 18 Nov 2022 12:54:41 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 18 Nov 2022 12:54:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qm5xEiDDtzt5hj1h18d6iHzzD3bQG0niKNZhBmpWP/m4+t7lo1QBNaA5so674m12Rx8vIX/65pan02e78gQOGleDmbOoZMe788ApjuznpByxHOxr7enfRbSxiaqV+3lrp0hwpl9MzVP/ppXwu+wdHj3O43rIheBi8Tv0bzhR1CWLxjVVkuq5Caz6H/DV9AWKvzRcjheGtLJv7Yg8v5rChNCbfabO+zgOaDe+WCqKRy3V3yrajZQC0ac4AeG0Whs97X7rR5tvvDytalwteoEpXfG1B0wKh059vKxKtetjVfIHsOeIJyD2RyzjAFrhVGqVoQD3TDHs2kubfvtETwfskA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PCaXQm2ROhAGY8wnVvV7k7K/4R02e2gLanXm7H93Y4M=;
 b=NE06Te8YqJWTxv6eHe+Q9owE0r7O01UtHXeEY9fccIBgbixYfweBz+8bmjZvRDVyWnklIx9iTQGUT28mAGREMn2D9i5QeZr2iLxOm3k166QzsX1FzhXxGpV82QQwJPJ/7ipHl1XRmIwCLkL+C+yAEefS5q3f01hvUjmvhxFwPjQn6XNuAWKvT5EO4aN1U1HozAA0To0kMoal48zyw8wc9h/naXLWfUzSMFqflft5NfHKDiHNfnWFdfgQZ1PRSjGUBnV/V+tBvjvxNfOa1zMrcqzfwiVgU1TZpSFU23bR6ov93pZn+ut8chdzqKnATvYpFu1429Mp1lo+OiSqI9Tzrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by MW4PR11MB6864.namprd11.prod.outlook.com (2603:10b6:303:21b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.19; Fri, 18 Nov
 2022 20:54:36 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e%7]) with mapi id 15.20.5834.009; Fri, 18 Nov 2022
 20:54:36 +0000
Date: Fri, 18 Nov 2022 12:54:33 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y3fxCTuDOaoICS4N@mdroper-desk1.amr.corp.intel.com>
References: <20221117173358.1980230-1-matthew.d.roper@intel.com>
 <166876318521.25643.10578336516125459764@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166876318521.25643.10578336516125459764@emeril.freedesktop.org>
X-ClientProxiedBy: BY5PR16CA0007.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::20) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|MW4PR11MB6864:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c5c64b6-673c-4a03-bde0-08dac9a71a2b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kUXBibxcEoQh2K/CO8QsZo68cbJ4y/w7umnTysa038GfAPC7PfYGuzLcGbPwaz+qpcnjUTd/Q5LZqQ5P5n/uO9EVYsYAD2wasxl6E9vSaPczqWT8yDHz787zFIn+7CsBK/PIncZGVGZFlwCO12/R0Z6I63F4QPqQO8FJtnl41WeNb340aPJbcxV93bE1nqcz6PEKcgu6gne6Naa3rym9iioMxd/JRry217reMQyqhkrsFmiMFblP6zX6XJfLAjvdKoAtPtRdU53gNUAA5mk5GB8Sv/PS3hn2OifOxwG39zOcjQEXHT5VpgXg2eLhISBXhi2oNSIWhUG3Tn0N7Sc4h1BP8jJkLJr5MvnZaUhbDePznx/5C1RhDNHuTin3JaJXDG4gvEFRAzOX2Fq1sT3dAv3RUN41AdbmVOv6Z24v6/smhOL3OqeHmij/jfjRjoOa7cKnfWhf+3rkx1vb/srGP9NaIR4+9EhYx5lWI/LLeS63Mi3ZKiA/sWirIcCdojkiL/8Z3IRYIRkdQugfS3E32Ffx2Ovhw90owmgYoHGz8wOnNuXUGH2U2/CtKPGgjbXT6VYRAw4Rv3F5A4Sw8YPmBXAn4vXe/TemTIhSwzZGxTECxoT3o9usJ5WrfunisqNbqVOVjY/qWTYGc6ACsAgFjoDbaoFZ9x55APTv/Ips8VqYmr/p2fdzP5OX9LlEwbDSdLXF7M05X55HQQfUOjkGxBVEwIHFVRBT7dj+SLjiY9gXgOJ0qxaZC9qoA6We9WlZ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(136003)(346002)(376002)(39860400002)(451199015)(2906002)(38100700002)(30864003)(8936002)(4326008)(83380400001)(86362001)(316002)(6916009)(66476007)(478600001)(6486002)(966005)(66556008)(186003)(107886003)(66946007)(5660300002)(41300700001)(6666004)(6506007)(6512007)(82960400001)(26005)(13750500001)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?eKdtnDLYCMxFwtp++BVA7vum/wIMNW5mvEI1iSWveqH+s9fRyV1qPKtvSuKr?=
 =?us-ascii?Q?ftmhiLCdMcir6sLTFSdRhiqnQDbrz5UVRe7n2YRmxMgGXHEAKO1m8EWugpE7?=
 =?us-ascii?Q?dN+FcZ3OnNJFVaP9e2LfupsL70Ct5388u+UjDGNgULGC/vcQzhETkL+9Btg/?=
 =?us-ascii?Q?kNOyZoVOvn6PHxRbtREA4yzKXFJa2Zutg6ZlkbcPGf093gUCiXEQQy0XOnPy?=
 =?us-ascii?Q?ZU6ms/Nk2sWuZVDo2CpPZo30j2uf6LqqPdiEb2OtowKGSEM/WkvuLuN7aHl8?=
 =?us-ascii?Q?hlEAqIiXjCH3+3lqpH0AEWjTsOd5pwNXv1Kq87CU6q/uQ1JrGKIzIkeu2lfN?=
 =?us-ascii?Q?8frwnWmkufDNEzokRhBkLMrZmS5ySnpE7NjvD/bvgK6fihkbiMX6FDU8RfWM?=
 =?us-ascii?Q?QvpaXRbhibDx/MkLo/vz3A4GHGNfrnBb8QoC4r37VcJCRpDTpdg/A3oXTO5C?=
 =?us-ascii?Q?q56j0C4DxnRWZ3tvXtmydXAL68aPDk6wAwZfRUuCVdJcvo6pG/OVQ9LQsyIb?=
 =?us-ascii?Q?nFPMfhrFmuroq1V+m6LeyFqPt9f/hld9JLGTCm6V4XbItj8MO3fjl9JsuYPp?=
 =?us-ascii?Q?6W0YKDe5wTpudoY3iWeR1qx4KZIteepa3lSMjWeNT9To23ReLorZuhXYGbRZ?=
 =?us-ascii?Q?5EvlbhL68jvVstkFls0WHs1p6OLi1+hVbvMlI9pkJDORfRRZxLfn6RilBFIu?=
 =?us-ascii?Q?vnJiokh6SGqfii1at7SnrYTBlChYwpwKCZe73YbfyKHgoURW2He2GP/VXL2T?=
 =?us-ascii?Q?MfhRzASWN8UudTpBrcrqRJNtGuLiltKqDakrpkCptUEPHbIPz5vV8TQ/3vaW?=
 =?us-ascii?Q?Yh4z2Uug7F5iKx4dzQLEO1Z4P1JMn6dJOa31I+PWHScyBqKi7jC+Or/c5Whz?=
 =?us-ascii?Q?dmctxpPxnN0Acq7vi4MgO/IncyrfEYwgIZki4IVv6AAdMtkL9mAYjeQruAJZ?=
 =?us-ascii?Q?hsxBQg8rv0ZIHuMwmSRnq0VCDQ199Bp2m/+4H0OKEm1BLEM5V3VMyTqExBTJ?=
 =?us-ascii?Q?CVdKiwqciyucPQu+i5ovpu66Etr3qqh+ZhXBumoTInv6q/PX+whNaHLDG/6T?=
 =?us-ascii?Q?ArBrG3xbrppQnW3NxOaUh2gG3S1fkfu61a4gwavfAJvjf/h4RmNDHlBXERuX?=
 =?us-ascii?Q?Vh8kYylP7WovQCGLKztmU0nTvUCz/EjQcRKZ6M7a1NVyUx4JqQo1isWdg8nz?=
 =?us-ascii?Q?5LeiYpdaSLWwj4sGGzmDkCqGpI8VqrNWy/Ox3KyCaR3r0PRiYU74DVOCaO38?=
 =?us-ascii?Q?mjJW2EaDaTbiQ9lz2ute73PuSl71rOPv5y4je0brlbfb4XYFVZW1Cu2RNrsx?=
 =?us-ascii?Q?VEUGBnUCKsGnmbioJyeCG5D7dizyjbN3qzTjiFAFklgghFR6vDQAXjpRRTnM?=
 =?us-ascii?Q?oKQQ8ma32oVDLqXmxD00GuzOG7TJ3MVPe9Z0RxYVvZ7u55fPuckbFwh7AY3f?=
 =?us-ascii?Q?tvqHx/Viltoj8dkn2OxeNRDBdosXghjoKHXrJZdh7n0S4NEZHRVPbym1NGqH?=
 =?us-ascii?Q?qQbnOwttsZEeD6czfV4xZE8kw9TXAxF/CuynssUfQEcsruancxtoQA7Zowni?=
 =?us-ascii?Q?iwaw8ube/5dJYnVAzxZi7QgCZ2CBa/QeIztF/BhYP/WTo8vauFZTi8s14M9B?=
 =?us-ascii?Q?zQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c5c64b6-673c-4a03-bde0-08dac9a71a2b
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2022 20:54:36.4329 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y4Sd6LobtTggq3Tu6TFq3xvvmz9ibBip5ooIT+KShk+4vQ6JsKkeAsjbh/wXSb+z/bmeCa4cvvZkskJGkNISIcTuBFkLSQ6BFI4TnLKy3c8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6864
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Manage_uncore-=3Elock_while_waiting_on_MCR_register?=
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

On Fri, Nov 18, 2022 at 09:19:45AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/gt: Manage uncore->lock while waiting on MCR register
> URL   : https://patchwork.freedesktop.org/series/111033/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12396_full -> Patchwork_111033v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_111033v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_111033v1_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_111033v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@gtt:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-skl4/igt@i915_selftest@live@gtt.html

Unexpected incomplete with no errors in the log.

Possibly https://gitlab.freedesktop.org/drm/intel/-/issues/7319 from KBL?


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_111033v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-iclb:         NOTRUN -> [SKIP][2] ([i915#6335])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb6/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#4525]) +1 similar issue
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb2/igt@gem_exec_balancer@parallel.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb5/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#2842])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-apl:          NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-apl6/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-skl:          NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#4613]) +2 similar issues
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-skl1/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
>     - shard-skl:          NOTRUN -> [SKIP][9] ([fdo#109271]) +203 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-skl1/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html
> 
>   * igt@gem_tiled_wb:
>     - shard-skl:          NOTRUN -> [TIMEOUT][10] ([i915#6990])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-skl4/igt@gem_tiled_wb.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [PASS][11] -> [DMESG-WARN][12] ([i915#5566] / [i915#716])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-glk1/igt@gen9_exec_parse@allowed-single.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-glk5/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@unaligned-jump:
>     - shard-iclb:         NOTRUN -> [SKIP][13] ([i915#2856])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb6/igt@gen9_exec_parse@unaligned-jump.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
>     - shard-skl:          NOTRUN -> [FAIL][14] ([i915#7036]) +1 similar issue
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-skl9/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#3989] / [i915#454])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [PASS][17] -> [INCOMPLETE][18] ([i915#7475])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb7/igt@i915_pm_dc@dc9-dpms.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb7/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_rpm@dpms-non-lpsp:
>     - shard-iclb:         NOTRUN -> [SKIP][19] ([fdo#110892])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb6/igt@i915_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@i915_query@query-topology-unsupported:
>     - shard-iclb:         NOTRUN -> [SKIP][20] ([fdo#109302])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb6/igt@i915_query@query-topology-unsupported.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - shard-skl:          NOTRUN -> [DMESG-FAIL][21] ([i915#5334])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-skl4/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - shard-skl:          NOTRUN -> [DMESG-FAIL][22] ([i915#1886])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-skl4/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-apl6/igt@i915_suspend@sysfs-reader.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-apl2/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:
>     - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#2521])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb3/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb2/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-vga-1:
>     - shard-snb:          [PASS][27] -> [FAIL][28] ([i915#2521])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-snb5/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-vga-1.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-snb7/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-vga-1.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:
>     - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#2521]) +1 similar issue
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#110725] / [fdo#111614])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb6/igt@kms_big_fb@linear-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#110723])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb6/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-basic-4_tiled_dg2_rc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][33] ([fdo#109278]) +3 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb6/igt@kms_ccs@pipe-a-crc-primary-basic-4_tiled_dg2_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-apl6/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3886]) +7 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-skl4/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@dp-hpd-enable-disable-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb6/igt@kms_chamelium@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_chamelium@hdmi-crc-multiple:
>     - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +10 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-skl9/igt@kms_chamelium@hdmi-crc-multiple.html
> 
>   * igt@kms_chamelium@vga-hpd-fast:
>     - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-apl6/igt@kms_chamelium@vga-hpd-fast.html
> 
>   * igt@kms_color@ctm-0-25@pipe-b-edp-1:
>     - shard-iclb:         NOTRUN -> [FAIL][39] ([i915#315] / [i915#6946]) +2 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb6/igt@kms_color@ctm-0-25@pipe-b-edp-1.html
> 
>   * igt@kms_content_protection@atomic@pipe-a-dp-1:
>     - shard-apl:          NOTRUN -> [TIMEOUT][40] ([i915#7173])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-apl6/igt@kms_content_protection@atomic@pipe-a-dp-1.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
>     - shard-iclb:         NOTRUN -> [SKIP][41] ([i915#3555])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb6/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-interruptible:
>     - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109274]) +1 similar issue
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb6/igt@kms_flip@2x-flip-vs-panning-interruptible.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:
>     - shard-apl:          [PASS][43] -> [FAIL][44] ([i915#79])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
>     - shard-iclb:         [PASS][45] -> [DMESG-WARN][46] ([i915#2867])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb3/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb2/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
>     - shard-skl:          [PASS][47] -> [FAIL][48] ([i915#2122]) +2 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][49] ([i915#2672]) +2 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][50] ([i915#2587] / [i915#2672]) +2 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode:
>     - shard-iclb:         [PASS][51] -> [SKIP][52] ([i915#3555]) +1 similar issue
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109285])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb6/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#109280]) +2 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-edp-1:
>     - shard-skl:          [PASS][55] -> [INCOMPLETE][56] ([i915#7266])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-edp-1.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-skl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-edp-1:
>     - shard-iclb:         NOTRUN -> [SKIP][57] ([i915#5176]) +2 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb6/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-a-dp-1:
>     - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271]) +38 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-apl6/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-a-dp-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1:
>     - shard-iclb:         [PASS][59] -> [SKIP][60] ([i915#5176]) +2 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb3/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1:
>     - shard-iclb:         [PASS][61] -> [SKIP][62] ([i915#5235]) +2 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>     - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#658])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-apl6/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-skl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#658]) +3 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-skl4/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-iclb:         NOTRUN -> [SKIP][65] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb5/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [PASS][66] -> [SKIP][67] ([fdo#109441]) +1 similar issue
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-skl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2437]) +1 similar issue
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-skl4/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf_pmu@interrupts:
>     - shard-skl:          NOTRUN -> [FAIL][69] ([i915#7318])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-skl3/igt@perf_pmu@interrupts.html
> 
>   * igt@sysfs_clients@fair-3:
>     - shard-skl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2994])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-skl9/igt@sysfs_clients@fair-3.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-apl6/igt@sysfs_clients@recycle.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_read@empty-nonblock:
>     - {shard-rkl}:        [SKIP][72] ([i915#4098]) -> [PASS][73]
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-3/igt@drm_read@empty-nonblock.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-rkl-6/igt@drm_read@empty-nonblock.html
> 
>   * igt@fbdev@write:
>     - {shard-rkl}:        [SKIP][74] ([i915#2582]) -> [PASS][75]
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-1/igt@fbdev@write.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-rkl-6/igt@fbdev@write.html
> 
>   * igt@feature_discovery@psr2:
>     - {shard-rkl}:        [SKIP][76] ([i915#658]) -> [PASS][77]
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-3/igt@feature_discovery@psr2.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-rkl-6/igt@feature_discovery@psr2.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglb:         [FAIL][78] ([i915#6268]) -> [PASS][79]
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-tglb8/igt@gem_ctx_exec@basic-nohangcheck.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-tglb8/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-iclb:         [SKIP][80] ([i915#4525]) -> [PASS][81] +1 similar issue
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb3/igt@gem_exec_balancer@parallel-bb-first.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][82] ([i915#2842]) -> [PASS][83]
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-queues-forked:
>     - shard-iclb:         [INCOMPLETE][84] -> [PASS][85]
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb1/igt@gem_exec_whisper@basic-queues-forked.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb6/igt@gem_exec_whisper@basic-queues-forked.html
> 
>   * igt@gem_set_tiling_vs_pwrite:
>     - {shard-rkl}:        [SKIP][86] ([i915#3282]) -> [PASS][87] +2 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-4/igt@gem_set_tiling_vs_pwrite.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-rkl-5/igt@gem_set_tiling_vs_pwrite.html
> 
>   * igt@gen9_exec_parse@cmd-crossing-page:
>     - {shard-rkl}:        [SKIP][88] ([i915#2527]) -> [PASS][89]
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-4/igt@gen9_exec_parse@cmd-crossing-page.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-rkl-5/igt@gen9_exec_parse@cmd-crossing-page.html
> 
>   * igt@i915_module_load@reload:
>     - shard-skl:          [DMESG-WARN][90] ([i915#1982]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-skl7/igt@i915_module_load@reload.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-skl1/igt@i915_module_load@reload.html
> 
>   * igt@i915_pm_backlight@fade_with_suspend:
>     - {shard-rkl}:        [SKIP][92] ([i915#3012]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-3/igt@i915_pm_backlight@fade_with_suspend.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-rkl-6/igt@i915_pm_backlight@fade_with_suspend.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][94] ([i915#3989] / [i915#454]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>     - {shard-dg1}:        [FAIL][96] ([i915#3591]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-skl:          [FAIL][98] ([i915#7084]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-skl2/igt@i915_pm_sseu@full-enable.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-skl1/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-apl:          [DMESG-WARN][100] ([i915#180]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-apl2/igt@i915_suspend@forcewake.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-apl6/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - {shard-rkl}:        [SKIP][102] ([i915#1845] / [i915#4098]) -> [PASS][103] +13 similar issues
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-3/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-rkl-6/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1:
>     - shard-skl:          [INCOMPLETE][104] ([i915#6951]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-skl7/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-skl1/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>     - shard-glk:          [FAIL][106] ([i915#2346]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-flip-after-cursor@atomic-transitions-varying-size:
>     - shard-skl:          [FAIL][108] -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-skl2/igt@kms_cursor_legacy@short-flip-after-cursor@atomic-transitions-varying-size.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-skl1/igt@kms_cursor_legacy@short-flip-after-cursor@atomic-transitions-varying-size.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - {shard-rkl}:        [SKIP][110] ([i915#3955]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-3/igt@kms_fbcon_fbt@psr.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-rkl-6/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [FAIL][112] ([i915#2122]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode:
>     - shard-iclb:         [SKIP][114] ([i915#3555]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - {shard-rkl}:        [SKIP][116] ([i915#1849] / [i915#4098]) -> [PASS][117] +10 similar issues
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-suspend.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:
>     - {shard-rkl}:        [SKIP][118] ([i915#3558]) -> [PASS][119] +1 similar issue
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-3/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-rkl-6/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1:
>     - shard-iclb:         [SKIP][120] ([i915#5235]) -> [PASS][121] +2 similar issues
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-iclb:         [SKIP][122] ([fdo#109441]) -> [PASS][123] +2 similar issues
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
> 
>   * igt@kms_psr@sprite_mmap_cpu:
>     - {shard-rkl}:        [SKIP][124] ([i915#1072]) -> [PASS][125] +1 similar issue
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-3/igt@kms_psr@sprite_mmap_cpu.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-rkl-6/igt@kms_psr@sprite_mmap_cpu.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-tglb:         [SKIP][126] ([i915#5519]) -> [PASS][127]
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-tglb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-tglb8/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>     - shard-iclb:         [SKIP][128] ([i915#5519]) -> [PASS][129]
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb8/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@perf@polling:
>     - {shard-rkl}:        [FAIL][130] ([i915#5639]) -> [PASS][131]
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-1/igt@perf@polling.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-rkl-3/igt@perf@polling.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@rcs0:
>     - shard-skl:          [FAIL][132] ([i915#1731]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-skl9/igt@sysfs_heartbeat_interval@mixed@rcs0.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-skl9/igt@sysfs_heartbeat_interval@mixed@rcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [FAIL][134] ([i915#6117]) -> [SKIP][135] ([i915#4525])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb5/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-apl:          [INCOMPLETE][136] ([i915#7248]) -> [WARN][137] ([i915#2658])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-apl1/igt@gem_pread@exhaustion.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-apl1/igt@gem_pread@exhaustion.html
>     - shard-tglb:         [WARN][138] ([i915#2658]) -> [INCOMPLETE][139] ([i915#7248])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-tglb7/igt@gem_pread@exhaustion.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-tglb6/igt@gem_pread@exhaustion.html
>     - shard-glk:          [WARN][140] ([i915#2658]) -> [INCOMPLETE][141] ([i915#7248])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-glk2/igt@gem_pread@exhaustion.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-glk9/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-glk:          [INCOMPLETE][142] ([i915#7248]) -> [WARN][143] ([i915#2658])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-glk7/igt@gem_pwrite@basic-exhaustion.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-glk7/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>     - shard-iclb:         [SKIP][144] ([fdo#111068] / [i915#658]) -> [SKIP][145] ([i915#2920])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb3/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][146] ([i915#2920]) -> [SKIP][147] ([fdo#111068] / [i915#658])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@runner@aborted:
>     - shard-skl:          ([FAIL][148], [FAIL][149], [FAIL][150]) ([i915#3002] / [i915#4312] / [i915#6949]) -> ([FAIL][151], [FAIL][152]) ([i915#3002] / [i915#4312])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-skl2/igt@runner@aborted.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-skl10/igt@runner@aborted.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-skl7/igt@runner@aborted.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-skl2/igt@runner@aborted.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/shard-skl2/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
>   [fdo#110892]: https://bugs.freedesktop.org/show_bug.cgi?id=110892
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
>   [i915#6949]: https://gitlab.freedesktop.org/drm/intel/issues/6949
>   [i915#6951]: https://gitlab.freedesktop.org/drm/intel/issues/6951
>   [i915#6990]: https://gitlab.freedesktop.org/drm/intel/issues/6990
>   [i915#7036]: https://gitlab.freedesktop.org/drm/intel/issues/7036
>   [i915#7069]: https://gitlab.freedesktop.org/drm/intel/issues/7069
>   [i915#7084]: https://gitlab.freedesktop.org/drm/intel/issues/7084
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
>   [i915#7248]: https://gitlab.freedesktop.org/drm/intel/issues/7248
>   [i915#7266]: https://gitlab.freedesktop.org/drm/intel/issues/7266
>   [i915#7318]: https://gitlab.freedesktop.org/drm/intel/issues/7318
>   [i915#7475]: https://gitlab.freedesktop.org/drm/intel/issues/7475
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12396 -> Patchwork_111033v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12396: 75ed1f4f7835f178647e3f73910ed4af0944d9ec @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7065: cdc0258a4672b3f1552e4c362ad857ffd792359a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_111033v1: 75ed1f4f7835f178647e3f73910ed4af0944d9ec @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111033v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
