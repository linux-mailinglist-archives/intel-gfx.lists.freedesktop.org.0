Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 305B89E0C14
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 20:28:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0584A10E824;
	Mon,  2 Dec 2024 19:28:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eiSd9jJM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3323210E824
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2024 19:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733167714; x=1764703714;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qnX2i2r+a2BD9rXP3gLdD8n0cQaEXyzveVG3hJWqhxk=;
 b=eiSd9jJMGEflRfq4dIXh0H75AGtaN9l0cu6Rir6Xz1XXppC9Fc/xk1QV
 qVTuOdJRIJJNhsqY9qJ2MU/M2B/KfFlr1UC3rVuPH8vcbdB0nwYgKqAPF
 UEmv9ey++2ecVYOa37qfc3OG2hh8izzblmZy1euJQ4S5tf4nkIu3A432e
 ELCyreCQAxn2pp2oHci5EBpTmgCUSB0bhw7xZMO342tto48XlwquK8H9Y
 ap+DHxOPmkqrPdO/gdXYREOs2toLBREYIoR96D3sOo+16C+rK1uST5hBz
 zrgHpTw4JU+ORzPd7haBBSh3h/UWm8JicvJLytDR4MyKElxJUPo171Mg7 w==;
X-CSE-ConnectionGUID: PnfVN7WiQEuu1JnHZBbMUA==
X-CSE-MsgGUID: eDIJAU7uQJSSBQkJWvoBZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="36212285"
X-IronPort-AV: E=Sophos;i="6.12,203,1728975600"; d="scan'208";a="36212285"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 11:28:33 -0800
X-CSE-ConnectionGUID: +Twec4seT+mZNgMpeB04+Q==
X-CSE-MsgGUID: obzruQS5TKiuY8JBKzOuNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,203,1728975600"; d="scan'208";a="93520496"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Dec 2024 11:28:33 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Dec 2024 11:28:33 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Dec 2024 11:28:33 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Dec 2024 11:28:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YR7mXpfRfBvqjfEcYlLawGxzElcCCSokn7Vh8sbcaDNdmRxBJRuCzQQEfo9hw5mKIgbCspLI0GXlDT/5X/ohwpZWK3EkmDkK8jF/m1yxaGecOG8H/jAXdaPFWNONeJFtA5zPq+LRHmkvuTbmR3YxgWOTFMWCUHp7cuisPiICIqH5hDzVR7kYNZF5mF40XLo9Zm8obA/g8BoBgWXB40Twfu7458W/OygQbKNnUTC2l6wUNtdddgKPlUZEBcQw6OO790cAhIOwLDHccfZhiTiShZBFYTjs9qRBTMalGKMUo5MBrh9CMTb8m2+YR1iw1ZMMHIWgDIGnamO1oyQduOZIlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uA0vIm9byd2Ij8TnzJVlZsi5X90RKLs2LN0Kik4NY80=;
 b=AMTQ6uhg6o9i6dmkoWnqhXn+3X/8bSyII32CChinWX0CJYkb73X5J9mMn22S7zgYox0C639w35JExxQfqDtwYSZsUNPolCZkhrtxsLN5WTDq+CnyNFdsXOlIJz57qal364/9aIh5pBMueZr7spNv0wnMW+eW+SuqVPchPmJG40L/vYa2rkoKmd7i6sb0dok4Vp+NbGJnoP+swbkGygh7WJiqypFJORP/7kHc6RvvYLGNQ6eoyKjQNblrvpGU9/cDUWV5ZryrZs5vz63jEEu3texck+M9mIFDCpjaptCT/w1xgVDrIKyVDyJ/lxySUX7JZeDcemSIQZ7tBf1PoPkrbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 by PH7PR11MB5793.namprd11.prod.outlook.com (2603:10b6:510:13a::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.18; Mon, 2 Dec
 2024 19:28:28 +0000
Received: from CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550]) by CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550%4]) with mapi id 15.20.8207.017; Mon, 2 Dec 2024
 19:28:28 +0000
