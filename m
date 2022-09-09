Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E07FA5B426A
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Sep 2022 00:21:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B71610E0DF;
	Fri,  9 Sep 2022 22:21:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4425F10E0DF
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 22:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662762085; x=1694298085;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=rkDfXhFrnwPekeY29ODbGJcZiOv9mKHsuxSa+x9zvZY=;
 b=dZAUFXXoS8L48HWuxSZUk85NifbEnv5SGmm+FHi94KKjfFBG+/9CQRA4
 SWZu/qVP0sVxD/TDzS2aMzF+lts+iRmS7+PDu0aXfuBolVhVg+c2CxLtr
 L0Bsk/MJm9ncoKrb0cP4cidVMSG/PkGgZtBajklZvwTEJPG3jPwyil7Ko
 qzPoQ5Pe2utW/oyTK1HDlpXtsFr2CeNoZDMUkSrsjDqGCsk+ooeofKOte
 TZbwtkTQKOPZ+0WSICeYqYabCXo+W4SvMG1Y5f1ORlEmdXyLhM3/qGO4m
 RxlixSwgxQMd8UwMXi7ko8jShtWIeg0jOS4bUEhJHIpZ0jb/ih4b53uAw A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10465"; a="323797720"
X-IronPort-AV: E=Sophos;i="5.93,304,1654585200"; d="scan'208";a="323797720"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 15:21:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,304,1654585200"; d="scan'208";a="648601513"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 09 Sep 2022 15:21:24 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 9 Sep 2022 15:21:24 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 9 Sep 2022 15:21:23 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 9 Sep 2022 15:21:23 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 9 Sep 2022 15:21:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VRswAd51cHX7b+WryXLpubBJT5FpZRs0bIxbIlM/0PlrA/CH9bXPA3C4Iz/aH6iIu2Hy4YyaAqUOPDLWt0pBqBycSRW82zYGLV/RYJZ34re9k4oNo368Or0VGfY5nYFnh5cg+8mMhbG0itQxQTbE+/kcWgOg8DSMf+BqjVM+ho/PG7E5p6mNwLK1knMmCPszrQMkPBpFU0cC5HVqDBCAcwW/Q/XLPbdZ8lNKsrXIkZcRe4sdlc/qp+mo9gRQjMXVTK8XkjLTX4ibHWhRxdzbeTAVM3vDZ0f3/W9yai/Zw0w4dLj9C9gRek11OeYRPmoH/gspbiPkTpT6GJGOk/c9aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JcrPGXppoIvhy8ltbP7ZAK9E1LsSz9IvGe/q1zruNSM=;
 b=eCt86vnc/VLn3i7f7qfTFZBFfhiSfEzA98ZQtEjLGs+mxBjVRAcx2As0f5MgBjnkBl0yuDlWWYAQ3A5PLoCgpFVVVbr7k0Vao5KAIB5q9JPmobe9vhtv6lgJZJIJC7/X8LzmASPPuR1VhfqL7+9tInjbxcVR6RnmPplV7QxFkXfTx+PRFb5cjouKJZQLWa18S1N67DdmHKrOaeXhX5Fa6DKHOrD8raJnHR3WFG31WsyC/ienfsTAzz5NSskB3O4+GZQ7MzO+/fW/EZs5xfceG9M14rgqgIFHzHaG5ijfJGhpdcyilF2U7QmTX4t64YSYKizPMUC7/D1WfvGJaOS2DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by CY5PR11MB6486.namprd11.prod.outlook.com (2603:10b6:930:32::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.14; Fri, 9 Sep
 2022 22:21:19 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514%12]) with mapi id 15.20.5588.015; Fri, 9 Sep 2022
 22:21:19 +0000
Date: Fri, 9 Sep 2022 15:21:16 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Yxu8XL0X8pWsTo9J@mdroper-desk1.amr.corp.intel.com>
References: <20220906234934.3655440-1-matthew.d.roper@intel.com>
 <166270309482.1365.7371543642979430236@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166270309482.1365.7371543642979430236@emeril.freedesktop.org>
X-ClientProxiedBy: BY5PR17CA0067.namprd17.prod.outlook.com
 (2603:10b6:a03:167::44) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5d681452-8846-4604-1db4-08da92b19e67
