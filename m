Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBADB678D09
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 01:55:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0376010E5E1;
	Tue, 24 Jan 2023 00:54:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6DF210E473
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 00:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674521695; x=1706057695;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=D+Iw5jZNtSsZEsLxrD8xU+gEc1Wjs8yddZcoNNhQRsE=;
 b=G/kLj2MGD22o+PLZqvGmNU4Q2R2n2iXkMHXIpm1VPn3sp9D3jj0tc/Iy
 axV6jdy6qVpNvr32wQwhDcEcqSs5Mmyb2xJRkL9meyLgUv3ApuSCNItYr
 eWbpz758N9775/k8lVf+g8e9P/eOZI33j1XHjTC0V9UBlW44mSxEulCH+
 CgCWdk337/KaikUfiE2QjoB+fGlIWyoeqhrpcjJBchpRjEiKO3P5C/yFM
 Um8bHYU/29IpNVVQWUswSMIxRJAQSi9HxHTHeFFpDoXve/0W0wxRzQmYL
 7NJ5wt+pDbEvcIsI4nhclk5ZuGhZQ4V2XxX7htBLL+VguRhDMc8nLsyjV A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="323896596"
X-IronPort-AV: E=Sophos;i="5.97,240,1669104000"; d="scan'208";a="323896596"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 16:54:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="639403157"
X-IronPort-AV: E=Sophos;i="5.97,240,1669104000"; d="scan'208";a="639403157"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 23 Jan 2023 16:54:46 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 16:54:46 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 23 Jan 2023 16:54:46 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 23 Jan 2023 16:54:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FLk34uLbC2Xl3W/NzN8jSqfLBsGSoRpdarUsBiCi0GSFACPaZzGHQI35ZvVFurC0tJ/tkqu4uHoth/EViDOfUrqdkNOGxEj4k7DRltHE6hHFxQPTXXpcbmOCOhYvvPBdKI6pedP4GItsYS7DwHxYCojiNF92Wf1tUIz13Hi4GdMOQ2sVni/Pmu0hFo3kIfeDou2zXNlyf00/eb956ngr6jrHB4p/4BIfx7V/vLoA4kN2xRje3PpVLDaIZ0RIzwkxMJ11nCNz1hLzamn2kBxHtv7SJkvTTe4x13M9qrgew6nKvyMdT12Nh9mfDiDdWsrjokNTjStCghXeBAS7o/uE+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dJLPD1iEbPn51UihYcSEguKO9JrAMBRNT9LL80vtzrE=;
 b=Snj7I8XFIIKBcHkBtRU2qXHRSgaoIxADzrM4B4p0pdNE8Jc7DbO7iHmRe5y2RQuV4aOOuTGDpmMwegXfF3AKER44VPsVHF55MvV9J8kSSs7oGnqlb2m2B5SJDDxYaJMVLQCL6sKeoaSSLm1utzWDKx3ZtFchtfRextXRWgtOPz7ix4LcgOkfmn5PqsmUvSG+9ktWwzKEgUsI2jMSFFcAGkrRwuP+lpJ5O7yaS4RII3sSuO84r+0JnzgP72LmIttxG32Tn/tSPAzVMVUM5ylGL6ZBTWmjtX51xTfuclHqSfzIZBzIKbWxmM96ymlHgWBB89RgauUtTCnnzBqhwJ1ZPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 IA1PR11MB6243.namprd11.prod.outlook.com (2603:10b6:208:3e7::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6002.33; Tue, 24 Jan 2023 00:54:37 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%9]) with mapi id 15.20.6002.033; Tue, 24 Jan 2023
 00:54:37 +0000
