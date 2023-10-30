Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFBE7DC212
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 22:48:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C33A310E384;
	Mon, 30 Oct 2023 21:47:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F157110E383
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 21:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698702474; x=1730238474;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=fAphZ8KwsYhOxD8Al8tw6YaeZKhMtx8blHJK+eEi9y4=;
 b=AnNNsyCLfE2OSpu+Z0+5EZFxMOjW3j4qlbzYUOQhXInhmGVXQyAeHsLS
 FMGu8Nyn4ghKAV7NBGFLgEZhH7mHmFsj2HTK+OKQYxi7gAV0GTaDMhVxI
 jf2X0bXaqcyeIqvnwaoQzaZ143lHy2eS/R5+oWkC3Su/CG6xUrlccOUc5
 lzw07EtLqcafpSAwsLzcLXFq20Bv3rq6FVzUQ8Z/T0tm6ecNVqR4w8DMB
 HlFfOj4ATfpWUD3HUTA5CsQ4e6e2DRgk3MmSlskMdSJble92XzwKt+OJX
 n9HmOsvlJbsAUMQZn9txslx3utwBzCFs3/9o6lW/JO5pG0YVhvzdOrg5P A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="367515948"
X-IronPort-AV: E=Sophos;i="6.03,264,1694761200"; d="scan'208";a="367515948"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 14:47:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="736876663"
X-IronPort-AV: E=Sophos;i="6.03,264,1694761200"; d="scan'208";a="736876663"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Oct 2023 14:47:52 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 30 Oct 2023 14:47:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 30 Oct 2023 14:47:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 30 Oct 2023 14:47:52 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 30 Oct 2023 14:47:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j0HyH4hgUxZ6m7MnQiuVdle1nB9LAfu5U2NEhr9/mo2XJ0eQ4bmkMrCbKRFbMzoO3HPRC4MH5dbZsQQnc/jQduQK9HyYHkv3vUxIlgFahSRssLXOnNVqgF5QW2p22Tjv7KLvrXXn93yRV7LWQLLulIwoHOVDty+R67Dr3TKeRrXA74W3+LSYe8qT8fJ9eK1dcoVCIOtODwfLsvKwXlZnkwlkUIYFa/hVZG0bTAtbPlDmHPl3h+55Zpfysbh5dmvrknqQj8kfqgr7w25V4EoYaV8rliTTW7RNPKDNR3HJyUP4Lv/R2kQpos+z0pm8EFHZXqixVYzkxSlrbYLhghYZMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cydxuV3/fRjo5qSeH9p56Qme1ZCSOKt83mSXOFy6YV0=;
 b=Jlx8TEjZRmt7W/G7iN356MkSyo/IJOBK5k7zgodrSqlOI7YVdisiLS71cKjk7RV5wZ1OMn3clWBTUu86ScUSWI+xmzwM8mp4JuY21wHIM3NwExUCI/DubTw3ZwpP7OSKGxzDHTMDOBPLkapRHULQqi1TmVE0V4CvP9iw11IKBnluKUh/yh4tj7Ec20/T+hX6/wsJOahGg5bsS6CIyyTgfzBC+wWDK91hRdYWlzgj0jDlLDE2ahtirisIg6RGuupE2iAujh+K+AH4i1oykXsS4TpdGPPGUn/5KTSBsebmkDpgpWqadZOlYfICC46GT6Ox0Sbq8SgPT9sHEqfPQnyqRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 MW4PR11MB6739.namprd11.prod.outlook.com (2603:10b6:303:20b::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.28; Mon, 30 Oct
 2023 21:47:28 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f723:f4d9:c12a:5b62]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f723:f4d9:c12a:5b62%4]) with mapi id 15.20.6933.028; Mon, 30 Oct 2023
 21:47:28 +0000
Date: Mon, 30 Oct 2023 14:47:26 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20231030214726.GN1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231025131709.3368517-1-dnyaneshwar.bhadane@intel.com>
 <169838995571.19710.10807697626099609646@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <169838995571.19710.10807697626099609646@emeril.freedesktop.org>
