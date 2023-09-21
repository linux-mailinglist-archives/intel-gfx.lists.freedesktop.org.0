Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 023DF7A9582
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 17:25:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F10510E122;
	Thu, 21 Sep 2023 15:25:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26AAB10E012
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 15:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695309934; x=1726845934;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=o3/WWnXdpi92ArJUtj0gMw1jzMzEcg8+VeVRKOF2Wfw=;
 b=YtrpbZ1vtMbb5rU7OxDWCDRzxmOZIIbmhnS9PJwGU7an0VEYi3gnJ3E+
 M0QnX6bbVz0MakBzGYV0WQRGN2Lkt8J+ev6vPpu8Xk/S3M58cVHAtGxmJ
 lpigqXYy4AwptZVBXYlvzuRna3wnD5tOi4ncD9bvt0jpblhXlVGG1wjv+
 togjRWE3zjqUwcAWQx89YRcM4+DNLatDRGnPiLCcj/s/V8TnoEmi7+QrW
 o7nRqXrE3JHN+5DxamPPf3UDCgES2LnsAO4+GI37NkrracHJKYXqtQLWI
 ieh+teqmyvRrf9w9zKvswMgufIs7yvkpBKO/Ta3dyAOn+EkH40+5ZucmO A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="383308584"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="383308584"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 08:25:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="750414342"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="750414342"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Sep 2023 08:25:11 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 08:25:11 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 21 Sep 2023 08:25:11 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 21 Sep 2023 08:25:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hPo49IyccohXxBdvQC6gzLEj9HhGkJROMlZUQExWAKZ4T5OEQJ651bif3rapyszcp4kl1BZtET0Vkk6pgPmIZ6JzGKlliIuCH5itzwnG85JtVDK0SrlO+IAB1ALU0YP3VZvX28sSvf0NBVfSazW5jBtyZDP2zqgzs7CDJSib+o/lEQWI8MqamOshY/kaM/8WX+QvMqjsl7xDPH9zi2AqlVMTO78cgk4zfaMcwRwFg/5U9XsLjvKc53GNPwh9uG05rTGTj/RaaKrU7khauddH7y/GAwTSc5YKTnLtoJmoosicSsxFyB0dwI3xwb0UlTnp+mq19j9HOsH+OeYXXU9lkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S3EztLQKLLY7XA6/S1IlCSK0WS1QX10mVKPjNouS3Fk=;
 b=Mg+J/3KBeqV9Ieik5ldrJhNnl5r5473RD3RWgDYTww21wChLW/HvxPu+2HWKDZvbcZFAu98KGEdF83DuwG0F5AZA8DigIRqNxQW8J0VewopHKhqIWciJseBwm4FQQJr7bHCGV+DTXSmIrmKtI9MtGYjfEU2zSecFzD1uGnxBWD1iEm07/zHxyFyG7hBKknKQx0JdDprTTstNJ/yvyfzknAJTqxJL67Pg0IDG+ScuT62Q9OMYPgqrie/T+R/FIeOzRdnsT+xkT+KsDXrgL3DOSTlVfG0vUh5Xvl50R3scWAfuMh83uGQ5W2H7B8IQa63Q2tiSb/csgJtNqNLrP/IgZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ0PR11MB6670.namprd11.prod.outlook.com (2603:10b6:a03:44a::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.28; Thu, 21 Sep
 2023 15:24:43 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6792.026; Thu, 21 Sep 2023
 15:24:43 +0000
Date: Thu, 21 Sep 2023 10:24:40 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <a22xdqwcgfatkg6uakh2zomb46g5oilgkwrfz3zfm6ygnaazyk@mm4eq22c2g43>
References: <20230919192128.2045154-1-lucas.demarchi@intel.com>
 <169520468259.6464.7040594813870373311@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <169520468259.6464.7040594813870373311@emeril.freedesktop.org>
X-ClientProxiedBy: BY5PR13CA0012.namprd13.prod.outlook.com
 (2603:10b6:a03:180::25) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ0PR11MB6670:EE_
X-MS-Office365-Filtering-Correlation-Id: 0aca8453-71f0-4f46-5793-08dbbab6e15c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fNsMogyeuPEYAux+R/ctu2IFCIAVWKfdrHok4cWQwHjheP8MfhPmdgEayAVYEZrHRZBmYAlv9cVYFjz4jp71lpZvL6JA7WDjxu0rI3k4tSyHA9APDMCfztSu2aN71rzgh0v/qZqQ+oVYXM+R59gEt6UjTDSJXeFX1MSdjgToT/J3C2L/7LEINg9ye2iKv0+CMoEax1iQPX5a5Il/eopwDbEY9xfmuC7owlfM799P0JLmxx0NWqT4+jUVi3tb0ujWZWWAopecevD9+grXLsRyc8cgkM2/25r6ePNyq3QvVX2vmr067Z4AV53WsejvKg8k3ZFpbkI2ANwO0PLvl1TZP8LZk5PQa8rEvkMBN3JdxkoGuAkMIgHVhJRPoSRqX3iA69orRbR47GtCM5pumRjYc05QiOCgqVFNCSJ2GKnzKg3MU+yicLlt1Yan+HWbMPrx7ywznEQIYsYUFYUjomUDUCdJtVUfKJeWVtvO2msuohZ3xDVpnxMYWHhZ9IOfnDSzDLzBq0mWYaJ7xCMBuufJOZqJ1WRg7bBUBTnhq7xbJ4PaxzjRSGkg+opWVT4eXMWl
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(136003)(376002)(346002)(39860400002)(366004)(396003)(1800799009)(186009)(451199024)(30864003)(2906002)(33716001)(86362001)(82960400001)(38100700002)(966005)(6916009)(316002)(6512007)(66946007)(9686003)(66476007)(66556008)(41300700001)(478600001)(8936002)(6506007)(6486002)(83380400001)(5660300002)(26005)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Jnlvnx+xOkMCCsjPler0FRCvQW1XLTPxh6sNcdtm/KJFWSrggaJgvtcojaJ+?=
 =?us-ascii?Q?JlsXu4je0eNqQv2WqSGzElzUA/4ezrQ7qNX/p4kGiHu+/wkAD6hGqqVhtdqO?=
 =?us-ascii?Q?pLHQdykyaT0pXxILpuA/3lnzQNgmQlHor32mGpfJszXVUwES+MdrHwUGD+Ou?=
 =?us-ascii?Q?Oph59V7t+0fX5g0mPwzMZ6WAFV6xnKMz8eJ3QA7n6An0vo1KB9e8C1d1WsKX?=
 =?us-ascii?Q?QE1Gid+Lq7hLoFurCBRBSlL3JF+m4HRDWStjHr6As6rO6ds+2NchNFURentV?=
 =?us-ascii?Q?OkK8sUwX0e3mIWRUQCy6kF0ri45OPQ9/srmAFAI4Fq60FLGzB6G4G1bQRTM5?=
 =?us-ascii?Q?ndGV6YB3nhnqxbe5pdp5RlDKMfYOHl47Cpv95M4EEaB21PWesXexjqLmVwU8?=
 =?us-ascii?Q?FwfoYOphW7iP/lNzsNez9reB1Fm6qp6Ix1440FL+6wQfm7htiWCDFA4Ut60a?=
 =?us-ascii?Q?eO7saqm07U/JPDXApLD5XwRjicsXXNlvjFkBWnZ2vbx/bMuzpCuXJmQm/BR5?=
 =?us-ascii?Q?0R4jMfTg0UACASSDTX3zla0R9kLDansbPxalXKb7atY6YIU8Q2OnX/o1Mq3P?=
 =?us-ascii?Q?IprWPPYLfakw2niGa7fOdJ+SF9i70B/DLn877xNstk5c71hCbPyp/Tt7bVMT?=
 =?us-ascii?Q?oD19p7s9gjvmNGJBRoe6oiOAV9r81ul9jJU97/LYqo/k6Jt1QQow8qOBuf11?=
 =?us-ascii?Q?K3eXi6LZWGIazLlIAHT9Z461FZZcW2FPjjrGwj7uVszIoRuThz35EV5gz1yt?=
 =?us-ascii?Q?2emi8RGKUH4CgXqn2o4ktBKdVgke0/Jx4yYVxHsExgKjhuEpO92d0e1Sg3MH?=
 =?us-ascii?Q?DdXWUDexGIaFDhK2DyqwkqVzGBe3IwfZcQYD+PIBTByXsAdtC1YN4pc9oLRH?=
 =?us-ascii?Q?CVdzS/TAUfPPuXh36zRX/GIgWMj6+mSnJi0l87kX4CVjZz5XLkflXJAR11Mj?=
 =?us-ascii?Q?cp4DgTpAv+4EQbmW7HUb0mNPIShtzSIAAF1TqY0b59Af7REGJaoqxHrSKpH7?=
 =?us-ascii?Q?pvoS9DBSqt/ih+q1IOliSM73exysKt0YqHyguAv/PccikKhmCur/BYay5bkL?=
 =?us-ascii?Q?bAxwvwk8318m8aj5tlSGsVnZ/psVOBtuDVRQKHY5gWPtijPY+Djou38d+bj9?=
 =?us-ascii?Q?CYmPQl3ovxy8GQGQBaQugYSYIA8Sz4zX5rFP33+5QaJ/LacGMOjWBJvdYyqN?=
 =?us-ascii?Q?cpVhACY5SWPB+mwUKve18NyQjfdUsS5XH2ySu0LVt4m8FHhNHq6klx9ko2lj?=
 =?us-ascii?Q?FG4sADInHbhT1J7qC/+EYub7O3Mz/OdOGxAiBN6BNTe8UmIB+yUadVgvvDQm?=
 =?us-ascii?Q?Y+IDnVxEVjm9wCa4ocdBda0p05+5EOhpiv3iCIRO/ocqXpAYurXsdhlhw5dJ?=
 =?us-ascii?Q?QY2VDZtUTPIkSx8E4t10xaWR0ZlVvn0R5s43FzP/gwl39u8vI8zHKzlJ5O91?=
 =?us-ascii?Q?PFFKSmeSoESJasb436epap33hV0fmf2b4xqgPABz/0JZ1rLrqPHUTiQg2s65?=
 =?us-ascii?Q?R1QvNbcle5zS1HU/Lc7b2GeWWgYoVHKNil6115uVAngaTV+n8SeYk/SX9k5a?=
 =?us-ascii?Q?sLMkiFYXEEgopEMrnOh1702opbVY7BRYuJeDveXBJ+4QRSnjee8mcFUw95CW?=
 =?us-ascii?Q?sA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0aca8453-71f0-4f46-5793-08dbbab6e15c
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2023 15:24:43.4263 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XiHbDIdrISV4DL6TUATQSSYuwXV0S0GE93BzsWrCpplA/m1Hi7UjrBCpU0a6GejByc/sxVJ9yOdRGjQTaQu6eFd1SkU0hQJakxfVzNH6jgE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6670
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C01/22=5D_drm/i915/xelpdp=3A_Add_XE=5F?=
 =?utf-8?q?LPDP=5FFEATURES?=
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

On Wed, Sep 20, 2023 at 10:11:22AM +0000, Patchwork wrote:
>== Series Details ==
>
>Series: series starting with [CI,01/22] drm/i915/xelpdp: Add XE_LPDP_FEATURES
>URL   : https://patchwork.freedesktop.org/series/123938/
>State : failure
>
>== Summary ==
>
>CI Bug Log - changes from CI_DRM_13652_full -> Patchwork_123938v1_full
>====================================================
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_123938v1_full absolutely need to be
>  verified manually.
>
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_123938v1_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
>  to document this new failure mode, which will reduce false positives in CI.
>
>
>
>Participating hosts (9 -> 9)
>------------------------------
>
>  No changes in participating hosts
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_123938v1_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@drm_mm@drm_mm_test:
>    - shard-snb:          NOTRUN -> [TIMEOUT][1]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-snb5/igt@drm_mm@drm_mm_test.html
>
>  * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0:
>    - shard-dg2:          NOTRUN -> [INCOMPLETE][2]
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-2/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0.html
>
>  * igt@gem_ctx_isolation@dirty-create@bcs0:	
>    - shard-mtlp:         [PASS][3] -> [FAIL][4]
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-mtlp-4/igt@gem_ctx_isolation@dirty-create@bcs0.html
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-5/igt@gem_ctx_isolation@dirty-create@bcs0.html

Unrelated to the *display* changes here. Not exactly sure what that test is even doing:

	(gem_ctx_isolation:1259) WARNING: Register 0x36550 (unknown): A=00000000 B=01000000

but according to bspec we have no such 0x36550 register... /me confused

>
>  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:
>    - shard-apl:          [PASS][5] -> [INCOMPLETE][6]
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html

not coming back from suspend, unrelated to the display changes, also
happened recently with the same platform:

https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13647/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1.html

Just merged all these patches.

Lucas De Marchi

>
>  * igt@kms_selftest@drm_dp_mst:
>    - shard-tglu:         NOTRUN -> [TIMEOUT][7] +1 other test timeout
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-tglu-8/igt@kms_selftest@drm_dp_mst.html
>    - shard-dg1:          NOTRUN -> [TIMEOUT][8] +1 other test timeout
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-18/igt@kms_selftest@drm_dp_mst.html
>
>  * igt@kms_selftest@drm_format:
>    - shard-dg2:          NOTRUN -> [TIMEOUT][9]
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-7/igt@kms_selftest@drm_format.html
>
>  * igt@kms_selftest@drm_format_helper:
>    - shard-mtlp:         NOTRUN -> [TIMEOUT][10]
>   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-7/igt@kms_selftest@drm_format_helper.html
>
>
>#### Warnings ####
>
>  * igt@drm_mm@drm_mm_test:
>    - shard-dg1:          [TIMEOUT][11] ([i915#8628]) -> [TIMEOUT][12] +6 other tests timeout
>   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-dg1-18/igt@drm_mm@drm_mm_test.html
>   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-14/igt@drm_mm@drm_mm_test.html
>    - shard-tglu:         [TIMEOUT][13] ([i915#8628]) -> [TIMEOUT][14] +6 other tests timeout
>   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-tglu-2/igt@drm_mm@drm_mm_test.html
>   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-tglu-6/igt@drm_mm@drm_mm_test.html
>
>  * igt@kms_selftest@drm_cmdline:
>    - shard-mtlp:         [TIMEOUT][15] ([i915#8628]) -> [TIMEOUT][16] +5 other tests timeout
>   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-mtlp-5/igt@kms_selftest@drm_cmdline.html
>   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-4/igt@kms_selftest@drm_cmdline.html
>
>  * igt@kms_selftest@drm_damage:
>    - shard-rkl:          [TIMEOUT][17] ([i915#8628]) -> [TIMEOUT][18] +6 other tests timeout
>   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-rkl-4/igt@kms_selftest@drm_damage.html
>   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-4/igt@kms_selftest@drm_damage.html
>    - shard-snb:          [TIMEOUT][19] ([i915#8628]) -> [TIMEOUT][20] +5 other tests timeout
>   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-snb2/igt@kms_selftest@drm_damage.html
>   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-snb5/igt@kms_selftest@drm_damage.html
>
>  * igt@kms_selftest@drm_format:
>    - shard-apl:          [TIMEOUT][21] ([i915#8628]) -> [TIMEOUT][22] +8 other tests timeout
>   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-apl4/igt@kms_selftest@drm_format.html
>   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-apl2/igt@kms_selftest@drm_format.html
>    - shard-glk:          [TIMEOUT][23] ([i915#8628]) -> [TIMEOUT][24] +8 other tests timeout
>   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-glk1/igt@kms_selftest@drm_format.html
>   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-glk7/igt@kms_selftest@drm_format.html
>
>  * igt@kms_selftest@drm_plane:
>    - shard-dg2:          [TIMEOUT][25] ([i915#8628]) -> [TIMEOUT][26] +2 other tests timeout
>   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-dg2-1/igt@kms_selftest@drm_plane.html
>   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-10/igt@kms_selftest@drm_plane.html
>
>
>Known issues
>------------
>
>  Here are the changes found in Patchwork_123938v1_full that come from known issues:
>
>### IGT changes ###
>
>#### Issues hit ####
>
>  * igt@api_intel_bb@blit-reloc-purge-cache:
>    - shard-mtlp:         NOTRUN -> [SKIP][27] ([i915#8411])
>   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-7/igt@api_intel_bb@blit-reloc-purge-cache.html
>
>  * igt@device_reset@unbind-cold-reset-rebind:
>    - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#7701])
>   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-7/igt@device_reset@unbind-cold-reset-rebind.html
>
>  * igt@drm_fdinfo@busy@ccs0:
>    - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#8414]) +29 other tests skip
>   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-11/igt@drm_fdinfo@busy@ccs0.html
>
>  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
>    - shard-rkl:          [PASS][30] -> [FAIL][31] ([i915#7742])
>   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
>   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
>
>  * igt@gem_basic@multigpu-create-close:
>    - shard-mtlp:         NOTRUN -> [SKIP][32] ([i915#7697])
>   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-7/igt@gem_basic@multigpu-create-close.html
>
>  * igt@gem_close_race@multigpu-basic-process:
>    - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#7697])
>   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-11/igt@gem_close_race@multigpu-basic-process.html
>
>  * igt@gem_create@create-ext-cpu-access-big:
>    - shard-rkl:          NOTRUN -> [SKIP][34] ([i915#6335])
>   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-2/igt@gem_create@create-ext-cpu-access-big.html
>
>  * igt@gem_ctx_freq@sysfs@gt0:
>    - shard-dg2:          NOTRUN -> [FAIL][35] ([i915#6786])
>   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-6/igt@gem_ctx_freq@sysfs@gt0.html
>
>  * igt@gem_ctx_persistence@file:
>    - shard-snb:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#1099]) +2 other tests skip
>   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-snb6/igt@gem_ctx_persistence@file.html
>
>  * igt@gem_ctx_persistence@heartbeat-stop:
>    - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#8555]) +1 other test skip
>   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-7/igt@gem_ctx_persistence@heartbeat-stop.html
>
>  * igt@gem_eio@hibernate:
>    - shard-tglu:         [PASS][38] -> [ABORT][39] ([i915#7975] / [i915#8213] / [i915#8398])
>   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-tglu-2/igt@gem_eio@hibernate.html
>   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-tglu-10/igt@gem_eio@hibernate.html
>
>  * igt@gem_eio@reset-stress:
>    - shard-snb:          NOTRUN -> [FAIL][40] ([i915#8898])
>   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-snb5/igt@gem_eio@reset-stress.html
>
>  * igt@gem_exec_balancer@bonded-false-hang:
>    - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#4812]) +2 other tests skip
>   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-6/igt@gem_exec_balancer@bonded-false-hang.html
>
>  * igt@gem_exec_balancer@bonded-sync:
>    - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4771])
>   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-2/igt@gem_exec_balancer@bonded-sync.html
>
>  * igt@gem_exec_balancer@hang:
>    - shard-mtlp:         NOTRUN -> [ABORT][43] ([i915#8104] / [i915#9262])
>   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-8/igt@gem_exec_balancer@hang.html
>
>  * igt@gem_exec_fair@basic-flow:
>    - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#3539] / [i915#4852]) +3 other tests skip
>   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-5/igt@gem_exec_fair@basic-flow.html
>
>  * igt@gem_exec_fair@basic-none-rrul:
>    - shard-mtlp:         NOTRUN -> [SKIP][45] ([i915#4473] / [i915#4771])
>   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-7/igt@gem_exec_fair@basic-none-rrul.html
>
>  * igt@gem_exec_fair@basic-pace-solo@rcs0:
>    - shard-rkl:          [PASS][46] -> [FAIL][47] ([i915#2842]) +3 other tests fail
>   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-rkl-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>
>  * igt@gem_exec_fence@submit:
>    - shard-mtlp:         NOTRUN -> [SKIP][48] ([i915#4812])
>   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-5/igt@gem_exec_fence@submit.html
>
>  * igt@gem_exec_fence@syncobj-backward-timeline-chain-engines:
>    - shard-snb:          NOTRUN -> [SKIP][49] ([fdo#109271]) +225 other tests skip
>   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-snb6/igt@gem_exec_fence@syncobj-backward-timeline-chain-engines.html
>
>  * igt@gem_exec_reloc@basic-cpu-noreloc:
>    - shard-dg1:          NOTRUN -> [SKIP][50] ([i915#3281])
>   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-18/igt@gem_exec_reloc@basic-cpu-noreloc.html
>
>  * igt@gem_exec_reloc@basic-gtt-cpu-active:
>    - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#3281]) +10 other tests skip
>   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-7/igt@gem_exec_reloc@basic-gtt-cpu-active.html
>
>  * igt@gem_exec_reloc@basic-range:
>    - shard-mtlp:         NOTRUN -> [SKIP][52] ([i915#3281]) +1 other test skip
>   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-5/igt@gem_exec_reloc@basic-range.html
>
>  * igt@gem_exec_schedule@preempt-engines@ccs0:
>    - shard-mtlp:         [PASS][53] -> [FAIL][54] ([i915#9119]) +4 other tests fail
>   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-mtlp-5/igt@gem_exec_schedule@preempt-engines@ccs0.html
>   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-4/igt@gem_exec_schedule@preempt-engines@ccs0.html
>
>  * igt@gem_exec_schedule@preempt-engines@rcs0:
>    - shard-mtlp:         [PASS][55] -> [DMESG-FAIL][56] ([i915#8962] / [i915#9121])
>   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-mtlp-5/igt@gem_exec_schedule@preempt-engines@rcs0.html
>   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-4/igt@gem_exec_schedule@preempt-engines@rcs0.html
>
>  * igt@gem_exec_schedule@preempt-queue-chain:
>    - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#4537] / [i915#4812]) +1 other test skip
>   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-7/igt@gem_exec_schedule@preempt-queue-chain.html
>
>  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
>    - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#4812])
>   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-18/igt@gem_exec_schedule@preempt-queue-contexts-chain.html
>
>  * igt@gem_exec_schedule@u-submit-late-slice@rcs0:
>    - shard-mtlp:         [PASS][59] -> [ABORT][60] ([i915#9262]) +2 other tests abort
>   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-mtlp-1/igt@gem_exec_schedule@u-submit-late-slice@rcs0.html
>   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-5/igt@gem_exec_schedule@u-submit-late-slice@rcs0.html
>
>  * igt@gem_fence_thrash@bo-copy:
>    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#4860]) +3 other tests skip
>   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-7/igt@gem_fence_thrash@bo-copy.html
>
>  * igt@gem_lmem_swapping@massive-random:
>    - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#4613])
>   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-2/igt@gem_lmem_swapping@massive-random.html
>
>  * igt@gem_lmem_swapping@smem-oom@lmem0:
>    - shard-dg1:          [PASS][63] -> [DMESG-WARN][64] ([i915#4936] / [i915#5493])
>   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html
>   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html
>
>  * igt@gem_mmap@basic-small-bo:
>    - shard-mtlp:         NOTRUN -> [SKIP][65] ([i915#4083])
>   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-5/igt@gem_mmap@basic-small-bo.html
>
>  * igt@gem_mmap@big-bo:
>    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#4083]) +4 other tests skip
>   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-11/igt@gem_mmap@big-bo.html
>
>  * igt@gem_mmap_gtt@cpuset-big-copy:
>    - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#4077]) +17 other tests skip
>   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-11/igt@gem_mmap_gtt@cpuset-big-copy.html
>
>  * igt@gem_mmap_wc@read-write:
>    - shard-dg1:          NOTRUN -> [SKIP][68] ([i915#4083])
>   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-18/igt@gem_mmap_wc@read-write.html
>
>  * igt@gem_partial_pwrite_pread@reads:
>    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#3282]) +3 other tests skip
>   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-11/igt@gem_partial_pwrite_pread@reads.html
>
>  * igt@gem_pread@snoop:
>    - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#3282])
>   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-2/igt@gem_pread@snoop.html
>
>  * igt@gem_pread@uncached:
>    - shard-mtlp:         NOTRUN -> [SKIP][71] ([i915#3282])
>   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-5/igt@gem_pread@uncached.html
>
>  * igt@gem_pxp@display-protected-crc:
>    - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#4270]) +3 other tests skip
>   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-11/igt@gem_pxp@display-protected-crc.html
>
>  * igt@gem_pxp@reject-modify-context-protection-off-1:
>    - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#4270])
>   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-2/igt@gem_pxp@reject-modify-context-protection-off-1.html
>
>  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
>    - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#4270])
>   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-7/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
>
>  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271]) +18 other tests skip
>   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-apl6/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
>
>  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
>    - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#8428]) +1 other test skip
>   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-7/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html
>
>  * igt@gem_set_tiling_vs_pwrite:
>    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#4079])
>   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-5/igt@gem_set_tiling_vs_pwrite.html
>
>  * igt@gem_softpin@evict-snoop:
>    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#4885])
>   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-11/igt@gem_softpin@evict-snoop.html
>
>  * igt@gem_tiled_partial_pwrite_pread@reads:
>    - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#4077])
>   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-5/igt@gem_tiled_partial_pwrite_pread@reads.html
>
>  * igt@gem_userptr_blits@dmabuf-unsync:
>    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#3297]) +3 other tests skip
>   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-7/igt@gem_userptr_blits@dmabuf-unsync.html
>
>  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
>    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#3297] / [i915#4880]) +1 other test skip
>   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-7/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
>
>  * igt@gem_userptr_blits@readonly-unsync:
>    - shard-mtlp:         NOTRUN -> [SKIP][82] ([i915#3297])
>   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-5/igt@gem_userptr_blits@readonly-unsync.html
>
>  * igt@gem_userptr_blits@vma-merge:
>    - shard-dg2:          NOTRUN -> [FAIL][83] ([i915#3318])
>   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-5/igt@gem_userptr_blits@vma-merge.html
>
>  * igt@gem_workarounds@suspend-resume-fd:
>    - shard-dg2:          NOTRUN -> [FAIL][84] ([fdo#103375]) +1 other test fail
>   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-5/igt@gem_workarounds@suspend-resume-fd.html
>
>  * igt@gen7_exec_parse@basic-allocation:
>    - shard-dg1:          NOTRUN -> [SKIP][85] ([fdo#109289])
>   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-18/igt@gen7_exec_parse@basic-allocation.html
>    - shard-tglu:         NOTRUN -> [SKIP][86] ([fdo#109289])
>   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-tglu-8/igt@gen7_exec_parse@basic-allocation.html
>
>  * igt@gen7_exec_parse@basic-rejected:
>    - shard-dg2:          NOTRUN -> [SKIP][87] ([fdo#109289]) +5 other tests skip
>   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-11/igt@gen7_exec_parse@basic-rejected.html
>
>  * igt@gen9_exec_parse@allowed-single:
>    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#2856]) +2 other tests skip
>   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-7/igt@gen9_exec_parse@allowed-single.html
>
>  * igt@gen9_exec_parse@basic-rejected:
>    - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#2527])
>   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-2/igt@gen9_exec_parse@basic-rejected.html
>
>  * igt@gen9_exec_parse@bb-start-param:
>    - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#2527])
>   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-18/igt@gen9_exec_parse@bb-start-param.html
>    - shard-tglu:         NOTRUN -> [SKIP][91] ([i915#2527] / [i915#2856])
>   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-tglu-8/igt@gen9_exec_parse@bb-start-param.html
>
>  * igt@i915_pm_rpm@fences-dpms:
>    - shard-dg1:          NOTRUN -> [SKIP][92] ([i915#4077]) +3 other tests skip
>   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-18/igt@i915_pm_rpm@fences-dpms.html
>
>  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
>    - shard-dg1:          [PASS][93] -> [SKIP][94] ([i915#1397])
>   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-dg1-17/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>
>  * igt@i915_pm_rps@basic-api:
>    - shard-mtlp:         NOTRUN -> [SKIP][95] ([i915#6621])
>   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-7/igt@i915_pm_rps@basic-api.html
>
>  * igt@i915_pm_rps@reset:
>    - shard-tglu:         [PASS][96] -> [INCOMPLETE][97] ([i915#8320])
>   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-tglu-9/igt@i915_pm_rps@reset.html
>   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-tglu-9/igt@i915_pm_rps@reset.html
>
>  * igt@i915_pm_rps@thresholds-idle@gt0:
>    - shard-dg1:          NOTRUN -> [SKIP][98] ([i915#8925])
>   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-18/igt@i915_pm_rps@thresholds-idle@gt0.html
>
>  * igt@i915_power@sanity:
>    - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#7984])
>   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-2/igt@i915_power@sanity.html
>
>  * igt@i915_selftest@live@gt_heartbeat:
>    - shard-apl:          [PASS][100] -> [DMESG-FAIL][101] ([i915#5334])
>   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html
>   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-apl7/igt@i915_selftest@live@gt_heartbeat.html
>
>  * igt@i915_suspend@debugfs-reader:
>    - shard-mtlp:         [PASS][102] -> [ABORT][103] ([i915#7461] / [i915#9262])
>   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-mtlp-7/igt@i915_suspend@debugfs-reader.html
>   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-1/igt@i915_suspend@debugfs-reader.html
>
>  * igt@kms_async_flips@crc@pipe-b-hdmi-a-1:
>    - shard-dg2:          NOTRUN -> [FAIL][104] ([i915#8247]) +3 other tests fail
>   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-10/igt@kms_async_flips@crc@pipe-b-hdmi-a-1.html
>
>  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#404])
>   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>
>  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>    - shard-snb:          NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#1769])
>   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-snb5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
>
>  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
>    - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#5286])
>   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-2/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
>
>  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>    - shard-tglu:         NOTRUN -> [SKIP][108] ([fdo#111615] / [i915#5286])
>   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>    - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#4538] / [i915#5286])
>   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-18/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>
>  * igt@kms_big_fb@linear-32bpp-rotate-90:
>    - shard-rkl:          NOTRUN -> [SKIP][110] ([fdo#111614] / [i915#3638])
>   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-2/igt@kms_big_fb@linear-32bpp-rotate-90.html
>
>  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
>    - shard-mtlp:         NOTRUN -> [SKIP][111] ([fdo#111614])
>   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-7/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
>
>  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
>    - shard-dg1:          NOTRUN -> [SKIP][112] ([i915#3638])
>   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-18/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html
>    - shard-tglu:         NOTRUN -> [SKIP][113] ([fdo#111614])
>   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-tglu-8/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html
>
>  * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
>    - shard-dg2:          NOTRUN -> [SKIP][114] ([fdo#111614]) +3 other tests skip
>   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-2/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html
>
>  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>    - shard-tglu:         [PASS][115] -> [FAIL][116] ([i915#3743])
>   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-tglu-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
>   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-tglu-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
>
>  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180:
>    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#5190]) +13 other tests skip
>   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html
>
>  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
>    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#4538] / [i915#5190]) +5 other tests skip
>   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
>
>  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
>    - shard-rkl:          NOTRUN -> [SKIP][119] ([fdo#110723])
>   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
>
>  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
>    - shard-dg1:          NOTRUN -> [SKIP][120] ([i915#4538])
>   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-18/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
>
>  * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
>    - shard-mtlp:         NOTRUN -> [SKIP][121] ([fdo#111615])
>   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-7/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html
>
>  * igt@kms_big_fb@yf-tiled-addfb:
>    - shard-rkl:          NOTRUN -> [SKIP][122] ([fdo#111615])
>   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-addfb.html
>
>  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
>    - shard-dg1:          NOTRUN -> [SKIP][123] ([fdo#111615])
>   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-18/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
>    - shard-tglu:         NOTRUN -> [SKIP][124] ([fdo#111615]) +1 other test skip
>   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-tglu-8/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
>
>  * igt@kms_big_joiner@invalid-modeset:
>    - shard-dg1:          NOTRUN -> [SKIP][125] ([i915#2705])
>   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-18/igt@kms_big_joiner@invalid-modeset.html
>    - shard-tglu:         NOTRUN -> [SKIP][126] ([i915#2705])
>   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-tglu-8/igt@kms_big_joiner@invalid-modeset.html
>
>  * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_ccs:
>    - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#3734] / [i915#5354] / [i915#6095]) +1 other test skip
>   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-2/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_ccs.html
>
>  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>    - shard-apl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#3886])
>   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-apl6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
>
>  * igt@kms_ccs@pipe-a-missing-ccs-buffer-4_tiled_mtl_mc_ccs:
>    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#5354]) +62 other tests skip
>   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-11/igt@kms_ccs@pipe-a-missing-ccs-buffer-4_tiled_mtl_mc_ccs.html
>
>  * igt@kms_ccs@pipe-b-bad-aux-stride-4_tiled_mtl_rc_ccs:
>    - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#5354] / [i915#6095]) +1 other test skip
>   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-2/igt@kms_ccs@pipe-b-bad-aux-stride-4_tiled_mtl_rc_ccs.html
>
>  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:
>    - shard-glk:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#3886]) +1 other test skip
>   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-glk5/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html
>
>  * igt@kms_ccs@pipe-b-bad-rotation-90-yf_tiled_ccs:
>    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#3689] / [i915#5354]) +26 other tests skip
>   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-11/igt@kms_ccs@pipe-b-bad-rotation-90-yf_tiled_ccs.html
>
>  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
>    - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#3886] / [i915#5354] / [i915#6095])
>   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-2/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html
>
>  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#3689] / [i915#3886] / [i915#5354]) +12 other tests skip
>   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-5/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
>
>  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_ccs:
>    - shard-glk:          NOTRUN -> [SKIP][135] ([fdo#109271]) +28 other tests skip
>   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-glk5/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_ccs.html
>
>  * igt@kms_ccs@pipe-d-crc-primary-rotation-180-4_tiled_mtl_mc_ccs:
>    - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#5354]) +4 other tests skip
>   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-2/igt@kms_ccs@pipe-d-crc-primary-rotation-180-4_tiled_mtl_mc_ccs.html
>
>  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_mtl_mc_ccs:
>    - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#5354] / [i915#6095]) +2 other tests skip
>   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-18/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_mtl_mc_ccs.html
>    - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#5354] / [i915#6095]) +2 other tests skip
>   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-tglu-8/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_mtl_mc_ccs.html
>
>  * igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_rc_ccs:
>    - shard-mtlp:         NOTRUN -> [SKIP][139] ([i915#6095]) +5 other tests skip
>   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-5/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_rc_ccs.html
>
>  * igt@kms_cdclk@mode-transition-all-outputs:
>    - shard-mtlp:         NOTRUN -> [SKIP][140] ([i915#7213] / [i915#9010])
>   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-4/igt@kms_cdclk@mode-transition-all-outputs.html
>
>  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
>    - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#4087] / [i915#7213]) +3 other tests skip
>   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html
>
>  * igt@kms_cdclk@plane-scaling@pipe-b-dp-4:
>    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#4087]) +3 other tests skip
>   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-11/igt@kms_cdclk@plane-scaling@pipe-b-dp-4.html
>
>  * igt@kms_chamelium_color@ctm-0-50:
>    - shard-dg2:          NOTRUN -> [SKIP][143] ([fdo#111827]) +1 other test skip
>   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-5/igt@kms_chamelium_color@ctm-0-50.html
>
>  * igt@kms_chamelium_frames@dp-crc-fast:
>    - shard-mtlp:         NOTRUN -> [SKIP][144] ([i915#7828])
>   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-5/igt@kms_chamelium_frames@dp-crc-fast.html
>
>  * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
>    - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#7828]) +1 other test skip
>   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-2/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html
>
>  * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
>    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#7828]) +9 other tests skip
>   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-11/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
>
>  * igt@kms_color@deep-color:
>    - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#3555]) +6 other tests skip
>   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-5/igt@kms_color@deep-color.html
>
>  * igt@kms_concurrent@pipe-c:
>    - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#4070] / [i915#6768]) +1 other test skip
>   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-2/igt@kms_concurrent@pipe-c.html
>
>  * igt@kms_content_protection@dp-mst-lic-type-1:
>    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#3299]) +2 other tests skip
>   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-11/igt@kms_content_protection@dp-mst-lic-type-1.html
>
>  * igt@kms_content_protection@legacy:
>    - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#7118])
>   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-2/igt@kms_content_protection@legacy.html
>
>  * igt@kms_content_protection@srm:
>    - shard-mtlp:         NOTRUN -> [SKIP][151] ([i915#6944])
>   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-7/igt@kms_content_protection@srm.html
>
>  * igt@kms_content_protection@srm@pipe-a-dp-4:
>    - shard-dg2:          NOTRUN -> [TIMEOUT][152] ([i915#7173])
>   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-11/igt@kms_content_protection@srm@pipe-a-dp-4.html
>
>  * igt@kms_cursor_crc@cursor-random-32x10:
>    - shard-mtlp:         NOTRUN -> [SKIP][153] ([i915#3555] / [i915#8814]) +1 other test skip
>   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-random-32x10.html
>
>  * igt@kms_cursor_crc@cursor-random-512x170:
>    - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#3359]) +2 other tests skip
>   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-5/igt@kms_cursor_crc@cursor-random-512x170.html
>
>  * igt@kms_cursor_crc@cursor-sliding-32x10:
>    - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#3555]) +1 other test skip
>   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-32x10.html
>
>  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
>    - shard-dg2:          NOTRUN -> [SKIP][156] ([fdo#109274] / [i915#5354]) +3 other tests skip
>   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-11/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
>
>  * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
>    - shard-mtlp:         NOTRUN -> [SKIP][157] ([i915#3546])
>   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-7/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html
>
>  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1:
>    - shard-tglu:         NOTRUN -> [SKIP][158] ([i915#9227])
>   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-tglu-8/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1.html
>
>  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4:
>    - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#9227])
>   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-18/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4.html
>
>  * igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1:
>    - shard-tglu:         NOTRUN -> [SKIP][160] ([i915#9226] / [i915#9261]) +1 other test skip
>   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-tglu-8/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1.html
>
>  * igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4:
>    - shard-dg1:          NOTRUN -> [SKIP][161] ([i915#9226] / [i915#9261]) +1 other test skip
>   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-18/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4.html
>
>  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>    - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#3804])
>   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
>
>  * igt@kms_draw_crc@draw-method-mmap-wc:
>    - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#8812])
>   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-7/igt@kms_draw_crc@draw-method-mmap-wc.html
>
>  * igt@kms_flip@2x-dpms-vs-vblank-race:
>    - shard-dg2:          NOTRUN -> [SKIP][164] ([fdo#109274]) +9 other tests skip
>   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-11/igt@kms_flip@2x-dpms-vs-vblank-race.html
>
>  * igt@kms_flip@2x-flip-vs-expired-vblank:
>    - shard-mtlp:         NOTRUN -> [SKIP][165] ([i915#3637]) +1 other test skip
>   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-7/igt@kms_flip@2x-flip-vs-expired-vblank.html
>
>  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
>    - shard-dg2:          NOTRUN -> [SKIP][166] ([fdo#109274] / [fdo#111767])
>   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
>
>  * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
>    - shard-glk:          [PASS][167] -> [FAIL][168] ([i915#79])
>   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
>   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
>
>  * igt@kms_flip@2x-flip-vs-fences:
>    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#8381]) +1 other test skip
>   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-5/igt@kms_flip@2x-flip-vs-fences.html
>
>  * igt@kms_flip@2x-flip-vs-panning:
>    - shard-tglu:         NOTRUN -> [SKIP][170] ([fdo#109274] / [i915#3637])
>   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-tglu-8/igt@kms_flip@2x-flip-vs-panning.html
>
>  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ac-hdmi-a1-hdmi-a2:
>    - shard-glk:          [PASS][171] -> [FAIL][172] ([i915#2122])
>   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ac-hdmi-a1-hdmi-a2.html
>   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ac-hdmi-a1-hdmi-a2.html
>
>  * igt@kms_flip@2x-plain-flip-interruptible:
>    - shard-rkl:          NOTRUN -> [SKIP][173] ([fdo#111825])
>   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-2/igt@kms_flip@2x-plain-flip-interruptible.html
>
>  * igt@kms_flip@flip-vs-suspend@b-hdmi-a1:
>    - shard-snb:          NOTRUN -> [DMESG-WARN][174] ([i915#8841]) +3 other tests dmesg-warn
>   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-snb1/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>    - shard-dg1:          NOTRUN -> [SKIP][175] ([i915#2587] / [i915#2672]) +1 other test skip
>   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
>    - shard-tglu:         NOTRUN -> [SKIP][176] ([i915#2587] / [i915#2672]) +1 other test skip
>   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
>    - shard-mtlp:         NOTRUN -> [SKIP][177] ([i915#2672])
>   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
>    - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#2672]) +6 other tests skip
>   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html
>
>  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-render:
>    - shard-rkl:          NOTRUN -> [SKIP][179] ([fdo#111825] / [i915#1825]) +4 other tests skip
>   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-render.html
>
>  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>    - shard-dg1:          NOTRUN -> [SKIP][180] ([i915#8708]) +2 other tests skip
>   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
>
>  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:
>    - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#8708]) +21 other tests skip
>   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:
>    - shard-tglu:         NOTRUN -> [SKIP][182] ([fdo#110189]) +2 other tests skip
>   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt:
>    - shard-dg1:          NOTRUN -> [SKIP][183] ([fdo#111825]) +5 other tests skip
>   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt.html
>    - shard-tglu:         NOTRUN -> [SKIP][184] ([fdo#109280]) +6 other tests skip
>   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt.html
>
>  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
>    - shard-dg1:          NOTRUN -> [SKIP][185] ([i915#3458]) +1 other test skip
>   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
>
>  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
>    - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#3023]) +2 other tests skip
>   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
>
>  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
>    - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#8708]) +2 other tests skip
>   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
>
>  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-pwrite:
>    - shard-mtlp:         NOTRUN -> [SKIP][188] ([i915#1825]) +2 other tests skip
>   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-pwrite.html
>
>  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>    - shard-dg2:          NOTRUN -> [SKIP][189] ([i915#3458]) +27 other tests skip
>   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
>
>  * igt@kms_hdr@invalid-metadata-sizes:
>    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#3555] / [i915#8228]) +3 other tests skip
>   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-7/igt@kms_hdr@invalid-metadata-sizes.html
>
>  * igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
>    - shard-mtlp:         NOTRUN -> [SKIP][191] ([fdo#109289])
>   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-7/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html
>
>  * igt@kms_plane_lowres@tiling-yf:
>    - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#3555] / [i915#8821])
>   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-6/igt@kms_plane_lowres@tiling-yf.html
>
>  * igt@kms_plane_multiple@tiling-y:
>    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#8806])
>   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-5/igt@kms_plane_multiple@tiling-y.html
>
>  * igt@kms_plane_scaling@intel-max-src-size:
>    - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#6953])
>   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-6/igt@kms_plane_scaling@intel-max-src-size.html
>
>  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
>    - shard-rkl:          NOTRUN -> [FAIL][195] ([i915#8292])
>   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-4/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html
>
>  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-hdmi-a-3:
>    - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#5176]) +3 other tests skip
>   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-6/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-hdmi-a-3.html
>
>  * igt@kms_plane_scaling@plane-scaler-with-rotation-unity-scaling@pipe-c-hdmi-a-1:
>    - shard-dg1:          NOTRUN -> [SKIP][197] ([i915#5176]) +23 other tests skip
>   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-19/igt@kms_plane_scaling@plane-scaler-with-rotation-unity-scaling@pipe-c-hdmi-a-1.html
>
>  * igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-a-hdmi-a-2:
>    - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#5176]) +9 other tests skip
>   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-4/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-a-hdmi-a-2.html
>
>  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1:
>    - shard-dg1:          NOTRUN -> [SKIP][199] ([i915#5235]) +7 other tests skip
>   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-19/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1.html
>
>  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:
>    - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#5235]) +9 other tests skip
>   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html
>
>  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3:
>    - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#5235]) +15 other tests skip
>   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3.html
>
>  * igt@kms_prime@basic-crc-hybrid:
>    - shard-dg2:          NOTRUN -> [SKIP][202] ([i915#6524] / [i915#6805])
>   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-11/igt@kms_prime@basic-crc-hybrid.html
>
>  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>    - shard-glk:          NOTRUN -> [SKIP][203] ([fdo#109271] / [i915#658])
>   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-glk5/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
>
>  * igt@kms_psr2_su@frontbuffer-xrgb8888:
>    - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#658]) +3 other tests skip
>   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-7/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>
>  * igt@kms_psr@no_drrs:
>    - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#1072])
>   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-2/igt@kms_psr@no_drrs.html
>
>  * igt@kms_psr@psr2_sprite_plane_move:
>    - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#1072]) +10 other tests skip
>   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-2/igt@kms_psr@psr2_sprite_plane_move.html
>
>  * igt@kms_rotation_crc@bad-tiling:
>    - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#4235]) +1 other test skip
>   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-2/igt@kms_rotation_crc@bad-tiling.html
>
>  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:
>    - shard-rkl:          [PASS][208] -> [INCOMPLETE][209] ([i915#8875])
>   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-rkl-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html
>   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html
>
>  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
>    - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#4235] / [i915#5190])
>   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
>
>  * igt@kms_setmode@basic@pipe-a-vga-1:
>    - shard-snb:          NOTRUN -> [FAIL][211] ([i915#5465]) +1 other test fail
>   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-snb6/igt@kms_setmode@basic@pipe-a-vga-1.html
>
>  * igt@kms_universal_plane@cursor-fb-leak-pipe-a:
>    - shard-dg1:          [PASS][212] -> [FAIL][213] ([i915#9196])
>   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-dg1-16/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
>   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-16/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
>
>  * igt@kms_universal_plane@cursor-fb-leak-pipe-c:
>    - shard-tglu:         [PASS][214] -> [FAIL][215] ([i915#9196])
>   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak-pipe-c.html
>   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak-pipe-c.html
>
>  * igt@kms_vblank@pipe-b-wait-forked-busy-hang:
>    - shard-snb:          [PASS][216] -> [SKIP][217] ([fdo#109271])
>   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-snb4/igt@kms_vblank@pipe-b-wait-forked-busy-hang.html
>   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-snb2/igt@kms_vblank@pipe-b-wait-forked-busy-hang.html
>
>  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
>    - shard-mtlp:         NOTRUN -> [ABORT][218] ([i915#9262]) +1 other test abort
>   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-5/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
>
>  * igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm:
>    - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#4070] / [i915#533] / [i915#6768])
>   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-2/igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm.html
>
>  * igt@kms_writeback@writeback-pixel-formats:
>    - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#2437])
>   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-11/igt@kms_writeback@writeback-pixel-formats.html
>
>  * igt@perf@enable-disable@0-rcs0:
>    - shard-dg2:          [PASS][221] -> [FAIL][222] ([i915#8724])
>   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-dg2-5/igt@perf@enable-disable@0-rcs0.html
>   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html
>
>  * igt@perf@global-sseu-config:
>    - shard-mtlp:         NOTRUN -> [SKIP][223] ([i915#7387])
>   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-5/igt@perf@global-sseu-config.html
>
>  * igt@perf_pmu@busy-accuracy-50@ccs0:
>    - shard-mtlp:         NOTRUN -> [FAIL][224] ([i915#4349]) +5 other tests fail
>   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-7/igt@perf_pmu@busy-accuracy-50@ccs0.html
>
>  * igt@perf_pmu@busy-double-start@vcs1:
>    - shard-dg1:          [PASS][225] -> [FAIL][226] ([i915#4349])
>   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-dg1-18/igt@perf_pmu@busy-double-start@vcs1.html
>   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-16/igt@perf_pmu@busy-double-start@vcs1.html
>
>  * igt@perf_pmu@module-unload:
>    - shard-dg2:          NOTRUN -> [FAIL][227] ([i915#5793] / [i915#6121])
>   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-5/igt@perf_pmu@module-unload.html
>
>  * igt@prime_vgem@basic-gtt:
>    - shard-dg2:          NOTRUN -> [SKIP][228] ([i915#3708] / [i915#4077])
>   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-11/igt@prime_vgem@basic-gtt.html
>
>  * igt@prime_vgem@fence-flip-hang:
>    - shard-dg2:          NOTRUN -> [SKIP][229] ([i915#3708]) +1 other test skip
>   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-5/igt@prime_vgem@fence-flip-hang.html
>
>  * igt@runner@aborted:
>    - shard-mtlp:         NOTRUN -> ([FAIL][230], [FAIL][231]) ([i915#7812])
>   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-5/igt@runner@aborted.html
>   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-5/igt@runner@aborted.html
>
>  * igt@v3d/v3d_job_submission@array-job-submission:
>    - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#2575]) +13 other tests skip
>   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-11/igt@v3d/v3d_job_submission@array-job-submission.html
>
>  * igt@v3d/v3d_job_submission@multiple-singlesync-to-multisync:
>    - shard-rkl:          NOTRUN -> [SKIP][233] ([fdo#109315]) +2 other tests skip
>   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-2/igt@v3d/v3d_job_submission@multiple-singlesync-to-multisync.html
>
>  * igt@v3d/v3d_perfmon@create-perfmon-0:
>    - shard-dg1:          NOTRUN -> [SKIP][234] ([i915#2575]) +2 other tests skip
>   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-18/igt@v3d/v3d_perfmon@create-perfmon-0.html
>    - shard-tglu:         NOTRUN -> [SKIP][235] ([fdo#109315] / [i915#2575]) +2 other tests skip
>   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-tglu-8/igt@v3d/v3d_perfmon@create-perfmon-0.html
>
>  * igt@v3d/v3d_wait_bo@map-bo-0ns:
>    - shard-mtlp:         NOTRUN -> [SKIP][236] ([i915#2575]) +3 other tests skip
>   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-5/igt@v3d/v3d_wait_bo@map-bo-0ns.html
>
>  * igt@vc4/vc4_mmap@mmap-bo:
>    - shard-dg2:          NOTRUN -> [SKIP][237] ([i915#7711]) +10 other tests skip
>   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-5/igt@vc4/vc4_mmap@mmap-bo.html
>
>  * igt@vc4/vc4_perfmon@destroy-valid-perfmon:
>    - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#7711])
>   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-2/igt@vc4/vc4_perfmon@destroy-valid-perfmon.html
>
>  * igt@vc4/vc4_tiling@set-bad-modifier:
>    - shard-dg1:          NOTRUN -> [SKIP][239] ([i915#7711])
>   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-18/igt@vc4/vc4_tiling@set-bad-modifier.html
>    - shard-tglu:         NOTRUN -> [SKIP][240] ([i915#2575])
>   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-tglu-8/igt@vc4/vc4_tiling@set-bad-modifier.html
>
>
>#### Possible fixes ####
>
>  * igt@drm_fdinfo@most-busy-check-all@rcs0:
>    - shard-rkl:          [FAIL][241] ([i915#7742]) -> [PASS][242]
>   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html
>   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-6/igt@drm_fdinfo@most-busy-check-all@rcs0.html
>
>  * igt@gem_ctx_isolation@dirty-switch@rcs0:
>    - shard-mtlp:         [FAIL][243] -> [PASS][244]
>   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-mtlp-5/igt@gem_ctx_isolation@dirty-switch@rcs0.html
>   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-3/igt@gem_ctx_isolation@dirty-switch@rcs0.html
>
>  * igt@gem_exec_fair@basic-deadline:
>    - shard-rkl:          [FAIL][245] ([i915#2846]) -> [PASS][246]
>   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-rkl-4/igt@gem_exec_fair@basic-deadline.html
>   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-1/igt@gem_exec_fair@basic-deadline.html
>
>  * igt@gem_exec_fair@basic-pace@vecs0:
>    - shard-rkl:          [FAIL][247] ([i915#2842]) -> [PASS][248]
>   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html
>   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html
>
>  * igt@gem_exec_gttfill@engines@vecs0:
>    - shard-mtlp:         [ABORT][249] ([i915#8668]) -> [PASS][250]
>   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-mtlp-5/igt@gem_exec_gttfill@engines@vecs0.html
>   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-8/igt@gem_exec_gttfill@engines@vecs0.html
>
>  * igt@gem_exec_schedule@u-fairslice@vcs0:
>    - shard-mtlp:         [ABORT][251] ([i915#9262]) -> [PASS][252] +1 other test pass
>   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-mtlp-5/igt@gem_exec_schedule@u-fairslice@vcs0.html
>   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-7/igt@gem_exec_schedule@u-fairslice@vcs0.html
>
>  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
>    - shard-dg1:          [ABORT][253] ([i915#7975] / [i915#8213]) -> [PASS][254]
>   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
>   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-18/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
>
>  * igt@gem_exec_suspend@basic-s4-devices@smem:
>    - shard-tglu:         [ABORT][255] ([i915#7975] / [i915#8213]) -> [PASS][256]
>   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html
>   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-tglu-8/igt@gem_exec_suspend@basic-s4-devices@smem.html
>
>  * igt@i915_module_load@reload-with-fault-injection:
>    - shard-mtlp:         [ABORT][257] ([i915#8489] / [i915#8668]) -> [PASS][258]
>   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html
>   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html
>
>  * igt@i915_pm_rpm@dpms-non-lpsp:
>    - shard-rkl:          [SKIP][259] ([i915#1397]) -> [PASS][260] +4 other tests pass
>   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-rkl-7/igt@i915_pm_rpm@dpms-non-lpsp.html
>   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-4/igt@i915_pm_rpm@dpms-non-lpsp.html
>
>  * igt@i915_pm_rpm@modeset-lpsp:
>    - shard-dg2:          [SKIP][261] ([i915#1397]) -> [PASS][262]
>   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-dg2-1/igt@i915_pm_rpm@modeset-lpsp.html
>   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-10/igt@i915_pm_rpm@modeset-lpsp.html
>
>  * igt@i915_pm_rpm@system-suspend:
>    - shard-dg2:          [FAIL][263] ([fdo#103375]) -> [PASS][264] +2 other tests pass
>   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-dg2-5/igt@i915_pm_rpm@system-suspend.html
>   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-1/igt@i915_pm_rpm@system-suspend.html
>
>  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>    - shard-mtlp:         [FAIL][265] ([i915#5138]) -> [PASS][266] +1 other test pass
>   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>
>  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>    - shard-tglu:         [FAIL][267] ([i915#3743]) -> [PASS][268]
>   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-tglu-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>
>  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>    - shard-glk:          [FAIL][269] ([i915#72]) -> [PASS][270]
>   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
>   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
>
>  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>    - shard-apl:          [FAIL][271] ([i915#2346]) -> [PASS][272] +1 other test pass
>   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
>    - shard-apl:          [DMESG-FAIL][273] -> [PASS][274]
>   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-apl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html
>   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-apl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html
>
>  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
>    - shard-dg2:          [FAIL][275] ([i915#6880]) -> [PASS][276]
>   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
>   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
>
>  * igt@kms_rotation_crc@sprite-rotation-90:
>    - shard-rkl:          [INCOMPLETE][277] ([i915#8875]) -> [PASS][278]
>   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-rkl-6/igt@kms_rotation_crc@sprite-rotation-90.html
>   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-2/igt@kms_rotation_crc@sprite-rotation-90.html
>
>  * igt@kms_universal_plane@cursor-fb-leak-pipe-a:
>    - shard-tglu:         [FAIL][279] ([i915#9196]) -> [PASS][280]
>   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
>   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-tglu-7/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
>
>  * igt@kms_universal_plane@cursor-fb-leak-pipe-c:
>    - shard-mtlp:         [FAIL][281] ([i915#9196]) -> [PASS][282]
>   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak-pipe-c.html
>   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak-pipe-c.html
>
>  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
>    - shard-dg2:          [INCOMPLETE][283] -> [PASS][284]
>   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-dg2-6/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
>   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-11/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
>
>  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
>    - shard-apl:          [INCOMPLETE][285] ([i915#180]) -> [PASS][286]
>   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-apl3/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
>   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-apl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
>
>  * igt@perf@non-zero-reason@0-rcs0:
>    - shard-dg2:          [FAIL][287] ([i915#7484]) -> [PASS][288]
>   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-dg2-6/igt@perf@non-zero-reason@0-rcs0.html
>   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-1/igt@perf@non-zero-reason@0-rcs0.html
>
>
>#### Warnings ####
>
>  * igt@kms_async_flips@crc@pipe-b-edp-1:
>    - shard-mtlp:         [DMESG-FAIL][289] ([i915#8561]) -> [FAIL][290] ([i915#8247])
>   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-mtlp-8/igt@kms_async_flips@crc@pipe-b-edp-1.html
>   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-mtlp-3/igt@kms_async_flips@crc@pipe-b-edp-1.html
>
>  * igt@kms_fbcon_fbt@psr-suspend:
>    - shard-rkl:          [SKIP][291] ([i915#3955]) -> [SKIP][292] ([fdo#110189] / [i915#3955])
>   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html
>   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html
>
>  * igt@kms_psr@sprite_plane_onoff:
>    - shard-dg1:          [SKIP][293] ([i915#1072] / [i915#4423]) -> [SKIP][294] ([i915#1072])
>   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-dg1-17/igt@kms_psr@sprite_plane_onoff.html
>   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg1-15/igt@kms_psr@sprite_plane_onoff.html
>
>  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
>    - shard-dg2:          [INCOMPLETE][295] ([i915#5493]) -> [CRASH][296] ([i915#9351])
>   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-dg2-3/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
>   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/shard-dg2-3/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
>
>
>  {name}: This element is suppressed. This means it is ignored when computing
>          the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
>  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
>  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
>  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
>  [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
>  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
>  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
>  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>  [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
>  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>  [i915#5793]: https://gitlab.freedesktop.org/drm/intel/issues/5793
>  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
>  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>  [i915#6786]: https://gitlab.freedesktop.org/drm/intel/issues/6786
>  [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
>  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
>  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
>  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
>  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
>  [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
>  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
>  [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
>  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>  [i915#7812]: https://gitlab.freedesktop.org/drm/intel/issues/7812
>  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>  [i915#7984]: https://gitlab.freedesktop.org/drm/intel/issues/7984
>  [i915#8104]: https://gitlab.freedesktop.org/drm/intel/issues/8104
>  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
>  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>  [i915#8320]: https://gitlab.freedesktop.org/drm/intel/issues/8320
>  [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
>  [i915#8398]: https://gitlab.freedesktop.org/drm/intel/issues/8398
>  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
>  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
>  [i915#8489]: https://gitlab.freedesktop.org/drm/intel/issues/8489
>  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>  [i915#8561]: https://gitlab.freedesktop.org/drm/intel/issues/8561
>  [i915#8628]: https://gitlab.freedesktop.org/drm/intel/issues/8628
>  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
>  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>  [i915#8724]: https://gitlab.freedesktop.org/drm/intel/issues/8724
>  [i915#8806]: https://gitlab.freedesktop.org/drm/intel/issues/8806
>  [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
>  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
>  [i915#8821]: https://gitlab.freedesktop.org/drm/intel/issues/8821
>  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
>  [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
>  [i915#8898]: https://gitlab.freedesktop.org/drm/intel/issues/8898
>  [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
>  [i915#8962]: https://gitlab.freedesktop.org/drm/intel/issues/8962
>  [i915#9010]: https://gitlab.freedesktop.org/drm/intel/issues/9010
>  [i915#9119]: https://gitlab.freedesktop.org/drm/intel/issues/9119
>  [i915#9121]: https://gitlab.freedesktop.org/drm/intel/issues/9121
>  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
>  [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
>  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
>  [i915#9261]: https://gitlab.freedesktop.org/drm/intel/issues/9261
>  [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262
>  [i915#9298]: https://gitlab.freedesktop.org/drm/intel/issues/9298
>  [i915#9310]: https://gitlab.freedesktop.org/drm/intel/issues/9310
>  [i915#9351]: https://gitlab.freedesktop.org/drm/intel/issues/9351
>
>
>Build changes
>-------------
>
>  * Linux: CI_DRM_13652 -> Patchwork_123938v1
>
>  CI-20190529: 20190529
>  CI_DRM_13652: 7d06607b560622af65f7c9f433bbe269751befd2 @ git://anongit.freedesktop.org/gfx-ci/linux
>  IGT_7493: 2517e42d612e0c1ca096acf8b5f6177f7ef4bce7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>  Patchwork_123938v1: 7d06607b560622af65f7c9f433bbe269751befd2 @ git://anongit.freedesktop.org/gfx-ci/linux
>  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
>
>== Logs ==
>
>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/index.html
