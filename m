Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3B568C3EE
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Feb 2023 17:56:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3605B10E9C4;
	Mon,  6 Feb 2023 16:56:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1683210E9C4
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Feb 2023 16:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675702612; x=1707238612;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=7Vc49kyXGHQCizmxDEim+3jXAcnOewwtRsKxFZSo8/g=;
 b=LsUgXHq5+ymsowH1C4XvXC5y4GnNo8+SyPzSQHSoFtxw/k24E6aWo8Ro
 oQgDWaM3Mti5YGTvZa7DEsGXfbRcoWYTASio5dIdVFXMd1CixcOil5fY9
 ePIggez/qX8QQrWp3HV3pd+BUtIFG6r5oZM+8Woh+0Cvdjyqp4PUDuxwp
 Ahju/5Rdu0rHjdLXW7QrGla4s9r75sMtitGRptEn9ODaulnoDJs6/HWk6
 4nIeALrVoOM0JlIE9loATwIDsUQ5fv2tAJeHVM4rfL6vOD53PNsmPEzky
 xs9dywhppaEPv5MzdtbGW2uCWB0GpjWrUO+ccF4u+1XiM893SdCASf8M7 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="312908095"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="312908095"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 08:56:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="809196996"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="809196996"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 06 Feb 2023 08:56:49 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 6 Feb 2023 08:56:49 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 6 Feb 2023 08:56:48 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 6 Feb 2023 08:56:48 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 6 Feb 2023 08:56:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MrhoAiTly6p8UWAcMfJA16dKo+eIHX3SRagqRm3Qewd2z6so3JGl6ujop5Yn+rpW/BH/l0rkqOtp9UdkkWP7lu5pxWYpm109aIdR5322s0mmeHmHMRAuaQa+OwPnlsA53/jd868FTrYfJCMcmXFiqQEfjlUFmqC3IW0KR/MF+o04hVv1qaZtNDiEhmbJWVNKoAYX8/trdpDLZzHoA0wddWV7YN//Nwki1KA1AoQKJiOOKvF+bIWba/+UVz05c8f4jzvcCm7j09wo+UnJem8oHVRDKwTSUnzz8sQ+uA78QmlQwxlgJ5V+rHUppnqnHj8V9E4img0RXDn2JqEmV2l4Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LzK13M3tlGdrZdDifdWlG2D4g/idOOdkJ0S/hxNr/qM=;
 b=eSPPdXMDc4bIIN9x8SP+8lsoShiWel5JoQYPELqgPFjbbO1aGT5lkP6++7tMVA207kzhYffP1wr5HNmI5dnL2Tum/0LqjdCgE7qQvfN2AaX4D6upH273TMsBEIIZ5CkKssxr/V0R0D/Gpupat6txRX1x1JCwb5kKKdrzQqheznh7jVnWFlrPhUX5YERtsiJH3pSEAyeycbsTer2BPSzR1g1+4tq3U1+lbX79YmbWN0dh+ogjuKNj+/Yuw2BDD/GU6ZINIhHL4mzh4OuGPmA/FSde/02ICVdHzBsgkgGaFVMwKmI16sikD9PenlG7ukkGasXNGtiCGACr5t1enFbm/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 IA1PR11MB7343.namprd11.prod.outlook.com (2603:10b6:208:424::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.31; Mon, 6 Feb
 2023 16:56:41 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%5]) with mapi id 15.20.6064.034; Mon, 6 Feb 2023
 16:56:41 +0000
Date: Mon, 6 Feb 2023 08:56:37 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y+ExReLIUmfI6Dtd@mdroper-desk1.amr.corp.intel.com>
References: <20230201232801.123684-1-matthew.s.atwood@intel.com>
 <167559603623.15106.11066732485019852621@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <167559603623.15106.11066732485019852621@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR03CA0174.namprd03.prod.outlook.com
 (2603:10b6:a03:338::29) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|IA1PR11MB7343:EE_
