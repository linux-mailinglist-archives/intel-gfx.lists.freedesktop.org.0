Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D16A7A2329
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 18:02:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 790E110E64A;
	Fri, 15 Sep 2023 16:02:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5181510E64B
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 16:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694793752; x=1726329752;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=pGKDGwP3h2wnH171TDZtmLQvQcq/VP0APhOXOmVQLxw=;
 b=NYO8gZ2EDHnRSMCLxl7W9H7QL5nHV8QduUAR1mGu38b1M7QhX9rQDMzD
 j0byFqVBq3zrocy/DqD2JI1bknUpWTFzPGF7VzjPgGY8XXoKKLxs+qVsX
 FWDqUlyQfha9w6thEYByqY4M7T1tEcE9WNr8Ll+TR7A0ssljYolaG6oBs
 U6An/jFMVXp7z0eRwT+JanlRCxLViMLQlM0uyOrU4dRD6WZEbVGDgvUVy
 X5tNzthcOA+uQqvRjfRikoKD0xAFYHT8wEfrfMEbaa823S2DG/54Ui+PH
 H0EMvtzTyGgCQ0Bz0nXC6z0JZ8idWzvnKlLOA4JHdvOHKb9ssFCAmb/83 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="443342786"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="443342786"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 09:02:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="918697806"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="918697806"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Sep 2023 09:02:25 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 09:02:25 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 15 Sep 2023 09:02:25 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 15 Sep 2023 09:02:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OsxThObdbwtfiXlsMx5RVK4XgGlJvkZKUAf5omhlgsjVdxsOGu3tvCDyLqjAa6a4V5y5KFTGAu8Lwuo4OsuritSN9G30FnqV81+TEsJsN8H7rNG2lRHLdgK/+vd4K4h2UrM7WitxJ4n6b2LMf2jfDJh0HaqVwV1r1WgtVqXbzTbFzfACMLfkIzBIV0wMZVqYwSOJH4QFKPHYN7rXhThZPWB5SmOF4NmZDsPuyrRSsks1m78ecxRqXEdZel4rP16jNjAH1gwgBYuoVYwXEp33xJc6yZlR8i7xqxtWcxmj5TKDFn2y7KFnqYmMqTivqHeWrgL5EHDTL6kC0JL6Njnt1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AAAnG6+W53Yr2B2T50Ny6kSI36hsm2uZ/sqaVvE0ixA=;
 b=R3ZzWd1tG6ReXkFUlJWcWwsxPeM8CaPDtN0Ksdjnw6/L6xbfLSB23JpA9ggF6G/UV+7UkiWaahehXyFrAcuI8MoqTbEvEbY6vdGxqt3avQbT0tlN9ILngHHr4p2nBS/I70AparP2KFzULimIARZAPAWQ0fGuX//gKqBeC2CGeF1ucnbzA1W35IEcAXOcGN3NQ2Lmbe2akKP4tqZva0iDRVEouIXduipseUOXA2vw6KhO72Rx8MocuvUCXLKkUGvvAbk4sa2yXPI+1r2FkiNqgw1IW8yLoYvdJ+ot/AAirop1v9+LNP1nXqCdTSB/deOy2hFoXuSRVWCgGbhq+yUwhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DS0PR11MB7652.namprd11.prod.outlook.com (2603:10b6:8:14e::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6792.21; Fri, 15 Sep 2023 16:02:22 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::a51e:7713:dd10:97da]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::a51e:7713:dd10:97da%3]) with mapi id 15.20.6792.021; Fri, 15 Sep 2023
 16:02:22 +0000
Date: Fri, 15 Sep 2023 09:02:05 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <ZQR//dkXOLpVcdZC@unerlige-ril>
References: <20230912212247.1828681-1-umesh.nerlige.ramappa@intel.com>
 <169466511430.29164.10915444125829854058@emeril.freedesktop.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <169466511430.29164.10915444125829854058@emeril.freedesktop.org>
