Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7E66A77A6
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 00:30:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0DB010E385;
	Wed,  1 Mar 2023 23:30:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA10F10E286
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 23:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677713406; x=1709249406;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=87TfwSRA5z5M+0q16CYTqEBjHoFAcrr9cuEXfNIE69U=;
 b=K8xrKjl9IkQV+1Kb/XC5PNxEHobKuC1vgLZXtvmrLeFK42Scw0uncs3U
 fkH9qhfe+8uxK0cZSXzVw2D/s2tcZJt75K7xxHEhz+Gy1UxVgAK6LVqPp
 +neyuchf277KTkTdBychvKigqCoVdU1JUH3wPjf1c8Q8OW1y2xVJHwWdn
 yo56/0BiB3xwYrQaR5IABUIledeEL4ptjYyCcDWUSAbxOLXdbag2sfBVk
 YiqGVkMp3KMGM4iCKFuzF1HGMdfct34SigyHE3ZCr8yOWSoJRv4mZ6fEh
 1F4yjtkRccuBfMpGGBV930H5/OjQMQIHCiXL5LJZ2mgw9PuNuy2OmNNQ6 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="336052373"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="336052373"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 15:30:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="707189286"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="707189286"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 01 Mar 2023 15:30:01 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 1 Mar 2023 15:30:00 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 1 Mar 2023 15:30:00 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 1 Mar 2023 15:30:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PN+wwxnrN+Vf5m5uK4blgWEMIEDm7hMOiTvajhCZ8nHirgqXJK9vS+gFByLcD2vNfkFZmBC7ZRVacI32CaFnvdO1Kowu2laDbBBlBntG0/pDBn0PUhs5QUXQYib1aW7AL0ceC3wiUlxVmqDGfogM6ZYQWudscrlg/8Nde1GwcUkWC0rwaqEv1P0bsiZ0hMEebb4v8US+wshYAcLKHUdzDaGWM1kCWITsDHYfqGDJQIxwqiAK1elNBroeOBmiVtf/vQFVMz4WiJrCKIi1tpJnB+lo0jQW6jhMl0t3hCyVafXg7oktKP0d4VlrLpI02ZAzoXv1eZhcoaG3h0VEH+og7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Q4dLOhoV5KRuHrM0KcOlBcHekVwjXFqFQsU6Uh3wGw=;
 b=B30eZt8q7ooYjyTYoCWh6I+iwAJK5eraUTN3Kc0RLroOgn0Qk89MPWEy/JP1dTRND1vGJVfFI68zwNbo1BTy4fxQVaz/JZGrwPCmGirMUxBRwkw/8QlC9Cik9EMTPCdNzdWsLvr8mxo3OHfVkKCEOH56angsYxNd0vNjHEOGLKkVYktYFNlcfvpycZymG5ldo5zeqznvqhpADQh8WSDvOr5kFeRaKsl6Fp5P/aWFJw0Y3NF0LRamefG2X82AeGMgHeZ6sFmQvSIy8KKKVC4N00ubHQTvgPM542WRWjuElfXgGwSG2uNicBbBaMH+FhCF7Z1cgTnNsQL4+Eh8HIuhjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 MN0PR11MB5962.namprd11.prod.outlook.com (2603:10b6:208:371::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.18; Wed, 1 Mar
 2023 23:29:52 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%6]) with mapi id 15.20.6134.030; Wed, 1 Mar 2023
 23:29:52 +0000
Date: Wed, 1 Mar 2023 15:29:48 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y//f7F8YxKbszEcz@mdroper-desk1.amr.corp.intel.com>
References: <20230220171858.131416-1-andrea.righi@canonical.com>
 <167763473238.6634.10582581882724800454@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <167763473238.6634.10582581882724800454@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR02CA0025.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::38) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|MN0PR11MB5962:EE_
