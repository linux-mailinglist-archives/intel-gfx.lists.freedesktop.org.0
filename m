Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC13E720D9B
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Jun 2023 05:27:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD69510E203;
	Sat,  3 Jun 2023 03:27:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF96B10E203
 for <intel-gfx@lists.freedesktop.org>; Sat,  3 Jun 2023 03:27:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685762849; x=1717298849;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=E3IcjlkmHD75GRgTiuSXc6hO8X0ylz3qf7sUh+Uywbo=;
 b=Yt7S+7ChtWMeXNm4vrORlVRGxzjerBxKkJVVEequdAMkKBxRxOdX4C4F
 S03L7nDbBI0x/Nqp1nq66GCoHdloF4VNAuQjW26XGgP5kCnP45c+dSdOj
 QAx6X1Q5ID1lK66oJsK75bxRBf1I+I90vj8j9ppl4r0FUKtXGFAHTi7Sy
 5QZhvmQrvDyi7KfZOqop6+YV4fE2IuPedltrAYkJhV1flDPcF8U/dyZ09
 vVtgbyNRh1LUN108wQC9sZAcUzQ3hBiUofwCHfjSJCkV9Dl1TqrqpW4oa
 xyDsMXRjNh3p9/0aKRychdIWV2RvT5ZJuPIHeNEj3VLKuWYlwJZjeXTxe w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="345611702"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="345611702"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 20:27:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="741026137"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="741026137"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 02 Jun 2023 20:27:27 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 2 Jun 2023 20:27:27 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 2 Jun 2023 20:27:27 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 2 Jun 2023 20:27:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XbCkE/mk7u7rIapMldCoAGky8OudspVuWuTGT7THOoyLktjro0aDI//YUHFTG9/oxJVfpii4eyC1+27K+dqBTjseM3UeVobIPYwXnjcG00txW83/fzhJkpWGq3ItaaG4l8DxmMa0OmOHeS0+X3kTqxRj1E8Wf1gI67pa6fKoh0ICFbhBc5qT9X6qsCSvpgMguB4CEQHwd1HAB+ZMmq7tlsLzaeWkSBFBZ2VHR/Cg6lKYMIcCVwH5chdYCUPR7SCMgW/BNg76Nslt9/p+k0M2PvYs6Cm5AP5AybR2TzicQFTnOfmZYrYb+5MjB76M4bBA8nHEYeFwRsSAiqO9zjgIUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=92dIy7LlI7wN32wDF93hZ+OxIQzL6lpI4b0+wKA9N3o=;
 b=dOo7xzADC7CX6PHyWNN5iBp3h2ssJ2EdsGYkHhH+m4oWJ7QJ0A+FLx+t9iUomknTAzWTJftI7Zr8SRqBYFFQWPvziJFgH+NCToiQ6XC2Fw+0gST1N7sKdofZ833G4GpHPGbmwZs3ROsL6oVqcSMLPK+U09EgfVRV3cN55l/ELDMLPmvaOU1eS01LyiiqLgh64sq/huEmCKaNJuW19YEE15f+FXjonILOSd5HbEtZK0ihdRVfZzPE8ezTogc9SWNy34MWEj20kvCO5iVcB2Ji3oxG4rGsS1EjEZQSiJXiwBcNstBzm36rG93nEQ2qEJWYcdwmRGuVLu+jDMXAlJGJmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DM4PR11MB8129.namprd11.prod.outlook.com (2603:10b6:8:183::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.27; Sat, 3 Jun 2023 03:27:11 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%3]) with mapi id 15.20.6455.027; Sat, 3 Jun 2023
 03:27:10 +0000
Date: Fri, 2 Jun 2023 20:27:07 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20230603032707.GF5433@mdroper-desk1.amr.corp.intel.com>
References: <20230602225538.1255278-1-matthew.d.roper@intel.com>
 <168575512834.11972.15504964776463213598@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <168575512834.11972.15504964776463213598@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0P220CA0029.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::13) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DM4PR11MB8129:EE_
