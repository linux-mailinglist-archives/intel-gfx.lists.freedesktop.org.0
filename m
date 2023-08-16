Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DAA77E9DF
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 21:45:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 328EE10E0FC;
	Wed, 16 Aug 2023 19:45:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3F3B10E0FC
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 19:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692215120; x=1723751120;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=2WnEbZKjiJqDyoCeUBl56Z/fOKj3xdSvqA64p8DT+P0=;
 b=ehcrZibTXmmoU300cU1w9IuMkyBMNiMiSKU3ORL2m177BWjPSiGP0nC1
 MMokUVmogCBUIDfor4GGps09BrdY6yg9u9wtZ8S/8lr84TxVOpVANdIMc
 pELPUmkRgRipsUgmWLJvld1GAthXgS934VasSPkZRsL4dM/f5OTQG8vaD
 vJrEFWT2wDj3ftHxIrNsNOjS4/YBtWr9c525aYG6w7rDvS4ByG+TqIb+v
 TXGnq0FHl3M7M5vDQ/5fR8Gd7Xoh3NnJA9MShSt9SElLrPdwJhmEMnCdu
 ezTz/Um6Mt0gXRYco1FAZdzd6+Egy/Mb4DtR8n12xmvjd+WLjNf98x6gk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="372624873"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="372624873"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 12:45:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="1064961549"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="1064961549"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 16 Aug 2023 12:45:19 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 12:45:19 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 12:45:19 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 12:45:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n4Uwz6Y1qDxuOA2Rrffl7IvyKTi8uN3HPzqztFSa/XjOn4Ap58P3D8zk1sIsLFRJRy2D+Ku3mWsvaPY4nk/IVe9iCbex/K/fAhCqd86TcQ9vtOR/yIZSjJZJEfIp4vGGK5DFZwtVLOTd9amXlGpHFf1xVR6s+WPMdjYG62r98C3T7o+xjIfM6nNrOW6VSx9tMZ/HqCtr26PEcQ6efN8/faTrCaBLR+ONYlRyPxM+RFklt1y99srWD1BswgnJDxNRCh5worL23qF59tfxn8W3EL9Bm8/smRvLBKOGbwInEDgJx9svK7M4alRS2i/bbvpbh0Nm0Qkl3sWmBzh2wl16IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FNurQNowjc9zMtlAbEeu/QkU4KWfoSdW5d8WkExRnQo=;
 b=LNWc/d4cVbVnUMXPXrqPEgvgGb2duPqe860rYGVrKLvIuGb8MosshiNHW4PhzLX+PvU2c5JaH3nagzTDRpgPNQDeUVADLfQTMUc9nj00XN6UYBO4fB/l639tmt9bBmTftsj5aqQ2Z4lVgV2clljIdr8rmmwzcainUVe6BcO5xOHV8YowCq0cn9T0KQ7nx9b0LlHEs0YVU7+qywKFDbShlPrvcP7IfKNV9M2ywBpA6v4aoVK0jsUd7B4S3pOBK+8OTlYG9xqdUm1tm0U7P/6DjBs2iysshswOMXfOvz+eD+lBHvMtQGdP2MW3IEqh3RomX9ZSG6V+JtXmRoFECnWpPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CH3PR11MB8344.namprd11.prod.outlook.com (2603:10b6:610:17f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.22; Wed, 16 Aug
 2023 19:45:15 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6678.025; Wed, 16 Aug 2023
 19:45:15 +0000
Date: Wed, 16 Aug 2023 12:45:12 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20230816194512.GR3375865@mdroper-desk1.amr.corp.intel.com>
References: <20230814131331.69516-1-gustavo.sousa@intel.com>
 <169202885071.19471.5882758284595617873@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <169202885071.19471.5882758284595617873@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR05CA0085.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::26) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CH3PR11MB8344:EE_
