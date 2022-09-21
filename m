Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4525E542E
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 22:07:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC6C210E778;
	Wed, 21 Sep 2022 20:07:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6F9E10E818
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 20:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663790859; x=1695326859;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=iBtuiDQEBXJ7Xm+tlUJoOZun23MFpOPI+IH9NhYnRHI=;
 b=BzwrfzHAABZWrvyi4QxCAFh2CodX+fO22pkCo5g63cbm2lXRTBUSczK/
 QneHPzHzQNx6deDNlMkPjNsmNwGwKd1g6dUIwPbVNG+gMP83Y8e47UhES
 BOSlRR76oY351LhINpj7X8QDATpvLN8kzu37dXRfH9nR4ssP6Kh9pXaAo
 Ys6XoihgXsrfj8T+UHVdo93jXMStmFg8muqIUFh4gt8rrvFtuBqTWvA6b
 eN705zwYYF8VIDaywbwUfYGg8hcN3qmautGsLtKzAtxDUL+6tBTeZK4/P
 0jJOdV8mW5NHGFI5iJ49R9aFe05xiyeM5MxEZlwCnH+N8UTqtMkhv5F+t A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="300100743"
X-IronPort-AV: E=Sophos;i="5.93,334,1654585200"; d="scan'208";a="300100743"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 13:07:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,334,1654585200"; d="scan'208";a="650221136"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 21 Sep 2022 13:07:39 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 21 Sep 2022 13:07:38 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 21 Sep 2022 13:07:38 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 21 Sep 2022 13:07:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QCENStVZHkwPSGhWxCssiPtHVriLMF2pbQDmgOMmttV3tk8JsvHgxi2RVQNIGRA9x/1Zs6ZStm/7BvHwPXtW+Tm7OSx+ZPKWAnbQsNYeswDtPcOf78Z9xi2THiC503qW4qdJwd6/GBYCdszkKSZc3U4gjhzVoaRhTlDrSwnjJ+L5W6gpWuApQYc2dlf2jNJ6dGBD6vHBPberIT80Zf70/8xg5HKaYUa6M0JeYrSW4zIPhpKEuF6GmKxd0s7CEGjG2HR37xqV0WQczKxMQsQnt39pL0sOq8rKhsMOUuEn2JHBO1fkJyy67Lwe4v2sh5RLj8I0qHjsm7Xkbb2ho+YPYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7MQnen3LrVZr6AJ/LP3BeULlsfnOZnYb/uYh37BgYs0=;
 b=LmQmitGdbA3wpaaRQaMRBAUS77npXvm8AXf3Uzl5J9xndeeCdhRA1izHgm193D44kMUTUDMjMJ4uVlpRyk9iHmWCTsfcZSo2PQkl0/84DY8CXHBEGliYWij3ZBV3yVgBTWEArw0Q2ZZAdId4wkD/mT7MZwPRD2AdpMYVrZeWmGWJkbFXE46Pp8y2t/Ivtk0B6mBfPseuDOBbe8zESsnZi2GMxJ4rN6ZKLXf8XTjbpSgQS5Hdtgf0RWO5xfYYupiBjVKSAhbm2Pgv7taD7qLJYc1ld98dPmEUO4bjcCFrEokmlDB6p978I0Kme/zmWW7zii+9loOyi4lOKB5VYS3zig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by MW4PR11MB7103.namprd11.prod.outlook.com (2603:10b6:303:219::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.14; Wed, 21 Sep
 2022 20:07:36 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514%12]) with mapi id 15.20.5654.017; Wed, 21 Sep
 2022 20:07:36 +0000
Date: Wed, 21 Sep 2022 13:07:34 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <YytvBuGpi8vP5bGe@mdroper-desk1.amr.corp.intel.com>
References: <20220916014345.3317739-1-matthew.d.roper@intel.com>
 <166331771462.18048.2808586235750830642@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166331771462.18048.2808586235750830642@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR03CA0165.namprd03.prod.outlook.com
 (2603:10b6:a03:338::20) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|MW4PR11MB7103:EE_
