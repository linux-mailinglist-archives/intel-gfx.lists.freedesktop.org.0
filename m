Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5DC7A239C
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 18:31:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A755710E64A;
	Fri, 15 Sep 2023 16:31:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80BC910E64A
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 16:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694795465; x=1726331465;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=tB0Ewy2u+HhYHPG5cduyJwUtPe4cfbvu//9J1hvzQ5s=;
 b=YndFCy2/tVDNNvXt6loySoomsimt5lcgdlKcDsKqukw6L4yrBcpQ6ghc
 BzRQch2SKyIvQocAUmniVWtMnNiUMTyogqdwl9PhE24PXMb/JGt8R6Dmd
 JVQJUsJJz7jWHQ2ULQ+mDHisyJJtBx/LHuPxpDWc0ZgnJYe4pFyToTRmE
 9xix6rf/8XyNEXCoHVa33koahywrT3xGOYh1FlsB9c1zdCCtlO5aq9fMw
 Om9KuKPlMvY/X3Eq+ANUevUq86r29Rr1CLkD6nT3/QHyHoztngHCf6Scb
 XZcvWcnRuhELT3hrJ2KJqXUYKnKNInqThhb4XFxnuq4OVgKQw3hKcPMP4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="445750933"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="445750933"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 09:27:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="774374980"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="774374980"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Sep 2023 09:27:56 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 09:27:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 09:27:55 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 15 Sep 2023 09:27:55 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 15 Sep 2023 09:27:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cB1Ct1oAJrIZjHnBN11OxqGMCw5+oj7kt2+1miNd190s4t+LJyynaMAk55lGUWUabuEN7ZFKnoJ7UuFuHnLwPTIrs+soXLxNc14LJiguFT+9AYmJW+BmUqcRDYdynyP6xoBDyIuWfOnsXTlZbI3d7r1KHiKz9rXqAnwKHUxD4DlZEd8mnpiJ0mYT0l17AkXPH7s8S1oAdDN4jXZ5xBoJhmtjNgi3Fi2uXj6jYoxWxP10AkF/AzGKFf9QwI7/dsLch0X0IhTKHah/7WQSkce0T9g0gl4hAr6ozjX1JSThX03LRi1Xm51qxON/N5Lo81KHk7mjns8ub3Lh4topVVgyJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R5R5Kq0FNbQ7cptLFcOd4UAr+a4fRahj4PC32ZeFIrA=;
 b=n75o39d4XrjFCBQ3vaBXMHYpxqhZrKjzkv3Q8fwU7v70FvNeg0zbrS9dRzZnrc2hp9ue1SfZdZfn7lDjJjIek4E/Pf9JEiv8BzxgdvqdvzlFMCWXD/QKwwN0OjYBltrXQVEgKRNTUsVIotzglU+R6CA/ya7LBVRJS1eQ/pCSzabZmvYu9/Cl9Cc07dJtVyy6lbK9fufY7ksLMXsSqSSHlp2obZ7vV2reg5uMU0S/kPhxGzUI/SiIJcUSlD45L6kTHj3QApy4N0o3B2mbLNvLhamRSxhBsTEFNftet6eAgrLzXaN8mxCBD5PzleTasesYwvqZN7CytY9gCs0utqaQEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 MW3PR11MB4633.namprd11.prod.outlook.com (2603:10b6:303:5b::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6792.21; Fri, 15 Sep 2023 16:27:31 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6768.029; Fri, 15 Sep 2023
 16:27:30 +0000
Date: Fri, 15 Sep 2023 09:27:27 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20230915162727.GZ2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230914202000.1069884-1-dnyaneshwar.bhadane@intel.com>
 <169476451185.32040.6728738528298155299@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <169476451185.32040.6728738528298155299@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR13CA0139.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::24) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|MW3PR11MB4633:EE_
