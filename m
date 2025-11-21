Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 188F3C7B963
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 20:48:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1DD910E8F8;
	Fri, 21 Nov 2025 19:48:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KtN7+Hyn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D02E10E11C;
 Fri, 21 Nov 2025 19:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763754489; x=1795290489;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=N8kJbeTe2RkHhcuocHPCrMBOeiHIYWKrxnwEHgNGj+Y=;
 b=KtN7+HynxR+Cjp4nXxZBTDvl63iHfYvYn7Rkykt6GhFcN9AoSwZ1hri+
 Mwl2jHMjH+Z5jBjOS307fNODnbPAIIjTNdNU1jlxl7bmKIglTtPtxy8c+
 fqByuUIdRGjfpY+PAjL8n/duOpjlm8VowIqjSlIcNIGzjujGq8wBj1Lmm
 W8B4LJZxeln7ZI4R9vpStrsCyrR7HLJIX+Eo2OI+A+/cqBhTYZcTwQX3k
 phQjyAkeaszxpWyhsql1IvHSs8YouY/xAtQVugb6RPRZGXI+3cgxRjD7p
 O3NNmhWF71bfFYUcukWXbh7uJVaoZOpgcCVD0E8SCtL0zRn9nlB0Ppa3m Q==;
X-CSE-ConnectionGUID: x6ui3dE5R3KxR9SCinrNyw==
X-CSE-MsgGUID: p7W0Ss2cTV2yB7skInGrfg==
X-IronPort-AV: E=McAfee;i="6800,10657,11620"; a="65552946"
X-IronPort-AV: E=Sophos;i="6.20,216,1758610800"; d="scan'208";a="65552946"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 11:48:08 -0800
X-CSE-ConnectionGUID: I2dUePdkRx+aqlSxSeRs2w==
X-CSE-MsgGUID: aleLRHlCR3CEH++SFoGSkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,216,1758610800"; d="scan'208";a="196913043"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 11:48:08 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 11:48:06 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 21 Nov 2025 11:48:06 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.58) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 11:48:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hsJ8J9uuucUzvIgXbuFSLOILoZ2ZWxoJYlqhy45WN6I5LFUFE9Tb3HFYoKQ7mbbhdUKImWSlYqJNuB3ZPRldTWysCC9pJ1OSQ97eW1hSr+fgDlq+Ix1GW5K2OlbyT31MXAlV5G8maUPBTpYHnv1AQTHXd5MPdpKiwEhHoTojzQySA79Fca55v0dsgbhEmxBUsBZRpMdtIG8ee5fjZADxHdikKtjIP9mxLRDHUM2vv2NCh0s4RJ8+RX0UTLgS+Mq59ywes42f7OK+Hama5/U1JXitDgwwAJoRT6bz2v3Y3qltWzyDt5Awcugxub9PIC0jYQ21iSP3EBd3SWBhgYZ8Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m1q8BbCIDHbGiEDjgc6vP9O4lL4yLv4CBZOUvrN6Itk=;
 b=azE3ITjEBl/3dd4i9N3cqwTgQZkjBV8tZFIKlc7OPYrdvWfkkiwZ2shlGlr3hnxLZHlVRArYDeDd9JIoUd3J5HZYjGHnb7tZtzZKSCB0HHtmf9WyJnOYeSEV2icLbp/3rY1zFLPfI2OB2c1A3vhxm+BYj7tHdqG19KJSQ2WsKgcN015r36ogUTTfOxUradY8m+AlGfMKHVgEV6MR6nxrBTPVZC1F9hPfTtLPnPwYEpyuGgoPuXlpXjctEmgqRTGosJkSJ4+nKoOpBbbHJIHq/IX/cHG900ZSEvp2ERF3nY6zZ0x4Flm93GnRt1RiL/uObjfMfni37cWg5pdw7tf6lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA1PR11MB6616.namprd11.prod.outlook.com (2603:10b6:806:257::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Fri, 21 Nov
 2025 19:48:03 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9343.011; Fri, 21 Nov 2025
 19:48:03 +0000
Date: Fri, 21 Nov 2025 21:47:54 +0200
From: Imre Deak <imre.deak@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, Suraj Kandpal
 <suraj.kandpal@intel.com>, Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <I915-ci-infra@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?=
 =?utf-8?Q?lure_for_series_startin?= =?utf-8?Q?g?= with [1/5] drm/i915/cx0:
 Fix port to PLL ID mapping on BMG
Message-ID: <aSDB6oCyPZkkGFxZ@ideak-desk>
References: <20251120172358.1282765-1-imre.deak@intel.com>
 <176372186635.17117.13640185361724504300@a3b018990fe9>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <176372186635.17117.13640185361724504300@a3b018990fe9>
X-ClientProxiedBy: LO2P265CA0149.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9::17) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA1PR11MB6616:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a05151c-4e81-4202-39fc-08de2936e075
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|366016|10070799003|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?wYfDcTDWkin/MLK7R7uAa00s4EGIvnyNKiW5thqXkWRV9as2CLVWADxkUOjI?=
 =?us-ascii?Q?TDcv7MdtEoWHx0LDYrjMdXCbnjDpWfVVTmO27CcPZp1Oou+u6h5VLqgtSZVj?=
 =?us-ascii?Q?AuWLxI7r40CFvOpTn2sI56SQC8qJHVXMmS5K8ElBKZGMyiz5OTZ0ds0q3mPB?=
 =?us-ascii?Q?HduGzI6a0AVtdxV5LtvGUDwufqQOjk8U8QzsgawkJ0oSAQ7ubz2rsSFg9XzR?=
 =?us-ascii?Q?n2bTBry/cbq/W5qyM9tBd8UHqGqRoImR3ytS8KyacLgorcUJHnsRSpU9St+j?=
 =?us-ascii?Q?FLiZcGh8v8PCHlGhEhncPLcyaY3HURVftfwV8mpfUiz97pEER2S4NN/HgB7L?=
 =?us-ascii?Q?xGhAgTSqimAsWIhd0hjeuH7MucHQecYmMQQM60292lVXiqT7ziElEDFVAqsq?=
 =?us-ascii?Q?M15gdH6J/wbMTaH5KZvfoPchbrauOwfayxmTj5UzDpsnM8LTPPlzgZQrDaWI?=
 =?us-ascii?Q?5Qz6JETppis56Z+dCJX5CexYVrAq3c2RUNfjWHzZyYGrmJjW5PaZDgePvhGm?=
 =?us-ascii?Q?+nAixWkekS1rFtdSUqBka7zxRuTfMVayQuXNZShXDrjKch+zBNoB77ZW+ofC?=
 =?us-ascii?Q?AU7ZakZSQN/zodmLF8qy2h8/CQrnqCSlwd1a2y3Tb8NrBg5vcLpSWgXwCoJo?=
 =?us-ascii?Q?9cCZC3HMqidBtARDBh3Hus1g84NfoVyanZm3l5MMsc7mNENw1D4q/N02t3zw?=
 =?us-ascii?Q?io0hI+w6cbUKwXxK1IMOIzLlsao34y1zloKKXvFlbMi5stj6TdXNxS8FssNi?=
 =?us-ascii?Q?5ZnvsKzy5SkUtt1FvUo9MdL08+RM0LLUvKKK7aNnQZx+bO+Dd6OvGHdriEia?=
 =?us-ascii?Q?iovmDxeA3gYE/ofty5A1sSTpF8wqE4jcB6edvDq300NUALX2q55YUJd3+7rH?=
 =?us-ascii?Q?sBZmBjyqUwmx6fTSYXlBRJekftYILqGTXIbRIGo854RezAgJuA273jHt7Ao1?=
 =?us-ascii?Q?EfdRvFCoTcEAiE1pDdzzUBA+xER/dMNHS4X+pO5zIXZCTutzV4N33SeXDRlu?=
 =?us-ascii?Q?I8EQ/N8cE7wgkBuesTCy1te5f1IuWbI3BCu1rPW/OkAeScqzhqDyBzY2V9y/?=
 =?us-ascii?Q?I+o4gTPcvP8dO+YD2NoeKWd+VwUKYzChxt9SgnN5hfbdwR76S3Fg0GumU0Nl?=
 =?us-ascii?Q?2yX+KsDwdDkkYk4ZC1V3lwTnc4IjlS0ETx+XcKVYVTvyxUqG/JBiRoKi096l?=
 =?us-ascii?Q?R7dsjltgMZsohS+qNwYwVNQzAoqhnW6FmwqUgayLMEqMHDqtDC+09f07MUaX?=
 =?us-ascii?Q?g5keEbaWIaQWIgryxmxYYKLxP60UbqHdRXvyr/cVm5QAUVq4c6tSpDUvs2uO?=
 =?us-ascii?Q?8Xjs/LONB+LJ6cCmf2+/nPsQg2QPtOgcMJx1Ug3xPjyk55aXYF6OIBOOXYGy?=
 =?us-ascii?Q?pPr1Kt56db1cdahv+ajiCBZkvMQCEio53eAv2pJR6qoft9ctkw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(10070799003)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hO+AZ6CwlauAP8FRxaPT6F+xv70xtWUYEFjdHBK8VDzWL8MrZGNY0K5HsUuz?=
 =?us-ascii?Q?m8vCnmh40osh148X+YxMSmcFIHZ1s6j332FiE7cyYsOTI2F7cp0obVx8+kF9?=
 =?us-ascii?Q?VCcyQNh0Nsyr8cAPLDwy5tmTBkev+wU673Jz+UCiadVOgRoROX6LsBJNiW3+?=
 =?us-ascii?Q?hku0BoIXxrtWpC7oNZpgtPYGj5yLhysA/y9+su+2qU1BWS46iFiUQfnBcfZ2?=
 =?us-ascii?Q?a3bAnX1zOE1KDcYbFWDhcOW7T6Jlk06+unTbkZqiR4Ysd4oS4N42Sa0epD+3?=
 =?us-ascii?Q?9Mf4VC53bGCjp6F/aVYOCOk2/osDKnCd4M1rUtzVRCUPnIcQFTmc2y64sMnM?=
 =?us-ascii?Q?qKDWIj2wuw7tCw6ErWNj0sIzluh+cyxkRhUEov4wsmyk4Xi/SuKyTf9HAGPP?=
 =?us-ascii?Q?BDnO1OfZwZUSo1bvSR98WLwDJXP+C/f2/G9UwLnu+WnEYm47lQLFeCevDsD2?=
 =?us-ascii?Q?wTKPA2SI8Nvk92RKf0cuo29wDwuiOewasN2w58rQTmoIjQgFs22GFtok0eCH?=
 =?us-ascii?Q?oYmac0t9k7aHJjyhh+2rr/xoGyyTPkVdWTgmWF652xj2i+vBRJSyJ2oF3vBd?=
 =?us-ascii?Q?ltlMGQGXbIVq/+jjx7xCZT79RZmmSI5g0o0mEUxatlgYrDtjmtv18eqQ0MmW?=
 =?us-ascii?Q?Mgdh7vA84eGJ/rWm/ryHnYqrBaH4Fy0A00v2NeM0l5mLzpGXy14TYn4RwA1r?=
 =?us-ascii?Q?RF7+82mWqgLAvEUchHDimE/gR1KSLVGTpJz0Yd2fh+rRs0rNBVAPGxTCiepW?=
 =?us-ascii?Q?XmHA+cGNXMAnhAbTFh3P9yTR02+iwIqI4nYounmvzTa3RL5BMddaSICtLQQo?=
 =?us-ascii?Q?2OB0+WtTWm6ApGq8UV4o3EhoJ4yxcaQC/xHisTbN8+VYP5H3RRw1GVtZhETO?=
 =?us-ascii?Q?uSoTDsr8pBcvgGafD18v3PikTAjWOBo3YCsyXmLp0jn9gXTp6GFgd+WmUxTU?=
 =?us-ascii?Q?SD764ln54zulyVWTRIh4hpjqaZ8EygjYa+EJdC+tGZkswz851g+6U3ZBA9fR?=
 =?us-ascii?Q?gbx75xkSBId7hZRbra/NoqaYJ3LNl15EBzmqlw9XphXRtL8ybnfJNUebrQkn?=
 =?us-ascii?Q?Ya/ClTbJw+9uF509KTJ9LpHZHTSiOr5x1Z4ThSgkN0jI3CC0AelDPreLemsK?=
 =?us-ascii?Q?dCXi3D+Mk3HKJV5j2fhkBj4rdXFGnAjxaUN7G7Feywr1FEVlSP0xH3eqZXIP?=
 =?us-ascii?Q?dGDMWD8Fl0Cq5vGjMVTcRTycDNqEm0SNn6kERPGysBDjn6Yhq9X2QfJAYw0L?=
 =?us-ascii?Q?2u7r8T6mMf4QNqsrKsFzntcoyPxDwyRFWm9976G1DAntMPQumhvEZCRxleE0?=
 =?us-ascii?Q?e6PWxWsb7DLBlHv8kmWTWyI2NxZxBzW3xJaphGmNsDo0yM/08Xn0UiTYMWnp?=
 =?us-ascii?Q?0XSletMy/As+rLc/nieI5UcszLsn0iP15d+emqwwbkCkm2eTXKRQfdW8QuLw?=
 =?us-ascii?Q?I5Dt0W7UAQ4zGWmOl6tpkL16pakoeZQAikox5Fl58i0myjrIzuXCTGMA8aET?=
 =?us-ascii?Q?jeHheIrKq7CQtMhOQOyFHSImzI2jZ6w95huMbNgrj/PCnDrxxJ2D04V2vwz9?=
 =?us-ascii?Q?swizoRIM0ZXChgRyhUoVjAeo58BD9+Lk7Zu3CFMQfi0TDyk4cbUBN8yEX3V0?=
 =?us-ascii?Q?d8kM4O58Qvmxxl2oi/MMxPKWJDoEMhCOU/iJjtJUNrcT?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a05151c-4e81-4202-39fc-08de2936e075
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2025 19:48:02.9523 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pnTJpSbIiqWeiRfIH3n9eTCyscR/qoLDCNjIqb87IO+muqZzzxCGvPn0mBewGWr2WSC10a4L7Ql5PFM8vsmCkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6616
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 21, 2025 at 10:44:26AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/5] drm/i915/cx0: Fix port to PLL ID mapping on BMG
> URL   : https://patchwork.freedesktop.org/series/157863/
> State : failure

