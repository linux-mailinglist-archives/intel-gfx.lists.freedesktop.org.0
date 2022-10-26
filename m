Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B074060E6DE
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 19:56:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3EC810E69B;
	Wed, 26 Oct 2022 17:56:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F34D510E69B
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 17:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666806976; x=1698342976;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=IEV6NC6e+9sIBWqO1aOusoKOtRt8M19uVK6+OKIFuWQ=;
 b=d0sMzEFiz59uIiXtepHLamjAfDP5otbF5hqOqAkIlvArgyaAH8vJ7KCh
 RK6dxZA/GONJ6N2VzeaJ5IyuP9faZmO3tITIB1zioatW9Fsc7/jnDxIZb
 QgFd3X2hpwgMzqkAkNbFwdScmlF3nm8d3EPAfpl+m0okVTgfY5v0rEaoS
 Np1jVi4bzjc3gD8tKJDe3U0tYnPhEH3d3kGRzMHKU0VAulYnAaca16eM0
 tSR2s+j2yuFZrs1rwmcY+LIY5Gdmx5YUjjp2djcPAKK83qSySIM7QU2pl
 Wt+UqbHUICPbUwzK1/QTfDAJeqkiaSw7QxqTzGDwtaTAqRBXTD1asoi3A Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="306750138"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="306750138"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 10:56:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="634589038"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="634589038"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 26 Oct 2022 10:56:16 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 26 Oct 2022 10:56:15 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 26 Oct 2022 10:56:13 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 26 Oct 2022 10:56:13 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 26 Oct 2022 10:56:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RFPr8U8xtDpoUkWGf56wIFZ3+85td40myx6JT+T2hV3jR2eAweZC6yh3J66KZwUB0ijmHIUGdUxMqlDK3TL9fLdDWdLH7vNYMFDOAZdorr+LB1uQZgJr+l3g6z+BDFuKqVPMko/8Vtj02YIR+BOK4foujsgeFFYvgsC8zrthkwnYEaj6mgkjPQUICKygEQUZCX0X3Z5GBpfNfhFP3BhnxNepUsloTseCpdHGndwxZXdTb/MfVNI8UMRJout7zReHYzojm5ImZPhi3Jk1EMr9xfg6B87xQ0EpLiNAxRzoY0LM0RWPd53HnDJIsEFGhCb6C0zoCf5o/GcwwZFZCaGmJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/buxOPyDxs1j/CKT08uUFStKiIrDUP7jbXSLTgePU5U=;
 b=M6IUJB0dDKdxZZjIg+EFh7q8kZPdnwkYxcq6+wFwB+daDaOQgKucaZOOilfSGLFgaselyieCVt7Mm8e+ESZAX/a7vsCHIXu6bnoLYmFJSEcRk42hE2hkLmqJDocEIzgGIG8Q1HiTGDno5swjUErgsXOVGofntUAKfVdpuVXgd1kJyqHUoPudka38Llv7U+16AaDy0soTV7t6EF3XBvA+nUsxRojPd8OJ+31DpShq61CMIheoSx6gwoOrsGgfrR+lKUKjgdeZtEk1nekBqABvXKRIppxjY783cCPA15Kj/OYdwALvBgcreTeGvalwg58CJS7sH44zhlS0PJzPu4ngHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by CH0PR11MB5708.namprd11.prod.outlook.com (2603:10b6:610:111::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.28; Wed, 26 Oct
 2022 17:56:08 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::8007:140:f87b:ce57]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::8007:140:f87b:ce57%5]) with mapi id 15.20.5746.028; Wed, 26 Oct 2022
 17:56:08 +0000
Date: Wed, 26 Oct 2022 10:56:05 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y1l0tW1cQxOOVRax@mdroper-desk1.amr.corp.intel.com>
References: <20221019161334.119885-1-gustavo.sousa@intel.com>
 <166676424895.25384.12474957861220789520@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166676424895.25384.12474957861220789520@emeril.freedesktop.org>
X-ClientProxiedBy: BY3PR05CA0005.namprd05.prod.outlook.com
 (2603:10b6:a03:254::10) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|CH0PR11MB5708:EE_