X-MS-Office365-Filtering-Correlation-Id: 7dc92476-be70-4d4e-a4a6-08db63e26a0c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YuKeQV4piCnPC99/NjRJLCEZHrd/RyB/ku2gh4x4LT2seBQ5ajIWMmhIudEz0OqR3SiZ+tXLEMswovxS8I/1Xmo4NHirV/d3bsjN3vhXhsmlqZP2lnwfPwTlrY642U/bpmezGNPToF3YFs9wt035nRh5qLavt9SNsqH/kgeXm7nnrkvwCaQfbkGDf0mpA99rAE0NbPr0cywj1pnc/hhoChr4eXPgoO/ZBQxjiXUfKvSxiIjKP0cI9Od1vHvr5pY281UAuAGxYBUdFM/qG9jSNqoMVGR9xdXqDRXixLhjSs4JJaDAu17fTYn+o0bNtIm2/yk07o4aEnEDoXh9TK23UD0tiAqMN4iSMzAUfNy+cQ0VYp2/b6C+l+lsq58CJX/JWkLHM82baKk1mx4IRIMBGsxrWUvzGlzS/nkB8Eh4mHTATySTj4wODy1z1vW+l0x6UPQ/2pEvoKvL481lR0C96ArfBse6EHGnTrtvx4io5+96jrDm5Exupyoxt/mFd5TjrgCZ4kFevyt3NdG3TBXxKyBAHx2bxMKbFglzdBI/nXs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(396003)(366004)(376002)(346002)(451199021)(38100700002)(41300700001)(316002)(82960400001)(83380400001)(6916009)(478600001)(66946007)(66476007)(66556008)(8936002)(6486002)(5660300002)(2906002)(30864003)(966005)(6666004)(6506007)(6512007)(1076003)(26005)(33656002)(86362001)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1xnOFomT74Hot2+0o/jgP0enJjNL8oPiLolxA+JpwngPH7NHNpzT9SlmBq5+?=
 =?us-ascii?Q?1es+NThIBbtTYY64nq4tnMy2B3WX5cCjNFysqxVN3y1+3+LCcc4l3eNUwSUh?=
 =?us-ascii?Q?5Jt5a2tcdIHNZxOTegPg5+kpzPZJgIxCYoqv0AQ4uUxB3c9ae7P6ZvolZLyY?=
 =?us-ascii?Q?mWrpUahSypQYyLIHgFCHLmsSc8FKcaXiz8NeB4TsMKdznz55LZ79RDrpXeLX?=
 =?us-ascii?Q?YJz8J4z1QbfqDzQmXq1JyEBu7eHhsTxLXametid1i2+0/6Y/qgJ2IE1NkMPx?=
 =?us-ascii?Q?sKmbvXiAviRDjD1PZPwRCtbLgQeXtY9VQYCQ//bmcL3WmrjK12Z/sztYOaPg?=
 =?us-ascii?Q?/n+tTOJEzyMpF6GLlVkidYWG+pjpH2LQQC2WA0URNYmyXnbBTe4XxAWBygqc?=
 =?us-ascii?Q?Rshy8Q5l+4FXPuUdhPOwE35Bvjto1FMMpgsYTY7ec9qvLtpvkRdXKJaKYmPH?=
 =?us-ascii?Q?YyaGcPQbnK+Kk6tJ/L4VrB0rqV+mpITRroA0KU4WysQ8gomhVqAx/0KobSTW?=
 =?us-ascii?Q?wLkqah3U8XtpnI3LaKgjMgOzgLjv2848PoMgBtZiqvptnnu485/gbm6otQ4L?=
 =?us-ascii?Q?gZ65TzBgvh5g5AOXsM9HcAnbUCXCwLfvDgRpV+ThFhDBrK401oPdbGRdcVn/?=
 =?us-ascii?Q?k9UVm7zbmkGHEwN5L7xVjFH2xn3umhYO9cG3rYXNZJAs/H8bWQNYRUKH92NI?=
 =?us-ascii?Q?xlQiBb1rWWhQ3SaAtsK8FNf3SMMcvf7UVr2Ln6TX9MvDp1+m2NM6AGyL/RPF?=
 =?us-ascii?Q?tA51HB9UzrqPb/1Cldoy6+J76k66c8+vIAlgZn473XHZED/7Eysvea6hZKmf?=
 =?us-ascii?Q?c1XTRjMyOL1IkVpLeGkuY/OYYAjd9U81IkjeDP09VWfx+M8uT0aod/crcywV?=
 =?us-ascii?Q?oFXiWKaw4FrWB2iTvokcoXSL6I6ZaV2SC8BixJi18SKRNIMT9fH4wndW6l1K?=
 =?us-ascii?Q?anZdBd77Ybm21eD3CtRop3fiYVkmXbty5SByI7VXQ/n56JVrmiysO8Z0lNRc?=
 =?us-ascii?Q?8/srzD9CKk84sqql4rGbhq9ANYqOE6aiFaOhxtvrldGKslJzyIHjmSz5Rfln?=
 =?us-ascii?Q?Wv6yqHsRkA7ReuHZcukNRqZcAlqPCibxzzVWeXukWtOpkkG8zQukJVgRJ0qK?=
 =?us-ascii?Q?YYxb+hyM9u4RUXCeC5tNg2FDGxrIW+J1HOfLWPFEDofXeuEur7y9HV+Gd5sn?=
 =?us-ascii?Q?ht8dHQhZn7uFLX+iW6sAC9kJ+D5X/dKZ+67J0acalYLIoE5/KYTpFtvalgIN?=
 =?us-ascii?Q?yH5K0VGU6y4f3LIwXu7TVdOYljdqfmCb9cTvaoXOIcMe32HJC2237NBl+D9L?=
 =?us-ascii?Q?TLs8JVN9snnMgK0rH/NpFBgWQ0eCGikQsG385O8wvWhWuSNE0y7zltJN6e7L?=
 =?us-ascii?Q?2Hlhvr01cHP8Ey30MjtD+Dlu1ljNgdvBd3vY3cG3TQhhTtgF/O5PvhNCTHCh?=
 =?us-ascii?Q?8bY384KaGTXOb0DupeykccygU7ltqZq8+D5OUL1K6JwJEYrCvflz+F+2AgKT?=
 =?us-ascii?Q?ecxHiMIINpG8FP6fIqLTBY0n1wAMDpcTRYAhk49icYdFOx/4VlabHMFmQU9a?=
 =?us-ascii?Q?L0VMv0NTJv2PraOhp8jZYGcfU7xumuXHE/kyKKJPeqxPyIyt+HnXcD4GD/a1?=
 =?us-ascii?Q?bA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dc92476-be70-4d4e-a4a6-08db63e26a0c
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2023 03:27:10.1003 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iTSGYZ6X/gnodDsqRkdCObQY1lcRFJQq2RLCA5YNsEBG/b8IhEmyGhSC9AmG/YIXEjX0tyt/LZNkuUug2RhZdUxwBMirRESbTC2X2hIqE48=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8129
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Extend_Wa=5F14015795083_platforms?=
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