X-MS-Office365-Filtering-Correlation-Id: 64717ec1-2b40-485a-a03c-08da9c0ced78
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2vSDES3iInKbJBlPxvgHJ4r1McYojfbsfNSSD+MqJOSzWrO95d/4RvtB1ADW20LiwVKdZgHchE3lURWwWlo8+yfdonwqilBRVSCyamECP9HKjTyobpHyENsQz+77AmpQOwXAiHxgu1CjsVtlHxz92enFQAsec2CMzNwTuWEU5e5xHQTmcU1ZwMNoSGmqoMzUlkJ3HewWyfkTXtKmqNlm9YZsli4Hj60byAZj5Lsj013fZPqTdLMYx5G8XeneA+N4ITTgsYIfrZ634DWp2Z7dWOSpSWg3htGaVcyEgExKSJocO9FNrBlw0Funn5gz3/Z2PJzTqAOgPyARjiaTD2mrlfS7MMGQRgFTu7dNZEG23bkOYZB8yEDrikWudlxqkn/aoZzkj6m0gfSxWzSzm2e7Aw3xHCW5ZbzKjYeFLolWEGx9EYrmG0xY9n1JKDW9KTCzZhupmmggEUAdmCREhs3Duh3LzcZijoHYmq0kuFlOhwop5rcspZoelf0HEPhV63wkjhOLXmCFZlIeRyZtyua4v7cOHpur8/tk9eJeS6QJrrDP+Xqj2Vapmfn39dH4te7PVBRdIMVxxG5sb8QqwJi2JDWHWwy15wb9M94zrJd8QQrkFCfv1XJUvY1qLB5jOl+97DIdeEc83xjPaelV5sXjIIYzmpmKEBL/PwKX3dLUIIQM0K48C4sgbdDBCRomsa+JmM/3vga4WOhhNUf4XwEUDMmMuHdBApiXtCh4WPI6CJq3Yt98wFbJSKKDjEsr4Ru3V3CWnvkK56ETNVQIZ4K5Vg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(39860400002)(366004)(376002)(346002)(451199015)(2906002)(83380400001)(6916009)(66946007)(30864003)(5660300002)(66556008)(316002)(66476007)(6486002)(478600001)(41300700001)(966005)(86362001)(8936002)(6506007)(186003)(6512007)(26005)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?U8mfnY2NX4rD45fRBi0cvPfsmXuyecNzIEh4h0QTtwW69y2u6vInOIq2n3SM?=
 =?us-ascii?Q?frvXNniZ1/JeDTk6BWLD2y8V0cUtP770Kgkglpuz+8lOOL+GKOUbzm6FAghY?=
 =?us-ascii?Q?KM9QxCdLrEaxiqExwf+14NlMZtdz/QemxZB9dSCG+DTWclIGDC7OQEg9rAia?=
 =?us-ascii?Q?GI7q/wENs3D20Zxf1sB2s20XdZv43XStBRgixpa9ujr64aSVVutYxVoIolM9?=
 =?us-ascii?Q?NfX880c+brN8ufvbqly0IrkEroXvYKbQB8ndJm6jTXv8OBOzBvBi7AM598Qk?=
 =?us-ascii?Q?Bc7oeIEFxu9psVlrdmx3Of5w+esxSzZUykqL3CesWNFQZkIsM15G8gmI6t4D?=
 =?us-ascii?Q?YPp81gSnAo8XUO2VmsWY3CPhLBdEVn7WHIMb0+EaEHDgr3Fut1v+JOuhvqT4?=
 =?us-ascii?Q?J4bpKtq2xAbhmYGKc7OqEZRDZts83d/VnvoThr7+tEfCFJWEpyka1GEnGdCn?=
 =?us-ascii?Q?XSyfe1/eHpyYxQtZduwadwEkjCADr1kBJgTsp3kzKtpV3+MRsp++r6tTILo0?=
 =?us-ascii?Q?4v+9KRiGD2PJSPvyG7bZPtTyyE6H0eM9Vm1ZB7YALMrr9vh/Bcnlheyo6abS?=
 =?us-ascii?Q?1vt3g4Uga9tSlMZ3TbpvrFXSWpoo7fDxtFUWs82tzwl/2Ct6skX7tFeqA9v4?=
 =?us-ascii?Q?+OzLYPWZZvF7TN+aq8QJKb0WD9MKcYklIgYkHXKAdUTQWWGSWz8tCGKmW6pM?=
 =?us-ascii?Q?yVNmvAPF8LSJMy+nr4EQ6r3X7IJM6gLyuNF7AZeoYH+JbJnz9xGhlbde04jx?=
 =?us-ascii?Q?XY21U0+8yZr3qDaiRjqNzsa7IiyKS1pKGgVnGVaBDVn3C0cT4xAUyHrO/R3f?=
 =?us-ascii?Q?OZDGfSR2z4U19JXeO4SLMOcN/Fm6szRHfoblzQhZsqT6ERM8VWMuGMnq640+?=
 =?us-ascii?Q?5XAOwQNK6fJ0kPRjcK97vEPe5Qu9y+w0gtFVAA2tPdv57YAnmvmeqDGCW6SL?=
 =?us-ascii?Q?ZSwLnI3HmUJ9rAJG+KC25WKA9RBaW8AMayjqo5BO98TlAz+JoMqPD83VG7ne?=
 =?us-ascii?Q?gREv+anZYRhMEuHM83+42Nar/kcw1M5yJL/jTiLK71NEKW0kr/9xe637X/nQ?=
 =?us-ascii?Q?37KDUVLRfFNxEhcjSuGkR2YpUX10tJRgimqIU0tVjn5azOl86tm1p9jeEz+g?=
 =?us-ascii?Q?mIww8RUmMUDr/WWmyeoO0LFZeTyxfKVBlV0ScAIPRGT7j3zopcRpexZ6FOg5?=
 =?us-ascii?Q?dqNtuC9knf2QaG5uN1zxrthGJH/IVu2dqUaO248H91iCoSh1n92zqTy722GW?=
 =?us-ascii?Q?BpgtNXWbFA1SCiKpcLt1CPq2HMiBN69vyDRluwPBaftm9djyAJy0CTVvc04Z?=
 =?us-ascii?Q?i0rdYeD1TWWuD8l5F0nscShzPivKRDPsCS9G/7CpE+wQFx6Y2gnXxVy47DAT?=
 =?us-ascii?Q?uurvirWZ+FzdmZeEkaJ+9P+FOzTYfWpWloPgx9qWuPKcsoBQv70milJc49K7?=
 =?us-ascii?Q?QX/4P1vU4+LyN/mxxX4f5fOB7cL7b6z5rlVCFyBAFovQHhc7pbzV0xb5xEvo?=
 =?us-ascii?Q?Qt5YakZ4XQpMEPSMb6AfhKRt5cBNW7KWPGWuyfeRjZ3CaSHH7papcvO6hLVq?=
 =?us-ascii?Q?JjWl/7hcwIjVftWc63HJyY4pG3LIxdQm0YwTZ6fl/bfz+ucCTcb+/O7EKIuH?=
 =?us-ascii?Q?YA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 64717ec1-2b40-485a-a03c-08da9c0ced78
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2022 20:07:36.5711 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EpFr0Ny/4ZTsmppJGZmPrna5Idiz/DfGcei+BMsQLVlpqy9GQ1ub/aYnG4TgsmN+L4S622SyKONp5eRhBcRH7iZm1BmPwccFxYgd+Y/G1gM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7103
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Split_GAM_and_MSLICE_steering?=
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

