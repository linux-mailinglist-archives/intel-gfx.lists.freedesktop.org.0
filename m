Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B35562D004
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 01:46:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF9AA10E511;
	Thu, 17 Nov 2022 00:46:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FFF110E50C
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 00:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668645970; x=1700181970;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=wRwXXluRJH0meXF89Kdl+CvuYb0zsgKgu+DHddCWNo0=;
 b=HTqc4MxcE5xA0us6BJKzUk4jx55aaMR12Lar49p6w8bHYDYs2Yr9cwc7
 VNU6Xj8/CzPr5HnbpnGnWBVo46Tq1lSD2oZIBhk8XiqJeRzroSdfUjc2l
 sxPUXdSJ7M5nK2KrxUUErr6YKhqAjbJgna+2QSHw1Tp5I7LV70DxzYN8m
 RKM1sNjDkzNWnlCv4DJcM/HUhvrh0VxFlahsZ07lUPoUMvLJvF4k+qHFm
 h464o5qd/tRXUnPjb+6B4sNehGSYLbtXs+7nuAJp7Y1bcmznQCsFQVN4l
 pTWYEib2IeECzAs5AF/Sdq/nlBTTeSGlftlWry3/37kwtFO+zfCMEXkxb g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="398999001"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="398999001"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 16:46:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="703103018"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="703103018"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 16 Nov 2022 16:46:09 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 16 Nov 2022 16:46:09 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 16 Nov 2022 16:46:09 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 16 Nov 2022 16:46:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=InwNis32EyVYLGDmmwQjx4Vddw3rIxmBXxnQN8EOANtQTM5pRutLgyt6EKCbRjlYmDQ4iOSCb/oAHzGhR9ZFYywrE37uFdWFv9ch6nTNS1CG1csMT5E6p+0kE8ZCJqu2e7rqUz9pHGBrwTwdejVvEYgVsfpXcCDwAqhyQ/RPXhbLWddnr93Z99YEQdU4mFVbMtDgPWolQWwjzYgaeMIxv8bB+/H+/zCoMqvo6TGnUT2A6QzFYy/OzZ8C0jV6XfLJJRZ+vfGWQfnNtNZy1gk3GiU1Ob0tDHGlaxl0/lQbOqDoYBuVCzC+rKAkmlZUw0/L24HF4LQcV97PyUXaVXR9Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ubSkhvHF3qer1r+4qkZmkBlSozq+YgYfO10OV3e4FK0=;
 b=P78br73zFlAOnkIdc81jpI2Fp1Wps/UwISVJP6Rg0lqb20hYPvZ0lQ/e4hzUf++CYFufMMLoGkHGGGRabTesSuxaBvtX4UpVdngC+cO4uKJEeDRVkRPHVymy1UX4xyfK4mI/dUXwdcLgUEcQMQTsb/j2crEwiL520WgQTIp2K3lTBgA1Jh6IQK+BiMUPwKOUaiWctmI793wwIrd3OxvT+OagK0O9KN9OHSCBWBvg032GtzF3+wLhie6OMFMLBSQoN0nn5+4gDh+0d+5MR5Ab5wT5z/QKwJXDouoeagpTucRe7HoTzUS+JK57CItd1UsSDf40eYIEV/Z3vZGOe3dSoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by SA1PR11MB6615.namprd11.prod.outlook.com (2603:10b6:806:256::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.13; Thu, 17 Nov
 2022 00:46:07 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e%7]) with mapi id 15.20.5813.018; Thu, 17 Nov 2022
 00:46:06 +0000
Date: Wed, 16 Nov 2022 16:46:04 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y3WETGLUB81ef75r@mdroper-desk1.amr.corp.intel.com>
References: <20221116124735.2493847-1-alexander.usyskin@intel.com>
 <166863536043.29190.1643552093790149246@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166863536043.29190.1643552093790149246@emeril.freedesktop.org>