Date: Mon, 23 Jan 2023 16:54:34 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y88sSmVo7OjjAigR@mdroper-desk1.amr.corp.intel.com>
References: <20230120181423.90507-1-gustavo.sousa@intel.com>
 <167433329202.8709.15930003651806353840@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <167433329202.8709.15930003651806353840@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR03CA0031.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::6) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|IA1PR11MB6243:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ba680f3-dd85-40ae-858a-08dafda590f8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KDb+d9Azf46wbsDmyW1lW7j5zdyfRPWXtLce7nECDkXDbNR5eEwHxOwdBoTCOWmeA7p+LOrt2n2FokVvwWfiB9baLgM5w1wdTrtIuGhBjPpZFlPTPnVVDg85xF4FZMscGJJxIKSZb2uxZT9iBcbtvw5ExoAsY1+hzxhkePC29Jn6vKRvqmQ+/4QLjT5/mLTPljuLqwxLGd1OejDXpUIF9br9GMtRsgQ9vQ33bpZyXVKvbE+1kUrofG0bfyWTo2f66WYl9j4DftL+RCf8XYmpCh184xsRr6bXpt+Cziq3UyT2BY2KqiKA/ZQxjr6qnMwaz7PZaKwzbfSEJ0RlPYgtgW0MR6JKL0MBBdSnG6Gk1q+3WNrjikKSCeAwzqquiPg3PayscUvqBZ74apYE3MtjKbkymp1f4E2W8wgEo7f0FfpTF3GhPD3apa3JxkOdQSyY3+CDd0UPDAzYIdg4EIdRavGeQL2RBHMZ9bT7RSBLGexXZnyUxANQBs2cQVdNIYqffBPX1/u8ivjte4IfSk67OI9hnT0fPgmT0kt7kDU2NXhC6+U2oOXREVGac2Z9jVS5KEt8p0/bzbtTZCMZKOqiC/hXvY+WW1wCJrh0mJ4PyfrHLKfoGOSxcn6P3gCVAxbX66/8s6gyP03YCsfAYOY2Wtm4Z5iWQkyOemiLV+bvKnFUz4pAstY46oN2a1SoShEz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(376002)(396003)(39860400002)(136003)(451199015)(316002)(82960400001)(2906002)(83380400001)(41300700001)(8936002)(30864003)(5660300002)(66946007)(66476007)(38100700002)(66556008)(4326008)(6916009)(26005)(966005)(6512007)(6486002)(6506007)(107886003)(186003)(478600001)(6666004)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8tGIc14P9NnnmTO9Kx0nPaqCe/qO0Mtf9AT/CFeIL/nzNPeH80Ll6SfvwurW?=
 =?us-ascii?Q?+m6v3MrI8lr54MEnzOdWcVCvQP+z0UH8Slg7UJFZpsWbEMVxq14o+GgozE5D?=
 =?us-ascii?Q?rEHxxzWrNE/0ynEf5BCs9tvhpXVoAVJ2Wq4Xl26vaGsMePwORTraP7X3X3xw?=
 =?us-ascii?Q?muTzn2+JfTwWK5SP/WseDoQiFM2VGxvLmfC1wzgJ/7F29ly0skSGLkMAOgpd?=
 =?us-ascii?Q?6MG9RqRujD4OhslYc+aOBOJ440htpbf7PP/pV1+Uc6RUv3yQsbEZ0aiUqb1A?=
 =?us-ascii?Q?89AAptjOBJYnYcHwx0XRgWAED+1MbCKvv6wybIUxCFU/6H0Vf8GBG1BTYr9S?=
 =?us-ascii?Q?T0uBr7zzcjxye23V7C+Jb4sBOUXVPG1qKg2ctJ7BzXwWt/TxLFRKDisgnul8?=
 =?us-ascii?Q?bBw4nSbFQ+Yppo9BjSJjV2R5sSHKxk34jsMbRzHKHmrmZt1Dkr3J+j71jyZ9?=
 =?us-ascii?Q?cSPyCg1nwaFi9jnRc+iA7X5If+ffU1VwTybPnXKkPia7v8aD1uCNw5m+WnaQ?=
 =?us-ascii?Q?f7Mkb1HZI4stF1zfYGSKSvhQzwrqVByrzkb9iTvzc+IJfyIBYMkXk9B/vLS9?=
 =?us-ascii?Q?gnNlH1AKPkhq2iNLoLUppMdoTs41zFXoSHAU9h1nYihomZ5z8ruDJye7QmLu?=
 =?us-ascii?Q?pvpMalGOx/viumNeI6cctUbYt68D6WwNKskuJZ9jqsvdV2X2e0EWjYN2jNVk?=
 =?us-ascii?Q?FVLiVYl3BsPAD3cFAQdWOo3D496FjRduibHK+ulG+YxAO0+Dobr3WhJeaaLy?=
 =?us-ascii?Q?W23rqdhnhYmJdwhTzTGSfF5V1POfm+cRvTjZHXSpx/jG25F7v3lE7U6lysCY?=
 =?us-ascii?Q?nMCjKOKoDTUPA13WlPLwq6DB2qghJ6KFXllZ1yXjmUoyh1IZja0eOOC0Zf0+?=
 =?us-ascii?Q?pvSsnhx84f3hboUCOULhCgfdRMX6oKPCdBKtVj5CpDdbcdl4zio/f8uLfYTA?=
 =?us-ascii?Q?0t7VICmkdQ4E9f3gx4YSCLcGGqRp/umbHhn6ZGosmX1tt4zzXAgzkhSnLMaN?=
 =?us-ascii?Q?89ftoIiRlVwNx1R/BfP0wiTYA76RiJNpg8jhhPURGePrchvoNtEnyqNpNUAF?=
 =?us-ascii?Q?iXls8gG70Y/x/8tM9d4s86hZNrc4JIVH7IDC5Td0Nuliqya6cfOGGJh1fVYv?=
 =?us-ascii?Q?JBHB96aaGtW3edjwk0W8om7TMXURtTLZXAoPmKwDP0/aLE8ILOgTfyXHABLm?=
 =?us-ascii?Q?gNrgA+RC1AG7ipOsbdgOTDZFq+WBLw5Yay02mW3Jn0Z+tpJcVlnAxImCmdBq?=
 =?us-ascii?Q?DZ1jEzhleXoaMWsV5aQR6ZnfdDunjcxzflWyh0sr2A3wFYhQJ6v3Qswq0GNi?=
 =?us-ascii?Q?Shs0YhLfdKLJ32+ieTRc28XhK9l56/wp/iezRM8tGz5+o/6ChV98+me7Cypj?=
 =?us-ascii?Q?ycE1Mkq9abMwwEQW2c7K//pZQWHaIzUw0g+N8fbltSuFgc0L8ep8CPhjRJae?=
 =?us-ascii?Q?5LyGrYcrRA03RoIw8Zy6R38JxDiEhcoMfTduDZOxLZZehc7HhXHAQReEYDh4?=
 =?us-ascii?Q?6/jPNhUzQ7Uy4nh+HJsxn//YlaJUcN+H0KRPjPkUyUyFH4rf73UTo7xyJmsk?=
 =?us-ascii?Q?XwPbMpA37zArkwTps4Zw9vQfWs0IeM0C2tigY2VpYos0/Jihz2jBU6z8Q7Yr?=
 =?us-ascii?Q?fw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ba680f3-dd85-40ae-858a-08dafda590f8
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2023 00:54:37.2640 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L7Q3llOkSnd5WS/SRLaW+39BwQnfht8I5oh2AGeCrsKXLw/jFrh/xPEPMwIip0Z/06wNRZ1BY5OQlV3sAgJxBda1Las2/Gc0ZC4gfI3YfIk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6243
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Convert_PSS=5FMODE2_to_multicast_register_=28rev2?=
 =?utf-8?q?=29?=
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

