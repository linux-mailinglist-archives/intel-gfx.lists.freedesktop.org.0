Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 952BC9C1141
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 22:48:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A6BE10E1E3;
	Thu,  7 Nov 2024 21:48:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dl7pIGww";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9C7D10E1E3
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 21:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731016119; x=1762552119;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/i3yxKpe9YMEcYsXhZSps6gOOJ7gj5aBvzkBUoqV3j8=;
 b=dl7pIGwwOeBSp3rEfWsW4ArvqVQB+2IHU4HMPIM2Ez1OLnlHJmVhbcCE
 OtBEtN+s3/kcblyqKhqhLAj9uCuPt1iW/WxDTNNqIhfkgC86rrwHHs1Pt
 4gu5Rg8DWGnVapwg8YRbpG4C8XvflE2wzEu8bK6tmHISX4r8HFf4xxqeo
 dt+oG0vqhr0ZO14JtAjbhmME1RhDji2tmrkDQTC2zOAjnJ/RMzMM+mHWF
 3lMRTNHTSJXJhgxJ+37R9uFZNcEBaMvhURUIwkwDoqHWh1xnU886GHaMy
 NFuzrNMmAQbnMjbcxTCgwjhjGG3uJdvEEi9+/t3LuKK+tfeTA8ZbEjoTt w==;
X-CSE-ConnectionGUID: 56DSvKzAQn2KoCj/EFep4Q==
X-CSE-MsgGUID: nTA07DEWSUW9UgrwYbz0DQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="42287209"
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="42287209"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:48:39 -0800
X-CSE-ConnectionGUID: H8c8d3LwTDyOcZ8sUKpz/Q==
X-CSE-MsgGUID: +pmODl4AQ3CHe/MNW792cQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="90113023"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Nov 2024 13:48:39 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 7 Nov 2024 13:48:39 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 7 Nov 2024 13:48:39 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 7 Nov 2024 13:48:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OlwRPqI1VVpje1qYxEfeFj/9DqA2BURWTHqWWmbMdxiu20/B+yuMGOCRjSp/+Flcl+/4lq7H/4py79spyD/YJhfnG9tg4e2eckWAShnmr5Ny9QhudYImvBU6zs1dVh8SmwFZML+b21bak45W7Y9nlVJ9ke8dnsRqYumN30ENp60KtWMKFycD81i9dcMbikfvK2Ebdlg5xNO065W7USwXgiS+WsfmancpmGyYH7fi+/h/Hq/w8jkSSfOFmkLeBTE0CCr20KjovFFmuXpzBfVE6BMQ3l5n3JuRjjkdpfrq1lp+qNEtZ4WVcvhn3byM0rrPtHrBdeciUvUdlu3ov7AZRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bKhigc0ltczNcHyzA4+I0mPiuPhODmGlk+MKw8wm6xk=;
 b=C+aA5nMMtwmFeLX7UYHBboB2N6V7MBkVn2xHA6xqzJUs+1O+FKxCQwwiP+7qwouSI2VqZheX4p/OmRsoWOPStUqw0QLfizlkz0m4g1HCJ41bm6shio2WJRK5Ytgv/G/7LwESIpOnExrHYx2xEBECI5pdpPPdIJ9cPheIp8eotZcHLzlQvpKVvuxkl1h16qsLN0oEZd+OvhtC0arFgh7mLd84jneqFZJcjah+jJ5vC3awTPN9OEmh92ZAqvZBnpc6siUKjTWT0Tc5+X85sjhAeDgx9pmXg4OTUv1piPMkDd9zP+jEwMRaQM3nCb/ItRM3mgn1kd8p979tQ40Wvp892Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH0PR11MB5047.namprd11.prod.outlook.com (2603:10b6:510:3c::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.19; Thu, 7 Nov
 2024 21:48:33 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%7]) with mapi id 15.20.8137.019; Thu, 7 Nov 2024
 21:48:33 +0000
Date: Thu, 7 Nov 2024 13:48:30 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?= =?utf-8?Q?e_fo?=
 =?utf-8?Q?r?= drm/i915/hdcp: Handle HDCP Line Rekeying for HDCP 1.4 (rev4)
Message-ID: <20241107214830.GT4891@mdroper-desk1.amr.corp.intel.com>
References: <20241107022807.869744-1-suraj.kandpal@intel.com>
 <173095490255.1420108.9130778719193460274@2413ebb6fbb6>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <173095490255.1420108.9130778719193460274@2413ebb6fbb6>
