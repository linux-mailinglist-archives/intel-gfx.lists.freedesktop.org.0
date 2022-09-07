Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24EFA5B1097
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 01:40:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA1BE10E908;
	Wed,  7 Sep 2022 23:40:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42F4F10E22D
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 23:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662594028; x=1694130028;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=3dxfUWsla17FYqc1ZT3fOH4tfU6jeTi+GL6bq3T+kZM=;
 b=gh4Rzo0kWsIFDMwJH6qBIGfYrbAYGk9t1dcdufA//wJmpggqwmvcyf5W
 tI/iQTmRE1GKJyJVxPHV1kVb+ldbQgcoCKU707Tg0l+xmXnT5zvkIBgSa
 oJCEMZbmK/s7UdnViIL1FBCKoFWWIH4KqY3ys+2xurQ/rTG3ZV4zxMxnO
 GLs4NYgw9qDSvV1ZQzAaQj/eOUl0meNdEvaLS2ccFbIP7++Kc0d+JqQt8
 NxAc+lozdFjIRLVLdswzgf25rYv6bamP2Z8OLRwRC2QKgJ1hhZXYdZFOU
 W9ns5bO4xOAa/2m2h+6jYJw8jJiPf0THr9nM/n8QzvMzs1iTCrYZqx+eU w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="277413042"
X-IronPort-AV: E=Sophos;i="5.93,298,1654585200"; d="scan'208";a="277413042"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 16:40:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,298,1654585200"; d="scan'208";a="610492304"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 07 Sep 2022 16:40:27 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 7 Sep 2022 16:40:26 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 7 Sep 2022 16:40:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 7 Sep 2022 16:40:26 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 7 Sep 2022 16:40:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=doGi+D8380GJOd7ZJgDNKnKDMJCijBU1aKbsJknMi5Ml7cfvN+W4jtLtg2VJ5B2wqHq29FVoaZodCq4vgShKmjc80462l0McQg5oNyGhuAL5u08Qc1kEhORPgXZf66Mja9uy7Tygh/UWzLUcPytFjh1MXtsIo0TghaOwEJde3NkGeslboYBf2Na4yBgEyoznJqoiBFNm0iygYobFPP2zfQDDdynPEg2cibOe/ItQVNP3EnA5iXCqVBXUp081f8hpRVk1M2/MXC4MtnT5vkZ+IiY/o8Ek9uinnBcgzflC7P+DU3xJDitsWUhSQTVNxVfNmWxDvdVLQkVdAXPnoFLnBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L4f3zA2VGItlNe5lrskWGuQx1BemzzWHhovs4xhBctY=;
 b=QEjhR0eWxH4mE0A/1ODN8RsTxucicYuVKTA4fIdOyKGVgQXwiIMWPqiyfbcspb7/5U3EA9yT3QdRHtWqLaHSNpyUuAZmdIjN9byCh48RBtBVCytkyx5eZOumf1ShX31BQi8SdviMkqJMIhNvBTtLWtXzSC2tfQhLi8DZulbQ1DNvp1I0qxkdwPOMS07xfFQZZDxOmq8slzUmbN0q6lpbDsqqifGe8IpEz4BJnhT//XByot+N01Z7rAjq7ryBUJq5ZBpbdaVGY/pq4kcaqhXEkM2gg6adCm7F7gkERzo/pio1ixZNh2m8+bVAo89KeFYGm1z2GWka7aal/YTluS4IYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by DM5PR1101MB2266.namprd11.prod.outlook.com (2603:10b6:4:57::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.12; Wed, 7 Sep
 2022 23:40:22 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514%12]) with mapi id 15.20.5588.015; Wed, 7 Sep 2022
 23:40:22 +0000
Date: Wed, 7 Sep 2022 16:40:20 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Yxkr5DtOPPKmrJzz@mdroper-desk1.amr.corp.intel.com>
References: <20220902103219.1168781-1-ankit.k.nautiyal@intel.com>
 <166214419231.22603.15328665592201675426@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166214419231.22603.15328665592201675426@emeril.freedesktop.org>