X-MS-TrafficTypeDiagnostic: CY5PR11MB6486:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: X/meV0Fz521FOWyNYEa6/AuRGPzwptkHbU7tipbfzu9PmYTWI0QOiCaIMTVzJIoFgjB3TNt8C1hhIHaRUXyIa5YldUbtz30K8WrI8C8u19L3DfYjXoCeSLtBgqOswd07hitNvNEtg6twrnBQKee0Hjdml/1UsE/MpqtOsaSE5y3tKiGH1CgFcwXsj+5JwlNsMvP7eKd89MAKCjWAPlUSQK44Bh/zCgCBJpT02HiSJonQH0Ymer0viPzd4J3UYj8Cal7iWLztn77sBL7gxHP02bOb97Ofi6KUvpcIQO+53AMcGBYMCNP5s2+lyl5M09vqlVIGe9AjWM9P/n8q152cQCkoJ4/7kyUkqhsi2EBFaOYVJpG2fA1FxIutvMoR0bkhk/fpFlFOxPDAHfgYZXy6dF2d0SSvj2dLrygJ4xR04xUFy1oQLAfiCD7dvfoq/k8RfqzGmXDQC9HL8YxjN4WRk9SHLfzpe3ebx9szrQjgCWZWe8pBRjkuw7X9kN6t16uM3IaiQmaGUVdNnuBbOI3eKQqiFXq6RsQjRGQNGBC0qjTlGOdxqoyLm6FK43EWj+YAqynGRwZu8oRHYuuGHoiJlMcvOj5RC9Y1B6RFavMrGmBFB1vjh/0+x2lYwF5GmaaK41rJfh6eXYRJNmmv40XiDVhNQbkRr8kafeBhP32W0nXacl6S2wYXTzRejXJaCAJEDRH5vRBI2eFWXfscyTOzxBBC2rSI9kOV3p8OY6vjI7fO1uiRsSElA8YfLCXy2pNyEomhuL+B4orjYP4zdJQn4g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(39860400002)(396003)(366004)(376002)(346002)(82960400001)(38100700002)(6916009)(316002)(5660300002)(8936002)(30864003)(66556008)(2906002)(66476007)(66946007)(6506007)(186003)(83380400001)(966005)(41300700001)(6486002)(478600001)(6666004)(6512007)(86362001)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+GC5zG7KvKhlA3Qva3cDdqOC2HLnF7htWhRycsbbQi28o+EOSd8BJ06NcXGB?=
 =?us-ascii?Q?l6wtQSs5uJh8yri4oZvweMJ4WzrF6reH5GRPcLZOPwucT2PWvuE/69mx0cbY?=
 =?us-ascii?Q?KEPjaxh21YzSr0JTWnzdYWINJcbFiIn08caNcRs4FN43zcTZy0SKn9nJQ9Kb?=
 =?us-ascii?Q?sFI/nPxXw9pAwA67PI4/WZmxsjx5UvjLMrv/ZqpYbbJVJQ6YzxO9xxjLe4kP?=
 =?us-ascii?Q?HMYb4Rk+do8rhLkz6HIYcLtHHr6REMN1UUBS+XdA/4AfJhPAszfDpuQhyckQ?=
 =?us-ascii?Q?ylm1H/oOF5uLVykcvLpDsHWEKY+zJhlTVKMaePS0gqbdHzO93a8luK/Ovs6e?=
 =?us-ascii?Q?aLaxnX2vGC0zXafmXMAp0v5mBfIzvArscFf7cUtzwmbKB69nB31akmYnQirH?=
 =?us-ascii?Q?f7XbyTWJitT2B2/Rp1O6DiMxjpVrOYe0lemTZ5GbYJcO1zxQ3xyteskzx67o?=
 =?us-ascii?Q?WkcDElrLb9xntXgI+aCQ8XRhsznw/iQkRsFQVzy3RnNiWrnRaAvw4yAgeiGD?=
 =?us-ascii?Q?ArL2/h3/1p3BIihUUAcr86loqLNsATzT5quxQja/IzcEoG6dKumh+QJapcr+?=
 =?us-ascii?Q?pLU9FvGr4Ir40pqUeicW1R/6LHqs2DCAhmiyh4BLEYdnOoZ+LwknRgy1sZXq?=
 =?us-ascii?Q?knc8oI8xHroVcr5hCxpeysjxmlHBIPUB/EZMnYRmPE/NO+cQOGg/T2I0Qo+W?=
 =?us-ascii?Q?POM7eYfHKHVJ7btbBEqQ4jMK72ukg/UfrrdhSetPP/cjRWcSrjOT9Oql/0uk?=
 =?us-ascii?Q?urG+XLRW8iY6Gwgq2s3J+FDPuZU9mkHLONJIqrM+XVeFqDJYrxxlsFOUTVIi?=
 =?us-ascii?Q?OD8IbvZhXvjkrJ3AwOIw53L8jFjy3vP2GOEeh9VLX1qVTdv7mQZcNx7dRpgP?=
 =?us-ascii?Q?wmywHagkK8P0h1Fs81IU335PHZmaCkO/5FUXeioRdCnpxp4R71EyA7B+YuQA?=
 =?us-ascii?Q?6zgwaucHAV1DI7ksp0Pp0hB2BCHeG1DkZfEJLL89Qd9l+3OqXysQeomODFkV?=
 =?us-ascii?Q?mL2xuhfi2ZSR88xIVNG0hGGYj3xhKvg75tWKCQstSgCSILs4EHWLJGM+NxvV?=
 =?us-ascii?Q?mn1hefYuItLh1mNxqNvaqgM11jdBGHshItVFI5Z26uIqJs1AfOX6p8uvlg1S?=
 =?us-ascii?Q?obajg6oRU3gcHMd+RUY7csmEsWtXxB7m9+WppnME/uTCnRsy3hMlZHSQZYuI?=
 =?us-ascii?Q?A4a9naT4skLyAaWCCMd65cNwPZfl0z0HC9Gdmd57T3fDRa9/OxEqF0oGlfMF?=
 =?us-ascii?Q?WZmbkoTe6QzWCtVOQDvdeqyAZ/sAAC4foIHcueliG1/YEeQJgNPkx96b0V00?=
 =?us-ascii?Q?qxHWDH0lW93kEYNAqp4Rgyzrjh5E25Zvs3SX894kJ3cGwXIRDJOJJXHECNq3?=
 =?us-ascii?Q?IsmwhU/zZsyPI0/SoKD5bhraah1JfHd9r5RcIUfJqIk5M6AwnAocTfhLMHh1?=
 =?us-ascii?Q?SKDxCKvD9NlKM/KGxps+1Df0yZCPSH5gr7uhW/qg8eKlafvjWH/P2kOn9d/j?=
 =?us-ascii?Q?huHdcqAYntt+jXdZaAjUYj8egSBmw4KMbTVXjoyONnC7MP7CjW+pG3AzFn/X?=
 =?us-ascii?Q?QHm4ZLGJltpOPfs2BknqasgbFUx94G+0OjEzIWMwygp+a8Cazl5EOgqK5oIJ?=
 =?us-ascii?Q?Ig=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d681452-8846-4604-1db4-08da92b19e67
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2022 22:21:19.3114 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L9wgyjSSSbgBou7Sk0YhWvP0Hc1ApFDl9jL1E0nemDYMLmzYfyzwoGr43nWOQED4sDegmWxZP5mVH2GubaGTH8ZWG9PeAB3wNHmm6wwVX4M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6486
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5=3A_Add_=22standalone_media=22_support_for_MTL_=28rev5=29?=
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