X-MS-Office365-Filtering-Correlation-Id: 14d8b126-a0b8-464f-45b6-08dab77b5bf9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xseDVFs6GBTyv500jPPkw12R/kB81cw5I53pYNSWeBk3maP0/g6o+KNwCZ5g2TqXPS2K+ytuAk+D4xz15um5NHs3HSO9V6BShPc9q4i64zg5waccXBCwPk5WI6r77BflghzK/PexcThI4vYlEnBYeOte8Bz2DFLJwiVsy2luBnxqNT1YSiS6MKN5RjF+/uRxVAl9+K76IYxuA+3tW2RlnibeL/0XFk9Y6zSl4SgzopX3zMs2cImsthYxQbUgd3cLTzR+mhBKU5V69hEjq6NWLT7B+rp0abL+34NDuXEb3g9ZpYMuyGNlEzLH3oiwv0nqOGeFhrUE+CApRCyM9iHWE8pvOxSnL1CqjXw3P47VqP/qBgOYloO57tMPEFvP54Qe2h99cO8YEw2dZVZwrxT5dvA4YHxVkcWulbNHWTiaJC0yDq0e3ROJXOMk68yi6+zssSSzxJqBSpxr5en5PCkEy6lXzMb7+ELKfoknCuLkFgwCzneFj3GseonA7iRfsfvQvksQkYe9U80nuzNzzs6hFpv3d1lYLpIMaiG1J7GK8NtRmxNanaY0uF4AvbsP5yPWLCb0QjNYUoXLhJ4gd3Q18m8LJcxIn4qGpCtTWXxU2oZbmbfNA9u/xKMemKVEvkDfOUlRldTGndbYWPpiukPsW9qzA1Tvd3M1cOWJ+1PFIPTaTHe1LdSB8si6cdIovZr9EgNcEXBSE6MQQiA67+78zwQEqO9KfK/KNov2K2x1H5VhUHI2+BuzTShmKkIxRs3gNmd9+7hTOecCOu11uYBixBCny0sJMq8wnNULocVaYYOg4e6YgsTMlNDy8FKXWj/7
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(366004)(39860400002)(136003)(376002)(451199015)(86362001)(38100700002)(966005)(82960400001)(2906002)(6486002)(30864003)(107886003)(6666004)(478600001)(41300700001)(316002)(66556008)(66476007)(5660300002)(8936002)(66946007)(6916009)(4326008)(6506007)(83380400001)(6512007)(26005)(186003)(461764006)(559001)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lL+BhwsPiixDPm22LSWdz6NG3IRviDdkOlvjNqKmVQxCSdV2sruQh+BK+gid?=
 =?us-ascii?Q?x8dqgxq01ExtBC8eEnD4J3fEckxd7O4CoZOhDfCfEBZgnMAX5z7PyiLuTioU?=
 =?us-ascii?Q?WRSVcnFCu1wT6R7wLJXXfMeHn6VTNMnXPY/9MYKXPXiec9/7vPfvA92vPRfn?=
 =?us-ascii?Q?49WwEp0kj5sDpipuSwjZTJlFBdRTa2Eh5OMKwzC68dA4CZwg0V4ihearVNLh?=
 =?us-ascii?Q?eUMRMS+U983uIW7r+fKPAQPziCdaJ0tWXo2sCaoDVjAXcD43fBVRrboSvy1G?=
 =?us-ascii?Q?LZ7KIg8xW927QY4IBzbEYcxzW5FEcK9P/V8uX4ipyZUUxpadu6qVNOKnQA/9?=
 =?us-ascii?Q?AxcZmIN2ClM6R+Vh9eNip4ZS1GbQk53mXxSymZxAK9TioFYYkPiDfNG/s85r?=
 =?us-ascii?Q?guTx1w+NzyLHajSGbiAfBSxStFxGmMQhKtuZTUuixCFYrEkAEdpd8cPZbvUc?=
 =?us-ascii?Q?FLZuG3MBRAt35OSqbjLgJYY5aJzhRkqpHcdUEDQ0YRPtv5zCybJVn8MgaJps?=
 =?us-ascii?Q?ALiwYakhLmgkzbPuOMJpIhMK9lqWLsM3/VyJ/u7O+8/sfDo9ZN4LNNK7+yFv?=
 =?us-ascii?Q?Fb/6amFF3kXCZsVtqKjVnvOaF7mZO/UCF9Zk8/E2vgD3mhMtJYIIs2hzjNFo?=
 =?us-ascii?Q?Rni4qy0UiRlTzVF7dqSQoukNFiPl18wC4eBg4EUa5Jc3ofJzuMFWMzsRc9Ms?=
 =?us-ascii?Q?Od5YOS8tCw/zBGGNo175p0awbpogxQLRySbhK+dTdvUBnOLFJUYn2m5WsUmq?=
 =?us-ascii?Q?onWcPolETgAriZuxDqhMnakkI0mLT/9rcusLBlfX+8wNEiGHEcV7q/bfWPCT?=
 =?us-ascii?Q?A+jDO5XXgTaQ6B//BDyyv5Pw3C1bKkOWobE0ZEkELO6Y6YRwhe/J0/B3eDJm?=
 =?us-ascii?Q?Y41IwmBdgOCrdDBIhaI2HnGsqxoHE4lP4kMjcOPGqvDG10r2CLcOD45H5yz4?=
 =?us-ascii?Q?wQWM9h3QNBAZIMUv7jbgcpOzyf1x6+STVYrhXPX4iElS81g6FeJT0rnAfs+M?=
 =?us-ascii?Q?mIO9jaUVt+K/qE7CU5kbvJQ7xnvR7uPIA7eQmkIMtsfhJBWz2O8X9dbM7GsC?=
 =?us-ascii?Q?nRCOWsumn4CeD0M3uOhNleVnimvuPzLIYEgF927treWNl/ku2HVlAumhgrwW?=
 =?us-ascii?Q?zfs7Jzm6V35q567wO5SHlv6X1/RjNdFZaScOjtWWobbrTy1vErMdftbDSNOh?=
 =?us-ascii?Q?/Zqi//XlE6HtXRPBU/eULyBoEomXwimBXGAehpz2vBEMSmUvuAXq4C6zPr8o?=
 =?us-ascii?Q?Gwbjyuhhb2P4MU7tlO3yDCxOdCIVtRsRsXr32stTewO6++exJz1iapvvst2R?=
 =?us-ascii?Q?lc8ymxpO2ksVtezKT2ELVB1ElPVfouI6W2X/AWUyMMr/qdEZrJA6gMympfgm?=
 =?us-ascii?Q?Y69n5vAI31Sm7BIxKPF1ZG22pLIN7ujsN9hVTNwaESKC0SEPDQZ/DOVNfu4M?=
 =?us-ascii?Q?O73/UziduDS6nToaJH1XOpHwp5VDFI154CYDL8GWs6Tz82kRBiV91fmHGAXA?=
 =?us-ascii?Q?nquUjI5jHTGa3+cP7bYTEkxao2fKJYbX3v9lKZXO2tygheLD330S6Qq5ZNKL?=
 =?us-ascii?Q?tyJ+ORVhDMJx6Eppu+M1ns8IIYogGeLIXTu2TA/u4+cYxOb7j2YE3Kdd5JF8?=
 =?us-ascii?Q?qw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 14d8b126-a0b8-464f-45b6-08dab77b5bf9
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Oct 2022 17:56:08.0144 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Gofv2FoG9Ky6giPtlxzosXqKz7bC11yC5zV/Cdu6W6blTo8ZaHncW7e/a41gKZ9i5M22zqrkezZdBMAnxy/yn1zR1DF656juF6pDGD623yo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5708
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogIHN1Y2Nlc3MgZm9yIGRy?=
 =?utf-8?q?m/i915/xelp=3A_Add_Wa=5F1806527549_=28rev2=29?=
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