X-MS-Office365-Filtering-Correlation-Id: 45318b19-ff07-4850-160c-08dbb608a875
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3MySFkLVDZ/6aQ7yWYwvnJvvuzR33aEJEr+6kSSKu402B6RQXKSDkVrbL2gi6fc2Zt42xzKYGvN7B9uynYyEbyQ5ykwoIK+Ep/a6C24TvzOhXw4bBwYd+feFc2ZM96WEoNJ24kt/IFtbLRcaWwmA6Mva7hVXYBZfD9HuTwDtMyCpyftdaV+LB00BMOPlrttx0mFKmPlE/MzwchVX6wlRzqPUQTXacCyQaacOa2h1fxb6FPQ5UhNd763MaifCDMUJj6RQUwuVNWHuCFbF7UpnD12qN0WOZxGpvHP/I9vRIZp6bf3skfJoQc1IRosyj9Ogg/dPO7/XvWbov9qRg3QlHR1nGjMSNXd1HssbZeGmqyVSG3kFCjBmgpfZ0My8dy0yjKPAbKxvYXmYRQ0of2TUwdeP6oEviY5A1iNyWABLoV6Io08d8xdJ2z4MlyeRD2O4w6SEVMaHTmO+TCOkmJaiRV7dmqEGRab6w6Mc5qYGyZ2oQdU1XOeIq6ljAAHXxkl7CBmxjl7DgXLffflzVxDtpq2tL5xcrALpHJh4hyB7KxtJoHeibOgjEYMGDKeRJWe9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(39860400002)(376002)(346002)(366004)(186009)(1800799009)(451199024)(41300700001)(316002)(86362001)(66946007)(6916009)(66556008)(66476007)(478600001)(38100700002)(966005)(82960400001)(2906002)(30864003)(5660300002)(4326008)(8936002)(26005)(107886003)(6486002)(1076003)(83380400001)(6506007)(6512007)(6666004)(33656002)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?F5XRx8/jUAgwaTuWdS2BxXg8lR4gRqvVlNvp1X3ZKyqKva24c954DctBQ/3c?=
 =?us-ascii?Q?l8HsAZkkdmZ15tX0gcDT2Lworc+0JzeEp/yFufGA5qlJgqMvYxbTcYHJrpoP?=
 =?us-ascii?Q?/XePRc05SdVprcXfRH9WaYN/UgVle1RbTwUQHWeJ1ggaD7fo+kbwLQNMPlUY?=
 =?us-ascii?Q?5x2qrrD/T/dYMAfufMToioCCi0Q+HXNqP0BLxjtRXy9Gxt60AC4d9759LOOL?=
 =?us-ascii?Q?v4+OCVtuVSSak1u+PX5FVzm4b4SsbAK+zDKucmMjBW4zJQ6aPoPJVm5FpMNU?=
 =?us-ascii?Q?mxu2D/95xEomkJIeY0tfX1L2EZ35wxYtAHr3jtR0xK05kBrQThyXZNBV55oz?=
 =?us-ascii?Q?szdg3e467vqxtbpEGB+kfKWTv+HOIH8jcs+SARQyNkMPmSBvjzs6QmZ1ZO2X?=
 =?us-ascii?Q?IpbbWZ0JOD1D5GlUk0NaCxpGmfBPPOzm1sI5Esx4DKQoofF0uxItSEtrfWhz?=
 =?us-ascii?Q?vmgJntXpycsfxlQ/0Z+cz5DtjAyd4HYbo6uCZ2lA4S2H3e247JHryKbvW9rw?=
 =?us-ascii?Q?BSEf6v6b6ITCG9QR3Mc+7v8KXRqCNad8sTEDzP2VxSuamCt7aixb4dbdLMLx?=
 =?us-ascii?Q?0GfO5sXVu+yqG+K0KLu4PPboAdhyeLzdFbh7Z6GDtmsjaWLtbXf6XV+Axrtl?=
 =?us-ascii?Q?D8LIQcQ/6TcZbxHU7t7r+o7yPeR1J0PaTv7BdIvMqFKer+HE9CXn2dKmJDzI?=
 =?us-ascii?Q?j3wGPeTsEfX7pDQ4oX7zekiHQNWVWZkWPH8gMMHwEO2pL68ZbqUzhy61H5AF?=
 =?us-ascii?Q?qAkBslbhsBj/4hjylYXQl5lrmbIUpP24mkwwuodsB3RbqLbbT54vvfTgXdR7?=
 =?us-ascii?Q?Txcs2Xx71EcdJS2r2qlIHW62qFvdZLauZ+GtuYpPTM1oBmsDmcOj2cj7ZGRg?=
 =?us-ascii?Q?arSNuuQV0aMjUtfAefftHHN3B2m+AwkpkN5EThqKBI54/gMsMs71tY1rxTuq?=
 =?us-ascii?Q?wepgaDCcSx+Eqze6ycTDXDWCWrbLWbowQK1HcnNfHwzwdkDE+MfwGoCwVnuC?=
 =?us-ascii?Q?GHPp0LCaboBC/UHRdr3xCQ5w2g7ffnUtl4Ffxx4bMy9381mWUy7vnhsqreiB?=
 =?us-ascii?Q?HV+49CQNuZdUtgipTo/2OIOql1ju6bLX1Vba0sUn//5h4ugUxA/4nanfr5kK?=
 =?us-ascii?Q?kvR1l/juSFA2Klt6r1EGTHhdi3w4MlpWAwNQNKq+ZrZekN1fXD8cO6jq2txI?=
 =?us-ascii?Q?Dr/uMHT4x8K1psH398kDjAcPsQkB3n1C0Al4NWJGi0g8TxefyjPw2CIqBAWJ?=
 =?us-ascii?Q?VlbKFuI5MS0skIEJLFROFe8UrFQHMU+5JHtoV4lM6cbSzvbmpCskSVLwHzdp?=
 =?us-ascii?Q?Y26vqAEFet/EKFeKXPy36pUWM8f/nKC68+tPJWIxh5bDnkkRUSM9x+I2Ze51?=
 =?us-ascii?Q?iGSgTpWT7GqF0EspbcZFRSHxjdW+ZbU6nifiaPR+LRe7AhqrsEYXugCPCQcp?=
 =?us-ascii?Q?SEtcHoj8obbbu6pudgjGs8dHrv4KT+3LiHnXlhcEvDnYO5IFOo2Hd2nsYWXj?=
 =?us-ascii?Q?12+OgU5VrhEyCLu0r4g/qtW203ynOej4LHz9HC6YLEGqjKSE+npE/PjPFW5V?=
 =?us-ascii?Q?4nIep+YlprMRgzK1BGpThDwXAEiaieP69VC2xXNBi9xoHZdEeThWigbwEUNw?=
 =?us-ascii?Q?9A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 45318b19-ff07-4850-160c-08dbb608a875
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2023 16:27:30.7532 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FcyspFsmPlF3l9z7Od0OPWk1myTqlbx/v+tXxnwBGryGMGy5qshZlBVdzLkPe09NZWfuvPQ0AylusIVDJq92SFSHE6J87dmbaIilMWkyao8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4633
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogIGZhaWx1cmUgZm9yIGRy?=
 =?utf-8?q?m/i915=3A_Add_Wa=5F18022495364_=28rev2=29?=
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

