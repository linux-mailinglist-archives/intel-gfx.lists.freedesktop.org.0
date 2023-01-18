Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B054E67299D
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 21:44:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A53E10E029;
	Wed, 18 Jan 2023 20:44:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36AEC10E029
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 20:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674074664; x=1705610664;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=mNm1daZe2Q2bBpOXS6bDXJi1aNDtZGRALBErc9YO+Kk=;
 b=HAVp6tqLgdVnKLoVbjUdCj398l0/Vi+61iMFIk6e3OsdsAD3dN6GIWv6
 Qq6SIByFvQLbx+iClHGZ6u7aIyg2tHA4QJulavxJ4nSFMgc4omnVfhhdT
 B+3bahk7YCWw5O6kCxCAX30VyOmTU2LSWCSRRQFhl+Azxjq/IP18kwYB5
 GSWfRsBK9UQzeeRRu+9huWtvI27+opf6kJG18ZoYzlzVvewRGJwMntwf3
 jeVaxWbzh1UbrlnKwuovKI6AcruT4dT67KUFQYnXhrs1zVxeYoKaNm0fy
 WK7PTga0WmN6TOn3LdUysblaMx5KhsZppjohOfLW4LoHCDWw0NU9PoeFz w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="323782696"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="323782696"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 12:44:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="833738118"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="833738118"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 18 Jan 2023 12:44:23 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 18 Jan 2023 12:44:23 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 18 Jan 2023 12:44:22 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 18 Jan 2023 12:44:22 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 18 Jan 2023 12:44:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=loikJZZgAF7h7iNqoe/ysYNIn+xi4ugUH8I2+SmTzguWumku6vOUDRb0pxfaoVdiui0JJxFbaGsQP3lYOhSBXCPWFAeGHbQhVQmeJ7SnZdlAxEMa+7idowVjKzwNupV5DZEvVwgGuuUV71vM6Zfp7pYCCdgrHacw3UF09DkU9yoh3wjyTmGwHLLs708mhVgzbUt+OoqxYld6LbkIyV9WxlFEo61a4EmA9QDU4mGp7wXltRyIYXwyK6ioMFXQbpolQHCeWwCIVoriI6xpoPT08BQbbwVAK27jILGM+WPMXLEisVd40MogX9+JgljFE+LrVXCeWmQFz/htlQPnXEDr5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eRhBOpsRVULAQHqeUxs8DQrG34Uq5qiLEsfEyyDJkRI=;
 b=aGPLdUR3NHOSqWOsMyqQfblez0716E8PzE2UaT8zzra+jvHzSrg+R/FZN0jUluRV9ye24XqrNMq7z6rMSZBYpzOKNAx9YagsMCWP9Y2bNhdgCTKbhIuVTNQcmL1KZrTo20Wtp6hjKJVNOD/xpbyXxkxjn8LPylfJ6EzwER9MwA2nQMjzQGrZOdKEmpgrqsD9ZIZ3bd5St3HnT/UoYjd2lyuxd+UMhskwLZN3Za2RJTEtCrCzLvg4K3Bz4XW249M4NVzRrZwNX2m09nclG2iUG22TVORBKZTWXjJxgoFTf0a3XEFBK/2lD+kQCsaiUZoUp/7esH/zc1k0rPUSwwUksw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SA1PR11MB6869.namprd11.prod.outlook.com (2603:10b6:806:29c::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.23; Wed, 18 Jan
 2023 20:44:15 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%9]) with mapi id 15.20.6002.024; Wed, 18 Jan 2023
 20:44:15 +0000