X-ClientProxiedBy: BY5PR13CA0015.namprd13.prod.outlook.com
 (2603:10b6:a03:180::28) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|SA1PR11MB6615:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d6aa845-658f-4ab6-90bd-08dac8351cb2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9RhOs5fFkeBxUlXnaMOKXNdqGVBfBqYIHbCMNmU/1VAN07NUPC3nRnwiK0EEDSI8B2aWiuh4sTALLtH/5Mnd6V72Mex+OSpSsRIcEjSW1k3L1U3VLgQSfZ4mGq8ZpVbK1lY8LsOXchupd9DxB+V0qRrjbjwiY05+Ktc/f/jlKsXEC9K0CPs84UBNi1EdkkuXzj82R73f0psMPK8Sk0BTDiI+s+FU1JofbFs0QQWlbqSpHWULE/Meja5TpX2GSnNIXD5o3T6lYqwlavmTiayc6gUhVl4OBhG/Xl+hOqT8W/1wn6Y/iFYa+wsVY+2KYfX9rOF3gK1YpnRWLMXnKk7GSFFFxbFDJxMmiJmQhMyh6hjqlBIpLO0uv1ZfTLKWPm6Hr7HBMyU5xO1IJvBXp2RmMqTpbfKDHLfn/0v03Fa6GgOuf4OyB2Neq+4Q1Ucdy3zZDZQeePGg6r6cEJrAcfaWBuQRGzzYXq0SUX6/p8oHFZYg0T9MPMsMu2NifukpeOpAkHaEmzVpBsEXaTWgDw7oEHOAlwNhQdcLqwo4cX4XXGXRz6nZqV3ibb3ClRl/rfEo/X1J0WwwZvtaFdpdccywBmTrdjIksCf02ehdMAvrORm5dqmxsOJ3q6tgrtAx8xlvmfSGY/AIX35e5xL2c2cMfKTiiu1j6WRrZxR2CtJ5pEtT+oAWleClePbN4OnzpY1EEkKIxupIEAfKS5OjrV6bJKiGevR48ok3XifnRw2cnGQl3nyG6h9sKTFjZRAMmagESU5/58sYLmRndZ/jLjJgKw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(136003)(366004)(376002)(346002)(451199015)(107886003)(6486002)(478600001)(6506007)(54906003)(966005)(6916009)(4326008)(186003)(66556008)(26005)(5660300002)(66476007)(66946007)(316002)(8936002)(41300700001)(6512007)(2906002)(83380400001)(86362001)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?h27yNBesuDTEgV5t5ZMegiDcRiBDYh9HsZbsTzPLBHPEfqu2HjdIGRzZCIRQ?=
 =?us-ascii?Q?dl8oFeaCFX8X7aZCdm06ZIZva2uLQRVd/gr+z0kLlQytgJtQp0R1u52qxvOs?=
 =?us-ascii?Q?6wUsoSH7cF8bTRob2UV3wN8LJrg1NFqKL9o7p67cJmhrm8jNWP316ecEhNlh?=
 =?us-ascii?Q?YB2UqfnzpxBYhvQ4GqmLKbj2vQm25ifyJiJYOyv4PsXBXkOWboDkjBlPaFmD?=
 =?us-ascii?Q?eZ8UUJ5OnDhgpkXQ9fdXXsRUE3zxnIUzdvW355LLlPG05e6t3KTUFurDatw9?=
 =?us-ascii?Q?k/8GDMr6T5PzIOEDeQtfReMOquOGzXwzvGhE/NrdI0e5aePam6iBCaq5Zldd?=
 =?us-ascii?Q?0xU2CPVH8S/AawEnoLxzi56g043T4qlcR9E3efLjMhtunN+eDFI8+57ZuXFZ?=
 =?us-ascii?Q?1BwUIYEH58F6t41Kfjj7JGd+nN1gCYV+4RkxKGL/Bmrj9Ne3V+nDqkKzIRUJ?=
 =?us-ascii?Q?da+26MgqhcXDnZsNU54b8AkSTiYmsAbM8467/bzwJ9sXhpHka/vAMdte7j7m?=
 =?us-ascii?Q?Z7X8W3CsYXlHNF3MiDdriwvd+K3VGDqvE1Y7/bYqzghtsT3PxgqgFyVZ253u?=
 =?us-ascii?Q?gs0d8TIMLfjR0hTEbiN0p43Oq+trESneFFyhoLzQdCzepNUD8qc0P0mRBCcB?=
 =?us-ascii?Q?8i2j2iX3nZSIotOu6DYzQM6knV2fujb41AiFJhfjtrAs13aMPHnM9PADY07/?=
 =?us-ascii?Q?BB7JXpN/wCQQUNAVWZ5u0bw2DGgGhPtLAH8F7Y85L8cMr5zxMh/vbs2+w1PF?=
 =?us-ascii?Q?EwK6hJXbAXPVVacHxVk7mgP+T8+QM7PwcQUtT4lVrVuWSGr23KeFKO1WMd++?=
 =?us-ascii?Q?Y+TphivtPBEzGkeSh16uZud5wePRHh7nE0n9kA5+Pey28NGRtYC0BxlZi8z2?=
 =?us-ascii?Q?RKcnSrysRGRnZ3sl8l7ECmkQ1rcN58TuzyrPzUcpEXsHbksItVUqyHk5IJiG?=
 =?us-ascii?Q?V6tP7ZgV4jJ9NAX4MDX9zNyWFCp1TwOliyyxUMU9tPaxo8YFN66+rKbJJFQQ?=
 =?us-ascii?Q?9x1VIDj9YTMbZLhfChxvCicbCDc1CON+YcLCC1FgM5C4GApIwAegK/Ga7ef2?=
 =?us-ascii?Q?cVqyvaiP8g4EXlqmGiRmdtwBUJcmhwez1649sDKmhGNvtYr50W+QADp7YpuI?=
 =?us-ascii?Q?+PckiBjqIYKtjv06ChlehV04FAaTy5I3TtWrDs3VqX3MmtwczqY25hMmli92?=
 =?us-ascii?Q?HDgTnoxokgpf2E1IQpGR66HFpo+tY8gNl/c5KgbkGldjYjph13p2I0E8x0N3?=
 =?us-ascii?Q?UgBgxw4720pkbZWNUYiJu1mUfLPh2E2NUxfG2nTCfha9rDiQyezLrjoMIcgs?=
 =?us-ascii?Q?kXjkD+IUDBVz71RvsRTstahFR7yk5Wf4K1qwYs0+XBABBVMbXmsOHXIuNpHD?=
 =?us-ascii?Q?S1UTHAQM8H5FzOdptElfI7UAJEBdPAFCX+6k8TH2s2eAq0x61yI6xWt/5VSO?=
 =?us-ascii?Q?9SJrF6o7yMPCDf8nCTYybNL7/9EhZjGzkfigiUFu2musNDZ2VmyXTsC6twlg?=
 =?us-ascii?Q?otq13QTuquEcWpLJiWkNhT+KINl0uE8diwzHvjws/d/oVFploIvq0Ce79mJ8?=
 =?us-ascii?Q?/t5dwC3lddpfuJyNnLRCoojGtJ4W/UuuaOo+fsFLCsdHu+iNwtVEj0t8w11u?=
 =?us-ascii?Q?oQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d6aa845-658f-4ab6-90bd-08dac8351cb2
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2022 00:46:06.9132 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5ijiC6v7fsOt3AN7+rhNMWfWgtJ8DOhrRzK5mmN4wTAG5omtIYU3SLadcEPWiCV+nd4er21Uv5xlVuqxpZ+Q8Hl4hkWxWAtSQdvjXcFVpbw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6615
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogIHN1Y2Nlc3MgZm9yIG1l?=
 =?utf-8?q?i=3A_add_timeout_to_send_=28rev3=29?=
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
Cc: Alexander Usyskin <alexander.usyskin@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 16, 2022 at 09:49:20PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: mei: add timeout to send (rev3)
> URL   : https://patchwork.freedesktop.org/series/110495/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12390 -> Patchwork_110495v3
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 

