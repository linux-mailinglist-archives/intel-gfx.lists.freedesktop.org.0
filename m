Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5612360D662
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 23:54:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FE8210E119;
	Tue, 25 Oct 2022 21:54:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C85410E101
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 21:54:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666734864; x=1698270864;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=01+CC9PX67WTBNdz2D07wUPxH53q/4W9QYNO130d95Q=;
 b=NkRxS7WhnvMyQ+HGikRc6vSmJuDaSENVh+svlBE+LGTOv9duVmvGxp4g
 zUgNUaMQ1oqA6LtcP0qmShcCBSc69QgQi6qA7HLF1ZMVu7OpuDJH2j0AE
 KbGknWqDgH/CqRmoOBu4tb4fqQeZoveDsW1U7rZdHHZwf2SuXWzVDXDmh
 X42UEWpQYrVUu0DHoanUsO4Yh3gIAi1Rdj7cRofThYu+0sAdJVNLJcv33
 nbx0bgLiaoxODt+qhKG6O0dBdV4yyVcmA+I9cjlSxur/JaC8+SRdvbwZl
 iMVnwjSJ78EYWtr6GJTWUQsaO05yyRjc2UXPL3IbZqg+Q1zUPsfiPHkR0 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="309489568"
X-IronPort-AV: E=Sophos;i="5.95,213,1661842800"; d="scan'208";a="309489568"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 14:54:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="626575111"
X-IronPort-AV: E=Sophos;i="5.95,213,1661842800"; d="scan'208";a="626575111"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 25 Oct 2022 14:54:23 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 25 Oct 2022 14:54:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 25 Oct 2022 14:54:22 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 25 Oct 2022 14:54:22 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 25 Oct 2022 14:54:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VW5N6sSnGW0dQTRMUmkkr34nI0LAxb7jkSTTYZ5zgUfwuCKEWLtz9vVcqAUKTRvPkiz+9t1jC5mYYckRSbotOuUlFNUKRu6ZVeHgfN3At76CamDQCQKII/gDqu4VT1FjxEbAk17vAeZZaKHbEiqh+5JjekH5USOpwDgtBaYSBpt/+qrXIVYSQqM6lpGDzNRPYqjYkOkPvp78FTRu93xxURb+Vbr6dZhAzurSl2cHsbO35yvp2UDB5I8jXnlj5Ui4r5lvnu7FP+VSp4PBQ1ixy1oqqDP9R9vot6PQSX5sQx/dgzECGA7bdRoHDsJ62oWHxxySCKADSd7Rtw55xb1/tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M2rY5Wuo6r6mCt9yT/R4mzhy1N5dreb+dUp446QJAls=;
 b=Ov4Xr+CY2fm3dlbciVrlHYpzV1Ee1YVgIevIeEEOnYpvWMQi5nauOHUrw9g+xIDBmv9W8ZFZug2+whVuS7auN4uXW4asLWlGMUQwfar9hv5Qz0aUhpYf8ldfU4biSeScRdrvI9C6oADkuSUTuV5f++qjWgZVkAJCw55pzwoTDQwviOVbX5i1BNt+TG45wvIJaeTxuTrLKDscsQdOGBtVt2ehFksRI3bylh8RQwRH1nj60hmaYMCSvAQPtSVu25ex5CSzlFkF0y8TfDmNUxPcRoJh0Ki7S8Dz8wDZguqGsjQYxVMxbLcNxF4FQB58lpO5DdZtdpRh1I3fdOUQ0hoDew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SA2PR11MB5113.namprd11.prod.outlook.com (2603:10b6:806:113::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.23; Tue, 25 Oct
 2022 21:54:13 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d456:b3ee:cd32:4aed]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d456:b3ee:cd32:4aed%5]) with mapi id 15.20.5746.023; Tue, 25 Oct 2022
 21:54:13 +0000
