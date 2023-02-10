Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFFE6927F0
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 21:21:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD04410E154;
	Fri, 10 Feb 2023 20:21:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D40ED10E154
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Feb 2023 20:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676060470; x=1707596470;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=OsDZ+5TqDEvAUGLhqlzptRcpPTE9f3TivKVpE50jq/k=;
 b=dHlrLpqnTdlIKOpJOHp4WyraduFUC8eKsIQOhIZNnsvG2Hqq+MpjZm/I
 ZB49dh2QTI+bBs33LEju04bt70nVJgWpA1mldT9M6G5uSRWR6WsitYE4Y
 rqL34JiYutEOCoWZeLfx8V3O611av21VTLRHbCIxxm2dwDsdl0RCMRb3h
 YQUf4lAFiaI96Y69V35gnc4RTA1MYnSDM7tmY2NyH2zIRHnVrlREX9xfr
 2XBOk24zl4VGJj0OeXrrWp8s/O3FZHo8OGYeDI8tKGZknmF6th/3C7e88
 6XQs2hmeDyWq7hxw0whfWIKY9qAEyYgmwMS2ufBQw8RnbcJnm/eWb+GIx A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="328209852"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="328209852"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 12:21:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="668164606"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="668164606"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 10 Feb 2023 12:21:09 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 10 Feb 2023 12:21:08 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 10 Feb 2023 12:21:08 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 10 Feb 2023 12:21:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DnVG1vfy+H4wn+N8QJ+jXNlXBxIoRk+M0QJ0pVf0Y2HezoRhgs/+rZ4qcaigNDAdtu0D3gVZB8MUgQcQE32Fr+SN4cElyDuUtyIVQjxiWCGpvXckgJxAjJFJFZVwuMtoOZSLSCq9U2Wv/kzXVnNXR2NGp0pRf4x9sSzurpyUuwvIACEJE+8UEtjLa2xLopvCfJPL9tAaMnDggm3EamGouuuFyVjbBIcAD0rpMtVEM2MlBFXsClcZ0neP1PQ3qrJScprivC03Iws1qG/E2Qsodv8k65Q76Pvy1D05UEHBz2PJ+sl+SNvJ5WWFS5G+F0ryBixIiZuNzMKjQhBBqqTE4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9n4Ez9XsZ50a0hRvNcg0pVgImlVRnkzdeJwzI2GikFk=;
 b=DTa1smXcurzUW9+v5rm8FD2PE0mLhaaqogkwtS16xf/HNeELYe0X0pg9MuUNUDFjdZL42eUsF2vT76Et0WoiW63rGZM8rPh874tS4qmuVChfYzryS8ULNL9TtneCsevbCWQrLd6UnAgIy5bYAMKKRTBdEhGHaAgu6c2SQdVuaLQGNcNyJHa+VqcGgwMm9Dy/QnPQMO8904Yp5t751klcHMdWLwtoFhm3G0t/AYdeOjJ7XHH3zXNTKn7Mf9MbgIss4DX36pN6e1E2XbawcxeyTkbySNoupBo7yqA7SmRvDDC2QlQE+uAOuJBwELEUksuouQcG2yG9wZ//9JNqqKbngw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH0PR11MB4823.namprd11.prod.outlook.com (2603:10b6:510:43::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6086.21; Fri, 10 Feb 2023 20:20:58 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%6]) with mapi id 15.20.6086.019; Fri, 10 Feb 2023
 20:20:58 +0000
Date: Fri, 10 Feb 2023 12:20:55 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y+anJ8YUxtWY6wI+@mdroper-desk1.amr.corp.intel.com>
References: <20230209232228.859317-1-matthew.d.roper@intel.com>
 <167605326642.7874.16767036484946105373@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <167605326642.7874.16767036484946105373@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR11CA0096.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::37) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH0PR11MB4823:EE_