X-MS-Office365-Filtering-Correlation-Id: 376ab154-8b40-4da2-2b67-08db08631e5d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BEE8DiT5DnDaK+s+xCcOIpALN7ZO8wsVAvclMS7ju2Yfr7kdqjgjQcC4aP4F8K8qCMe1fvdSoLJ9cbvX5DUJkYj+JjAxjJH1pR/CK7jbvY86i4fnbuq/DESPNWqOq/yIv98Y2eYKTSLngzZCj7E0gxJO/oL4fOItWie7fmLIQgzG/YVWtnZYbzuAtxZ1h4GyTC+4ijtlZRR3SQjcDv3FFoVERFaX1krkcJ3eoWIu2CzF3Sh/jowUqwd4qGJFzSXb+Uf9n5cHX0Uyfbxm7WuKY/WPse6iDsEpgZgi+4Pqia+dhRdK6EF9OPJJ/E4gV5wdvjDm/h9gkXSrBxDK7aoCmj4f+iAWvsbqStNgaGRHxPTjFIfIMnEhcit7YgE4GCPJAJKERpp/pbf2IFb1DOWiH92n5v/uXm4mxA2J28Ug6wlU+3SZw4W42jlPl936fzy+H69CCTDUENSyjbmwNwvGuJ79fibCMcZucQWX8sNkJV/BBjMHXeaExYzmUPIS6ba8NFQ4xDdkFT4Y8369KESqToS4Y4v8DaM4zNsgfrvWVB2NbaRtBfWmAvdY93m7LqspvBjJ0Ev4d6rAX542enWA95LYnMqRv6kar6LxehCTY4lUlGksL33pImk1HmJzib9khT1fCJ+sP5ynBT6pVkDBoOyMm4G8I6Dfu4DYXHgE4DueWptwAWEoniRm7fqqbVilXtWFyCVzMG09pKGxAErR9K66zNbeJO1LJUCj9pfDSU4+kM9LwPoDtVtsEpZYZRcB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(136003)(376002)(39860400002)(366004)(396003)(451199018)(86362001)(5660300002)(6512007)(6506007)(26005)(107886003)(6666004)(186003)(478600001)(966005)(6486002)(2906002)(316002)(41300700001)(8936002)(30864003)(66556008)(66476007)(38100700002)(6916009)(66946007)(4326008)(82960400001)(83380400001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?E3JP9Wbk6VhlHZ/zDfgZuE6RXhe73Fj+AOBaXv3x68XhMIsdBeI9uKQELXK4?=
 =?us-ascii?Q?KYWll0XK4RPdgxen1DaNOwo84ylJc5lju/JJJszCeD41fiedeIPtga6SjVQd?=
 =?us-ascii?Q?53uut1pEnr4y3M/xeDxhuUIwRjydufsYmpcpZrBK7evnMxV13+NcmMXzAwfD?=
 =?us-ascii?Q?zRS0LooSetuEy5PMzIZhGDniiOu1fESNyTzPwVdbMIMIm5jJX0tg1wF6cmH/?=
 =?us-ascii?Q?b4AuWK9NqQGMmxlatzpfqSz+aUnFqN7IHThhnn/EFX8SGsxU63pe9uBekuNS?=
 =?us-ascii?Q?NIzxtWR0XYUSpxM78dik0gx2dmSJj/zxIQK9YMfsw3GJMxsgJ6CEczQcrgGs?=
 =?us-ascii?Q?3r6zZPK7B4IztICrH3Wyl1wkcBA5lexu+0/YgTcd0mzmTXxfuqO/EBXgHFA7?=
 =?us-ascii?Q?hTIMbjG5489VAzb00QMePNx7VVEz/RMcCI4/qlczwpI99YPISIMbQRp/5qbU?=
 =?us-ascii?Q?V8hiKqVGZx1lUb2JjHTujcNrXIZQcQsLFoSMgx28neIW9UjUwjDO2HlANi63?=
 =?us-ascii?Q?SHN25qJsNwSmBm41mxMRTTm+bgpuop9kJrKa5PXBsblAS31NjXMEd7740I0Z?=
 =?us-ascii?Q?2QFgwA+i2+wPSYx0xFloikPNUADAn6osOAqi5/qwLcLuwKWZvFEpWerQSRwv?=
 =?us-ascii?Q?zRCBVLm6Odp1ybNiWF5BIY3wi7l4fqbAjzXP9Yis8YgQh6FgZ4MhA2i5sV2f?=
 =?us-ascii?Q?VZXI/JD5O2WVyfszNk52ro0TMKkPk6KGn4WNr9oGlIwBn5xw061PU+ARQKB1?=
 =?us-ascii?Q?6zuDRJ1R6V4KPd97rEjbBLIFHxm47/p4AvtrntOw63E8/RDYtCLJ+HkRr9rw?=
 =?us-ascii?Q?G51/sf2DbuD0MHBibNJCxgwJR3hZ+Sh6ruTKlBoOCe/wrV/uGzLK9quvsjoN?=
 =?us-ascii?Q?Cfy0Lozpi/+ubnIrstxznPRUKQ+z13pQC8WxyicI+/4NadX7ukIQ3aVg6FS2?=
 =?us-ascii?Q?vBXru4rGkFfaObYDFnVDLGfHM4MKOU/o2Np5fZfyZhL4X4kZciOo467NVhjO?=
 =?us-ascii?Q?I+kQ8UT/5447kpoSNkREoCwtE1MpHDhNfo2jnC8+K7j2F/HMpqus4Pukmmn0?=
 =?us-ascii?Q?KW3OH1RgvK9aB7pLFx8IQaQ110O9QIaGqDhCo6Zjtzw8+d+UGMwA8+g/CBxH?=
 =?us-ascii?Q?32eGrNqTgJujwFdcZv+d3dJkmk6zzvhHMLlxqCQAWIqFsGijofQSRckYlBAF?=
 =?us-ascii?Q?H6IUrPbZ8gzSsk+HXcwByYpaJUL+I7QcqiSwgjvpNRfs201CKgN6hCdrAs66?=
 =?us-ascii?Q?M1MBiGy4iXhtAf1990teOJHKD9LoCyCvZMkvGRwi9qEUVVksbKGoTLGwe9yQ?=
 =?us-ascii?Q?krRobABRyPJHRfHcSZHvir3V71Z0iQpGA4Keb305J8fDQpSfuQvusfM24ZBU?=
 =?us-ascii?Q?Vq1m3SMemButCTJybL9CHCy5sAr6bClwj97RUHpqFumb3h6mjivDTpcLzdgW?=
 =?us-ascii?Q?l74LlwTco3eqfXM+wxxHN5uUMzPfGPSOBvrVOAMePyjEw+3zphA5soYiSHwv?=
 =?us-ascii?Q?qpBjiOvTFx8TEx14q3bW5PntfUf4NAbDGp+z1ikrPZM/DA8Mbil6mC6w9yqi?=
 =?us-ascii?Q?+M3zWembvm3oSap9mFLEnmfwIr6Ot4tN5U2ZvcxX+XfXS7dfXePVTUI7XTuJ?=
 =?us-ascii?Q?Ng=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 376ab154-8b40-4da2-2b67-08db08631e5d
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2023 16:56:40.9608 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MhyrOUxDdpG7t75Y2z7X/XlRxkh1eCIZO9fKgbx3eTynkmTT3bv0y7D14NhXcWgpr1lZ5dqOfFubXitHFr0bri+fo6EEad8aY2n80sRPILo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7343
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_memory_leaks_in_scatterlist_=28rev2=29?=
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

On Sun, Feb 05, 2023 at 11:20:36AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Fix memory leaks in scatterlist (rev2)
> URL   : https://patchwork.freedesktop.org/series/113576/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12692_full -> Patchwork_113576v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**

Applied to drm-intel-next.  Thanks for the patch and review.


Matt

> 
>   No regressions found.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/index.html
> 
> Participating hosts (9 -> 10)
> ------------------------------
> 
>   Additional (1): shard-rkl0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_113576v2_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@v3d/v3d_submit_cl@multi-and-single-sync}:
>     - {shard-dg1}:        NOTRUN -> [SKIP][1] +6 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/shard-dg1-16/igt@v3d/v3d_submit_cl@multi-and-single-sync.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_113576v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_fair@basic-none@rcs0:
>     - shard-glk:          [PASS][2] -> [FAIL][3] ([i915#2842])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12692/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/shard-glk7/igt@gem_exec_fair@basic-none@rcs0.html
> 
>   * igt@gen7_exec_parse@basic-offset:
>     - shard-glk:          NOTRUN -> [SKIP][4] ([fdo#109271]) +14 similar issues
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/shard-glk8/igt@gen7_exec_parse@basic-offset.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [PASS][5] -> [ABORT][6] ([i915#5566])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12692/shard-glk5/igt@gen9_exec_parse@allowed-single.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/shard-glk2/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:
>     - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#79])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12692/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-glk:          NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#658])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/shard-glk8/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-glk:          NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#2437])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/shard-glk8/igt@kms_writeback@writeback-fb-id.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@legacy-engines-hang@blt:
>     - {shard-rkl}:        [SKIP][11] ([i915#6252]) -> [PASS][12]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12692/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/shard-rkl-2/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
> 
>   * igt@gem_exec_capture@pi@vcs0:
>     - {shard-rkl}:        [ABORT][13] -> [PASS][14]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12692/shard-rkl-1/igt@gem_exec_capture@pi@vcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/shard-rkl-2/igt@gem_exec_capture@pi@vcs0.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [FAIL][15] ([i915#2846]) -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12692/shard-glk1/igt@gem_exec_fair@basic-deadline.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/shard-glk3/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - {shard-rkl}:        [FAIL][17] ([i915#2842]) -> [PASS][18]
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12692/shard-rkl-3/igt@gem_exec_fair@basic-none-vip@rcs0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/shard-rkl-5/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-wc-read-noreloc:
>     - {shard-rkl}:        [SKIP][19] ([i915#3281]) -> [PASS][20] +10 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12692/shard-rkl-2/igt@gem_exec_reloc@basic-wc-read-noreloc.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/shard-rkl-5/igt@gem_exec_reloc@basic-wc-read-noreloc.html
> 
>   * igt@gem_tiled_partial_pwrite_pread@writes:
>     - {shard-rkl}:        [SKIP][21] ([i915#3282]) -> [PASS][22] +2 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12692/shard-rkl-2/igt@gem_tiled_partial_pwrite_pread@writes.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/shard-rkl-5/igt@gem_tiled_partial_pwrite_pread@writes.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - {shard-rkl}:        [SKIP][23] ([i915#2527]) -> [PASS][24] +2 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12692/shard-rkl-2/igt@gen9_exec_parse@bb-chained.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/shard-rkl-5/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - {shard-rkl}:        [SKIP][25] ([i915#3361]) -> [PASS][26]
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12692/shard-rkl-5/igt@i915_pm_dc@dc9-dpms.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/shard-rkl-6/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp:
>     - {shard-rkl}:        [SKIP][27] ([i915#1397]) -> [PASS][28]
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12692/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html
> 
>   * {igt@i915_power@sanity}:
>     - {shard-rkl}:        [SKIP][29] ([i915#7984]) -> [PASS][30]
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12692/shard-rkl-3/igt@i915_power@sanity.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/shard-rkl-5/igt@i915_power@sanity.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
>     - {shard-rkl}:        [SKIP][31] ([i915#1845] / [i915#4098]) -> [PASS][32] +5 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12692/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>     - shard-glk:          [FAIL][33] ([i915#2346]) -> [PASS][34]
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12692/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - {shard-rkl}:        [SKIP][35] ([fdo#110189] / [i915#3955]) -> [PASS][36]
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12692/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - {shard-rkl}:        [SKIP][37] ([i915#1849] / [i915#4098]) -> [PASS][38] +6 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12692/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt:
>     - {shard-tglu}:       [SKIP][39] ([i915#1849]) -> [PASS][40] +1 similar issue
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12692/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt.html
> 
>   * igt@kms_psr@sprite_render:
>     - {shard-rkl}:        [SKIP][41] ([i915#1072]) -> [PASS][42]
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12692/shard-rkl-5/igt@kms_psr@sprite_render.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/shard-rkl-6/igt@kms_psr@sprite_render.html
> 
>   * igt@kms_universal_plane@universal-plane-pipe-c-functional:
>     - {shard-tglu}:       [SKIP][43] ([fdo#109274]) -> [PASS][44] +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12692/shard-tglu-6/igt@kms_universal_plane@universal-plane-pipe-c-functional.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/shard-tglu-1/igt@kms_universal_plane@universal-plane-pipe-c-functional.html
> 
>   * igt@kms_vblank@pipe-a-query-forked:
>     - {shard-tglu}:       [SKIP][45] ([i915#7651]) -> [PASS][46] +11 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12692/shard-tglu-6/igt@kms_vblank@pipe-a-query-forked.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/shard-tglu-1/igt@kms_vblank@pipe-a-query-forked.html
> 
>   * igt@kms_vblank@pipe-c-wait-idle-hang:
>     - {shard-tglu}:       [SKIP][47] ([i915#1845] / [i915#7651]) -> [PASS][48] +4 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12692/shard-tglu-6/igt@kms_vblank@pipe-c-wait-idle-hang.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/shard-tglu-1/igt@kms_vblank@pipe-c-wait-idle-hang.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - {shard-rkl}:        [SKIP][49] ([fdo#109295] / [fdo#111656] / [i915#3708]) -> [PASS][50]
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12692/shard-rkl-3/igt@prime_vgem@coherency-gtt.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/shard-rkl-5/igt@prime_vgem@coherency-gtt.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
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
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
>   [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7330]: https://gitlab.freedesktop.org/drm/intel/issues/7330
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#7949]: https://gitlab.freedesktop.org/drm/intel/issues/7949
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#7984]: https://gitlab.freedesktop.org/drm/intel/issues/7984
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12692 -> Patchwork_113576v2
> 
>   CI-20190529: 20190529
>   CI_DRM_12692: f3800283e8ba9f8e93936a76458e3afa14e38149 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7149: 1c7ea154b625e1fb826f1519b816b4256dd10b62 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_113576v2: f3800283e8ba9f8e93936a76458e3afa14e38149 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113576v2/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
