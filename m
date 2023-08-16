Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 613E077E981
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 21:18:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 478AC10E3A6;
	Wed, 16 Aug 2023 19:18:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 450D910E3A4
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 19:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692213485; x=1723749485;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OqVEHAYiDL81lPkVjyk0U5U5aJOvttlJb6GnuBIvYlM=;
 b=nk9Tw1Q2WMb8kEd/bXVK5nOQo1rpZbhcuLrj/CntOzA57hXjxQE/vkqn
 On0/EfCMK6wW7dlLs+oACYL/y/Nc1JEXsgUxKXvp5FY95KjXsR7Ob8ojP
 a3leRGVWtJrcqE3chury+bjet4JzUPyKlVXhv6vzkOqM4lepZglEMEcpE
 5pR+XpRo3LK43XJnGikomK9Ez2jR9z7upVyshnbnuIClrbrSyeF5udDBo
 vi8RMT23jQnpjjup5/AqllDbCNB/+3/5H/nDmnbMs8BZ82gokgZwXjwIZ
 ZJtSARYnqEiwa+IrwgwPyAdeGzYP0yZJorJhmVWunDyaAqQNAHj48aqBf A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="352938259"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="352938259"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 12:18:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="727856794"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="727856794"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 16 Aug 2023 12:18:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 12:18:03 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 12:18:03 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 12:18:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TVMnNcyGv77AcekafA16FedRTxIjmqK775oNbqaKWvzoFzmAGpoREkGnIItCgIheWG15dub1kJ6aMs791nJLyQKv2bANEG4ahd+vKnw/LRDGf0wnBgDOR79WAjdp+vsLzMAaPudEhxxAF8mYrab1UOgqLyaAGB3BoEiNAXDLGKUxeKuxA8+TTN5gTk7DhCxzkRyRqdoqSwiT8aA/i6sECRK3+JB1igVlnapkX7J7qEHDLcTBTyRBV+QG9VyzpImZ317U3rZGJhrrgC2HrnuqPrs9Ul2fAXfpWxJ5EFmEcvAtJtAYkgKiAiIXQT8GyqwmHDXw0PWfzHmN4sjaXDSpKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i9eLQ3+824jDOZUYhh+dAm/5AlBdLzYZO+MCHN7EvcU=;
 b=k030RpxciPsg4Hf5oKWkjCd4gXZN8cm1p44+NgDhhqvsYivf4UeyYMGVI1vorebMzRDP9aq+zwQ9UryUuQoNM2+KSH5+QZe+9sjbFO1Hj6Bzlj4DoFM2AUf5+9I/Nlj6pkQF+EC0JVb/4wHcTQaOEYxkRKzxDbQIZPpfjo0yuenMttcxIZOH9lE5qDBp7m0tww/RqvMsa99ZNLoqIaxcOIOWPhUdfAM5vUMo57V4mS5VokH/nbkbcd+O7/rKUo2vb55eKEYACfzmdWUvmkYWEuVRdlvhxVIJQvMfBtrXeomCTHvxDGEJgGBS/LmftmDmNL4zSQwi2iwlIypei4hsxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DS0PR11MB8164.namprd11.prod.outlook.com (2603:10b6:8:167::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6678.26; Wed, 16 Aug 2023 19:18:00 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6678.025; Wed, 16 Aug 2023
 19:17:59 +0000
Date: Wed, 16 Aug 2023 12:17:57 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20230816191757.GQ3375865@mdroper-desk1.amr.corp.intel.com>
References: <20230815201344.298573-1-gustavo.sousa@intel.com>
 <169213988023.16422.7279611441602932016@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <169213988023.16422.7279611441602932016@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR21CA0019.namprd21.prod.outlook.com
 (2603:10b6:a03:114::29) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DS0PR11MB8164:EE_
X-MS-Office365-Filtering-Correlation-Id: 8fcdc2a0-0c70-4afb-ffa1-08db9e8d810b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 92VhTSycxZepiWExShgMPyFKOUtSAqpE3Re/8xGVz/4ryEDN5eMTmiKHlpxmT2uJFYwKoM4Caq8sYQnSCibJIFFhtnFNwyQk3qOVrKBWamRvT2/rSmfPgFFhkMPY7RQeOnp4z2Y9Sep7/83QJVD/IZklLVgBVT7HaqgizA6poIkDhz3RXdvSM8+dl/+jPW6NpjXDU5/CJu1sNAEkpoRK5fjv7mft2KE/iZU5+IlcSS8LqGrVtZXUnfaUAfmRCKP5Cyu+VOsE5TPqoB2Zljshtu8WCnLu8wtVHWZ9V/fXBjKXULQn0DnPeHQ3Tf0bSWcMl6144Rs97jg4tfWD+OybvmZNrUt0MUjVLq9OjcKJQtDHbpCkvyIBbanLhyJUp0/kbvdxnsf/xScYU440K4PHRpFJx9MKl0GvXTf3aY+IrJpe6INhVW8yAa4JR73BnCBu+AkSlXlRqcPOG+3HFf4ksRCvLvYyigWXaLa2nG2ZvWB/nfRhenkjjwuOXB2pf/P7yw8c149YbbcjO5VGTDj69Vt75vFHVFyhajaehEvnAIz4MlDCciS9HvvSFQB4HuBJ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(346002)(396003)(136003)(366004)(451199024)(1800799009)(186009)(316002)(6916009)(66946007)(66556008)(66476007)(966005)(5660300002)(41300700001)(38100700002)(4326008)(8936002)(82960400001)(2906002)(83380400001)(26005)(478600001)(86362001)(6512007)(33656002)(107886003)(6506007)(1076003)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QCH6czqtytiUGHj9Q+EGGsiWhJx1uc2LvMEnB64qVGsa/y3/k/XG7Mhp80A7?=
 =?us-ascii?Q?BYeJrtSI7+NZkopkjinm8scA+2DD/O5z13SN5WIVAn6p6NzuKJHNB5mX0wg+?=
 =?us-ascii?Q?JpBEz6PVCz9TF+ddnyzy/yIIrpJb1Qr8JHkgvOBmSiR0cG1OgvtOCNocMnGS?=
 =?us-ascii?Q?Oc4YeRCAOsCsWLgKBW8d7noSw598mn+o49eLrnt+Hd5AKFCo0V+HXAE69iQE?=
 =?us-ascii?Q?L7DOqT4MCEAGP308+UE7M4eDZBw8Nh1CXT3JjeAsLQ9kIVN0BBXrTe2iN0Z7?=
 =?us-ascii?Q?Yz3gAs9dgrrO4KvvP5+FwnDyXLrtI7MHlPOC+tk5HaiMxV59If55untxXTpd?=
 =?us-ascii?Q?AmjsEE+3J2PP9JyLAAgT7IvJAdg1jr8VTBTVyyfJydd6FzU1rip3Aw/6Yvdd?=
 =?us-ascii?Q?GRv/jcGVTvu+KnCc9knTk41zRvhCr8nd47sWmwh9e1usSVMMtsq7C6ZoT5Yy?=
 =?us-ascii?Q?t2w61J3gSUr8HE0o41vxDqQ4+bZgiK57WIxo33E6Rlj1WXIIBe/WGeYxrtwc?=
 =?us-ascii?Q?2p5InQ43T55k6mYfmSIybCCw1PlFrVJjiwLLyAwyiZ8oh2iyqvjWmCCJb4/M?=
 =?us-ascii?Q?KnwqY4PS2YtN8p5lAexyhqdH8t/nHyy+ZR3S3dm1jMuGg3rZ6KDGBeP3jr0g?=
 =?us-ascii?Q?HQ1BH+G+1bXHCzWa4ApK/CS+JPhSmwDoOAtW7JTC041cNCPxoxBCzMQVb12H?=
 =?us-ascii?Q?VaP/WCBifQxXlCNTV+8dgVWBpVRqzzUGIM3jEpOm8TjFxdjnsMhbZWe1CEmi?=
 =?us-ascii?Q?ss9HcA03GrnK53GTXJopXbne8aAofmb6Fsw15db41gcV2axhcNnqSTwHiN8x?=
 =?us-ascii?Q?rG/vCn9u38TGaay/VKLAYsCiJ8MRqKfY2aEJtYPNAOGHTDeq9eS2AC7mW6HF?=
 =?us-ascii?Q?NGExPgLX9UrYf5Eg2knMT+eoo8GQnK2Yv+1S4m1Wg61zCXkGmwOwsXmEZeX3?=
 =?us-ascii?Q?O8JetgU4xDchs7TI/XuQOochclqUzRjqF/6yeU/uU8+09uumqnqd93YsGtwX?=
 =?us-ascii?Q?xRxTaiFWSLQI1G30YxgbL7pXL5tlwY4sslz1P8VBp+SdlxPICv25+5CwGT0+?=
 =?us-ascii?Q?jchtFCxSgtCU0zNvt5AxRRZ3p8Li1m51h5JGdgCo2Icypz07AGEYEn9qtwZl?=
 =?us-ascii?Q?BmzULn5gCIlDsmHm1cZ4HCpV8MY7aQmt6wrkXeIRAqD8xiSTx7/QfagyQnU4?=
 =?us-ascii?Q?hsBdnwG07CcKYpXBeN0XD2Lnznl84emuTARoNkzCpwVeFqXky1jmC4Y6cGKW?=
 =?us-ascii?Q?RFN/pV9x+b/H58NF84146c+gXElaAqkvQECIDLHMM6NSapEtZZa5FDVm4eKc?=
 =?us-ascii?Q?P3QXOJ5luUPX0B15/QUQb5QGwBgF227OGj1Jhva1eHEWEUjo777JKzr4KZeZ?=
 =?us-ascii?Q?kFjWNMYA/NsuK9Zvzt5DLStn1o8g65ww62QCC9LnQkTk/5O/TwqpGR+jl1QB?=
 =?us-ascii?Q?hKC53wWXOh8itnN6LaJGxMMjS1LOyjP1DLC6n0wTtXncy+DfGQyIMctZVuUJ?=
 =?us-ascii?Q?oeAiWiHyk5/F54+fNklWepyp8yo/R0Zso7lBr4tM1XvNvz/dogOIxQmkqsDl?=
 =?us-ascii?Q?8MWdN7KA2kS4NWpGFm7vS9eH3j1rvaxAViPQkD4X6OEvzrkhjNrm8AxYE/zZ?=
 =?us-ascii?Q?5Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8fcdc2a0-0c70-4afb-ffa1-08db9e8d810b
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2023 19:17:59.7722 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6Gh0/jCdUkwORBqpxbtlEfxYSbJQ9UqObdT7zcvbfy2igPmfS4ewF8Bo/BMRB4R39rgSkP930HDevW0KSofZtNl3Dog3sRl7+kViSuySPtw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8164
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Remove_unused_POWER=5FDOMAIN=5FMASK?=
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

On Tue, Aug 15, 2023 at 10:51:20PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/display: Remove unused POWER_DOMAIN_MASK
> URL   : https://patchwork.freedesktop.org/series/122478/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13523 -> Patchwork_122478v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_122478v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_122478v1, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122478v1/index.html
> 
> Participating hosts (41 -> 40)
> ------------------------------
> 
>   Missing    (1): fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_122478v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_busy@busy@all-engines:
>     - bat-mtlp-8:         [PASS][1] -> [DMESG-FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13523/bat-mtlp-8/igt@gem_busy@busy@all-engines.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122478v1/bat-mtlp-8/igt@gem_busy@busy@all-engines.html

GPU hang; not related to this patch.

Removing the unused macro has no functional change, and the code still
compiles properly, so no need to get full CI shard results.  Applied to
drm-intel-next; thanks for the patch.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_122478v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_huc_copy@huc-copy:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#2190])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122478v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#4613]) +3 similar issues
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122478v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - fi-glk-j4005:       [PASS][5] -> [DMESG-FAIL][6] ([i915#5334])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13523/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122478v1/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@i915_selftest@live@gt_mocs:
>     - bat-mtlp-8:         [PASS][7] -> [DMESG-FAIL][8] ([i915#7059])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13523/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122478v1/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][9] ([i915#1886] / [i915#7913])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122478v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@i915_selftest@live@requests:
>     - bat-mtlp-8:         [PASS][10] -> [DMESG-FAIL][11] ([i915#8497])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13523/bat-mtlp-8/igt@i915_selftest@live@requests.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122478v1/bat-mtlp-8/igt@i915_selftest@live@requests.html
> 
>   * igt@i915_selftest@live@slpc:
>     - bat-rpls-2:         NOTRUN -> [DMESG-WARN][12] ([i915#6367])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122478v1/bat-rpls-2/igt@i915_selftest@live@slpc.html
>     - bat-mtlp-8:         [PASS][13] -> [DMESG-WARN][14] ([i915#6367])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13523/bat-mtlp-8/igt@i915_selftest@live@slpc.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122478v1/bat-mtlp-8/igt@i915_selftest@live@slpc.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-fast:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][15] ([fdo#109271]) +15 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122478v1/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html
> 
>   * igt@kms_chamelium_hpd@common-hpd-after-suspend:
>     - bat-rpls-2:         NOTRUN -> [SKIP][16] ([i915#7828])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122478v1/bat-rpls-2/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
>     - bat-dg2-11:         NOTRUN -> [SKIP][17] ([i915#1845] / [i915#5354]) +2 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122478v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc:
>     - bat-rpls-2:         NOTRUN -> [SKIP][18] ([i915#1845])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122478v1/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@eof:
>     - fi-kbl-soraka:      [ABORT][19] -> [PASS][20]
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13523/fi-kbl-soraka/igt@fbdev@eof.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122478v1/fi-kbl-soraka/igt@fbdev@eof.html
> 
>   * igt@i915_selftest@live@requests:
>     - bat-mtlp-6:         [DMESG-FAIL][21] ([i915#8497]) -> [PASS][22]
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13523/bat-mtlp-6/igt@i915_selftest@live@requests.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122478v1/bat-mtlp-6/igt@i915_selftest@live@requests.html
> 
>   * igt@i915_selftest@live@reset:
>     - bat-rpls-2:         [ABORT][23] ([i915#4983] / [i915#7461] / [i915#7913] / [i915#8347]) -> [PASS][24]
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13523/bat-rpls-2/igt@i915_selftest@live@reset.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122478v1/bat-rpls-2/igt@i915_selftest@live@reset.html
> 
>   
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
>   [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
>   [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
>   [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347
>   [i915#8497]: https://gitlab.freedesktop.org/drm/intel/issues/8497
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13523 -> Patchwork_122478v1
> 
>   CI-20190529: 20190529
>   CI_DRM_13523: f36c6b28e71c7e471027cada71eb9d1cb6bd8f69 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7436: 81e08c6d648e949df161a4f39118ed3eb1e354e9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_122478v1: f36c6b28e71c7e471027cada71eb9d1cb6bd8f69 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> eebf68ff2848 drm/i915/display: Remove unused POWER_DOMAIN_MASK
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122478v1/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