Date: Wed, 18 Jan 2023 12:44:12 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y8haHCOrAPEt6OBa@mdroper-desk1.amr.corp.intel.com>
References: <20230117202627.4134579-1-matthew.d.roper@intel.com>
 <167404362105.3599.4959503836371931044@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <167404362105.3599.4959503836371931044@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR13CA0108.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::23) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SA1PR11MB6869:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ca912b6-04b5-4818-030e-08daf994c327
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZnvVbghALu9QF78UE3AoKwkPocwmJPVTrkqZ7tEXcFo1SBV+EybT5RR040H0Dc6bIglPstW+VT64H/LWSXGTW0nlXeDdfmrpLsgb4sOqmusyaNptAwPCryuF2ZgAJjUt0clg+4YkR8KRm8PQedjeGkO4be+EOePxk6WJG4GsSifgdTs09GCwD9a9PqT+QmdHoqv4IXUlurkHJ8EunDZDNczV9OfBaBbLF+dfvLb6TOElMkE1DubECu+fDAib1sr8nY/XGOcA+PWcbxxsVoX3id8DP00VkDN6/hoRO2L5q9KXpPBajynsaDTCFoMmeoVmSmuVUqm+IukfljfvAScTmV3ZpniSvO+NxMhli5vunMiMLd2PcK6fa52a/6m+RVnNcWzFy29GvPtja2EbpGo14wsHosB6h7xO8URPLu6EZlYmm29Vn59md09Ky+1CyLheQAkuHajy8HT+h0gAWagSoOQcoFnf1HsMhnfyQil3E5c5aR9LGSoClWY8qtMFdDuIDm35GvziFZR9fYbAQNq3QpPSPPxzZ3OA0b3JmLf304eh1b5PzNvQUiVjTmM8DNqik6n4+L+xGZKedN5pst0NyMgxuEIta8S9YWQafDiRPdJS/9S1zNqUCplo7PgapCVY9eJMag9L3lTkqzK3Q0IP3HkcHy1Kv5XKGTNCQ47CAE1qEuPePrdXRjDBvji/ZM3w
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(39860400002)(376002)(366004)(346002)(451199015)(66946007)(66476007)(186003)(26005)(6916009)(6512007)(66556008)(41300700001)(86362001)(82960400001)(5660300002)(8936002)(38100700002)(30864003)(478600001)(83380400001)(316002)(6506007)(6666004)(2906002)(6486002)(966005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lLkWDtP4ONsf68AFdZBZqbBrBj/HOOFFLwlM28EuyYlEGeOOWWjZaznTJKtE?=
 =?us-ascii?Q?YeP0BDIpogr1gfPJzF9w1z8qZWNpPulAvRK3Chr2EqbHSqufBp/cyh+3REJN?=
 =?us-ascii?Q?uZagZPU8O7qIFV2D49HVBU04ue5DH7N5o2WQwAbKdRUVY6pUERWByYsXDOHB?=
 =?us-ascii?Q?Ni5+527WSlq6AX3Cta96jEw0P4UWblPzDyBBPTAGI1wm8X7IItN3nVnHJwGk?=
 =?us-ascii?Q?O5nPt3zs9zYPmRnI8zCXAKcEdW+Ix4FMCt17uQ/sEzZIfc3AV/W+B2+Z6Vxg?=
 =?us-ascii?Q?TJ4yaFKI5uiDI3fEd0ju1IAKsk7BUbratF0Tl7f/734cAL+jSfX2KZiq8usG?=
 =?us-ascii?Q?QuJqeRd80N0doVaVQlpvKLDTUExJBML+FnO9I/vGF4FDkdVDRN3B0uGoUw/i?=
 =?us-ascii?Q?JGMrq9egRh0WiZvTbhg3wMMUCqGM0rYqXOF5K/YnmmPftmVyvTy+zHJpQL/5?=
 =?us-ascii?Q?Y7EkvjGvQL5pIfUzOGX/wxiy8ypLiXqR2eaGZXoz3miU+lYc5/SFPGp21Zp8?=
 =?us-ascii?Q?lwDdJM6aih1PvLZYzpZG/NJ7j3NRTdz18NIqg8qUjJndgbgWDqCUcHan6zEN?=
 =?us-ascii?Q?aCtV4218WdV9Odpib+UxKJtMrgpvcGSpoBW7tA2fjt5JNJzu53vTJjfpuHqK?=
 =?us-ascii?Q?xPDiHLLvms+ctViomLxzrdGF4XFlTpeRj805ChIEPyzy9WutCmuGn+vxFe6+?=
 =?us-ascii?Q?olcpXcouh+G56EP3BJzMi0Wmz27N9IQ7jtBU4jgZkwCbGoZs5jtlAhA6Mw+n?=
 =?us-ascii?Q?40mEk2H8p6i3rGZxUXL4dOJapM7fkY28vvElB2iWNPPFn8dAJQ4ywSHUa3Ye?=
 =?us-ascii?Q?Kl4ai6qZmca5APKJG9w8bGbWe77OK9g/HsOMOGINfxMLE3TwUNUzuRuJc0Ia?=
 =?us-ascii?Q?ZrA4aEzX+qoIFXovA4dTk4DAzM34329pOPnNn6Xg4OttSy9uY/l6+JBBJfI4?=
 =?us-ascii?Q?AcL7iAvQQvEPE9KC51TYq1OO7tiQOMR4kFyOltiOgGUTTq/a4he3m01TEoZ8?=
 =?us-ascii?Q?t4h6kPZ5HH8cwJNmt8ilWSXJnzc83HVMQJ5yJGFs5c3QflShtVSgGtwBGfIb?=
 =?us-ascii?Q?s6I2eTUuPSPsugcKAA3mevBL+3YYqIMVOGsg0+f7vZmxa+g7XWS5SlQbby48?=
 =?us-ascii?Q?AFOg/SM2z8CPnRZ1K/U1p3do2IiiW/BD8wt0S1V1+qcYXfd0jrgGql1LiT9Z?=
 =?us-ascii?Q?Hr1Wb8aEdF5BVtxghbNWeFl6XPII2U/3bBgAFzcoNbnZ8MeQwJBhIir7Dbpy?=
 =?us-ascii?Q?h2Z+V0OCYX4hdGYTgfi+j1HQMIsvMk4CD88Ky0zwuV3bL0pAVycGOZnITLqH?=
 =?us-ascii?Q?xrSQWYSFEzvOOXSohrakTC7ZMrHz+h2dT7DoA9MeftajVTXcC2jYMqIyDT0x?=
 =?us-ascii?Q?096XfuhO0BfgRqtH1mlHJED5zTho81L8afSRvIpLg4YXX84d02v7VhfEfVMT?=
 =?us-ascii?Q?bMY6GWAdyIfA5C5o+OdXG2Dh7t8CLNeBtnwyLq2M6vTzD1YoCuYDhHtXFVOY?=
 =?us-ascii?Q?woj9KI3+ym+SAXvHVyAS8xIEBEyXhc1G0gbr5wY9Pd+B+NE4eg16VT5eHpLz?=
 =?us-ascii?Q?iX21WnX1XZ/zkN1pjyzOTRjmjd9axrKdNC9RZo6pLJfui+oFnH+/KSsFY/U6?=
 =?us-ascii?Q?9g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ca912b6-04b5-4818-030e-08daf994c327
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2023 20:44:15.3280 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vKeKItRehUhqM/CCEIs3+gBZ+v3WW3E+WF0gvDDfzATHdrX+jfCpXDPARH+vcwzyop6dSKBB0IaBFpNeHZ8946kJjmJmVUih6KPG0Rs1gds=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6869
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Move/adjust_register_definitions_related_to_Wa=5F22011?=
 =?utf-8?q?450934?=
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

On Wed, Jan 18, 2023 at 12:07:01PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Move/adjust register definitions related to Wa_22011450934
> URL   : https://patchwork.freedesktop.org/series/112966/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12594_full -> Patchwork_112966v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**

Applied to drm-intel-gt-next.  Thanks Gustavo for the review.


Matt

> 
>   No regressions found.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112966v1/index.html
> 
> Participating hosts (13 -> 10)
> ------------------------------
> 
>   Missing    (3): pig-skl-6260u pig-kbl-iris pig-glk-j5005 
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_112966v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][1] -> [FAIL][2] ([i915#2842]) +2 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112966v1/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1:
>     - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#79])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112966v1/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
>     - shard-glk:          NOTRUN -> [SKIP][5] ([fdo#109271]) +24 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112966v1/shard-glk3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@nullptr:
>     - {shard-rkl}:        [SKIP][6] ([i915#2582]) -> [PASS][7] +1 similar issue
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/shard-rkl-5/igt@fbdev@nullptr.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112966v1/shard-rkl-6/igt@fbdev@nullptr.html
> 
>   * igt@gem_bad_reloc@negative-reloc-lut:
>     - {shard-rkl}:        [SKIP][8] ([i915#3281]) -> [PASS][9] +4 similar issues
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/shard-rkl-1/igt@gem_bad_reloc@negative-reloc-lut.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112966v1/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - {shard-rkl}:        [FAIL][10] ([i915#2842]) -> [PASS][11]
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/shard-rkl-4/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112966v1/shard-rkl-4/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - {shard-rkl}:        [SKIP][12] ([fdo#109313]) -> [PASS][13]
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/shard-rkl-6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112966v1/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_mmap_gtt@coherency:
>     - {shard-rkl}:        [SKIP][14] ([fdo#111656]) -> [PASS][15]
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/shard-rkl-1/igt@gem_mmap_gtt@coherency.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112966v1/shard-rkl-5/igt@gem_mmap_gtt@coherency.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-glk:          [DMESG-WARN][16] ([i915#5566] / [i915#716]) -> [PASS][17]
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/shard-glk8/igt@gen9_exec_parse@allowed-all.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112966v1/shard-glk3/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - {shard-rkl}:        [SKIP][18] ([i915#2527]) -> [PASS][19] +1 similar issue
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/shard-rkl-2/igt@gen9_exec_parse@bb-chained.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112966v1/shard-rkl-5/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - {shard-rkl}:        [SKIP][20] ([i915#3361]) -> [PASS][21]
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/shard-rkl-5/igt@i915_pm_dc@dc6-dpms.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112966v1/shard-rkl-6/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>     - {shard-dg1}:        [FAIL][22] ([i915#3591]) -> [PASS][23]
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112966v1/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - {shard-rkl}:        [FAIL][24] ([fdo#103375]) -> [PASS][25]
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112966v1/shard-rkl-1/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>     - shard-glk:          [FAIL][26] ([i915#2346]) -> [PASS][27]
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112966v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
>     - {shard-rkl}:        [SKIP][28] ([i915#1849] / [i915#4098]) -> [PASS][29] +11 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112966v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_properties@crtc-properties-legacy:
>     - {shard-rkl}:        [SKIP][30] ([i915#1849]) -> [PASS][31] +3 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/shard-rkl-2/igt@kms_properties@crtc-properties-legacy.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112966v1/shard-rkl-6/igt@kms_properties@crtc-properties-legacy.html
> 
>   * igt@kms_psr@sprite_mmap_cpu:
>     - {shard-rkl}:        [SKIP][32] ([i915#1072]) -> [PASS][33] +2 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/shard-rkl-2/igt@kms_psr@sprite_mmap_cpu.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112966v1/shard-rkl-6/igt@kms_psr@sprite_mmap_cpu.html
> 
>   * igt@kms_universal_plane@disable-primary-vs-flip-pipe-b:
>     - {shard-rkl}:        [SKIP][34] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][35]
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/shard-rkl-2/igt@kms_universal_plane@disable-primary-vs-flip-pipe-b.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112966v1/shard-rkl-6/igt@kms_universal_plane@disable-primary-vs-flip-pipe-b.html
> 
>   * igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a:
>     - {shard-rkl}:        [SKIP][36] ([i915#4098]) -> [PASS][37]
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/shard-rkl-5/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112966v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a.html
> 
>   * igt@kms_vblank@pipe-b-query-idle:
>     - {shard-rkl}:        [SKIP][38] ([i915#1845] / [i915#4098]) -> [PASS][39] +28 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/shard-rkl-2/igt@kms_vblank@pipe-b-query-idle.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112966v1/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html
> 
>   * igt@perf@mi-rpc:
>     - {shard-rkl}:        [SKIP][40] ([i915#2434]) -> [PASS][41]
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/shard-rkl-6/igt@perf@mi-rpc.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112966v1/shard-rkl-5/igt@perf@mi-rpc.html
> 
>   * igt@sysfs_heartbeat_interval@precise@vcs1:
>     - {shard-dg1}:        [FAIL][42] ([i915#1755]) -> [PASS][43] +1 similar issue
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12594/shard-dg1-16/igt@sysfs_heartbeat_interval@precise@vcs1.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112966v1/shard-dg1-16/igt@sysfs_heartbeat_interval@precise@vcs1.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
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
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
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
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12594 -> Patchwork_112966v1
>   * Piglit: piglit_4509 -> None
> 
>   CI-20190529: 20190529
>   CI_DRM_12594: 5cec9cff5436577179bab7b52de0465ba169691a @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7121: aa16e81259f59734230d441905b9d0f605e4a4b5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_112966v1: 5cec9cff5436577179bab7b52de0465ba169691a @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112966v1/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