On Fri, Sep 09, 2022 at 05:58:14AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: i915: Add "standalone media" support for MTL (rev5)
> URL   : https://patchwork.freedesktop.org/series/107908/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12101_full -> Patchwork_107908v5_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_107908v5_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_107908v5_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 9)
> ------------------------------
> 
>   Missing    (1): shard-tglu 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_107908v5_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-tglb1/igt@i915_module_load@reload-with-fault-injection.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-tglb2/igt@i915_module_load@reload-with-fault-injection.html

This failure doesn't appear to be related to this series.  The majority
of the new code in this series wouldn't be executed on TGL and the place
where we're hitting a timeout doesn't seem to be anywhere near the parts
that would change on TGL.

Series applied to drm-intel-gt-next.  Thanks RK, Aravind, Daniele, and
Lucas for the reviews.



Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_107908v5_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_eio@reset-stress:
>     - shard-tglb:         [PASS][3] -> [FAIL][4] ([i915#5784])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-tglb3/igt@gem_eio@reset-stress.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-tglb2/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#4525])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-iclb6/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2842])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#2842])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-tglb:         NOTRUN -> [DMESG-WARN][11] ([i915#4991])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-tglb7/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [PASS][12] -> [FAIL][13] ([i915#454])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-iclb7/igt@i915_pm_dc@dc6-dpms.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-tglb:         [PASS][14] -> [DMESG-WARN][15] ([i915#5591])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-tglb6/igt@i915_selftest@live@hangcheck.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-tglb2/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-apl:          [PASS][16] -> [DMESG-WARN][17] ([i915#180]) +1 similar issue
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>     - shard-glk:          [PASS][18] -> [FAIL][19] ([i915#72])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>     - shard-glk:          [PASS][20] -> [FAIL][21] ([i915#2346])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [PASS][22] -> [FAIL][23] ([i915#4767])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#2672]) +7 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#3555])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-fullscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][26] ([fdo#109280] / [fdo#111825]) +1 similar issue
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
>     - shard-iclb:         [PASS][27] -> [SKIP][28] ([i915#5235]) +2 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-iclb4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +2 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@kms:
>     - shard-tglb:         [FAIL][31] ([i915#5784]) -> [PASS][32] +1 similar issue
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-tglb3/igt@gem_eio@kms.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-tglb7/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-iclb:         [SKIP][33] ([i915#4525]) -> [PASS][34]
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-iclb6/igt@gem_exec_balancer@parallel-keep-in-fence.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-glk:          [FAIL][35] ([i915#2842]) -> [PASS][36]
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-glk9/igt@gem_exec_fair@basic-none@vcs0.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-glk1/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [SKIP][37] ([i915#2190]) -> [PASS][38]
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-tglb7/igt@gem_huc_copy@huc-copy.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-tglb2/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [SKIP][39] ([i915#4281]) -> [PASS][40]
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-iclb7/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-180:
>     - shard-apl:          [DMESG-WARN][41] ([i915#62]) -> [PASS][42] +15 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-apl3/igt@kms_big_fb@linear-8bpp-rotate-180.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-apl1/igt@kms_big_fb@linear-8bpp-rotate-180.html
> 
>   * {igt@kms_cursor_crc@cursor-sliding-256x85@pipe-b-dp-1}:
>     - shard-apl:          [FAIL][43] -> [PASS][44] +3 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-apl3/igt@kms_cursor_crc@cursor-sliding-256x85@pipe-b-dp-1.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-apl1/igt@kms_cursor_crc@cursor-sliding-256x85@pipe-b-dp-1.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip@toggle:
>     - shard-iclb:         [FAIL][45] ([i915#5072]) -> [PASS][46]
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@toggle.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-iclb8/igt@kms_cursor_legacy@cursor-vs-flip@toggle.html
> 
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][47] ([i915#2122]) -> [PASS][48]
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-glk5/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-hdmi-a1-hdmi-a2.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-glk5/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@basic-plain-flip@c-dp1:
>     - shard-apl:          [DMESG-FAIL][49] ([i915#62]) -> [PASS][50]
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-apl3/igt@kms_flip@basic-plain-flip@c-dp1.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-apl1/igt@kms_flip@basic-plain-flip@c-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@d-edp1:
>     - shard-tglb:         [INCOMPLETE][51] ([i915#6021]) -> [PASS][52]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-tglb1/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-tglb7/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1.html
> 
>   * igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1:
>     - shard-glk:          [FAIL][53] ([i915#407]) -> [PASS][54]
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-glk5/igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-glk5/igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_gtt:
>     - shard-iclb:         [SKIP][55] ([fdo#109441]) -> [PASS][56] +2 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_gtt.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-tglb:         [FAIL][57] ([i915#5639]) -> [PASS][58]
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-tglb6/igt@perf@polling-parameterized.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-tglb7/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-tglb:         [SKIP][59] ([i915#2848]) -> [FAIL][60] ([i915#2842])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - shard-apl:          [DMESG-FAIL][61] ([fdo#108145] / [i915#62]) -> [FAIL][62] ([fdo#108145] / [i915#265])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-iclb:         [SKIP][63] ([i915#2920]) -> [SKIP][64] ([i915#658]) +1 similar issue
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-iclb6/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>     - shard-iclb:         [SKIP][65] ([fdo#111068] / [i915#658]) -> [SKIP][66] ([i915#2920])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-iclb1/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][67], [FAIL][68]) ([i915#3002] / [i915#4312] / [i915#5257] / [i915#6599]) -> ([FAIL][69], [FAIL][70], [FAIL][71]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6599])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-apl1/igt@runner@aborted.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12101/shard-apl2/igt@runner@aborted.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-apl3/igt@runner@aborted.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-apl7/igt@runner@aborted.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/shard-apl3/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2848]: https://gitlab.freedesktop.org/drm/intel/issues/2848
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#6021]: https://gitlab.freedesktop.org/drm/intel/issues/6021
>   [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599
>   [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12101 -> Patchwork_107908v5
> 
>   CI-20190529: 20190529
>   CI_DRM_12101: c8ca9239200ae0e5e53ae5a2f0d0a7411aef40c1 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6649: 7d91a6952dadaa9001b662ed60c08ccb8364929d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_107908v5: c8ca9239200ae0e5e53ae5a2f0d0a7411aef40c1 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107908v5/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
