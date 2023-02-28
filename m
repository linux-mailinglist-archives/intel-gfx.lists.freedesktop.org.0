Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4656A605A
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Feb 2023 21:25:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3C8410E067;
	Tue, 28 Feb 2023 20:25:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC46810E067
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Feb 2023 20:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677615927; x=1709151927;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=JNLraJiAFFhevEtGriXl8BXHppd1tvS/lH4j8QQtTFI=;
 b=ZpD3MSHKQUmWRAmn3c1zO50py4dWSJFFExQQq8bM+qHUrco1NfKMhm49
 IMUxKCZPQy+u3bC3PuohrjjvsQJeXkkIb7RNE5h9QCyqJta+jlZ+XkI4F
 L7l26qGlcRS7Gn+SsrI37s0sBmTdoAKOIApCxskrZsmVc8QgQEs03mAvH
 Ld8qeMrNcipfLBKm+o88FVrJ0nOSbiH3Odwn2BaSBTGXMhdKXh5Pu3kYS
 bUhkt5NJNz/vLpPoHLgA+LPO7X+oLvu2qw3LTf3UAsZgAiYY/IjJ4ei3W
 UQ15I0YemYBZ77ywX1f7QWExC2CXRntIkQ07ExBlcZGPD5hwyCMLvl3J1 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="322498944"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="322498944"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 12:25:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="706716917"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="706716917"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 28 Feb 2023 12:25:27 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 28 Feb 2023 12:25:26 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 28 Feb 2023 12:25:26 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 28 Feb 2023 12:25:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l9uw0EHSCGEHP85ppe1bkyiRxSRgFpPB5CBNg4t2lPHhIttZ2j8N/xUv5Om8q0Ex8jwF2EIOhVs5h1X7Xn7iUaqjd6bptVD8NgXcCcvDrIqAygNA6IMv28IYNMZT+gyapJqaBAX8u5lpOQvIPLBrEhxWIfgtjuFGCx0/wFO5M4/Hs5PmDNT2mLmnNR3bZhx4SWFl8pRbiDa1BlI7VhP35sV/aDoWsuI4K1hQ4fnbXYUtxYiMnRevyEzRSqwQ4sfU85KG1YLXaRMKiYVJxNpXdouRdnfgaRx41IiIB4NFasKNaXRzG1nAl93VrKar0Kfqpxujx+5NwbS3x05t8sbUIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cmq7Vp48i3ahdxGj7YcxRXZ985rDYdeJTP5Q4RYX16M=;
 b=ZEGWYkX23tjByGm+JMLD+Q5S5bBpEEnr/gX0MdB0Tvd2TL91VuLxY2Y7MYtmJovZTZybbDl+3CRoL3fApMlAsUjsLYL5vsBCHCMAsGND2tI6QbcJqNqWpxWVDhLyPRcoK+xE5Ck++moxd2LkisopmF0VJ8O/TNMKJ5nRyMB8E1orb/0622PheOl1+eBblVh6e8Hj4cFt5A0KmAAtLR5FIVmfM4Jdxjse9pZtWIV/RAiRh4QMagamtNjoFWA4GLBK5Qp0XOEv5KsraR8Ouz4AKpQGtq5q00WpLcREKBJEUL9zCLYV0hDPJqdCvneDgRDuY8DAuduamOV86vdP7sq7EQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 BN9PR11MB5500.namprd11.prod.outlook.com (2603:10b6:408:105::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6134.30; Tue, 28 Feb 2023 20:25:17 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%6]) with mapi id 15.20.6134.030; Tue, 28 Feb 2023
 20:25:17 +0000
Date: Tue, 28 Feb 2023 12:25:14 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y/5jKt55o7IJLszn@mdroper-desk1.amr.corp.intel.com>
References: <20230224002300.3578985-1-matthew.d.roper@intel.com>
 <167722362930.4565.8889465366731900584@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <167722362930.4565.8889465366731900584@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR01CA0022.prod.exchangelabs.com (2603:10b6:a02:80::35)
 To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|BN9PR11MB5500:EE_