Date: Tue, 25 Oct 2022 18:55:08 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20221025215508.6whuczwxmhhgwaly@gjsousa-mobl2>
References: <20221019161334.119885-1-gustavo.sousa@intel.com>
 <166622762737.8589.10780556995979963725@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166622762737.8589.10780556995979963725@emeril.freedesktop.org>
X-ClientProxiedBy: MW4PR03CA0185.namprd03.prod.outlook.com
 (2603:10b6:303:b8::10) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SA2PR11MB5113:EE_
X-MS-Office365-Filtering-Correlation-Id: 379fb4d9-d6e6-4d68-03ff-08dab6d3742e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: f1fXxuUGWQR8zPwHj/+BgG27oapjXyn7GPwdRuSV3/pp+YMHcjbGqN19IeXdQ9YZib6I6eUP3hm5EMFXv+fDKm4u2JufhUEohsUZ2KziMUCH+dfD31bbDcg3/yeZE5Mc+fn/6cDiqwP3MkFjNVmRp0A+mzmD8jYXIR9EpYASpUCoOpaynD4DjMIKuxfMuv9bfPFR891rWufVPY7oBxO9XEPRLFszOdhge29x0Zm2/njjsjnCx0gcfR0nHAlVqRQXknEjyWng9qpZkJ6X2HfHNeBy6UkYSRpCi85MzO3WDsHi8EOFJBjDHgHrKkXW+YHvwoSjUDBSkw+DAoLVaTwNGD3jEU/C4SAKSkqyknabuKoLgzHfw6k9KlwA2Y1IN+n2cYEhySnPAw6lnoErb6JiWNJZExFATOdi9OXByJLjqA6xUsniorX/gMpK8QGv5b2o9MzpweNdV/AZlR4cI6X8pk0dE/EaHCw/vED4R2WCEQU08biBOPw4FVpT3ZLprW5ocn7aGr2yOnxOxPwIMIYyNjCh4My0fTw+sbz7QiMd191LHQoGE80kyuiD8OfKbGGmaB+TnsJn6Q4rb2ksQaqZTjj1oienL7gYu2MvLfj0fYLkIfT3r/wYxtxZ0w71ogX7OyKr9rUl7y6q6KO65xErae6ry6cpWzgdadlO6H/078bxdL3P5ti1yDuUd7ju1U80n996TmuKo9piqLWsZdz4uvyUpMgFTJoNRPD6shAwv4fDJy8xgHrKAY2fAP+0HhqKg5kIEqZmbz17EjoooD1N9031t/pnAc9IA5V7v+QE3RFTO3+a6BFEPbrnmR1kjpDH
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(366004)(136003)(396003)(39860400002)(376002)(346002)(451199015)(41300700001)(8936002)(6512007)(5660300002)(9686003)(6916009)(66476007)(4326008)(6506007)(6666004)(316002)(107886003)(82960400001)(33716001)(186003)(38100700002)(1076003)(2906002)(30864003)(44832011)(66556008)(66946007)(83380400001)(478600001)(966005)(6486002)(86362001)(461764006)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0BwfOfhbFdJGQ6hiUuqkBdJGm23yvFVMRLD/q1KTxfjFRa9gmNHU8GY4vcer?=
 =?us-ascii?Q?SWZE5Mbaqc4OCbMn6oDnzxTxOfcojTCFcRd+YU1/wwUzkFz+ZKcn4iSxvj+p?=
 =?us-ascii?Q?huKj/R1Fczvz+kFshgJUiueQNRelK3CtUuFm+6hyr5/0eoYL0SNCVCayajmY?=
 =?us-ascii?Q?Omrh/4WhXqab+MBHEiakGJs0CGn5OTyV8o9LCMZcZxf0SeT1KtcOCqedAiIz?=
 =?us-ascii?Q?gUA800ZU48pWTTm44tiab//xjECs+8fy9RLUO+pKlHrNFDjw7jD1LrcqWrcW?=
 =?us-ascii?Q?uPfp7Gi6WOvVEeGwfHUSTybzukfklzBFmgndI6Lu7W1otv1FyZcYCuFe6sRM?=
 =?us-ascii?Q?/KuwlOZEeKPO7iAn2E1ohGcejs72hHZ53RFZqKgAPLyWi5toby2s4dOtxiW8?=
 =?us-ascii?Q?bAse9Kt0/vuy9FQx09rEQJR2dKgw0DkU9KUudnLw4f1jYqz5q14QHd60uZfx?=
 =?us-ascii?Q?eW2UMW/sMRr4dqgVdH6XOM0HhqHZnCfxFQt3gB1hSUaCLD3j6HE/nY4oOZ79?=
 =?us-ascii?Q?wzw0SqZcReCee/A5SuuCgVbGomAE12GJqXlqV6JSmijDfxnGJXwJGxgTAxiM?=
 =?us-ascii?Q?LOXkilZOwuAWVWnsMSVHPdB7dnFwlR10a5440yiv8x+OBPx983CmYOsG4gf5?=
 =?us-ascii?Q?0iRJMztNdOl0OZfc71iP/9GztQFm4VmOvaEvrju3gWMXRBNaoO542ii8I3Ny?=
 =?us-ascii?Q?1IhrmMBPzxvHPTf/Jq6baLa/9MXeNiO8NxVuVkhhJ6/iZ0lAHbXixmVVg1Zi?=
 =?us-ascii?Q?GE6veBLHI6IdGVdxdq2W+PhIUFFOnHyfQ5klDGB5fdx7+mz3woPwOaklJ2bm?=
 =?us-ascii?Q?LzdHCNtwGm+8kp9aUJ1qzW8jsQTLJxHx2AVWkArzmsX2LA1P0+qVng8WE0Xx?=
 =?us-ascii?Q?d/CzIn1q+VpbJrs5GWqabquYI21CewQjK8hIqbjMfM26rt1ZEMgDkl78j6cY?=
 =?us-ascii?Q?uKo5vv3V0Y42Zk24pQlByLIoLBXnUfv6O73bwohZ38z5LL7M650kERVuvvPZ?=
 =?us-ascii?Q?Bknn8n/cYeaiDsUZ6BzVkix9bYQdO0juZiuWt/h8GryqeK7rYB8U2698gtaA?=
 =?us-ascii?Q?7e1Vvyk8iXwRiQ2YSJ5fC4SHmXXsEo03T8gtFRA6OMKkVq/UqcHq3mOoMGco?=
 =?us-ascii?Q?ZWOQj/UvsfnJmC1pP8bytjIWWIO4HjMoTbQqD47Bie+0DriYoLuu1YsIX8jL?=
 =?us-ascii?Q?E0sOPXty/m9b+NTHkQViKHv5DFVpJuryAAUuscvABB2ScrhSGqVQxCW0iC8p?=
 =?us-ascii?Q?fu8w0qKPyIKGNmFcTYnS+Nx9DMJZwtTzYyI8EC5JbSLxyxZKBvqeUFsPnoSR?=
 =?us-ascii?Q?du90wYmxWQJv1xVC1iuO1Z7TvZVHnmG309IXbui/L1VzUAIeyTiaolURGsB3?=
 =?us-ascii?Q?QT36faL8bx3NaMPUQ6cNB4f/ybwnLjZIy83vLrkfZHsL4hiMPq/i6Eolwgx5?=
 =?us-ascii?Q?Xh2Gr0qietxaylpsJxGSoNxTo5WcyPyvCxq1vY+hDsGow9c0HR4vfW+eCUXp?=
 =?us-ascii?Q?ErcAqTiHj1rgOFYsp7oZx2g9DbpyUOkyRFCeoIcX0rYWlPSmoOTS8P6+R5i5?=
 =?us-ascii?Q?AiliyRwovILVbstCbNli6SEL5R748qZO687XpHzCmENgauC2+eCFYcbhbsBY?=
 =?us-ascii?Q?91CpKfQXVj0OBup3jOVp/Ep0j3poPKuhZ5DDP+sy6DD/rlihbIBVZeOhg4TT?=
 =?us-ascii?Q?AhlqDw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 379fb4d9-d6e6-4d68-03ff-08dab6d3742e
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2022 21:54:13.6592 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: auxYNw+eLWStifMpDlBa7uQPvmfF0e9xKSfw/vGO/UUvvwlGlaz43KvRAVupW2rsD7UADtOdRWcIVQAQhWaVqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5113
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/xelp=3A_Add_Wa=5F1806527549_=28rev2=29?=
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
Cc: Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 20, 2022 at 01:00:27AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/xelp: Add Wa_1806527549 (rev2)
> URL   : https://patchwork.freedesktop.org/series/109885/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12261_full -> Patchwork_109885v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_109885v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_109885v2_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
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
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@mman:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][1] +1 similar issue
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl2/igt@i915_selftest@live@mman.html

