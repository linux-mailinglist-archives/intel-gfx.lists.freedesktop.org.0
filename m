Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A533162FA70
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 17:38:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 008B510E777;
	Fri, 18 Nov 2022 16:38:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB52110E777
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 16:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668789528; x=1700325528;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=pPA1ft3JMaFe/gxRu7W6vjx5kety99bK8ayZwJJqAwo=;
 b=QrZblV9q9uevw+JF8kI00so9WtTTNte1ixQW8ABwIVN1VvJnFaekbwqw
 3f0sF57E9KUyLoMwyIvddwLlLsvtci+wOgktSsXBRuhWYITdJSL1KTTP9
 sirw6SGlY3TtHlufF+sWZJKlkfXIXw/vz5MNQqiyvbsD1Fq5Jvnotx/l/
 4YFJ8ou+gAfTpnssGB5+bELkURiIVix1Rf1B86gm74uXNiZXj0VscnFiQ
 oHBvP+H/MoE6G0dGPScTywGL9aNXcRhB7NJtQ773+PXs/RFezy20D6hSI
 t/YvREBNfG5CDVw0IC7bYiumogxtQoFVDvMF0N3/CykWeWfvWKAAugact Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="314326786"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="314326786"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 08:38:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="729283445"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="729283445"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Nov 2022 08:38:47 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 08:38:46 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 08:38:45 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 18 Nov 2022 08:38:45 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 18 Nov 2022 08:38:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L3G816RB/SqIkzlzQWUqGwnbzPdau50HayXtL9GkKEycKDNcbEgkoHDhpjmHGQG1pAL5W+6fVA4Tus8xRjaSL+WznzVb/b5Lk77XaAQfY1ESnqDNsS0oW6MT7kZSKpuU08+GFtrsVGlSGXHyUwsV3Xuf/16HUwk52eBU9xr72kbTvpXzdl8MpGtnJj+8skvjYVw1ms5PyOlANPzy5hny4UURx2XOYPPeShK1N1QiwG55Muv0sBm7w84AfQ6UmBaLPd+1/CSiYiRuGxlyqLnS8bDHTD3Qo1IFlZj0sE2LTWirfjxZf+XrtBAQQ/OpSyGFTVAetH1DE+stndWbW1g1/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XZbgAuHTejRjU1kjeg3dfacKfC/awvf2XZHt2fZ8yLk=;
 b=Un5Gzww3lDyNVEuWy6xQggqjcGemjb4CD7BPmtKilQ03OCD/31jgEXszsnH+S2pMpTbcLa/zCyryGbSIZP3s7G5DQo5seAVyNo2zCnINPqYjYd+B4lyX+m75t+h9dhN7m7kBjDurBZWbTphWGiuZ8h8Jzby377xhoHqvvXS90CG2dQV3tu2R5eH6WOBxYrwPe4mktadJ6MizIgXGrqPZyfJ/EW/s8Sgedsa3D3VXMnx34G/7hgSBPzynjLX7DgQM5rrl4VIul5ilcqf5vVXCoNgM0L9ussYFkpYP4viVD1GVS/JkJcK2SRsRHZpDp/zZ7Xy8S6TmVGxCHTNZekNZGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by PH0PR11MB5612.namprd11.prod.outlook.com (2603:10b6:510:e7::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.19; Fri, 18 Nov
 2022 16:38:42 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e%7]) with mapi id 15.20.5834.009; Fri, 18 Nov 2022
 16:38:42 +0000
Date: Fri, 18 Nov 2022 08:38:39 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y3e1D0ym0gvt1lZB@mdroper-desk1.amr.corp.intel.com>
References: <20221117214132.152061-1-matthew.s.atwood@intel.com>
 <166878208226.25644.16923282059674137719@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166878208226.25644.16923282059674137719@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR03CA0189.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::14) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|PH0PR11MB5612:EE_
