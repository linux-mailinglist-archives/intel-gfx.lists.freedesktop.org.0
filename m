Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 665E760E82F
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 21:03:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95C2B10E744;
	Wed, 26 Oct 2022 19:03:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B631210E744
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 19:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666811002; x=1698347002;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=mtjLyaLNn2Am1CNi3p+59J8qEaOcAlznL/8Uobrz96E=;
 b=C0exvJBdIEPE+eRC3y+NERlr7oAmLpg97qM9UMZk/Xab+hjpA49xentH
 I0yi+wqukXOe7Qpscuv8kzAn1KIW3gLUDJ2fCM9LyZVYKs0rV0s7Yoffe
 FCyBcy4DDOkxqsq5Dp3lunOeNPm9bdKE/fEhTHvAwsNe/l1fnnTbWDvyv
 E88DFwz6ab5qRhhSUTiBQLc55AeeD4TthQSSF0iDR6UfMlDHVTu98RX5L
 dyQ7Yusw58vNFB6S0d/i8QBtF9O8VG8H/Dmu5Ykn9aTbmF6cLs/qyOlkg
 f8pbl3beo9CIs4J0dIzh2UOMHJ8QmQtxC5G8RTS6EYrHLHYgU8Zxgoiax g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="309128329"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="309128329"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 12:03:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="774714355"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="774714355"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 26 Oct 2022 12:03:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 26 Oct 2022 12:03:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 26 Oct 2022 12:03:21 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 26 Oct 2022 12:03:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d5StALLV510XltNeBd7+UzkpPLR4mwLEOAghamNxwDeeOeN97jOXG0WCgEGDtQm2eXKsD6X8V2pwBDEVpQRWW6vdgjt3zq9lYH2Wr5m1XFe5jz3lNJiWZRyGwVrmQJyvLADDpRSVVqt3TkU0dR2VHMPaP9FiLtZiCJ3LbU1E2TvMYuRjVNqBGNEE0bh070H00E1VWQhiBEcDqyAsNBenCyU3S2KP+v97hs0ZcxPIfr9P6c+kRshc0I2nPqKWTAZ7u14mc6hH/hkr9hnu5ZDLgstKwKF+sNPAFbGQG10VWNizxA8KlD2CXWLegtgwhlgq2jxwGQkqZdbOe8aSqp52vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tq5zezioxWd41iHl7dTGgggQRXOFjdWxrXbaEd14pm4=;
 b=itvH+vVgDhpm/Hp6hzGDMalI9R3SAq0gnx9LZo/QtrtyYipS6uaA/R74nzZ9PsdsmrIlp9T6zSxTp8IckoBuZNywQuFwiYTBBUh6jmRFaS0ZTZ9jhbHMTnii7iIPLv5QQjrbyXdTmYGrMvk8dxjEturff+PZFilAzJgDel7vpBQtqI9EdPKY17dXhxNtxcMBXyBA4odhYf7Az9dR3ZOnw6+usJ1jO+4GTle0aYuURYVYWG4CYkUQYG1pG8X+947wtqY6P1UOkkWGCGoO2d0X0qWUEJ5sTzpj2/k3kUAAslI/1hKs98xxtryKBZ+pU/YZgcHw+p6LgvnJkEPXdbrbLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SA1PR11MB7129.namprd11.prod.outlook.com (2603:10b6:806:29d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.25; Wed, 26 Oct
 2022 19:03:19 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b941:cdc9:b350:ddc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b941:cdc9:b350:ddc%3]) with mapi id 15.20.5746.023; Wed, 26 Oct 2022
 19:03:19 +0000
Date: Wed, 26 Oct 2022 12:03:17 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y1mEdQx3djtbUX6X@unerlige-ril>
References: <20221025201708.84018-1-umesh.nerlige.ramappa@intel.com>
 <166679483030.25381.13233515174131949406@emeril.freedesktop.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <166679483030.25381.13233515174131949406@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR03CA0084.namprd03.prod.outlook.com
 (2603:10b6:a03:331::29) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SA1PR11MB7129:EE_