X-MS-Office365-Filtering-Correlation-Id: 55376c40-457f-4e1e-d160-08db9e915008
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aKspbnbY7hOAPYJgrEZ49Lg1TaVE4cmo42LjGD7M+gFt5xrA2fv9FRwjTjl+ay8YhRO7Vv0UHO8Gm6sc+x617bG44FLpe95chEa94ZYldw56PS0/OZTh248gYWNqG9TvLsiNc7YB6i5tL4+F33b/H4WlWhIzy0nlqXfg/IULq4ega0R6yfCBaByjnNyInMsRDAerZfHuuLdf0nM+VU8lAj4cB5idCR380zAZvyO5qpG7hwuccy45hJDQFYp629mLnMnu2MdUIuJ/nn24/51HJeG9JOkyZGhNpqGWPQRwPQGMDmZAPnN47cVgQFt896XZYGgIQBq62qBiM6Q4q9xCg84BJA54WtJGmDIP9OhlXsKMJLDBMWoLHJzEpMNMR0mId66lunIWPbCUED1Q+aGT4BCWswbIRH1tc3G4CqZM2tj+aTefauCF+SFuwr6emk5ENawT7RwZ5HhU7k1C/nenSn7uAFanPTXxlMLMgXXGFWod3qdRH4VdAAJn20fIg9rFDM2Ho8dJigCnXLXYaFVz55r3qvBncB+LPPM6ZvbvZkzx6w+Uj0jx34398hsapMKL
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(396003)(346002)(39860400002)(376002)(1800799009)(451199024)(186009)(2906002)(83380400001)(86362001)(478600001)(6506007)(107886003)(6486002)(6666004)(1076003)(33656002)(6512007)(26005)(966005)(5660300002)(41300700001)(316002)(66946007)(66556008)(66476007)(6916009)(8936002)(4326008)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sHfUNVCP3ECERvpps76pvIqwZxF+jtKYE0wtoQgdtbx7UHvodfJdt8WjhVMc?=
 =?us-ascii?Q?vrG9TFsCaJKDWC6qCffFnULFKwj5X03hdPa+a6nfPIF63Lf4QxP9B2Au9Bno?=
 =?us-ascii?Q?MmNKWW9zfglHJUF2HZLO86pPzbRR/qLhXddh9m2yLiKzItrkHWbONpX2aZDg?=
 =?us-ascii?Q?eKqPEuiJldgBNe+yCkMNFdoWqI8zcuvYd99y6GH+keCkIyxLHMM3/GR4UZx8?=
 =?us-ascii?Q?881gB2af8qBZI11RWVezBCPVmd0VbUShv27kCz1H/uvaz03Rsf9+WtkRJ7Xg?=
 =?us-ascii?Q?mV6CkD0IBsjwYeuH7nlxxygNemG/3wb4VEv3TtJ0FcY/ihKqbGVMt4a+DZs/?=
 =?us-ascii?Q?oE6XFDZItBDoqTNz0QzaE5xnT+gc0QNJiJDZBaxvYyLQiASIkdZZD28Z2XYV?=
 =?us-ascii?Q?4qOJvaVbVjNoTt1laQDVes7ZR1erhEjzIgc4n2cBp/A0fIS/UEIlDnig+xoo?=
 =?us-ascii?Q?1XpSXjbrUPn6Rst8k3Dsy20nPZx7O7WY/iXwydibXlGMx9zMMMMDGb2IDK7l?=
 =?us-ascii?Q?PUAn+FDykWEeNEeBZWQP8p2qQHO1rJvric7jTODe6b1IKSr6uKTYhRJSUVwB?=
 =?us-ascii?Q?clkiw1yB6y8gEmcOChLcFWn2dZhFxfEaSYeYWMtYxV9jzjDUltDIxtQb6XUZ?=
 =?us-ascii?Q?bWeFmUvoY7wqBf6AV/ixX9BJCJJ/CRmmAHMMaMrVpUjnMxA769RRXSQ+fjnp?=
 =?us-ascii?Q?jXm1qjiTejDHo+apN+WZSWGf9bH+bCGgDGw8t84AsLvCB1qMMolzNrJRZGTo?=
 =?us-ascii?Q?M22mfE3lawhJgmJb8UIdNdfsx1zBqleMsrw64IP63t8Ob5biyY6msd1s24+I?=
 =?us-ascii?Q?nx3T5a4DEXh4eCnkk7+WWu8IM0Hw+fIoBYGKWEQ64LmT1IDscFAlzfhLw1S0?=
 =?us-ascii?Q?KPURz6ZjZehvBOx5LLJ16n95GHKhSIZNI4+muhkzjyZzT0Vf9OkwnuOt99N+?=
 =?us-ascii?Q?CzyMpgigw/Y2ti2UuBnQCmuv0jy119Ce9rZzfqEqna190eavWA8AWw+9zZpw?=
 =?us-ascii?Q?j4/uU5ZF0gROUijO5e/i10F7TEl0cr5e5DcEmAZuCxVIyUAzRpoK5Y6DfvdX?=
 =?us-ascii?Q?5ELLbQRzWaicsfMpUlHgeV5437OCGOq5WJafZpMPL15TILyCZ2Gqb+43JE8b?=
 =?us-ascii?Q?I8m5e7WKMCS7YYi5gwMaEAsvKBDxXucB0zhW2l/lSlGxXGjN1bDuZkXBsGxA?=
 =?us-ascii?Q?viCuVUHzrTIB6Cw7fql3FGl68Gqyj/F3QIw/AXvmqGNpAYnqJ0t1IvA/b4aj?=
 =?us-ascii?Q?9EX/aB0yl+YMjrf34gdOWMePCllUmfZsYke7DzE/kfJKHp0s/sSJJ1C231Ge?=
 =?us-ascii?Q?/+3EqKFudlEAL88RfV5mnEQ/Tu4n+uIMNG3vHG8EjivwhL/MWBPDdG9p+Mal?=
 =?us-ascii?Q?A3DWvJIaURjPhvNfeGlcpkPbzXkeb77pxHZzJxTBlh8IrGppJ2f+iiQYuNu7?=
 =?us-ascii?Q?8Nsv7Chwm75j/zy6uy7yjiJb0EktF8XafJn88l+zBsG1ZIO480NUVQQCTADV?=
 =?us-ascii?Q?R/f5qb1G9ObEX8pjw1/OeIh93qd0RRDzv24cI7C2fLfhgphPriMZ3Lv4JhBC?=
 =?us-ascii?Q?3hYksPEPMdk2uBuCmig9eIb8u/6MA4K1SXPG3kjSfMSafaMXrMEeifdvn811?=
 =?us-ascii?Q?WA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55376c40-457f-4e1e-d160-08db9e915008
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2023 19:45:15.8494 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yGnq8OykZ9d0sq7gIGpJ/Fb3632jy2FP+lBAChlXQh219kkGa7vpO78T9Aq6yj+KoRW7Y/ekoKD3rpfnH1NjSYR8KiiaKT/ltMvBg6QE74M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8344
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRml4?=
 =?utf-8?q?_C10/C20_implementation_w=2Er=2Et=2E_owned_PHY_lanes_=28rev2=29?=
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

