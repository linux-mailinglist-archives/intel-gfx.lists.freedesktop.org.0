Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93AC18783F5
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 16:37:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E865510E338;
	Mon, 11 Mar 2024 15:37:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gu320B8c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07E2010EB64
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Mar 2024 15:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710171470; x=1741707470;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=POeEkJ8yi9xQTv4MWNnCb/IiiSa4/1A00AberVDruDE=;
 b=gu320B8cybcAqpTBiXjrFKUtL2RIpOEy2Y+nPlS7m/EyoRc+p/V2KvBD
 Q9iURFJPG0DBkgr6iXJELoE9d6qcbOdWh79b6f+XWhRJCw7rdPH4vqdtE
 yNCZZbap28EzSWB4B9n4iOMFmjspTrGeY+EJbm1Q7LhX5I4L9A8LHTITN
 atTMhOavFqDZ2dxZCnruVHd5OLzquu8gOXKn0zR88ifpw1i2zbXy5hoUW
 XRWvr4ZVdPr61XC6eZuWB0oU7k+GOfFx2CFxBkCL9FB09yDvXtysWIovP
 xIpjK3DC9puH1KyFpY3ew5NyyecBwGg7NxrmVDU3J90UBGy4hTTde2ohx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="4717862"
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; 
   d="scan'208";a="4717862"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 08:37:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="11635106"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2024 08:37:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 08:37:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Mar 2024 08:37:47 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Mar 2024 08:37:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ko7/hgKrFhFSLNRHajSDDm/9M6p9gYzJAW9dWxbmuRYumGbas1xSsK6Hwv2BFlhklP2qo/QVwqmB5zP5smNKMWXdly8X5BoeN/AAoPyVACxrwlYNhLPRlsPoORne9z26DZ3FGE8DKVfy9uxsBWlH3Tq+wNwbKCTpvqO3mIYd9xas4o5jPUW3EQM7fsCT0zo+o98OvsYgjjbRLeCceOUWusixhKhzSJm5PQPFXez8E2PQPQJagFLu7aPeisubBiLwByc7CNAvvEZcDdtot1gZnVV0IofOv4VB6J4uz00urCsuHmrn1u03HwqowzXx34NotRJZB0irP/8RarUWooTu5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5qbgQ3ak+M+3/76+EH7DCd7vT2qKyxjpqcXdI0Mu0zo=;
 b=b6etWCtlwcxN1g6jDQBBUfjDA6JppR7UHxMJCOMsWCQwu4GPQ05w6pYJHcidlSIczMsu6r1Pr3gv2XCuHVO0vsBlhGxBcSXxJ64DiDba/NEQqYXQIgjMcf7JGjCKaNl4e3DaYWtniHJknosIfnR5OrmnpG9FZ8Exhx9/fRMM6S00bYeZPVCj4Sv/YHmq2AD/m7+HsELm/tyC3MUYZNaFcTMCI10YlNl6/xyW/o2fEm1yqLcOJTdhOciEcCh8+/K2wMTCena+E1I6/oj+yZHy2SVNdI0VlaKTqTk03Z9VG8fEx6xr60mfHv71Bhkk1pSRRs5PmL3a6l2nc4jzcca1Jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA3PR11MB7536.namprd11.prod.outlook.com (2603:10b6:806:320::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.17; Mon, 11 Mar
 2024 15:37:41 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7386.016; Mon, 11 Mar 2024
 15:37:41 +0000
Date: Mon, 11 Mar 2024 10:37:38 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVA==?= =?utf-8?Q?=3A?= failure for
 drm/i915: Drop WA 16015675438 (rev2)
Message-ID: <zqvwtv3fd7sgpzoy3fftfxhmt7impvswiohpwyxlf3lah7uihk@4c2m5vbmfvuv>
References: <20240306144723.1826977-1-lucas.demarchi@intel.com>
 <170983227898.580282.16046060976302648998@8e613ede5ea5>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <170983227898.580282.16046060976302648998@8e613ede5ea5>
X-ClientProxiedBy: SJ0PR13CA0125.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::10) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA3PR11MB7536:EE_
X-MS-Office365-Filtering-Correlation-Id: 56a0e056-bfae-43c0-f929-08dc41e1306a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b8/WY3mMm9jL5hlNYG6REsS4fFgeq0tFiJy+2/STLtNG47EepU7snGC5H0OqX1ZPUeVNXqzENCyBBLmH1+yv4qTvpNXDB3XHw9Gl/IsX+yPTDe3aQMrXpMZpEZbWJKDNo/xd16up722Q5iWzKbmOla3NL1QiWkUHIPDgeYNMCA50dBv82cUv43dwQsy02YlC7g+QhcsQW2yoABgBKa5eYncrqyWs5QeX46KGsWi6QoDfPLq1NtmQEpgTbk44TDtdIcpTotGiRZztbT+hFa6dJ6IOttLRubzb62hJDt0AfWsYjvjwI0coF3RoBIkxQVitZMEpYEdIKouIbojQgnB9c2SAku9eJwzjmGH0Lrx+yFlEMUvo6mwTxvNxrBvPTW1cf+c8femedHP2/qbvZM2Wzgt1cTnzNJB1l0tYKedFJ26P0rh7JdvWMaDw5iwhKC/Zdz+D4RzwaEwHNSXCGPEOnaPtC54aWdXGt8HohsHP5gOfs3abfULFIsf9u/4CBqUmZdogI95IotvwIpv3TSMhtgnb37O/LF6/KWDjxpH9w+JXSHbEX+v5Kk2Vxk9eRQZ40jGCbveT+gzJlIwA30nKfJIYzB2wbfKmcqSOO3qxtbVtknh1abyzVPF+LKpSriqy
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oBdjK8JGvWDhCP/jmIIV440Vbz1cHz2fLXOnGoe6xMYWT0ka1DtgPOTmJ6W8?=
 =?us-ascii?Q?d0oCgToVv6aWgWsJBh58rUFNFHm0XtBth7JQlVcEeWhPPE4iE3OE5DDVnZWe?=
 =?us-ascii?Q?726jkuRTAfC+UeHm4EvtqigrXtEHiC7Ql8/jzT70z1oV+FygzP982YgHZXMj?=
 =?us-ascii?Q?DAh3Y/EkMR6ITszhlYIz7HEG7i9hOysYu01TtXwrB1GR4gFoME4R9+vbgP+v?=
 =?us-ascii?Q?ChKntQByocRTYQDik1Da0mhlOdZM/1Pbgzgc6ExFO0BruVH/ByOxcj6JD4Az?=
 =?us-ascii?Q?UtB/ga2sKrY2YoaMQe6IBq9D/eODorvm92GU263zsFwGBm2XF2YmkHDdTMvQ?=
 =?us-ascii?Q?Db+IRQragjKYNiqXViB8V/OFzYjnYd8ycUTngx9P5mZ9wRvjVQsJ3rpx1CFj?=
 =?us-ascii?Q?7BEi767yg1kHaT+UHh2bDcTxAYC5+PGZUi+Wv4uNB5srePfjgu0dqoYI+GWF?=
 =?us-ascii?Q?Mtpjm1pQo1jVSzcQ/tDa1EbvX1QdXcIU5BH/gWCYJ59Vt2Wd7+Es2G2s161u?=
 =?us-ascii?Q?xA3lkXmDdeg8CEKlpkM4GyR1gCnuURCprZfP/f7FT1S+f00jjHrSGEkw6C/2?=
 =?us-ascii?Q?SNCYgqAmwbRmWgSZ/AeQAdhHtLh/+0XcxTW/sDqFiGwtdzlV5nYu9qK/pDjh?=
 =?us-ascii?Q?s65fVSNqvLFaTwju3ddgxRWb37BjbAj7Wdt97wvb27CrWCemVzMDRBs34bT4?=
 =?us-ascii?Q?gyDAkTxTYY6vxK3WwwedV+5YngucMkYSjRJkRaSSsFKgxc9g7PasctTdEcst?=
 =?us-ascii?Q?0Wvc4XS3dLGl3Pab3rHBvRpvFxJnn2zBgvaRfj5kJTPHNqrlzE5dTy/BWkZM?=
 =?us-ascii?Q?rl6nSPG78+vZr0xzsc2+wCCwnIJGABOZMPHcfuzbViGYXzBOymwjaoHVfKTc?=
 =?us-ascii?Q?HAYOGYX/5ABB9MzI5CnHmR3tVxiWSVsX7gDzGrthxN61nhlBpzFLSPkn6EGd?=
 =?us-ascii?Q?73C4SAHlaHoNRKG8fMjwh3xKWu2Sl9firuKgjQdKdIZzMHR8L27k769N2LNf?=
 =?us-ascii?Q?lha+beHPsSW6AHJBqQriDursUMN4UF8pItQDEo0/U9AWGdf9vYpQVdQaXSXs?=
 =?us-ascii?Q?6PaZrYtP5qEPEvqRiBnHagcf2ICwiJafhj4htUR3bhTqZxLUka2l4fHO89/3?=
 =?us-ascii?Q?izh7w4rcYHSEMYsYjGG/muSI2DoRj+DilkUB4FTsT+y5g5GVhwfILbumRW/+?=
 =?us-ascii?Q?kMipzDV9rWYrvqpOpd3Y5k2eo7Md9q+ffjnSENNP6xQePeLMSBKL43hzQU/p?=
 =?us-ascii?Q?Bc+1oOuIMMYadHwuT9kU1VWbA2X+mAMYysTvLMvRmZ6b4sh+bi271Apco9Br?=
 =?us-ascii?Q?0rb5dW3At3je6tnlkFvc2ZVY2IRmgGfp8RC7g71RSoghvYG5OZCS2uymsN3a?=
 =?us-ascii?Q?vjYHyMzYv0Ypv/gWpp8RzHc2aW0ANBhsM5uSzn87kfgcsNlBnkopIlpJn5SL?=
 =?us-ascii?Q?QLgYo3FZqbtKeftLm5g0UrKrzZWHi4T5BGXgGkdjkaDtJSGlBsUX/VOv4MTj?=
 =?us-ascii?Q?z0XLhdfhi03oPs5lxeW4zOQEt6EHgsMa7V7YTTJZg9jK3A7ZNWhTDsi+go5q?=
 =?us-ascii?Q?CmRfjbhSVCKuD+qf6WOUHAyB6USmlG72X2i0AxPgRQPG8OasT8dDUjgJ4bZ4?=
 =?us-ascii?Q?eQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 56a0e056-bfae-43c0-f929-08dc41e1306a
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2024 15:37:41.7708 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QfgAWywpZWzgB8JsfsczS80oCq2l8Tdva78B8zq8Rn924PTtYWOHlTiUQv5RbCOeKZX0N/jr8RDC9TV1EqNszgnoKyKGkO3LBu9j+IGaC+U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7536
X-OriginatorOrg: intel.com
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