X-MS-Office365-Filtering-Correlation-Id: 4fcb4d1e-f74c-4caf-6a86-08dab784beab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 38OuFbXSdPkpOmavxM48PDp3IOk5xv5nJ1v1Kd3jiyLXRmQBWd5EqlSbFO5v5nyx50GO7efzVwDbO0oTpcIxL4CsVY7PvujC/mmhouC5XQzZM88Tp4VIT7GH9i6QAZe0dJx/ndin39c0Bzyblv2ntdxJHqyOEAp/Vswg1t7nMQA5AdvVMm40TvAyAxBczAvo9X5KZPf15tcti2mjykzOFgj71ziYV5sYWxhHb8GS6faSxSA3phMkn9/n/X+wGH+crM+txv791e2HcZNytsZwhTHJ1pkXyeMijd2sWobJQUbP7wsj2Nl1qZJXTP8yUUr7gIs5v4Yyv4CFOphaYtDQZIOFmYsi9XJDKK66M5ffF6joH3kd9XiBQo624Pg5AveUYypD0t8ZkFMw1FrzrTyBAPaejxOXalvHcQOg8K0OW9g1ZF7BhERU+S5Wf+PEHA2Z5CFzLmUvv+8815ZBkgU2gZdJ1uAdYa0TTWryZHalUY0Yqm7P5WP+g+R17KePijwNnwjJ34nw8drPItrJKoeHCgWH/axiWpDluHpg8Zt0NgkwP4sFW8LvYXLYoXANreca/aOqpM8VKradHAHo/qRxlcX/As+t9eQ8kVSu2Uk1eQOT136ioqHD/3WvuMYI6CjskQaBsvlbsCrWWdqFo/TpdqLT7tHw+EIBekn0z7JS157CZ9PEGbyapel+YDObwumTEJ0BLYH3uzxjisd0rE46yua21kCW3a9FQHdt3ESZm3s=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(136003)(396003)(346002)(39860400002)(376002)(366004)(451199015)(8936002)(66946007)(66556008)(2906002)(66476007)(86362001)(316002)(41300700001)(6916009)(5660300002)(82960400001)(186003)(38100700002)(83380400001)(478600001)(6486002)(6506007)(9686003)(6512007)(26005)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c2pNRzhmVmFrVzNyaHpCeG1YbnJhbnF0NDNtRXhRM2k0Z0ErcHdTWXZhYzdL?=
 =?utf-8?B?SmV3MEduOWRhZklrMTdMTHRHZkg0LzhNb1dZOHluWlQyWHArb2NSNEZ6aEFr?=
 =?utf-8?B?MjF4cWxSN3VsZmMzc0FDalFOVkV3NllqRXByb0Y1dmZmbTZhdFpHbjEwdjh5?=
 =?utf-8?B?TVN0Ymhhbnh5RWJGSVIyTWNxNUpHV29yWG05VmxrN0laZFBBUmdBZE85dHMv?=
 =?utf-8?B?TVZmakRsK3k2TFJpcC9YOFgvaHU5OUR0eE5iMFZtVk9OVmZPQTJHNEFSNFJE?=
 =?utf-8?B?bHJ1dHV2TXpFSXA1RmRneWE3Qm5uN3ZPQ2xKS1RqcWNVS2pSeHU0azkvcVJR?=
 =?utf-8?B?ZkZzaVJpSG1BWmI3WDBvUzlQMkxIakg2Zk16RGpGSHJHdVJZSzRqc2ZabnNJ?=
 =?utf-8?B?NzhjMEFMaTJxRGRScGZlY1VvSnAxWmVmbnY1bzZWRE8wNGtYUkl4Rzl5d0Jr?=
 =?utf-8?B?WGpNdkg0cXdRSXJmUWZMelNIUVN2UmNXeEd3VFRZWFQyRnRSRmdPV3VnTEZs?=
 =?utf-8?B?NDdJcXp0VWoxWWRWbm1Lc1Y0dTluU25IOTdOVmVxQ0x0QjVmTUowWUVRSnpo?=
 =?utf-8?B?TzBzcHcvVWIwbDNmQVJER2dId1BSem5TMTJpUkVzVE50MGJPd2RqSXZ2TW9o?=
 =?utf-8?B?dmFUaEFYdnhqS1dMMHZKVitYeFJiN2tRR25hd0tSRit4TWhqditGT0tYUnVX?=
 =?utf-8?B?cjNzUkFzaGVrbHVrdnB0SXpYc3QybVRJazUyMGc4dm93ZnA1NWYya25JNzlq?=
 =?utf-8?B?TWVyaDJIbXNuWGZxbHJuWXFRdzd5YmRidmEzeW5aV0FGa1l3czJaN1kxd3I3?=
 =?utf-8?B?SmlqTVFGWkhlc2gybEFiSTd4eVJSN01VWUdxV3I0V05GVExpazhYYXlnTG5W?=
 =?utf-8?B?QlVyWXZ5V05rWkExWG44cmtObmxNaHQzejRYbmJYMGVidEhBa2VIZm8waHNp?=
 =?utf-8?B?N2ovdGlxOUFlVE5RRnVmN1N1YjBBWmdrSE9uUjJ2cVVHdzIyVVpSbldWK2ZU?=
 =?utf-8?B?cEtyN3dXcTdJYkpkMCtVNGhTandnajBwdDZhQkVaU0t2eWtDUFc2ODZQNS9p?=
 =?utf-8?B?U3dxaUtjNVY2YzFBSTFOdVNuTWNsdUJCck5wRU5SY0VXbUgrUUJ5Z2paN3cx?=
 =?utf-8?B?Njd1Sk95YTc2QXRzQ3FMaG1QTmJjYVNyZTJvOHVlMVkvY05jSmowQldBTUZt?=
 =?utf-8?B?TWYrU0JEWEh0Z2dLaWs5RERYcnkwb08xQWtJTjQwckFJQm93TDN4NTZhdzNQ?=
 =?utf-8?B?dEJKdFBvY055WGRZcWZhU0VaZHpVZHlERUp4MzcvWEN2WnV3dkNBOFc4Q3o2?=
 =?utf-8?B?VHUvUUp4VnJCaTBsTXZCMmsvMWZsYjV1cysvT0ZwMFNjR0M2SnNGRlExRUhV?=
 =?utf-8?B?N1V1UlFnK3FranNjR2trM0dWcVBKbEpjRnlOeG11L1d0aXp4VDJuZ0FLUTR4?=
 =?utf-8?B?NzR0eVFIVUZMOTFFZVlzem5ZNXBYWGFCSlkzTHFRQkhIQ0ZTZjJ3bEFQVCt6?=
 =?utf-8?B?ZFRjVldPb3hPRzVmcm8yT2Q3elpWODhsRVlBd0MrMkVDYjQ0OEpUdmxVT3k0?=
 =?utf-8?B?WlB0Nks0ODFsekl6Z1dyZERJalN4Y1cxaUxNd0h1eTJBaDNic3d6VUhkOVBx?=
 =?utf-8?B?WWVYQzE5KzFUNG1MWnE1Ny9rWUx3RzNjRStnK2EwdFZVZ0ZZejJaZkJRMFVG?=
 =?utf-8?B?VmRXUGd3U1JTU253QkFvV2R3dUZDaXNkRURmdldhL09VUjRoZTQrV2dibU11?=
 =?utf-8?B?VGFoaTFvcWZtY0hmV3drUGUra3ZoUThsNGxGNzdIaUFMd3I2NzkzWDhFeDF5?=
 =?utf-8?B?M0lUSFB0OGN5Q0xEc2RTdnhtUW5iQVdJeWV3TTFXSzhIUmhXc1kxZEhROVVk?=
 =?utf-8?B?TjlQWlhwV0g0WFJHRWlTNlFETDNvcW1oUWllZnRDUDNaZEZpZmlYVXlxb1Bo?=
 =?utf-8?B?dDdIQW40MWsxSGZxblVYQ00weVF3YlBTWUtrNGd2MXhWWEZYQ21RUUdpdHJW?=
 =?utf-8?B?SDA1Y3MyQURMc3R4L1FCL0xXWVE3NzEzM1RtZGN5RXBidkdiNDBpTHYvdCtF?=
 =?utf-8?B?OHVMbUpxbVZMMWJMYzd3b2NEd3Q5YSsxZ3lqOE9XaXBtcXBoSlBOOFVCZUI0?=
 =?utf-8?B?M0RHNnhWeVZ2WDZSNzBYNDEwSkxRalIvYWhjckxSelNDYlc0VXQ0dm1HMnNK?=
 =?utf-8?Q?myUW5eO1J72cKcd9u32ddN4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fcb4d1e-f74c-4caf-6a86-08dab784beab
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Oct 2022 19:03:19.0067 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s3NvZoJSlV4lTKyuImJbyDRYgbyxxzbJ4qHEEBK9aRFNGodh2HjKftVB8JOCAlIODjVgKbZYTsrp+kzH1cTKEvPJ4yy5lJuqJns5Z0H8DWE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7129
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQWRk?=
 =?utf-8?q?_DG2_OA_support_=28rev10=29?=
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