X-ClientProxiedBy: BY5PR16CA0022.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::35) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 930fd2c4-8118-4085-016e-08da912a54d2
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2266:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /ToMKaC8d5g+CRa+VYR1xox0JKnSjdDQYibDXHl/K7yoPE1vg9LF8DauysE+xg9SX37t9Dwv/j9/7DBxKELOouc3Jt9Ewq3LJ2D3TsfPc+F/i5UK/Zi0vh3PRJxDbfrTtRcrfQZhbJUxnhcSqGgQf5wR4dcutRHl2TPv7OmYnOmAwPtEr0S+DYrKaUbr3mMhoxc+L1tFRpPqFXSyqBjT73SjgovjrNa7h4GXQxTjBmY7QZ8Gfl73MHKrc2y+iej3mAnRTZoLAhaOQDTIm3zL3/tkh2SpylimQqa62iyKfj/5QclH2COwpONJzcqpmcOu7llPLKEKJMTNsGm3g0D69IHOQCE3Gd0QlvbDL7b4q1y0spcjapSI4Ay0TusgTWezXZMU1uCjb/tV0MNRhvxu0KNbqakYM2rUWy3MK/sbUfoETq3+oXO6uCZK8ReTVPRNLRlr+ixJnd/MXB9tu7DPaS4qtNU7nmnSsaoQpMavdUaneqn6SlaoE2wmfcKxE+MmvxJByGH6eqGEWkPuGQGV3yYsvLoQ2qKDO8Db2Hren93NQqEeIY/QYBFFhskKsZUSeKG3HM3n672UgPzvB8vMyZedJUZzyGwkoPNsBHKpQWW7k8z9fx+GeI7IGherN1LLKWFSBUd6/x8s73ZHTNzi2Dy/z/PcNfS+1KMt8O+rCn1yA30RWyvHQTnFhChcIZs6DJHt8UPpI+31ptG+bwBbnnezHniEvLxLIi+sBrDeTfKYk8QyrFOgx7QrOuyy9g1/utHt8P30ZjMPFRHa1pErQA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(136003)(396003)(366004)(39860400002)(346002)(38100700002)(82960400001)(66946007)(316002)(4326008)(66556008)(66476007)(86362001)(83380400001)(107886003)(6506007)(41300700001)(6486002)(966005)(478600001)(26005)(6512007)(6916009)(8936002)(186003)(5660300002)(30864003)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oREztoS9FW4k1707NWswVo7qbrVdnd0+lN8QGdd2gu1Ne6tr3g6Hs7zkSBxw?=
 =?us-ascii?Q?v3/RpZz4nKC2P+MIZkhcXbZp4lLW/rYLSo4Q3zpDU3kcKi3jRfddxUfzGLwh?=
 =?us-ascii?Q?PNTylWl2Ee/yxq6z7IGqMQ7RARjj3sDZYhNl7vOq2xiUmRqvEyBAoUUE2yNx?=
 =?us-ascii?Q?PrRSyibmxpd3tc1go/xg9fO9N/tOhQBN38sMS4Oe7fL92vCoUlZ5I9/glQxO?=
 =?us-ascii?Q?AhGD6MTSEbnA8osdGCvHaehrBLRAAlLuoo3K7xj+PLV1fYPSVTOygVXvO3O6?=
 =?us-ascii?Q?8hl08FdIaRa6C4uFyIW+v9tcgVRciU7M3SoX59tEb5juvi1tGAUZMe7Wg/7w?=
 =?us-ascii?Q?EKv7ll17hGE8Rech07w9muL75zf/mCCQlwCDVLSGjwa7LdfVT/I5F6CudVBY?=
 =?us-ascii?Q?F0YtyVoG6wSoWI1BYxtBBGicHBXepZbAlA7bKiC64B42vsAltziDv+ghWk0A?=
 =?us-ascii?Q?UtW1PnRB+WGCu2DZZNEUOasAUcHOasvwj3gCiRlJ2TDJjvflO/vaQr8ldSE3?=
 =?us-ascii?Q?M7c/squw+XgCG3xQYZxFgxmQnYxa0IIfDbvRL7kKHfBSnJJ5tyFUkg0F2mVK?=
 =?us-ascii?Q?Li7zGocKFmazTrpf5Hq2K/utBfltrHHALNjjJ0sNXKL56NlQwxd7soxEAmnm?=
 =?us-ascii?Q?vKoJ0rRcM/vquN3d3Kya4gyAzKz4rhj4eBLiy8vGKODUnGn7yDRWvDFvrGkt?=
 =?us-ascii?Q?CD71FtMzIP1aHReShsUXioyN5DVj1V/SZ83HSwDA/pSMqI+lQtOm1e05QRFZ?=
 =?us-ascii?Q?hawLvR4YzFxpD9FUCOqC6bgvQsLuz8GU/NySoNvmeN22+xXc3t/ZiLC2FwBe?=
 =?us-ascii?Q?vFHa6Avjlxjs7hpYBffDffQCBhMPu8zI/1hArKQTTogORtXiPCa3tcrGr4HZ?=
 =?us-ascii?Q?oGGkvfOa715Wn2RuCjh7aZwbRlbCqPqIQ9eFZ1/Q54PQhQWpRD/YsLD1KkzH?=
 =?us-ascii?Q?8R4xF2GBfj8bj5E3aAIg+W1ZvC8eE13MaCOUYKajwC4pDyleykZDTLcId97Z?=
 =?us-ascii?Q?gl3g668cfhQeL+L7abHL6LNr9TXjOUz+StTmX4dR6TujJZBPD+nVCIGy/NjY?=
 =?us-ascii?Q?WV328z4irlKHrLNGoM6dNv0t0uoFX1MZiRDyUV70hEfNoLT+wAL58AF+LVGk?=
 =?us-ascii?Q?xKHYs5Qd7yiAR0qwl1gngftbMY744egzJBlDCAUobiHTuEWoI88g/2om3Ify?=
 =?us-ascii?Q?dUR4XwGPz9nJFkeSaLpNYFNsgGacXHgseYtxXgY1iedsKqxgtkyUiAMdVK7i?=
 =?us-ascii?Q?SvvAu4sctfc1fhAxkos0rh5UzT2teH2ABF1MUfP7q2eL2NxddAGnxT+yYeTI?=
 =?us-ascii?Q?yVHhpje9v0keytmwKpsj0tZgC1GnbQp+2j8msPx/8rbP/vyNCZOFE7idrrdf?=
 =?us-ascii?Q?r/vDp8LZVLYjAspxFJE+NvneUiMDdFnT6JkKtYo5crLRBP8/Gukd+mZ1W53i?=
 =?us-ascii?Q?VFQo1KymhYGrj3rLjx7TVkXfNZVe3UCf0ZTxMon7O5ERQUlr7IPyWtMkAaIi?=
 =?us-ascii?Q?FQG2stXOoRAO43i0yA517Pz1+isFkrA6pQW9RL8tLy6a/f4gVIG5o/Eq8dqy?=
 =?us-ascii?Q?PF4ew6iiffMSeyXVBus2v4vJt/xNrHHl5I9sd4tLnzn7spFic8edVMDJbMxW?=
 =?us-ascii?Q?xQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 930fd2c4-8118-4085-016e-08da912a54d2
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2022 23:40:22.5768 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XNCVci9+qa8U8rw+Bk0msj2x29KhaBT3RtaAdBAjmBLosx+Qc9kTH7yphD0djbuf7Niz8YwoIbloLFLekAbC277j71HdA5gqktDCfg87zXQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2266
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/vdsc=3A_Set_VDSC_PIC=5FHEIGHT_before_using_for_DP_DSC?=
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