Not related to this patch, as the workaround does not target this platform.

> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-iclb:         [PASS][2] -> [FAIL][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

Existing issue: http://gfx-ci.fi.intel.com/cibuglog-ng/issue/7783

> 
>   * igt@kms_plane_lowres@tiling-none@pipe-b-hdmi-a-1:
>     - shard-glk:          [PASS][4] -> [FAIL][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk9/igt@kms_plane_lowres@tiling-none@pipe-b-hdmi-a-1.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk3/igt@kms_plane_lowres@tiling-none@pipe-b-hdmi-a-1.html

Maybe related to http://gfx-ci.fi.intel.com/cibuglog-ng/issue/7841 ?

Nevertheless, not related to this patch, as the workaround does not target this platform.

> 
>   
> #### Warnings ####
> 
>   * igt@runner@aborted:
>     - shard-skl:          ([FAIL][6], [FAIL][7], [FAIL][8], [FAIL][9], [FAIL][10]) ([i915#3002] / [i915#4312] / [i915#6949]) -> ([FAIL][11], [FAIL][12], [FAIL][13], [FAIL][14], [FAIL][15], [FAIL][16], [FAIL][17], [FAIL][18]) ([i915#3002] / [i915#4312])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl4/igt@runner@aborted.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl6/igt@runner@aborted.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl2/igt@runner@aborted.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl6/igt@runner@aborted.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl10/igt@runner@aborted.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl5/igt@runner@aborted.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl5/igt@runner@aborted.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl10/igt@runner@aborted.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl7/igt@runner@aborted.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl10/igt@runner@aborted.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl4/igt@runner@aborted.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl1/igt@runner@aborted.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl2/igt@runner@aborted.html
> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - {shard-rkl}:        NOTRUN -> [INCOMPLETE][19]
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-0:
>     - {shard-dg1}:        NOTRUN -> [FAIL][20]
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-dg1-13/igt@kms_big_fb@linear-64bpp-rotate-0.html
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
>     - shard-glk:          ([PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45]) -> ([PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [FAIL][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70]) ([i915#4392])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk3/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk9/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk9/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk9/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk9/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk8/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk8/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk8/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk7/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk7/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk6/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk6/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk6/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk5/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk5/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk1/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk1/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk1/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk2/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk2/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk5/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk3/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk3/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk2/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk2/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk9/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk9/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk8/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk8/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk8/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk7/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk7/boot.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk7/boot.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk6/boot.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk6/boot.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk6/boot.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk5/boot.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk5/boot.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk3/boot.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk3/boot.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk3/boot.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk3/boot.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk2/boot.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk2/boot.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk2/boot.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk2/boot.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk1/boot.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk1/boot.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk1/boot.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk1/boot.html
> 
>   
> #### Possible fixes ####
> 
>   * boot:
>     - shard-skl:          ([PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [FAIL][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87]) ([i915#5032]) -> ([PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104], [PASS][105], [PASS][106], [PASS][107])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl9/boot.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl9/boot.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl7/boot.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl7/boot.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl6/boot.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl6/boot.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl6/boot.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl5/boot.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl5/boot.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl5/boot.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl4/boot.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl4/boot.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl2/boot.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl1/boot.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl1/boot.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl10/boot.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl10/boot.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl9/boot.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl9/boot.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl7/boot.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl7/boot.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl7/boot.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl6/boot.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl6/boot.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl6/boot.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl5/boot.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl5/boot.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl4/boot.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl4/boot.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl4/boot.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl2/boot.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl2/boot.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl1/boot.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl1/boot.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl10/boot.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl10/boot.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl10/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@drm_buddy@all:
>     - shard-iclb:         NOTRUN -> [SKIP][108] ([i915#6433]) +1 similar issue
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@drm_buddy@all.html
> 
>   * igt@feature_discovery@display-4x:
>     - shard-iclb:         NOTRUN -> [SKIP][109] ([i915#1839])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@feature_discovery@display-4x.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [PASS][110] -> [FAIL][111] ([i915#2842])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         NOTRUN -> [FAIL][112] ([i915#2842])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [PASS][113] -> [FAIL][114] ([i915#2842])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_params@no-bsd:
>     - shard-iclb:         NOTRUN -> [SKIP][115] ([fdo#109283])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@gem_exec_params@no-bsd.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-skl:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#2190])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl2/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-skl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#4613]) +6 similar issues
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl7/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-apl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl7/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_mmap_gtt@coherency:
>     - shard-iclb:         NOTRUN -> [SKIP][119] ([fdo#109292])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@gem_mmap_gtt@coherency.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-apl:          NOTRUN -> [INCOMPLETE][120] ([i915#7248])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl3/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
>     - shard-apl:          NOTRUN -> [SKIP][121] ([fdo#109271]) +76 similar issues
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl3/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html
> 
>   * igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][122] ([i915#768])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-iclb:         NOTRUN -> [SKIP][123] ([i915#3297])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][124] ([i915#4991])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl7/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_userptr_blits@probe:
>     - shard-iclb:         NOTRUN -> [FAIL][125] ([i915#7224])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@gem_userptr_blits@probe.html
> 
>   * igt@gen7_exec_parse@bitmasks:
>     - shard-iclb:         NOTRUN -> [SKIP][126] ([fdo#109289])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@gen7_exec_parse@bitmasks.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-iclb:         NOTRUN -> [SKIP][127] ([i915#2856])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@i915_module_load@load:
>     - shard-skl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#6227])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl2/igt@i915_module_load@load.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
>     - shard-apl:          NOTRUN -> [FAIL][129] ([i915#7036])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl7/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         NOTRUN -> [SKIP][130] ([i915#658])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_pm_rps@engine-order:
>     - shard-apl:          [PASS][131] -> [FAIL][132] ([i915#6537])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-apl1/igt@i915_pm_rps@engine-order.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl7/igt@i915_pm_rps@engine-order.html
> 
>   * igt@i915_selftest@live@gem_contexts:
>     - shard-glk:          [PASS][133] -> [DMESG-FAIL][134] ([i915#7270])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk1/igt@i915_selftest@live@gem_contexts.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk7/igt@i915_selftest@live@gem_contexts.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - shard-skl:          NOTRUN -> [DMESG-FAIL][135] ([i915#5334])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl2/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - shard-skl:          NOTRUN -> [DMESG-FAIL][136] ([i915#1886])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl2/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-apl:          [PASS][137] -> [DMESG-WARN][138] ([i915#180]) +2 similar issues
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
>     - shard-iclb:         NOTRUN -> [SKIP][139] ([i915#5286])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][140] ([fdo#110725] / [fdo#111614])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][141] ([fdo#109271] / [i915#3886]) +14 similar issues
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl10/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][142] ([fdo#109271] / [i915#3886]) +5 similar issues
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl3/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][143] ([fdo#109278]) +7 similar issues
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][144] ([fdo#109278] / [i915#3886]) +2 similar issues
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-iclb:         NOTRUN -> [SKIP][145] ([i915#3742])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_chamelium@common-hpd-after-suspend:
>     - shard-apl:          NOTRUN -> [SKIP][146] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl3/igt@kms_chamelium@common-hpd-after-suspend.html
> 
>   * igt@kms_chamelium@dp-hpd:
>     - shard-iclb:         NOTRUN -> [SKIP][147] ([fdo#109284] / [fdo#111827])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_chamelium@dp-hpd.html
> 
>   * igt@kms_chamelium@dp-hpd-enable-disable-mode:
>     - shard-skl:          NOTRUN -> [SKIP][148] ([fdo#109271] / [fdo#111827]) +14 similar issues
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl10/igt@kms_chamelium@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_content_protection@atomic@pipe-a-dp-1:
>     - shard-apl:          NOTRUN -> [INCOMPLETE][149] ([i915#7121] / [i915#7173]) +1 similar issue
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl3/igt@kms_content_protection@atomic@pipe-a-dp-1.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x10:
>     - shard-iclb:         NOTRUN -> [SKIP][150] ([i915#3555])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_cursor_crc@cursor-offscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-iclb:         NOTRUN -> [SKIP][151] ([i915#3359])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor:
>     - shard-iclb:         NOTRUN -> [SKIP][152] ([i915#4103])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_cursor_legacy@short-busy-flip-before-cursor.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-apl:          NOTRUN -> [SKIP][153] ([fdo#109271] / [i915#7205])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl3/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check:
>     - shard-iclb:         NOTRUN -> [SKIP][154] ([fdo#109274]) +1 similar issue
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_flip@2x-wf_vblank-ts-check.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
>     - shard-skl:          [PASS][155] -> [FAIL][156] ([i915#79])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
>     - shard-skl:          NOTRUN -> [FAIL][157] ([i915#2122]) +3 similar issues
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][158] ([i915#2672]) +3 similar issues
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][159] ([i915#2587] / [i915#2672]) +1 similar issue
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][160] ([i915#2672] / [i915#3555])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-iclb:         NOTRUN -> [SKIP][161] ([fdo#109280]) +7 similar issues
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-edp-1:
>     - shard-skl:          NOTRUN -> [FAIL][162] ([i915#4573]) +2 similar issues
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl10/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-edp-1.html
> 
>   * igt@kms_plane_lowres@tiling-none@pipe-a-edp-1:
>     - shard-iclb:         NOTRUN -> [SKIP][163] ([i915#3536]) +2 similar issues
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_plane_lowres@tiling-none@pipe-a-edp-1.html
> 
>   * igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers:
>     - shard-skl:          NOTRUN -> [SKIP][164] ([fdo#109271] / [i915#5776]) +2 similar issues
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl4/igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1:
>     - shard-skl:          NOTRUN -> [SKIP][165] ([fdo#109271]) +319 similar issues
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl10/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-iclb:         NOTRUN -> [SKIP][166] ([fdo#111068] / [i915#658])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-skl:          NOTRUN -> [SKIP][167] ([fdo#109271] / [i915#658]) +1 similar issue
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl10/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-apl:          NOTRUN -> [SKIP][168] ([fdo#109271] / [i915#658])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl3/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-iclb:         NOTRUN -> [SKIP][169] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb6/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@cursor_render:
>     - shard-glk:          NOTRUN -> [SKIP][170] ([fdo#109271]) +1 similar issue
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk9/igt@kms_psr@cursor_render.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][171] ([fdo#109441])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-iclb:         [PASS][172] -> [SKIP][173] ([fdo#109441]) +1 similar issue
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-skl:          NOTRUN -> [SKIP][174] ([fdo#109271] / [i915#2437]) +1 similar issue
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl7/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-iclb:         NOTRUN -> [SKIP][175] ([i915#2437])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          NOTRUN -> [FAIL][176] ([i915#1722])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl6/igt@perf@polling-small-buf.html
> 
>   * igt@perf_pmu@event-wait@rcs0:
>     - shard-iclb:         NOTRUN -> [SKIP][177] ([fdo#112283])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@perf_pmu@event-wait@rcs0.html
> 
>   * igt@sysfs_clients@busy:
>     - shard-skl:          NOTRUN -> [SKIP][178] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl4/igt@sysfs_clients@busy.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-apl:          NOTRUN -> [SKIP][179] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl7/igt@sysfs_clients@sema-50.html
> 
>   * igt@sysfs_clients@split-50:
>     - shard-iclb:         NOTRUN -> [SKIP][180] ([i915#2994])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb5/igt@sysfs_clients@split-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglb:         [FAIL][181] ([i915#6268]) -> [PASS][182]
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-iclb:         [SKIP][183] ([i915#4525]) -> [PASS][184]
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb5/igt@gem_exec_balancer@parallel-contexts.html
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-glk:          [FAIL][185] ([i915#2842]) -> [PASS][186]
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk9/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk3/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - shard-apl:          [DMESG-FAIL][187] ([i915#5334]) -> [PASS][188]
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl1/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@i915_selftest@mock@requests:
>     - shard-glk:          [INCOMPLETE][189] ([i915#7267]) -> [PASS][190]
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk7/igt@i915_selftest@mock@requests.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk9/igt@i915_selftest@mock@requests.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1:
>     - shard-apl:          [DMESG-WARN][191] ([i915#180]) -> [PASS][192] +2 similar issues
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-apl1/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl7/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-dp1:
>     - shard-apl:          [FAIL][193] ([i915#79]) -> [PASS][194]
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-apl7/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-apl1/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-edp-1:
>     - shard-skl:          [INCOMPLETE][195] ([i915#4939]) -> [PASS][196]
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl5/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-edp-1.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-edp-1.html
> 
>   * igt@kms_plane_lowres@tiling-none@pipe-a-hdmi-a-2:
>     - shard-glk:          [DMESG-FAIL][197] ([i915#118]) -> [PASS][198] +1 similar issue
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-glk9/igt@kms_plane_lowres@tiling-none@pipe-a-hdmi-a-2.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-glk3/igt@kms_plane_lowres@tiling-none@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
>     - shard-iclb:         [SKIP][199] ([i915#5235]) -> [PASS][200] +2 similar issues
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb7/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [SKIP][201] ([fdo#109441]) -> [PASS][202] +3 similar issues
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@perf@polling:
>     - shard-skl:          [FAIL][203] ([i915#1542]) -> [PASS][204]
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl5/igt@perf@polling.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl7/igt@perf@polling.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [FAIL][205] ([i915#5639]) -> [PASS][206]
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-skl7/igt@perf@polling-parameterized.html
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-skl5/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-iclb:         [SKIP][207] ([i915#658]) -> [SKIP][208] ([i915#2920])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-iclb:         [SKIP][209] ([i915#2920]) -> [SKIP][210] ([i915#658]) +1 similar issue
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12261/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109885v2/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
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
>   [i915#6949]: https://gitlab.freedesktop.org/drm/intel/issues/6949
>   [i915#7036]: https://gitlab.freedesktop.org/drm/intel/issues/7036
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7121]: https://gitlab.freedesktop.org/drm/intel/issues/7121
>   [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
>   [i915#7178]: https://gitlab.freedesktop.org/drm/intel/issues/7178
>   [i915#7205]: https://gitlab.freedesktop.org/drm/intel/issues/7205
>   [i915#7224]: https://gitlab.freedesktop.org/drm/intel/issues/7224
>   [i915#7226]: https://gitlab.freedesktop.org/drm/intel/issues/7226
>   [i915#7247]: https://gitlab.freedesktop.org/drm/intel/issues/7247
>   [i915#7248]: https://gitlab.freedesktop.org/drm/intel/issues/7248
>   [i915#7267]: https://gitlab.freedesktop.org/drm/intel/issues/7267
>   [i915#7270]: https://gitlab.freedesktop.org/drm/intel/issues/7270
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