X-ClientProxiedBy: SJ0PR03CA0379.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::24) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH0PR11MB5047:EE_
X-MS-Office365-Filtering-Correlation-Id: ccf44420-2f98-4ebb-ea66-08dcff75ecc1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?8gtJsXs3sAcMSgqFb29j/HBXglwBuEjMAZOUowbgbn5hhPa699KSgCVozM5g?=
 =?us-ascii?Q?HodRa3pIIvL+5dj6s+gMcKqKvTH+Unk0TKnOumNG/h1sTEFe5D5xOMNZe+4H?=
 =?us-ascii?Q?KrSpgYEhVeTa6aRg5sB3B9E5cGsulOOmtmPzhiYJJO3LT72TIL//VlaPZJds?=
 =?us-ascii?Q?4TGg0PqNAPX9wdHfZdmAcC0lcmtTOkkKs3sGHhPk8y6Qpg0nSL+Fs+MiLuX1?=
 =?us-ascii?Q?Bq2w+EitdRXy7lNsv5dleq6J25xoEoqKMaKa4B6gtMnowqmGHY2GtWOY+ZzB?=
 =?us-ascii?Q?74CyjTWSUBzvOypb3uTMX5FuxaucqLHDsM9+cLtyZRHavXt28p5JyvMSmP7i?=
 =?us-ascii?Q?v+R3v5akk+o4fJZN76HLaIGIJlb6JVZVTlDPwafXsnyB0ayT+/v8kw/mpxHS?=
 =?us-ascii?Q?An6SZa3VPh/ecW4yOINH3/KxO8n3pAsiqgQOVV+L64btK1maZeSIBcz27lLr?=
 =?us-ascii?Q?yCwDRs42VsMu9hkowpSBrWmUCnZKeVsR7SIvw8ov3zFhp9nE5Aj0XNrQxprQ?=
 =?us-ascii?Q?z1nP/D0aXB49jdKM6KbXVpW8Le0YBDbTgxlZ1hI8ZpiltLbUhZx+MmxFlo8e?=
 =?us-ascii?Q?FR6G05xqdClXfpE3D2NfdsrgW9DoUmYevSP8wnhmyVJGmJ+69G/QwFYDI1M3?=
 =?us-ascii?Q?vj6KPJvuTFXbM57k3xX6rexmgy9M+mBsk+OB9Xp2Qt9RuuZXMfSnKKfDhVaq?=
 =?us-ascii?Q?C/XuS+yx08VAK3FoXSQNCecUi96GW/s33T8Eq6ntUCCYqRZ381kRz0Dg7gDO?=
 =?us-ascii?Q?kuqCT0+4ZTIiNFaC/pvHxwLVEmbkZOV4z62+lpaFNcTiN9P8DvjJKMQAlnIC?=
 =?us-ascii?Q?gBjmreIXWGKPYDTaRnwxjoIk4QpanuNtgmhZmWumVQvjGPS1nXU5FRL8EUUM?=
 =?us-ascii?Q?VY7ucXYEdjoGWmmAPzrJvA43g6EYZ0gXpTdtHR5GKzL+DXMT7WL7b/VgHMs8?=
 =?us-ascii?Q?q0IFJUNScF0kYbqnLy9AsBfLtgMcPLu3XvoX0Z7HKGeqV0HyVCFu7EErzOj1?=
 =?us-ascii?Q?k8tqHnTWt5AP8g1jqKdbrdeW65zOZXcHNnLZrOpOxtn2HPCSwfGl9iEYmgoI?=
 =?us-ascii?Q?4xPuu8jNaAzDF1vPejWTdReXCRmUBuy3jOkNSYwhiWqWxeZtYUJWyPuq6g33?=
 =?us-ascii?Q?sz3Kq9rZwWyFdcYwvC0QsFVhAL87AxtD5Xw9Mn98dYe+/AVBIdzFcu1Fo70X?=
 =?us-ascii?Q?ycUsu9DuIDczyEepcNB1bokTSDzu/dsX1aXrR2jJ4AxPxFC9o3If3JBX/E+O?=
 =?us-ascii?Q?v810WiuHl/zOaKVCvdu/Gs13+KwmtPPn2MWWl8GVHw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WPKPXsy40qx0edHTDiy0i5vZ0XgpU4s1dhIYtC/AmSQZS0PHlmsNofeOqXRy?=
 =?us-ascii?Q?2hSARRE+u2GoyJ/4H8LEmE0KgHKyZ2iFNKpF/QsGpCzzY1W47uEyqQxv6IcC?=
 =?us-ascii?Q?54MqwHArlfy3ugYb3CrJ/8aIp0pcL1mXJcxxZieV9GOcOiUBF+tbRJl805GR?=
 =?us-ascii?Q?4zNPauZZVcMdBMKAM+ecIm2S9uVbXIewcl/ewt96rQ1mMDN2EPuuMU0mkjZr?=
 =?us-ascii?Q?QX8tDOTmbVC/710awxpI69DU8pnFTapL8o5tb5b+X6gaCswmK0va/oEqVe/v?=
 =?us-ascii?Q?7U+lKRxWfTEfhLYQfl+/9KuJ7wJCgrE19nLlSZh6fOpoGN5BdIX4yrI9hZnu?=
 =?us-ascii?Q?rKlQYSID7a/k1X75GqVdB02d41jzzajYbGtabLCm2OCLQZ6x906vqOq6Ti4T?=
 =?us-ascii?Q?p+1uPJ7icwMqtrVyNw3q7/6vvMXPIih7jR7IySVq0HgDBeFvH9zSHwL6m4Kc?=
 =?us-ascii?Q?hf8z27cFIZaiABVzrkWzGQOgdcCD6ut3576uiQZwo5PcKwjILVyUrW0rehTU?=
 =?us-ascii?Q?8JxbYeSaHEKnaSvBaWX/+u5McKAi1FhpklrcQPrtcJL0sOOJdZXn/LeN4Suz?=
 =?us-ascii?Q?JN38W1zB65ZVjvcznBQIczPeeUqHqQrzy2jIybCwXDXq2ekhSRvsS5MFAiyR?=
 =?us-ascii?Q?oDDUjvbabZetjUpAogpQYcxouwVnccuiGuP0GpHEmUOu6ZLTwHh6H0hRa+DF?=
 =?us-ascii?Q?zzUXVDez2vJHf0tOi0v5harRke2oKnVnFzejHCeZsxdXoeZ2zijSTeVZR3uI?=
 =?us-ascii?Q?uAIW0igwVsBzIjToINLEsMdHxp6ucGNW86KtbEPdNjL7B+AYZOWC5Kz85XX9?=
 =?us-ascii?Q?XjfHO+YwFNGVcC3Rr3vRqKPt75ru3hIy/4xytliIFINfLwUNwUsgUnJV4avo?=
 =?us-ascii?Q?Anb8tuDFcJp9AxblX4+5H/QfhvUpcrgsjWBsX03gouZIW/kAJpIg/S29o1bZ?=
 =?us-ascii?Q?6ZhGz4slwe9NZFLepag9tUhgifAr6ZNMlf7s95lVuoNaiWlAHZnF28yxkvU6?=
 =?us-ascii?Q?mXv6oV0CrmW1Y5m2HcMMeAZx+EONXlDA7dOfnfQPm3MOWViNdh1/NcpgaEaI?=
 =?us-ascii?Q?O+KrSRZRfEZbVuPGP75yuZUhETXScW60Oo2qQ133Svg4GUCoepnyx7rRqTpK?=
 =?us-ascii?Q?G+z0rap7RozLVECYLEAFgPxkVUKJpBkFI/6INvhie3kCB7DkxOrRp/jzFT91?=
 =?us-ascii?Q?u7CUEFSZVwDgnuJAKHKD0Qwv66OiuIM7GPPBkK5CRyfPeOcNaHHLcjOUTabo?=
 =?us-ascii?Q?i/QOsDHYklF4ii/YTrIO+ZBO3b3ecmfYL2ouqnkgz49UgHkICf1UlJI/VIkp?=
 =?us-ascii?Q?rfgkjlr4omGoMKydxYZWPvx6KNGcli0WVuHdmit3oxd+qE6+iQfNDbdSbgmL?=
 =?us-ascii?Q?UOIjwpPTvBCMIyyYNinQDJ8dl5w6Vp9MlQ6sULkA6chYVz/YiZ3N4OHtX90/?=
 =?us-ascii?Q?r2FDLEk/DQYOZo/3QkR2/O4n4xzWTFn03PIgNljbkd3CD6k+TCicLP5siVP6?=
 =?us-ascii?Q?4P4eMd2BsTETvMsNr/dbYZmNgMrJ82vYX0C8wNTyiTbVNXAs5hYG7+2zr7Zw?=
 =?us-ascii?Q?VsvUMOp3FbcUukEKlqi9IbFXKd6FNr7kGNa+RG193j8pubftt6O9t2X1PA34?=
 =?us-ascii?Q?UQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ccf44420-2f98-4ebb-ea66-08dcff75ecc1
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2024 21:48:33.0268 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DNWcLB5nilaXOTtw3RbeuOgwVZ6WCuYVDRfbhIh9BzkLgs4yx1MhDGCLCqlf64xjJPRDH2/ytUJj8STghJ++8klcRV5XxshsD8OTJchkpp4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5047
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

