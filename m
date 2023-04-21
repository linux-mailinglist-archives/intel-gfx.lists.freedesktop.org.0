Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 625F96EAE18
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 17:35:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2BD710E19F;
	Fri, 21 Apr 2023 15:35:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2559110E20C
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 15:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682091298; x=1713627298;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ruFs8lLC4jZK+cPZee1boJoyuc4/GHmA4FeesfGkJjs=;
 b=aDFhrZL4bf0yrcoOwlEHNDndFCBjD8lHkQyDcTpKLVR2zya8XNKSuY94
 278HE6AlkPXAF/84sAn2iwQvBgvWF0Icb/tK534Mjwj5cN1fZ2yiHS5Zp
 7Y5fUtoLqaiXlxTiPvlKucUMvrGgvIYHZfdPQ9leUcyMhKADH1kQGHMy5
 OAsyFjD1051DeIGDztGslmX6HEDYHg9Xj/lI114NzTUNb+rOGq7pZAQdw
 k72f09zQ99HL0mQ1uks5Li2FRsOhLqcCGfY3qUU/7N8VQH6Rm0xDGdE7j
 M7Q1LxU+MVFnIb7Dccbqr72LFPSRGNiJ/WXzRgP5YJnPAF+6/FjeNLrpy g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="347919087"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="347919087"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 08:34:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="1021960890"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="1021960890"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 21 Apr 2023 08:34:56 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 21 Apr 2023 08:34:56 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 21 Apr 2023 08:34:56 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 21 Apr 2023 08:34:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NO3/b05pm/YFBD8zh1lx/F2Rd/le9kreJaqqkNFkEQqOrIyPXAHab2CSyjqOPLjH3+d+snVOuNESCLTZ5oZsBKjlfiCbkG835HFhF4j+L9jQSGaAdXSdVkIrwCpwumSGeJF7quSUqEY1MCIWYDvC2jpquA013NfsATbOtXOQcsOE702mW0iRh6OIQ4ERfB7smWRxHKak6jUEGX8g+aXDZF+a4GmTJQwd52zEBP9MU0Qe0gXiYbzhJZpbdnKu214X1reDnHAX1VZyw5Iz7cYiNf1FCCmqBwRbnEBOYfBX1FJANQQf9snsY1Pee+ePFyUna4ZnrRdVjFKbceZrlWRMIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cvEbtLCLkX03PcmM9DDxDfbRJ6IOUERAs17sMRkbWzA=;
 b=cVZTp53dl4nojoQKqmYWypnfG8XIZmniqEdtlJ45xokfG2UCsJ2cKZBXwyD6JY5YEo8yiQGehkzE2Je6iPkr4mK9dZGMQgUYzpLLD61Au1PLajCyN14gRqY/yGypn753+ehDiCYxl+7wyJkS2/g1uEbJ+NePKZXW/MJOOKyG92VwYvo+xjpADN+h08secoSZCOlCy0oWTFVJXv2nazB3kdSXvr4C98vY/V1OmTMHiGwFqGsFHky5swBNNvaJrS4BA/8+YXu13MkA4GwQze3IpBOlC8flcJFzxT6nV0vzWd340FLaoTxYswaL+yv9dTyyxIbZfjyPRAK2orztwtMFAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH0PR11MB5903.namprd11.prod.outlook.com (2603:10b6:510:144::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Fri, 21 Apr
 2023 15:34:52 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0%8]) with mapi id 15.20.6298.030; Fri, 21 Apr 2023
 15:34:52 +0000