On Sat, Jun 03, 2023 at 01:18:48AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Extend Wa_14015795083 platforms
> URL   : https://patchwork.freedesktop.org/series/118805/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13225 -> Patchwork_118805v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_118805v1 absolutely need to be
>   verified manually.

Hmm, it looks like on these older platforms the register has already
been locked by the firmware, making it impossible for us to apply the
change.  It looks like we'll need a firmware update the make this
workaround possible.


Matt

>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_118805v1, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/index.html
> 
> Participating hosts (32 -> 36)
> ------------------------------
> 
>   Additional (6): bat-mtlp-8 fi-cfl-guc bat-jsl-3 fi-elk-e7500 fi-bsw-nick bat-jsl-1 
>   Missing    (2): fi-kbl-soraka fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_118805v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_hangman@error-state-basic:
>     - bat-adln-1:         [PASS][1] -> [DMESG-WARN][2] +4 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-adln-1/igt@i915_hangman@error-state-basic.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-adln-1/igt@i915_hangman@error-state-basic.html
>     - bat-adlp-6:         [PASS][3] -> [DMESG-WARN][4] +4 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-adlp-6/igt@i915_hangman@error-state-basic.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-adlp-6/igt@i915_hangman@error-state-basic.html
> 
>   * igt@i915_module_load@load:
>     - bat-rplp-1:         [PASS][5] -> [DMESG-WARN][6] +5 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-rplp-1/igt@i915_module_load@load.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-rplp-1/igt@i915_module_load@load.html
> 
>   * igt@i915_selftest@live@client:
>     - bat-adlm-1:         [PASS][7] -> [DMESG-WARN][8] +43 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-adlm-1/igt@i915_selftest@live@client.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-adlm-1/igt@i915_selftest@live@client.html
> 
>   * igt@i915_selftest@live@gem:
>     - fi-rkl-11600:       [PASS][9] -> [DMESG-WARN][10] +47 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/fi-rkl-11600/igt@i915_selftest@live@gem.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/fi-rkl-11600/igt@i915_selftest@live@gem.html
>     - bat-adls-5:         [PASS][11] -> [DMESG-WARN][12] +42 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-adls-5/igt@i915_selftest@live@gem.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-adls-5/igt@i915_selftest@live@gem.html
> 
>   * igt@i915_selftest@live@gt_contexts:
>     - bat-rpls-1:         [PASS][13] -> [DMESG-WARN][14] +26 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-rpls-1/igt@i915_selftest@live@gt_contexts.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-rpls-1/igt@i915_selftest@live@gt_contexts.html
> 
>   * igt@i915_selftest@live@gt_engines:
>     - bat-rpls-2:         [PASS][15] -> [DMESG-WARN][16] +35 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-rpls-2/igt@i915_selftest@live@gt_engines.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-rpls-2/igt@i915_selftest@live@gt_engines.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - fi-tgl-1115g4:      [PASS][17] -> [DMESG-WARN][18] +40 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@i915_selftest@live@gt_tlb:
>     - bat-adlp-9:         [PASS][19] -> [DMESG-WARN][20] +47 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html
> 
>   * igt@i915_selftest@live@guc_multi_lrc:
>     - bat-rpls-1:         NOTRUN -> [DMESG-WARN][21] +7 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-rpls-1/igt@i915_selftest@live@guc_multi_lrc.html
> 
>   * igt@i915_selftest@live@mman:
>     - bat-dg1-5:          [PASS][22] -> [DMESG-WARN][23] +50 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-dg1-5/igt@i915_selftest@live@mman.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-dg1-5/igt@i915_selftest@live@mman.html
> 
>   * igt@i915_selftest@live@perf:
>     - bat-dg2-11:         [PASS][24] -> [DMESG-WARN][25] +46 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-dg2-11/igt@i915_selftest@live@perf.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-dg2-11/igt@i915_selftest@live@perf.html
> 
>   * igt@i915_selftest@live@uncore:
>     - bat-dg1-7:          [PASS][26] -> [DMESG-WARN][27] +42 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-dg1-7/igt@i915_selftest@live@uncore.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-dg1-7/igt@i915_selftest@live@uncore.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-rpls-1:         [PASS][28] -> [DMESG-FAIL][29]
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-rpls-1/igt@i915_selftest@live@workarounds.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-rpls-1/igt@i915_selftest@live@workarounds.html
>     - bat-dg1-5:          [PASS][30] -> [DMESG-FAIL][31]
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-dg1-5/igt@i915_selftest@live@workarounds.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-dg1-5/igt@i915_selftest@live@workarounds.html
>     - bat-dg1-7:          [PASS][32] -> [DMESG-FAIL][33]
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-dg1-7/igt@i915_selftest@live@workarounds.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-dg1-7/igt@i915_selftest@live@workarounds.html
>     - fi-rkl-11600:       [PASS][34] -> [DMESG-FAIL][35]
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/fi-rkl-11600/igt@i915_selftest@live@workarounds.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/fi-rkl-11600/igt@i915_selftest@live@workarounds.html
>     - fi-tgl-1115g4:      [PASS][36] -> [DMESG-FAIL][37]
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/fi-tgl-1115g4/igt@i915_selftest@live@workarounds.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/fi-tgl-1115g4/igt@i915_selftest@live@workarounds.html
>     - bat-adlm-1:         [PASS][38] -> [DMESG-FAIL][39]
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-adlm-1/igt@i915_selftest@live@workarounds.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-adlm-1/igt@i915_selftest@live@workarounds.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_selftest@live@reset:
>     - bat-rpls-1:         [ABORT][40] ([i915#4983] / [i915#7461] / [i915#7981] / [i915#8347] / [i915#8384]) -> [DMESG-WARN][41]
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-rpls-1/igt@i915_selftest@live@reset.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-rpls-1/igt@i915_selftest@live@reset.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_118805v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@debugfs_test@basic-hwmon:
>     - bat-jsl-3:          NOTRUN -> [SKIP][42] ([i915#7456])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-jsl-3/igt@debugfs_test@basic-hwmon.html
>     - bat-jsl-1:          NOTRUN -> [SKIP][43] ([i915#7456])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-jsl-1/igt@debugfs_test@basic-hwmon.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - bat-jsl-3:          NOTRUN -> [SKIP][44] ([i915#2190])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-jsl-3/igt@gem_huc_copy@huc-copy.html
>     - bat-jsl-1:          NOTRUN -> [SKIP][45] ([i915#2190])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-jsl-1/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - bat-jsl-3:          NOTRUN -> [SKIP][46] ([i915#4613]) +3 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-jsl-3/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - fi-bsw-nick:        NOTRUN -> [SKIP][47] ([fdo#109271]) +51 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html
>     - bat-jsl-1:          NOTRUN -> [SKIP][48] ([i915#4613]) +3 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-jsl-1/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - fi-cfl-guc:         NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#4613]) +3 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/fi-cfl-guc/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@i915_module_load@load:
>     - bat-adlp-6:         [PASS][50] -> [DMESG-WARN][51] ([i915#1982])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-adlp-6/igt@i915_module_load@load.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-adlp-6/igt@i915_module_load@load.html
> 
>   * igt@i915_pm_backlight@basic-brightness@edp-1:
>     - bat-rplp-1:         NOTRUN -> [ABORT][52] ([i915#7077])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-rplp-1/igt@i915_pm_backlight@basic-brightness@edp-1.html
> 
>   * igt@i915_pm_rpm@module-reload:
>     - bat-dg2-11:         [PASS][53] -> [DMESG-WARN][54] ([i915#7953])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
>     - bat-rpls-1:         [PASS][55] -> [DMESG-WARN][56] ([i915#7953])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-rpls-1/igt@i915_pm_rpm@module-reload.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-rpls-1/igt@i915_pm_rpm@module-reload.html
>     - bat-adlp-9:         [PASS][57] -> [DMESG-WARN][58] ([i915#7953])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-adlp-9/igt@i915_pm_rpm@module-reload.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-adlp-9/igt@i915_pm_rpm@module-reload.html
>     - fi-tgl-1115g4:      [PASS][59] -> [DMESG-WARN][60] ([i915#7953])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html
> 
>   * igt@i915_selftest@live@gem_contexts:
>     - bat-adlp-9:         [PASS][61] -> [DMESG-WARN][62] ([i915#8218])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-adlp-9/igt@i915_selftest@live@gem_contexts.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-adlp-9/igt@i915_selftest@live@gem_contexts.html
>     - bat-adls-5:         [PASS][63] -> [DMESG-WARN][64] ([i915#8218])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-adls-5/igt@i915_selftest@live@gem_contexts.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-adls-5/igt@i915_selftest@live@gem_contexts.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - bat-rpls-2:         [PASS][65] -> [DMESG-WARN][66] ([i915#7699]) +1 similar issue
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-rpls-2/igt@i915_selftest@live@gt_heartbeat.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-rpls-2/igt@i915_selftest@live@gt_heartbeat.html
>     - bat-dg2-11:         [PASS][67] -> [DMESG-WARN][68] ([i915#7699]) +1 similar issue
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-dg2-11/igt@i915_selftest@live@gt_heartbeat.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-dg2-11/igt@i915_selftest@live@gt_heartbeat.html
>     - bat-rpls-1:         [PASS][69] -> [DMESG-WARN][70] ([i915#7699]) +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-rpls-1/igt@i915_selftest@live@gt_heartbeat.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-rpls-1/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@i915_selftest@live@guc:
>     - bat-rpls-2:         [PASS][71] -> [DMESG-WARN][72] ([i915#7852])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-rpls-2/igt@i915_selftest@live@guc.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-rpls-2/igt@i915_selftest@live@guc.html
>     - bat-rpls-1:         NOTRUN -> [DMESG-WARN][73] ([i915#7852])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-rpls-1/igt@i915_selftest@live@guc.html
>     - bat-adlp-9:         [PASS][74] -> [DMESG-WARN][75] ([i915#7852])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-adlp-9/igt@i915_selftest@live@guc.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-adlp-9/igt@i915_selftest@live@guc.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - bat-adlm-1:         [PASS][76] -> [DMESG-WARN][77] ([i915#8423])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-adlm-1/igt@i915_selftest@live@hangcheck.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-adlm-1/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_selftest@live@migrate:
>     - bat-adlp-9:         [PASS][78] -> [DMESG-WARN][79] ([i915#7699]) +1 similar issue
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-adlp-9/igt@i915_selftest@live@migrate.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-adlp-9/igt@i915_selftest@live@migrate.html
> 
>   * igt@i915_selftest@live@slpc:
>     - bat-rpls-2:         [PASS][80] -> [DMESG-WARN][81] ([i915#6367])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-rpls-2/igt@i915_selftest@live@slpc.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-rpls-2/igt@i915_selftest@live@slpc.html
>     - bat-rpls-1:         NOTRUN -> [DMESG-WARN][82] ([i915#6367])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-rpls-1/igt@i915_selftest@live@slpc.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-adls-5:         [PASS][83] -> [DMESG-FAIL][84] ([i915#7913])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-adls-5/igt@i915_selftest@live@workarounds.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-adls-5/igt@i915_selftest@live@workarounds.html
>     - bat-adlp-9:         [PASS][85] -> [DMESG-FAIL][86] ([i915#7913])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-adlp-9/igt@i915_selftest@live@workarounds.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-adlp-9/igt@i915_selftest@live@workarounds.html
>     - bat-rpls-2:         [PASS][87] -> [DMESG-FAIL][88] ([i915#7913])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-rpls-2/igt@i915_selftest@live@workarounds.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-rpls-2/igt@i915_selftest@live@workarounds.html
> 
>   * igt@i915_suspend@basic-s2idle-without-i915:
>     - bat-rpls-1:         NOTRUN -> [DMESG-WARN][89] ([i915#6687])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - bat-dg1-5:          [PASS][90] -> [DMESG-WARN][91] ([i915#4391]) +3 similar issues
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-dg1-5/igt@i915_suspend@basic-s3-without-i915.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-dg1-5/igt@i915_suspend@basic-s3-without-i915.html
>     - bat-dg1-7:          [PASS][92] -> [DMESG-WARN][93] ([i915#4391]) +3 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-dg1-7/igt@i915_suspend@basic-s3-without-i915.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-dg1-7/igt@i915_suspend@basic-s3-without-i915.html
>     - bat-rpls-1:         NOTRUN -> [ABORT][94] ([i915#6687] / [i915#7978])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_chamelium_edid@dp-edid-read:
>     - bat-jsl-1:          NOTRUN -> [SKIP][95] ([i915#7828]) +8 similar issues
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-jsl-1/igt@kms_chamelium_edid@dp-edid-read.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-read:
>     - fi-cfl-guc:         NOTRUN -> [SKIP][96] ([fdo#109271]) +17 similar issues
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/fi-cfl-guc/igt@kms_chamelium_edid@hdmi-edid-read.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-fast:
>     - bat-jsl-3:          NOTRUN -> [SKIP][97] ([i915#7828]) +8 similar issues
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-jsl-3/igt@kms_chamelium_hpd@vga-hpd-fast.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - bat-jsl-3:          NOTRUN -> [SKIP][98] ([i915#4103]) +1 similar issue
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-jsl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>     - bat-jsl-1:          NOTRUN -> [SKIP][99] ([i915#4103]) +1 similar issue
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - bat-jsl-3:          NOTRUN -> [SKIP][100] ([fdo#109285])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-jsl-3/igt@kms_force_connector_basic@force-load-detect.html
>     - bat-jsl-1:          NOTRUN -> [SKIP][101] ([fdo#109285])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_psr@cursor_plane_move:
>     - fi-elk-e7500:       NOTRUN -> [SKIP][102] ([fdo#109271]) +29 similar issues
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/fi-elk-e7500/igt@kms_psr@cursor_plane_move.html
> 
>   * igt@kms_psr@primary_mmap_gtt:
>     - bat-rplp-1:         NOTRUN -> [SKIP][103] ([i915#1072])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - bat-rplp-1:         NOTRUN -> [SKIP][104] ([i915#3555] / [i915#4579])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html
>     - fi-cfl-guc:         NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#4579])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/fi-cfl-guc/igt@kms_setmode@basic-clone-single-crtc.html
>     - fi-bsw-nick:        NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#4579])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/fi-bsw-nick/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-jsl-3:          NOTRUN -> [SKIP][107] ([i915#3555] / [i915#4579])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-jsl-3/igt@kms_setmode@basic-clone-single-crtc.html
>     - fi-elk-e7500:       NOTRUN -> [SKIP][108] ([fdo#109271] / [i915#4579])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/fi-elk-e7500/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-jsl-1:          NOTRUN -> [SKIP][109] ([i915#3555] / [i915#4579])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1:
>     - bat-dg2-8:          [FAIL][110] ([i915#7932]) -> [PASS][111] +1 similar issue
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_psr@sprite_plane_onoff:
>     - bat-rplp-1:         [ABORT][112] ([i915#8442]) -> [SKIP][113] ([i915#1072])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13225/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
>   [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
>   [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
>   [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
>   [i915#7077]: https://gitlab.freedesktop.org/drm/intel/issues/7077
>   [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
>   [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
>   [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7852]: https://gitlab.freedesktop.org/drm/intel/issues/7852
>   [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
>   [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
>   [i915#7953]: https://gitlab.freedesktop.org/drm/intel/issues/7953
>   [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
>   [i915#7981]: https://gitlab.freedesktop.org/drm/intel/issues/7981
>   [i915#8218]: https://gitlab.freedesktop.org/drm/intel/issues/8218
>   [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347
>   [i915#8384]: https://gitlab.freedesktop.org/drm/intel/issues/8384
>   [i915#8423]: https://gitlab.freedesktop.org/drm/intel/issues/8423
>   [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13225 -> Patchwork_118805v1
> 
>   CI-20190529: 20190529
>   CI_DRM_13225: de0c32427a022e2088494a289186214e80b4dba2 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7318: c2d8ef8b9397d0976959f29dc1dd7c8a698d65fe @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_118805v1: de0c32427a022e2088494a289186214e80b4dba2 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> 6023094b96b6 drm/i915: Extend Wa_14015795083 platforms
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118805v1/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