On Fri, Sep 02, 2022 at 06:43:12PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/vdsc: Set VDSC PIC_HEIGHT before using for DP DSC
> URL   : https://patchwork.freedesktop.org/series/108076/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12064_full -> Patchwork_108076v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_108076v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_108076v1_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (11 -> 12)
> ------------------------------
> 
>   Additional (1): shard-rkl 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_108076v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@drm_import_export@prime:
>     - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-tglb1/igt@drm_import_export@prime.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-tglb5/igt@drm_import_export@prime.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-snb:          [PASS][3] -> [INCOMPLETE][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html

Both of the failures here appear to be random mid-test incompletes,
unrelated to the patch being tested.

Applied to drm-intel-next.  Thanks for the patch and review.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@kms_cursor_crc@cursor-onscreen-512x512}:
>     - {shard-tglu}:       NOTRUN -> [SKIP][5] +14 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-tglu-6/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * {igt@kms_cursor_crc@cursor-rapid-movement-512x512}:
>     - shard-iclb:         NOTRUN -> [SKIP][6]
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb2/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_108076v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#658])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-iclb2/igt@feature_discovery@psr2.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb7/igt@feature_discovery@psr2.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [PASS][9] -> [TIMEOUT][10] ([i915#3070])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-iclb7/igt@gem_eio@unwedge-stress.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb8/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-iclb:         [PASS][11] -> [SKIP][12] ([i915#4525]) +1 similar issue
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb7/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#2842])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-glk3/igt@gem_exec_fair@basic-none@vecs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-glk6/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][15] ([i915#2842])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_params@rsvd2-dirt:
>     - shard-iclb:         NOTRUN -> [SKIP][16] ([fdo#109283])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb2/igt@gem_exec_params@rsvd2-dirt.html
> 
>   * igt@gem_exec_params@secure-non-root:
>     - shard-iclb:         NOTRUN -> [SKIP][17] ([fdo#112283])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb2/igt@gem_exec_params@secure-non-root.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-iclb:         NOTRUN -> [SKIP][18] ([i915#4613])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb2/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_lmem_swapping@verify-random-ccs:
>     - shard-apl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-apl7/igt@gem_lmem_swapping@verify-random-ccs.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][20] ([i915#768])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb2/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html
> 
>   * igt@gen7_exec_parse@basic-offset:
>     - shard-iclb:         NOTRUN -> [SKIP][21] ([fdo#109289])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb2/igt@gen7_exec_parse@basic-offset.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][22] -> [FAIL][23] ([i915#454])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][24] ([fdo#110725] / [fdo#111614]) +2 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb2/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][25] ([fdo#109278] / [i915#3886])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb2/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-apl7/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-basic-4_tiled_dg2_rc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][27] ([fdo#109278])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb2/igt@kms_ccs@pipe-d-crc-primary-basic-4_tiled_dg2_rc_ccs.html
> 
>   * igt@kms_color_chamelium@ctm-blue-to-red:
>     - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-apl7/igt@kms_color_chamelium@ctm-blue-to-red.html
> 
>   * igt@kms_color_chamelium@gamma:
>     - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#109284] / [fdo#111827])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb2/igt@kms_color_chamelium@gamma.html
> 
>   * igt@kms_content_protection@mei_interface:
>     - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#109300] / [fdo#111066])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb2/igt@kms_content_protection@mei_interface.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-blt-4tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][31] ([i915#5287])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb2/igt@kms_draw_crc@draw-method-xrgb2101010-blt-4tiled.html
> 
>   * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
>     - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#109274]) +1 similar issue
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb2/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][33] ([i915#2672]) +12 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][34] ([i915#3555]) +1 similar issue
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:
>     - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271]) +70 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-apl6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:
>     - shard-glk:          NOTRUN -> [SKIP][36] ([fdo#109271]) +1 similar issue
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-glk7/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-pgflip-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#109280]) +7 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-pgflip-blt.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
>     - shard-snb:          [PASS][38] -> [SKIP][39] ([fdo#109271]) +5 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-snb5/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-snb2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
>     - shard-apl:          NOTRUN -> [FAIL][40] ([fdo#108145] / [i915#265])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
>     - shard-iclb:         [PASS][41] -> [SKIP][42] ([i915#5176]) +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-iclb1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
>     - shard-iclb:         [PASS][43] -> [SKIP][44] ([i915#5235]) +5 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-iclb7/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109441]) +1 similar issue
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>     - shard-iclb:         NOTRUN -> [SKIP][47] ([i915#5289])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb2/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
> 
>   * igt@nouveau_crc@pipe-b-source-rg:
>     - shard-iclb:         NOTRUN -> [SKIP][48] ([i915#2530])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb2/igt@nouveau_crc@pipe-b-source-rg.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-apl:          [PASS][49] -> [DMESG-WARN][50] ([i915#180]) +2 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-apl3/igt@perf_pmu@rc6-suspend.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-apl2/igt@perf_pmu@rc6-suspend.html
> 
>   * igt@prime_nv_test@nv_write_i915_gtt_mmap_read:
>     - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109291]) +1 similar issue
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb2/igt@prime_nv_test@nv_write_i915_gtt_mmap_read.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-apl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-apl7/igt@sysfs_clients@recycle.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@vecs0:
>     - shard-iclb:         [SKIP][53] -> [PASS][54] +3 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-iclb5/igt@gem_ctx_isolation@preservation-s3@vecs0.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb6/igt@gem_ctx_isolation@preservation-s3@vecs0.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-iclb:         [SKIP][55] ([i915#4525]) -> [PASS][56]
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-iclb5/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [FAIL][57] ([i915#2842]) -> [PASS][58]
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-apl:          [DMESG-WARN][59] ([i915#5566] / [i915#716]) -> [PASS][60]
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-apl7/igt@gen9_exec_parse@allowed-single.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-apl7/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_selftest@perf@request:
>     - shard-iclb:         [DMESG-FAIL][61] ([i915#4391]) -> [PASS][62]
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-iclb7/igt@i915_selftest@perf@request.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb2/igt@i915_selftest@perf@request.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>     - shard-apl:          [FAIL][63] ([i915#2346]) -> [PASS][64]
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-apl8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-iclb:         [DMESG-WARN][65] ([i915#4391]) -> [PASS][66] +1 similar issue
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-iclb7/igt@kms_dp_aux_dev.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb5/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-edp-1:
>     - shard-iclb:         [DMESG-WARN][67] ([i915#2867]) -> [PASS][68]
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-iclb1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-edp-1.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb3/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-edp-1.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
>     - shard-apl:          [DMESG-WARN][69] ([i915#180]) -> [PASS][70]
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-iclb:         [SKIP][71] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-iclb5/igt@kms_psr2_su@page_flip-xrgb8888.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [SKIP][73] ([fdo#109441]) -> [PASS][74] +2 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@perf@stress-open-close:
>     - shard-glk:          [INCOMPLETE][75] ([i915#5213]) -> [PASS][76]
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-glk8/igt@perf@stress-open-close.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-glk7/igt@perf@stress-open-close.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [SKIP][77] ([i915#4525]) -> [FAIL][78] ([i915#6117])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][79] ([i915#588]) -> [SKIP][80] ([i915#658])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-iclb:         [SKIP][81] ([i915#2920]) -> [SKIP][82] ([fdo#111068] / [i915#658])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb7/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-iclb:         [SKIP][83] ([i915#2920]) -> [SKIP][84] ([i915#658]) +1 similar issue
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][85] ([fdo#111068] / [i915#658]) -> [SKIP][86] ([i915#2920])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-iclb6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-iclb:         [FAIL][87] ([i915#5939]) -> [SKIP][88] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb5/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-iclb:         [SKIP][89] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][90] ([i915#5939])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-iclb7/igt@kms_psr2_su@page_flip-p010.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][91], [FAIL][92], [FAIL][93], [FAIL][94]) ([fdo#109271] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6599]) -> ([FAIL][95], [FAIL][96], [FAIL][97], [FAIL][98]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6599])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-apl7/igt@runner@aborted.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-apl2/igt@runner@aborted.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-apl3/igt@runner@aborted.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12064/shard-apl1/igt@runner@aborted.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-apl2/igt@runner@aborted.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-apl3/igt@runner@aborted.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-apl8/igt@runner@aborted.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/shard-apl6/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
>   [fdo#111066]: https://bugs.freedesktop.org/show_bug.cgi?id=111066
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
>   [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12064 -> Patchwork_108076v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12064: deda08d41aef283357a629e7ddb9a7f5e3616d74 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6642: c018ce1d1ab8e570f665cf5d58c9802a44d66cc1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_108076v1: deda08d41aef283357a629e7ddb9a7f5e3616d74 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108076v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