Thanks for the reviews, patchset is pushed to drm-intel-next.

The failure is unrelated see below.

Patch 1 fixed an issue preventing the use of any display outputs or
running CI tests on BMG.

There is one remaining issue I see after the PLL mgr refactoring, where
the port clock stored in the PLL SW state mismatches the corresponding
HW state (see [1]). This off-by-one difference, is only due to not
adjusting the requested port clock to the actual one (which is based on
the PLL dividers programmed to the HW), storing this unadjusted port
clock rate to the PLL SW state, which will later mismatch the clock rate
based on the dividers read out from the HW. I think the fix for this is
simply removing the clock from the PLL SW state (i.e.
intel_c10pll_state::clock, intel_c20pll_state::clock), since that same
clock rate can be calculated from the divider values contained in the
same PLL state (i.e. from intel_c10pll_state::tx/cmn/pll[],
intel_c20pll_state::tx/cmn/mplla[]/mpllb[]/vdr).

The above mismatch doesn't cause any other issues besides the state
mismatch WARN and it's not related to the changes in this patchset.

[1] https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-157862v1/shard-bmg-7/igt@kms_hdr@bpc-switch-dpms.html#dmesg-warnings5315

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_17576_full -> Patchwork_157863v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_157863v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_157863v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 11)
> ------------------------------
> 
>   Additional (1): shard-dg2-set2 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_157863v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-1.html

The changes in the patchset have an effect only on MTL+, so the failure
is not related.

It's the audio driver failing to suspend:

Audio driver acquires PW_2 and PW_3:

<6>[  735.989194] snd_hda_intel 0000:00:1f.3: bound 0000:00:02.0 (ops intel_audio_component_bind_ops [i915])
<7>[  735.990186] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] enabling DC_off
<7>[  735.990552] i915 0000:00:02.0: [drm:gen9_set_dc_state.part.0 [i915]] Setting DC state from 02 to 00
<7>[  735.990884] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] enabling PW_2
<7>[  735.991130] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] enabling PW_3

and it doesn't release these during suspend:

<6>[  736.230369] PM: suspend entry (s2idle)
...
<7>[  736.481107] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] disabling PW_5
<7>[  736.481815] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] disabling PW_4
<7>[  736.482364] i915 0000:00:02.0: [drm:gen9_set_dc_state.part.0 [i915]] Setting DC state from 00 to 00
<7>[  736.482890] i915 0000:00:02.0: [drm:gen9_dbuf_slices_update [i915]] Updating dbuf slices to 0x0
<7>[  736.483437] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] disabling PW_1
<7>[  736.485059] i915 0000:00:02.0: [drm:hsw_wait_for_power_well_disable [i915]] PW_1 forced on (bios:0 driver:0 kvmr:0 debug:0)
<7>[  736.485533] i915 0000:00:02.0: [drm:bxt_enable_dc9 [i915]] Enabling DC9
<7>[  736.485898] i915 0000:00:02.0: [drm:gen9_set_dc_state.part.0 [i915]] Setting DC state from 00 to 08
<4>[  736.486405] ------------[ cut here ]------------
<4>[  736.486408] i915 0000:00:02.0: [drm] i915 raw-wakerefs=1 wakelocks=1 on cleanup

leading to power well enabling timeouts and unclaimed register accesses
after resume:

<7>[  751.949363] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] enabling PW_4
<7>[  751.950669] i915 0000:00:02.0: [drm:hsw_wait_for_power_well_enable [i915]] PW_4 power well enable timeout
<4>[  751.951082] ------------[ cut here ]------------
<4>[  751.951085] i915 0000:00:02.0: [drm] drm_WARN_ON(!timeout_expected)
...
<7>[  751.961210] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] enabling PW_5
<7>[  751.962663] i915 0000:00:02.0: [drm:hsw_wait_for_power_well_enable [i915]] PW_5 power well enable timeout
<4>[  751.962915] ------------[ cut here ]------------
<4>[  751.962917] i915 0000:00:02.0: [drm] drm_WARN_ON(!timeout_expected)
...

<4>[  751.975473] i915 0000:00:02.0: [drm] Unclaimed read from register 0x64300
<4>[  751.979307] i915 0000:00:02.0: [drm] Unclaimed read from register 0x64400
<4>[  751.981981] i915 0000:00:02.0: [drm] Unclaimed read from register 0x64500
<4>[  751.984420] i915 0000:00:02.0: [drm] Unclaimed read from register 0x64600
<4>[  752.119780] i915 0000:00:02.0: [drm] Unclaimed write to register 0x44434
(further unclaimed accesses until the machine hangs)

The same issue happened earlier already at least in:
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157555v2/shard-tglu-1/dmesg15.txt