X-ClientProxiedBy: MWH0EPF00056D17.namprd21.prod.outlook.com
 (2603:10b6:30f:fff2:0:1:0:1b) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|DS0PR11MB7652:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ffe5672-6234-48d6-925e-08dbb60525a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nFNerAHOR4Ev3AMtsOSEH+6MxZxbTqh1YDqFUEmhlfXRol2etSDm9lToZuBPX4j4FNNq3gFVIa7+P/Hejcle3t8hdSw7dVApGhHJjyFyRMrnvFeUFTFFH0xaOd84YT5M+Wd9bXe1p8o7g6+nKuzLziVkpPwyaWw16bXC8Ef/6LxziFUVwIP48T3/cO+5FNhEZ0C5kkTcKc3qOBRxZfkZIX7mHhpluH0S8i6TyBK6pe1GCZJ17vkykMOhPJeW2czlyJOJbPBwROQ9u5MCndR7RjW75OAC3RqkOE51pTRzC3GomcyYpf6qyDbqiwBx9iR5NObWspT9TApigVj0GDKSFnNRtQ1M2fRechAGFy/ZRbS4Py6dnbpL92hTiJmy4FkR6g9Skr/Re+l2+ckTxoGajY1yLBwK61YuTIpjMJOTjAcq3wBFxT9ofsqNj7F7H/CrHXepowpBPsN1fP7dBZ1JGMFxM/dp07jtKE0oURLw8fa1mqrsl8sXcviDI0JAstvUD43OrYbZzQDaMq6ev0cVZ11pmBGCg3WawW1e23QtMDZJeqkI9z5IBMz6AXTt7uL5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(366004)(136003)(396003)(39860400002)(346002)(376002)(1800799009)(186009)(451199024)(6666004)(6506007)(6486002)(38100700002)(82960400001)(86362001)(26005)(2906002)(6512007)(966005)(9686003)(478600001)(83380400001)(5660300002)(41300700001)(6916009)(8936002)(33716001)(316002)(66556008)(66476007)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cVoydXpOL3o5ZHhieFVZQUV6bUFHWHZSZkRJYXVrcjYyVDdzMzR0MTRoNDdi?=
 =?utf-8?B?dmdjTDFnUXpUTVFzdnovblYrVGRFVkhaV05GRGZ1bEo2Q3ZnT1ovaFpnVWl3?=
 =?utf-8?B?bnRySTRSVUc5eUlEaFlHRmgxVGxMR2VpL0ZxYXYxRU5SeHM1UnZNYW9DaXA3?=
 =?utf-8?B?QndBUlNGbXI3K2dzMXN0cnB6OG1ualhMb2ZOM3hzUUtRSFBFNlZmZXNjSlN6?=
 =?utf-8?B?ZExlcEV0V0lDUXRCTHpOWHdHeXdkUmlncTRzeXVOY3FJbitPK3UrNlF0L3pa?=
 =?utf-8?B?RmtHaGdQWExneGljL2ZxdWFGWkZ2TVd0RDF6SHFJRDh5QlJSa3JiWnNFUGJ3?=
 =?utf-8?B?d2J2UCtLRnl1bFIxSU1hQVFFWENCRldFWGpXdTlRaVFmaUNEbWJGZnB3NjJt?=
 =?utf-8?B?K3VBRHBRRU5MWStvUzJ1SDZNbUp5RFkxNlFqTlNsQ2N2a1JwZWpHMDVpVXR1?=
 =?utf-8?B?bFYvVUE1M1N2WkVpMHF3V243dGdMc0JGaFBRVWtHVThTRThpTzZabnFNSGVI?=
 =?utf-8?B?b0licWI1ZFVmUTc1ZVQyOXJvbmtvVmNLMFhIK2lQQ2w5OGN5emZ3Yis5TXBO?=
 =?utf-8?B?N1lJSndlMVpNd0RSa3dwK3luUHpKVVZ0VDhQbFk2VnFCYmZGempuNDdzVmRN?=
 =?utf-8?B?UzNKT1dRNWtpYzFKN3VXTEV2c0R5aHJSZWtWaEhTQVBldER6czZCTTZlTEEx?=
 =?utf-8?B?WFRlbW9yTXZKT1VmalZkL1NJSVova3RLV0g5L3IxcUFaU0pmeDNTelF4SWlv?=
 =?utf-8?B?UWdkaVhmSExPdGNiM213ZEdmNWFYOEI1YUhpWS93MiszRUFNRm1YRU4yN3Nw?=
 =?utf-8?B?cjhYWUJKMzBtVFpXYUlSa1Z5SHNtTjNoT2svWmNLM2IwQkJaU3RHWFVMYk5N?=
 =?utf-8?B?SkpHTUhhUUJkRjkwV2xWUm1sOGkrQlRzZ2N4ZTgyZlNJaksrZ3I4K3FyWUtO?=
 =?utf-8?B?c2UxRGRrcEgwa29JVkE2NkgrUDJYTzh2Y3RydU5tMlBGeDhKZm1Wa202cVNI?=
 =?utf-8?B?N1pqaUZGNHRPdlh5RzVKREhxUzMrbVBWeUNMQzVZMEZyeU13ZUFVWHVJRnpp?=
 =?utf-8?B?Wng1VnNpWWNRUVZJVS9BdHVuTk9nL1Q5enBBUktGTHJXL0tvL240c29aQnlm?=
 =?utf-8?B?ckZKUCsvS3pjWVhQemhySkFOSmlkL1dqZnZNUzhQbVNnTkpyS1ZnZzFVZXhw?=
 =?utf-8?B?c0pQeEtRcWJUVFVKWWt6aHBzZzRXaDJ4Z2xIZzMwMmdyOEdtbStwUjBRclJk?=
 =?utf-8?B?MWNHSFVoRlg4ZjhwWnpTcG5mZEVUbkxDc1FQRHY1VU5HNEo1QnlESG5WSVJZ?=
 =?utf-8?B?bi9jRU1YUUpYOGc2d091dEdGN2dEK1E1NktWMGpHZndkdGJsTUplSVVSdm1l?=
 =?utf-8?B?UTZlUGNGdkJ2cFBsRXpOM0xESHN0eTVBdHJtUFA0VWRXdnprK3RVY21LS0RI?=
 =?utf-8?B?UFkrdXFiMXZPZ21BempWNGlNK2E2Lzc1NEtLNmlqcjJEUmxyWVRFVjQ4cGJq?=
 =?utf-8?B?QkZURjdydXBPelFrSXFpYThwNi9HWFBLZ0t1Zkdab2VWRXZmSG5XYjRaU25N?=
 =?utf-8?B?Vk1Fa2xqR2YxeGFWSDRLcG1NSEJnRmN6SGx0bm9MTUNtOGpBRGl0TU1hSjB5?=
 =?utf-8?B?UTI0UWNDK3hXRG53Qko5ZHY3Ujdzc2VERXd0VWtQaVZDSWFITG8zWmdQdDN3?=
 =?utf-8?B?L2ptZXUwaVdVT2tFNXp0MSticzY2bTF6WmlMNVk1dlMwanBUR1UyckFHbmxm?=
 =?utf-8?B?RFNod2dacHlLZGpXbHRrTGFtaC85MjlLVFRIcUxTWnVueXJTcHJzV09JVWhw?=
 =?utf-8?B?bkZWUER1cEpSOVdhdVQxcWYvSVFrNHFDRnF3bXZuUHVhdUR4eUlwQ2RIbmFl?=
 =?utf-8?B?OWZzRHhrSGR6SURlNlVLVXcxREN3T2VPR1ZocGpoUnhlVVJJUnl4QUh2b0RS?=
 =?utf-8?B?RCtEWkhQVmIwQk1NT0xnOFI3WUlQL3VuT1B2K2ZOdkJLN1ZaeVpqNjVWc3Rm?=
 =?utf-8?B?b3BtVnYxeXFKdXRhNkJ6NzdiK1dTMXl1QUhFNUF3SVdydE9WbCtRWUFaNVJW?=
 =?utf-8?B?eEM3TmNWZno3S1dZY2RrWEJkZVhtU2R2NlJtZHNGR0lBaDlrRFJHMHc3eEox?=
 =?utf-8?B?MUpoZ1FTRTdRbWZUMm82aSswdmRkR2V0K3dwYTBtWDdXQnNsQXRNbE8rQXRH?=
 =?utf-8?Q?nexiwsaiqc37NGiw6fa5f20=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ffe5672-6234-48d6-925e-08dbb60525a0
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2023 16:02:22.6955 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eP+fHb6eVLPogaIrPWKW9P69foZY1W8Qw2SUoGGRYPKa3tgdu1kebfVyVP0y8XK+k6qZrVQ5HSydxCBAj+t8zNrI1rCnVwL+/N6XiEuaxAI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7652
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5/pmu=3A_Move_execlist_stats_initialization_to_execlist_specifi?=
 =?utf-8?q?c_setup_=28rev2=29?=
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