X-MS-Office365-Filtering-Correlation-Id: 6eb5793e-831d-4f53-566c-08db0ba451d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iHdmsgXJFpTy8gEunfejl70QGE42maCuZRIV3wOLfe3gVbdooock6eF355t64+/hskNIamB8L7IZ+W7ieQ1Jt3a12yeJghGI1P/o6WsBwupG6nyy+RdAMOMfwVZRUmOBfGtx9z6R8/rP69M81SIshPGtIKT0ihsz8IoJhEScw8MfbYwPMJIoO2SF3AbppSVf+/zh2F+8L7Y+MU0wk03/FQF7AxrxOvL+U+jAVUzPWius2Pfj7y61Ygp8+PqxEPRTLY0jIta13oEsOpxgZCJ7KMLtoge9ZQr5EkwAjEDpRDf3WMMr3dm93uio/G0ngGUmk0B5zRPzb2VxB3ul2xBXNSub7h57E3wgZJGRmww6eEM4PGbnfLMOPz/60DCRP/cXm+uzOgKcvOWlSd7jQfQLeYTJsFpHLuDobBinviMDIBhDDAaOb2ZtT3kyw2AzJym05oScvHcPYXrUVEADIJsUApI/LtF/KjMpq6x0baEz0jdFKS1ci9RGyAxb8GrE14Fh0lVwI06ZCZeYaQ/wV/N9cBXRchaykyq5c0Ya6l7FAGELd7d2zwdPB6S2OZUTqvapMsJEip6KvJsLqHV8mAzOZbDwhQLGIbM+6zRGzvF7RU5EHr6u61/bXtdZFqZBlw7jxW7htOXKmQ+y7fYTyFS8clJOQVFDX94+9buWGoJaXxmVjlSmo83nYhVxA25XS2lhLzfPsuEr6sXv8s3DbY0jGw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(346002)(396003)(136003)(366004)(39860400002)(451199018)(83380400001)(66556008)(66476007)(66946007)(316002)(5660300002)(8936002)(41300700001)(6666004)(6916009)(478600001)(6512007)(6506007)(186003)(26005)(6486002)(966005)(86362001)(2906002)(30864003)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/NqIhC+xwy2Byq6W79SLLxUVBVMF/+hsI/b9T9e+huRh6Enyz1y+vSaqLmm4?=
 =?us-ascii?Q?FoeG68gB/XBJBY5BHn+F+Cmy2GBlxhU18RgYGmTwotP7J34hHnETiZG2yjpl?=
 =?us-ascii?Q?mcltnOkJCuzWGIuROLqMsjnUt4uOsBLoPiHqjSrrHWcaHAS7aOC2wf21xt2l?=
 =?us-ascii?Q?muoFDF2Ur3BlK5/rwDI2/H46ANv4I3VTRRURHzEo/da9IbZkaikC23nEfxo/?=
 =?us-ascii?Q?dOA5FeXUjcb4jPU+QZwQSr05WVnIQ8wzJld53yDmnwstnGKBvodFhhHjX471?=
 =?us-ascii?Q?obSCkNKOww30/U10/fM1J6R65AhXt54rYenKYB1GnsjFiGJn3SnKdN6t51XI?=
 =?us-ascii?Q?7WC+kWfw11xMg7N9i3ztG12xu+3rW9/S5dInaqZTWy2OiJLBYexn6WoGYUrE?=
 =?us-ascii?Q?DUQZKo/M4c9c+wOBJUGoaKlITsjU/xpsUWMi5nFfb5it9hMIpO9Dag5w6Xkz?=
 =?us-ascii?Q?BPoUkgHDehHNivIEYSm7KxXHGD5UXFtJULNcrE/DDzeWtDH6nJFbZb7hplvO?=
 =?us-ascii?Q?vruJ/H5kNzQUTRNcHQA/L5Z4ulOwu21P1V43V5zrbYIfelrBtWdgfp6UQBR8?=
 =?us-ascii?Q?UBn5qE/UOKg8LItnaTCau4I9uJjidqidIzwcGTXXBpbv3R4fBW712qo3oJ5k?=
 =?us-ascii?Q?lic1qNmS1OEJg9ZiA7VJ1D1uJLExoScsPc2I1ZUofBsvmoS4dI1QNPX0dMzM?=
 =?us-ascii?Q?Rqt+t2Ns5Ai0pPB1rCVnMAqPjKg4xpDXSp2KtOuDRSXHQFlW6/aC6fhENgRs?=
 =?us-ascii?Q?QrhI5FNYzDk3sYBstBXtiZJvlk4wmvA2yRWjdKeVyVcacmeV1M9D5e4qUol/?=
 =?us-ascii?Q?XBiB4zxKBdgPnWLBDHyCFUstgCSTkhcxqZdCI8UT7D6CrPeDeUFPL9h1V4XG?=
 =?us-ascii?Q?8ixkE6QFafnXyA3EHqwSg/bDIXwoG3SBpBCzIT7tUzeMypuULl8yeDLOjWyO?=
 =?us-ascii?Q?V1Bgve94BuSAZoEOi/5w5kdO8ecCVNDZpgNmWAJCFGwMBXr1BC+BMNl09vSE?=
 =?us-ascii?Q?ziThTiILIkKrHFunf6Of17Zb/Lrfx4QP3GuzCInwV23ZeVrE3TRA0VMYsUeJ?=
 =?us-ascii?Q?wv3cBg4cRXaEDQuBMV5w2HrHLhLLnbnv6MrSxNmmnuiyf+P/y6X2B7Py6zSg?=
 =?us-ascii?Q?ffqWqPE6pi40ah2OcWCqKxgNZU8ou6SNp5tNSqqH6844qbOt3MVKw1hJFy8C?=
 =?us-ascii?Q?rXFYb6E+jZ09K+2QKY8G62Py5J4R2/tDXpvFEHN8zA/cR0w6uhJ93lW9MlfM?=
 =?us-ascii?Q?/UPrHycba/MSYuNxPg3Cxy2gOcyuxZWWMibzCKt6CAOmaE7qxrnMFUPZfK4c?=
 =?us-ascii?Q?yghw/pVYacN+jaDf8uU9yutPIfxZEzEL2x207CBPwiPj8W+p+Bbb0beqwGcA?=
 =?us-ascii?Q?DxMl2YavPHHasKl7q8QD1Od9to76XXpI/GD04aXPz4XrFvDOriz3ypYonYou?=
 =?us-ascii?Q?jFrvqUw/5Z4ufqKbAzL+cE2XkR4SqTGsTtUdcs5LU0xbHQ7lSJB7wQjg6Kyt?=
 =?us-ascii?Q?7e3xdWDCWjoiLhfwGBI4eACVYpBJnj9/L1B/nbVIAJPlfuKX7CLqSuHrMxEf?=
 =?us-ascii?Q?Wr8RKp1aEOXyglYL/HIXBSSbuL/Y9eWcx6C63GnX7miRfESHFYNL0dwpfVyV?=
 =?us-ascii?Q?+g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6eb5793e-831d-4f53-566c-08db0ba451d3
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2023 20:20:58.1060 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BhKmiBwR1vohjaN+NgweDJJttNS2XKD4tQd7ZULPYht2xZIwKhZ8qQ+SLUDZzz+KgfhjYQYYN1uQh3b1DxmBLI9NBRdvbRnyuiGzY7/E38I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4823
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/xehp=3A_LNCF/LBCF_workarounds_should_be_on_the_GT_list?=
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