On Mon, Aug 14, 2023 at 04:00:50PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Fix C10/C20 implementation w.r.t. owned PHY lanes (rev2)
> URL   : https://patchwork.freedesktop.org/series/121334/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13516 -> Patchwork_121334v2
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_121334v2 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_121334v2, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v2/index.html
> 
> Participating hosts (41 -> 40)
> ------------------------------
> 
>   Missing    (1): fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_121334v2:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - bat-mtlp-6:         [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13516/bat-mtlp-6/igt@core_hotunplug@unbind-rebind.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v2/bat-mtlp-6/igt@core_hotunplug@unbind-rebind.html

Test passed successfully.  Report here seems to be fdo#8862.

> 
>   * igt@i915_pm_rpm@module-reload:
>     - fi-apl-guc:         [PASS][3] -> [DMESG-FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13516/fi-apl-guc/igt@i915_pm_rpm@module-reload.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v2/fi-apl-guc/igt@i915_pm_rpm@module-reload.html

(i915_pm_rpm:5519) CRITICAL: Test assertion failure function assert_drm_connectors_equal, file ../../../usr/src/igt-gpu-tools/tests/i915/i915_pm_rpm.c:802:
(i915_pm_rpm:5519) CRITICAL: Failed assertion: c1->count_modes == c2->count_modes

Seems that the modelists didn't match before/after reload.  There are
also some link training failures in the log, so this might be caused by
a bad cable or something.  Nevertheless, this APL failure would not be
caused by MTL-specific PHY programming changes.

Triggering a re-test since the false positive errors here prevented
shards testing from running.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_121334v2 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_selftest@live@execlists:
>     - fi-bsw-n3050:       [PASS][5] -> [ABORT][6] ([i915#7911] / [i915#7913])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13516/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v2/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
> 
>   * igt@i915_selftest@live@reset:
>     - bat-rpls-1:         [PASS][7] -> [ABORT][8] ([i915#4983] / [i915#7461] / [i915#7981] / [i915#8347] / [i915#8384])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13516/bat-rpls-1/igt@i915_selftest@live@reset.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v2/bat-rpls-1/igt@i915_selftest@live@reset.html
> 
>   * igt@i915_selftest@live@slpc:
>     - bat-rpls-2:         [PASS][9] -> [DMESG-WARN][10] ([i915#6367])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13516/bat-rpls-2/igt@i915_selftest@live@slpc.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v2/bat-rpls-2/igt@i915_selftest@live@slpc.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
>     - bat-dg2-11:         NOTRUN -> [SKIP][11] ([i915#1845] / [i915#5354]) +3 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
> 
>   * igt@kms_psr@sprite_plane_onoff:
>     - bat-rplp-1:         NOTRUN -> [ABORT][12] ([i915#8442] / [i915#8668] / [i915#8712])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v2/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live@guc:
>     - bat-rpls-2:         [DMESG-WARN][13] ([i915#7852]) -> [PASS][14]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13516/bat-rpls-2/igt@i915_selftest@live@guc.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v2/bat-rpls-2/igt@i915_selftest@live@guc.html
> 
>   * igt@i915_selftest@live@migrate:
>     - bat-dg2-11:         [DMESG-WARN][15] ([i915#7699]) -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13516/bat-dg2-11/igt@i915_selftest@live@migrate.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v2/bat-dg2-11/igt@i915_selftest@live@migrate.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_module_load@load:
>     - bat-adlp-11:        [DMESG-WARN][17] ([i915#4423]) -> [ABORT][18] ([i915#4423])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13516/bat-adlp-11/igt@i915_module_load@load.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v2/bat-adlp-11/igt@i915_module_load@load.html
> 
>   * igt@kms_psr@cursor_plane_move:
>     - bat-rplp-1:         [ABORT][19] ([i915#8469] / [i915#8668]) -> [SKIP][20] ([i915#1072])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13516/bat-rplp-1/igt@kms_psr@cursor_plane_move.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v2/bat-rplp-1/igt@kms_psr@cursor_plane_move.html
> 
>   
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
>   [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
>   [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
>   [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
>   [i915#7852]: https://gitlab.freedesktop.org/drm/intel/issues/7852
>   [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
>   [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
>   [i915#7981]: https://gitlab.freedesktop.org/drm/intel/issues/7981
>   [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347
>   [i915#8384]: https://gitlab.freedesktop.org/drm/intel/issues/8384
>   [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
>   [i915#8469]: https://gitlab.freedesktop.org/drm/intel/issues/8469
>   [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
>   [i915#8712]: https://gitlab.freedesktop.org/drm/intel/issues/8712
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13516 -> Patchwork_121334v2
> 
>   CI-20190529: 20190529
>   CI_DRM_13516: d9a24afd3bf9998f0e866c27ae5eb51681b04a25 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7435: b6eaa6bfdc94c94b34ec80f437c4b6125eb19357 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_121334v2: d9a24afd3bf9998f0e866c27ae5eb51681b04a25 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> 4b10cbb907ae drm/i915/cx0: Program vswing only for owned lanes
> 99cc279fb6f2 drm/i915/cx0: Enable/disable TX only for owned PHY lanes
> be6fa8b663fa drm/i915: Simplify intel_cx0_program_phy_lane() with loop
> a450c094af7e drm/i915/cx0: Add intel_cx0_get_owned_lane_mask()
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121334v2/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
