Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D61679EF4
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 17:40:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73CF010E6C3;
	Tue, 24 Jan 2023 16:40:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69D9A10E6C3
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 16:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674578413; x=1706114413;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=GH2jX2LPYR7PMilf7YeR0Dx+/g7u4g4XwC4kmpSL1Ow=;
 b=m4TAtDPDRSDV8dEd37txgdju8TMv1VCaSBYaX9jAAS9lQrR+6jVwnFAN
 OHcKuIZ5Z5ZwqGObAPjClDo8zYDvWEwco/YkS7tao3lHKWB9Ue1cJcOf1
 6cWrbsFv6KfKm7tiRuHD8hSuvWLVV+8I5QsI5WWCF+aofrkZBT/7QQ4ai
 1MgwuLt3SGjc+DWO2tjfjeEX6GalbdQcZWWqK15Kz2u74Qx9LJDefPdct
 f1QUn8heSvyOtxj8q0gcgnTnqt/IJDgyQb9+cmkeMYfRQDuWtSeBRyOmM
 o3kiQjygo323hU1ZKwQVL3Gn1y4F2qWYv0na6u8VV+gNCzvcsuq2Th2OA A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="412571216"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="412571216"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 08:40:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="692650479"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="692650479"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 24 Jan 2023 08:40:12 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 24 Jan 2023 08:40:11 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 24 Jan 2023 08:40:11 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 24 Jan 2023 08:40:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VH3tvc0qHFgVgKKf9gkXUN4TKpowIcDIZnXMyv2bIPIopKlQUXV4WSoblv7cnwG32RnzFkYt9PXaYVJdsL3043XiEg7X78OPnOFEFSs/g8JuPSj55RmUPOsOII+aHvqZLQcp68V0tTuRehOeE8RSJwiFoJJ8NzoXds7CNTnI6G2MlU3Vm/a58MtCeU1ZHyVoTB5AmP7kW8wxy4K1MWQ3fA/HJh+BTorPNApfK4+kTdoSfgbvgm/Jz5uVfU5nO3gG59dyxxA46eEq7ELuKN034dy/Edgy1cGnV3NLTy+0RGF0nb0Vu8/itG8Clij3zMqc1wbK49xpkAaAYr3FEri/Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U4TV5Ml9DX3rRHeMVPQN3hkiop5e2ooDs4iOrfzZeyc=;
 b=HlMfI1bhsjOwZl1Y1MFHtkg0acj3eJKQ4U0wBxUbmJWt7Mb0SUY5TRbZ7p5VGehn4L3FTaJ5FzdcvPgfNYkSiQmsXdTHFt8kKVsdkGW1DugCq0L/WGPVunxZLZ+VPDfbU+VtzKpl+HQVHj3y5/RQolIBvtt4uae8B77E9cxc87CWkNsnADmGQgsHkbiAKXO+tXn4JUMygmrZTFhm88LW2pIFZ87kJOz/bmpz8gs/JOL4ArwVHekBmeiuairPMPoQutargG6yH/8ZzH+ESwdetFIB/hpmEWBbCxAhpB2QW7fUqzyte53Fx9SwYafBdkK3Z0/P55MsmhKXVonUXoicsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by LV2PR11MB6045.namprd11.prod.outlook.com (2603:10b6:408:17b::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Tue, 24 Jan
 2023 16:40:08 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168%4]) with mapi id 15.20.6002.033; Tue, 24 Jan 2023
 16:40:08 +0000
Date: Tue, 24 Jan 2023 13:39:59 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20230124163959.2fjczxtyfp36laqg@gjsousa-mobl2>
References: <20230123182021.31239-1-gustavo.sousa@intel.com>
 <167450519942.346.5976271983728317044@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <167450519942.346.5976271983728317044@emeril.freedesktop.org>