On Fri, Feb 10, 2023 at 06:21:06PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/xehp: LNCF/LBCF workarounds should be on the GT list
> URL   : https://patchwork.freedesktop.org/series/113857/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12722_full -> Patchwork_113857v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-gt-next.  Thanks Gustavo for the review.


Matt

> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/index.html
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   Additional (1): shard-rkl0 
>   Missing    (1): shard-tglu-9 
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_113857v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][1] -> [FAIL][2] ([i915#2842])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12722/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>     - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#72])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12722/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-vga-1:
>     - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271]) +23 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/shard-snb4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-vga-1.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@api_intel_bb@object-reloc-keep-cache:
>     - {shard-rkl}:        [SKIP][6] ([i915#3281]) -> [PASS][7] +7 similar issues
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12722/shard-rkl-3/igt@api_intel_bb@object-reloc-keep-cache.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html
> 
>   * igt@drm_fdinfo@idle@rcs0:
>     - {shard-rkl}:        [FAIL][8] ([i915#7742]) -> [PASS][9]
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12722/shard-rkl-3/igt@drm_fdinfo@idle@rcs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html
> 
>   * igt@drm_read@invalid-buffer:
>     - {shard-tglu}:       [SKIP][10] ([i915#1845]) -> [PASS][11] +1 similar issue
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12722/shard-tglu-6/igt@drm_read@invalid-buffer.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/shard-tglu-8/igt@drm_read@invalid-buffer.html
> 
>   * igt@fbdev@eof:
>     - {shard-rkl}:        [SKIP][12] ([i915#2582]) -> [PASS][13] +1 similar issue
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12722/shard-rkl-1/igt@fbdev@eof.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/shard-rkl-6/igt@fbdev@eof.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - {shard-rkl}:        [FAIL][14] ([i915#2842]) -> [PASS][15] +1 similar issue
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12722/shard-rkl-1/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/shard-rkl-5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - {shard-rkl}:        [SKIP][16] ([fdo#109313]) -> [PASS][17]
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12722/shard-rkl-2/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads:
>     - {shard-rkl}:        [SKIP][18] ([i915#3282]) -> [PASS][19] +6 similar issues
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12722/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - {shard-rkl}:        [SKIP][20] ([i915#2527]) -> [PASS][21] +3 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12722/shard-rkl-3/igt@gen9_exec_parse@batch-without-end.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/shard-rkl-5/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@i915_pm_rpm@drm-resources-equal:
>     - {shard-tglu}:       [SKIP][22] ([i915#3547]) -> [PASS][23]
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12722/shard-tglu-6/igt@i915_pm_rpm@drm-resources-equal.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/shard-tglu-8/igt@i915_pm_rpm@drm-resources-equal.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp:
>     - {shard-rkl}:        [SKIP][24] ([i915#1397]) -> [PASS][25]
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12722/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - {shard-rkl}:        [SKIP][26] ([i915#4387]) -> [PASS][27]
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12722/shard-rkl-3/igt@i915_pm_sseu@full-enable.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/shard-rkl-5/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - {shard-rkl}:        [FAIL][28] ([fdo#103375]) -> [PASS][29]
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12722/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/shard-rkl-2/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs:
>     - {shard-rkl}:        [SKIP][30] ([i915#1845] / [i915#4098]) -> [PASS][31] +19 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12722/shard-rkl-1/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/shard-rkl-6/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>     - {shard-tglu}:       [SKIP][32] ([i915#7651]) -> [PASS][33] +7 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12722/shard-tglu-6/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/shard-tglu-8/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>     - shard-glk:          [FAIL][34] ([i915#2346]) -> [PASS][35]
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12722/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
>     - {shard-rkl}:        [SKIP][36] ([i915#1849] / [i915#4098]) -> [PASS][37] +9 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12722/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - {shard-tglu}:       [SKIP][38] ([i915#1849]) -> [PASS][39]
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12722/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move:
>     - shard-snb:          [SKIP][40] ([fdo#109271]) -> [PASS][41]
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12722/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move.html
> 
>   * igt@kms_plane@plane-panning-bottom-right@pipe-a-planes:
>     - {shard-tglu}:       [SKIP][42] ([i915#1849] / [i915#3558]) -> [PASS][43] +1 similar issue
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12722/shard-tglu-6/igt@kms_plane@plane-panning-bottom-right@pipe-a-planes.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/shard-tglu-8/igt@kms_plane@plane-panning-bottom-right@pipe-a-planes.html
> 
>   * igt@kms_plane@plane-position-covered@pipe-a-planes:
>     - {shard-rkl}:        [SKIP][44] ([i915#1849]) -> [PASS][45] +2 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12722/shard-rkl-1/igt@kms_plane@plane-position-covered@pipe-a-planes.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/shard-rkl-6/igt@kms_plane@plane-position-covered@pipe-a-planes.html
> 
>   * igt@kms_psr@primary_render:
>     - {shard-rkl}:        [SKIP][46] ([i915#1072]) -> [PASS][47]
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12722/shard-rkl-5/igt@kms_psr@primary_render.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/shard-rkl-6/igt@kms_psr@primary_render.html
> 
>   * igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a:
>     - {shard-rkl}:        [SKIP][48] ([i915#4070] / [i915#4098]) -> [PASS][49]
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12722/shard-rkl-1/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a.html
> 
>   * igt@kms_vblank@pipe-b-wait-idle:
>     - {shard-tglu}:       [SKIP][50] ([i915#1845] / [i915#7651]) -> [PASS][51] +3 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12722/shard-tglu-6/igt@kms_vblank@pipe-b-wait-idle.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/shard-tglu-8/igt@kms_vblank@pipe-b-wait-idle.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
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
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3547]: https://gitlab.freedesktop.org/drm/intel/issues/3547
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3639]: https://gitlab.freedesktop.org/drm/intel/issues/3639
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
>   [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6493]: https://gitlab.freedesktop.org/drm/intel/issues/6493
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
>   [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7582]: https://gitlab.freedesktop.org/drm/intel/issues/7582
>   [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7949]: https://gitlab.freedesktop.org/drm/intel/issues/7949
>   [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
>   [i915#7984]: https://gitlab.freedesktop.org/drm/intel/issues/7984
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12722 -> Patchwork_113857v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12722: ec3cb908765a89bf72518590473c464a543372ff @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7155: 75c508d4e19c65683d4060cb3a772df600aaf23e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_113857v1: ec3cb908765a89bf72518590473c464a543372ff @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113857v1/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