Since this series is expected to resolve one of the remaining blockers
to DG2 force_probe removal, we've temporarily added this to the
topic/core-for-CI branch that gets included in drm-tip to verify it
fully solves the problem across multiple builds.  We can drop it from
the CI branch when this series actually lands (which I believe will
happen via the mei tree) or if we need to replace it with an updated
version of the series.


Matt

>   No regressions found.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110495v3/index.html
> 
> Participating hosts (41 -> 38)
> ------------------------------
> 
>   Additional (1): bat-atsm-1 
>   Missing    (4): bat-kbl-2 bat-jsl-3 bat-dg1-6 bat-dg1-5 
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_110495v3 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - bat-adlp-4:         NOTRUN -> [SKIP][1] ([i915#4613]) +3 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110495v3/bat-adlp-4/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_render_tiled_blits@basic:
>     - fi-apl-guc:         [PASS][2] -> [INCOMPLETE][3] ([i915#7056])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/fi-apl-guc/igt@gem_render_tiled_blits@basic.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110495v3/fi-apl-guc/igt@gem_render_tiled_blits@basic.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - bat-adlp-4:         NOTRUN -> [SKIP][4] ([i915#6621])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110495v3/bat-adlp-4/igt@i915_pm_rps@basic-api.html
> 
>   * igt@kms_chamelium@common-hpd-after-suspend:
>     - fi-hsw-4770:        NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#111827])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110495v3/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html
>     - bat-adlp-4:         NOTRUN -> [SKIP][6] ([fdo#111827])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110495v3/bat-adlp-4/igt@kms_chamelium@common-hpd-after-suspend.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc:
>     - bat-adlp-4:         NOTRUN -> [SKIP][7] ([i915#3546])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110495v3/bat-adlp-4/igt@kms_pipe_crc_basic@suspend-read-crc.html
> 
>   * igt@prime_vgem@basic-userptr:
>     - bat-adlp-4:         NOTRUN -> [SKIP][8] ([fdo#109295] / [i915#3301] / [i915#3708])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110495v3/bat-adlp-4/igt@prime_vgem@basic-userptr.html
> 
>   * igt@prime_vgem@basic-write:
>     - bat-adlp-4:         NOTRUN -> [SKIP][9] ([fdo#109295] / [i915#3291] / [i915#3708]) +2 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110495v3/bat-adlp-4/igt@prime_vgem@basic-write.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_module_load@reload:
>     - {bat-rpls-2}:       [INCOMPLETE][10] ([i915#6434]) -> [PASS][11]
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/bat-rpls-2/igt@i915_module_load@reload.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110495v3/bat-rpls-2/igt@i915_module_load@reload.html
> 
>   * igt@i915_pm_rpm@basic-pci-d3-state:
>     - bat-adlp-4:         [DMESG-WARN][12] ([i915#7077]) -> [PASS][13]
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110495v3/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - fi-hsw-4770:        [INCOMPLETE][14] ([i915#4785]) -> [PASS][15]
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110495v3/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-2:
>     - {bat-dg2-11}:       [FAIL][16] -> [PASS][17]
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12390/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-2.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110495v3/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-2.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
>   [i915#6077]: https://gitlab.freedesktop.org/drm/intel/issues/6077
>   [i915#6078]: https://gitlab.freedesktop.org/drm/intel/issues/6078
>   [i915#6093]: https://gitlab.freedesktop.org/drm/intel/issues/6093
>   [i915#6094]: https://gitlab.freedesktop.org/drm/intel/issues/6094
>   [i915#6106]: https://gitlab.freedesktop.org/drm/intel/issues/6106
>   [i915#6166]: https://gitlab.freedesktop.org/drm/intel/issues/6166
>   [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434
>   [i915#6559]: https://gitlab.freedesktop.org/drm/intel/issues/6559
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
>   [i915#7056]: https://gitlab.freedesktop.org/drm/intel/issues/7056
>   [i915#7077]: https://gitlab.freedesktop.org/drm/intel/issues/7077
>   [i915#7355]: https://gitlab.freedesktop.org/drm/intel/issues/7355
>   [i915#7357]: https://gitlab.freedesktop.org/drm/intel/issues/7357
>   [i915#7358]: https://gitlab.freedesktop.org/drm/intel/issues/7358
>   [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
>   [i915#7535]: https://gitlab.freedesktop.org/drm/intel/issues/7535
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12390 -> Patchwork_110495v3
> 
>   CI-20190529: 20190529
>   CI_DRM_12390: b7288a4715c68710aadbd63112b699356e8a2b65 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7062: 6539ea5fe17fce683133c45f07fac316593ee1f7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_110495v3: b7288a4715c68710aadbd63112b699356e8a2b65 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> f870a1aab343 mei: bus-fixup: change pxp mode only if message was sent
> 5bb5237469d7 mei: add timeout to send
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110495v3/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