On Thu, Sep 14, 2023 at 04:18:34AM +0000, Patchwork wrote:
>   Patch Details
>
>Series:  i915/pmu: Move execlist stats initialization to execlist specific setup
>         (rev2)
>URL:     [1]https://patchwork.freedesktop.org/series/123616/
>State:   failure
>Details: [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123616v2/index.html
>
>     CI Bug Log - changes from CI_DRM_13627_full -> Patchwork_123616v2_full
>
>Summary
>
>   FAILURE
>
>   Serious unknown changes coming with Patchwork_123616v2_full absolutely
>   need to be
>   verified manually.
>
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_123616v2_full, please notify your bug team
>   (lgci.bug.filing@intel.com) to allow them
>   to document this new failure mode, which will reduce false positives in
>   CI.
>
>Participating hosts (9 -> 10)
>
>   Additional (1): shard-tglu0
>
>Possible new issues
>
>   Here are the unknown changes that may have been introduced in
>   Patchwork_123616v2_full:
>
>  IGT changes
>
>    Possible regressions
>
>     * igt@perf_pmu@rc6-all-gts:
>
>          * shard-mtlp: NOTRUN -> [3]ABORT

This is an existing bug and not related to this patch:

https://patchwork.freedesktop.org/series/123616/#rev2

Thanks,
Umesh
>
>    Suppressed
>
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
>
>     * {igt@kms_feature_discovery@display-4x}:
>
>          * shard-mtlp: NOTRUN -> [4]SKIP
>
>New tests
>
>   New tests have been introduced between CI_DRM_13627_full and
>   Patchwork_123616v2_full:
>
>  New IGT tests (4)
>
>     * igt@kms_atomic_transition@plane-all-transition-nonblocking@pipe-a-hdmi-a-4:
>
>          * Statuses : 1 pass(s)
>          * Exec time: [0.0] s
>
>     * igt@kms_atomic_transition@plane-all-transition-nonblocking@pipe-b-hdmi-a-4:
>
>          * Statuses : 1 pass(s)
>          * Exec time: [0.0] s
>
>     * igt@kms_cursor_crc@cursor-onscreen-128x128@pipe-a-hdmi-a-4:
>
>          * Statuses : 1 pass(s)
>          * Exec time: [0.0] s
>
>     * igt@kms_cursor_crc@cursor-onscreen-128x128@pipe-d-hdmi-a-4:
>
>          * Statuses : 1 pass(s)
>          * Exec time: [0.0] s
>
>Known issues
>
...