Date: Fri, 21 Apr 2023 08:34:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20230421153448.GM4085390@mdroper-desk1.amr.corp.intel.com>
References: <20230420102349.15302-1-nirmoy.das@intel.com>
 <168200215691.779.4335383966711194411@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <168200215691.779.4335383966711194411@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR05CA0101.namprd05.prod.outlook.com
 (2603:10b6:a03:334::16) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH0PR11MB5903:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c657d12-22da-4081-4382-08db427df2e5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Koy2jASTFFL0NOs5nIChWgSmfwCLbjA6alj8G+yPwwMBClmqKKYoQeTxpBPpROvGq4IPRdjxhNQi6qRuSr6fB/vhzFE5kabbJnOkkzQbnBoAHffe9dt6krCoe2k+zsz8iwFdDboByKJX872gICTbNASemdNDdFYNmu+LGlP0KN01feh+2KIFYGjzzOv/uFbDkxCsABPbXEaMgh2Wqtzfvk3VZ31XZ4eQclVGvRJ3oqb9StaHCp/JwJYlGFZ6IysVfkSor1WSm/cxAxso9RS5V0B9mFREbErU4DdmQgZEkFdln2UQCm7JZG1YD4XAKqxpxcV1bxlIsd9BibWVTWw5wcl1vXqzLP40i3GSBkYDMqiBlGMqL9vR0bBFMC4IgWY58DF25mztWRRy3bhmgCeN6ByHVSYsVdj+UKM0lDDG9Znn8v28BO3IuvPLsqYehycgdA1VoTwyBPs7RF16PDgFtZnQabKgILi+kspuR5aQ2jcKonCWXKdvB3uqWxTjhEYyUAluuGy49ZviAoNOED9EqDPty61SqMxyCIQECTTLgOXw+7s8OaGElsrQ5VU5iiiP
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(366004)(136003)(376002)(346002)(451199021)(478600001)(6666004)(38100700002)(8936002)(316002)(82960400001)(41300700001)(66476007)(66946007)(6916009)(66556008)(30864003)(2906002)(1076003)(6512007)(83380400001)(26005)(4326008)(6506007)(107886003)(33656002)(186003)(86362001)(966005)(5660300002)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?REevxlp2UZIYMvQSWqJmqYKQLziJfIW4mQh6qGCtkh2j/H+lVyOO3e5S/hyu?=
 =?us-ascii?Q?I4efsWd32XOYFaPcT0+/RFAhPXwqQ33FPr2ephftwVESkygTKFNsL+8idT6V?=
 =?us-ascii?Q?fzso3vZ1fPVtkGasuKGCLT2ApzCCDw3cNJN8whBkSA0G8hlv9Rl0JLbHj4n5?=
 =?us-ascii?Q?c6niM/xMNQBJ1UvohSiPihH9QWxGN2faTTS3msnq0ar3eOttHWyM16JfG7yq?=
 =?us-ascii?Q?kHpJEUnDOwGA3MbyBG1ub3yKAyR2NO37ct7p+raF2hXWl/Xl0ew98SHi1YpL?=
 =?us-ascii?Q?jGbhzZEKLZZmlfZY12mmo+H3l4/lnGeKIYckvfIU8/gV41jemI+o30E+4+RA?=
 =?us-ascii?Q?e92WjTO+ii8JBybRhNzGjctIBYlX30o8myuF5meitLBXB7DE7Cc1C6msT86j?=
 =?us-ascii?Q?ABmJjBch8eEZn0btZfy6OSUJitwhAmUN6/erHKVoiLiUYIW+TktyulCk3bic?=
 =?us-ascii?Q?I0aFW9jzH7JJEfSfsjt1gBVs2/XIZnaWsm3uDHI4IkOgcFe7oyvTkLDRJxaq?=
 =?us-ascii?Q?Zlrb6Mozm/4x6xSBaEXlnxdj7lI89jVj2sPMLgsy5zpptCXp20sHTa2QwvNi?=
 =?us-ascii?Q?sUHX3SjWiks+eDS41QgxzvKn7vlCHnF5CmgVyDifF+LuD3wniQMGzyNtviqH?=
 =?us-ascii?Q?4OZD9V7e0I/wgWLed8dFV5jhS6qX7JtXeQqQYQ8KrlnL99DdAUSyVz4ALc8e?=
 =?us-ascii?Q?FLxscVMDja4Z/HsiLV0yjbZ3AQzTq5GPsP92K1+vexOLcL0zshDdjkNyLCD9?=
 =?us-ascii?Q?Jl1vYwKaSM8WaVglKD/eEvNov8SqYbEBHYKL4N4cA5L1ZTYk1Mabqad+UYM3?=
 =?us-ascii?Q?5JJO0DFXXbXeMc9soPa0MBNDHhTLvfl+Vpf5gQ0NmKR4lVXPex/Z2/fg8vNf?=
 =?us-ascii?Q?rqpv5bKOGZn/zJn4+/BEWpGIfqOJq/TKA3GRw1KBr7n0LqRTm19UjEflHQbG?=
 =?us-ascii?Q?Sq2SXk9CAKqwQBQsuW0B67rW8ba074kE8DGA73/0DaClp66ui1B5LtUPkY+s?=
 =?us-ascii?Q?KFIut2ygTx7FtPmMc1FtRynEt+8Hl2dRH/wCKMa9BWYOV2PiBO4YJwo/+Ps0?=
 =?us-ascii?Q?RS2vjzwNkyvPvGvSRaU+cFS7S5Duriv/gwnyan5G13auc/jfPEfoG7N9+1l4?=
 =?us-ascii?Q?cMR/oxoJWQquqHLtu4IvJmz95JQxYf/LWJc8v5fqtWTtP42ZWOjdA00GQxRw?=
 =?us-ascii?Q?O32EAoNDS2XF28fYfXroJUC8URVfYwXadBlZH5VypHBbpxb4SsVGCI3jMSYG?=
 =?us-ascii?Q?7dZ/tpZHIkJ0ORiWfwPL3nxOMikLspSbGAAe0jW4TkoLKOfWZQLoQ5B33sdx?=
 =?us-ascii?Q?xzx9j6EFb45jAqr+oHj6VYt6Bq0EgrDKSip4360CiTnOIQg/jWsvvD3T789E?=
 =?us-ascii?Q?RyI4L/KQL2RkTUvzfnYypKuyo7rBDPhcSEGofobsux3+X/1iHf9r00E2COFD?=
 =?us-ascii?Q?iJWSg2PkT4ryqfxGDoO4aPeXOKyvzOK0iqrxPZXiuhjvTZ42GoQFzT5phQ9M?=
 =?us-ascii?Q?lB8lk7Le+MBylfilpOP/RVYRlUBtPsb4gk5nFeidIfOFcS1z8FnAiv59m54O?=
 =?us-ascii?Q?/aziglC58a7sB7vgPzGK6CqFDxgX00kcoTOmtv3/bWtfa2wzYNty4bSs/66z?=
 =?us-ascii?Q?cQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c657d12-22da-4081-4382-08db427df2e5
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2023 15:34:52.0085 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Uy9sqRaQrcQfvkYdZd7MQLjSP2KQ+Am9z3FZ29LftjWPcudzhv5OVFxHpn0hy8CYahUhpqCSOvnzs8fZiRT8PIzS03HZJ8vl0MkF7OmaDnc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5903
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogIHN1Y2Nlc3MgZm9yIGRy?=
 =?utf-8?q?m/i915/mtl=3A_Set_has=5Fllc=3D0?=
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
Cc: Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 20, 2023 at 02:49:16PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/mtl: Set has_llc=0
> URL   : https://patchwork.freedesktop.org/series/116747/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13033_full -> Patchwork_116747v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**