X-MS-Office365-Filtering-Correlation-Id: 6dc86fb4-40f9-4d9b-64a1-08db1aacdb26
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EPTmldQqTR9BcnjYao9PEvFMEo09W/efu/O3GT2UWaVQ8xwnft/F3y7hFA52rSEffOG6/C4WqSdQu5fwlw0MKJq5JEg8UV7686zU1SjfCXGVPbaaDmLaxRCoFEOBCoQjTiLAOXIj66W4NiIVaBuXaquj97si+0S29Fnznks0RrH4ZR12grypfABUpKnv8am4LMhcDKkeaC5a2ilJg7TnE7c02NKBXZKN82HcZznPWvFPOnBUNdGJkZrRn94bp7EmyLPvpCe8ZCjBq16MhuCM0jVd9z9ZzHKGyvkDczBBuTa44ljZeJNmMJ6UZEdqOPKBAiDjFA/r031DGgCCpzNX/UlFXqHly5xL7Zida68nPDbrn3yhZMaFLCyzAq33ZyvGwqV5KiYJsI5VCcLPlQED+LSHNDza0KTpDQB7+HZTZP3nCo4bCH7HmqXh4RM4tioJ3sYtE0oydjsmAAUeBSBjHEtgOCa90f5wyVESISzwvK7I6SyHTidpcydkg1h78HrME7Qkn2GRLn1IVrZh38CuGJHYbOdzCOtSJ6mVcceObi1mn994NU4P6VTExtRRrHdU4BOdw1jVHdg9BD3A8TAy/KPa4RVB6muN4l9PyDsxOjEP1nfx9TAHbmbK/VwFTwrODkMTMxjP2zZ5GJCGFWK+UqaZijE3NDVIdk95yVf/Jt98/hb9TDhnLYQI92WfiI6P4BcScr6h/4mMmy0KTaiSCA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(376002)(136003)(346002)(39860400002)(366004)(451199018)(6486002)(186003)(966005)(107886003)(2906002)(6666004)(38100700002)(86362001)(478600001)(316002)(6506007)(26005)(6916009)(4326008)(6512007)(66476007)(66556008)(66946007)(82960400001)(8936002)(83380400001)(5660300002)(30864003)(41300700001)(13750500001)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EpbQe5LO7M6eKRHcuiC4or+nNdf57f+e8Mbv3anTeasVlhq3wdzuMfuhyS3m?=
 =?us-ascii?Q?OpWbMsfT5ws5Ih8IALpZR55ATg7h81fWptuTGud6F0GZ96Bq0APlZ+DEoV+l?=
 =?us-ascii?Q?RvWhs3+Mp7rlD99t64M8ELyIQAfEdBfVgvw5n4yl6dc4Cu5HyEHku0QGMBa5?=
 =?us-ascii?Q?qSh+VQpy3OskyiKX4zOToKMSOHXnQLG1iBIxXygxKuBjEVkuOnHJBHGD7frD?=
 =?us-ascii?Q?p+BAAod+Tx9pFdjvVz9Um2OiAe47MNYorUCKrBgDWrb2P60YaxNt8hfmfUYW?=
 =?us-ascii?Q?U8HVRS3KNdagk9aW9u/LyYGQ0KbGEGzLLB1ydSMEpyVhIXQ4hnhMg4rFUsS1?=
 =?us-ascii?Q?F1kQCLjF8ACu+/yGR8XKpkzO8xKoAan3TrHhjj7Sebj6jcAy3pqGY4RX8Iao?=
 =?us-ascii?Q?65dk+LMeEyf9+PeiL7RXcl1Nfw2KrcBIDj8imxgq9Vx434Hgj7DonQDKJ0rr?=
 =?us-ascii?Q?+UGlIUGcLwT7FUDK1JI6G2FFA3EY+OTXbSHPC8uov0jBXfVuj40+CXCY5MzV?=
 =?us-ascii?Q?IhUdRu4LPhPUsz/QYwvi1a7bpCBPKSqwFJZ4RMOXjAnen87zKp93aXgEAPhp?=
 =?us-ascii?Q?oAxZMEh6DvGICrY6KjmHa3gChaNsNYAzFmDmmwuazIZiS1FORu1WAc6B4F13?=
 =?us-ascii?Q?MjOjvt82LWRFEzKzKkHSj0lPJiAGCIQvxd7nVV2A9Rl0vBqzXQX5MEywjLfE?=
 =?us-ascii?Q?BSVIkYSIXPVPtnE9gER/xGmvIVAKDdkCDMl5bz9shLE/3f31Vv8kofuXQYpw?=
 =?us-ascii?Q?T5NUU8l/BX04fkhiJyBeXAf5vemwTyPUkbzcn/ersG3Ej7mAJIm4nralQpkH?=
 =?us-ascii?Q?StKkuyEc83n2cwDBdn+emcv7ODMQj+DGmiJbz08qzv+FKJ8KHr7CE6BVYhRf?=
 =?us-ascii?Q?CatNEjvxwHDaRExuBNzwcclo6psPislxBbhlW0ZGrgG3Fvj1Pt0S7g2IFmu0?=
 =?us-ascii?Q?96V7ow+88Pws6nhZLZCp4trKfF9IG3ll36OKA81BPWt5p2qzoM/Hizx2F3Jj?=
 =?us-ascii?Q?boNPbeFL0znqrcgvzfmJzb3Azmv4E8oUi6zZDpTYTV6E+TrQNmglx35GfMnb?=
 =?us-ascii?Q?ok2cAc074LoEqPD34/rkecU+Mi+lP9sFb9ShLYeffPNGgRMDCBk/3eoqu+xe?=
 =?us-ascii?Q?rr24LV77ea+lmkM3yf+KXt6kjiEg75Gf7ZX8QBlV2J1+PwI0fZAUS3r5AS2y?=
 =?us-ascii?Q?NSr2BfY0GVRLJuRkSVQ7/eatAZEflToWKVZPw2azmoPRPh6qWzMNNPh8HT/D?=
 =?us-ascii?Q?jDUb0v701cuZdF7nA5Jov53R+vp2alg1/SBuoPsyehaRXwJIHj+LrwafRBo2?=
 =?us-ascii?Q?QrT4hNrIvxAN+jdCJfRxPGBMqz+CnBqBklJyalc7pWE3ggVW/OTwH/fBsbPf?=
 =?us-ascii?Q?zb9MUOVevQqkj69H9pJe8eiPjv3d11NMHVFlnAVN5BFfySBmL0MWd0EddbQs?=
 =?us-ascii?Q?BPFyGKxHGQfC7me2c2N2N2d3NpUxnMwrj8d8cQz6+8hNuJpZcUjbGJpRR82z?=
 =?us-ascii?Q?k9VX2J8gehu+N8DYBwnzn3wb0sjZrRDO16/bCK2WdIOKyOH34d+sgsfXX1me?=
 =?us-ascii?Q?F2aqbVhTcRy3gyL/14zQH7GTepwOUNpwz/UMqKLOg3OAJIKCLcodlBrFMao2?=
 =?us-ascii?Q?Hg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dc86fb4-40f9-4d9b-64a1-08db1aacdb26
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2023 23:29:51.8668 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u7G+HCw++jFrOEo/WDIwxgAVLZIh/nhxwHuPkTipXdFpcwewan/bgmC0D858+WfO5k3DmukSCgd/6sPaThKp+jxrsodt7VgdDGCzlTkWKzo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB5962
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/sseu=3A_fix_max=5Fsubslices_array-index-out-of-bounds_acc?=
 =?utf-8?q?ess_=28rev4=29?=
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
Cc: Andrea Righi <andrea.righi@canonical.com>, lgci.bug.filing@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 01, 2023 at 01:38:52AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/sseu: fix max_subslices array-index-out-of-bounds access (rev4)
> URL   : https://patchwork.freedesktop.org/series/114199/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12794_full -> Patchwork_114199v4_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_114199v4_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_114199v4_full, please notify your bug team to allow them
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
>   Here are the unknown changes that may have been introduced in Patchwork_114199v4_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-apl:          [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

The errors in the log here are display warnings, likely related to
https://gitlab.freedesktop.org/drm/intel/-/issues/180 .  They are not
caused by the GT patch under test.

Applied to drm-intel-gt-next.  Thanks for the patch.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@i915_suspend@sysfs-reader:
>     - {shard-tglu}:       [PASS][3] -> [DMESG-WARN][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-tglu-3/igt@i915_suspend@sysfs-reader.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-3/igt@i915_suspend@sysfs-reader.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_114199v4_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-tglu-9:       NOTRUN -> [SKIP][5] ([i915#7701])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@device_reset@cold-reset-bound.html
> 
>   * igt@feature_discovery@chamelium:
>     - shard-tglu-10:      NOTRUN -> [SKIP][6] ([fdo#111827]) +2 similar issues
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@feature_discovery@chamelium.html
> 
>   * igt@gem_ccs@ctrl-surf-copy:
>     - shard-tglu-9:       NOTRUN -> [SKIP][7] ([i915#3555] / [i915#5325])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@gem_ccs@ctrl-surf-copy.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-tglu-10:      NOTRUN -> [SKIP][8] ([i915#5325])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-tglu-9:       NOTRUN -> [SKIP][9] ([i915#7697]) +1 similar issue
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_ctx_persistence@processes:
>     - shard-snb:          NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#1099]) +4 similar issues
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-snb4/igt@gem_ctx_persistence@processes.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-tglu-9:       NOTRUN -> [SKIP][11] ([i915#280]) +1 similar issue
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-tglu-9:       NOTRUN -> [FAIL][12] ([i915#6117])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_params@rsvd2-dirt:
>     - shard-tglu-9:       NOTRUN -> [SKIP][13] ([fdo#109283])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@gem_exec_params@rsvd2-dirt.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglu-9:       NOTRUN -> [SKIP][14] ([i915#2190])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-tglu-9:       NOTRUN -> [SKIP][15] ([i915#4613])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-tglu-10:      NOTRUN -> [SKIP][16] ([i915#4613]) +2 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-glk:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-glk8/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_media_vme:
>     - shard-tglu-9:       NOTRUN -> [SKIP][18] ([i915#284])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@gem_media_vme.html
> 
>   * igt@gem_mmap_gtt@coherency:
>     - shard-tglu-10:      NOTRUN -> [SKIP][19] ([fdo#111656])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@gem_mmap_gtt@coherency.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-snb:          NOTRUN -> [WARN][20] ([i915#2658])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-snb6/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>     - shard-tglu-9:       NOTRUN -> [SKIP][21] ([i915#4270]) +1 similar issue
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> 
>   * igt@gem_pxp@fail-invalid-protected-context:
>     - shard-tglu-10:      NOTRUN -> [SKIP][22] ([i915#4270]) +2 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@gem_pxp@fail-invalid-protected-context.html
> 
>   * igt@gem_softpin@evict-snoop-interruptible:
>     - shard-tglu-9:       NOTRUN -> [SKIP][23] ([fdo#109312])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@gem_softpin@evict-snoop-interruptible.html
> 
>   * igt@gem_userptr_blits@access-control:
>     - shard-tglu-10:      NOTRUN -> [SKIP][24] ([i915#3297])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@gem_userptr_blits@access-control.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-tglu-10:      NOTRUN -> [SKIP][25] ([fdo#110542])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-tglu-10:      NOTRUN -> [SKIP][26] ([i915#3323])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-snb:          NOTRUN -> [FAIL][27] ([i915#2724])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-snb4/igt@gem_userptr_blits@vma-merge.html
>     - shard-tglu-10:      NOTRUN -> [FAIL][28] ([i915#3318])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gem_vm_create@invalid-create:
>     - shard-snb:          NOTRUN -> [SKIP][29] ([fdo#109271]) +369 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-snb6/igt@gem_vm_create@invalid-create.html
> 
>   * igt@gen7_exec_parse@basic-offset:
>     - shard-tglu-10:      NOTRUN -> [SKIP][30] ([fdo#109289]) +1 similar issue
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@gen7_exec_parse@basic-offset.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-apl:          [PASS][31] -> [ABORT][32] ([i915#5566])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-apl7/igt@gen9_exec_parse@allowed-single.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-apl4/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@batch-zero-length:
>     - shard-tglu-10:      NOTRUN -> [SKIP][33] ([i915#2527] / [i915#2856]) +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@gen9_exec_parse@batch-zero-length.html
> 
>   * igt@gen9_exec_parse@unaligned-jump:
>     - shard-tglu-9:       NOTRUN -> [SKIP][34] ([i915#2527] / [i915#2856])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@gen9_exec_parse@unaligned-jump.html
> 
>   * igt@i915_pm_backlight@fade:
>     - shard-tglu-9:       NOTRUN -> [SKIP][35] ([i915#7561])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@i915_pm_backlight@fade.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>     - shard-tglu-9:       NOTRUN -> [WARN][36] ([i915#2681]) +3 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-tglu-10:      NOTRUN -> [SKIP][37] ([fdo#111644] / [i915#1397])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@i915_pm_rpm@pc8-residency:
>     - shard-tglu-10:      NOTRUN -> [SKIP][38] ([fdo#109506])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@i915_pm_rpm@pc8-residency.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-tglu-9:       NOTRUN -> [SKIP][39] ([i915#4387])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - shard-apl:          [PASS][40] -> [DMESG-FAIL][41] ([i915#5334])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-apl6/igt@i915_selftest@live@gt_heartbeat.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-apl1/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:
>     - shard-tglu-9:       NOTRUN -> [SKIP][42] ([i915#1845] / [i915#7651]) +48 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-tglu-10:      NOTRUN -> [SKIP][43] ([i915#5286]) +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-270:
>     - shard-tglu-10:      NOTRUN -> [SKIP][44] ([fdo#111614]) +2 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@kms_big_fb@linear-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
>     - shard-tglu-10:      NOTRUN -> [SKIP][45] ([fdo#111615]) +3 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
>     - shard-tglu-9:       NOTRUN -> [SKIP][46] ([fdo#111615] / [i915#1845] / [i915#7651]) +3 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-glk:          NOTRUN -> [SKIP][47] ([fdo#109271]) +37 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-glk8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_joiner@invalid-modeset:
>     - shard-tglu-9:       NOTRUN -> [SKIP][48] ([i915#2705])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@kms_big_joiner@invalid-modeset.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-glk8/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-tglu-10:      NOTRUN -> [SKIP][50] ([i915#3689] / [i915#3886]) +1 similar issue
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_mc_ccs:
>     - shard-tglu-10:      NOTRUN -> [SKIP][51] ([i915#3689] / [i915#6095]) +4 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_mc_ccs:
>     - shard-tglu-10:      NOTRUN -> [SKIP][52] ([i915#6095]) +2 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs:
>     - shard-tglu-10:      NOTRUN -> [SKIP][53] ([fdo#111615] / [i915#3689]) +9 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:
>     - shard-tglu-10:      NOTRUN -> [SKIP][54] ([i915#3689]) +2 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@kms_ccs@pipe-d-crc-primary-rotation-180-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_chamelium_color@ctm-max:
>     - shard-tglu-9:       NOTRUN -> [SKIP][55] ([fdo#111827])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@kms_chamelium_color@ctm-max.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
>     - shard-tglu-9:       NOTRUN -> [SKIP][56] ([i915#7828]) +4 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode:
>     - shard-tglu-10:      NOTRUN -> [SKIP][57] ([i915#7828]) +4 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode.html
> 
>   * igt@kms_color@ctm-max:
>     - shard-tglu-9:       NOTRUN -> [SKIP][58] ([i915#3546])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@kms_color@ctm-max.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-tglu-10:      NOTRUN -> [SKIP][59] ([i915#3359]) +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
>     - shard-tglu-9:       NOTRUN -> [SKIP][60] ([i915#1845]) +7 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
>     - shard-tglu-10:      NOTRUN -> [SKIP][61] ([fdo#109274]) +2 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [PASS][62] -> [FAIL][63] ([i915#2346])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-tglu-10:      NOTRUN -> [SKIP][64] ([i915#4103])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-tglu-10:      NOTRUN -> [SKIP][65] ([i915#3804])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-tglu-10:      NOTRUN -> [SKIP][66] ([i915#3840])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_flip@2x-blocking-absolute-wf_vblank:
>     - shard-tglu-10:      NOTRUN -> [SKIP][67] ([fdo#109274] / [i915#3637]) +1 similar issue
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@kms_flip@2x-blocking-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
>     - shard-tglu-9:       NOTRUN -> [SKIP][68] ([fdo#109274] / [i915#3637]) +2 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:
>     - shard-apl:          [PASS][69] -> [FAIL][70] ([i915#79])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
> 
>   * igt@kms_flip@flip-vs-rmfb-interruptible:
>     - shard-tglu-9:       NOTRUN -> [SKIP][71] ([i915#3637]) +1 similar issue
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@kms_flip@flip-vs-rmfb-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-dp1:
>     - shard-apl:          [PASS][72] -> [ABORT][73] ([i915#180])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-apl4/igt@kms_flip@flip-vs-suspend@b-dp1.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-apl3/igt@kms_flip@flip-vs-suspend@b-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-tglu-10:      NOTRUN -> [SKIP][74] ([i915#2587] / [i915#2672]) +1 similar issue
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - shard-tglu-10:      NOTRUN -> [SKIP][75] ([fdo#109285])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc:
>     - shard-tglu-10:      NOTRUN -> [SKIP][76] ([fdo#109280]) +25 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>     - shard-tglu-10:      NOTRUN -> [SKIP][77] ([i915#5439])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-tglu-9:       NOTRUN -> [SKIP][78] ([i915#1849]) +35 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-tglu-10:      NOTRUN -> [SKIP][79] ([i915#3555]) +3 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-a-hdmi-a-1:
>     - shard-tglu-10:      NOTRUN -> [SKIP][80] ([i915#5176]) +3 similar issues
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
>     - shard-tglu-9:       NOTRUN -> [SKIP][81] ([i915#3555]) +11 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-tglu-9:       NOTRUN -> [SKIP][82] ([i915#6524])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-tglu-9:       NOTRUN -> [SKIP][83] ([fdo#111068] / [i915#658])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-tglu-10:      NOTRUN -> [SKIP][84] ([fdo#111068] / [i915#658])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-glk:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#658])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-glk8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr@psr2_basic:
>     - shard-tglu-9:       NOTRUN -> [SKIP][86] ([fdo#110189]) +4 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@kms_psr@psr2_basic.html
> 
>   * igt@kms_psr@psr2_sprite_blt:
>     - shard-tglu-10:      NOTRUN -> [SKIP][87] ([fdo#110189]) +23 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@kms_psr@psr2_sprite_blt.html
> 
>   * igt@kms_pwrite_crc:
>     - shard-tglu-9:       NOTRUN -> [SKIP][88] ([fdo#109274] / [i915#1845])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@kms_pwrite_crc.html
> 
>   * igt@kms_universal_plane@universal-plane-pipe-b-functional:
>     - shard-tglu-9:       NOTRUN -> [SKIP][89] ([fdo#109274]) +1 similar issue
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@kms_universal_plane@universal-plane-pipe-b-functional.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-tglu-9:       NOTRUN -> [SKIP][90] ([i915#2437])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@prime_udl:
>     - shard-tglu-10:      NOTRUN -> [SKIP][91] ([fdo#109291])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@prime_udl.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-tglu-9:       NOTRUN -> [SKIP][92] ([fdo#109295])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-tglu-9:       NOTRUN -> [SKIP][93] ([fdo#109307])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@tools_test@sysfs_l3_parity.html
> 
>   * igt@v3d/v3d_create_bo@create-bo-0:
>     - shard-tglu-9:       NOTRUN -> [SKIP][94] ([fdo#109315] / [i915#2575])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@v3d/v3d_create_bo@create-bo-0.html
> 
>   * igt@v3d/v3d_get_param@base-params:
>     - shard-tglu-10:      NOTRUN -> [SKIP][95] ([fdo#109315] / [i915#2575]) +2 similar issues
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@v3d/v3d_get_param@base-params.html
> 
>   * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice:
>     - shard-tglu-9:       NOTRUN -> [SKIP][96] ([i915#2575]) +3 similar issues
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-9/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice.html
> 
>   * igt@vc4/vc4_tiling@set-bad-flags:
>     - shard-tglu-10:      NOTRUN -> [SKIP][97] ([i915#2575]) +3 similar issues
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-10/igt@vc4/vc4_tiling@set-bad-flags.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@write:
>     - {shard-rkl}:        [SKIP][98] ([i915#2582]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-rkl-5/igt@fbdev@write.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-rkl-6/igt@fbdev@write.html
> 
>   * igt@gem_bad_reloc@negative-reloc-lut:
>     - {shard-rkl}:        [SKIP][100] ([i915#3281]) -> [PASS][101] +4 similar issues
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-rkl-6/igt@gem_bad_reloc@negative-reloc-lut.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - {shard-rkl}:        [FAIL][102] ([i915#6268]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-rkl-4/igt@gem_ctx_exec@basic-nohangcheck.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_ctx_persistence@smoketest:
>     - {shard-rkl}:        [FAIL][104] ([i915#5099]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-rkl-5/igt@gem_ctx_persistence@smoketest.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-rkl-6/igt@gem_ctx_persistence@smoketest.html
> 
>   * igt@gem_eio@in-flight-contexts-immediate:
>     - shard-apl:          [TIMEOUT][106] ([i915#3063]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-apl1/igt@gem_eio@in-flight-contexts-immediate.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-apl7/igt@gem_eio@in-flight-contexts-immediate.html
> 
>   * igt@gem_exec_balancer@fairslice:
>     - {shard-rkl}:        [SKIP][108] ([i915#6259]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-rkl-5/igt@gem_exec_balancer@fairslice.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-rkl-6/igt@gem_exec_balancer@fairslice.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - {shard-rkl}:        [FAIL][110] ([i915#2842]) -> [PASS][111] +3 similar issues
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-rkl-6/igt@gem_exec_fair@basic-none@vcs0.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-rkl-5/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-apl:          [FAIL][112] ([i915#2842]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-apl2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-apl7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - {shard-tglu}:       [FAIL][114] ([i915#2842]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_partial_pwrite_pread@reads-uncached:
>     - {shard-rkl}:        [SKIP][116] ([i915#3282]) -> [PASS][117] +1 similar issue
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-rkl-6/igt@gem_partial_pwrite_pread@reads-uncached.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-rkl-5/igt@gem_partial_pwrite_pread@reads-uncached.html
> 
>   * igt@i915_pm_rpm@fences:
>     - {shard-rkl}:        [SKIP][118] ([i915#1849]) -> [PASS][119] +2 similar issues
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-rkl-5/igt@i915_pm_rpm@fences.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-rkl-6/igt@i915_pm_rpm@fences.html
> 
>   * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
>     - {shard-rkl}:        [SKIP][120] ([i915#1845] / [i915#4098]) -> [PASS][121] +17 similar issues
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [FAIL][122] ([i915#2346]) -> [PASS][123]
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-apl:          [FAIL][124] ([i915#2346]) -> [PASS][125] +1 similar issue
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-flip-before-cursor-toggle:
>     - {shard-tglu}:       [SKIP][126] ([i915#1845]) -> [PASS][127] +1 similar issue
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-tglu-6/igt@kms_cursor_legacy@short-flip-before-cursor-toggle.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-5/igt@kms_cursor_legacy@short-flip-before-cursor-toggle.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [FAIL][128] ([i915#4767]) -> [PASS][129]
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:
>     - shard-apl:          [FAIL][130] ([i915#79]) -> [PASS][131]
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
>     - {shard-rkl}:        [SKIP][132] ([i915#1849] / [i915#4098]) -> [PASS][133] +14 similar issues
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt:
>     - {shard-tglu}:       [SKIP][134] ([i915#1849]) -> [PASS][135] +3 similar issues
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_psr@cursor_blt:
>     - {shard-rkl}:        [SKIP][136] ([i915#1072]) -> [PASS][137] +1 similar issue
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-rkl-5/igt@kms_psr@cursor_blt.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-rkl-6/igt@kms_psr@cursor_blt.html
> 
>   * igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a:
>     - {shard-tglu}:       [SKIP][138] ([fdo#109274]) -> [PASS][139]
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-tglu-6/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-5/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-modeset:
>     - {shard-tglu}:       [SKIP][140] ([i915#1845] / [i915#7651]) -> [PASS][141] +10 similar issues
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-tglu-6/igt@kms_vblank@pipe-b-ts-continuation-modeset.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-tglu-5/igt@kms_vblank@pipe-b-ts-continuation-modeset.html
> 
>   * igt@prime_vgem@basic-read:
>     - {shard-rkl}:        [SKIP][142] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][143]
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-rkl-6/igt@prime_vgem@basic-read.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-rkl-5/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - {shard-rkl}:        [SKIP][144] ([fdo#109295] / [fdo#111656] / [i915#3708]) -> [PASS][145]
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12794/shard-rkl-6/igt@prime_vgem@coherency-gtt.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/shard-rkl-5/igt@prime_vgem@coherency-gtt.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
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
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2232]: https://gitlab.freedesktop.org/drm/intel/issues/2232
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
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
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#5099]: https://gitlab.freedesktop.org/drm/intel/issues/5099
>   [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
>   [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
>   [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
>   [i915#7294]: https://gitlab.freedesktop.org/drm/intel/issues/7294
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7582]: https://gitlab.freedesktop.org/drm/intel/issues/7582
>   [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#7949]: https://gitlab.freedesktop.org/drm/intel/issues/7949
>   [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
>   [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
>   [i915#8154]: https://gitlab.freedesktop.org/drm/intel/issues/8154
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12794 -> Patchwork_114199v4
> 
>   CI-20190529: 20190529
>   CI_DRM_12794: 09f45ee84b4e66b882286806fb4b2b03907db5dc @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7176: ffe88a907c0fafe6a736f5f17cee8ba8eddd6fa7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_114199v4: 09f45ee84b4e66b882286806fb4b2b03907db5dc @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114199v4/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