X-MS-Office365-Filtering-Correlation-Id: ff272bde-45d9-4ba7-22c6-08dac9835a79
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xk0YidOLYcnu6u5g2pdLJcY5uja3ucfQP2fpkxFXTst4iedivXq3XZC4yS7xCyDkWBjble8tUMciPmH82xciXrpumi5KyxQ9ki0E8KMbobPX7YdtSCRzk+sfvtb/RKDW38/uWw7rpU+nIFga9A8SHEwVRN/iF380J2AipAN8HynkQwWShv8Lh7Cw//PyP+337TP1Cc/msgsm0fDeoxZPy3tVN4Bb914XAJuBptwlCnwgP09GuzQExDJ9tTfh8jD3VAXJ41ht4UpkbCseElzGH6jvC8o86DcOTAw8i0xt4VQUEZ1rfkXSEUWkalVPCQk/JOk/cbcv7S0BoM0KVd7UdFthDgzltcl9MAcpNxV3hnZ3Tay2w0WQXFASQN4j6XXk6i8GR29XMbJgCMQJC1mzhZqCeUG/o9lAqm6ujAeFqI38+FxcCp0QmGjmQ9VV0fmmvPf5rRGiVsE4A1fxptFuHgCUa9wBgF1vz3qmdOMPQ98geN4EQM/Y0ouxTgJ3m8hWjPRLKwpit4auhmUX8jpl7tbuy/vuPAvgf8sNVp+QxYzyLyKIo5kOJVRs/fJyhn0GieZDiieju1cmPK4G6ISs2k/5ZkT6qgM1Oz+ZP9rv9Fdj7A0AlMgMTWpKCn4Ypsv+NbY6AwJtk3P8dClj8AHwtrrmEIQMTbrvHVmoPUNWqmzo/0O1i4qTMTXx68USw/LX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(396003)(376002)(39860400002)(346002)(451199015)(6512007)(6916009)(966005)(41300700001)(86362001)(8936002)(66476007)(6486002)(2906002)(5660300002)(66556008)(30864003)(4326008)(316002)(66946007)(6506007)(186003)(107886003)(6666004)(26005)(83380400001)(478600001)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QqNzFIiD8iUDdgb7qHack8yFtxhz5yEZHPcD9E5B5MdvU8qSXulFVMk7r+Hn?=
 =?us-ascii?Q?94z3irRWqjiNWi74PCAe3M/Qav3bTfMSlL+VfAQVv8106TzICXmulUctbBOs?=
 =?us-ascii?Q?T+XErj3kcwBOKijB/caTHqy10ZLwKVpW3CorSnGvR61kT9tnf1408T/jug+9?=
 =?us-ascii?Q?k6Iabjpje1urgJZvJfPmBX52jM2gnEj4ncYKgKg44/ySfVlg1dgkR8stdQOq?=
 =?us-ascii?Q?ktZRx80ZdIbQ2H/wSv2O8lAJKElfUYgeuig+Uv2wYDgS9hM8J3EfeQqcrIOA?=
 =?us-ascii?Q?HeULld/99yz086NIXhxtyzeh65LPIX/Q4+TwcURWFukfL2nAVYzZQ9YKizxt?=
 =?us-ascii?Q?9qy57FiP0d3FDGhUdnXLLuYx2CQ7083Mt+BwKLPVJJDt70tbl9nfh+eeJkpX?=
 =?us-ascii?Q?GICdKZ8JCdFErHzb/atZe5baV93Kb4i5T71pJBPCkQiwgHAU6NRFcZvS5g3p?=
 =?us-ascii?Q?Z095zxXAnH+gbirNQwQzsfo19rimnNCV7yuYPUCWKMXJFE1ZoYzhfFbzxG+l?=
 =?us-ascii?Q?ZYEeDIlslvdDou+dby5qLm0gtQLbJQns82a4LSUW6e9aWaw9iptK9y6cwwzM?=
 =?us-ascii?Q?25ftVuIOS1Ndxcz4LAMzwvzo0HpyIAQVZgq9yp//3LrBH+ePU7nteI0YbxR4?=
 =?us-ascii?Q?hjCTppzQn9gwVmsc8NcFpcLCaWfgh4F9dq1lyJ4QVWMVaLJrIeSADFgSMwkr?=
 =?us-ascii?Q?+q8Ws9Rj6LOKvey8rOpxcxcSLzuwkfpaId767DyaBNvx4HmpVwJ+WBm/82x4?=
 =?us-ascii?Q?k6AiUjra0cRAZRimOu8J9Mb+thdhn52XaL40lWY9YilpCWGbGJWIWeIasLMX?=
 =?us-ascii?Q?LeyTE3vAoY5pe4tl7efToiS2INxXgCORIOexgZPBnslpnT0cNoida6du2h/F?=
 =?us-ascii?Q?WN1x+FQxZc9sWIFJt06rhfGmf2aTKXKNeyEfMDWPe9zzg5o7dVCFa61g38zg?=
 =?us-ascii?Q?8h8pb2qmQUeeVpV2R4XxUqN/RTDr84Hrx5yiTqjmM9VsbGYupa+u4AyA25jc?=
 =?us-ascii?Q?3WC71q4EU5dPTigC4RMcdf/Zn5L/8lL/sSDrUJiOQZipGb84MonEgzlKDr4U?=
 =?us-ascii?Q?MuybuFWT4H/5zO2OEBgUJ20iHSxwHYwDpN86w1YwGOBjM1mEWDmdWLInJLi2?=
 =?us-ascii?Q?TWMvf/Vjfp4+nYbWMK0t4VlUW1dTI9+SQ+O4shp78pPaxgrzeAocQtyWfD/4?=
 =?us-ascii?Q?DSehDwjO75XTW66V5YJPZ8Aj7E53PDjRpTaoJsQfJsU5+3dk4SZUvRwioEe2?=
 =?us-ascii?Q?/MloyEa6ldhzM/SFPy5FI+uyLO4xUtAZuolERik12BpIPh+q/6Xu+D/IrCab?=
 =?us-ascii?Q?6Ua13CQQZiCsPUCrWeeYhzwx7H82tfFTBynr1NMpbJWwwY1akphD4oYUQNgR?=
 =?us-ascii?Q?jKk3hJ/Fl3qH6TjGMAyNkbIol2XuGRJJGVvDBy/Pk402LBS1ygtNfdcU5MVr?=
 =?us-ascii?Q?y0jYOpnCq8As2ZYJvaOQuWUKKHb5HgHgWrcNKz2VLzocQFXft7YdvtZFRw47?=
 =?us-ascii?Q?ERM8vti0p9PpxQR+UaeAGjs4+8e6E4CaD5rGia8I61oBw6RiCfQqFEtSLm3v?=
 =?us-ascii?Q?LTTm+0ga8tSIEErxEcFcuYzqcqEQVstqzmuaaX4KKI6axR7egCY4UDlUgwa3?=
 =?us-ascii?Q?dw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ff272bde-45d9-4ba7-22c6-08dac9835a79
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2022 16:38:42.4633 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bFvKmcj7AiPC+x+P8WfVBZzfAemADytp/n0Cp/dQQs6XATtA98yg3Zq9mF1MfK2URMusTTrnyN3iK4KjaSyburOG1KAYSyIZzDck6RRoqcI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5612
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogIHN1Y2Nlc3MgZm9yIGRy?=
 =?utf-8?q?m/i915/rpl-p=3A_Add_stepping_info?=
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