On Wed, Oct 26, 2022 at 02:33:50PM +0000, Patchwork wrote:
>   Patch Details
>
>Series:  Add DG2 OA support (rev10)
>URL:     [1]https://patchwork.freedesktop.org/series/107584/
>State:   failure
>Details: [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v10/index.html
>
>    CI Bug Log - changes from CI_DRM_12294_full -> Patchwork_107584v10_full
>
>Summary
>
>   FAILURE
>
>   Serious unknown changes coming with Patchwork_107584v10_full absolutely
>   need to be
>   verified manually.
>
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_107584v10_full, please notify your bug team to
>   allow them
>   to document this new failure mode, which will reduce false positives in
>   CI.
>
>Participating hosts (11 -> 11)
>
>   No changes in participating hosts
>
>Possible new issues
>
>   Here are the unknown changes that may have been introduced in
>   Patchwork_107584v10_full:
>
>  IGT changes
>
>    Possible regressions
>
>     * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-edp-1:
>
>          * shard-skl: [3]PASS -> [4]FAIL

unrelated to this series.

>
>     * igt@perf@global-sseu-config:
>
>          * shard-tglb: [5]PASS -> [6]SKIP
>
>    Suppressed
>
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
>
>     * igt@perf@global-sseu-config:
>
>          * {shard-rkl}: NOTRUN -> [7]SKIP
>
>          * {shard-dg1}: [8]PASS -> [9]SKIP

global-sseu-config is supposed to skip for all non-gen11 platforms.

Thanks
Umesh