X-ClientProxiedBy: BY5PR04CA0018.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::28) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|MW4PR11MB6739:EE_
X-MS-Office365-Filtering-Correlation-Id: 16f0f373-6a99-4be6-e4fe-08dbd991cfd6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Kkf3Wwj7Da5obVEzWZh2xu3vRAWsRSxWMq+oZU7jH/AFJqdnFtGwS0/zudoBezLS+9lLrmKuZXF4RfWI7XeP3sblu6eIGNFVbox0KrGw1Ks7vctyGirpO/4MRY58CnrKQS80zXS0QKBaN8KbX3z9LqThcCWbGUCYAinSHuuy0wwq88XVJOoSBwpy8SH+w2MQP7oJ5SVViIxYYek2EeEmpmkNTz6YOUmbSoywuMQwk1YPyzOIlC2zIRB2VKIAQjMGjgCX8XaJBZjl0Iq4tEdhh6R5MrRypBTmVgspG8av/vIKS84nTMuhfvDCjYozR5oP+SLVbIfZtNL0Tvm9jg9tM43LdV3lE+gf5Q7ihtjpozxnJAoh+v4WbEp+v4y1P7NufsUP5OS8v6JronpdsfCMGUfuN2tGQ6ET7wS00tqK0KnxztBYQraUoggn1VoldQoHm2s1I2VSP4HIoYe8wyWv0qLYnk4nyE1xidFeJBNffN6+EAw4DpDdISeQEUK5DzUmINPWsoZwu37dl7vBy496HC4fTqDe/OSiFWUzA8Xc4xjosEfcZYhnwzQ0GI7p96l5no/rUUSh3MN5TyG5DG/03DINqWJNN+u+S1akpgPS/P32j3z+n4K9ZUBfvCOqlbqqEFzCYCMLLdqlp+5AROK67314+gSMnpRxcBy1cQ7ChA8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(136003)(39860400002)(376002)(346002)(230922051799003)(230173577357003)(230273577357003)(451199024)(186009)(64100799003)(1800799009)(478600001)(66946007)(6506007)(966005)(6486002)(82960400001)(83380400001)(33656002)(38100700002)(66556008)(107886003)(1076003)(66476007)(2906002)(41300700001)(6512007)(26005)(4326008)(86362001)(5660300002)(30864003)(6916009)(8936002)(316002)(13750500001)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rip6JHVk7Kp1jUx/Fu1hJ+cKYyW0jXoU8JOYcel0v+ANlg1XNIrq1xEp1dQW?=
 =?us-ascii?Q?K0OqGkhuMuE1cwcS/2CJfkOaLMIklCMrHCGqN/M2i5viH+QSM5vFdORUMWPz?=
 =?us-ascii?Q?z0APSSLCHB/nV1HSlYY++KIYy75HY2F4WV2exXxxtkn5RKSTYDbDCpVQYt6k?=
 =?us-ascii?Q?4uH40AXE4Aes3p2nkrCNdsrIqx9eA/BqqQvHsyQKt4MAfgKTPzCsCRKpFqBX?=
 =?us-ascii?Q?zSmam6VuCPeTTVp3LpTpOvsbGyyTwxGQ3sRP7LYcesMJcxLg92A7qg6DzKzD?=
 =?us-ascii?Q?3FPez+o5OM8J05jWUx4fDrYzBWYz23n9Y3cR0+BDF37ANcUXvo8Yx5z/z3D5?=
 =?us-ascii?Q?c4D/JIUnwHEAgkV+2NdUzjzUWX9BR8R40RaiS1ET3upDURu7s424ucturYZk?=
 =?us-ascii?Q?ZPZD53xeR5lAYbsUHgYkGyH2s/2R9a7BN239/j7jYo/OBfTRn/aZzKuauu2p?=
 =?us-ascii?Q?EBij+i+tO+OH3pgDBUzI0iuVMrKmvRiRlNaHDsAD8vq+PIcs2trY9lTWUyJW?=
 =?us-ascii?Q?q3I4/zbH4FA5nRHOdS7OPf9d3UAaxfxQrZJ3SOvvip0VFuLIM5LMtuURX6B+?=
 =?us-ascii?Q?A1+sKMs7VerJs00ORp1N+YkBs9lmsRTXedJu9IBYb0XEF8+shvvegk80/+h9?=
 =?us-ascii?Q?P1AvsdQBIFfT+tZ4tE2aAhDxHsGZ7guviUf37b9RwGv+TLZUy995sJdml4O+?=
 =?us-ascii?Q?J10OLAZHmvqTgGwCjZSOPqCr9TMSbsUXvSWZQ1AAZq/9G6padXFI/MRnnhfB?=
 =?us-ascii?Q?qt0s9YVxJqFx/IYWWwRtAj/9y5x/G0yU57sLS/l/4gqeH6sv4Lc3VcujWIKA?=
 =?us-ascii?Q?S4ZEWZRqLeA3IEbrudFUDqxut5If8tERT2DCzmK7wOCyq2BGQaAYtY4EE57k?=
 =?us-ascii?Q?KFa6wbzNbrUA0KKa+npb3+/qsJENKLEddaR/4TVcUgg0WTB5mbXcBHITXi1t?=
 =?us-ascii?Q?nmV4Cqqgdhwh53v7umQFiGB4lLTYQSOP9a2L6APi/QL5h3kHnPveBIMeACGj?=
 =?us-ascii?Q?2RFXhJ6lc7cD1EEezJMsmmD2mzTPVBTK9lMX0HZOpwNdOM/JTnlfREWgbfoX?=
 =?us-ascii?Q?L4iTfMJwpaE/MyUx/FNDE8g3EZkudGkkli90/WrysDxqHmtlQzcR323lkOwO?=
 =?us-ascii?Q?QDl86rn1vCbiHCBEUb+xJPxnlHlO88kE/1ZiCzqvaZ0fAu/A3r2b3r3MP97Q?=
 =?us-ascii?Q?fwO0bpEKW9IzmQQ2RfBvWm4l83TTy8JrI4iU/tZ3pOhnzIP7KWoFJOKPmje6?=
 =?us-ascii?Q?74LhKp3vfsgRkwRMYGdzRuH1jl75CBsAzZ6wWRFkBnZ6YwmgpYE/g4OAddXH?=
 =?us-ascii?Q?PZMC4ySqp0sWG7nwUATxa50/zlCmKCy6r711R48TQypp5hlnEtBcEJpQq5X+?=
 =?us-ascii?Q?4VcJmNKA0k++YOhW2CPCameSzYD9jIHlQLrsb48F2uLtaRmb076do+aEi0/O?=
 =?us-ascii?Q?Ke3ACc4TUZ1QdNpgF0DsyVKO6TA/bxW0AprjtqgMbOeuA9tOambaWyiPUEvo?=
 =?us-ascii?Q?PcGlyNEc+ExS0rUVkUTcUT9KcO066dK2q6OxFtJye2ytuD7hT55kUtWucRaB?=
 =?us-ascii?Q?UQYEduJcekHcv5+cIScZ8OzlHyUpsmds0Z7bg0hRevrDGQKNBV/1LEIqKHMI?=
 =?us-ascii?Q?Lw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 16f0f373-6a99-4be6-e4fe-08dbd991cfd6
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2023 21:47:28.6114 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C5/aua7iLMG11hU9mUGSC4aMKKILLOtmVRcCGvWfPnkafLmqb1W/JI5ajAburqqzaEAQ0DBxT5Ko2jAdFUJOa8PJ1LanytihvAVjeKwJ170=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6739
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogIGZhaWx1cmUgZm9yIGRy?=
 =?utf-8?q?m/i915/mtl=3A_Add_Wa=5F22016670082?=
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

