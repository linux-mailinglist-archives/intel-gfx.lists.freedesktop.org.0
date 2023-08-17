Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1120780104
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 00:29:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 246F810E107;
	Thu, 17 Aug 2023 22:29:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EFDC10E107
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 22:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692311342; x=1723847342;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=NWbeO4qz/x5QL8J144KkdB7bIoYriRhOSbyfkRTuk+o=;
 b=jWWNmkqJEU1cC+UMlS8FWnm2vKEopFmg4PN6NrQeD6AzEZQ3cpcuzW93
 OEpdxn6rIc2MkG2oUEXuiYo291tlCDMbX1SpsdG3uVqEbIJSi61Vs//sx
 DsJCec94pw72nzpfVPJl+muPsNjh4RJhfzEYQLjUHibI75R2CvFD8qLzd
 eFJ3N3jEMMRnkeS+7l9lmlCzPaJgjaq+T14Yld4baYJx/gS7OnE9kyJNA
 PyFp4ZRODmtXEYOzW0e8X79Ky0+Bh5eNfeSs/C3hEyUJ8xC+EImbSN9Sj
 hygMnfsR1Ipcb57zguTqlFx939UKdDq/RpiysDEqUxxHlnNwu1tipVo4P g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="352535704"
X-IronPort-AV: E=Sophos;i="6.01,181,1684825200"; d="scan'208";a="352535704"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 15:29:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="1065480192"
X-IronPort-AV: E=Sophos;i="6.01,181,1684825200"; d="scan'208";a="1065480192"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 17 Aug 2023 15:29:01 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 17 Aug 2023 15:29:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 17 Aug 2023 15:29:01 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 17 Aug 2023 15:29:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RDNQhYehqvlkH1xdfJaImnj0zHZCgU+l58rmTbSHMC6rOWtKvyPQwKEKY4lT8aaH6Qp9v03jKHxXDYlUNsUOGCGrgnLiX+gFBQbNbu3W1cB86G4iX3bcxUSelKAsA+zXz81mxuFrB1f8eCerZcL7dUXXw24S8sGjtNTBbLQElcgIc3KBzJlomV7MLV4hpboSrGiSvXlFqw1k3XmmxVYRd8oDGkSaqQGiDA5iFOdQgPymg3E2boC13i7IWhbC1t2yhx75DponrexNxPnZSlRr6kXjFMCRZl0G++f5NclLUeBcDGS0VYbhOQ0kYuslY26Bo6lhp1ytycccgCOQP1wqVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vrAB5HWs5tEX/BCtkob+3sOGEexfk8ApWNoq9Tw0jYk=;
 b=IfI6r7f5JFbE4ddvC9/g+lLzn13gm3GYBfs30IvFwh0KaIhhhhZTyFIeKcOyXbwK4tUzAtFT+lWK3F3Lz0Y3ey1lBmSGZomc0KVC1SlsmCfbpj4nT/fGOdsrbY80oRIBSiLluWum1A0pux9MR87IG+Xi/us9MsIQJSEU8LVwcaAJz1h05bd7OIwRZIY5v8wyZ2JgqEuA7Zj5QiiZ4rPX1yoiHAahhtJU1bUDyZIuz6bVbgJGFjrpP3OjSOgC1n+L8p3ysURfyMUcQsByBGlpeuOcgSB5szKQCqZ17kPTIADCa30iIOncO2kLiKUzUWgbCJLhksKI+OYHGnlMe/Fzaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH8PR11MB6804.namprd11.prod.outlook.com (2603:10b6:510:1bc::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6678.29; Thu, 17 Aug 2023 22:28:47 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6678.031; Thu, 17 Aug 2023
 22:28:47 +0000
Date: Thu, 17 Aug 2023 15:28:44 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20230817222844.GI3375865@mdroper-desk1.amr.corp.intel.com>
References: <20230816214201.534095-7-matthew.d.roper@intel.com>
 <169227568026.12432.6629068243730643396@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <169227568026.12432.6629068243730643396@emeril.freedesktop.org>
X-ClientProxiedBy: BY5PR13CA0002.namprd13.prod.outlook.com
 (2603:10b6:a03:180::15) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH8PR11MB6804:EE_
X-MS-Office365-Filtering-Correlation-Id: e370cd9e-0c01-4b2f-bd58-08db9f7152c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IKX+MpWASi3no595jD7uQR5vp6IInT/gIZk1T8KnoTi7Z7BUi1CbhnhSymo1lvgKD7K8C7IMIEiLob9mwu97gk2f/NgP59S+cLFqKJhgntNYMDEkUaJHB4/xyV474BrRERqcSJ76o2ki7XdwTkG/kdxAXA+rCmIC7/vqBP/Kxk28Q2K0qUlpK7dYbooBYduhotkABCXWY0u1UGdzAGg+jrLj04r7Y3rx3KP3eOQAxdT6AkD+b463/PmcjsWnRWQ6+0EoFZyLNbGX95WAvgdoSXbUGS0jJmLJd/Jnf7Ugf8KvFSPLC+uIODXQuGYFMjfbUm8jZPOIGBONfhV+jJG4P7NiIfKlmOyiQEAH5CUZI+ModMy86o01okvl5ODaHT9K8ux47J03rq+B6EFO3Yi+XfwMCFiVIeXOf2C0u0zlCJcpsVzX0Us39/V9xByL7MLbs7xodILqLrpDyYApZgBHVjQkDqD0DS2eHx7D+xNU5U4KgZuGpwWp2ckb1XJATaddgFXEZH7lqqwiGXpv+mXBbtTRCEngtYq7d4ugmShT0BW5SexGrMwMILUXlviDSxeu
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(136003)(346002)(376002)(39860400002)(186009)(451199024)(1800799009)(2906002)(83380400001)(30864003)(26005)(86362001)(478600001)(6506007)(6666004)(1076003)(6486002)(6512007)(33656002)(966005)(5660300002)(41300700001)(316002)(66946007)(66476007)(66556008)(6916009)(8936002)(82960400001)(38100700002)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?59LR+LLPGj19Jy8Rm+uOsvr8voZfG7nF7io5bxPOJI+WdVYAAJp5h10Xvl5A?=
 =?us-ascii?Q?E2nr83uQzQrk7u14PQoLJZ9DH1lYBE18zZtru2ET+TbQRYKElV7c+lkOEDxk?=
 =?us-ascii?Q?7+MsnXvWKrwwakf1l5+4OlVQ7MSVp/j+dq+IzOJKDTyfa0EXC0y/JD80+OCd?=
 =?us-ascii?Q?piGpq/9llXoFpO+kTyQaDTTjd5dLCL0k5MG0z9gGk8QV7nii3PjyZWjm3Xsi?=
 =?us-ascii?Q?RMOwQ5INYWucd2CPmV7eilP1poZ0uPbVZgThT6/IJvn1WlDKy082qe26hGWj?=
 =?us-ascii?Q?ERmrTxyJiX+NdmD0O4dHuj4h85e7h6sTNFN6FnoWxPJ4z9v2zbG3eMQtzUmY?=
 =?us-ascii?Q?al6Qtz+07OIJ519qldcBKsKqGDg0/Qn5+A0qXLJXzL8djYd6kclKkEze66H+?=
 =?us-ascii?Q?aina+BF+utqwRvVm5VBVwgwFHi6SZj7405Nxzn693kBAKN0JMZzJoWk9txF8?=
 =?us-ascii?Q?D8phVHyn6ENSYf0nM/cvZoUixCjEFLax1J5ZVaAudAdb1BM1uURYEJ5Ecyfd?=
 =?us-ascii?Q?LUsJ/tW1TOYxYdcaGdlz5d3L73vnK/sIq7xzJiL1Kua/X8DNt94RzklQVRlU?=
 =?us-ascii?Q?y8S5C35h7UWD5DICtB67ZvuoJMdkmqjjWN4vUg6uYI+cPbXw7dMSw+MdLi87?=
 =?us-ascii?Q?kdgahyInEX07s3ym8uKahO3kz8RVxc/0rkLHJxkNB7xrUBnVx43qxxUapevv?=
 =?us-ascii?Q?T88BXmDAj96ypK57Vw3jtexQkz04HxGjdypG3LoHkEq+59W1yDgD3dvniy1l?=
 =?us-ascii?Q?6g2MuEUd7Sbebv6xiyXMICMibLRf+BSDOtyusMm5WafuON7kFmvgkXN4WfVi?=
 =?us-ascii?Q?IP83h7r0VzS9ahIHQRQZCskZIGky3r7H2tvUlk7NQDWcoDzMAmG3dH1TVPX1?=
 =?us-ascii?Q?2tyvGNSaDp3PlvP9RzyTECectU8Gepf8qFS5K+Oqnlwata3uDowHK9Aug8OD?=
 =?us-ascii?Q?gqF1pMSWg6JZFkHkggTAdsVrIW/Gzrk3nJ+KvXdDICu8jxvaQexeIdVZzlSt?=
 =?us-ascii?Q?3m4EILKYe3hJrOLd5yZSrQ8Ia9FX+uzsjq8bISuE2LG9JVGPFdRCc9GpLjOg?=
 =?us-ascii?Q?+7SrBfaFyuHtu9lRVf08r3gfqZ21l3QHHXMH8mdpwAqJOGkNAYhVukufyxpN?=
 =?us-ascii?Q?UfoXnjLhilEaUpsybipVcSLDuY0X3l27NvKS1CkUSLpnpVCK50dFxFaZpj16?=
 =?us-ascii?Q?ECusXj+I8KruFzmgzAINmHDeC8LBuASjR2nAJU6U4mmrJCyuI8IfGxc9ZOhU?=
 =?us-ascii?Q?EI0WyfWFqoyjn8byJLYqc14TeZNLfKq208kUmRBsAmmSLMwc1LFED0z8jT+m?=
 =?us-ascii?Q?5l/86XfeQjjPOv1eoOaOWnLHC7HKTFOVrzz6XE/aKlktB7Pt2b9zSXuzfSNn?=
 =?us-ascii?Q?yeqcIdfsPlf/KTseMgThVDBG8iNw8wpHIfFX6lVheUSH6V/m/vFYGndUzCT7?=
 =?us-ascii?Q?FznVo9bm9H0u/8QrQaG0MW2yIoU850uBZTGXxU5eHe8DqNHtUkG5rYL00miL?=
 =?us-ascii?Q?mA4sYMR5E3tb4yJsnf7O7MgVM3THfgDLG9cC0uFCD3ZJIpIwo7lda6feSNlL?=
 =?us-ascii?Q?oMlXrocO2zSovO947n8wg0C+Rq//YanQN3O+TFzEB/BZKMoXSoas3QilSHSL?=
 =?us-ascii?Q?hQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e370cd9e-0c01-4b2f-bd58-08db9f7152c5
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2023 22:28:47.3730 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CSKVdx8b026FDYQ1+9K+rp9S/1iTWBRHs2zg4P9f3huR2yruseVsZ1qej4Jxqose6eZ3KE68HA4UEQOoZhpNUVObKPd0rk4pqdZbuRnJces=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6804
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgRHJv?=
 =?utf-8?q?p_support_for_pre-production_DG2_hardware_=28rev3=29?=
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

On Thu, Aug 17, 2023 at 12:34:40PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Drop support for pre-production DG2 hardware (rev3)
> URL   : https://patchwork.freedesktop.org/series/122469/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13528_full -> Patchwork_122469v3_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 

First two patches applied to drm-intel-next, last three applied to
drm-intel-gt-next.  One minor conflict between the removal of
IS_DG2_DISPLAY_STEP in one branch and IS_DG2_GRAPHICS_STEP in the other
resolved (both should be gone after the merge) in the rerere cache.

Thanks Matt Atwood and Ashutosh for the reviews.


Matt

>   
> 
> Participating hosts (9 -> 9)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_122469v3_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@drm_fdinfo@busy@ccs0:
>     - shard-dg2:          NOTRUN -> [SKIP][1] ([i915#8414]) +19 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-12/igt@drm_fdinfo@busy@ccs0.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-dg2:          NOTRUN -> [SKIP][2] ([i915#7697])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_ctx_persistence@engines-hang@vcs1:
>     - shard-mtlp:         [PASS][3] -> [ABORT][4] ([i915#8865])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-mtlp-6/igt@gem_ctx_persistence@engines-hang@vcs1.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-7/igt@gem_ctx_persistence@engines-hang@vcs1.html
> 
>   * igt@gem_ctx_persistence@processes:
>     - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1099]) +4 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-snb6/igt@gem_ctx_persistence@processes.html
> 
>   * igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:
>     - shard-dg2:          NOTRUN -> [SKIP][6] ([i915#5882]) +9 similar issues
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-12/igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0.html
> 
>   * igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs1:
>     - shard-mtlp:         NOTRUN -> [SKIP][7] ([i915#5882]) +5 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-8/igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs1.html
> 
>   * igt@gem_exec_capture@pi@vcs0:
>     - shard-mtlp:         [PASS][8] -> [FAIL][9] ([i915#4475])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-mtlp-7/igt@gem_exec_capture@pi@vcs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-2/igt@gem_exec_capture@pi@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share:
>     - shard-mtlp:         NOTRUN -> [SKIP][10] ([i915#4473] / [i915#4771])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-5/igt@gem_exec_fair@basic-pace-share.html
> 
>   * igt@gem_exec_fair@basic-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][11] ([i915#3539]) +1 similar issue
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@gem_exec_fair@basic-sync.html
> 
>   * igt@gem_exec_fence@submit3:
>     - shard-dg2:          NOTRUN -> [SKIP][12] ([i915#4812]) +2 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-12/igt@gem_exec_fence@submit3.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-wb:
>     - shard-mtlp:         [PASS][13] -> [DMESG-FAIL][14] ([i915#9121])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-mtlp-1/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-4/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
> 
>   * igt@gem_exec_flush@basic-wb-pro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#3539] / [i915#4852]) +2 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@gem_exec_flush@basic-wb-pro-default.html
> 
>   * igt@gem_exec_reloc@basic-cpu-noreloc:
>     - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#3281]) +4 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-1/igt@gem_exec_reloc@basic-cpu-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-wc-cpu-active:
>     - shard-mtlp:         NOTRUN -> [SKIP][17] ([i915#3281])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-8/igt@gem_exec_reloc@basic-wc-cpu-active.html
> 
>   * igt@gem_exec_schedule@preempt-engines@ccs0:
>     - shard-mtlp:         [PASS][18] -> [FAIL][19] ([i915#9119]) +4 similar issues
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-mtlp-5/igt@gem_exec_schedule@preempt-engines@ccs0.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-4/igt@gem_exec_schedule@preempt-engines@ccs0.html
> 
>   * igt@gem_exec_schedule@preempt-engines@rcs0:
>     - shard-mtlp:         [PASS][20] -> [DMESG-FAIL][21] ([i915#8962] / [i915#9121])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-mtlp-5/igt@gem_exec_schedule@preempt-engines@rcs0.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-4/igt@gem_exec_schedule@preempt-engines@rcs0.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@smem:
>     - shard-tglu:         [PASS][22] -> [ABORT][23] ([i915#7975] / [i915#8213])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-tglu-3/igt@gem_exec_suspend@basic-s4-devices@smem.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html
> 
>   * igt@gem_fence_thrash@bo-copy:
>     - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#4860]) +2 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@gem_fence_thrash@bo-copy.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-mtlp:         NOTRUN -> [SKIP][25] ([i915#4613])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-8/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_mmap_gtt@basic-read-write-distinct:
>     - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#4077]) +9 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-1/igt@gem_mmap_gtt@basic-read-write-distinct.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-xy:
>     - shard-mtlp:         NOTRUN -> [SKIP][27] ([i915#4077]) +1 similar issue
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-8/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
> 
>   * igt@gem_mmap_wc@write-wc-read-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#4083]) +2 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-12/igt@gem_mmap_wc@write-wc-read-gtt.html
>     - shard-mtlp:         NOTRUN -> [SKIP][29] ([i915#4083])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-8/igt@gem_mmap_wc@write-wc-read-gtt.html
> 
>   * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>     - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#4270]) +2 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
> 
>   * igt@gem_readwrite@beyond-eob:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#3282]) +3 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@gem_readwrite@beyond-eob.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#4079])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#3297]) +2 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-1/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [PASS][34] -> [ABORT][35] ([i915#5566])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-glk4/igt@gen9_exec_parse@allowed-single.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-glk4/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#2856]) +2 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-1/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@i915_pm_backlight@fade:
>     - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#5354] / [i915#7561])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-1/igt@i915_pm_backlight@fade.html
> 
>   * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg1:          [PASS][38] -> [SKIP][39] ([i915#1397]) +1 similar issue
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-dg1-17/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg1-19/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@i915_query@query-topology-known-pci-ids:
>     - shard-mtlp:         NOTRUN -> [SKIP][40] ([fdo#109303])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-8/igt@i915_query@query-topology-known-pci-ids.html
>     - shard-dg2:          NOTRUN -> [SKIP][41] ([fdo#109303])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-12/igt@i915_query@query-topology-known-pci-ids.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - shard-apl:          [PASS][42] -> [DMESG-FAIL][43] ([i915#5334])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-apl4/igt@i915_selftest@live@gt_heartbeat.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-apl6/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-mtlp:         NOTRUN -> [SKIP][44] ([i915#6645])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][45] ([i915#8841]) +2 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-snb6/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc_ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#8502]) +3 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-rkl-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc_ccs.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][47] ([fdo#111614]) +3 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-1/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-mtlp:         [PASS][48] -> [FAIL][49] ([i915#5138]) +1 similar issue
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-mtlp:         [PASS][50] -> [FAIL][51] ([i915#3743])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-mtlp-1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#5190]) +8 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-1/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#4538] / [i915#5190]) +5 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_mtl_mc_ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#5354]) +49 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_mtl_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#3689] / [i915#3886] / [i915#5354]) +6 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#3689] / [i915#5354]) +16 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][57] ([i915#6095]) +1 similar issue
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-8/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#4087] / [i915#7213]) +3 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-1/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-b-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#4087]) +3 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@kms_cdclk@plane-scaling@pipe-b-dp-4.html
> 
>   * igt@kms_chamelium_color@degamma:
>     - shard-dg2:          NOTRUN -> [SKIP][60] ([fdo#111827])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@kms_chamelium_color@degamma.html
> 
>   * igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
>     - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#7828])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-8/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-storm:
>     - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#7828]) +6 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@kms_chamelium_hpd@dp-hpd-storm.html
> 
>   * igt@kms_color@deep-color:
>     - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#3555])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-rkl-2/igt@kms_color@deep-color.html
> 
>   * igt@kms_content_protection@atomic-dpms@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][64] ([i915#7173])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@kms_content_protection@atomic-dpms@pipe-a-dp-4.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#3299])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#7118])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-6/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#3359])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#3555]) +6 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-1/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#4103] / [i915#4213])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
>     - shard-mtlp:         [PASS][70] -> [FAIL][71] ([i915#8248])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-mtlp-8/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][72] ([fdo#109274] / [i915#5354]) +2 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [PASS][73] -> [FAIL][74] ([i915#2346])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@single-bo@all-pipes:
>     - shard-mtlp:         [PASS][75] -> [DMESG-WARN][76] ([i915#2017])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-mtlp-5/igt@kms_cursor_legacy@single-bo@all-pipes.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-4/igt@kms_cursor_legacy@single-bo@all-pipes.html
> 
>   * igt@kms_display_modes@mst-extended-mode-negative:
>     - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#8588])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-1/igt@kms_display_modes@mst-extended-mode-negative.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#3804])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#3555] / [i915#3840])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-12/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#3469]) +1 similar issue
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-12/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
>     - shard-snb:          NOTRUN -> [SKIP][81] ([fdo#109271] / [fdo#111767]) +1 similar issue
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-snb4/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-fences-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#8381])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@kms_flip@2x-flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
>     - shard-dg2:          NOTRUN -> [SKIP][83] ([fdo#109274]) +4 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-12/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html
>     - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#3637])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-8/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#2672]) +3 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-12/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#2672])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#8708]) +11 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#3458]) +19 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][89] ([i915#8708])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt:
>     - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#1825]) +4 similar issues
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#3555] / [i915#8228])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-rkl-1/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#3555] / [i915#8228]) +1 similar issue
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-6/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#6301])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
>     - shard-dg2:          NOTRUN -> [SKIP][94] ([fdo#109289]) +5 similar issues
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-12/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
> 
>   * igt@kms_plane@pixel-format@pipe-b-planes:
>     - shard-mtlp:         [PASS][95] -> [FAIL][96] ([i915#1623])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-mtlp-3/igt@kms_plane@pixel-format@pipe-b-planes.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-5/igt@kms_plane@pixel-format@pipe-b-planes.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#5176]) +1 similar issue
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-rkl-4/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#5176]) +3 similar issues
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-6/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#5235]) +1 similar issue
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1:
>     - shard-snb:          NOTRUN -> [SKIP][100] ([fdo#109271]) +225 similar issues
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-snb4/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#5235]) +11 similar issues
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-dp-4.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][102] ([i915#5235]) +7 similar issues
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg1-14/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#658]) +1 similar issue
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr@no_drrs:
>     - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#1072]) +4 similar issues
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-1/igt@kms_psr@no_drrs.html
> 
>   * igt@kms_rotation_crc@exhaust-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#4235]) +1 similar issue
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@kms_rotation_crc@exhaust-fences.html
> 
>   * igt@kms_rotation_crc@primary-x-tiled-reflect-x-180:
>     - shard-rkl:          [PASS][106] -> [ABORT][107] ([i915#8875])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-rkl-1/igt@kms_rotation_crc@primary-x-tiled-reflect-x-180.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-rkl-4/igt@kms_rotation_crc@primary-x-tiled-reflect-x-180.html
> 
>   * igt@kms_selftest@drm_damage:
>     - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#8661])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-12/igt@kms_selftest@drm_damage.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
>     - shard-apl:          [PASS][109] -> [ABORT][110] ([i915#180]) +1 similar issue
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-apl3/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#2436])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf@non-zero-reason@0-rcs0:
>     - shard-dg2:          [PASS][112] -> [FAIL][113] ([i915#7484])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-dg2-12/igt@perf@non-zero-reason@0-rcs0.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-dg1:          [PASS][114] -> [INCOMPLETE][115] ([i915#1982])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-dg1-19/igt@perf_pmu@module-unload.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg1-19/igt@perf_pmu@module-unload.html
> 
>   * igt@prime_vgem@basic-fence-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#3708])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-1/igt@prime_vgem@basic-fence-flip.html
> 
>   * igt@prime_vgem@coherency-blt:
>     - shard-mtlp:         NOTRUN -> [FAIL][117] ([i915#8445])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-8/igt@prime_vgem@coherency-blt.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#4818])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-12/igt@tools_test@sysfs_l3_parity.html
>     - shard-mtlp:         NOTRUN -> [SKIP][119] ([i915#4818])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-8/igt@tools_test@sysfs_l3_parity.html
> 
>   * igt@v3d/v3d_submit_csd@job-perfmon:
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#2575]) +11 similar issues
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@v3d/v3d_submit_csd@job-perfmon.html
> 
>   * igt@vc4/vc4_create_bo@create-bo-zeroed:
>     - shard-mtlp:         NOTRUN -> [SKIP][121] ([i915#7711])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-8/igt@vc4/vc4_create_bo@create-bo-zeroed.html
> 
>   * igt@vc4/vc4_dmabuf_poll@poll-read-waits-until-write-done:
>     - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#7711]) +5 similar issues
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-1/igt@vc4/vc4_dmabuf_poll@poll-read-waits-until-write-done.html
> 
>   * igt@vc4/vc4_purgeable_bo@mark-willneed:
>     - shard-glk:          NOTRUN -> [SKIP][123] ([fdo#109271]) +2 similar issues
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-glk2/igt@vc4/vc4_purgeable_bo@mark-willneed.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@reset-stress:
>     - shard-dg1:          [FAIL][124] ([i915#5784]) -> [PASS][125]
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-dg1-17/igt@gem_eio@reset-stress.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg1-16/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-rkl:          [FAIL][126] ([i915#2842]) -> [PASS][127]
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-rkl-1/igt@gem_exec_fair@basic-pace@bcs0.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-rkl-4/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@lmem0:
>     - shard-dg2:          [ABORT][128] ([i915#7975] / [i915#8213]) -> [PASS][129]
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-dg2-2/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
> 
>   * igt@gem_spin_batch@user-each:
>     - shard-mtlp:         [DMESG-FAIL][130] ([i915#8962] / [i915#9121]) -> [PASS][131]
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-mtlp-4/igt@gem_spin_batch@user-each.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-2/igt@gem_spin_batch@user-each.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-tglu:         [FAIL][132] ([i915#3989] / [i915#454]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-tglu-7/igt@i915_pm_dc@dc6-dpms.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-tglu-2/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp:
>     - shard-rkl:          [SKIP][134] ([i915#1397]) -> [PASS][135]
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-rkl-4/igt@i915_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          [SKIP][136] ([i915#1397]) -> [PASS][137] +1 similar issue
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-dg2-12/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
>     - shard-dg1:          [SKIP][138] ([i915#1397]) -> [PASS][139]
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg1-14/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:
>     - shard-mtlp:         [FAIL][140] ([i915#2521]) -> [PASS][141]
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-mtlp-7/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-2/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [FAIL][142] ([i915#2346]) -> [PASS][143]
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:
>     - shard-apl:          [ABORT][144] ([i915#180]) -> [PASS][145]
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html
> 
>   * igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:
>     - shard-mtlp:         [FAIL][146] ([i915#1623]) -> [PASS][147]
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-mtlp-4/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-mtlp-3/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
>     - shard-tglu:         [FAIL][148] ([i915#8292]) -> [PASS][149]
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-tglu-7/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-tglu-2/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
>     - shard-tglu:         [FAIL][150] ([i915#2681] / [i915#3591]) -> [WARN][151] ([i915#2681])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-tglu-3/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-tglu-10/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          [SKIP][152] ([i915#7118]) -> [SKIP][153] ([i915#7118] / [i915#7162])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-dg2-6/igt@kms_content_protection@type1.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg2-11/igt@kms_content_protection@type1.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-snb:          [INCOMPLETE][154] -> [DMESG-WARN][155] ([i915#8841])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-snb7/igt@kms_fbcon_fbt@fbc-suspend.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-snb4/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          [SKIP][156] ([i915#3955]) -> [SKIP][157] ([fdo#110189] / [i915#3955])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][158] ([i915#4816]) -> [SKIP][159] ([i915#4070] / [i915#4816])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_psr@sprite_plane_onoff:
>     - shard-dg1:          [SKIP][160] ([i915#1072] / [i915#4078]) -> [SKIP][161] ([i915#1072]) +1 similar issue
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13528/shard-dg1-16/igt@kms_psr@sprite_plane_onoff.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/shard-dg1-14/igt@kms_psr@sprite_plane_onoff.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1623]: https://gitlab.freedesktop.org/drm/intel/issues/1623
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
>   [i915#4475]: https://gitlab.freedesktop.org/drm/intel/issues/4475
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
>   [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5882]: https://gitlab.freedesktop.org/drm/intel/issues/5882
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
>   [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
>   [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
>   [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8248]: https://gitlab.freedesktop.org/drm/intel/issues/8248
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8445]: https://gitlab.freedesktop.org/drm/intel/issues/8445
>   [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
>   [i915#8588]: https://gitlab.freedesktop.org/drm/intel/issues/8588
>   [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
>   [i915#8865]: https://gitlab.freedesktop.org/drm/intel/issues/8865
>   [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
>   [i915#8962]: https://gitlab.freedesktop.org/drm/intel/issues/8962
>   [i915#9053]: https://gitlab.freedesktop.org/drm/intel/issues/9053
>   [i915#9119]: https://gitlab.freedesktop.org/drm/intel/issues/9119
>   [i915#9121]: https://gitlab.freedesktop.org/drm/intel/issues/9121
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13528 -> Patchwork_122469v3
> 
>   CI-20190529: 20190529
>   CI_DRM_13528: a7c0be10a6b6a23017681cc609c1353711dc70e7 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7441: 152bb04fd1297075b5d0b1c4487dac8e9a70d070 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_122469v3: a7c0be10a6b6a23017681cc609c1353711dc70e7 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122469v3/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
