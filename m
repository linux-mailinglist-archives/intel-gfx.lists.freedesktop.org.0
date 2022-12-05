Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C689F642E62
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 18:10:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D20C310E25A;
	Mon,  5 Dec 2022 17:10:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECA7310E25A
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Dec 2022 17:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670260225; x=1701796225;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=aKIwf3NG8cPnObbOyFglmxFV0laUT6YyvxvU+TxZQR4=;
 b=PkLp35N7u+opW48kncxbXpoyvTeSS9iK3ryQqNUc7EKNS796AH4UHxRl
 UsyUyGh/Jgymg0ch447QAPJ8zP2zWGnhv/uuwHUyDmTfbL9JZWZiRMyLT
 SPAbIsiQbEKstdeot+tHbQj84pqf+6zyWpzY5s+pG97STRyp599dyzJbY
 al/3SwfE8OmzPQC9CbVKlEV4dU2QQW3aaZJ1Uvr7zAiCNu20WL29W3i6/
 thSzyVRGllhrb32Q6oS6q7MIl4kZWnkAcz9yJ6aUDheu+RpnkAgnw7u8P
 YCMCLb4zj4AwSfmTEc6eLOvznQvwWXoS0WOR+p11f1oMJHj6CEVi0I06U A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="380699226"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="380699226"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 09:08:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="770415815"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="770415815"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 05 Dec 2022 09:08:11 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 5 Dec 2022 09:08:10 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 5 Dec 2022 09:08:10 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 5 Dec 2022 09:08:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oS5TrNzcZYZDhBrXhwAUF6SvGs88c/IBLUTtv7KA/nuu3bLhOO/SopHIR8Snpi5rT1MhdvPLB5TAEPmhfbZnIhKhACAbcSR3/j4DKcNTDoF9MqYm6jbopMfqUfqUlMeDcZhlBxmIKG/9YDaeTzo4bVYtJr974rdmW9sJOsP7f5K6p9mIVLVX8HhkjYRRDi/UqU8QYAdeMorAunspiWKv4KVwAY8ne6UPpLw5/TMvY1sNxAsVZbWmYj4DEhJfjqG90zFTJDd7v/UTJXCLtsYa7lRD19SWVjrqntdQAGnspDtmkTvRuebXbqoh0BeIyyw4GE4iWKiMYfFt1OYT+cxbCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wCbUsixbD8jZDFURGxJP35Kdjj1LO6BQZv9Ej6piTXY=;
 b=bnHbcI5rqXb1tYJ1gvTSlShToBG+U21THouxvq72xvWMwLQZoxZ5RfDCTOnWVzsNRPyfA9iqIGev0rf06YaGdoGjA5GwGdKArXHNrjorgUDOOZYpypIhG2Atycxi2UH1sFeJ6c/pMfSwAwnl4FU9I4wNo3vV/wyzjRvERJWSnub2BTrHre0jNQLV4Xh2jMQ2ZGZ7wEEtOoutsvV0aGEXDJIq21rYbADQT95I5Rdsd66I1vf8yNCjYauNsgjWMr6tImfJAkhb5S88bwsR1EAtOzJzE1zs92hYHeyAhTw6ljU6LeikCaS9K/K3HI2dSn41lFfCCPQeJIilPUXB3TyRvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by PH8PR11MB7118.namprd11.prod.outlook.com (2603:10b6:510:216::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.13; Mon, 5 Dec
 2022 17:08:07 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475%7]) with mapi id 15.20.5880.014; Mon, 5 Dec 2022
 17:08:07 +0000
Date: Mon, 5 Dec 2022 09:08:05 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y44ldYMk/1xg0WkY@mdroper-desk1.amr.corp.intel.com>
References: <20221202223528.714491-1-matthew.d.roper@intel.com>
 <167005672187.8387.15365994197270361052@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <167005672187.8387.15365994197270361052@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR06CA0057.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::34) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|PH8PR11MB7118:EE_