On Wed, Oct 26, 2022 at 06:04:08AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/xelp: Add Wa_1806527549 (rev2)
> URL   : https://patchwork.freedesktop.org/series/109885/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12261_full -> Patchwork_109885v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-gt-next.  Thanks for the patch and review.


Matt

> 
>   
> 
> Participating hosts (9 -> 12)
> ------------------------------
> 
>   Additional (3): shard-rkl shard-dg1 shard-tglu 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_109885v2_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - {shard-rkl}:        NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-0:
>     - {shard-dg1}:        NOTRUN -> [FAIL][2]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-dg1-13/igt@kms_big_fb@linear-64bpp-rotate-0.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_109885v2_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - shard-glk:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [FAIL][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52]) ([i915#4392])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk3/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk9/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk9/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk9/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk9/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk8/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk8/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk8/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk7/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk7/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk6/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk6/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk6/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk5/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk5/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk1/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk1/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk1/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk2/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk2/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk5/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk3/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk3/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk2/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk2/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk9/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk9/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk8/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk8/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk8/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk7/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk7/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk7/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk6/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk6/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk6/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk5/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk5/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk3/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk3/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk3/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk3/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk2/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk2/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk2/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk2/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk1/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk1/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk1/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk1/boot.html
> 
>   
> #### Possible fixes ####
> 
>   * boot:
>     - shard-skl:          ([PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [FAIL][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69]) ([i915#5032]) -> ([PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl9/boot.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl9/boot.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl7/boot.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl7/boot.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl6/boot.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl6/boot.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl6/boot.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl5/boot.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl5/boot.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl5/boot.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl4/boot.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl4/boot.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl2/boot.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl1/boot.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl1/boot.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl10/boot.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl10/boot.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl9/boot.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl9/boot.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl7/boot.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl7/boot.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl7/boot.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl6/boot.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl6/boot.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl6/boot.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl5/boot.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl5/boot.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl4/boot.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl4/boot.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl4/boot.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl2/boot.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl2/boot.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl1/boot.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl1/boot.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl10/boot.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl10/boot.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl10/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@drm_buddy@all:
>     - shard-iclb:         NOTRUN -> [SKIP][90] ([i915#6433]) +1 similar issue
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@drm_buddy@all.html
> 
>   * igt@feature_discovery@display-4x:
>     - shard-iclb:         NOTRUN -> [SKIP][91] ([i915#1839])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@feature_discovery@display-4x.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [PASS][92] -> [FAIL][93] ([i915#2842])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         NOTRUN -> [FAIL][94] ([i915#2842])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [PASS][95] -> [FAIL][96] ([i915#2842])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_params@no-bsd:
>     - shard-iclb:         NOTRUN -> [SKIP][97] ([fdo#109283])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@gem_exec_params@no-bsd.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-skl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#2190])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl2/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-skl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#4613]) +6 similar issues
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl7/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-apl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl7/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_mmap_gtt@coherency:
>     - shard-iclb:         NOTRUN -> [SKIP][101] ([fdo#109292])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@gem_mmap_gtt@coherency.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-apl:          NOTRUN -> [INCOMPLETE][102] ([i915#7248])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl3/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
>     - shard-apl:          NOTRUN -> [SKIP][103] ([fdo#109271]) +76 similar issues
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl3/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html
> 
>   * igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][104] ([i915#768])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-iclb:         NOTRUN -> [SKIP][105] ([i915#3297])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][106] ([i915#4991])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl7/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_userptr_blits@probe:
>     - shard-iclb:         NOTRUN -> [FAIL][107] ([i915#7224])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@gem_userptr_blits@probe.html
> 
>   * igt@gen7_exec_parse@bitmasks:
>     - shard-iclb:         NOTRUN -> [SKIP][108] ([fdo#109289])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@gen7_exec_parse@bitmasks.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-iclb:         NOTRUN -> [SKIP][109] ([i915#2856])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@i915_module_load@load:
>     - shard-skl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#6227])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl2/igt@i915_module_load@load.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
>     - shard-apl:          NOTRUN -> [FAIL][111] ([i915#7036])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl7/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         NOTRUN -> [SKIP][112] ([i915#658])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_pm_rps@engine-order:
>     - shard-apl:          [PASS][113] -> [FAIL][114] ([i915#6537])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-apl1/igt@i915_pm_rps@engine-order.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl7/igt@i915_pm_rps@engine-order.html
> 
>   * igt@i915_selftest@live@gem_contexts:
>     - shard-glk:          [PASS][115] -> [DMESG-FAIL][116] ([i915#7270])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk1/igt@i915_selftest@live@gem_contexts.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk7/igt@i915_selftest@live@gem_contexts.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - shard-skl:          NOTRUN -> [DMESG-FAIL][117] ([i915#5334])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl2/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - shard-skl:          NOTRUN -> [DMESG-FAIL][118] ([i915#1886])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl2/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@i915_selftest@live@mman:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][119] ([i915#7320])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl2/igt@i915_selftest@live@mman.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-apl:          [PASS][120] -> [DMESG-WARN][121] ([i915#180]) +2 similar issues
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
>     - shard-iclb:         NOTRUN -> [SKIP][122] ([i915#5286])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][123] ([fdo#110725] / [fdo#111614])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-iclb:         [PASS][124] -> [FAIL][125] ([i915#7246])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#3886]) +14 similar issues
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl10/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#3886]) +5 similar issues
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl3/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][128] ([fdo#109278]) +7 similar issues
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][129] ([fdo#109278] / [i915#3886]) +2 similar issues
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-iclb:         NOTRUN -> [SKIP][130] ([i915#3742])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_chamelium@common-hpd-after-suspend:
>     - shard-apl:          NOTRUN -> [SKIP][131] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl3/igt@kms_chamelium@common-hpd-after-suspend.html
> 
>   * igt@kms_chamelium@dp-hpd:
>     - shard-iclb:         NOTRUN -> [SKIP][132] ([fdo#109284] / [fdo#111827])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_chamelium@dp-hpd.html
> 
>   * igt@kms_chamelium@dp-hpd-enable-disable-mode:
>     - shard-skl:          NOTRUN -> [SKIP][133] ([fdo#109271] / [fdo#111827]) +14 similar issues
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl10/igt@kms_chamelium@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_content_protection@atomic@pipe-a-dp-1:
>     - shard-apl:          NOTRUN -> [INCOMPLETE][134] ([i915#7121] / [i915#7173]) +1 similar issue
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl3/igt@kms_content_protection@atomic@pipe-a-dp-1.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x10:
>     - shard-iclb:         NOTRUN -> [SKIP][135] ([i915#3555])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_cursor_crc@cursor-offscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-iclb:         NOTRUN -> [SKIP][136] ([i915#3359])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip@atomic:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][137] ([i915#6947])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl4/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor:
>     - shard-iclb:         NOTRUN -> [SKIP][138] ([i915#4103])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_cursor_legacy@short-busy-flip-before-cursor.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-apl:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#7205])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl3/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check:
>     - shard-iclb:         NOTRUN -> [SKIP][140] ([fdo#109274]) +1 similar issue
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_flip@2x-wf_vblank-ts-check.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
>     - shard-skl:          [PASS][141] -> [FAIL][142] ([i915#79])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
>     - shard-skl:          NOTRUN -> [FAIL][143] ([i915#2122]) +3 similar issues
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][144] ([i915#2672]) +3 similar issues
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][145] ([i915#2587] / [i915#2672]) +1 similar issue
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][146] ([i915#2672] / [i915#3555])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-iclb:         NOTRUN -> [SKIP][147] ([fdo#109280]) +7 similar issues
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-edp-1:
>     - shard-skl:          NOTRUN -> [FAIL][148] ([i915#4573]) +2 similar issues
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl10/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-edp-1.html
> 
>   * igt@kms_plane_lowres@tiling-none@pipe-a-edp-1:
>     - shard-iclb:         NOTRUN -> [SKIP][149] ([i915#3536]) +2 similar issues
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_plane_lowres@tiling-none@pipe-a-edp-1.html
> 
>   * igt@kms_plane_lowres@tiling-none@pipe-b-hdmi-a-1:
>     - shard-glk:          [PASS][150] -> [FAIL][151] ([i915#7307])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk9/igt@kms_plane_lowres@tiling-none@pipe-b-hdmi-a-1.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk3/igt@kms_plane_lowres@tiling-none@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers:
>     - shard-skl:          NOTRUN -> [SKIP][152] ([fdo#109271] / [i915#5776]) +2 similar issues
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl4/igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1:
>     - shard-skl:          NOTRUN -> [SKIP][153] ([fdo#109271]) +319 similar issues
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl10/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-iclb:         NOTRUN -> [SKIP][154] ([fdo#111068] / [i915#658])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-skl:          NOTRUN -> [SKIP][155] ([fdo#109271] / [i915#658]) +1 similar issue
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl10/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-apl:          NOTRUN -> [SKIP][156] ([fdo#109271] / [i915#658])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl3/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-iclb:         NOTRUN -> [SKIP][157] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb6/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@cursor_render:
>     - shard-glk:          NOTRUN -> [SKIP][158] ([fdo#109271]) +1 similar issue
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk9/igt@kms_psr@cursor_render.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][159] ([fdo#109441])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-iclb:         [PASS][160] -> [SKIP][161] ([fdo#109441]) +1 similar issue
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-skl:          NOTRUN -> [SKIP][162] ([fdo#109271] / [i915#2437]) +1 similar issue
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl7/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-iclb:         NOTRUN -> [SKIP][163] ([i915#2437])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          NOTRUN -> [FAIL][164] ([i915#1722])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl6/igt@perf@polling-small-buf.html
> 
>   * igt@perf_pmu@event-wait@rcs0:
>     - shard-iclb:         NOTRUN -> [SKIP][165] ([fdo#112283])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@perf_pmu@event-wait@rcs0.html
> 
>   * igt@sysfs_clients@busy:
>     - shard-skl:          NOTRUN -> [SKIP][166] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl4/igt@sysfs_clients@busy.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-apl:          NOTRUN -> [SKIP][167] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl7/igt@sysfs_clients@sema-50.html
> 
>   * igt@sysfs_clients@split-50:
>     - shard-iclb:         NOTRUN -> [SKIP][168] ([i915#2994])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@sysfs_clients@split-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglb:         [FAIL][169] ([i915#6268]) -> [PASS][170]
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-iclb:         [SKIP][171] ([i915#4525]) -> [PASS][172]
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb5/igt@gem_exec_balancer@parallel-contexts.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-glk:          [FAIL][173] ([i915#2842]) -> [PASS][174]
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk9/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk3/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - shard-apl:          [DMESG-FAIL][175] ([i915#5334]) -> [PASS][176]
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl1/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@i915_selftest@mock@requests:
>     - shard-glk:          [INCOMPLETE][177] ([i915#7267]) -> [PASS][178]
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk7/igt@i915_selftest@mock@requests.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk9/igt@i915_selftest@mock@requests.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1:
>     - shard-apl:          [DMESG-WARN][179] ([i915#180]) -> [PASS][180] +2 similar issues
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-apl1/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl7/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-dp1:
>     - shard-apl:          [FAIL][181] ([i915#79]) -> [PASS][182]
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-apl7/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl1/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-edp-1:
>     - shard-skl:          [INCOMPLETE][183] ([i915#4939]) -> [PASS][184]
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl5/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-edp-1.html
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-edp-1.html
> 
>   * igt@kms_plane_lowres@tiling-none@pipe-a-hdmi-a-2:
>     - shard-glk:          [DMESG-FAIL][185] ([i915#118]) -> [PASS][186] +1 similar issue
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk9/igt@kms_plane_lowres@tiling-none@pipe-a-hdmi-a-2.html
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk3/igt@kms_plane_lowres@tiling-none@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
>     - shard-iclb:         [SKIP][187] ([i915#5235]) -> [PASS][188] +2 similar issues
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb7/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [SKIP][189] ([fdo#109441]) -> [PASS][190] +3 similar issues
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@perf@polling:
>     - shard-skl:          [FAIL][191] ([i915#1542]) -> [PASS][192]
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl5/igt@perf@polling.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl7/igt@perf@polling.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [FAIL][193] ([i915#5639]) -> [PASS][194]
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl7/igt@perf@polling-parameterized.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl5/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-glk:          [INCOMPLETE][195] ([i915#7296]) -> [INCOMPLETE][196] ([i915#7248])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk2/igt@gem_pwrite@basic-exhaustion.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk8/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-iclb:         [SKIP][197] ([i915#658]) -> [SKIP][198] ([i915#2920])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-iclb:         [SKIP][199] ([i915#2920]) -> [SKIP][200] ([i915#658]) +1 similar issue
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@runner@aborted:
>     - shard-iclb:         ([FAIL][201], [FAIL][202], [FAIL][203], [FAIL][204], [FAIL][205], [FAIL][206], [FAIL][207], [FAIL][208], [FAIL][209]) ([i915#3002] / [i915#4312] / [i915#7300]) -> ([FAIL][210], [FAIL][211], [FAIL][212], [FAIL][213], [FAIL][214], [FAIL][215], [FAIL][216], [FAIL][217]) ([i915#3002] / [i915#4312])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb2/igt@runner@aborted.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb1/igt@runner@aborted.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb3/igt@runner@aborted.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb5/igt@runner@aborted.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb3/igt@runner@aborted.html
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb5/igt@runner@aborted.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb1/igt@runner@aborted.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb8/igt@runner@aborted.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb6/igt@runner@aborted.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb6/igt@runner@aborted.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb8/igt@runner@aborted.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb6/igt@runner@aborted.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb2/igt@runner@aborted.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb3/igt@runner@aborted.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb1/igt@runner@aborted.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@runner@aborted.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb7/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109292]: https://bugs.freedesktop.org/show_bug.cgi?id=109292
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
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
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
>   [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
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
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
>   [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
>   [i915#4874]: https://gitlab.freedesktop.org/drm/intel/issues/4874
>   [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
>   [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
>   [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5776]: https://gitlab.freedesktop.org/drm/intel/issues/5776
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
>   [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6463]: https://gitlab.freedesktop.org/drm/intel/issues/6463
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
>   [i915#6947]: https://gitlab.freedesktop.org/drm/intel/issues/6947
>   [i915#7036]: https://gitlab.freedesktop.org/drm/intel/issues/7036
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7121]: https://gitlab.freedesktop.org/drm/intel/issues/7121
>   [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
>   [i915#7178]: https://gitlab.freedesktop.org/drm/intel/issues/7178
>   [i915#7205]: https://gitlab.freedesktop.org/drm/intel/issues/7205
>   [i915#7224]: https://gitlab.freedesktop.org/drm/intel/issues/7224
>   [i915#7226]: https://gitlab.freedesktop.org/drm/intel/issues/7226
>   [i915#7246]: https://gitlab.freedesktop.org/drm/intel/issues/7246
>   [i915#7247]: https://gitlab.freedesktop.org/drm/intel/issues/7247
>   [i915#7248]: https://gitlab.freedesktop.org/drm/intel/issues/7248
>   [i915#7267]: https://gitlab.freedesktop.org/drm/intel/issues/7267
>   [i915#7270]: https://gitlab.freedesktop.org/drm/intel/issues/7270
>   [i915#7296]: https://gitlab.freedesktop.org/drm/intel/issues/7296
>   [i915#7300]: https://gitlab.freedesktop.org/drm/intel/issues/7300
>   [i915#7307]: https://gitlab.freedesktop.org/drm/intel/issues/7307
>   [i915#7320]: https://gitlab.freedesktop.org/drm/intel/issues/7320
>   [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12261 -> Patchwork_109885v2
> 
>   CI-20190529: 20190529
>   CI_DRM_12261: 41447224fdfbfbfd1e9ffa5fabc9d277f9c02f8a @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7019: fdbafce2b74e84739bb1d81223ae6f01fb442980 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_109885v2: 41447224fdfbfbfd1e9ffa5fabc9d277f9c02f8a @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