Message-ID: <84588642-2a2f-4bb1-ba08-b924cfc070b7@intel.com>
Date: Mon, 2 Dec 2024 11:28:25 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4] drm/i915: Fix NULL pointer dereference in
 capture_engine
To: Andi Shyti <andi.shyti@linux.intel.com>
CC: Eugene Kobyak <eugene.kobyak@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <jani.nikula@linux.intel.com>
References: <sspixcrejd5nbhijuo7o3z5agbgyq637wc7gph7ajrs3lnls6g@5ljanfmvccyf>
 <c74dd6ad-e9b4-41c7-a93f-c08370360fd3@intel.com>
 <Z0mvqW3K2UMEpwGD@ashyti-mobl2.lan>
Content-Language: en-GB
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <Z0mvqW3K2UMEpwGD@ashyti-mobl2.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P220CA0029.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::34) To CH3PR11MB8441.namprd11.prod.outlook.com
 (2603:10b6:610:1bc::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8441:EE_|PH7PR11MB5793:EE_
X-MS-Office365-Filtering-Correlation-Id: 36ebad0a-5937-4f9f-8ca7-08dd13077faf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MzRiS2VSNUpBalF1aUM1bzQvc1hmTEI5R3hlY0N5QXVFZDdwZkd6RFlHUUZr?=
 =?utf-8?B?WDA4Nyt5bXU2SVAzbW9ud3VET0RzWmlaWEFoa1Mwb0N6KzFKcXJBd0Q4Mm5E?=
 =?utf-8?B?blMwbUhpa1lQcHJZWmdFbFEwZGlLZTZYUFF6WnhzZXVBd0k5b3dpWXMrVWZl?=
 =?utf-8?B?dnN4V3k2eHg5UXN0dmdFMnBQNk5DdWFleWllNGs1WHpFUzREZ2VTWW84MEdi?=
 =?utf-8?B?Z2JKb0dyNVV0UkdYd3ZDclRySVpIeXk5YmRDRFhSMXdhMVc5Y2FqN1NPV2VP?=
 =?utf-8?B?SDdiQU1Gb2NIc0NvSFVWU3BrcUc2RTdxd1dzZ1U0UDF4RVlMeVZDSXVsY0lN?=
 =?utf-8?B?QlQ2RGxKbGo5aXFLYjZqMDlWUXVUSHRRYXBYTS9maHNyOHhnd3R5amg3T29S?=
 =?utf-8?B?UEkyNHk3cDk5WVpOUmN6dWRTRHI2VDFGU2RFS0xGTnVwNHRXVmVNV3ZXMG9n?=
 =?utf-8?B?RVEyMk1uVjZkMUZER00vK2FoOUMvVVYwZDk0amxjVlU4aXJKQXM1b2E0d2NG?=
 =?utf-8?B?eEFBWEc4bzR1cVoxeWFNOXlXUU5OVXdiQlVJRWFXUU5BSzNKV3ZTRkVHTzNs?=
 =?utf-8?B?ZVlZVHZUVmI0MEI4VFdzVGM5bnlwVkk3d3JzKzY3SDJ3djVKVlFiUlMvMXk0?=
 =?utf-8?B?anhXbDQzeU9FVHhJZzBGRS9qWlhGU0VnMXVkVDljbjVpMzZQZHZhcHpVY3VP?=
 =?utf-8?B?RWwxaEwwSmY5RTZwVTAvb2JpOERiQWwvNWJ1bDYva3g3RXZJdEVtQklPZFRV?=
 =?utf-8?B?QVFjOCtIQU03dGlXckdkRlZ3dDRHaXJmblRPL1d0VGZlRTRIUnQ5eXZkTFFO?=
 =?utf-8?B?YjVPNjg4anRjdWhRdHpmQzN3dTlURWtaVG9uL2dUclJhcFF6MDVwMjZ5d2kx?=
 =?utf-8?B?QUg2VXNRbnZoYkJ3dUUxOGJJT2dqcG5GQkNkK21UVTc1RjVZTlR0Y3liNnZj?=
 =?utf-8?B?ZlY3MzIzR0dWaitGbktqb0NTczVjV3BSbllIUTc2eTZaSTB2Sk5VSnIyT2xw?=
 =?utf-8?B?bHlIV051NVB6Z0t3WEVITnlLWVFTb3V1NExLc2xzYmlJb2xvci9vRXdqeVAr?=
 =?utf-8?B?ZXZtNmM2c09ZVE9hVUNYa3VJY2JBYnVRQ2RIbjZMSGlNY3ptNDNOelcwTjk1?=
 =?utf-8?B?Rm12SXVlc0tpdkxWemMrMm1RcVZXZ1VwdkowNXZ0aE5RVXMwZ0NYaXdZdTJa?=
 =?utf-8?B?Q3hKS1pNNEZ6UmI4TTE0bks4QXJ0bjFNbmpQUGU4R0d6MVhHUGEvTjdiZGtl?=
 =?utf-8?B?cUhjL0xHOC95anZEQnByMkFxd2dRenR0cnR3QzN6UlVKZk9veUxxbzEreUta?=
 =?utf-8?B?TmJrUjAxMk5VZzB4Q1JWdUNyWGxLaEgvY3pKNHllencrejRPS3FUbmx3RDJp?=
 =?utf-8?B?SWwyeU9nbFU5WG9sN3ZDNWR2eW1jOEVONXlOcGYzbENuUC90RVpITGp4Q0pr?=
 =?utf-8?B?Y2VabFJyaHhUUTRxRW1QSFlkbFdLQ2Jmb2FWWlRCTnhOV1ZYZjlhY3piTUlh?=
 =?utf-8?B?c2dUVElCMDYxQ2dic3ZmMEptUldCV2NBNVB1cWVDT08yaTNQY1laaXRMc2Nq?=
 =?utf-8?B?MWpnRG5OejNsb0RadHF5NkR1RFlCcEFRMStqYVFCbzNaeVkzYjBXblMzVDRK?=
 =?utf-8?B?NFphZlM3QTV1MHR2Ujd3TUJwaFpvMTZPVDkvMWVnMmVzRk5YSzE2V2tHOW1O?=
 =?utf-8?B?RjFnWHJ4SXBtcWpSaDlmMnhwZjA4bm9nSytXSlRBUDVJU0F3cm9lbk5jWXVN?=
 =?utf-8?Q?tb5mUlIpDO6iNlpQcU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8441.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b29qOEZ4WDloMkI4MjM0dmw4U1pldWMzUXRJdnRGSkhxeHFac0twYVlzZW44?=
 =?utf-8?B?UVQzeG5oRVlxU2lxYm9jK25HaWlaM1NuNTJ0U2VuNWxCam1wMm9uUkdhN2Z5?=
 =?utf-8?B?WWFmeW1heDI1OXJkaFBKbGxoeXVIc1ViS0hlVWpwYTBQOEsreitpYlQ5Z3dv?=
 =?utf-8?B?eVMxSk9DNW4rYlVXdmZyaW82SlhJdnVIVjZLNTlOd2VGazh0NmJmTWJPaXFq?=
 =?utf-8?B?UW5tRDFLYkJBNWJUTVJXbjhmd0xMLzdpY0dwSTVaTGhVZDF3UUhQdlFNZ2hG?=
 =?utf-8?B?VkhtTmtPYS9WRFJRV1lNY1M3NXFtbXhTck1FSVpBd0dMZHVNcTNxOUdWKzJB?=
 =?utf-8?B?c1R5NGlNU1hEL01rTzdnL0sxdzdDL3Y0aE50aTJDQ1NrWjc0SVM5NEFvL3hl?=
 =?utf-8?B?emNHZHBWdC9ESEt4Znlpc0FRZlNIcCtnZTlQU2JMYll4NjU0b0tDT1lsS3Ji?=
 =?utf-8?B?TS9wWWNCR3BsU3dTejNnY0s1Y015bWtadWNqc1pKNUFFOEZZWVV5V04zSzdW?=
 =?utf-8?B?aDdPQkxkWmlxVjkzUUhTaXE5Y1BqOXFYSnZyL3pLNWIxdEtWdHJaRGRmT1JI?=
 =?utf-8?B?U1Q2RjJydW90aGtmZHB2akF0RjljTEV3OG4rQjM0WDQxZi9FY1hMTFpJd2lY?=
 =?utf-8?B?VXkwZmdEa0hIOXN6R0ZYdWZ6cmk1b1B1ZzNJVyt5WnNIN0FXU0p3VHFIYnpN?=
 =?utf-8?B?WXlBTVg2U29IWkd4Tyt1YjNHWVhtalhmRDJUSmhrTFB3M2hZVDdjdGNaZFVI?=
 =?utf-8?B?YkZJZWkzNmZnQkpTSEd3Y2NIVUtBbEt4UmIvckNUSTZGY3Z0RFJ6ZndOVjFp?=
 =?utf-8?B?OEtKVEJtV3lZVFJLMVZxaklaVFVvV1JiVjJueS9KdjJFd0pJK2hZR20vWTBz?=
 =?utf-8?B?MnFobXFVTDlhRjA5YnBLbW1aSTJYTVM3ZkJyb3lsY2R5QXJpdGtIU1BPVDZN?=
 =?utf-8?B?U1FpcTBDUEpIdTdBb3dYRExTWjEwbzByazZOUHZYc3ZGSlFUaHZnM2xjMXdS?=
 =?utf-8?B?OW1ka25pNjR1c1JqL1VkVVJ5QjdBc2tZU0NBRTA1WTZpRThGamZVZlVwN0lq?=
 =?utf-8?B?U1ExcFdlSGh4US9ITkpMY2tMaXNnb1FOejcrSWRkb1kwV3JvVjdtNDNvY0lU?=
 =?utf-8?B?NGVTQndVandpYThVTE5CM3poYlZhZnVib2JjT3MvZXZ5QURFdFVNdnJUekh0?=
 =?utf-8?B?ZWZ2ZCthdHNWc2IzbXhsNjN3QVgyNHNWYzFLb1RSZjJ0Y0tsUUFHMGE0eHhE?=
 =?utf-8?B?NHBSMzJRMlJWZTlieGpGK215RmpxRU55NDY1VGg4NHJMZEIyblBJVHdab1pP?=
 =?utf-8?B?TGRjQkN5Q3N3SWtUREVGYnhNb0tJdjdzQUVhMHZ2M2h0a04yQ2pUSU1OWmlw?=
 =?utf-8?B?aWdrcndkOVV6WFp2azBWRGVGR3FMVHNqbUN6YmdqdUZKdWwzbVo4VG5nY3BQ?=
 =?utf-8?B?WFY2OVF6TXNVNllmQ0R0WmxBQnVwalYwMXlvb0tCTHR1cGcvOFVhejVTUmU0?=
 =?utf-8?B?TWpROGNrWjRrL1pzZkkrbmlPaGZoUEpRQmdwSFFObWtIb3hkenIzNXBEZEs2?=
 =?utf-8?B?RGhseXhqYzl5bGxnWEtsQU4wdzc3Sm5FSGpqWkhmbEZ2VnlTczNjd0pLdkpE?=
 =?utf-8?B?L1FGRWlvbU1nTVlzQk9oOFl4bXlMRGRaYmwxRW1tamcxN1p1YXYzVTVlQ29Q?=
 =?utf-8?B?YTY1d2o4c3prcVdMcVI1Vi9EK2h3NUF5eU5TMGc4QjgrV2M2WlhFZ2tqY1Zm?=
 =?utf-8?B?amIxQ3k0V1k0VDA2QytpS3pRcGhYb2QyMklCeU9EMitlUXBSNnZ6WSs1SkVs?=
 =?utf-8?B?VllPQ09KT2xnT1ZUZEVuVGZLSkhkcGpxTHFXMGdnWWNJRUl2VmsrdXlMZmNC?=
 =?utf-8?B?US9wbDNOb0tnRHZRaFlaUHVsMm9UYi8xcE9rU291THhsSEtOMlBqaFhoK2Zw?=
 =?utf-8?B?NjVpUXlPTjlBUFBERDNWN3g1VkpJMmlkeHFjYm1xTmdiOWk2YnRERXJ5ZGx3?=
 =?utf-8?B?Qm5rN3JsM3hEWlNKd2NzNVNnM2hZdDZ2MDZBQ0p0aWY5SW0ybDcyVFJLVEYv?=
 =?utf-8?B?Tjk4aDJBcERxRWFsUW1FaUpHQ0lHTDg2VWpidU92SURWZXNsUFhSU1Eyd1Yv?=
 =?utf-8?B?Q1lFY1Rrc0NuNEFQa3RpNCsvTklVd25rVTJXdVg4V1pybjl5TjhNOGtaOWgy?=
 =?utf-8?B?UXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 36ebad0a-5937-4f9f-8ca7-08dd13077faf
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8441.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2024 19:28:28.6334 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2U6G9J6z+hqDvrHyQDUErDOpUwlIyelv1UiIRYUz/edpXUlIz2ZvGTTm5TypMGkEAgNH9iYp7WwGJ0UnEkwCuHJCkSMBqjITAuw7tSzFS8A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5793
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

On 11/29/2024 04:12, Andi Shyti wrote:
> On Thu, Nov 28, 2024 at 06:32:28PM -0800, John Harrison wrote:
>> On 11/28/2024 13:28, Eugene Kobyak wrote:
>>> When the intel_context structure contains NULL,
>>> it raises a NULL pointer dereference error in drm_info().
>>>
>>> Fixes: e8a3319c31a1 ("drm/i915: Allow error capture without a request")
>>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12309
>>> Cc: John Harrison <John.C.Harrison@Intel.com>
>>> Cc: <stable@vger.kernel.org> # v6.3+
>>> Signed-off-by: Eugene Kobyak <eugene.kobyak@intel.com>
>>> ---
>>> v2:
>>>     - return drm_info to separate condition
>>> v3:
>>>     - create separate condition which generate string if intel_context exist
>>> v4:
>>>     - rollback and add check intel_context in log condition
>>>    drivers/gpu/drm/i915/i915_gpu_error.c | 2 +-
>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
>>> index 135ded17334e..56f05a18870c 100644
>>> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
>>> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
>>> @@ -1643,7 +1643,7 @@ capture_engine(struct intel_engine_cs *engine,
>>>    		return NULL;
>>>    	intel_engine_get_hung_entity(engine, &ce, &rq);
>>> -	if (rq && !i915_request_started(rq))
>>> +	if (rq && !i915_request_started(rq) && ce)
>>>    		drm_info(&engine->gt->i915->drm, "Got hung context on %s with active request %lld:%lld [0x%04X] not yet started\n",
>>>    			 engine->name, rq->fence.context, rq->fence.seqno, ce->guc_id.id);
>> But now you don't get a message when there is a request without the context
>> pointer. Which can clearly happen because otherwise you wouldn't have hit a
>> null pointer dereference in the first place.
> do we need the guc_id at all?
>
> Andi
Huh?

Do you need any debug output at all? No. The driver will still work 
without it. However trying to debug problems because significantly more 
difficult. When using GuC submission, the guc_id is the unique 
identifier that lets you track a context/submission through the entire 
system. When tracking through H2G or G2H messaging or in the GuC log 
itself, the guc_id is the only identifier available.

John.