X-MS-Office365-Filtering-Correlation-Id: d9cc5ee2-af5c-4ac7-5c0b-08dad6e34775
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: m3tOZlcLEnCuvi00MAvJNl2KfsIW+LhNrnvM+gQFXacYdu5wviGKLMoCcdiOR52flOIKNzc4pNpYjh0ob+xuTosNvf5TeeHsJoYcZEYmTRrPVLWzYwUs1eawhtu6qPWMipMLWDKPIewznt6HzB3JeBJfzkLsfyCuZLkKA8TFhA/luK9krUwBG9kZorQB4CFItUISGFAHKlI6eHajbbWXv70w2hzeq3u56hVojnKLSqBysvvXfVXZir5aS1gan2oOTCACytLdFVR5ubimDSMMFHa8bIUEao28umnmsIDU2XkLpaNl9j4NIT2W6Ic0RfNzah3uzp7O6xmsBf7hTkjicDoO+S9ANG+HXZdyXHkZC7hl2LLlM5bElWG7yEe/RSnPqumF7GR6yzcnF0DOA7BhdjCynneVT24fVQkXKnM+drDnKXuxlxNrz93+6k4rtMKxueIWl+Iqrv0TiGt29C8uph22EQbBlk0XcJZNvmYD00FS/66/URjQ9AAl/NU8ZK3cXkclC9Ix36slY2EOHGkoH3AxCG0K5QMuFtk5ILEkIoBEwiEAFhhpWx2FPFqtXxuyaCsZ8zV/ffodYqmUnCbogRs7XIPDRi/Gv8+UzasJsdLuqw33pJlTqE9vsbYxMKdQ4fI5MUPQq5OOj5ZifWz5F4cuMjVdg2oulKrNZC1IegZ1mtG8RCBRs9/Kg597bQLB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(366004)(396003)(136003)(346002)(451199015)(66556008)(66476007)(2906002)(30864003)(66946007)(6486002)(966005)(316002)(5660300002)(6916009)(86362001)(26005)(6506007)(8936002)(186003)(6512007)(478600001)(38100700002)(83380400001)(41300700001)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?azkJ/VViDB1TESZz0Q0PAKWE4pAgzLkl3/1kq5jCRcnuDJehore1cec/sPKX?=
 =?us-ascii?Q?C9L/DmYObT0Ggs7HqCBKB1oe9jnjzmrCOWmjFLVPjx2cZWxuLkwlqJVohsIy?=
 =?us-ascii?Q?kcJ2B5+leN6ODpNOmDBf4euEWpK5bUttlYps1lfocst86/h1pA6MaoRfLtbj?=
 =?us-ascii?Q?IYbdsVwTfbltlaefczHMy8B7L5AZDtwJ3Bn7dbkM/grV/LC/DeqAMz6LrhT2?=
 =?us-ascii?Q?YfahoDl2VbWOyf/JAsDjACcIDPYsclWB76UyMBJ/omFn3pAfGeE+KAD4dG1s?=
 =?us-ascii?Q?zf1lB1tKsjfbN34GG492qTN1PN3Hjh3TKPgqw9QnLnoj4NaJFOlgrQETsk2A?=
 =?us-ascii?Q?RdZcKClRjnceX9/w9X4AoVbVrdvph2AF8LHeJD4O2nMDhUJg5GvC44rPYLHo?=
 =?us-ascii?Q?GGWivHUR54u0xs8X6wT+9A/j/WIheH81jbWgmRl4f0DLI4CbRyG4uVoBGMkd?=
 =?us-ascii?Q?r8zhJEblIxcJhtk57Rr8+r2EprOsTlRF1ihTPHtY29qMli4K/cTPoI7h5Vjl?=
 =?us-ascii?Q?JtpXRLaARJpKwxjKuvu/AvSFxymd02Mu+FzjmSuhmq0iQ99uuuwNkBlrsqId?=
 =?us-ascii?Q?PSAua94FTJiMtNrN5U2eKi20zk9gnpk76BbuqKOY5qGOJQ8SDJ8FRU3B3Qb6?=
 =?us-ascii?Q?M0A/9JL6MmrWpDirruEbD+j2R134MJhxAhC+5yCGjPiMTnZKEfspyfRp0gBM?=
 =?us-ascii?Q?zf51tYq7yc+rAH5vfMPkqjVCBEZs/cXTnwMlhGNs7iZgOckWkgjzJ8mHo28u?=
 =?us-ascii?Q?hFaypVuZweiTHBdlTuJKBdV7JmW6ubddEVw9K1hfFRKjMncgldhPJvE9GJfp?=
 =?us-ascii?Q?q+hN6co/fACQy2F5B+4gB3bTkPJYQnrcURXDxRnWh8V5cTLiEaoZJYAVzBoa?=
 =?us-ascii?Q?cGTmD5A/36xJLrrNgqBkcB1xuz2vbwatapHd9olS44FOAP7GZCfzNhqNwyv5?=
 =?us-ascii?Q?N9/3jxTlY4Ymf1O1kFc+IQZv8DK981KT8dVRK3kqKeUR1txONX+Yv1Yl+wDM?=
 =?us-ascii?Q?X1daanmSWaYSJFB5X9Gfq7jp7Lnd+7BJk3S1EYDcO+b00CaAsrtzZ91nScw9?=
 =?us-ascii?Q?LssGKkKbqDRT/WKrwxjgClbIqHN69VqvWzW6X9XO9JeyeIaNhJz8Sai9eXo5?=
 =?us-ascii?Q?JAtvj/o6tt4ltWfOHoNxDF87gIpa6yaBCpZ06Y0XDBcAgjC7s5aMK17CPsAT?=
 =?us-ascii?Q?osCdr8zyjUOASiQQG6+9cjOFEGJcCbJIPnFSoy7FQdugiPJOkN3hhYaP2VmV?=
 =?us-ascii?Q?TXfaAk582uEj56e2w7lYNrM5RkLTkD2UJyc8UR6tRvufp5YKeyMNyuAssfaQ?=
 =?us-ascii?Q?KfzskwA13vf8XZdgqHV1mwLDFnjhCsaVU2Hcrt/6WcGGTU66j1Nf67CrFqv+?=
 =?us-ascii?Q?Qim38WmQb3CCrhQYNf04gXIXof97tEua1uknvwGVLbFmUF5LDQuz3ydlEY3D?=
 =?us-ascii?Q?fXpxPnv+Ukzgpm9xnc6P0FTy6kyDTiAxmzcBtEOa3m3ZK/9KaLNRnIB/RJMh?=
 =?us-ascii?Q?94Y0pKhR/J15qTu+nD3PcttpNNxuLMXsW/KAL9q9FlqeYynONK/geTSDucHu?=
 =?us-ascii?Q?POPWwm2MHPPOkEJ6zRMOjfYAg6pX2AJxuEuGFHT24UDs+hAiHIm6LJmqkZmO?=
 =?us-ascii?Q?fA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d9cc5ee2-af5c-4ac7-5c0b-08dad6e34775
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2022 17:08:07.2858 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0yG2oodiD4bWzQmLLA9pxAQseadd1F7RzurqWjjJJPTiBEKJJ2Jq4fGs9SaZRDA6zsg3FyOiIeFtUIHa7LsbMncRfmPqTKQctFN8MZrcs50=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7118
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Check_full_IP_version_when_applying_hw_steering_se?=
 =?utf-8?q?maphore?=
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