On Thu, Nov 07, 2024 at 04:48:22AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/hdcp: Handle HDCP Line Rekeying for HDCP 1.4 (rev4)
> URL   : https://patchwork.freedesktop.org/series/140993/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15648_full -> Patchwork_140993v4_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_140993v4_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_140993v4_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 9)
> ------------------------------
> 
>   Missing    (1): shard-dg2-set2 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_140993v4_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@2x-flip-vs-suspend@ac-hdmi-a1-hdmi-a2:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-glk8/igt@kms_flip@2x-flip-vs-suspend@ac-hdmi-a1-hdmi-a2.html

Platform never came back from suspend.  Same general issue as
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839 , just on a
slightly different subtest.

> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank@d-hdmi-a3:
>     - shard-dg1:          [PASS][2] -> [FAIL][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-dg1-12/igt@kms_flip@flip-vs-blocking-wf-vblank@d-hdmi-a3.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg1-13/igt@kms_flip@flip-vs-blocking-wf-vblank@d-hdmi-a3.html

https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12702

> 
>   * igt@kms_rotation_crc@primary-rotation-270:
>     - shard-dg2:          NOTRUN -> [SKIP][4] +1 other test skip
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@kms_rotation_crc@primary-rotation-270.html

Looks like an expected skip since 90/270 rotation was removed in display
version 13 (including DG2).

> 
>   * igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create:
>     - shard-glk:          [PASS][5] -> [ABORT][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-glk6/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-glk3/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html

Same issue as
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12231 but on a
slightly different subtest.  Not related to this patch.


Applied to drm-intel-next.  Thanks for the patch.


Matt

> 
>   
> #### Warnings ####
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-dg1:          [SKIP][7] ([i915#1187]) -> [SKIP][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg1-16/igt@kms_hdr@brightness-with-hdr.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_140993v4_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@crc32:
>     - shard-tglu-1:       NOTRUN -> [SKIP][9] ([i915#6230])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@api_intel_bb@crc32.html
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-dg2:          NOTRUN -> [SKIP][10] ([i915#11078])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@device_reset@cold-reset-bound.html
> 
>   * igt@drm_fdinfo@isolation@rcs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][11] ([i915#8414]) +6 other tests skip
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-6/igt@drm_fdinfo@isolation@rcs0.html
> 
>   * igt@drm_fdinfo@virtual-busy-idle:
>     - shard-dg2:          NOTRUN -> [SKIP][12] ([i915#8414]) +3 other tests skip
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@drm_fdinfo@virtual-busy-idle.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-tglu-1:       NOTRUN -> [SKIP][13] ([i915#9323])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-tglu:         NOTRUN -> [SKIP][14] ([i915#6335])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-7/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#8562])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@gem_create@create-ext-set-pat.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][16] ([i915#8562])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_ctx_engines@invalid-engines:
>     - shard-rkl:          [PASS][17] -> [FAIL][18] ([i915#12031])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-rkl-7/igt@gem_ctx_engines@invalid-engines.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-rkl-2/igt@gem_ctx_engines@invalid-engines.html
>     - shard-tglu:         [PASS][19] -> [FAIL][20] ([i915#12031])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-tglu-4/igt@gem_ctx_engines@invalid-engines.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-4/igt@gem_ctx_engines@invalid-engines.html
> 
>   * igt@gem_ctx_persistence@heartbeat-stop:
>     - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#8555]) +1 other test skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-6/igt@gem_ctx_persistence@heartbeat-stop.html
> 
>   * igt@gem_ctx_persistence@hostile:
>     - shard-tglu:         [PASS][22] -> [FAIL][23] ([i915#11980] / [i915#12580])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-tglu-6/igt@gem_ctx_persistence@hostile.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-9/igt@gem_ctx_persistence@hostile.html
> 
>   * igt@gem_ctx_persistence@idempotent:
>     - shard-snb:          NOTRUN -> [SKIP][24] ([i915#1099])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-snb5/igt@gem_ctx_persistence@idempotent.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-tglu:         NOTRUN -> [SKIP][25] ([i915#280])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-7/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-tglu-1:       NOTRUN -> [SKIP][26] ([i915#280])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-dg1:          [PASS][27] -> [ABORT][28] ([i915#7975] / [i915#8213])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-dg1-17/igt@gem_eio@hibernate.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg1-14/igt@gem_eio@hibernate.html
> 
>   * igt@gem_exec_balancer@bonded-dual:
>     - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#4771])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@gem_exec_balancer@bonded-dual.html
> 
>   * igt@gem_exec_balancer@nop:
>     - shard-mtlp:         [PASS][30] -> [DMESG-WARN][31] ([i915#12412])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-mtlp-1/igt@gem_exec_balancer@nop.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-1/igt@gem_exec_balancer@nop.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-tglu-1:       NOTRUN -> [FAIL][32] ([i915#6117])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_balancer@sliced:
>     - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#4812]) +1 other test skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@gem_exec_balancer@sliced.html
> 
>   * igt@gem_exec_capture@capture@vecs0-lmem0:
>     - shard-dg2:          NOTRUN -> [FAIL][34] ([i915#11965] / [i915#12558]) +2 other tests fail
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@gem_exec_capture@capture@vecs0-lmem0.html
> 
>   * igt@gem_exec_capture@capture@vecs1-smem:
>     - shard-dg2:          NOTRUN -> [FAIL][35] ([i915#11965]) +1 other test fail
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@gem_exec_capture@capture@vecs1-smem.html
> 
>   * igt@gem_exec_fair@basic-none-rrul:
>     - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#3539] / [i915#4852])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@gem_exec_fair@basic-none-rrul.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-tglu:         NOTRUN -> [FAIL][37] ([i915#2842]) +1 other test fail
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-7/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-rkl:          [PASS][38] -> [FAIL][39] ([i915#2842]) +1 other test fail
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-rkl-7/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_params@rsvd2-dirt:
>     - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#5107])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@gem_exec_params@rsvd2-dirt.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu-active:
>     - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#3281]) +7 other tests skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@gem_exec_reloc@basic-gtt-cpu-active.html
> 
>   * igt@gem_exec_reloc@basic-wc-cpu-active:
>     - shard-dg1:          NOTRUN -> [SKIP][42] ([i915#3281]) +1 other test skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg1-18/igt@gem_exec_reloc@basic-wc-cpu-active.html
> 
>   * igt@gem_exec_reloc@basic-write-cpu-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][43] ([i915#3281])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-7/igt@gem_exec_reloc@basic-write-cpu-noreloc.html
> 
>   * igt@gem_exec_schedule@preempt-queue-chain:
>     - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#4537] / [i915#4812])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-6/igt@gem_exec_schedule@preempt-queue-chain.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-x:
>     - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#4860]) +1 other test skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@gem_fence_thrash@bo-write-verify-x.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][46] ([i915#4613])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-7/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-tglu-1:       NOTRUN -> [SKIP][47] ([i915#4613]) +1 other test skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_media_fill@media-fill:
>     - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#8289])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@gem_media_fill@media-fill.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy:
>     - shard-mtlp:         NOTRUN -> [SKIP][49] ([i915#4077]) +2 other tests skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-6/igt@gem_mmap_gtt@cpuset-big-copy.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#4077]) +13 other tests skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@gem_mmap_wc@write-prefaulted:
>     - shard-mtlp:         NOTRUN -> [SKIP][51] ([i915#4083])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-6/igt@gem_mmap_wc@write-prefaulted.html
> 
>   * igt@gem_mmap_wc@write-read-distinct:
>     - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#4083]) +1 other test skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@gem_mmap_wc@write-read-distinct.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads:
>     - shard-mtlp:         NOTRUN -> [SKIP][53] ([i915#3282])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-7/igt@gem_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#3282]) +1 other test skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>     - shard-tglu:         NOTRUN -> [SKIP][55] ([i915#4270])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-7/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-3:
>     - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#4270]) +4 other tests skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@gem_pxp@reject-modify-context-protection-off-3.html
> 
>   * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
>     - shard-tglu-1:       NOTRUN -> [SKIP][57] ([i915#4270]) +1 other test skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-execution:
>     - shard-mtlp:         NOTRUN -> [SKIP][58] ([i915#4270])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-6/igt@gem_pxp@verify-pxp-stale-buf-execution.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#5190] / [i915#8428]) +5 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#4079])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
> 
>   * igt@gem_userptr_blits@access-control:
>     - shard-dg1:          NOTRUN -> [SKIP][61] ([i915#3297])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg1-16/igt@gem_userptr_blits@access-control.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#3297]) +3 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@gem_userptr_blits@create-destroy-unsync.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][63] ([i915#3297]) +4 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
>     - shard-dg1:          NOTRUN -> [SKIP][64] ([i915#3297] / [i915#4880])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg1-18/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html
> 
>   * igt@gem_userptr_blits@sd-probe:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#3297] / [i915#4958])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@gem_userptr_blits@sd-probe.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [PASS][66] -> [ABORT][67] ([i915#5566])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-glk8/igt@gen9_exec_parse@allowed-single.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-glk7/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#2856]) +2 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@gen9_exec_parse@bb-secure:
>     - shard-tglu-1:       NOTRUN -> [SKIP][69] ([i915#2527] / [i915#2856])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@gen9_exec_parse@bb-secure.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-mtlp:         NOTRUN -> [SKIP][70] ([i915#2856]) +1 other test skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-6/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@gen9_exec_parse@unaligned-jump:
>     - shard-tglu:         NOTRUN -> [SKIP][71] ([i915#2527] / [i915#2856]) +1 other test skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-7/igt@gen9_exec_parse@unaligned-jump.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-glk:          [PASS][72] -> [ABORT][73] ([i915#9820])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-glk7/igt@i915_module_load@reload-with-fault-injection.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-glk2/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-dg1:          [PASS][74] -> [ABORT][75] ([i915#9820])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg1-12/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-untiled:
>     - shard-mtlp:         [PASS][76] -> [DMESG-WARN][77] ([i915#1982])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-mtlp-1/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-1/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
> 
>   * igt@i915_pm_freq_api@freq-suspend:
>     - shard-tglu-1:       NOTRUN -> [SKIP][78] ([i915#8399])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@i915_pm_freq_api@freq-suspend.html
> 
>   * igt@i915_pm_freq_api@freq-suspend@gt0:
>     - shard-dg2:          [PASS][79] -> [INCOMPLETE][80] ([i915#12455]) +1 other test incomplete
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-tglu:         NOTRUN -> [WARN][81] ([i915#2681]) +1 other test warn
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-7/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_pm_rps@min-max-config-idle:
>     - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#11681] / [i915#6621])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@i915_pm_rps@min-max-config-idle.html
> 
>   * igt@i915_pm_rps@thresholds-idle:
>     - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#11681])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@i915_pm_rps@thresholds-idle.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#8437])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-1/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-tglu:         NOTRUN -> [SKIP][85] ([i915#6245])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-8/igt@i915_query@hwconfig_table.html
> 
>   * igt@i915_query@query-topology-coherent-slice-mask:
>     - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#6188])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@i915_query@query-topology-coherent-slice-mask.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-tglu:         NOTRUN -> [INCOMPLETE][87] ([i915#7443])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-7/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_addfb_basic@tile-pitch-mismatch:
>     - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#4212])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@kms_addfb_basic@tile-pitch-mismatch.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#8709]) +3 other tests skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-rkl-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#8709]) +11 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html
> 
>   * igt@kms_async_flips@test-cursor:
>     - shard-mtlp:         NOTRUN -> [SKIP][91] ([i915#10333])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-6/igt@kms_async_flips@test-cursor.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition:
>     - shard-mtlp:         NOTRUN -> [SKIP][92] ([i915#1769] / [i915#3555])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-6/igt@kms_atomic_transition@plane-all-modeset-transition.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-tglu-1:       NOTRUN -> [SKIP][93] ([i915#5286]) +4 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-tglu:         NOTRUN -> [SKIP][94] ([i915#5286]) +1 other test skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
>     - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#4538] / [i915#5190]) +11 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-overflow:
>     - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#5190]) +1 other test skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@kms_big_fb@y-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
>     - shard-mtlp:         NOTRUN -> [SKIP][97] +2 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-6/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-dg1:          NOTRUN -> [SKIP][98] ([i915#4538])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg1-16/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#10307] / [i915#6095]) +168 other tests skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-5/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#6095]) +100 other tests skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg1-19/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][101] ([i915#6095]) +44 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-7/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][102] ([i915#6095]) +44 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][103] +43 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-glk9/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#12313]) +1 other test skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-8/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#12313])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-6/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#6095]) +47 other tests skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-rkl-2/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-8/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#4087]) +3 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-4/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:
>     - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#7828])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg1-16/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html
> 
>   * igt@kms_chamelium_frames@dp-frame-dump:
>     - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#7828]) +7 other tests skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@kms_chamelium_frames@dp-frame-dump.html
> 
>   * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
>     - shard-tglu-1:       NOTRUN -> [SKIP][111] ([i915#7828]) +4 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html
> 
>   * igt@kms_chamelium_hpd@common-hpd-after-suspend:
>     - shard-mtlp:         NOTRUN -> [SKIP][112] ([i915#7828])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-6/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
>     - shard-tglu:         NOTRUN -> [SKIP][113] ([i915#7828]) +5 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-8/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#3299])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-tglu:         NOTRUN -> [SKIP][115] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-7/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#9424])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#7118] / [i915#9424])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-256x85:
>     - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#8814]) +1 other test skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-6/igt@kms_cursor_crc@cursor-offscreen-256x85.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>     - shard-mtlp:         NOTRUN -> [SKIP][119] ([i915#11453] / [i915#3359])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-3/igt@kms_cursor_crc@cursor-onscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#3555]) +6 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-6/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
>     - shard-tglu:         NOTRUN -> [SKIP][121] ([i915#3555]) +1 other test skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-8/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#11453] / [i915#3359])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
>     - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#11453] / [i915#3359])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-7/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-tglu-1:       NOTRUN -> [SKIP][124] ([i915#3555]) +2 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-tglu-1:       NOTRUN -> [SKIP][125] ([i915#4103]) +1 other test skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-mtlp:         [PASS][126] -> [FAIL][127] ([i915#2346])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-mtlp-5/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#4103] / [i915#4213])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-dg2:          [PASS][129] -> [SKIP][130] ([i915#1257])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-dg2-10/igt@kms_dp_aux_dev.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-6/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-tglu-1:       NOTRUN -> [SKIP][131] ([i915#3555] / [i915#3840])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#3840] / [i915#9688])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@kms_dsc@dsc-fractional-bpp.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][133] ([i915#3840])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-tglu-1:       NOTRUN -> [SKIP][134] ([i915#3469])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@kms_fbcon_fbt@psr-suspend.html
>     - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#3469])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-tglu:         NOTRUN -> [SKIP][136] ([i915#2065] / [i915#4854])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-7/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@display-3x:
>     - shard-tglu-1:       NOTRUN -> [SKIP][137] ([i915#1839]) +1 other test skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@kms_feature_discovery@display-3x.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#658]) +1 other test skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-7/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_fence_pin_leak:
>     - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#4881])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@kms_fence_pin_leak.html
> 
>   * igt@kms_flip@2x-flip-vs-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#8381]) +1 other test skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-6/igt@kms_flip@2x-flip-vs-fences.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible:
>     - shard-mtlp:         NOTRUN -> [SKIP][141] ([i915#3637]) +3 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][142] ([i915#3637]) +4 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-7/igt@kms_flip@2x-plain-flip-interruptible.html
> 
>   * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
>     - shard-tglu-1:       NOTRUN -> [SKIP][143] ([i915#3637]) +4 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank:
>     - shard-dg1:          [PASS][144] -> [FAIL][145] ([i915#11989] / [i915#12517] / [i915#2122]) +1 other test fail
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-dg1-12/igt@kms_flip@flip-vs-blocking-wf-vblank.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg1-13/igt@kms_flip@flip-vs-blocking-wf-vblank.html
>     - shard-mtlp:         [PASS][146] -> [FAIL][147] ([i915#11989] / [i915#2122]) +1 other test fail
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-mtlp-4/igt@kms_flip@flip-vs-blocking-wf-vblank.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-4/igt@kms_flip@flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a3:
>     - shard-dg1:          [PASS][148] -> [FAIL][149] ([i915#12457]) +1 other test fail
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-dg1-12/igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a3.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg1-13/igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a3.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1:
>     - shard-mtlp:         [PASS][150] -> [FAIL][151] ([i915#11989]) +1 other test fail
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-mtlp-4/igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-4/igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1:
>     - shard-glk:          [PASS][152] -> [FAIL][153] ([i915#2122])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-glk6/igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-glk3/igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-dg1:          NOTRUN -> [INCOMPLETE][154] ([i915#4839] / [i915#6113])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg1-18/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-hdmi-a2:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][155] ([i915#4839])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-glk5/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-hdmi-a4:
>     - shard-dg1:          NOTRUN -> [INCOMPLETE][156] ([i915#6113])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg1-18/igt@kms_flip@flip-vs-suspend@c-hdmi-a4.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
>     - shard-mtlp:         [PASS][157] -> [FAIL][158] ([i915#2122]) +6 other tests fail
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-mtlp-3/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-5/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check:
>     - shard-mtlp:         [PASS][159] -> [FAIL][160] ([i915#12457] / [i915#2122])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-mtlp-1/igt@kms_flip@plain-flip-ts-check.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check.html
> 
>   * igt@kms_flip@plain-flip-ts-check@b-hdmi-a1:
>     - shard-tglu:         [PASS][161] -> [FAIL][162] ([i915#2122]) +3 other tests fail
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-tglu-5/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-9/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html
> 
>   * igt@kms_flip@wf_vblank-ts-check@a-hdmi-a4:
>     - shard-dg1:          [PASS][163] -> [FAIL][164] ([i915#2122])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-dg1-14/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a4.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg1-18/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a4.html
> 
>   * igt@kms_flip@wf_vblank-ts-check@a-vga1:
>     - shard-snb:          [PASS][165] -> [FAIL][166] ([i915#2122]) +4 other tests fail
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-snb1/igt@kms_flip@wf_vblank-ts-check@a-vga1.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-snb7/igt@kms_flip@wf_vblank-ts-check@a-vga1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
>     - shard-mtlp:         NOTRUN -> [SKIP][167] ([i915#2672] / [i915#3555] / [i915#8813])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#2672] / [i915#8813])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][169] ([i915#2587] / [i915#2672] / [i915#3555]) +1 other test skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][170] ([i915#2587] / [i915#2672]) +3 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][171] ([i915#2672] / [i915#3555]) +1 other test skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#2672] / [i915#3555] / [i915#5190]) +2 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#2672]) +2 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt:
>     - shard-dg2:          [PASS][174] -> [FAIL][175] ([i915#6880])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][176] ([i915#8708])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#5354]) +41 other tests skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt:
>     - shard-snb:          [PASS][178] -> [SKIP][179]
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#8708]) +19 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite:
>     - shard-dg1:          NOTRUN -> [SKIP][181] +4 other tests skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][182] +62 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][183] ([i915#3458]) +2 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:
>     - shard-tglu:         NOTRUN -> [SKIP][184] +53 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-rte:
>     - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#3458]) +10 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:
>     - shard-mtlp:         NOTRUN -> [SKIP][186] ([i915#1825]) +7 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-snb:          NOTRUN -> [SKIP][187] +98 other tests skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-snb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#3555] / [i915#8228])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-tglu-1:       NOTRUN -> [SKIP][189] ([i915#3555] / [i915#8228]) +1 other test skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][190] ([i915#3555] / [i915#8228])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-7/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-tglu-1:       NOTRUN -> [SKIP][191] ([i915#10656])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#10656])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-6/igt@kms_joiner@basic-force-ultra-joiner.html
>     - shard-tglu:         NOTRUN -> [SKIP][193] ([i915#12394])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-8/igt@kms_joiner@basic-force-ultra-joiner.html
> 
>   * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
>     - shard-dg2:          NOTRUN -> [SKIP][194] +9 other tests skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
> 
>   * igt@kms_plane@pixel-format:
>     - shard-glk:          [PASS][195] -> [INCOMPLETE][196] ([i915#10056] / [i915#118])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-glk4/igt@kms_plane@pixel-format.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-glk9/igt@kms_plane@pixel-format.html
> 
>   * igt@kms_plane@pixel-format@pipe-a-plane-0:
>     - shard-glk:          [PASS][197] -> [DMESG-WARN][198] ([i915#118])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-glk4/igt@kms_plane@pixel-format@pipe-a-plane-0.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-glk9/igt@kms_plane@pixel-format@pipe-a-plane-0.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#3555] / [i915#8806])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c:
>     - shard-tglu:         NOTRUN -> [SKIP][200] ([i915#12247]) +8 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-7/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:
>     - shard-tglu-1:       NOTRUN -> [SKIP][201] ([i915#12247]) +4 other tests skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
>     - shard-dg2:          NOTRUN -> [SKIP][202] ([i915#12247] / [i915#6953] / [i915#9423])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b:
>     - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#12247]) +3 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
>     - shard-tglu:         NOTRUN -> [SKIP][204] ([i915#12247] / [i915#3555])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
> 
>   * igt@kms_pm_backlight@fade:
>     - shard-tglu:         NOTRUN -> [SKIP][205] ([i915#9812])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-7/igt@kms_pm_backlight@fade.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#5978])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#9685]) +1 other test skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-6/igt@kms_pm_dc@dc6-psr.html
>     - shard-tglu:         NOTRUN -> [SKIP][208] ([i915#9685])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-8/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#9340])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#8430])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@i2c:
>     - shard-dg2:          [PASS][211] -> [FAIL][212] ([i915#8717])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-dg2-6/igt@kms_pm_rpm@i2c.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-2/igt@kms_pm_rpm@i2c.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#9519]) +1 other test skip
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          [PASS][214] -> [SKIP][215] ([i915#9519]) +1 other test skip
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][216] ([i915#9519])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-tglu:         NOTRUN -> [SKIP][217] ([i915#6524])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-7/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-tglu-1:       NOTRUN -> [SKIP][218] ([i915#6524])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:
>     - shard-snb:          NOTRUN -> [SKIP][219] ([i915#11520]) +1 other test skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-snb4/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#11520]) +6 other tests skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][221] ([i915#11520]) +6 other tests skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@pr-plane-move-sf-dmg-area:
>     - shard-mtlp:         NOTRUN -> [SKIP][222] ([i915#12316]) +1 other test skip
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-6/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:
>     - shard-glk:          NOTRUN -> [SKIP][223] ([i915#11520])
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-glk9/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][224] ([i915#11520]) +6 other tests skip
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-7/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-mtlp:         NOTRUN -> [SKIP][225] ([i915#4348])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-5/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@fbc-pr-cursor-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][226] ([i915#1072] / [i915#9732])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg1-18/igt@kms_psr@fbc-pr-cursor-blt.html
> 
>   * igt@kms_psr@fbc-psr2-primary-blt@edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][227] ([i915#9688]) +9 other tests skip
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-6/igt@kms_psr@fbc-psr2-primary-blt@edp-1.html
> 
>   * igt@kms_psr@psr-sprite-mmap-cpu:
>     - shard-tglu:         NOTRUN -> [SKIP][228] ([i915#9732]) +11 other tests skip
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-7/igt@kms_psr@psr-sprite-mmap-cpu.html
> 
>   * igt@kms_psr@psr2-cursor-mmap-gtt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][229] ([i915#9732]) +15 other tests skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@kms_psr@psr2-cursor-mmap-gtt.html
> 
>   * igt@kms_psr@psr2-primary-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][230] ([i915#1072] / [i915#9732]) +21 other tests skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@kms_psr@psr2-primary-mmap-gtt.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-tglu-1:       NOTRUN -> [SKIP][231] ([i915#9685]) +1 other test skip
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#8623])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-tglu:         NOTRUN -> [SKIP][233] ([i915#8623])
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-7/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_vrr@flip-basic-fastset:
>     - shard-tglu:         NOTRUN -> [SKIP][234] ([i915#9906])
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-7/igt@kms_vrr@flip-basic-fastset.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-dg2:          NOTRUN -> [SKIP][235] ([i915#9906]) +2 other tests skip
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@kms_vrr@max-min.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#3555] / [i915#9906])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@kms_vrr@negative-basic.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][237] ([i915#3555] / [i915#9906])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@kms_vrr@negative-basic.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-glk:          NOTRUN -> [SKIP][238] ([i915#2437])
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-glk9/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][239] ([i915#2437] / [i915#9412])
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-dg2:          NOTRUN -> [SKIP][240] ([i915#2436])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf@non-zero-reason@0-rcs0:
>     - shard-dg2:          NOTRUN -> [FAIL][241] ([i915#9100]) +1 other test fail
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html
> 
>   * igt@perf_pmu@cpu-hotplug:
>     - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#8850])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@perf_pmu@cpu-hotplug.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#3708]) +1 other test skip
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-1/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each:
>     - shard-tglu-1:       NOTRUN -> [SKIP][244] ([i915#9917])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_engines@invalid-engines:
>     - shard-mtlp:         [FAIL][245] ([i915#12031]) -> [PASS][246]
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-mtlp-6/igt@gem_ctx_engines@invalid-engines.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-7/igt@gem_ctx_engines@invalid-engines.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-dg2:          [ABORT][247] ([i915#10030] / [i915#7975] / [i915#8213]) -> [PASS][248]
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-dg2-5/igt@gem_eio@hibernate.html
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-11/igt@gem_eio@hibernate.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-rkl:          [FAIL][249] ([i915#2842]) -> [PASS][250] +1 other test pass
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-rkl-3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-rkl-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-glk:          [ABORT][251] ([i915#5566]) -> [PASS][252]
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-glk4/igt@gen9_exec_parse@allowed-all.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-glk9/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg2:          [ABORT][253] ([i915#9820]) -> [PASS][254]
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-snb:          [ABORT][255] ([i915#9820]) -> [PASS][256]
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-tglu:         [ABORT][257] ([i915#9820]) -> [PASS][258]
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-tglu-6/igt@i915_module_load@reload-with-fault-injection.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-8/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
>     - shard-dg1:          [FAIL][259] ([i915#12548] / [i915#3591]) -> [PASS][260] +1 other test pass
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - shard-mtlp:         [ABORT][261] ([i915#12061]) -> [PASS][262] +1 other test pass
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-mtlp-2/igt@i915_selftest@live@workarounds.html
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-6/igt@i915_selftest@live@workarounds.html
> 
>   * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing:
>     - shard-glk:          [FAIL][263] ([i915#12238]) -> [PASS][264]
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-glk7/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html
> 
>   * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs:
>     - shard-glk:          [FAIL][265] ([i915#11859]) -> [PASS][266]
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-glk7/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check:
>     - shard-snb:          [FAIL][267] ([i915#2122]) -> [PASS][268] +1 other test pass
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-snb4/igt@kms_flip@2x-wf_vblank-ts-check.html
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-snb2/igt@kms_flip@2x-wf_vblank-ts-check.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank:
>     - shard-rkl:          [FAIL][269] ([i915#11989] / [i915#2122]) -> [PASS][270]
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-rkl-2/igt@kms_flip@flip-vs-blocking-wf-vblank.html
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-rkl-7/igt@kms_flip@flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a1:
>     - shard-rkl:          [FAIL][271] ([i915#2122]) -> [PASS][272] +1 other test pass
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-rkl-2/igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a1.html
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-rkl-7/igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-edp1:
>     - shard-mtlp:         [INCOMPLETE][273] ([i915#6113]) -> [PASS][274] +1 other test pass
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-mtlp-1/igt@kms_flip@flip-vs-suspend@b-edp1.html
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-mtlp-1/igt@kms_flip@flip-vs-suspend@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-hdmi-a2:
>     - shard-glk:          [INCOMPLETE][275] ([i915#4839]) -> [PASS][276] +1 other test pass
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-glk3/igt@kms_flip@flip-vs-suspend@b-hdmi-a2.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-glk5/igt@kms_flip@flip-vs-suspend@b-hdmi-a2.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a3:
>     - shard-dg2:          [FAIL][277] ([i915#2122]) -> [PASS][278] +6 other tests pass
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-dg2-2/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a3.html
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-3/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a3.html
> 
>   * igt@kms_flip@wf_vblank-ts-check@b-hdmi-a1:
>     - shard-tglu:         [FAIL][279] ([i915#2122]) -> [PASS][280]
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-tglu-5/igt@kms_flip@wf_vblank-ts-check@b-hdmi-a1.html
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-5/igt@kms_flip@wf_vblank-ts-check@b-hdmi-a1.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-dg2:          [SKIP][281] ([i915#3555] / [i915#8228]) -> [PASS][282]
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-dg2-3/igt@kms_hdr@static-swap.html
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-10/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-rkl:          [SKIP][283] ([i915#9519]) -> [PASS][284] +1 other test pass
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-dg2:          [SKIP][285] ([i915#9519]) -> [PASS][286]
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-tglu:         [FAIL][287] ([i915#2876]) -> [FAIL][288] ([i915#2842])
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-tglu-6/igt@gem_exec_fair@basic-pace@rcs0.html
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-tglu-9/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@kms_flip@wf_vblank-ts-check:
>     - shard-rkl:          [FAIL][289] ([i915#10826] / [i915#11989] / [i915#2122]) -> [FAIL][290] ([i915#11989] / [i915#2122])
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-rkl-5/igt@kms_flip@wf_vblank-ts-check.html
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-rkl-5/igt@kms_flip@wf_vblank-ts-check.html
> 
>   * igt@kms_flip@wf_vblank-ts-check@a-hdmi-a2:
>     - shard-rkl:          [FAIL][291] ([i915#10826]) -> [FAIL][292] ([i915#11961])
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-rkl-5/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a2.html
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-rkl-5/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a2.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
>     - shard-dg2:          [SKIP][293] ([i915#10433] / [i915#3458]) -> [SKIP][294] ([i915#3458])
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-slowdraw:
>     - shard-dg2:          [SKIP][295] ([i915#3458]) -> [SKIP][296] ([i915#10433] / [i915#3458]) +1 other test skip
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-slowdraw.html
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-slowdraw.html
> 
>   * igt@kms_psr@fbc-psr-primary-blt:
>     - shard-dg1:          [SKIP][297] ([i915#1072] / [i915#9732]) -> [SKIP][298] ([i915#1072] / [i915#4423] / [i915#9732])
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-dg1-14/igt@kms_psr@fbc-psr-primary-blt.html
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-dg1-18/igt@kms_psr@fbc-psr-primary-blt.html
> 
>   * igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:
>     - shard-glk:          [ABORT][299] ([i915#12231]) -> [DMESG-FAIL][300] ([i915#12231])
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/shard-glk6/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free.html
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/shard-glk3/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10030
>   [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
>   [i915#10056]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10333]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10333
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826
>   [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11453]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/118
>   [i915#11859]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859
>   [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
>   [i915#11961]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11961
>   [i915#11965]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11965
>   [i915#11980]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11980
>   [i915#11989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989
>   [i915#12031]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12031
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12231]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12231
>   [i915#12238]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12238
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
>   [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
>   [i915#12412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12412
>   [i915#12455]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12455
>   [i915#12457]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12457
>   [i915#12517]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12517
>   [i915#12548]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12548
>   [i915#12558]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12558
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#12580]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12580
>   [i915#12646]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12646
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
>   [i915#2065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065
>   [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
>   [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
>   [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#2876]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2876
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4348]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4348
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881
>   [i915#4958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4958
>   [i915#5107]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5107
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
>   [i915#5882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5882
>   [i915#5978]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5978
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6117]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6117
>   [i915#6188]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6188
>   [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
>   [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7091]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7091
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7443]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
>   [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8289
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8437
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8717
>   [i915#8806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806
>   [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
>   [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>   [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821
>   [i915#8850]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8850
>   [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_15648 -> Patchwork_140993v4
> 
>   CI-20190529: 20190529
>   CI_DRM_15648: 5ce87c5ad2cbfd2b89a0347e4e4f75de2762b7a3 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8100: 84e42580f918da926481fd2fb37be01451d6ee9a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_140993v4: 5ce87c5ad2cbfd2b89a0347e4e4f75de2762b7a3 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140993v4/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