On Fri, Nov 18, 2022 at 02:34:42PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/rpl-p: Add stepping info
> URL   : https://patchwork.freedesktop.org/series/111041/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12396_full -> Patchwork_111041v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-next.  Thanks for the patch.


Matt

> 
>   
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_111041v1_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_cursor_legacy@single-bo@all-pipes:
>     - {shard-rkl}:        [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-3/igt@kms_cursor_legacy@single-bo@all-pipes.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-rkl-3/igt@kms_cursor_legacy@single-bo@all-pipes.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_111041v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ccs@ctrl-surf-copy-new-ctx:
>     - shard-skl:          NOTRUN -> [SKIP][3] ([fdo#109271]) +144 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-skl4/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-iclb:         NOTRUN -> [SKIP][4] ([i915#6335])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-iclb3/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#4525])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#2842])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#2842])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-glk5/igt@gem_exec_fair@basic-none@vcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-glk3/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][11] -> [SKIP][12] ([i915#2190])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-tglb5/igt@gem_huc_copy@huc-copy.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-tglb7/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-apl:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-apl3/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-skl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-skl3/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_tiled_wb:
>     - shard-skl:          NOTRUN -> [TIMEOUT][15] ([i915#6990])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-skl3/igt@gem_tiled_wb.html
> 
>   * igt@gen9_exec_parse@unaligned-jump:
>     - shard-iclb:         NOTRUN -> [SKIP][16] ([i915#2856])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-iclb3/igt@gen9_exec_parse@unaligned-jump.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
>     - shard-skl:          NOTRUN -> [FAIL][17] ([i915#7036]) +1 similar issue
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-skl1/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
> 
>   * igt@i915_pm_rpm@dpms-non-lpsp:
>     - shard-iclb:         NOTRUN -> [SKIP][18] ([fdo#110892])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-iclb3/igt@i915_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@i915_query@query-topology-unsupported:
>     - shard-iclb:         NOTRUN -> [SKIP][19] ([fdo#109302])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-iclb3/igt@i915_query@query-topology-unsupported.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-tglb:         [PASS][20] -> [DMESG-WARN][21] ([i915#5591])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-tglb3/igt@i915_selftest@live@hangcheck.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-tglb8/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][22] ([fdo#110725] / [fdo#111614])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-iclb3/igt@kms_big_fb@linear-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][23] ([fdo#110723])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-iclb3/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-basic-4_tiled_dg2_rc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][24] ([fdo#109278]) +3 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-iclb3/igt@kms_ccs@pipe-a-crc-primary-basic-4_tiled_dg2_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-apl3/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3886]) +6 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-skl3/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@dp-hpd-enable-disable-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][27] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-iclb3/igt@kms_chamelium@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_chamelium@hdmi-crc-multiple:
>     - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-skl1/igt@kms_chamelium@hdmi-crc-multiple.html
> 
>   * igt@kms_chamelium@vga-hpd-fast:
>     - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-apl3/igt@kms_chamelium@vga-hpd-fast.html
> 
>   * igt@kms_color@ctm-0-25@pipe-b-edp-1:
>     - shard-iclb:         NOTRUN -> [FAIL][30] ([i915#315] / [i915#6946]) +2 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-iclb3/igt@kms_color@ctm-0-25@pipe-b-edp-1.html
> 
>   * igt@kms_content_protection@atomic@pipe-a-dp-1:
>     - shard-apl:          NOTRUN -> [TIMEOUT][31] ([i915#7173])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-apl3/igt@kms_content_protection@atomic@pipe-a-dp-1.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1:
>     - shard-apl:          [PASS][32] -> [DMESG-WARN][33] ([i915#180])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-apl8/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-apl6/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>     - shard-apl:          [PASS][34] -> [FAIL][35] ([i915#2346])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@varying-size:
>     - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#2346]) +2 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-interruptible:
>     - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#109274]) +1 similar issue
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-iclb3/igt@kms_flip@2x-flip-vs-panning-interruptible.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#79])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-edp1:
>     - shard-tglb:         [PASS][41] -> [INCOMPLETE][42] ([i915#2411])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-tglb8/igt@kms_flip@flip-vs-suspend@a-edp1.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-tglb3/igt@kms_flip@flip-vs-suspend@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][43] ([i915#2672]) +4 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][44] ([i915#2587] / [i915#2672]) +3 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][45] ([i915#3555]) +2 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109285])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-iclb3/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109280]) +2 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-iclb3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-edp-1:
>     - shard-iclb:         NOTRUN -> [SKIP][48] ([i915#5176]) +2 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-iclb3/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-a-dp-1:
>     - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271]) +38 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-apl3/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-a-dp-1.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>     - shard-apl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#658])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-apl3/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-skl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#658]) +2 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-skl3/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-iclb1/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#109441]) +1 similar issue
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-skl:          [PASS][55] -> [SKIP][56] ([fdo#109271])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-skl4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-skl4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#2437]) +1 similar issue
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-skl3/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@sysfs_clients@fair-3:
>     - shard-skl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#2994])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-skl1/igt@sysfs_clients@fair-3.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-apl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-apl3/igt@sysfs_clients@recycle.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@feature_discovery@psr1:
>     - {shard-rkl}:        [SKIP][60] ([i915#658]) -> [PASS][61]
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-3/igt@feature_discovery@psr1.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-rkl-6/igt@feature_discovery@psr1.html
> 
>   * igt@gem_ctx_persistence@engines-hang@bcs0:
>     - {shard-rkl}:        [SKIP][62] ([i915#6252]) -> [PASS][63] +1 similar issue
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-rkl-1/igt@gem_ctx_persistence@engines-hang@bcs0.html
> 
>   * igt@gem_eio@reset-stress:
>     - {shard-dg1}:        [FAIL][64] ([i915#5784]) -> [PASS][65]
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-dg1-13/igt@gem_eio@reset-stress.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-dg1-15/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-iclb:         [SKIP][66] ([i915#4525]) -> [PASS][67]
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb3/igt@gem_exec_balancer@parallel-keep-in-fence.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][68] ([i915#2842]) -> [PASS][69]
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-apl:          [FAIL][70] ([i915#2842]) -> [PASS][71]
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-apl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-apl8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>     - {shard-rkl}:        [SKIP][72] ([i915#3281]) -> [PASS][73] +2 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-4/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
> 
>   * igt@gem_exec_whisper@basic-queues-forked:
>     - shard-iclb:         [INCOMPLETE][74] ([i915#6453]) -> [PASS][75]
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb1/igt@gem_exec_whisper@basic-queues-forked.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-iclb3/igt@gem_exec_whisper@basic-queues-forked.html
> 
>   * igt@gem_ppgtt@blt-vs-render-ctx0:
>     - {shard-rkl}:        [FAIL][76] ([i915#3692]) -> [PASS][77]
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-5/igt@gem_ppgtt@blt-vs-render-ctx0.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-rkl-6/igt@gem_ppgtt@blt-vs-render-ctx0.html
> 
>   * igt@gem_pread@bench:
>     - {shard-rkl}:        [SKIP][78] ([i915#3282]) -> [PASS][79] +3 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-4/igt@gem_pread@bench.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-rkl-5/igt@gem_pread@bench.html
> 
>   * igt@gem_spin_batch@user-each:
>     - shard-skl:          [FAIL][80] ([i915#2898]) -> [PASS][81]
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-skl1/igt@gem_spin_batch@user-each.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-skl10/igt@gem_spin_batch@user-each.html
> 
>   * igt@gen9_exec_parse@bb-start-cmd:
>     - {shard-rkl}:        [SKIP][82] ([i915#2527]) -> [PASS][83]
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-4/igt@gen9_exec_parse@bb-start-cmd.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-cmd.html
> 
>   * igt@i915_hangman@gt-engine-error@bcs0:
>     - {shard-rkl}:        [SKIP][84] ([i915#6258]) -> [PASS][85]
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-rkl-1/igt@i915_hangman@gt-engine-error@bcs0.html
> 
>   * igt@i915_pm_backlight@bad-brightness:
>     - {shard-rkl}:        [SKIP][86] ([i915#3012]) -> [PASS][87]
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-3/igt@i915_pm_backlight@bad-brightness.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-rkl-6/igt@i915_pm_backlight@bad-brightness.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - {shard-rkl}:        [SKIP][88] ([i915#3361]) -> [PASS][89]
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-5/igt@i915_pm_dc@dc6-dpms.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-rkl-6/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][90] ([i915#3989] / [i915#454]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
>     - {shard-dg1}:        [FAIL][92] ([i915#3591]) -> [PASS][93] +1 similar issue
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
>     - {shard-rkl}:        [SKIP][94] ([i915#1397]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-apl:          [DMESG-WARN][96] ([i915#180]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-apl2/igt@i915_suspend@forcewake.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-apl3/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
>     - {shard-rkl}:        [SKIP][98] ([i915#1845] / [i915#4098]) -> [PASS][99] +20 similar issues
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-3/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>     - shard-glk:          [FAIL][100] ([i915#2346]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [FAIL][102] ([i915#2122]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
>     - shard-skl:          [FAIL][104] ([i915#79]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - {shard-rkl}:        [SKIP][106] ([i915#1849] / [i915#4098]) -> [PASS][107] +11 similar issues
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_plane@plane-panning-top-left@pipe-a-planes:
>     - {shard-rkl}:        [SKIP][108] ([i915#3558]) -> [PASS][109] +1 similar issue
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-3/igt@kms_plane@plane-panning-top-left@pipe-a-planes.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-rkl-6/igt@kms_plane@plane-panning-top-left@pipe-a-planes.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1:
>     - shard-iclb:         [SKIP][110] ([i915#5235]) -> [PASS][111] +2 similar issues
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-iclb8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
> 
>   * igt@kms_psr@cursor_render:
>     - {shard-rkl}:        [SKIP][112] ([i915#1072]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-5/igt@kms_psr@cursor_render.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-rkl-6/igt@kms_psr@cursor_render.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         [SKIP][114] ([fdo#109441]) -> [PASS][115] +2 similar issues
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb6/igt@kms_psr@psr2_no_drrs.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@perf@gen12-unprivileged-single-ctx-counters:
>     - {shard-rkl}:        [SKIP][116] ([fdo#109289]) -> [PASS][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-5/igt@perf@gen12-unprivileged-single-ctx-counters.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-rkl-4/igt@perf@gen12-unprivileged-single-ctx-counters.html
> 
>   * igt@perf@polling:
>     - {shard-rkl}:        [FAIL][118] ([i915#5639]) -> [PASS][119]
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-rkl-1/igt@perf@polling.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-rkl-3/igt@perf@polling.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@rcs0:
>     - shard-skl:          [FAIL][120] ([i915#1731]) -> [PASS][121]
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-skl9/igt@sysfs_heartbeat_interval@mixed@rcs0.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-skl9/igt@sysfs_heartbeat_interval@mixed@rcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [FAIL][122] ([i915#6117]) -> [SKIP][123] ([i915#4525])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-apl:          [INCOMPLETE][124] ([i915#7248]) -> [WARN][125] ([i915#2658]) +1 similar issue
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-apl1/igt@gem_pread@exhaustion.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-apl7/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-glk:          [INCOMPLETE][126] ([i915#7248]) -> [WARN][127] ([i915#2658])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-glk7/igt@gem_pwrite@basic-exhaustion.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-glk6/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][128] ([i915#2920]) -> [SKIP][129] ([fdo#111068] / [i915#658])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312]) -> ([FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137]) ([fdo#109271] / [i915#3002] / [i915#4312])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-apl2/igt@runner@aborted.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-apl7/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-apl2/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12396/shard-apl2/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-apl2/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-apl1/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-apl2/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/shard-apl6/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
>   [fdo#110892]: https://bugs.freedesktop.org/show_bug.cgi?id=110892
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2898]: https://gitlab.freedesktop.org/drm/intel/issues/2898
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3692]: https://gitlab.freedesktop.org/drm/intel/issues/3692
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4874]: https://gitlab.freedesktop.org/drm/intel/issues/4874
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6355]: https://gitlab.freedesktop.org/drm/intel/issues/6355
>   [i915#6453]: https://gitlab.freedesktop.org/drm/intel/issues/6453
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
>   [i915#6990]: https://gitlab.freedesktop.org/drm/intel/issues/6990
>   [i915#7036]: https://gitlab.freedesktop.org/drm/intel/issues/7036
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
>   [i915#7248]: https://gitlab.freedesktop.org/drm/intel/issues/7248
>   [i915#7276]: https://gitlab.freedesktop.org/drm/intel/issues/7276
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12396 -> Patchwork_111041v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12396: 75ed1f4f7835f178647e3f73910ed4af0944d9ec @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7065: cdc0258a4672b3f1552e4c362ad857ffd792359a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_111041v1: 75ed1f4f7835f178647e3f73910ed4af0944d9ec @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111041v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