X-MS-Office365-Filtering-Correlation-Id: d5a444f2-1d95-4fcd-f076-08db19c9e79a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ff2+fsR89gsSpAV42OagXf7ti0phxZuxgbo2v6iHm6I6DJeXkZLO2rGGn24hdA//u74jQWFQ5RYPS0MCbsGTYHl8KprNkeZBgEiufZcUKksyt9/+w91AZ5XYvS/2i+3N3+DnpgXbpHzZkpD/R2+RK3eg+tZa8rYCSD89HjACUlScqdZEhlIc1S8ljvkAO0QMyZ/X/Y6VnQJ+lBl5ue2H3FZW6twc4RcgvxueOwdsNvgK+hMk2/YYYGUtVcNJCerGO1tmoBlhZeVKk3P7P0r590LVHIZqlWFa3pMP8mcmDjM+KkODAcgW0egmxQUmiP1Plajzn9wfxnUO8151N8Ga/JmtpG2IWG+iCWHo06gHKSlgev41KMqb9W4w9PvHvTk22Fw6EqohBV1oaTq1Ut8hUC1Z0y8PXN5ThGMsqvQwNj0hY0C1/0nkRmAuQ2fORIXNAkfvaYs+aZfPt1duAjO6N53UCsmUqNRMvmpDDYtmDA2Sk8C7jLp6YOnQVSnaEerYGk5uoAOVd3A+9W/jerxiCTD7VrxEEdWlmKUJtSsefgW5GJ0hKzzBOmd0f0qrgxmTc/mKQaZlGll8G6MJsu2eGQSH091uqGe1nCkDzKxyO+mMwAPey4btRulZhDUqeQT1QUipzplnU0ysi3WA8Q0oe07R8jL8ZxPXhFAa4xkf0gc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(396003)(366004)(346002)(376002)(136003)(451199018)(86362001)(66476007)(66556008)(66946007)(5660300002)(6916009)(41300700001)(8936002)(2906002)(30864003)(38100700002)(82960400001)(6666004)(966005)(6486002)(478600001)(316002)(83380400001)(26005)(186003)(6506007)(6512007)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1AhdqAaYVuPic1vZ8wpA47HWCoXda5PkltX52DKQk4C9YJGI+aEpXRscRQeX?=
 =?us-ascii?Q?NseNV5mXWTyi9iHd6L1nArnaVTejhHe3el8WwQSFi2e8AQJOSDZzG7DxoSWj?=
 =?us-ascii?Q?jM5F1T7KBfPV/FcxlE7AiJ4MfVQhNDBnH+JktayWdJVlcrqzZsrQ5uuuq1zo?=
 =?us-ascii?Q?gDerEga/xchVpjvs5fvWSUADz3zn+rw0WnAAItV9kHg/ZGq4KVoHJPfUr1Ep?=
 =?us-ascii?Q?5uilziazS4X8YtaHK4JCSMmAPJ4Bo28EfJfr17NH2YMH/2pTCBD/tNA6VCU1?=
 =?us-ascii?Q?IgD7UEV0fZ5R5dO5f0aPDxU40YBtefncOYqcTcwo6n5rkI6aciBlJTGRtz1w?=
 =?us-ascii?Q?jz4PPnHNoox58i6V2DmafWOG+HqNs+WcEFMK2N3Jir4v4A5ZS85UHnTTy0R2?=
 =?us-ascii?Q?c+JCVaS3OSM/J4xud3pSbkTjH2SksyFtorcORhOVfj10CZHAvr2w51gHG4Qe?=
 =?us-ascii?Q?nbMyXVee4NQGlUt2m3Tn3cNtvFFfZ5pQsfzjBb39HKOmCDgVFbAz01RRM8CQ?=
 =?us-ascii?Q?mppKZDrzWsNSk8sQKecp4POHy5jzIp4JFpW0RhFSF9MHUDpYFSg+WZT3eZVg?=
 =?us-ascii?Q?C4vMaebhYnzzEOXbiVjnDgHqUoTDECpsAF2NJ8goqC36y/mkx7gvaqQh+Wvh?=
 =?us-ascii?Q?PbaxKG78JurrAYeOcHaXiwJCJrHttxYmvUVb5MIB8KVun5JhrKmAcmA2h9QK?=
 =?us-ascii?Q?kDWXLS+fiAwkcs5edz5UBD0vGJbKcTivXzkNcwi7Ysdp7EkU0p2rED+rGwED?=
 =?us-ascii?Q?BskSY8QvX4eVsd2YNZ7ZojCF5QeJW78+OxqjEFt20EQCgmHPN0NETNtKOQMZ?=
 =?us-ascii?Q?lFVcEFMQkNb0yLsTm3khtm8F1j4nx1Zhg2AJ7GYrWPfDAi8XqiDRxOnNrr7u?=
 =?us-ascii?Q?rGUl1843tERUPV2WSh6gHFuFTII6m0xmXYGJ542NlGsIcUMHr2ayNrLa3yPG?=
 =?us-ascii?Q?CAw5Xns0pvS2L4CRFLZXH/OVEsSsSAhaMMDcWQk/K/Dcg9cXQbSQQCjJBt81?=
 =?us-ascii?Q?48gKnqorXabPY7EU/U+9Dc5sQydCUrdUWRdlnsl+ASLUwrpxuDt2QYrxdTXC?=
 =?us-ascii?Q?fllr5limR/YHKzDLqcJoYdPntDq5T27AEXE5Hhad/D/2QvHpw1+E2aX0PV0r?=
 =?us-ascii?Q?TtIsgi2NojnL8giOISQV3ox0qfZq099XzIaZgtueJWvXsScRT66p25BDV5iQ?=
 =?us-ascii?Q?3Pwd7uNUqmfr09u6CDpUX0CT3EjpudvmwUtnMW9DkOcEvjugLWvzy4UwswhZ?=
 =?us-ascii?Q?3ZQMXWYyS6NB6qI0O8C/u/f4DKfcOkMK529aUgkgKzbw0rj2nBUkImfGxf3c?=
 =?us-ascii?Q?K2RYhJZH93iscN9smm+3boV1EvzB5zXfllHzgI08Z1xX0JH4gR18zxSqFVtr?=
 =?us-ascii?Q?o+31qn9EffW2eg7hql9a3gJFyg8SQRPWlXeC3YBWw3vpIO5JIsBGZtwz4Pnl?=
 =?us-ascii?Q?eKN+mBA4JdIco7ZWr35b/HDWGHALoj9RkmxTJ9L53accQcDN1ErVmieuD7r2?=
 =?us-ascii?Q?itzf7ktPLzsmNkt4dL4mD+e0l60CE79sWrf5Q36rnP112dNH6bdszTeN6igs?=
 =?us-ascii?Q?FMVZpdCSANQQ+cNZgoScceWJ9j19e7voz8a1RgwaTpQq+F5Dix/ND02vwKNz?=
 =?us-ascii?Q?oQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d5a444f2-1d95-4fcd-f076-08db19c9e79a
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2023 20:25:17.0994 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cI6e30YgO8auljJCOwbhHTd32JLjoJ7cgkpPyZt+0Kqkz9yat8iVGSDFBLPUJMa9UY6cbtJrlt7tv+GWqJQ3wkLttGp6SAjDX6Bdby7CIPo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5500
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Whitelist_COMMON=5FSLIC?=
 =?utf-8?q?E=5FCHICKEN3_for_UMD_access?=
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