> #### Warnings ####
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-rkl:          [SKIP][2] ([i915#12713]) -> [SKIP][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-4/igt@kms_hdr@brightness-with-hdr.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-1/igt@kms_hdr@brightness-with-hdr.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_17576_full and Patchwork_157863v1_full:
> 
> ### New IGT tests (1) ###
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2:
>     - Statuses : 1 pass(s)
>     - Exec time: [1.36] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_157863v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@object-reloc-keep-cache:
>     - shard-mtlp:         NOTRUN -> [SKIP][4] ([i915#8411])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@api_intel_bb@object-reloc-keep-cache.html
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-rkl:          NOTRUN -> [SKIP][5] ([i915#11078])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-8/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-mtlp:         NOTRUN -> [SKIP][6] ([i915#7697])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_ccs@large-ctrl-surf-copy:
>     - shard-mtlp:         NOTRUN -> [SKIP][7] ([i915#13008])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@gem_ccs@large-ctrl-surf-copy.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-rkl:          NOTRUN -> [SKIP][8] ([i915#9323])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-8/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-tglu:         NOTRUN -> [SKIP][9] ([i915#7697])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-5/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-tglu:         NOTRUN -> [SKIP][10] ([i915#280])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-tglu-1:       NOTRUN -> [SKIP][11] ([i915#4525]) +1 other test skip
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-rkl:          NOTRUN -> [SKIP][12] ([i915#4525])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-2/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-tglu:         NOTRUN -> [SKIP][13] ([i915#4525]) +1 other test skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_fence@submit3:
>     - shard-mtlp:         NOTRUN -> [SKIP][14] ([i915#4812])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@gem_exec_fence@submit3.html
> 
>   * igt@gem_exec_reloc@basic-wc-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#3281]) +2 other tests skip
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-2/igt@gem_exec_reloc@basic-wc-cpu.html
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-dg2:          [PASS][16] -> [INCOMPLETE][17] ([i915#13356]) +1 other test incomplete
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg2-3/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-x:
>     - shard-mtlp:         NOTRUN -> [SKIP][18] ([i915#4860])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@gem_fence_thrash@bo-write-verify-x.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglu:         NOTRUN -> [SKIP][19] ([i915#2190])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-multi:
>     - shard-rkl:          NOTRUN -> [SKIP][20] ([i915#4613])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-8/igt@gem_lmem_swapping@heavy-multi.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-glk:          NOTRUN -> [SKIP][21] ([i915#4613])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-glk3/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-tglu-1:       NOTRUN -> [SKIP][22] ([i915#4613]) +2 other tests skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_lmem_swapping@verify-random-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][23] ([i915#4613])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@gem_lmem_swapping@verify-random-ccs.html
> 
>   * igt@gem_mmap@bad-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][24] ([i915#4083]) +2 other tests skip
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@gem_mmap@bad-size.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-buffer:
>     - shard-tglu:         NOTRUN -> [SKIP][25] ([i915#13398])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@gem_pxp@hw-rejects-pxp-buffer.html
> 
>   * igt@gem_readwrite@beyond-eob:
>     - shard-mtlp:         NOTRUN -> [SKIP][26] ([i915#3282])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@gem_readwrite@beyond-eob.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-linear:
>     - shard-mtlp:         NOTRUN -> [SKIP][27] ([i915#8428])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@gem_render_copy@y-tiled-to-vebox-linear.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-rkl:          NOTRUN -> [SKIP][28] ([i915#8411]) +1 other test skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-8/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gem_tiled_pread_basic:
>     - shard-rkl:          NOTRUN -> [SKIP][29] ([i915#3282])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-8/igt@gem_tiled_pread_basic.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-mtlp:         NOTRUN -> [SKIP][30] ([i915#3282] / [i915#3297])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gem_userptr_blits@readonly-pwrite-unsync:
>     - shard-tglu-1:       NOTRUN -> [SKIP][31] ([i915#3297])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@gem_userptr_blits@readonly-pwrite-unsync.html
> 
>   * igt@gem_userptr_blits@unsync-overlap:
>     - shard-rkl:          NOTRUN -> [SKIP][32] ([i915#3297])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-2/igt@gem_userptr_blits@unsync-overlap.html
>     - shard-tglu:         NOTRUN -> [SKIP][33] ([i915#3297]) +1 other test skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-5/igt@gem_userptr_blits@unsync-overlap.html
> 
>   * igt@gen3_render_linear_blits:
>     - shard-rkl:          NOTRUN -> [SKIP][34] +7 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-8/igt@gen3_render_linear_blits.html
> 
>   * igt@gen7_exec_parse@basic-allocation:
>     - shard-mtlp:         NOTRUN -> [SKIP][35] +2 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@gen7_exec_parse@basic-allocation.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#2527]) +1 other test skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-8/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-mtlp:         NOTRUN -> [SKIP][37] ([i915#2856])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@gen9_exec_parse@bb-start-cmd:
>     - shard-tglu-1:       NOTRUN -> [SKIP][38] ([i915#2527] / [i915#2856]) +1 other test skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@gen9_exec_parse@bb-start-cmd.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-tglu:         NOTRUN -> [SKIP][39] ([i915#2527] / [i915#2856])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@i915_drm_fdinfo@busy-idle@rcs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][40] ([i915#14073]) +6 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@i915_drm_fdinfo@busy-idle@rcs0.html
> 
>   * igt@i915_module_load@reload-no-display:
>     - shard-tglu-1:       NOTRUN -> [DMESG-WARN][41] ([i915#13029] / [i915#14545])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@i915_module_load@reload-no-display.html
>     - shard-snb:          [PASS][42] -> [DMESG-WARN][43] ([i915#14545])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-snb1/igt@i915_module_load@reload-no-display.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-snb6/igt@i915_module_load@reload-no-display.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg2:          [PASS][44] -> [DMESG-WARN][45] ([i915#13447])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg2-5/igt@i915_module_load@reload-with-fault-injection.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-tglu:         NOTRUN -> [SKIP][46] ([i915#6412])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_freq_api@freq-basic-api:
>     - shard-tglu:         NOTRUN -> [SKIP][47] ([i915#8399])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@i915_pm_freq_api@freq-basic-api.html
> 
>   * igt@i915_pm_freq_api@freq-reset:
>     - shard-tglu-1:       NOTRUN -> [SKIP][48] ([i915#8399])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@i915_pm_freq_api@freq-reset.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-tglu:         NOTRUN -> [WARN][49] ([i915#13790] / [i915#2681]) +1 other test warn
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-tglu-1:       NOTRUN -> [SKIP][50] ([i915#14498])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-tglu-1:       NOTRUN -> [SKIP][51] ([i915#6245])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@i915_query@hwconfig_table.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][52] ([i915#4817])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-glk3/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-tglu:         NOTRUN -> [SKIP][53] ([i915#1769] / [i915#3555])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-glk10:        NOTRUN -> [SKIP][54] ([i915#1769])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-glk10/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:
>     - shard-tglu:         NOTRUN -> [SKIP][55] ([i915#5286]) +2 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-tglu-1:       NOTRUN -> [SKIP][56] ([i915#5286]) +1 other test skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#5286]) +2 other tests skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>     - shard-mtlp:         [PASS][58] -> [FAIL][59] ([i915#5138])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][60] ([i915#6095]) +79 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg1-14/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#12313])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#14544] / [i915#6095]) +20 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#6095]) +74 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-8/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#10307] / [i915#6095]) +124 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg2-11/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-dp-3.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][65] ([i915#12313])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [SKIP][66] +95 other tests skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-glk3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][67] ([i915#6095]) +49 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-5/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][68] ([i915#12796]) +1 other test incomplete
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-glk9/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][69] ([i915#6095]) +9 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-b-edp-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:
>     - shard-tglu-1:       NOTRUN -> [ABORT][70] ([i915#14849] / [i915#14871]) +1 other test abort
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
> 
>   * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-b-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#6095]) +19 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg2-11/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-b-dp-3.html
> 
>   * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#14098] / [i915#14544] / [i915#6095]) +10 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][73] ([i915#12313])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-c-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#14098] / [i915#6095]) +43 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-1:
>     - shard-glk10:        NOTRUN -> [SKIP][75] +126 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-glk10/igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][76] ([i915#6095]) +24 other tests skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#10307] / [i915#10434] / [i915#6095]) +2 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#13781]) +3 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg2-7/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#13783]) +3 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg2-4/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_chamelium_audio@hdmi-audio-edid:
>     - shard-mtlp:         NOTRUN -> [SKIP][80] ([i915#11151] / [i915#7828]) +1 other test skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@kms_chamelium_audio@hdmi-audio-edid.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-read:
>     - shard-tglu-1:       NOTRUN -> [SKIP][81] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@kms_chamelium_edid@hdmi-edid-read.html
> 
>   * igt@kms_chamelium_frames@hdmi-aspect-ratio:
>     - shard-tglu:         NOTRUN -> [SKIP][82] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@kms_chamelium_frames@hdmi-aspect-ratio.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-after-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#11151] / [i915#7828]) +1 other test skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-8/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-tglu-1:       NOTRUN -> [SKIP][84] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@atomic-dpms@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [FAIL][85] ([i915#7173])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg2-11/igt@kms_content_protection@atomic-dpms@pipe-a-dp-3.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#3116])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-8/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-tglu:         NOTRUN -> [SKIP][87] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424]) +2 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-64x21:
>     - shard-mtlp:         NOTRUN -> [SKIP][88] ([i915#8814])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-offscreen-64x21.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][89] ([i915#13566]) +5 other tests fail
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-tglu:         NOTRUN -> [SKIP][90] ([i915#13049])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [FAIL][91] ([i915#13566]) +1 other test fail
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-max-size:
>     - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#3555])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-random-max-size:
>     - shard-tglu-1:       NOTRUN -> [SKIP][93] ([i915#3555]) +1 other test skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
>     - shard-tglu-1:       NOTRUN -> [SKIP][94] ([i915#13049])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x42:
>     - shard-rkl:          [PASS][95] -> [FAIL][96] ([i915#13566])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-128x42.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-128x42.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x32:
>     - shard-mtlp:         NOTRUN -> [SKIP][97] ([i915#3555] / [i915#8814])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-sliding-32x32.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-tglu-1:       NOTRUN -> [SKIP][98] ([i915#4103])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:
>     - shard-mtlp:         NOTRUN -> [SKIP][99] ([i915#9809])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-tglu-1:       NOTRUN -> [SKIP][100] ([i915#9723])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#13691])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-2/igt@kms_display_modes@extended-mode-basic.html
>     - shard-tglu:         NOTRUN -> [SKIP][102] ([i915#13691])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-5/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#3804])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_dp_link_training@non-uhbr-sst:
>     - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#13749])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@kms_dp_link_training@non-uhbr-sst.html
> 
>   * igt@kms_dp_link_training@uhbr-mst:
>     - shard-tglu-1:       NOTRUN -> [SKIP][105] ([i915#13748])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@kms_dp_link_training@uhbr-mst.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-dg2:          [PASS][106] -> [SKIP][107] ([i915#13707])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fallback.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg2-7/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][108] ([i915#3840])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-tglu:         NOTRUN -> [SKIP][109] ([i915#3555] / [i915#3840])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][110] ([i915#9878])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-glk1/igt@kms_fbcon_fbt@fbc-suspend.html
>     - shard-rkl:          [PASS][111] -> [INCOMPLETE][112] ([i915#9878])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-7/igt@kms_fbcon_fbt@fbc-suspend.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-4/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-tglu:         NOTRUN -> [SKIP][113] ([i915#658])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-5/igt@kms_feature_discovery@psr1.html
>     - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#658])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-2/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-tglu-1:       NOTRUN -> [SKIP][115] ([i915#658])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_flip@2x-dpms-vs-vblank-race:
>     - shard-tglu-1:       NOTRUN -> [SKIP][116] ([i915#3637] / [i915#9934]) +2 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@kms_flip@2x-dpms-vs-vblank-race.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
>     - shard-tglu:         NOTRUN -> [SKIP][117] ([i915#3637] / [i915#9934]) +2 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible:
>     - shard-snb:          [PASS][118] -> [TIMEOUT][119] ([i915#14033] / [i915#14350])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:
>     - shard-snb:          [PASS][120] -> [TIMEOUT][121] ([i915#14033])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@2x-plain-flip-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#9934]) +3 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-8/igt@kms_flip@2x-plain-flip-interruptible.html
> 
>   * igt@kms_flip@flip-vs-fences:
>     - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#8381])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@kms_flip@flip-vs-fences.html
> 
>   * igt@kms_flip@modeset-vs-vblank-race:
>     - shard-tglu:         [PASS][124] -> [FAIL][125] ([i915#10826]) +1 other test fail
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-tglu-6/igt@kms_flip@modeset-vs-vblank-race.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-8/igt@kms_flip@modeset-vs-vblank-race.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][126] ([i915#2587] / [i915#2672]) +1 other test skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][127] ([i915#2672] / [i915#3555]) +1 other test skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][128] ([i915#2587] / [i915#2672]) +1 other test skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][129] ([i915#2672] / [i915#8813]) +2 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][130] ([i915#2672] / [i915#3555]) +1 other test skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
>     - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#2672] / [i915#3555] / [i915#8813]) +2 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:
>     - shard-mtlp:         NOTRUN -> [SKIP][132] ([i915#1825]) +5 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:
>     - shard-tglu:         NOTRUN -> [SKIP][133] +41 other tests skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-blt:
>     - shard-dg2:          [PASS][134] -> [FAIL][135] ([i915#6880])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-blt.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#5439])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
>     - shard-tglu:         NOTRUN -> [SKIP][137] ([i915#5439])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw:
>     - shard-tglu-1:       NOTRUN -> [SKIP][138] +27 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#1825]) +15 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][140] ([i915#15102]) +8 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#15102])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:
>     - shard-tglu:         NOTRUN -> [SKIP][142] ([i915#15102]) +15 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#8708]) +2 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>     - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#15102] / [i915#3023]) +6 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - shard-tglu-1:       NOTRUN -> [SKIP][145] ([i915#13030])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-dg2:          [PASS][146] -> [SKIP][147] ([i915#3555] / [i915#8228]) +1 other test skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg2-11/igt@kms_hdr@static-toggle.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg2-5/igt@kms_hdr@static-toggle.html
>     - shard-tglu:         NOTRUN -> [SKIP][148] ([i915#3555] / [i915#8228]) +2 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#3555] / [i915#8228])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-2/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-rkl:          [PASS][150] -> [SKIP][151] ([i915#3555] / [i915#8228]) +2 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_hdr@static-toggle-suspend.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-dg2:          [PASS][152] -> [SKIP][153] ([i915#10656] / [i915#12388])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg2-11/igt@kms_joiner@invalid-modeset-force-big-joiner.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg2-5/igt@kms_joiner@invalid-modeset-force-big-joiner.html
>     - shard-tglu:         NOTRUN -> [SKIP][154] ([i915#10656] / [i915#12388])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-ultra-joiner:
>     - shard-mtlp:         NOTRUN -> [SKIP][155] ([i915#12339])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@kms_joiner@invalid-modeset-ultra-joiner.html
> 
>   * igt@kms_plane_lowres@tiling-4:
>     - shard-mtlp:         NOTRUN -> [SKIP][156] ([i915#10226] / [i915#11614] / [i915#3555] / [i915#8821])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@kms_plane_lowres@tiling-4.html
> 
>   * igt@kms_plane_lowres@tiling-4@pipe-c-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][157] ([i915#11614] / [i915#3582]) +3 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@kms_plane_lowres@tiling-4@pipe-c-edp-1.html
> 
>   * igt@kms_plane_multiple@2x-tiling-y:
>     - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#13958])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-y.html
>     - shard-tglu:         NOTRUN -> [SKIP][159] ([i915#13958]) +1 other test skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-5/igt@kms_plane_multiple@2x-tiling-y.html
> 
>   * igt@kms_plane_multiple@2x-tiling-yf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][160] ([i915#13958])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-tglu-1:       NOTRUN -> [SKIP][161] ([i915#6953])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
>     - shard-tglu-1:       NOTRUN -> [SKIP][162] ([i915#12247]) +9 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-tglu:         NOTRUN -> [SKIP][163] ([i915#9685])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-mtlp:         NOTRUN -> [SKIP][164] ([i915#3828])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@kms_pm_dc@dc5-retention-flops.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][165] ([i915#4281])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-rkl:          [PASS][166] -> [SKIP][167] ([i915#15073]) +2 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-8/igt@kms_pm_rpm@dpms-lpsp.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-1/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-tglu:         NOTRUN -> [SKIP][168] ([i915#15073])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][169] ([i915#11520]) +3 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-glk1/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:
>     - shard-glk10:        NOTRUN -> [SKIP][170] ([i915#11520]) +3 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-glk10/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-sf:
>     - shard-snb:          NOTRUN -> [SKIP][171] ([i915#11520])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-snb7/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#11520]) +2 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-2/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@pr-cursor-plane-update-sf:
>     - shard-mtlp:         NOTRUN -> [SKIP][173] ([i915#12316]) +1 other test skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@kms_psr2_sf@pr-cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][174] ([i915#11520]) +3 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:
>     - shard-tglu:         NOTRUN -> [SKIP][175] ([i915#11520]) +6 other tests skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#9683])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-8/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@fbc-pr-sprite-plane-onoff:
>     - shard-tglu:         NOTRUN -> [SKIP][177] ([i915#9732]) +14 other tests skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-5/igt@kms_psr@fbc-pr-sprite-plane-onoff.html
> 
>   * igt@kms_psr@fbc-psr-primary-page-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#1072] / [i915#9732]) +5 other tests skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-8/igt@kms_psr@fbc-psr-primary-page-flip.html
> 
>   * igt@kms_psr@fbc-psr2-suspend@edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][179] ([i915#9688]) +3 other tests skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@kms_psr@fbc-psr2-suspend@edp-1.html
> 
>   * igt@kms_psr@psr-cursor-plane-move:
>     - shard-tglu-1:       NOTRUN -> [SKIP][180] ([i915#9732]) +9 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@kms_psr@psr-cursor-plane-move.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-tglu-1:       NOTRUN -> [SKIP][181] ([i915#9685])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-mtlp:         NOTRUN -> [SKIP][182] ([i915#5289])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-tglu:         NOTRUN -> [SKIP][183] ([i915#5289])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-270:
>     - shard-mtlp:         NOTRUN -> [SKIP][184] ([i915#12755])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@kms_rotation_crc@sprite-rotation-270.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - shard-tglu:         NOTRUN -> [SKIP][185] ([i915#3555]) +3 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@kms_sharpness_filter@filter-rotations:
>     - shard-tglu-1:       NOTRUN -> [SKIP][186] ([i915#15232])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@kms_sharpness_filter@filter-rotations.html
> 
>   * igt@kms_sharpness_filter@filter-strength:
>     - shard-tglu:         NOTRUN -> [SKIP][187] ([i915#15232]) +2 other tests skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@kms_sharpness_filter@filter-strength.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#8623])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-8/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-dg2:          [PASS][189] -> [SKIP][190] ([i915#3555] / [i915#9906])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg2-11/igt@kms_vrr@negative-basic.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg2-6/igt@kms_vrr@negative-basic.html
>     - shard-tglu:         NOTRUN -> [SKIP][191] ([i915#3555] / [i915#9906])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-5/igt@kms_vrr@negative-basic.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-tglu:         NOTRUN -> [SKIP][192] ([i915#9906])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-tglu:         NOTRUN -> [SKIP][193] ([i915#2437])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-2/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-mtlp:         NOTRUN -> [SKIP][194] ([i915#2437] / [i915#9412])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@unprivileged-single-ctx-counters:
>     - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#2433])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-2/igt@perf@unprivileged-single-ctx-counters.html
> 
>   * igt@prime_vgem@basic-read:
>     - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#3291] / [i915#3708])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-8/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-mtlp:         NOTRUN -> [SKIP][197] ([i915#3708])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on:
>     - shard-mtlp:         NOTRUN -> [FAIL][198] ([i915#12910]) +9 other tests fail
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@sriov_basic@enable-vfs-autoprobe-on.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
>     - shard-tglu-1:       NOTRUN -> [FAIL][199] ([i915#12910])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
> 
>   * igt@sysfs_heartbeat_interval@precise:
>     - shard-snb:          NOTRUN -> [SKIP][200] +19 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-snb7/igt@sysfs_heartbeat_interval@precise.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-dg2:          [INCOMPLETE][201] ([i915#13356]) -> [PASS][202]
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg2-7/igt@gem_ccs@suspend-resume.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg2-8/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          [INCOMPLETE][203] ([i915#12392] / [i915#13356]) -> [PASS][204]
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg2-7/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg2-8/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_mmap_offset@clear-via-pagefault:
>     - shard-mtlp:         [ABORT][205] ([i915#14809]) -> [PASS][206] +1 other test pass
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-mtlp-8/igt@gem_mmap_offset@clear-via-pagefault.html
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-3/igt@gem_mmap_offset@clear-via-pagefault.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-rkl:          [INCOMPLETE][207] ([i915#13809]) -> [PASS][208]
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-3/igt@gem_softpin@noreloc-s3.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-2/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@i915_module_load@reload-no-display:
>     - shard-dg2:          [DMESG-WARN][209] ([i915#13029] / [i915#14545]) -> [PASS][210]
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg2-4/igt@i915_module_load@reload-no-display.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg2-8/igt@i915_module_load@reload-no-display.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-rkl:          [INCOMPLETE][211] ([i915#4817]) -> [PASS][212]
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-4/igt@i915_suspend@fence-restore-untiled.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-8/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>     - shard-tglu:         [FAIL][213] ([i915#14857]) -> [PASS][214] +1 other test pass
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-tglu-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
> 
>   * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind:
>     - shard-dg1:          [DMESG-WARN][215] ([i915#4423]) -> [PASS][216] +2 other tests pass
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg1-19/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg1-15/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-mtlp:         [FAIL][217] ([i915#5138]) -> [PASS][218]
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1:
>     - shard-tglu:         [FAIL][219] ([i915#13566]) -> [PASS][220] +1 other test pass
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-tglu-10/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-5/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
>     - shard-dg2:          [SKIP][221] ([i915#3555]) -> [PASS][222]
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-dg2:          [SKIP][223] ([i915#1257]) -> [PASS][224]
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg2-6/igt@kms_dp_aux_dev.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg2-11/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1:
>     - shard-tglu:         [FAIL][225] ([i915#14600]) -> [PASS][226] +1 other test pass
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-tglu-6/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-8/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-dg2:          [SKIP][227] ([i915#3555] / [i915#8228]) -> [PASS][228]
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg2-5/igt@kms_hdr@invalid-metadata-sizes.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg2-11/igt@kms_hdr@invalid-metadata-sizes.html
>     - shard-rkl:          [SKIP][229] ([i915#3555] / [i915#8228]) -> [PASS][230]
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_hdr@invalid-metadata-sizes.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-dg2:          [SKIP][231] ([i915#12388]) -> [PASS][232]
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg2-6/igt@kms_joiner@basic-force-big-joiner.html
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg2-11/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-dg2:          [SKIP][233] ([i915#9340]) -> [PASS][234]
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg2-6/igt@kms_pm_lpsp@kms-lpsp.html
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg2-4/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-dg2:          [SKIP][235] ([i915#15073]) -> [PASS][236]
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg2-4/igt@kms_pm_rpm@dpms-non-lpsp.html
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg2-8/igt@kms_pm_rpm@dpms-non-lpsp.html
>     - shard-rkl:          [SKIP][237] ([i915#15073]) -> [PASS][238]
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-8/igt@kms_pm_rpm@dpms-non-lpsp.html
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-4/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_bad_reloc@negative-reloc-lut:
>     - shard-rkl:          [SKIP][239] ([i915#3281]) -> [SKIP][240] ([i915#14544] / [i915#3281]) +4 other tests skip
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@gem_bad_reloc@negative-reloc-lut.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-rkl:          [SKIP][241] ([i915#9323]) -> [SKIP][242] ([i915#14544] / [i915#9323])
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@gem_ccs@block-multicopy-compressed.html
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-rkl:          [SKIP][243] ([i915#3555] / [i915#9323]) -> [SKIP][244] ([i915#14544] / [i915#3555] / [i915#9323])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@gem_ccs@block-multicopy-inplace.html
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_ccs@ctrl-surf-copy-new-ctx:
>     - shard-rkl:          [SKIP][245] ([i915#14544] / [i915#9323]) -> [SKIP][246] ([i915#9323])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-rkl:          [SKIP][247] ([i915#8562]) -> [SKIP][248] ([i915#14544] / [i915#8562])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@gem_create@create-ext-set-pat.html
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-rkl:          [SKIP][249] ([i915#14544] / [i915#280]) -> [SKIP][250] ([i915#280])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@gem_ctx_sseu@invalid-sseu.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_exec_reloc@basic-write-read:
>     - shard-rkl:          [SKIP][251] ([i915#14544] / [i915#3281]) -> [SKIP][252] ([i915#3281]) +5 other tests skip
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@gem_exec_reloc@basic-write-read.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@gem_exec_reloc@basic-write-read.html
> 
>   * igt@gem_lmem_evict@dontneed-evict-race:
>     - shard-rkl:          [SKIP][253] ([i915#4613] / [i915#7582]) -> [SKIP][254] ([i915#14544] / [i915#4613] / [i915#7582])
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@gem_lmem_evict@dontneed-evict-race.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@gem_lmem_evict@dontneed-evict-race.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
>     - shard-rkl:          [SKIP][255] ([i915#14544] / [i915#4613]) -> [SKIP][256] ([i915#4613]) +1 other test skip
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-rkl:          [SKIP][257] ([i915#4613]) -> [SKIP][258] ([i915#14544] / [i915#4613]) +3 other tests skip
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@gem_lmem_swapping@parallel-random-verify.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_partial_pwrite_pread@reads-uncached:
>     - shard-rkl:          [SKIP][259] ([i915#14544] / [i915#3282]) -> [SKIP][260] ([i915#3282]) +3 other tests skip
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@gem_partial_pwrite_pread@reads-uncached.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@gem_partial_pwrite_pread@reads-uncached.html
> 
>   * igt@gem_pread@snoop:
>     - shard-rkl:          [SKIP][261] ([i915#3282]) -> [SKIP][262] ([i915#14544] / [i915#3282]) +4 other tests skip
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@gem_pread@snoop.html
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@gem_pread@snoop.html
> 
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-rkl:          [SKIP][263] ([i915#14544] / [i915#8411]) -> [SKIP][264] ([i915#8411])
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
> 
>   * igt@gem_softpin@evict-snoop:
>     - shard-rkl:          [SKIP][265] ([i915#14544]) -> [SKIP][266] +11 other tests skip
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@gem_softpin@evict-snoop.html
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@gem_softpin@evict-snoop.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-rkl:          [SKIP][267] ([i915#3297]) -> [SKIP][268] ([i915#14544] / [i915#3297])
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@gem_userptr_blits@create-destroy-unsync.html
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-rkl:          [SKIP][269] ([i915#14544] / [i915#3297]) -> [SKIP][270] ([i915#3297]) +2 other tests skip
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@gem_userptr_blits@dmabuf-unsync.html
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@relocations:
>     - shard-rkl:          [SKIP][271] ([i915#3281] / [i915#3297]) -> [SKIP][272] ([i915#14544] / [i915#3281] / [i915#3297])
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@gem_userptr_blits@relocations.html
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@gem_userptr_blits@relocations.html
> 
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - shard-rkl:          [SKIP][273] ([i915#14544] / [i915#2527]) -> [SKIP][274] ([i915#2527])
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@gen9_exec_parse@batch-invalid-length.html
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@gen9_exec_parse@batch-invalid-length.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-rkl:          [SKIP][275] ([i915#2527]) -> [SKIP][276] ([i915#14544] / [i915#2527]) +1 other test skip
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@gen9_exec_parse@secure-batches.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@i915_power@sanity:
>     - shard-rkl:          [SKIP][277] ([i915#14544] / [i915#7984]) -> [SKIP][278] ([i915#7984])
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@i915_power@sanity.html
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@i915_power@sanity.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-rkl:          [SKIP][279] ([i915#14544] / [i915#5723]) -> [SKIP][280] ([i915#5723])
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-rkl:          [SKIP][281] ([i915#5286]) -> [SKIP][282] ([i915#14544] / [i915#5286]) +5 other tests skip
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-rkl:          [SKIP][283] ([i915#14544] / [i915#5286]) -> [SKIP][284] ([i915#5286]) +2 other tests skip
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-rkl:          [SKIP][285] ([i915#14544] / [i915#3638]) -> [SKIP][286] ([i915#3638]) +2 other tests skip
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>     - shard-rkl:          [SKIP][287] ([i915#3638]) -> [SKIP][288] ([i915#14544] / [i915#3638]) +3 other tests skip
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          [SKIP][289] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][290] ([i915#14098] / [i915#6095]) +17 other tests skip
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2.html
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
>     - shard-rkl:          [SKIP][291] ([i915#12313] / [i915#14544]) -> [SKIP][292] ([i915#12313])
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
>     - shard-rkl:          [SKIP][293] ([i915#14098] / [i915#6095]) -> [SKIP][294] ([i915#14098] / [i915#14544] / [i915#6095]) +10 other tests skip
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
>     - shard-rkl:          [SKIP][295] ([i915#12313]) -> [SKIP][296] ([i915#12313] / [i915#14544])
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
>     - shard-dg1:          [SKIP][297] ([i915#12313] / [i915#4423]) -> [SKIP][298] ([i915#12313])
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg1-16/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg1-16/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][299] ([i915#14544] / [i915#6095]) -> [SKIP][300] ([i915#6095]) +17 other tests skip
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-rkl:          [SKIP][301] ([i915#3742]) -> [SKIP][302] ([i915#14544] / [i915#3742])
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_cdclk@mode-transition.html
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-multiple:
>     - shard-rkl:          [SKIP][303] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][304] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_chamelium_frames@hdmi-crc-multiple.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_chamelium_frames@hdmi-crc-multiple.html
> 
>   * igt@kms_chamelium_hpd@common-hpd-after-suspend:
>     - shard-rkl:          [SKIP][305] ([i915#11151] / [i915#7828]) -> [SKIP][306] ([i915#11151] / [i915#14544] / [i915#7828]) +6 other tests skip
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-dg2:          [SKIP][307] ([i915#7118] / [i915#9424]) -> [FAIL][308] ([i915#7173])
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg2-1/igt@kms_content_protection@atomic-dpms.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-rkl:          [SKIP][309] ([i915#3116]) -> [SKIP][310] ([i915#14544] / [i915#3116])
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-0.html
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-rkl:          [SKIP][311] ([i915#14544] / [i915#3116]) -> [SKIP][312] ([i915#3116])
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-dg2:          [FAIL][313] ([i915#7173]) -> [SKIP][314] ([i915#7118] / [i915#9424])
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg2-11/igt@kms_content_protection@legacy.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg2-5/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-rkl:          [SKIP][315] ([i915#9424]) -> [SKIP][316] ([i915#14544] / [i915#9424])
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_content_protection@lic-type-1.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg1:          [SKIP][317] ([i915#9424]) -> [SKIP][318] ([i915#9433])
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg1-17/igt@kms_content_protection@mei-interface.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg1-12/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-dg2:          [FAIL][319] ([i915#1339] / [i915#7173]) -> [SKIP][320] ([i915#7118] / [i915#9424])
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg2-11/igt@kms_content_protection@uevent.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg2-5/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x32:
>     - shard-rkl:          [SKIP][321] ([i915#14544] / [i915#3555]) -> [SKIP][322] ([i915#3555])
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-32x32.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_cursor_crc@cursor-offscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-rkl:          [SKIP][323] ([i915#13049] / [i915#14544]) -> [SKIP][324] ([i915#13049])
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x170.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-rkl:          [SKIP][325] ([i915#3555]) -> [SKIP][326] ([i915#14544] / [i915#3555]) +4 other tests skip
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-dg1:          [SKIP][327] ([i915#13049]) -> [SKIP][328] ([i915#13049] / [i915#4423])
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg1-18/igt@kms_cursor_crc@cursor-sliding-512x170.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg1-17/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>     - shard-rkl:          [SKIP][329] -> [SKIP][330] ([i915#14544]) +17 other tests skip
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-rkl:          [SKIP][331] ([i915#14544] / [i915#9067]) -> [SKIP][332] ([i915#9067])
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-rkl:          [SKIP][333] ([i915#1257] / [i915#14544]) -> [SKIP][334] ([i915#1257])
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_dp_aux_dev.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_dp_linktrain_fallback@dsc-fallback:
>     - shard-rkl:          [SKIP][335] ([i915#13707]) -> [SKIP][336] ([i915#13707] / [i915#14544]) +1 other test skip
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_dp_linktrain_fallback@dsc-fallback.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_dp_linktrain_fallback@dsc-fallback.html
>     - shard-dg1:          [SKIP][337] ([i915#13707] / [i915#4423]) -> [SKIP][338] ([i915#13707])
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg1-18/igt@kms_dp_linktrain_fallback@dsc-fallback.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg1-18/igt@kms_dp_linktrain_fallback@dsc-fallback.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-rkl:          [SKIP][339] ([i915#14544] / [i915#3840]) -> [SKIP][340] ([i915#3840])
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          [SKIP][341] ([i915#3955]) -> [SKIP][342] ([i915#14544] / [i915#3955])
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@display-2x:
>     - shard-rkl:          [SKIP][343] ([i915#1839]) -> [SKIP][344] ([i915#14544] / [i915#1839])
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_feature_discovery@display-2x.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_feature_discovery@display-2x.html
> 
>   * igt@kms_flip@2x-absolute-wf_vblank-interruptible:
>     - shard-rkl:          [SKIP][345] ([i915#14544] / [i915#9934]) -> [SKIP][346] ([i915#9934]) +5 other tests skip
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend:
>     - shard-glk:          [INCOMPLETE][347] ([i915#12745] / [i915#4839] / [i915#6113]) -> [INCOMPLETE][348] ([i915#12745] / [i915#4839])
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-glk1/igt@kms_flip@2x-flip-vs-suspend.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-glk6/igt@kms_flip@2x-flip-vs-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [INCOMPLETE][349] ([i915#4839] / [i915#6113]) -> [INCOMPLETE][350] ([i915#4839])
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-glk1/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-glk6/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-rkl:          [SKIP][351] ([i915#9934]) -> [SKIP][352] ([i915#14544] / [i915#9934]) +7 other tests skip
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_flip@2x-plain-flip.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-rkl:          [SKIP][353] ([i915#14544] / [i915#2672] / [i915#3555]) -> [SKIP][354] ([i915#2672] / [i915#3555]) +3 other tests skip
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          [SKIP][355] ([i915#14544] / [i915#2672]) -> [SKIP][356] ([i915#2672]) +3 other tests skip
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
>     - shard-rkl:          [SKIP][357] ([i915#2672] / [i915#3555]) -> [SKIP][358] ([i915#14544] / [i915#2672] / [i915#3555])
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          [SKIP][359] ([i915#2672]) -> [SKIP][360] ([i915#14544] / [i915#2672])
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render:
>     - shard-dg1:          [SKIP][361] ([i915#15102] / [i915#4423]) -> [SKIP][362] ([i915#15102])
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render.html
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
>     - shard-rkl:          [SKIP][363] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][364] ([i915#15102] / [i915#3023]) +9 other tests skip
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
>     - shard-rkl:          [SKIP][365] ([i915#15102] / [i915#3023]) -> [SKIP][366] ([i915#14544] / [i915#15102] / [i915#3023]) +14 other tests skip
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt:
>     - shard-dg1:          [SKIP][367] -> [SKIP][368] ([i915#4423])
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt.html
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-blt:
>     - shard-dg1:          [SKIP][369] ([i915#4423]) -> [SKIP][370]
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-blt.html
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt:
>     - shard-rkl:          [SKIP][371] ([i915#1825]) -> [SKIP][372] ([i915#14544] / [i915#1825]) +24 other tests skip
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt.html
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:
>     - shard-dg2:          [SKIP][373] ([i915#15102] / [i915#3458]) -> [SKIP][374] ([i915#10433] / [i915#15102] / [i915#3458]) +1 other test skip
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt:
>     - shard-rkl:          [SKIP][375] ([i915#14544] / [i915#15102]) -> [SKIP][376] ([i915#15102]) +3 other tests skip
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt.html
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][377] ([i915#15102]) -> [SKIP][378] ([i915#14544] / [i915#15102]) +1 other test skip
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>     - shard-dg2:          [SKIP][379] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][380] ([i915#15102] / [i915#3458]) +1 other test skip
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:
>     - shard-rkl:          [SKIP][381] ([i915#14544] / [i915#1825]) -> [SKIP][382] ([i915#1825]) +22 other tests skip
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-tglu:         [SKIP][383] ([i915#1187] / [i915#12713]) -> [SKIP][384] ([i915#12713])
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-tglu-8/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-rkl:          [SKIP][385] ([i915#12388] / [i915#14544]) -> [SKIP][386] ([i915#12388])
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_joiner@basic-force-big-joiner.html
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-big-joiner:
>     - shard-rkl:          [SKIP][387] ([i915#10656] / [i915#14544]) -> [SKIP][388] ([i915#10656])
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_joiner@invalid-modeset-big-joiner.html
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_joiner@invalid-modeset-big-joiner.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-rkl:          [SKIP][389] ([i915#6301]) -> [SKIP][390] ([i915#14544] / [i915#6301])
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_plane_multiple@2x-tiling-none:
>     - shard-rkl:          [SKIP][391] ([i915#13958]) -> [SKIP][392] ([i915#13958] / [i915#14544])
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_plane_multiple@2x-tiling-none.html
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-none.html
> 
>   * igt@kms_plane_multiple@tiling-4:
>     - shard-rkl:          [SKIP][393] ([i915#14259]) -> [SKIP][394] ([i915#14259] / [i915#14544])
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_plane_multiple@tiling-4.html
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_plane_multiple@tiling-4.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-rkl:          [SKIP][395] ([i915#14259] / [i915#14544]) -> [SKIP][396] ([i915#14259])
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:
>     - shard-rkl:          [SKIP][397] ([i915#12247] / [i915#14544]) -> [SKIP][398] ([i915#12247]) +3 other tests skip
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html
> 
>   * igt@kms_pm_backlight@brightness-with-dpms:
>     - shard-rkl:          [SKIP][399] ([i915#12343]) -> [SKIP][400] ([i915#12343] / [i915#14544])
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_pm_backlight@brightness-with-dpms.html
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_pm_backlight@brightness-with-dpms.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-rkl:          [SKIP][401] ([i915#14544] / [i915#5354]) -> [SKIP][402] ([i915#5354])
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_pm_backlight@fade-with-dpms.html
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_pm_dc@dc5-psr:
>     - shard-rkl:          [SKIP][403] ([i915#9685]) -> [SKIP][404] ([i915#14544] / [i915#9685]) +1 other test skip
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_pm_dc@dc5-psr.html
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_pm_dc@dc5-psr.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-rkl:          [SKIP][405] ([i915#14544] / [i915#15073]) -> [SKIP][406] ([i915#15073]) +1 other test skip
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
>     - shard-rkl:          [SKIP][407] ([i915#11520]) -> [SKIP][408] ([i915#11520] / [i915#14544]) +5 other tests skip
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
>     - shard-rkl:          [SKIP][409] ([i915#11520] / [i915#14544]) -> [SKIP][410] ([i915#11520]) +4 other tests skip
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-rkl:          [SKIP][411] ([i915#9683]) -> [SKIP][412] ([i915#14544] / [i915#9683])
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@pr-cursor-render:
>     - shard-rkl:          [SKIP][413] ([i915#1072] / [i915#9732]) -> [SKIP][414] ([i915#1072] / [i915#14544] / [i915#9732]) +13 other tests skip
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_psr@pr-cursor-render.html
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_psr@pr-cursor-render.html
> 
>   * igt@kms_psr@psr2-cursor-plane-move:
>     - shard-rkl:          [SKIP][415] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][416] ([i915#1072] / [i915#9732]) +10 other tests skip
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_psr@psr2-cursor-plane-move.html
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_psr@psr2-cursor-plane-move.html
> 
>   * igt@kms_psr@psr2-no-drrs:
>     - shard-dg1:          [SKIP][417] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][418] ([i915#1072] / [i915#9732])
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-dg1-16/igt@kms_psr@psr2-no-drrs.html
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-dg1-16/igt@kms_psr@psr2-no-drrs.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>     - shard-rkl:          [SKIP][419] ([i915#5289]) -> [SKIP][420] ([i915#14544] / [i915#5289])
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
> 
>   * igt@kms_sharpness_filter@filter-formats:
>     - shard-rkl:          [SKIP][421] ([i915#15232]) -> [SKIP][422] ([i915#14544] / [i915#15232]) +1 other test skip
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_sharpness_filter@filter-formats.html
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_sharpness_filter@filter-formats.html
> 
>   * igt@kms_sharpness_filter@invalid-filter-with-scaler:
>     - shard-rkl:          [SKIP][423] ([i915#14544] / [i915#15232]) -> [SKIP][424] ([i915#15232]) +2 other tests skip
>    [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@kms_sharpness_filter@invalid-filter-with-scaler.html
>    [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@kms_sharpness_filter@invalid-filter-with-scaler.html
> 
>   * igt@kms_vrr@flip-suspend:
>     - shard-rkl:          [SKIP][425] ([i915#15243] / [i915#3555]) -> [SKIP][426] ([i915#14544] / [i915#15243] / [i915#3555])
>    [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_vrr@flip-suspend.html
>    [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_vrr@flip-suspend.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-rkl:          [SKIP][427] ([i915#2437] / [i915#9412]) -> [SKIP][428] ([i915#14544] / [i915#2437] / [i915#9412])
>    [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
>    [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-rkl:          [SKIP][429] ([i915#2437]) -> [SKIP][430] ([i915#14544] / [i915#2437])
>    [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@kms_writeback@writeback-invalid-parameters.html
>    [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - shard-rkl:          [SKIP][431] ([i915#3291] / [i915#3708]) -> [SKIP][432] ([i915#14544] / [i915#3291] / [i915#3708])
>    [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@prime_vgem@basic-fence-read.html
>    [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-rkl:          [SKIP][433] ([i915#3708]) -> [SKIP][434] ([i915#14544] / [i915#3708])
>    [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@prime_vgem@coherency-gtt.html
>    [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-rkl:          [SKIP][435] ([i915#9917]) -> [SKIP][436] ([i915#14544] / [i915#9917])
>    [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-5/igt@sriov_basic@enable-vfs-autoprobe-off.html
>    [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-off.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each:
>     - shard-rkl:          [SKIP][437] ([i915#14544] / [i915#9917]) -> [SKIP][438] ([i915#9917])
>    [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17576/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each.html
>    [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/shard-rkl-3/igt@sriov_basic@enable-vfs-bind-unbind-each.html
> 
>   
>   [i915#10226]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10226
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11614]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11614
>   [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
>   [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
>   [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
>   [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
>   [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12796]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
>   [i915#13029]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029
>   [i915#13030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13030
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#1339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339
>   [i915#13398]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
>   [i915#13447]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13447
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
>   [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
>   [i915#13790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790
>   [i915#13809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13809
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
>   [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
>   [i915#14350]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14350
>   [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
>   [i915#14600]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600
>   [i915#14809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14809
>   [i915#14849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14849
>   [i915#14857]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14857
>   [i915#14871]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14871
>   [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
>   [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
>   [i915#15232]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15232
>   [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
>   [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3582
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
>   [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>   [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
>   [i915#9878]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_17576 -> Patchwork_157863v1
> 
>   CI-20190529: 20190529
>   CI_DRM_17576: 3d718db04a365cc44a3bc81ffa4db7bbd2e645d7 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8636: 254cd102396ff95d61f2ebe49fc09128878bf483 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_157863v1: 3d718db04a365cc44a3bc81ffa4db7bbd2e645d7 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157863v1/index.html