On Thu, Mar 07, 2024 at 05:24:38PM -0000, Patchwork wrote:
>== Series Details ==
>
>Series: drm/i915: Drop WA 16015675438 (rev2)
>URL   : https://patchwork.freedesktop.org/series/130815/
>State : failure
>
>== Summary ==
>
>CI Bug Log - changes from CI_DRM_14400_full -> Patchwork_130815v2_full
>====================================================
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_130815v2_full absolutely need to be
>  verified manually.
>
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_130815v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in CI.
>
>
>
>Participating hosts (8 -> 8)
>------------------------------
>
>  No changes in participating hosts
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_130815v2_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@i915_module_load@reload-with-fault-injection:
>    - shard-tglu:         [PASS][1] -> [INCOMPLETE][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130815v2/shard-tglu-6/igt@i915_module_load@reload-with-fault-injection.html
>
>  * igt@i915_selftest@live@requests:
>    - shard-mtlp:         [PASS][3] -> [ABORT][4]
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14400/shard-mtlp-3/igt@i915_selftest@live@requests.html
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130815v2/shard-mtlp-5/igt@i915_selftest@live@requests.html
>
>  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>    - shard-glk:          NOTRUN -> [INCOMPLETE][5]
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130815v2/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:
>    - shard-dg2:          NOTRUN -> [DMESG-WARN][6]
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130815v2/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html


this is the only one that might be related since we are removing wa from
pvc/dg2. But looking further, that warning shouldn't really be caused by
this patch.

Lucas De Marchi