On Fri, Sep 15, 2023 at 07:55:11AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Add Wa_18022495364 (rev2)
> URL   : https://patchwork.freedesktop.org/series/123721/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13633_full -> Patchwork_123721v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_123721v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_123721v2_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (9 -> 10)
> ------------------------------
> 
>   Additional (1): shard-rkl0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_123721v2_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_pm_freq_api@freq-suspend@gt0:
>     - shard-dg2:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend@gt0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html

System entered suspend and then just never woke back up.  Appears to be
known issue https://gitlab.freedesktop.org/drm/intel/-/issues/8770

> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:
>     - shard-apl:          NOTRUN -> [INCOMPLETE][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html

Similar to the above --- system entered suspend and then never woke back
up.  There are several similar issues in the bug database, although none
for this specific platform:

 * https://gitlab.freedesktop.org/drm/intel/-/issues/7898
 * https://gitlab.freedesktop.org/drm/intel/-/issues/8876
 * https://gitlab.freedesktop.org/drm/intel/-/issues/9280

Regardless, the programming changes done in this patch would not have
any impact on an APL platform, so this failure is unrelated.


Applied to drm-intel-gt-next.  Thanks for the patch.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_123721v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-mtlp:         NOTRUN -> [SKIP][4] ([i915#7701])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-8/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@drm_fdinfo@busy-hang@bcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][5] ([i915#8414]) +10 other tests skip
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-11/igt@drm_fdinfo@busy-hang@bcs0.html
> 
>   * igt@drm_fdinfo@virtual-busy-all:
>     - shard-mtlp:         NOTRUN -> [SKIP][6] ([i915#8414])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-8/igt@drm_fdinfo@virtual-busy-all.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-dg2:          NOTRUN -> [SKIP][7] ([i915#7697]) +1 other test skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-1/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_ctx_param@set-priority-not-supported:
>     - shard-dg2:          NOTRUN -> [SKIP][8] ([fdo#109314])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-11/igt@gem_ctx_param@set-priority-not-supported.html
> 
>   * igt@gem_ctx_persistence@engines-hostile-preempt:
>     - shard-snb:          NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#1099]) +1 other test skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-snb2/igt@gem_ctx_persistence@engines-hostile-preempt.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-mtlp:         NOTRUN -> [ABORT][10] ([i915#7892] / [i915#9262])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-8/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_balancer@bonded-false-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][11] ([i915#4812])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-1/igt@gem_exec_balancer@bonded-false-hang.html
> 
>   * igt@gem_exec_fair@basic-none-rrul:
>     - shard-dg2:          NOTRUN -> [SKIP][12] ([i915#3539] / [i915#4852]) +1 other test skip
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-11/igt@gem_exec_fair@basic-none-rrul.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#2842]) +1 other test fail
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_flush@basic-uc-prw-default:
>     - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#3539])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-11/igt@gem_exec_flush@basic-uc-prw-default.html
> 
>   * igt@gem_exec_params@rsvd2-dirt:
>     - shard-dg2:          NOTRUN -> [SKIP][16] ([fdo#109283] / [i915#5107])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-11/igt@gem_exec_params@rsvd2-dirt.html
> 
>   * igt@gem_exec_reloc@basic-cpu-read-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][17] ([i915#3281])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-8/igt@gem_exec_reloc@basic-cpu-read-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-wc-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#3281]) +4 other tests skip
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-11/igt@gem_exec_reloc@basic-wc-cpu.html
> 
>   * igt@gem_exec_schedule@preempt-hang@vcs0:
>     - shard-mtlp:         [PASS][19] -> [ABORT][20] ([i915#9262]) +2 other tests abort
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-mtlp-5/igt@gem_exec_schedule@preempt-hang@vcs0.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-5/igt@gem_exec_schedule@preempt-hang@vcs0.html
> 
>   * igt@gem_exec_schedule@reorder-wide:
>     - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#4537] / [i915#4812])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-11/igt@gem_exec_schedule@reorder-wide.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-threaded-none:
>     - shard-dg2:          NOTRUN -> [SKIP][22] ([i915#4860])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-1/igt@gem_fence_thrash@bo-write-verify-threaded-none.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-glk:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#2190])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-glk9/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi@lmem0:
>     - shard-dg1:          [PASS][24] -> [DMESG-WARN][25] ([i915#4391] / [i915#4423])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-dg1-17/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg1-17/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][26] ([i915#4613])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-8/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
> 
>   * igt@gem_media_vme:
>     - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#284])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-11/igt@gem_media_vme.html
> 
>   * igt@gem_mmap_wc@bad-object:
>     - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#4083]) +3 other tests skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-1/igt@gem_mmap_wc@bad-object.html
> 
>   * igt@gem_partial_pwrite_pread@reads:
>     - shard-mtlp:         NOTRUN -> [SKIP][29] ([i915#3282]) +2 other tests skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-8/igt@gem_partial_pwrite_pread@reads.html
> 
>   * igt@gem_ppgtt@blt-vs-render-ctxn:
>     - shard-mtlp:         [PASS][30] -> [ABORT][31] ([i915#7977] / [i915#8668])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-mtlp-1/igt@gem_ppgtt@blt-vs-render-ctxn.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-5/igt@gem_ppgtt@blt-vs-render-ctxn.html
> 
>   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>     - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#4270]) +1 other test skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-11/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> 
>   * igt@gem_tiled_pread_basic:
>     - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#4079]) +1 other test skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-11/igt@gem_tiled_pread_basic.html
> 
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#3297])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-1/igt@gem_userptr_blits@coherency-unsync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
>     - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#3297] / [i915#4880])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-dg2:          [PASS][36] -> [FAIL][37] ([fdo#103375])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-dg2-6/igt@gem_workarounds@suspend-resume-context.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-5/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@gen9_exec_parse@basic-rejected:
>     - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#2856])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-8/igt@gen9_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - shard-dg2:          NOTRUN -> [SKIP][39] ([i915#2856]) +2 other tests skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-11/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg2:          [PASS][40] -> [DMESG-WARN][41] ([i915#7061] / [i915#8617])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-dg2-5/igt@i915_module_load@reload-with-fault-injection.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-untiled:
>     - shard-apl:          [PASS][42] -> [FAIL][43] ([i915#7036])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-apl1/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-apl3/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
> 
>   * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg2:          [PASS][44] -> [SKIP][45] ([i915#1397]) +1 other test skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-dg2-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-10/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
>     - shard-glk:          NOTRUN -> [SKIP][46] ([fdo#109271]) +48 other tests skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-glk9/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [PASS][47] -> [SKIP][48] ([i915#1397]) +1 other test skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-rkl-2/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@i915_pm_rpm@pc8-residency:
>     - shard-dg2:          NOTRUN -> [SKIP][49] ([fdo#109506])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-1/igt@i915_pm_rpm@pc8-residency.html
> 
>   * igt@i915_pm_rps@thresholds-idle@gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#8925])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-11/igt@i915_pm_rps@thresholds-idle@gt0.html
> 
>   * igt@i915_selftest@mock@memory_region:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][51] ([i915#9312])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-snb2/igt@i915_selftest@mock@memory_region.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#4077]) +4 other tests skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-1/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc_ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#8502]) +3 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-rkl-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc_ccs.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#1769] / [i915#3555])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>     - shard-mtlp:         NOTRUN -> [SKIP][55] ([fdo#111614])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-8/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][56] ([fdo#111614]) +2 other tests skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-11/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
>     - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#5190]) +4 other tests skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-1/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-mtlp:         NOTRUN -> [SKIP][58] ([fdo#111615]) +3 other tests skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#4538] / [i915#5190]) +1 other test skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-11/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#3886] / [i915#6095])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-8/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#3689] / [i915#5354]) +9 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-1/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][62] ([i915#6095]) +2 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-8/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#3886]) +3 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-glk9/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_mtl_rc_ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#5354]) +27 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-1/igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_mtl_rc_ccs.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#4087] / [i915#7213]) +2 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#7213])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_chamelium_color@ctm-0-25:
>     - shard-dg2:          NOTRUN -> [SKIP][67] ([fdo#111827])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-11/igt@kms_chamelium_color@ctm-0-25.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#7828]) +4 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-11/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
>     - shard-mtlp:         NOTRUN -> [SKIP][69] ([i915#7828]) +1 other test skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-8/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html
> 
>   * igt@kms_content_protection@atomic-dpms@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][70] ([i915#7173])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-11/igt@kms_content_protection@atomic-dpms@pipe-a-dp-4.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#7118])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-7/igt@kms_content_protection@lic.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-mtlp:         NOTRUN -> [SKIP][72] ([i915#3359])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-8/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>     - shard-glk:          [PASS][73] -> [FAIL][74] ([i915#72])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
>     - shard-mtlp:         NOTRUN -> [SKIP][75] ([i915#3546])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-8/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][76] ([fdo#109274] / [i915#5354])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#3804])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
>     - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#3555]) +4 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#3555] / [i915#3840])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-11/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][80] ([i915#8841])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-snb2/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][81] ([fdo#109274]) +5 other tests skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-11/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-edp1:
>     - shard-mtlp:         [PASS][82] -> [DMESG-WARN][83] ([i915#9262]) +4 other tests dmesg-warn
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-mtlp-7/igt@kms_flip@flip-vs-suspend@b-edp1.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-4/igt@kms_flip@flip-vs-suspend@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#2672])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-wc:
>     - shard-mtlp:         NOTRUN -> [SKIP][85] ([i915#1825])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#3458]) +4 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#8708]) +10 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html
> 
>   * igt@kms_getfb@getfb-reject-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#6118])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-1/igt@kms_getfb@getfb-reject-ccs.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#3555] / [i915#8228]) +2 other tests skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-7/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
>     - shard-dg2:          NOTRUN -> [SKIP][90] ([fdo#109289]) +2 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-11/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html
> 
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#3555] / [i915#8821])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-1/igt@kms_plane_lowres@tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [FAIL][92] ([i915#8292])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-c-hdmi-a-1:
>     - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#5176]) +19 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg1-19/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#5176]) +3 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][95] ([i915#5235]) +3 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg1-14/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#5235]) +3 other tests skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-8/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#5235]) +23 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#5235]) +5 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#658])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-glk9/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#658])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#1072])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-11/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#5461] / [i915#658])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_rotation_crc@primary-rotation-90:
>     - shard-rkl:          [PASS][103] -> [INCOMPLETE][104] ([i915#8875]) +1 other test incomplete
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-rkl-2/igt@kms_rotation_crc@primary-rotation-90.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-rkl-7/igt@kms_rotation_crc@primary-rotation-90.html
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#4235])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-11/igt@kms_rotation_crc@primary-rotation-90.html
> 
>   * igt@kms_selftest@drm_cmdline:
>     - shard-glk:          NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#8661])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-glk9/igt@kms_selftest@drm_cmdline.html
> 
>   * igt@kms_selftest@drm_dp_mst:
>     - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#8661])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-11/igt@kms_selftest@drm_dp_mst.html
> 
>   * igt@kms_tv_load_detect@load-detect:
>     - shard-snb:          NOTRUN -> [SKIP][108] ([fdo#109271]) +119 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-snb2/igt@kms_tv_load_detect@load-detect.html
> 
>   * igt@kms_vrr@flip-suspend:
>     - shard-mtlp:         NOTRUN -> [SKIP][109] ([i915#3555] / [i915#8808])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-8/igt@kms_vrr@flip-suspend.html
> 
>   * igt@perf@polling@1-vecs0:
>     - shard-mtlp:         NOTRUN -> [FAIL][110] ([i915#9259])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-4/igt@perf@polling@1-vecs0.html
> 
>   * igt@prime_vgem@basic-read:
>     - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#3291] / [i915#3708])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-1/igt@prime_vgem@basic-read.html
> 
>   * igt@runner@aborted:
>     - shard-mtlp:         NOTRUN -> [FAIL][112] ([i915#7812])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-5/igt@runner@aborted.html
> 
>   * igt@v3d/v3d_submit_cl@bad-multisync-out-sync:
>     - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#2575]) +2 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-8/igt@v3d/v3d_submit_cl@bad-multisync-out-sync.html
> 
>   * igt@v3d/v3d_submit_csd@bad-multisync-in-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#2575]) +4 other tests skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-1/igt@v3d/v3d_submit_csd@bad-multisync-in-sync.html
> 
>   * igt@vc4/vc4_tiling@get-bad-handle:
>     - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#7711]) +4 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-1/igt@vc4/vc4_tiling@get-bad-handle.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_engines@execute-oneforall:
>     - shard-mtlp:         [ABORT][116] ([i915#9262]) -> [PASS][117] +1 other test pass
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-mtlp-8/igt@gem_ctx_engines@execute-oneforall.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-8/igt@gem_ctx_engines@execute-oneforall.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglu:         [FAIL][118] ([i915#2842]) -> [PASS][119] +1 other test pass
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-tglu-4/igt@gem_exec_fair@basic-flow@rcs0.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-tglu-5/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-rkl:          [FAIL][120] ([i915#2842]) -> [PASS][121]
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-rkl-1/igt@gem_exec_fair@basic-pace@vcs0.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-rkl-2/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@i915_hangman@gt-error-state-capture@vcs1:
>     - shard-mtlp:         [DMESG-WARN][122] ([i915#9262]) -> [PASS][123]
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-mtlp-5/igt@i915_hangman@gt-error-state-capture@vcs1.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-7/igt@i915_hangman@gt-error-state-capture@vcs1.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>     - shard-dg1:          [FAIL][124] ([i915#3591]) -> [PASS][125]
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
> 
>   * igt@i915_pm_rpm@dpms-lpsp:
>     - shard-dg1:          [SKIP][126] ([i915#1397]) -> [PASS][127] +1 other test pass
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-dg1-18/igt@i915_pm_rpm@dpms-lpsp.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg1-19/igt@i915_pm_rpm@dpms-lpsp.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-rkl:          [SKIP][128] ([i915#1397]) -> [PASS][129]
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-rkl-2/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-rkl-7/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-tglu:         [FAIL][130] ([i915#3743]) -> [PASS][131]
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-tglu-9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
>     - shard-mtlp:         [FAIL][132] ([i915#8248]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-mtlp-4/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-3/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-badstride:
>     - shard-dg2:          [FAIL][134] ([i915#6880]) -> [PASS][135]
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-badstride.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-badstride.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-dg2:          [FAIL][136] ([fdo#103375]) -> [PASS][137] +3 other tests pass
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:
>     - shard-apl:          [INCOMPLETE][138] -> [PASS][139]
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html
> 
>   * {igt@kms_pm_dc@dc9-dpms}:
>     - shard-tglu:         [SKIP][140] ([i915#4281]) -> [PASS][141]
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-tglu-5/igt@kms_pm_dc@dc9-dpms.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-tglu-4/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak-pipe-b:
>     - shard-dg1:          [FAIL][142] ([i915#9196]) -> [PASS][143]
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-dg1-17/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg1-17/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak-pipe-d:
>     - shard-mtlp:         [FAIL][144] ([i915#9196]) -> [PASS][145] +1 other test pass
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak-pipe-d.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak-pipe-d.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fence@basic-await:
>     - shard-snb:          [ABORT][146] ([i915#8865]) -> [SKIP][147] ([fdo#109271])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-snb7/igt@gem_exec_fence@basic-await.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-snb4/igt@gem_exec_fence@basic-await.html
> 
>   * igt@gem_exec_schedule@preempt-hang@vcs1:
>     - shard-mtlp:         [ABORT][148] ([i915#9262]) -> [DMESG-WARN][149] ([i915#9262])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-mtlp-5/igt@gem_exec_schedule@preempt-hang@vcs1.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-mtlp-5/igt@gem_exec_schedule@preempt-hang@vcs1.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts:
>     - shard-dg1:          [SKIP][150] ([i915#4812]) -> [SKIP][151] ([i915#4423] / [i915#4812])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-dg1-17/igt@gem_exec_schedule@preempt-queue-contexts.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg1-17/igt@gem_exec_schedule@preempt-queue-contexts.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          [SKIP][152] ([i915#7118]) -> [SKIP][153] ([i915#7118] / [i915#7162])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-dg2-6/igt@kms_content_protection@type1.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-11/igt@kms_content_protection@type1.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          [SKIP][154] ([i915#3955]) -> [SKIP][155] ([fdo#110189] / [i915#3955])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][156] ([i915#4816]) -> [SKIP][157] ([i915#4070] / [i915#4816])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_psr@sprite_plane_onoff:
>     - shard-dg1:          [SKIP][158] ([i915#1072]) -> [SKIP][159] ([i915#1072] / [i915#4078])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-dg1-15/igt@kms_psr@sprite_plane_onoff.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg1-16/igt@kms_psr@sprite_plane_onoff.html
> 
>   * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
>     - shard-dg2:          [CRASH][160] ([i915#7331]) -> [INCOMPLETE][161] ([i915#5493])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13633/shard-dg2-1/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/shard-dg2-3/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
>   [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#5107]: https://gitlab.freedesktop.org/drm/intel/issues/5107
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6118]: https://gitlab.freedesktop.org/drm/intel/issues/6118
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
>   [i915#7036]: https://gitlab.freedesktop.org/drm/intel/issues/7036
>   [i915#7061]: https://gitlab.freedesktop.org/drm/intel/issues/7061
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
>   [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
>   [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
>   [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
>   [i915#7331]: https://gitlab.freedesktop.org/drm/intel/issues/7331
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7812]: https://gitlab.freedesktop.org/drm/intel/issues/7812
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7892]: https://gitlab.freedesktop.org/drm/intel/issues/7892
>   [i915#7977]: https://gitlab.freedesktop.org/drm/intel/issues/7977
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8248]: https://gitlab.freedesktop.org/drm/intel/issues/8248
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
>   [i915#8617]: https://gitlab.freedesktop.org/drm/intel/issues/8617
>   [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
>   [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8808]: https://gitlab.freedesktop.org/drm/intel/issues/8808
>   [i915#8821]: https://gitlab.freedesktop.org/drm/intel/issues/8821
>   [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
>   [i915#8865]: https://gitlab.freedesktop.org/drm/intel/issues/8865
>   [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
>   [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
>   [i915#9053]: https://gitlab.freedesktop.org/drm/intel/issues/9053
>   [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
>   [i915#9259]: https://gitlab.freedesktop.org/drm/intel/issues/9259
>   [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262
>   [i915#9312]: https://gitlab.freedesktop.org/drm/intel/issues/9312
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13633 -> Patchwork_123721v2
> 
>   CI-20190529: 20190529
>   CI_DRM_13633: 5cf0e59ecc1424e51a5f5cf2f26682b5dcea5a25 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7488: 099e058c5dfb7a49942edf03cae88a52a77077a3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_123721v2: 5cf0e59ecc1424e51a5f5cf2f26682b5dcea5a25 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123721v2/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