On Fri, Feb 24, 2023 at 07:27:09AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/2] drm/i915: Whitelist COMMON_SLICE_CHICKEN3 for UMD access
> URL   : https://patchwork.freedesktop.org/series/114317/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12774_full -> Patchwork_114317v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 

Applied to drm-intel-gt-next.  Thanks Gustavo for the reviews.


Matt

>   
> 
> Participating hosts (9 -> 10)
> ------------------------------
> 
>   Additional (1): shard-tglu-9 
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_114317v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@crc32:
>     - shard-tglu-10:      NOTRUN -> [SKIP][1] ([i915#6230])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@api_intel_bb@crc32.html
> 
>   * igt@debugfs_test@basic-hwmon:
>     - shard-tglu-10:      NOTRUN -> [SKIP][2] ([i915#7456])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@debugfs_test@basic-hwmon.html
> 
>   * igt@fbdev@write:
>     - shard-tglu-9:       NOTRUN -> [SKIP][3] ([i915#2582])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-9/igt@fbdev@write.html
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-tglu-10:      NOTRUN -> [SKIP][4] ([i915#3555] / [i915#5325]) +1 similar issue
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_exec_capture@capture-recoverable:
>     - shard-tglu-10:      NOTRUN -> [SKIP][5] ([i915#6344])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@gem_exec_capture@capture-recoverable.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-tglu-10:      NOTRUN -> [FAIL][6] ([i915#2842])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-tglu-9:       NOTRUN -> [FAIL][7] ([i915#2842])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-9/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#2842])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_params@secure-non-root:
>     - shard-tglu-10:      NOTRUN -> [SKIP][10] ([fdo#112283])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@gem_exec_params@secure-non-root.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-tglu-9:       NOTRUN -> [SKIP][11] ([i915#4613])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-9/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-apl:          NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#4613])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-apl2/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-tglu-10:      NOTRUN -> [SKIP][13] ([i915#4613]) +2 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-tglu-10:      NOTRUN -> [WARN][14] ([i915#2658])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pxp@create-regular-context-1:
>     - shard-tglu-9:       NOTRUN -> [SKIP][15] ([i915#4270])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-9/igt@gem_pxp@create-regular-context-1.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-1:
>     - shard-tglu-10:      NOTRUN -> [SKIP][16] ([i915#4270]) +3 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@gem_pxp@reject-modify-context-protection-off-1.html
> 
>   * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
>     - shard-apl:          NOTRUN -> [SKIP][17] ([fdo#109271]) +53 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-apl2/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-tglu-9:       NOTRUN -> [SKIP][18] ([i915#3297])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-9/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gen3_render_mixed_blits:
>     - shard-tglu-9:       NOTRUN -> [SKIP][19] ([fdo#109289]) +1 similar issue
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-9/igt@gen3_render_mixed_blits.html
> 
>   * igt@gen7_exec_parse@load-register-reg:
>     - shard-tglu-10:      NOTRUN -> [SKIP][20] ([fdo#109289]) +2 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@gen7_exec_parse@load-register-reg.html
> 
>   * igt@gen9_exec_parse@bb-large:
>     - shard-tglu-10:      NOTRUN -> [SKIP][21] ([i915#2527] / [i915#2856]) +2 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@gen9_exec_parse@bb-large.html
> 
>   * igt@gen9_exec_parse@unaligned-jump:
>     - shard-tglu-9:       NOTRUN -> [SKIP][22] ([i915#2527] / [i915#2856])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-9/igt@gen9_exec_parse@unaligned-jump.html
> 
>   * igt@i915_hwmon@hwmon-read:
>     - shard-tglu-10:      NOTRUN -> [SKIP][23] ([i915#7707])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@i915_hwmon@hwmon-read.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-tglu-10:      NOTRUN -> [SKIP][24] ([i915#6412])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_backlight@fade-with-suspend:
>     - shard-tglu-10:      NOTRUN -> [SKIP][25] ([i915#7561])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@i915_pm_backlight@fade-with-suspend.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-tglu-9:       NOTRUN -> [SKIP][26] ([i915#4281])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-9/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - shard-tglu-10:      NOTRUN -> [SKIP][27] ([i915#6590])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@i915_pm_freq_mult@media-freq@gt0.html
> 
>   * igt@i915_pm_rpm@dpms-non-lpsp:
>     - shard-tglu-10:      NOTRUN -> [SKIP][28] ([fdo#111644] / [i915#1397])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@i915_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-dp-1:
>     - shard-apl:          [PASS][29] -> [FAIL][30] ([i915#2521])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-apl6/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-dp-1.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-apl4/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-dp-1.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-tglu-10:      NOTRUN -> [SKIP][31] ([i915#5286]) +4 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
>     - shard-tglu-10:      NOTRUN -> [SKIP][32] ([fdo#111614]) +1 similar issue
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
>     - shard-tglu-10:      NOTRUN -> [SKIP][33] ([fdo#111615]) +2 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_joiner@2x-modeset:
>     - shard-tglu-10:      NOTRUN -> [SKIP][34] ([i915#2705])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_big_joiner@2x-modeset.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs:
>     - shard-tglu-10:      NOTRUN -> [SKIP][35] ([i915#3689]) +10 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:
>     - shard-tglu-10:      NOTRUN -> [SKIP][36] ([i915#3689] / [i915#6095]) +4 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-apl2/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf_tiled_ccs:
>     - shard-tglu-9:       NOTRUN -> [SKIP][38] ([fdo#111615] / [i915#1845] / [i915#7651]) +4 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-9/igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-tglu-10:      NOTRUN -> [SKIP][39] ([i915#3689] / [i915#3886]) +7 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:
>     - shard-tglu-10:      NOTRUN -> [SKIP][40] ([i915#6095]) +1 similar issue
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-bad-pixel-format-yf_tiled_ccs:
>     - shard-tglu-10:      NOTRUN -> [SKIP][41] ([fdo#111615] / [i915#3689]) +4 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_ccs@pipe-d-bad-pixel-format-yf_tiled_ccs.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-tglu-10:      NOTRUN -> [SKIP][42] ([i915#3742])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_chamelium_color@ctm-green-to-red:
>     - shard-tglu-9:       NOTRUN -> [SKIP][43] ([fdo#111827])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-9/igt@kms_chamelium_color@ctm-green-to-red.html
> 
>   * igt@kms_chamelium_color@ctm-max:
>     - shard-tglu-10:      NOTRUN -> [SKIP][44] ([fdo#111827]) +1 similar issue
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_chamelium_color@ctm-max.html
> 
>   * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
>     - shard-tglu-9:       NOTRUN -> [SKIP][45] ([i915#7828]) +1 similar issue
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-9/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
>     - shard-tglu-10:      NOTRUN -> [SKIP][46] ([i915#7828]) +7 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html
> 
>   * igt@kms_color@ctm-0-25:
>     - shard-tglu-9:       NOTRUN -> [SKIP][47] ([i915#3546])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-9/igt@kms_color@ctm-0-25.html
> 
>   * igt@kms_color@ctm-green-to-red@pipe-a-hdmi-a-1:
>     - shard-snb:          NOTRUN -> [SKIP][48] ([fdo#109271]) +16 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-snb1/igt@kms_color@ctm-green-to-red@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-tglu-10:      NOTRUN -> [SKIP][49] ([i915#6944] / [i915#7116] / [i915#7118]) +2 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_content_protection@lic.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-tglu-10:      NOTRUN -> [SKIP][50] ([i915#3359]) +1 similar issue
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-tglu-10:      NOTRUN -> [SKIP][51] ([fdo#109274]) +1 similar issue
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
>     - shard-tglu-9:       NOTRUN -> [SKIP][52] ([i915#1845]) +5 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-9/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-tglu-10:      NOTRUN -> [SKIP][53] ([i915#4103]) +1 similar issue
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-tglu-10:      NOTRUN -> [SKIP][54] ([i915#3804])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:
>     - shard-tglu-10:      NOTRUN -> [SKIP][55] ([fdo#109274] / [i915#3637]) +8 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
>     - shard-tglu-9:       NOTRUN -> [SKIP][56] ([fdo#109274] / [i915#3637]) +1 similar issue
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-9/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][57] -> [FAIL][58] ([i915#79])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check@bc-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][59] -> [FAIL][60] ([i915#2122])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check@bc-hdmi-a1-hdmi-a2.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check@bc-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@basic-plain-flip:
>     - shard-tglu-9:       NOTRUN -> [SKIP][61] ([i915#3637])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-9/igt@kms_flip@basic-plain-flip.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-tglu-10:      NOTRUN -> [SKIP][62] ([i915#2587] / [i915#2672]) +3 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt:
>     - shard-tglu-9:       NOTRUN -> [SKIP][63] ([i915#1849]) +17 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:
>     - shard-tglu-10:      NOTRUN -> [SKIP][64] ([fdo#110189]) +28 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-cpu:
>     - shard-tglu-10:      NOTRUN -> [SKIP][65] ([fdo#109280]) +33 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_invalid_mode@zero-clock:
>     - shard-tglu-9:       NOTRUN -> [SKIP][66] ([i915#3555]) +2 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-9/igt@kms_invalid_mode@zero-clock.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-b-hdmi-a-1:
>     - shard-tglu-10:      NOTRUN -> [SKIP][67] ([i915#5176]) +3 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
>     - shard-tglu-9:       NOTRUN -> [SKIP][68] ([i915#3555] / [i915#6953])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-9/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-tglu-10:      NOTRUN -> [SKIP][69] ([i915#6524])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-tglu-10:      NOTRUN -> [SKIP][70] ([fdo#111068] / [i915#658])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
>     - shard-tglu-10:      NOTRUN -> [SKIP][71] ([i915#658]) +2 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-tglu-10:      NOTRUN -> [SKIP][72] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-tglu-9:       NOTRUN -> [SKIP][73] ([fdo#110189]) +3 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-9/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-tglu-10:      NOTRUN -> [SKIP][74] ([i915#5461])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
>     - shard-tglu-10:      NOTRUN -> [SKIP][75] ([i915#5289])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
> 
>   * igt@kms_setmode@basic@pipe-a-vga-1:
>     - shard-snb:          NOTRUN -> [FAIL][76] ([i915#5465]) +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-snb7/igt@kms_setmode@basic@pipe-a-vga-1.html
> 
>   * igt@kms_vblank@pipe-d-query-busy:
>     - shard-tglu-9:       NOTRUN -> [SKIP][77] ([i915#1845] / [i915#7651]) +23 similar issues
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-9/igt@kms_vblank@pipe-d-query-busy.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-tglu-10:      NOTRUN -> [SKIP][78] ([i915#3555]) +8 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@kms_vrr@flip-dpms.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-tglu-9:       NOTRUN -> [SKIP][79] ([fdo#109295])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-9/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@v3d/v3d_create_bo@create-bo-invalid-flags:
>     - shard-tglu-9:       NOTRUN -> [SKIP][80] ([fdo#109315] / [i915#2575]) +1 similar issue
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-9/igt@v3d/v3d_create_bo@create-bo-invalid-flags.html
> 
>   * igt@v3d/v3d_perfmon@get-values-invalid-pointer:
>     - shard-tglu-10:      NOTRUN -> [SKIP][81] ([fdo#109315] / [i915#2575]) +2 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@v3d/v3d_perfmon@get-values-invalid-pointer.html
> 
>   * igt@vc4/vc4_mmap@mmap-bad-handle:
>     - shard-tglu-9:       NOTRUN -> [SKIP][82] ([i915#2575]) +2 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-9/igt@vc4/vc4_mmap@mmap-bad-handle.html
> 
>   * igt@vc4/vc4_tiling@set-bad-flags:
>     - shard-tglu-10:      NOTRUN -> [SKIP][83] ([i915#2575]) +6 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-10/igt@vc4/vc4_tiling@set-bad-flags.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
>     - {shard-rkl}:        [FAIL][84] ([i915#7742]) -> [PASS][85]
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-6/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
> 
>   * igt@fbdev@pan:
>     - {shard-tglu}:       [SKIP][86] ([i915#2582]) -> [PASS][87]
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-tglu-6/igt@fbdev@pan.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-8/igt@fbdev@pan.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - {shard-rkl}:        [FAIL][88] ([i915#2842]) -> [PASS][89]
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-4/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-rkl-5/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [FAIL][90] ([i915#2842]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-glk:          [FAIL][92] ([i915#2842]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-glk6/igt@gem_exec_fair@basic-none-vip@rcs0.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-glk5/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-write-read:
>     - {shard-rkl}:        [SKIP][94] ([i915#3281]) -> [PASS][95] +7 similar issues
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-4/igt@gem_exec_reloc@basic-write-read.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-rkl-5/igt@gem_exec_reloc@basic-write-read.html
> 
>   * igt@gem_partial_pwrite_pread@reads:
>     - {shard-rkl}:        [SKIP][96] ([i915#3282]) -> [PASS][97] +3 similar issues
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-4/igt@gem_partial_pwrite_pread@reads.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-apl:          [ABORT][98] ([i915#5566]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-apl7/igt@gen9_exec_parse@allowed-single.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-apl2/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - {shard-rkl}:        [SKIP][100] ([i915#2527]) -> [PASS][101] +2 similar issues
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-4/igt@gen9_exec_parse@bb-chained.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-rkl-5/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - {shard-rkl}:        [SKIP][102] ([i915#3361]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-5/igt@i915_pm_dc@dc9-dpms.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-rkl-2/igt@i915_pm_dc@dc9-dpms.html
> 
>   * {igt@i915_power@sanity}:
>     - {shard-rkl}:        [SKIP][104] ([i915#7984]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-4/igt@i915_power@sanity.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-rkl-5/igt@i915_power@sanity.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
>     - {shard-tglu}:       [SKIP][106] ([i915#1845]) -> [PASS][107] +3 similar issues
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-tglu-6/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-8/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [FAIL][108] ([i915#2346]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - {shard-rkl}:        [SKIP][110] ([i915#3955]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-3/igt@kms_fbcon_fbt@psr.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-rkl-6/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:
>     - shard-glk:          [FAIL][112] ([i915#79]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
>     - {shard-rkl}:        [SKIP][114] ([i915#1849] / [i915#4098]) -> [PASS][115] +15 similar issues
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt:
>     - {shard-tglu}:       [SKIP][116] ([i915#1849]) -> [PASS][117] +5 similar issues
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - {shard-rkl}:        [SKIP][118] ([i915#433]) -> [PASS][119]
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-2/igt@kms_hdmi_inject@inject-audio.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-rkl-2/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_plane@plane-panning-top-left@pipe-a-planes:
>     - {shard-rkl}:        [SKIP][120] ([i915#1849]) -> [PASS][121] +6 similar issues
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-1/igt@kms_plane@plane-panning-top-left@pipe-a-planes.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-rkl-6/igt@kms_plane@plane-panning-top-left@pipe-a-planes.html
> 
>   * igt@kms_plane@plane-position-hole@pipe-b-planes:
>     - {shard-tglu}:       [SKIP][122] ([i915#1849] / [i915#3558]) -> [PASS][123] +1 similar issue
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-tglu-6/igt@kms_plane@plane-position-hole@pipe-b-planes.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-8/igt@kms_plane@plane-position-hole@pipe-b-planes.html
> 
>   * igt@kms_psr@sprite_mmap_cpu:
>     - {shard-rkl}:        [SKIP][124] ([i915#1072]) -> [PASS][125] +1 similar issue
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-1/igt@kms_psr@sprite_mmap_cpu.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-rkl-6/igt@kms_psr@sprite_mmap_cpu.html
> 
>   * igt@kms_universal_plane@universal-plane-pipe-b-sanity:
>     - {shard-tglu}:       [SKIP][126] ([fdo#109274]) -> [PASS][127]
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-tglu-6/igt@kms_universal_plane@universal-plane-pipe-b-sanity.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-8/igt@kms_universal_plane@universal-plane-pipe-b-sanity.html
> 
>   * igt@kms_vblank@pipe-b-query-idle:
>     - {shard-rkl}:        [SKIP][128] ([i915#1845] / [i915#4098]) -> [PASS][129] +31 similar issues
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-1/igt@kms_vblank@pipe-b-query-idle.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html
> 
>   * igt@kms_vblank@pipe-d-wait-forked-busy:
>     - {shard-tglu}:       [SKIP][130] ([i915#1845] / [i915#7651]) -> [PASS][131] +21 similar issues
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-tglu-6/igt@kms_vblank@pipe-d-wait-forked-busy.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-tglu-8/igt@kms_vblank@pipe-d-wait-forked-busy.html
> 
>   * igt@prime_vgem@basic-write:
>     - {shard-rkl}:        [SKIP][132] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-4/igt@prime_vgem@basic-write.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/shard-rkl-5/igt@prime_vgem@basic-write.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
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
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5431]: https://gitlab.freedesktop.org/drm/intel/issues/5431
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
>   [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7582]: https://gitlab.freedesktop.org/drm/intel/issues/7582
>   [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#7949]: https://gitlab.freedesktop.org/drm/intel/issues/7949
>   [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
>   [i915#7984]: https://gitlab.freedesktop.org/drm/intel/issues/7984
>   [i915#8151]: https://gitlab.freedesktop.org/drm/intel/issues/8151
>   [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12774 -> Patchwork_114317v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12774: 51ea055cc2f62af7e9556def2dadb244a6d396c6 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7171: 35a09092eabf7e55aeb625720634550a0368dde6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_114317v1: 51ea055cc2f62af7e9556def2dadb244a6d396c6 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114317v1/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