On Fri, Sep 16, 2022 at 08:41:54AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Split GAM and MSLICE steering
> URL   : https://patchwork.freedesktop.org/series/108627/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12144_full -> Patchwork_108627v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 

Applied to drm-intel-gt-next.  Thanks Prathap for the review.


Matt

>   
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_108627v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [PASS][1] -> [TIMEOUT][2] ([i915#3070])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12144/shard-iclb7/igt@gem_eio@unwedge-stress.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-iclb5/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#4525]) +2 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12144/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-iclb3/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [PASS][5] -> [FAIL][6] ([i915#2842])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12144/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][7] ([i915#2842])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#2842])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12144/shard-glk2/igt@gem_exec_fair@basic-none@vecs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-glk3/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-apl:          [PASS][10] -> [FAIL][11] ([i915#2842])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12144/shard-apl4/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-apl8/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][12] -> [SKIP][13] ([i915#2190])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12144/shard-tglb3/igt@gem_huc_copy@huc-copy.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-tglb7/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-apl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#4613])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-apl7/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-3:
>     - shard-apl:          NOTRUN -> [SKIP][15] ([fdo#109271]) +44 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-apl7/igt@gem_pxp@reject-modify-context-protection-off-3.html
> 
>   * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-apl7/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@dp-hpd-with-enabled-mode:
>     - shard-apl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [fdo#111827])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-apl7/igt@kms_chamelium@dp-hpd-with-enabled-mode.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][18] -> [FAIL][19] ([i915#2122])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12144/shard-glk9/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-hdmi-a1-hdmi-a2.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-glk9/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][20] ([i915#2587] / [i915#2672]) +3 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][21] ([i915#2672]) +2 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-apl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#658])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-apl7/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@nouveau_crc@pipe-b-ctx-flip-detection:
>     - shard-glk:          NOTRUN -> [SKIP][23] ([fdo#109271]) +1 similar issue
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-glk6/igt@nouveau_crc@pipe-b-ctx-flip-detection.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-apl:          [PASS][24] -> [DMESG-WARN][25] ([i915#180])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12144/shard-apl3/igt@perf_pmu@rc6-suspend.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-apl1/igt@perf_pmu@rc6-suspend.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_busy@close-race:
>     - shard-glk:          [TIMEOUT][26] ([i915#6016]) -> [PASS][27]
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12144/shard-glk2/igt@gem_busy@close-race.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-glk6/igt@gem_busy@close-race.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-iclb:         [SKIP][28] ([i915#4525]) -> [PASS][29]
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12144/shard-iclb5/igt@gem_exec_balancer@parallel.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-iclb4/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-glk:          [FAIL][30] ([i915#2842]) -> [PASS][31]
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12144/shard-glk3/igt@gem_exec_fair@basic-none-vip@rcs0.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-glk5/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_schedule@wide@rcs0:
>     - {shard-tglu}:       [INCOMPLETE][32] ([i915#6772]) -> [PASS][33]
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12144/shard-tglu-1/igt@gem_exec_schedule@wide@rcs0.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-tglu-4/igt@gem_exec_schedule@wide@rcs0.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [SKIP][34] ([i915#4281]) -> [PASS][35]
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12144/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-iclb7/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_rps@engine-order:
>     - shard-apl:          [FAIL][36] ([i915#6537]) -> [PASS][37]
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12144/shard-apl4/igt@i915_pm_rps@engine-order.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-apl8/igt@i915_pm_rps@engine-order.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
>     - shard-apl:          [DMESG-WARN][38] ([i915#180]) -> [PASS][39] +1 similar issue
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12144/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
> 
>   * igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-2:
>     - shard-glk:          [FAIL][40] ([i915#1036] / [i915#1888]) -> [PASS][41]
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12144/shard-glk3/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-2.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-glk5/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-2.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-apl:          [FAIL][42] ([i915#5639]) -> [PASS][43]
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12144/shard-apl6/igt@perf@polling-parameterized.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-apl3/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-tglb:         [FAIL][44] ([i915#2876]) -> [FAIL][45] ([i915#2842])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12144/shard-tglb6/igt@gem_exec_fair@basic-pace@bcs0.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-tglb3/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][46], [FAIL][47], [FAIL][48], [FAIL][49]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6599]) -> ([FAIL][50], [FAIL][51]) ([i915#3002] / [i915#4312] / [i915#5257] / [i915#6599])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12144/shard-apl6/igt@runner@aborted.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12144/shard-apl1/igt@runner@aborted.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12144/shard-apl3/igt@runner@aborted.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12144/shard-apl8/igt@runner@aborted.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-apl2/igt@runner@aborted.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/shard-apl1/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1036]: https://gitlab.freedesktop.org/drm/intel/issues/1036
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2876]: https://gitlab.freedesktop.org/drm/intel/issues/2876
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#6016]: https://gitlab.freedesktop.org/drm/intel/issues/6016
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
>   [i915#6474]: https://gitlab.freedesktop.org/drm/intel/issues/6474
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599
>   [i915#6772]: https://gitlab.freedesktop.org/drm/intel/issues/6772
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12144 -> Patchwork_108627v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12144: 55937d402fd885fe101cdd028dcc48df6d7f6b35 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6656: 24100c4e181c50e3678aeca9c641b8a43555ad73 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_108627v1: 55937d402fd885fe101cdd028dcc48df6d7f6b35 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108627v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