On Fri, Oct 27, 2023 at 06:59:15AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/mtl: Add Wa_22016670082
> URL   : https://patchwork.freedesktop.org/series/125574/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13786_full -> Patchwork_125574v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_125574v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_125574v1_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (12 -> 12)
> ------------------------------
> 
>   Additional (1): shard-mtlp0 
>   Missing    (1): shard-tglu0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_125574v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_endless@dispatch@bcs0:
>     - shard-rkl:          NOTRUN -> [SKIP][1] +5 other tests skip
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html
> 
>   * igt@i915_hangman@engine-engine-error@bcs0:
>     - shard-rkl:          [PASS][2] -> [SKIP][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@i915_hangman@engine-engine-error@bcs0.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html

This patch is just adding a workaround to the Xe_LPM+ list; that code
will never run on RKL and can't be responsible for any of the skips
here.

> 
>   
> #### Warnings ####
> 
>   * igt@device_reset@unbind-reset-rebind:
>     - shard-dg1:          [INCOMPLETE][4] ([i915#9408]) -> [ABORT][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-dg1-12/igt@device_reset@unbind-reset-rebind.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg1-13/igt@device_reset@unbind-reset-rebind.html

Same as above; Xe_LPM+ workarounds won't affect DG1 behavior either.


Applied to drm-intel-gt-next.  Thanks for the patch and review.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@kms_pm_dc@dc5-dpms-negative}:
>     - shard-rkl:          [PASS][6] -> [SKIP][7] +1 other test skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@kms_pm_dc@dc5-dpms-negative.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_pm_dc@dc5-dpms-negative.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_125574v1_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-glk:          ([PASS][8], [PASS][9], [FAIL][10], [FAIL][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [FAIL][30], [PASS][31], [PASS][32]) ([i915#8293]) -> ([PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk2/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk1/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk1/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk1/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk2/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk2/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk3/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk3/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk3/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk3/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk4/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk4/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk9/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk9/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk9/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk9/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk8/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk8/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk8/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk8/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk6/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk6/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk6/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk4/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk4/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk9/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk9/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk9/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk9/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk8/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk8/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk8/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk6/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk6/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk6/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk6/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk4/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk4/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk4/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk3/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk3/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk3/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk2/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk2/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk2/boot.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk2/boot.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk1/boot.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk1/boot.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk1/boot.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk1/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#7701])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-1/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@drm_fdinfo@isolation@rcs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#8414]) +5 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-mtlp-5/igt@drm_fdinfo@isolation@rcs0.html
> 
>   * igt@drm_fdinfo@most-busy-check-all@bcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#8414]) +20 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@drm_fdinfo@most-busy-check-all@bcs0.html
> 
>   * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
>     - shard-rkl:          [PASS][61] -> [FAIL][62] ([i915#7742])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-6/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
> 
>   * igt@fbdev@info:
>     - shard-rkl:          [PASS][63] -> [SKIP][64] ([i915#1849] / [i915#2582])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@fbdev@info.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@fbdev@info.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#7697]) +1 other test skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#7957])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#8562])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-1/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglu:         [PASS][68] -> [FAIL][69] ([i915#6268])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@ccs1:
>     - shard-dg2:          [PASS][70] -> [FAIL][71] ([fdo#103375])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-dg2-6/igt@gem_ctx_isolation@preservation-s3@ccs1.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-11/igt@gem_ctx_isolation@preservation-s3@ccs1.html
> 
>   * igt@gem_ctx_persistence@heartbeat-stop:
>     - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#8555]) +1 other test skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-6/igt@gem_ctx_persistence@heartbeat-stop.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-tglu:         NOTRUN -> [SKIP][73] ([i915#280])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-tglu-2/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#280]) +1 other test skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-6/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_exec_balancer@bonded-dual:
>     - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#4771]) +1 other test skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@gem_exec_balancer@bonded-dual.html
> 
>   * igt@gem_exec_balancer@invalid-bonds:
>     - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#4036])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@gem_exec_balancer@invalid-bonds.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#4525])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-1/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_capture@capture-recoverable:
>     - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#6344])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@gem_exec_capture@capture-recoverable.html
> 
>   * igt@gem_exec_fair@basic-none:
>     - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#4473] / [i915#4771])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-mtlp-5/igt@gem_exec_fair@basic-none.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-tglu:         NOTRUN -> [FAIL][80] ([i915#2842])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-tglu-2/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-rkl:          [PASS][81] -> [FAIL][82] ([i915#2842]) +2 other tests fail
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@gem_exec_fair@basic-none@vcs0.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-7/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-apl:          [PASS][83] -> [FAIL][84] ([i915#2842])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-apl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle:
>     - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#3539]) +2 other tests skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-1/igt@gem_exec_fair@basic-throttle.html
> 
>   * igt@gem_exec_fence@submit67:
>     - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#4812])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-6/igt@gem_exec_fence@submit67.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#3539] / [i915#4852]) +4 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_exec_gttfill@multigpu-basic:
>     - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#7697]) +2 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@gem_exec_gttfill@multigpu-basic.html
> 
>   * igt@gem_exec_params@rsvd2-dirt:
>     - shard-rkl:          NOTRUN -> [SKIP][89] ([fdo#109283])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-7/igt@gem_exec_params@rsvd2-dirt.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#3281]) +2 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-1/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-gtt-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][91] ([i915#3281])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-mtlp-5/igt@gem_exec_reloc@basic-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
>     - shard-rkl:          [PASS][92] -> [SKIP][93] ([i915#3281]) +9 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#3281]) +11 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@gem_exec_reloc@basic-wc.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-chain:
>     - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#4537] / [i915#4812]) +2 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-6/igt@gem_exec_schedule@preempt-queue-contexts-chain.html
> 
>   * igt@gem_exec_schedule@preemptive-hang:
>     - shard-snb:          NOTRUN -> [SKIP][96] ([fdo#109271]) +51 other tests skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-snb4/igt@gem_exec_schedule@preemptive-hang.html
> 
>   * igt@gem_fence_thrash@bo-copy:
>     - shard-mtlp:         NOTRUN -> [SKIP][97] ([i915#4860])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-mtlp-5/igt@gem_fence_thrash@bo-copy.html
> 
>   * igt@gem_fenced_exec_thrash@2-spare-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#4860]) +3 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-6/igt@gem_fenced_exec_thrash@2-spare-fences.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - shard-mtlp:         NOTRUN -> [SKIP][99] ([i915#4613])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-mtlp-5/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@massive-random:
>     - shard-glk:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#4613]) +2 other tests skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk1/igt@gem_lmem_swapping@massive-random.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#4613])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-apl:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#4613]) +1 other test skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-apl1/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#4077]) +13 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
> 
>   * igt@gem_mmap_wc@close:
>     - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#4083]) +5 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@gem_mmap_wc@close.html
> 
>   * igt@gem_partial_pwrite_pread@reads:
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#3282]) +7 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-1/igt@gem_partial_pwrite_pread@reads.html
> 
>   * igt@gem_pread@bench:
>     - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#3282])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-1/igt@gem_pread@bench.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-snb:          NOTRUN -> [WARN][107] ([i915#2658])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-snb4/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pwrite@basic-random:
>     - shard-rkl:          [PASS][108] -> [SKIP][109] ([i915#3282]) +2 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@gem_pwrite@basic-random.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-6/igt@gem_pwrite@basic-random.html
> 
>   * igt@gem_pxp@create-regular-context-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][110] ([i915#4270])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-mtlp-5/igt@gem_pxp@create-regular-context-1.html
> 
>   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>     - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#4270]) +4 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> 
>   * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
>     - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#4270]) +1 other test skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-1/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#8428])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-mtlp-5/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#4079]) +3 other tests skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-11/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
>     - shard-rkl:          [PASS][115] -> [SKIP][116] ([i915#8411]) +2 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-6/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
>     - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#3297] / [i915#4880])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-dg2:          NOTRUN -> [FAIL][118] ([i915#3318])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen7_exec_parse@basic-rejected:
>     - shard-mtlp:         NOTRUN -> [SKIP][119] ([fdo#109289]) +1 other test skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-mtlp-5/igt@gen7_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [PASS][120] -> [INCOMPLETE][121] ([i915#5566])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk4/igt@gen9_exec_parse@allowed-single.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk6/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@bb-start-param:
>     - shard-rkl:          [PASS][122] -> [SKIP][123] ([i915#2527])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-2/igt@gen9_exec_parse@bb-start-param.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#2856]) +6 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-6/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@i915_module_load@load:
>     - shard-tglu:         NOTRUN -> [SKIP][125] ([i915#6227])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-tglu-2/igt@i915_module_load@load.html
>     - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#6227])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-11/igt@i915_module_load@load.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-mtlp:         [PASS][127] -> [ABORT][128] ([i915#8489] / [i915#8668])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#6412])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-7/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>     - shard-rkl:          [PASS][130] -> [WARN][131] ([i915#2681])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
> 
>   * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
>     - shard-mtlp:         NOTRUN -> [SKIP][132] ([fdo#109293])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-mtlp-5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
> 
>   * igt@i915_pm_rps@min-max-config-idle:
>     - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#6621])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@i915_pm_rps@min-max-config-idle.html
> 
>   * igt@i915_pm_rps@thresholds-idle-park@gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#8925])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@i915_pm_rps@thresholds-idle-park@gt0.html
> 
>   * igt@i915_power@sanity:
>     - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#7984])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-1/igt@i915_power@sanity.html
> 
>   * igt@i915_query@query-topology-unsupported:
>     - shard-dg2:          NOTRUN -> [SKIP][136] ([fdo#109302])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@i915_query@query-topology-unsupported.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - shard-apl:          [PASS][137] -> [DMESG-FAIL][138] ([i915#5334])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl7/igt@i915_selftest@live@gt_heartbeat.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-apl3/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#4212]) +2 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
> 
>   * igt@kms_async_flips@crc@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [FAIL][140] ([i915#8247]) +3 other tests fail
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-6/igt@kms_async_flips@crc@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_async_flips@crc@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [FAIL][141] ([i915#8247]) +3 other tests fail
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg1-15/igt@kms_async_flips@crc@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#1769] / [i915#3555])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind:
>     - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#1845] / [i915#4098]) +19 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][144] ([fdo#111614]) +4 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-270:
>     - shard-tglu:         NOTRUN -> [SKIP][145] ([fdo#111615] / [i915#5286])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-tglu-2/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#4098]) +37 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#5286])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
>     - shard-mtlp:         NOTRUN -> [SKIP][148] ([fdo#111614])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-mtlp-5/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][149] ([fdo#111614] / [i915#3638])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-1/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>     - shard-tglu:         NOTRUN -> [SKIP][150] ([fdo#111614]) +1 other test skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-tglu-2/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#5190]) +17 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
>     - shard-mtlp:         NOTRUN -> [SKIP][152] ([fdo#111615])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-mtlp-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][153] ([fdo#110723]) +2 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#4538] / [i915#5190]) +7 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-1/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
>     - shard-tglu:         NOTRUN -> [SKIP][155] ([fdo#111615])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-tglu-2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html
> 
>   * igt@kms_chamelium_color@ctm-red-to-blue:
>     - shard-dg2:          NOTRUN -> [SKIP][156] ([fdo#111827]) +2 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@kms_chamelium_color@ctm-red-to-blue.html
>     - shard-rkl:          NOTRUN -> [SKIP][157] ([fdo#111827])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_chamelium_color@ctm-red-to-blue.html
> 
>   * igt@kms_chamelium_edid@dp-mode-timings:
>     - shard-tglu:         NOTRUN -> [SKIP][158] ([i915#7828]) +1 other test skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-tglu-2/igt@kms_chamelium_edid@dp-mode-timings.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
>     - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#7828]) +11 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-fast:
>     - shard-mtlp:         NOTRUN -> [SKIP][160] ([i915#7828])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-mtlp-5/igt@kms_chamelium_frames@hdmi-crc-fast.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-storm:
>     - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#7828]) +1 other test skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-1/igt@kms_chamelium_hpd@dp-hpd-storm.html
> 
>   * igt@kms_color@ctm-0-50@pipe-b:
>     - shard-rkl:          [PASS][162] -> [SKIP][163] ([i915#4098]) +6 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@kms_color@ctm-0-50@pipe-b.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_color@ctm-0-50@pipe-b.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#7118]) +2 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-1/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-mtlp:         NOTRUN -> [SKIP][165] ([i915#3555] / [i915#8814]) +1 other test skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#3359]) +1 other test skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#3555]) +6 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-b-vga-1:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][168] ([i915#8841]) +2 other tests dmesg-warn
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-snb4/igt@kms_cursor_crc@cursor-suspend@pipe-b-vga-1.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-tglu:         NOTRUN -> [SKIP][169] ([i915#4103])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-tglu-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>     - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#4103] / [i915#4213] / [i915#5608])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
>     - shard-rkl:          [PASS][171] -> [SKIP][172] ([i915#1845] / [i915#4098]) +18 other tests skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
>     - shard-dg2:          NOTRUN -> [SKIP][173] ([fdo#109274] / [i915#5354]) +7 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>     - shard-tglu:         NOTRUN -> [SKIP][174] ([fdo#109274]) +1 other test skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-tglu-2/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][175] ([i915#3546])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-mtlp-5/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [PASS][176] -> [FAIL][177] ([i915#2346])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#9226] / [i915#9261]) +1 other test skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-2/igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2.html
> 
>   * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#9227])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-2/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#3555] / [i915#3840])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-6/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_fbcon_fbt@fbc:
>     - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#1849] / [i915#4098]) +16 other tests skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_fbcon_fbt@fbc.html
> 
>   * igt@kms_flip@2x-blocking-absolute-wf_vblank:
>     - shard-tglu:         NOTRUN -> [SKIP][182] ([fdo#109274] / [i915#3637]) +1 other test skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-tglu-2/igt@kms_flip@2x-blocking-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-panning:
>     - shard-dg2:          NOTRUN -> [SKIP][183] ([fdo#109274]) +5 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-1/igt@kms_flip@2x-flip-vs-panning.html
> 
>   * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][184] ([fdo#111825]) +5 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
> 
>   * igt@kms_flip@dpms-off-confusion-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#3637] / [i915#4098]) +6 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_flip@dpms-off-confusion-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#2672]) +5 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#3555]) +8 other tests skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][188] ([i915#2587] / [i915#2672])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-tglu-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][189] ([i915#2672]) +6 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [FAIL][190] ([i915#6880])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:
>     - shard-rkl:          [PASS][191] -> [SKIP][192] ([i915#1849] / [i915#4098]) +6 other tests skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#8708]) +18 other tests skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff:
>     - shard-rkl:          NOTRUN -> [SKIP][194] ([fdo#111825] / [i915#1825]) +7 other tests skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:
>     - shard-tglu:         NOTRUN -> [SKIP][195] ([fdo#109280]) +7 other tests skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-tglu-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][196] ([i915#8708]) +1 other test skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#5460])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#3458]) +28 other tests skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#3023]) +4 other tests skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:
>     - shard-tglu:         NOTRUN -> [SKIP][200] ([fdo#110189]) +6 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-tglu-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#5354]) +41 other tests skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:
>     - shard-glk:          NOTRUN -> [SKIP][202] ([fdo#109271]) +144 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-mtlp:         NOTRUN -> [SKIP][203] ([i915#1825]) +4 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#3555] / [i915#8228])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-1/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#3555] / [i915#8228]) +4 other tests skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-mtlp:         NOTRUN -> [SKIP][206] ([i915#3555] / [i915#8228])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-mtlp-5/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][207] ([i915#4573]) +1 other test fail
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk1/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-dp-1:
>     - shard-apl:          NOTRUN -> [FAIL][208] ([i915#4573]) +1 other test fail
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-apl1/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-dp-1.html
> 
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#3555] / [i915#8821])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@kms_plane_lowres@tiling-yf.html
> 
>   * igt@kms_plane_multiple@tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#8806])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-1/igt@kms_plane_multiple@tiling-y.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#6953])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-1/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][212] ([i915#5176] / [i915#9423]) +3 other tests skip
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg1-12/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][213] ([i915#5176] / [i915#9423]) +1 other test skip
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][214] ([i915#5235]) +19 other tests skip
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:
>     - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#8152]) +1 other test skip
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][216] ([i915#5235]) +7 other tests skip
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:
>     - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#4098] / [i915#6953] / [i915#8152]) +1 other test skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][218] ([i915#5235]) +19 other tests skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg1-15/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:
>     - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#3555] / [i915#4098] / [i915#6953] / [i915#8152]) +2 other tests skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-mtlp:         NOTRUN -> [SKIP][220] ([i915#6524])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-mtlp-5/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_properties@crtc-properties-atomic:
>     - shard-rkl:          NOTRUN -> [SKIP][221] ([i915#1849])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_properties@crtc-properties-atomic.html
> 
>   * igt@kms_properties@crtc-properties-legacy:
>     - shard-rkl:          [PASS][222] -> [SKIP][223] ([i915#1849])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@kms_properties@crtc-properties-legacy.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_properties@crtc-properties-legacy.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-apl:          NOTRUN -> [SKIP][224] ([fdo#109271] / [i915#658]) +1 other test skip
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-apl1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][225] ([fdo#109271] / [i915#658]) +2 other tests skip
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
>     - shard-rkl:          NOTRUN -> [SKIP][226] ([fdo#111068] / [i915#658]) +1 other test skip
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#658]) +4 other tests skip
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-11/igt@kms_psr2_su@page_flip-nv12.html
>     - shard-tglu:         NOTRUN -> [SKIP][228] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-tglu-2/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@cursor_render:
>     - shard-rkl:          NOTRUN -> [SKIP][229] ([i915#1072]) +2 other tests skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-1/igt@kms_psr@cursor_render.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-dg2:          NOTRUN -> [SKIP][230] ([i915#1072]) +11 other tests skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-1/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#5461] / [i915#658])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][232] ([i915#8875])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
>     - shard-dg2:          NOTRUN -> [SKIP][233] ([i915#4235] / [i915#5190])
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-90:
>     - shard-dg2:          NOTRUN -> [SKIP][234] ([i915#4235]) +2 other tests skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-6/igt@kms_rotation_crc@sprite-rotation-90.html
> 
>   * igt@kms_setmode@invalid-clone-exclusive-crtc:
>     - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#3555] / [i915#4098])
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-1/igt@kms_setmode@invalid-clone-exclusive-crtc.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc-stealing:
>     - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#3555] / [i915#4098])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@kms_setmode@invalid-clone-single-crtc-stealing.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-dg2:          NOTRUN -> [FAIL][237] ([IGT#2])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-1/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-vga-1:
>     - shard-snb:          [PASS][238] -> [FAIL][239] ([i915#9196])
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-snb2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-vga-1.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-snb7/igt@kms_universal_plane@cursor-fb-leak@pipe-b-vga-1.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-apl:          NOTRUN -> [SKIP][240] ([fdo#109271] / [i915#2437])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-apl1/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-glk:          NOTRUN -> [SKIP][241] ([fdo#109271] / [i915#2437])
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk1/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@enable-disable@0-rcs0:
>     - shard-dg2:          [PASS][242] -> [FAIL][243] ([i915#8724])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-dg2-6/igt@perf@enable-disable@0-rcs0.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-dg2:          NOTRUN -> [SKIP][244] ([i915#2436])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf@global-sseu-config:
>     - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#7387])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-1/igt@perf@global-sseu-config.html
> 
>   * igt@perf_pmu@busy-double-start@ccs0:
>     - shard-mtlp:         [PASS][246] -> [FAIL][247] ([i915#4349])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-mtlp-6/igt@perf_pmu@busy-double-start@ccs0.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-mtlp-6/igt@perf_pmu@busy-double-start@ccs0.html
> 
>   * igt@perf_pmu@event-wait@rcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][248] ([fdo#112283])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-1/igt@perf_pmu@event-wait@rcs0.html
> 
>   * igt@perf_pmu@frequency@gt0:
>     - shard-dg2:          NOTRUN -> [FAIL][249] ([i915#6806])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@perf_pmu@frequency@gt0.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - shard-rkl:          [PASS][250] -> [SKIP][251] ([fdo#109295] / [i915#3291] / [i915#3708])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@prime_vgem@basic-fence-read.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-7/igt@prime_vgem@basic-fence-read.html
>     - shard-mtlp:         NOTRUN -> [SKIP][252] ([i915#3708])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-mtlp-5/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-dg2:          NOTRUN -> [SKIP][253] ([i915#3291] / [i915#3708])
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-1/igt@prime_vgem@basic-write.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-rkl:          [PASS][254] -> [SKIP][255] ([fdo#109295] / [fdo#111656] / [i915#3708])
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@prime_vgem@coherency-gtt.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-2/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][256] ([i915#3708])
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-6/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-dg2:          NOTRUN -> [SKIP][257] ([i915#4818])
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@tools_test@sysfs_l3_parity.html
> 
>   * igt@v3d/v3d_job_submission@multiple-singlesync-to-multisync:
>     - shard-mtlp:         NOTRUN -> [SKIP][258] ([i915#2575]) +2 other tests skip
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-mtlp-5/igt@v3d/v3d_job_submission@multiple-singlesync-to-multisync.html
> 
>   * igt@v3d/v3d_perfmon@get-values-invalid-pointer:
>     - shard-tglu:         NOTRUN -> [SKIP][259] ([fdo#109315] / [i915#2575]) +2 other tests skip
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-tglu-2/igt@v3d/v3d_perfmon@get-values-invalid-pointer.html
> 
>   * igt@v3d/v3d_submit_cl@bad-multisync-out-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][260] ([i915#2575]) +17 other tests skip
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-6/igt@v3d/v3d_submit_cl@bad-multisync-out-sync.html
> 
>   * igt@v3d/v3d_submit_csd@multi-and-single-sync:
>     - shard-apl:          NOTRUN -> [SKIP][261] ([fdo#109271]) +82 other tests skip
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-apl1/igt@v3d/v3d_submit_csd@multi-and-single-sync.html
> 
>   * igt@v3d/v3d_submit_csd@valid-multisync-submission:
>     - shard-rkl:          NOTRUN -> [SKIP][262] ([fdo#109315]) +6 other tests skip
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@v3d/v3d_submit_csd@valid-multisync-submission.html
> 
>   * igt@vc4/vc4_lookup_fail@bad-color-write:
>     - shard-mtlp:         NOTRUN -> [SKIP][263] ([i915#7711])
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-mtlp-5/igt@vc4/vc4_lookup_fail@bad-color-write.html
> 
>   * igt@vc4/vc4_mmap@mmap-bo:
>     - shard-rkl:          NOTRUN -> [SKIP][264] ([i915#7711]) +3 other tests skip
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-1/igt@vc4/vc4_mmap@mmap-bo.html
> 
>   * igt@vc4/vc4_perfmon@create-single-perfmon:
>     - shard-tglu:         NOTRUN -> [SKIP][265] ([i915#2575]) +1 other test skip
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-tglu-2/igt@vc4/vc4_perfmon@create-single-perfmon.html
> 
>   * igt@vc4/vc4_tiling@set-get:
>     - shard-dg2:          NOTRUN -> [SKIP][266] ([i915#7711]) +11 other tests skip
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-5/igt@vc4/vc4_tiling@set-get.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-rkl:          [SKIP][267] ([i915#8411]) -> [PASS][268]
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@api_intel_bb@blit-reloc-keep-cache.html
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@drm_fdinfo@most-busy-check-all@rcs0:
>     - shard-rkl:          [FAIL][269] ([i915#7742]) -> [PASS][270]
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@drm_fdinfo@most-busy-check-all@rcs0.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-rkl:          [FAIL][271] ([i915#6268]) -> [PASS][272]
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_ctx_persistence@engines-hang@bcs0:
>     - shard-rkl:          [SKIP][273] -> [PASS][274]
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-7/igt@gem_ctx_persistence@engines-hang@bcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglu:         [FAIL][275] ([i915#2842]) -> [PASS][276]
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-rkl:          [SKIP][277] ([fdo#109313]) -> [PASS][278]
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_exec_reloc@basic-write-read:
>     - shard-rkl:          [SKIP][279] ([i915#3281]) -> [PASS][280] +9 other tests pass
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@gem_exec_reloc@basic-write-read.html
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@gem_exec_reloc@basic-write-read.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - shard-rkl:          [SKIP][281] ([i915#7276]) -> [PASS][282]
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@gem_exec_schedule@semaphore-power.html
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg1:          [DMESG-WARN][283] ([i915#4936] / [i915#5493]) -> [PASS][284]
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_mmap_gtt@coherency:
>     - shard-rkl:          [SKIP][285] ([fdo#111656]) -> [PASS][286]
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@gem_mmap_gtt@coherency.html
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@gem_mmap_gtt@coherency.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-rkl:          [SKIP][287] ([i915#3282]) -> [PASS][288] +5 other tests pass
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-mtlp:         [ABORT][289] ([i915#9414]) -> [PASS][290]
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-mtlp-3/igt@gem_workarounds@suspend-resume.html
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-mtlp-5/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - shard-rkl:          [SKIP][291] ([i915#2527]) -> [PASS][292] +4 other tests pass
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@gen9_exec_parse@bb-start-far.html
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-far.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
>     - shard-dg1:          [FAIL][293] ([i915#3591]) -> [PASS][294]
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [INCOMPLETE][295] ([i915#7790]) -> [PASS][296]
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-snb5/igt@i915_pm_rps@reset.html
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-snb4/igt@i915_pm_rps@reset.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
>     - shard-mtlp:         [FAIL][297] ([i915#5138]) -> [PASS][298]
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-mtlp-2/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
>     - shard-rkl:          [SKIP][299] ([i915#1845] / [i915#4098]) -> [PASS][300] +26 other tests pass
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-tglu:         [FAIL][301] ([i915#3743]) -> [PASS][302] +1 other test pass
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_color@ctm-green-to-red@pipe-b:
>     - shard-rkl:          [SKIP][303] ([i915#4098]) -> [PASS][304] +9 other tests pass
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_color@ctm-green-to-red@pipe-b.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-7/igt@kms_color@ctm-green-to-red@pipe-b.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1:
>     - shard-glk:          [DMESG-WARN][305] ([i915#118]) -> [PASS][306]
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-glk8/igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1.html
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-glk3/igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-apl:          [FAIL][307] ([i915#2346]) -> [PASS][308]
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][309] ([i915#1849] / [i915#4098]) -> [PASS][310] +8 other tests pass
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * {igt@kms_plane@pixel-format@pipe-a}:
>     - shard-rkl:          [INCOMPLETE][311] -> [PASS][312]
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-2/igt@kms_plane@pixel-format@pipe-a.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-1/igt@kms_plane@pixel-format@pipe-a.html
> 
>   * {igt@kms_pm_rpm@modeset-lpsp-stress}:
>     - shard-dg2:          [SKIP][313] ([i915#9519]) -> [PASS][314] +3 other tests pass
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-dg2-6/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * {igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait}:
>     - shard-rkl:          [SKIP][315] ([i915#9519]) -> [PASS][316] +4 other tests pass
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>     - shard-dg1:          [SKIP][317] ([i915#9519]) -> [PASS][318] +1 other test pass
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-dg1-19/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg1-15/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * {igt@kms_pm_rpm@pm-tiling}:
>     - shard-rkl:          [SKIP][319] ([fdo#109308]) -> [PASS][320] +1 other test pass
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_pm_rpm@pm-tiling.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-6/igt@kms_pm_rpm@pm-tiling.html
> 
>   * igt@kms_properties@plane-properties-legacy:
>     - shard-rkl:          [SKIP][321] ([i915#1849]) -> [PASS][322] +1 other test pass
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_properties@plane-properties-legacy.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-2/igt@kms_properties@plane-properties-legacy.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-rkl:          [SKIP][323] ([i915#2436]) -> [PASS][324]
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@perf@gen8-unprivileged-single-ctx-counters.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf@mi-rpc:
>     - shard-rkl:          [SKIP][325] ([i915#2434]) -> [PASS][326]
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@perf@mi-rpc.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@perf@mi-rpc.html
> 
>   * igt@perf_pmu@busy@vecs0:
>     - shard-dg1:          [FAIL][327] ([i915#4349]) -> [PASS][328] +2 other tests pass
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-dg1-14/igt@perf_pmu@busy@vecs0.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-dg1-17/igt@perf_pmu@busy@vecs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-rkl:          [SKIP][329] ([i915#7957]) -> [SKIP][330] ([i915#3555])
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-2/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_ccs@ctrl-surf-copy:
>     - shard-rkl:          [SKIP][331] ([i915#3555]) -> [SKIP][332] ([i915#7957])
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@gem_ccs@ctrl-surf-copy.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy.html
> 
>   * igt@gem_exec_fair@basic-none@bcs0:
>     - shard-rkl:          [SKIP][333] -> [FAIL][334] ([i915#2842])
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-7/igt@gem_exec_fair@basic-none@bcs0.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-rkl:          [SKIP][335] ([i915#3282]) -> [WARN][336] ([i915#2658])
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-6/igt@gem_pwrite@basic-exhaustion.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-rkl:          [SKIP][337] ([i915#4098]) -> [SKIP][338] ([i915#5286]) +3 other tests skip
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-rkl:          [SKIP][339] ([i915#5286]) -> [SKIP][340] ([i915#4098]) +5 other tests skip
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-rkl:          [SKIP][341] ([fdo#111614] / [i915#3638]) -> [SKIP][342] ([i915#1845] / [i915#4098]) +3 other tests skip
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@kms_big_fb@linear-8bpp-rotate-270.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>     - shard-rkl:          [SKIP][343] ([i915#1845] / [i915#4098]) -> [SKIP][344] ([fdo#111614] / [i915#3638]) +3 other tests skip
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb:
>     - shard-rkl:          [SKIP][345] ([i915#1845] / [i915#4098]) -> [SKIP][346] ([fdo#111615])
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-addfb.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-rkl:          [SKIP][347] ([fdo#110723]) -> [SKIP][348] ([i915#1845] / [i915#4098]) +5 other tests skip
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-rkl:          [SKIP][349] ([i915#1845] / [i915#4098]) -> [SKIP][350] ([fdo#110723]) +3 other tests skip
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-rkl:          [SKIP][351] ([i915#7118]) -> [SKIP][352] ([i915#1845] / [i915#4098]) +1 other test skip
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@kms_content_protection@atomic.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-rkl:          [SKIP][353] ([i915#1845] / [i915#4098]) -> [SKIP][354] ([i915#3116])
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_content_protection@dp-mst-type-0.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-2/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-rkl:          [SKIP][355] ([i915#4098]) -> [SKIP][356] ([i915#3555]) +2 other tests skip
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-32x32.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-rkl:          [SKIP][357] ([i915#3359]) -> [SKIP][358] ([i915#4098]) +2 other tests skip
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@kms_cursor_crc@cursor-random-512x512.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-rkl:          [SKIP][359] ([i915#3555]) -> [SKIP][360] ([i915#4098]) +4 other tests skip
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-32x10.html
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
>     - shard-rkl:          [SKIP][361] ([i915#1845] / [i915#4098]) -> [SKIP][362] ([fdo#111767] / [fdo#111825])
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-7/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-rkl:          [SKIP][363] ([i915#4103]) -> [SKIP][364] ([i915#1845] / [i915#4098])
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-rkl:          [SKIP][365] ([i915#1845] / [i915#4098]) -> [SKIP][366] ([i915#4103]) +1 other test skip
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>     - shard-rkl:          [SKIP][367] ([i915#1845] / [i915#4098]) -> [SKIP][368] ([fdo#111825]) +3 other tests skip
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
>     - shard-rkl:          [SKIP][369] ([fdo#111825]) -> [SKIP][370] ([i915#1845] / [i915#4098]) +1 other test skip
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-rkl:          [SKIP][371] ([i915#3555] / [i915#3840]) -> [SKIP][372] ([i915#4098]) +1 other test skip
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@kms_dsc@dsc-with-output-formats.html
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-rkl:          [SKIP][373] ([i915#3955]) -> [SKIP][374] ([fdo#110189] / [i915#3955])
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@kms_fbcon_fbt@psr.html
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:
>     - shard-rkl:          [SKIP][375] ([i915#1849] / [i915#4098]) -> [SKIP][376] ([fdo#111825])
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
>     - shard-rkl:          [SKIP][377] ([i915#1849] / [i915#4098]) -> [SKIP][378] ([fdo#111825] / [i915#1825]) +30 other tests skip
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][379] ([i915#1849] / [i915#4098]) -> [SKIP][380] ([i915#3023]) +19 other tests skip
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>     - shard-rkl:          [SKIP][381] ([fdo#111825] / [i915#1825]) -> [SKIP][382] ([i915#1849] / [i915#4098]) +35 other tests skip
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-rkl:          [SKIP][383] ([i915#3023]) -> [SKIP][384] ([i915#1849] / [i915#4098]) +22 other tests skip
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-suspend.html
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-rkl:          [SKIP][385] ([i915#1845] / [i915#4098]) -> [SKIP][386] ([i915#3555] / [i915#8228]) +2 other tests skip
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_hdr@static-swap.html
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-7/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][387] ([i915#4070] / [i915#4816]) -> [SKIP][388] ([i915#4816])
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-rkl:          [SKIP][389] ([i915#1845] / [i915#4098]) -> [SKIP][390] ([i915#6301])
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-7/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-rkl:          [SKIP][391] ([i915#6301]) -> [SKIP][392] ([i915#1845] / [i915#4098])
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@kms_panel_fitting@legacy.html
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>     - shard-rkl:          [SKIP][393] ([i915#4098]) -> [SKIP][394] ([i915#5289])
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-2/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
>     - shard-rkl:          [INCOMPLETE][395] ([i915#8875] / [i915#9475]) -> [SKIP][396] ([i915#1845] / [i915#4098])
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
> 
>   * igt@kms_vrr@flip-basic:
>     - shard-rkl:          [SKIP][397] ([i915#1845] / [i915#4098]) -> [SKIP][398] ([i915#3555]) +1 other test skip
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-5/igt@kms_vrr@flip-basic.html
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-7/igt@kms_vrr@flip-basic.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-rkl:          [SKIP][399] ([i915#3555]) -> [SKIP][400] ([i915#1845] / [i915#4098])
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13786/shard-rkl-6/igt@kms_vrr@flip-dpms.html
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/shard-rkl-5/igt@kms_vrr@flip-dpms.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
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
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
>   [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
>   [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5460]: https://gitlab.freedesktop.org/drm/intel/issues/5460
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
>   [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6806]: https://gitlab.freedesktop.org/drm/intel/issues/6806
>   [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7276]: https://gitlab.freedesktop.org/drm/intel/issues/7276
>   [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
>   [i915#7984]: https://gitlab.freedesktop.org/drm/intel/issues/7984
>   [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
>   [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
>   [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
>   [i915#8489]: https://gitlab.freedesktop.org/drm/intel/issues/8489
>   [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>   [i915#8562]: https://gitlab.freedesktop.org/drm/intel/issues/8562
>   [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
>   [i915#8724]: https://gitlab.freedesktop.org/drm/intel/issues/8724
>   [i915#8806]: https://gitlab.freedesktop.org/drm/intel/issues/8806
>   [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
>   [i915#8821]: https://gitlab.freedesktop.org/drm/intel/issues/8821
>   [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
>   [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
>   [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
>   [i915#9053]: https://gitlab.freedesktop.org/drm/intel/issues/9053
>   [i915#9067]: https://gitlab.freedesktop.org/drm/intel/issues/9067
>   [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
>   [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
>   [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
>   [i915#9261]: https://gitlab.freedesktop.org/drm/intel/issues/9261
>   [i915#9295]: https://gitlab.freedesktop.org/drm/intel/issues/9295
>   [i915#9408]: https://gitlab.freedesktop.org/drm/intel/issues/9408
>   [i915#9412]: https://gitlab.freedesktop.org/drm/intel/issues/9412
>   [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414
>   [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
>   [i915#9433]: https://gitlab.freedesktop.org/drm/intel/issues/9433
>   [i915#9475]: https://gitlab.freedesktop.org/drm/intel/issues/9475
>   [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13786 -> Patchwork_125574v1
> 
>   CI-20190529: 20190529
>   CI_DRM_13786: e8d777a5e7e0ec452142ad0073022733f99c1eb7 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7557: 18fc864d68d382847596594d7eb3488f2c8fb45e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_125574v1: e8d777a5e7e0ec452142ad0073022733f99c1eb7 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125574v1/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