X-ClientProxiedBy: BY3PR03CA0011.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::16) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|LV2PR11MB6045:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b83d698-7c68-4d9c-a726-08dafe29a6ef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: izPPtfMLiV50WKyayvukhM4OJy+GG6uzvMJacj68KfporkzQcKtv3Xzi6ulhG/eA+3gfE7OK3BJEpoKnW4xn+ucql6Vtl0ckgyF9HdP2iXe+UdJwTv3RsNFyrW5G54ByJQ5HPU1UqksJxe+cMHE/rYfeiUWsC7QhGiHqqx99g+KT9zeAmpbnPRSR1K6lCAQud0hPLRwRTwXxOLEJl1l77GfuXVvNrZOC+LqxO8iuQOcLBk49hOyMHll3yPZpQw2j2jdQf4AJpqNbIHBOJIOgb8wsn2Po/M10uYwftn47HyLXKwAA3El9UbAsfJgp8TDtJB74NzbdnaRnhRBwZ4N+CJzRZRvQmxrAL8xYl+LxOPbjMqLyVUiFHjlBqTLs59y8+p5zEeuRURvj1AnFVJ9rGyEiSzHbr+piIIxh5kA9cns2dtpsulyj5fUpTMpieirDoQ41Fti+8crcdglNS6mtSr6BSwnWRwA+Auswb0LYk7WLjivX1R+C7yppWh/WG8sv+Lnk9uwVZNK/gWjNwpRK9qoAAw0t+IdoSZv1THTaHTK8M0tVm8ux8T00akUI7nbLfkeoNCmXI9RrXGuaWonP3F6OfkQ3uPv2Mfwc2o5qgzZJASQlVOT00/7s7Dn7i3W1it9SLorzNbHyb1voT75F/6LORJHj71GrEdBArtqU/rVDjsAicTk+zPLV+eyOyL3w
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(346002)(39860400002)(396003)(136003)(376002)(366004)(451199015)(33716001)(38100700002)(82960400001)(86362001)(478600001)(316002)(66556008)(966005)(6916009)(4326008)(66476007)(6486002)(54906003)(1076003)(2906002)(6506007)(44832011)(83380400001)(66946007)(6666004)(6512007)(5660300002)(9686003)(41300700001)(26005)(186003)(107886003)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5LXqhTBFYKv2YRtRZcJ0EQyGxKGTrakHpLvrNKi8VMdEDhlTQM6LZ0Zy2yeI?=
 =?us-ascii?Q?4oTTA89HNa7TvcMxZDRRwPJOHkPLOSdSqSONnF5Gn92lkMqE44hgstyIrWyJ?=
 =?us-ascii?Q?ChwumrWupMd//PHyW0gzSurL3NvsRSogk7f0BngWsEaaUVE2p2wSzoETqq7O?=
 =?us-ascii?Q?TqdVhd3mZcMO0I9p3Hkl/J+BJIi6KjG5lZg+hBzRYoc77ERqk1NF9t2iBqil?=
 =?us-ascii?Q?5DmThy7iblQuKgsN7iuMX8cJyQc2EygeuZTYyedj4AzlU2TT8vjbESLSRqou?=
 =?us-ascii?Q?bk+SYqsghNrqSVWPOkFngyqXEP8SZJtLoh79Ijbo5zHgJp553IQlhM3kh3IT?=
 =?us-ascii?Q?54Vo7gNRAHklEpkcYrj1AbT+tVnxgDP0KjrCF6/+fMgVv8vO4aXFS9meIf3m?=
 =?us-ascii?Q?6wiHbGLru+7NTqllmqxAtA4qILojpMZYSLjVdIPrLPM0JOkJqac69rM5rUUj?=
 =?us-ascii?Q?DgmgDiS4MzLljecT7Ijyu8SRrOwFbv9oBtP4ZKPOyNqdqwBPv2lQW2/uOmMu?=
 =?us-ascii?Q?X9+3PUBhBX04vEtK/xoffJYZ2GOjMsmCqlCFnJk1zgrF8f+t1FNMuQ8CcGRt?=
 =?us-ascii?Q?h7Q/Wu8p91MWAHdr+ruVI0Oxkg/XxW/poa4EQZLeH/efqwlpzKw5YWo1T8Ve?=
 =?us-ascii?Q?j+PGsIOJP9f7QtL51eszgElJb9Ho3gn9Qgb6C63El3gZH+QXA6nh8N0BbCtc?=
 =?us-ascii?Q?mxjWTAHltnrS+IthH4RRiYDSU3GozLBw3uGtge2O6+QEhkwwxAi8QjsZZMNh?=
 =?us-ascii?Q?qVjY0LzDPi5/H8HE3GSJQmPPeA/YZo8UND31wnD1zGL5tCGk5+kRyMF4/aMo?=
 =?us-ascii?Q?lKWjRqpih4QBSwmJSVkt874RM19fu5dh6arxGEgZ1H981M74zgkwycExnqol?=
 =?us-ascii?Q?SSaPPUV/SuUfIvdwpnnyaVNbvT8I0EnmGJFkolUO/inYbhiFvMconPdFpfrJ?=
 =?us-ascii?Q?lPDTr/bKe9e6aLsgC7d9tlx3BUg2vb7HTP0PGhmEI0OpIZQq9lWQbytw1g7E?=
 =?us-ascii?Q?iFZO5XEZeYN9R8+SFu8EMXio/YJ7dTfnXwvo1+/C6sykZGjykl5481wEzqkI?=
 =?us-ascii?Q?Ow1ivGaPHfJ1SWdAZk8RqtO1aE3QNGF7Q4srH/TUYKU+3v/dMcEoerFlcjR9?=
 =?us-ascii?Q?ZpSw3Xr5E3Y1is1SX30twSt+oouQqm19tubMMVbrqHU+u8F+OlDhMi5Rnd6s?=
 =?us-ascii?Q?THFZChZvwTrFcmq6SITNk8AZ/Pj6oxoVIHVwwA20fQgzB6P5GgL52oeraaV2?=
 =?us-ascii?Q?dMXWw078axfE7tmWKCvkq0JWli1Wu+ZGcq1IW3fk7kOiPo4OeYroLrFMWTSe?=
 =?us-ascii?Q?7KeeRIRvRDFAleoetKVQrZvnhyuoLBjFOnDdK12zebyMXShQoaeWLgT8UasX?=
 =?us-ascii?Q?HstyJx4VzndClwi2nW8hx3PyvGYaVRrpinjstY4Fl0SAOWYDx8uZgP5Xdzzi?=
 =?us-ascii?Q?GZthDghH4/JSbQBZpL5K55ZqEXh7svVqD1OniaIS60QGmdMX/TpEyfN6dk2v?=
 =?us-ascii?Q?gl40kd6189QtyAhBhsoIMIbrSGKqcHon8Eyc2hUoNS4TEZZWrEKzwUZhw7cG?=
 =?us-ascii?Q?AogTl7i7kb/zWbOn5igwDnlx3tvrLKwh57kv9uI46KG8zDvrp1L4cawysqHh?=
 =?us-ascii?Q?7Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b83d698-7c68-4d9c-a726-08dafe29a6ef
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2023 16:40:08.4496 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3mBAI1F7wwOu4fSUI4RaeHvXLbTY3B2XIYI1dvQlYLOW28UDfawGproEhcYvbI0HgPFFiykR0ij8nu41KV4+mA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6045
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgVXNl?=
 =?utf-8?q?_unversioned_blob_path_for_ADLP_DMC?=
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 23, 2023 at 08:19:59PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Use unversioned blob path for ADLP DMC
> URL   : https://patchwork.freedesktop.org/series/113238/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12624 -> Patchwork_113238v1
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/index.html