On Sat, Jan 21, 2023 at 08:34:52PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/gt: Convert PSS_MODE2 to multicast register (rev2)
> URL   : https://patchwork.freedesktop.org/series/113159/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12618_full -> Patchwork_113159v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-gt-next.  Thanks for the patch.


Matt

> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/index.html
> 
> Participating hosts (12 -> 9)
> ------------------------------
> 
>   Missing    (3): shard-rkl0 pig-kbl-iris pig-skl-6260u 
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_113159v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-glk:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#4613])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-glk7/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-glk:          NOTRUN -> [FAIL][2] ([i915#3318])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-glk7/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-glk:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-glk7/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-glk:          NOTRUN -> [SKIP][4] ([fdo#109271]) +46 similar issues
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-glk7/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>     - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#2346])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12618/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-glk:          NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#7205])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-glk7/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-glk:          NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#658])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-glk7/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-glk:          NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#2994])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-glk7/igt@sysfs_clients@sema-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@virtual-idle:
>     - {shard-rkl}:        [FAIL][10] ([i915#7742]) -> [PASS][11] +1 similar issue
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12618/shard-rkl-6/igt@drm_fdinfo@virtual-idle.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-rkl-2/igt@drm_fdinfo@virtual-idle.html
> 
>   * igt@drm_read@empty-block:
>     - {shard-rkl}:        [SKIP][12] ([i915#4098]) -> [PASS][13] +1 similar issue
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12618/shard-rkl-3/igt@drm_read@empty-block.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-rkl-6/igt@drm_read@empty-block.html
> 
>   * igt@fbdev@info:
>     - {shard-rkl}:        [SKIP][14] ([i915#2582]) -> [PASS][15]
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12618/shard-rkl-3/igt@fbdev@info.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-rkl-6/igt@fbdev@info.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - {shard-rkl}:        [FAIL][16] ([i915#2842]) -> [PASS][17] +2 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12618/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-write-read-active:
>     - {shard-rkl}:        [SKIP][18] ([i915#3281]) -> [PASS][19] +5 similar issues
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12618/shard-rkl-1/igt@gem_exec_reloc@basic-write-read-active.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-active.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - {shard-rkl}:        [SKIP][20] ([i915#7276]) -> [PASS][21]
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12618/shard-rkl-1/igt@gem_exec_schedule@semaphore-power.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_mmap_gtt@coherency:
>     - {shard-rkl}:        [SKIP][22] ([fdo#111656]) -> [PASS][23]
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12618/shard-rkl-1/igt@gem_mmap_gtt@coherency.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-rkl-5/igt@gem_mmap_gtt@coherency.html
> 
>   * igt@gem_mmap_wc@set-cache-level:
>     - {shard-tglu}:       [SKIP][24] ([i915#1850]) -> [PASS][25]
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12618/shard-tglu-6/igt@gem_mmap_wc@set-cache-level.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-tglu-5/igt@gem_mmap_wc@set-cache-level.html
>     - {shard-rkl}:        [SKIP][26] ([i915#1850]) -> [PASS][27]
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12618/shard-rkl-2/igt@gem_mmap_wc@set-cache-level.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - {shard-rkl}:        [SKIP][28] ([i915#3282]) -> [PASS][29] +4 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12618/shard-rkl-1/igt@gem_userptr_blits@forbidden-operations.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-rkl-5/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - {shard-rkl}:        [SKIP][30] ([i915#2527]) -> [PASS][31]
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12618/shard-rkl-1/igt@gen9_exec_parse@valid-registers.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - {shard-rkl}:        [SKIP][32] ([i915#4387]) -> [PASS][33]
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12618/shard-rkl-1/igt@i915_pm_sseu@full-enable.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-rkl-5/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - {shard-rkl}:        [SKIP][34] ([i915#1845] / [i915#4098]) -> [PASS][35] +18 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12618/shard-rkl-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0:
>     - {shard-tglu}:       [SKIP][36] ([i915#7651]) -> [PASS][37] +8 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12618/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-tglu-5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - {shard-rkl}:        [SKIP][38] ([fdo#110189] / [i915#3955]) -> [PASS][39]
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12618/shard-rkl-2/igt@kms_fbcon_fbt@psr.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-rkl-6/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - {shard-tglu}:       [SKIP][40] ([i915#1849]) -> [PASS][41]
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12618/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-tglu-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
>     - {shard-rkl}:        [SKIP][42] ([i915#1849] / [i915#4098]) -> [PASS][43] +15 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12618/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html
> 
>   * igt@kms_plane@plane-position-hole-dpms@pipe-b-planes:
>     - {shard-rkl}:        [SKIP][44] ([i915#1849]) -> [PASS][45] +1 similar issue
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12618/shard-rkl-3/igt@kms_plane@plane-position-hole-dpms@pipe-b-planes.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-rkl-6/igt@kms_plane@plane-position-hole-dpms@pipe-b-planes.html
> 
>   * igt@kms_psr@cursor_blt:
>     - {shard-rkl}:        [SKIP][46] ([i915#1072]) -> [PASS][47] +2 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12618/shard-rkl-3/igt@kms_psr@cursor_blt.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-rkl-6/igt@kms_psr@cursor_blt.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak-pipe-a:
>     - {shard-tglu}:       [SKIP][48] ([fdo#109274]) -> [PASS][49]
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12618/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
> 
>   * igt@kms_universal_plane@disable-primary-vs-flip-pipe-b:
>     - {shard-rkl}:        [SKIP][50] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][51] +1 similar issue
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12618/shard-rkl-2/igt@kms_universal_plane@disable-primary-vs-flip-pipe-b.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-rkl-6/igt@kms_universal_plane@disable-primary-vs-flip-pipe-b.html
> 
>   * igt@kms_vblank@pipe-c-wait-forked:
>     - {shard-tglu}:       [SKIP][52] ([i915#1845] / [i915#7651]) -> [PASS][53]
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12618/shard-tglu-6/igt@kms_vblank@pipe-c-wait-forked.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/shard-tglu-5/igt@kms_vblank@pipe-c-wait-forked.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4874]: https://gitlab.freedesktop.org/drm/intel/issues/4874
>   [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
>   [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
>   [i915#7178]: https://gitlab.freedesktop.org/drm/intel/issues/7178
>   [i915#7205]: https://gitlab.freedesktop.org/drm/intel/issues/7205
>   [i915#7276]: https://gitlab.freedesktop.org/drm/intel/issues/7276
>   [i915#7294]: https://gitlab.freedesktop.org/drm/intel/issues/7294
>   [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
>   [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12618 -> Patchwork_113159v2
>   * Piglit: piglit_4509 -> None
> 
>   CI-20190529: 20190529
>   CI_DRM_12618: 7ba8ff20ba23bc940e928ffe3a9054225fff418e @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7129: 7816773163a1b0d248dd9dd34d14e632ad8903be @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_113159v2: 7ba8ff20ba23bc940e928ffe3a9054225fff418e @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113159v2/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