On Sat, Dec 03, 2022 at 08:38:41AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/mtl: Check full IP version when applying hw steering semaphore
> URL   : https://patchwork.freedesktop.org/series/111595/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12463_full -> Patchwork_111595v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-gt-next.  Thanks Rodrigo for the review.


Matt

> 
>   
> 
> Participating hosts (14 -> 11)
> ------------------------------
> 
>   Missing    (3): shard-tglu-9 shard-tglu-10 shard-tglu 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_111595v1_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a4:
>     - {shard-dg1}:        NOTRUN -> [FAIL][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-dg1-18/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a4.html
> 
>   * {igt@v3d/v3d_perfmon@get-values-valid-perfmon}:
>     - {shard-dg1}:        NOTRUN -> [SKIP][2]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-dg1-15/igt@v3d/v3d_perfmon@get-values-valid-perfmon.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_12463_full and Patchwork_111595v1_full:
> 
> ### New IGT tests (1) ###
> 
>   * igt@kms_flip_tiling:
>     - Statuses :
>     - Exec time: [None] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_111595v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglb:         [PASS][3] -> [FAIL][4] ([i915#6268])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb5/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#4525])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb5/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#2842])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][9] ([i915#2842])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][10] -> [SKIP][11] ([i915#2190])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-tglb5/igt@gem_huc_copy@huc-copy.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>     - shard-skl:          [PASS][12] -> [WARN][13] ([i915#1804])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-skl9/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-skl6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
> 
>   * igt@i915_selftest@live@execlists:
>     - shard-skl:          [PASS][14] -> [INCOMPLETE][15] ([i915#7156])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-skl4/igt@i915_selftest@live@execlists.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-skl10/igt@i915_selftest@live@execlists.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
>     - shard-skl:          NOTRUN -> [SKIP][16] ([fdo#109271]) +70 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-skl1/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
>     - shard-tglb:         NOTRUN -> [SKIP][17] ([fdo#111615])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][18] ([fdo#111615] / [i915#3689])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_ccs@pipe-a-missing-ccs-buffer-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_rc_ccs_cc:
>     - shard-tglb:         NOTRUN -> [SKIP][19] ([i915#6095])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][20] ([i915#3689] / [i915#6095])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][21] ([i915#3689]) +1 similar issue
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-apl1/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@dp-edid-change-during-suspend:
>     - shard-skl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-skl4/igt@kms_chamelium@dp-edid-change-during-suspend.html
>     - shard-tglb:         NOTRUN -> [SKIP][24] ([fdo#109284] / [fdo#111827])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_chamelium@dp-edid-change-during-suspend.html
> 
>   * igt@kms_color@legacy-gamma:
>     - shard-skl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#3546]) +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-skl1/igt@kms_color@legacy-gamma.html
> 
>   * igt@kms_color_chamelium@degamma:
>     - shard-apl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-apl1/igt@kms_color_chamelium@degamma.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1:
>     - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-apl7/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-apl8/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html
> 
>   * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
>     - shard-tglb:         NOTRUN -> [SKIP][29] ([fdo#109274] / [fdo#111825] / [i915#3637])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][30] ([i915#2587] / [i915#2672]) +1 similar issue
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][31] ([i915#3555])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][32] ([i915#2672]) +5 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][33] ([i915#2672] / [i915#3555])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][34] ([fdo#109280] / [fdo#111825])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-stridechange:
>     - shard-tglb:         NOTRUN -> [SKIP][35] ([i915#6497]) +1 similar issue
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt:
>     - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271]) +5 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-apl1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-tglb:         NOTRUN -> [SKIP][37] ([i915#3555])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1:
>     - shard-iclb:         [PASS][38] -> [SKIP][39] ([i915#5176]) +2 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-iclb8/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-skl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#658])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-skl1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb7/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#658])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-apl1/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr@psr2_sprite_blt:
>     - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109441])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-tglb:         NOTRUN -> [SKIP][45] ([fdo#111615] / [i915#5289])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@sysfs_clients@create:
>     - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#2994])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-skl1/igt@sysfs_clients@create.html
> 
>   * igt@sysfs_clients@fair-7:
>     - shard-apl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#2994])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-apl1/igt@sysfs_clients@fair-7.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-tglb:         NOTRUN -> [SKIP][48] ([i915#2994])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@sysfs_clients@sema-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-iclb:         [SKIP][49] ([i915#4525]) -> [PASS][50] +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - {shard-rkl}:        [FAIL][51] ([i915#2842]) -> [PASS][52]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-apl:          [DMESG-WARN][53] ([i915#5566] / [i915#716]) -> [PASS][54]
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-apl3/igt@gen9_exec_parse@allowed-single.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-apl1/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_rps@engine-order:
>     - shard-apl:          [FAIL][55] ([i915#6537]) -> [PASS][56]
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-apl1/igt@i915_pm_rps@engine-order.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-apl6/igt@i915_pm_rps@engine-order.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-skl:          [FAIL][57] ([i915#7084]) -> [PASS][58]
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-skl7/igt@i915_pm_sseu@full-enable.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-skl10/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-tglb:         [DMESG-WARN][59] ([i915#5591]) -> [PASS][60]
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-tglb3/igt@i915_selftest@live@hangcheck.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb7/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1:
>     - shard-tglb:         [INCOMPLETE][61] ([i915#2411]) -> [PASS][62]
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-tglb5/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb6/igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>     - shard-apl:          [FAIL][63] ([i915#2346]) -> [PASS][64]
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-apl8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@varying-size:
>     - shard-iclb:         [FAIL][65] ([i915#2346]) -> [PASS][66] +1 similar issue
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [FAIL][67] ([i915#79]) -> [PASS][68]
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check@c-edp1:
>     - shard-skl:          [FAIL][69] ([i915#2122]) -> [PASS][70] +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-skl9/igt@kms_flip@plain-flip-ts-check@c-edp1.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-skl6/igt@kms_flip@plain-flip-ts-check@c-edp1.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         [SKIP][71] ([fdo#109441]) -> [PASS][72] +4 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-iclb8/igt@kms_psr@psr2_no_drrs.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-tglb:         [SKIP][73] ([i915#5519]) -> [PASS][74]
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-tglb6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-tglb5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>     - shard-iclb:         [SKIP][75] ([i915#5519]) -> [PASS][76]
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-iclb7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@bcs0:
>     - shard-skl:          [FAIL][77] ([i915#1731]) -> [PASS][78]
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-skl7/igt@sysfs_heartbeat_interval@mixed@bcs0.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-skl10/igt@sysfs_heartbeat_interval@mixed@bcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1:
>     - shard-skl:          [FAIL][79] ([i915#4573]) -> [DMESG-FAIL][80] ([IGT#6])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-skl7/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-skl1/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-iclb:         [SKIP][81] ([i915#658]) -> [SKIP][82] ([i915#2920])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-iclb8/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-iclb:         [SKIP][83] ([i915#2920]) -> [SKIP][84] ([i915#658]) +1 similar issue
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][85] ([i915#2920]) -> [SKIP][86] ([fdo#111068] / [i915#658])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][87], [FAIL][88], [FAIL][89]) ([fdo#109271] / [i915#3002] / [i915#4312]) -> ([FAIL][90], [FAIL][91], [FAIL][92]) ([i915#3002] / [i915#4312])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-apl1/igt@runner@aborted.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-apl1/igt@runner@aborted.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12463/shard-apl3/igt@runner@aborted.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-apl8/igt@runner@aborted.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-apl8/igt@runner@aborted.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/shard-apl7/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
>   [i915#7084]: https://gitlab.freedesktop.org/drm/intel/issues/7084
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7156]: https://gitlab.freedesktop.org/drm/intel/issues/7156
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12463 -> Patchwork_111595v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12463: b36215855627efb694b50c6cc0ba47b0e78d5aa5 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7080: 14721e0783757dfa44ca2677851c3ba508b09682 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_111595v1: b36215855627efb694b50c6cc0ba47b0e78d5aa5 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111595v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