CI is clean, however, looking at the logs for igt@i915_module_load@load
on ADLP (e.g. [1]), it looks like the adlp_dmc.bin firmware blob is
missing, so the tests ended up using ADLP DMC v2.16 instead of v2.18.

(On the bright side, at least that confirmst that the fallback mechanism
works :-))

I thought this PR[2], sent to this list, would make the blobs available
to CI. Did I do something wrong there?


[1]: "Results for igt@i915_module_load@load on bat-adlp-6"
     (https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/bat-adlp-6/igt@i915_module_load@load.html)
[2]: "[Intel-gfx] [CI] PR for ADLP DMC 2.18 and MTL DMC 2.11"
     (https://lists.freedesktop.org/archives/intel-gfx/2023-January/316102.html)

--
Gustavo Sousa

> 
> Participating hosts (38 -> 38)
> ------------------------------
> 
>   Additional (2): fi-kbl-soraka fi-pnv-d510 
>   Missing    (2): fi-rkl-11600 fi-snb-2520m 
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_113238v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_huc_copy@huc-copy:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#2190])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#4613]) +3 similar issues
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][3] ([i915#1886])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@i915_selftest@live@guc_multi_lrc:
>     - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][4] ([i915#7640])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/fi-kbl-soraka/igt@i915_selftest@live@guc_multi_lrc.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - fi-rkl-guc:         [PASS][5] -> [INCOMPLETE][6] ([i915#4983])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/fi-rkl-guc/igt@i915_selftest@live@hangcheck.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/fi-rkl-guc/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-fast:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][7] ([fdo#109271]) +15 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html
> 
>   * igt@kms_psr@primary_page_flip:
>     - fi-pnv-d510:        NOTRUN -> [SKIP][8] ([fdo#109271]) +44 similar issues
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live@gt_mocs:
>     - {bat-rpls-1}:       [DMESG-FAIL][9] ([i915#7059]) -> [PASS][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/bat-rpls-1/igt@i915_selftest@live@gt_mocs.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/bat-rpls-1/igt@i915_selftest@live@gt_mocs.html
> 
>   * igt@i915_selftest@live@requests:
>     - {bat-rpls-2}:       [INCOMPLETE][11] ([i915#6257]) -> [PASS][12]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/bat-rpls-2/igt@i915_selftest@live@requests.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/bat-rpls-2/igt@i915_selftest@live@requests.html
>     - {bat-rpls-1}:       [INCOMPLETE][13] ([i915#4983]) -> [PASS][14]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/bat-rpls-1/igt@i915_selftest@live@requests.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/bat-rpls-1/igt@i915_selftest@live@requests.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
>     - fi-bsw-kefka:       [FAIL][15] ([i915#6298]) -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12624/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
>   [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
>   [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
>   [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
>   [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
>   [i915#7640]: https://gitlab.freedesktop.org/drm/intel/issues/7640
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12624 -> Patchwork_113238v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12624: 18fa3d2237f6df82980349f6bef5281096dfc91d @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7134: 61b8c0a0c8a9611c47749c0b1a262843892cccd7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_113238v1: 18fa3d2237f6df82980349f6bef5281096dfc91d @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> 2b1f15adacc1 drm/i915/dmc: Use unversioned path for ADLP
> e1384510d25a drm/i915/dmc: Prepare to use unversioned paths
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113238v1/index.html