Applied to drm-intel-gt-next.  Thanks for the patch and reviews.


Matt

> 
>   No regressions found.
> 
>   
> 
> Participating hosts (7 -> 7)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_116747v1_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
>     - {shard-rkl}:        [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13033/shard-rkl-2/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/shard-rkl-6/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_116747v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-snb:          [PASS][3] -> [DMESG-WARN][4] ([i915#5090])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13033/shard-snb1/igt@i915_suspend@debugfs-reader.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/shard-snb5/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#79])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13033/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
>     - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#1188])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13033/shard-apl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/shard-apl4/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-b-vga-1:
>     - shard-snb:          NOTRUN -> [SKIP][9] ([fdo#109271]) +34 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/shard-snb5/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-b-vga-1.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-apl:          NOTRUN -> [SKIP][10] ([fdo#109271]) +18 similar issues
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/shard-apl6/igt@kms_psr@psr2_primary_page_flip.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
>     - {shard-rkl}:        [FAIL][11] ([i915#7742]) -> [PASS][12]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13033/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-apl:          [FAIL][13] ([i915#2842]) -> [PASS][14]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13033/shard-apl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/shard-apl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-apl:          [ABORT][15] ([i915#5566]) -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13033/shard-apl7/igt@gen9_exec_parse@allowed-single.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/shard-apl6/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - {shard-tglu}:       [SKIP][17] ([i915#4281]) -> [PASS][18]
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13033/shard-tglu-6/igt@i915_pm_dc@dc9-dpms.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/shard-tglu-4/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
>     - {shard-dg1}:        [SKIP][19] ([i915#1937]) -> [PASS][20]
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13033/shard-dg1-18/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/shard-dg1-14/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-apl:          [FAIL][21] ([i915#2346]) -> [PASS][22]
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13033/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>     - shard-glk:          [FAIL][23] ([i915#2346]) -> [PASS][24]
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13033/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:
>     - shard-glk:          [FAIL][25] ([i915#79]) -> [PASS][26] +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13033/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
> 
>   * igt@kms_plane_scaling@i915-max-src-size@pipe-a-hdmi-a-2:
>     - {shard-rkl}:        [FAIL][27] ([i915#8292]) -> [PASS][28]
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13033/shard-rkl-1/igt@kms_plane_scaling@i915-max-src-size@pipe-a-hdmi-a-2.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/shard-rkl-4/igt@kms_plane_scaling@i915-max-src-size@pipe-a-hdmi-a-2.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
>   [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#5090]: https://gitlab.freedesktop.org/drm/intel/issues/5090
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
>   [i915#6493]: https://gitlab.freedesktop.org/drm/intel/issues/6493
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
>   [i915#8211]: https://gitlab.freedesktop.org/drm/intel/issues/8211
>   [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8308]: https://gitlab.freedesktop.org/drm/intel/issues/8308
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13033 -> Patchwork_116747v1
> 
>   CI-20190529: 20190529
>   CI_DRM_13033: 9e075fd5e9f743c09bf3c220ffda0e32d868667b @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7261: 364d0b3291cba6e99deda07499c876bb2b6c1c1d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_116747v1: 9e075fd5e9f743c09bf3c220ffda0e32d868667b @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116747v1/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
