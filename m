Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35597B13515
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jul 2025 08:49:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8F7110E110;
	Mon, 28 Jul 2025 06:49:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HhUMCFOG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D4A010E110;
 Mon, 28 Jul 2025 06:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753685389; x=1785221389;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JvpTwr/0NeTMR40wyXi/LArjnFMv6fPUuFpN1lPFgko=;
 b=HhUMCFOGBDCLYhGMFAwhN4KrtAYeugLlfYSoR+1ZgX7Udq2c90swS6OP
 KLZw4cF1pmsT/H82EciW9brgM4OBGwIQornKDmNCCGsbpNGOTUkVGr78C
 JMuucmes18VPVr48D0i44HPLw6jBjD6ujpULg5ppWJ4WBCwlXT0eGI7mY
 Wp2f4/Sz/pbqH4cpPp1foAfqsBDap0QeFjPrYq8Bb53IMqQHrBBsg6kVk
 SQHcFeZNbLz6DeuYlqgcvtcQE6trs6wXM3V54f0Sc9Cwq2BRY6iHOVyMr
 DbMM8sVWBwpjn/FeLPjxJiBXS/8ds5XLpXJ7KgGhcltXFG2wd5IAJ68V1 w==;
X-CSE-ConnectionGUID: NeZBjqphQRWyZ2qmVtjrHA==
X-CSE-MsgGUID: hvDIdIq6TVSuyh+1oToWaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11504"; a="73508615"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="73508615"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2025 23:49:48 -0700
X-CSE-ConnectionGUID: 7R/0hbJNQpimXoxoKW9wOA==
X-CSE-MsgGUID: f2O/U1LFRJWb2YVSMnKsHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="161923326"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2025 23:49:47 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sun, 27 Jul 2025 23:49:47 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Sun, 27 Jul 2025 23:49:47 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.82) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sun, 27 Jul 2025 23:49:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yj6+4EtTVy+sHjJKhYPFFq7XRgqTKGoQF1SUaK3WNEd5r0Xo5awaTYQ8gfeeOr2fzqzzAm3v2j07Xq6DgFkBA8c2Mwef5oUZ9TPfopJqwg5QdD3RMUAFwryV3IWUR1gjXQdQlKCjlgraRC6Nu08/pa7LsPRs6Ue7YkyCIzTbxTa18CIE9IWA8fPdQH548r5YtxA9JDIKQ7NOMIFlXrlQYK6rABQhXj4GeIcm9k953U2daanGpMJTvsaCIJtWUMCc/MUJeWYPamqTYFPapDwp5eK6mblLGt/PgdYVSZmwybelljxbsK/rGbz6zrf3yeBoYOzZYfBQ+JA4amLDMmcHzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kJSuZzj+AJP9jJGqJccjDHx/fRBVaR35RGDhPpU2BVw=;
 b=hvXKrwFAO1Hlw2dgZUxObWlpZkbnmnkKB4/fS01+eGWuGU8APfWASj4XdZYlY/5WdcP82+70Tl7PnyPkeuCBHfXJ0oFn4VW15KTkT4ksO8/xNctzgsNyn5DjPdkvpJLdABalms31VDuDRyo1T6fgvmjJjO6Saj8SK+hhXJOkw3sx39+av/ZYPi84+gQd9AVAHpm+y2dSpJRm1HYAu0J1hphWAnevMWrddr9jvyaijhHOHlNjZNeA/wEglNmFIpS29F6XDWGuSZP40zSlLRXzPQ4fjkgY2Y6ptwQAGirNfoqQUwSW9357rX+G5GE2Vhdb1tAuOcxF52haJDVu8Js8cA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by IA1PR11MB7175.namprd11.prod.outlook.com (2603:10b6:208:419::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.26; Mon, 28 Jul
 2025 06:49:45 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%5]) with mapi id 15.20.8964.026; Mon, 28 Jul 2025
 06:49:45 +0000
Message-ID: <04f98f4f-fdf5-46b6-b1ae-07c146aef1be@intel.com>
Date: Mon, 28 Jul 2025 12:19:38 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] drm/i915/display: Use the recomended min_hblank values
To: <imre.deak@intel.com>
CC: <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20250625-min_hblank-v3-1-6f89a55d4bf2@intel.com>
 <aFwx4SpA_OXt05Pd@ideak-desk>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <aFwx4SpA_OXt05Pd@ideak-desk>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXP287CA0015.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::27) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|IA1PR11MB7175:EE_
X-MS-Office365-Filtering-Correlation-Id: 87645efa-b062-49bc-0d36-08ddcda2efcf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QUt5UzJZNENFeXNHNU12ckhSUWtWTlQ1aTBPUDViVGEveUFlczgyMUY1M0dS?=
 =?utf-8?B?WGg4WVRRVTlCSkpkNWhqMzJQTUxoTml4VWh6aUtzcXN3eWpLczJ4TXd4VDdm?=
 =?utf-8?B?enRaWUhiZ1ZGZDNTUVd6dnA3MlpZWUdwVWpLenBhNWUxRW9udTErbWhxcC9r?=
 =?utf-8?B?SlpMSHJmbGhudi96eFJ1NWhtR0NRbWRCZmxHbEZRcllWOTUxY3pMSXp1UEJk?=
 =?utf-8?B?ZThIWDNPVk5ybGp6NmhrNWFBMERGYVRWQndMWlgwRlM2TGx4RVNxbERzWndv?=
 =?utf-8?B?eTVWM3hGUzdKVEVqaXZlUGw3ZGh1VnJJd3lXbzA0ekdXbmt0TWVsRUV3Rktx?=
 =?utf-8?B?d2YyZm1QRlgrMm1UaHp6ZzZWbFV4NUlxck9CSGw4U2hHYnZTSXVqdWlaUStM?=
 =?utf-8?B?YjJGTkUyR3FwL1F5MC91L3BaSjg5Q2x4aU5TdXk2R3lZOXVJNDZvd1JCSWFp?=
 =?utf-8?B?enJlY3FRckJLaWs0RXE4L2lObDdsaXFrY0dFczM1dWdiSDN6WlA4K2h0TmJP?=
 =?utf-8?B?RWxBNnRDQzNYemtSdHlIeG1XdENnbTZOWmMvNnJaaU9JSXRIK20ybXloYUVS?=
 =?utf-8?B?b2xScUJBSXdQYWpWMGxyUWF0Nmk0dXBQRXVuZ2VoNjU2UVpjWnpmeVJxV3Bj?=
 =?utf-8?B?Mm1iRm1XYytYaVpmOXREZTZiR2kyaXN6YkNLbW1vblMwYUxMUXNjNStDZ21M?=
 =?utf-8?B?OG1hK2htTlN3d2kxcDI5VzljL2tndnR2cnZxQWE4YU1SVDBaZ3lvLzltV0F4?=
 =?utf-8?B?Z3QrS3FUS05tcXN4dmpvM1ZjVFpGbm02bGMxUVpRRVlFcjhiMDNpTStnQkYw?=
 =?utf-8?B?TnNXU3c1L0FvTVFCOVlUNGt3Y3BsYkpCSTBZTzZQTEJ3ZmJpdDRLMnhsV3pt?=
 =?utf-8?B?T1BXbkc4WDVZcllONUordXdlOWd6OTUrdGlPQlRybTJpck8xdytXMVAwUkhi?=
 =?utf-8?B?bUkyaUlYT0thaldtVDdYbGFZaXpsNzNFL2xZTjV1RXA0eVkwK09xR0xNaUw4?=
 =?utf-8?B?Sm9VZTQvcTFaVzY2REJMTkNWRTVaY0tGT1RjNUFNbkx2c0MyYWZjY01YY1ZY?=
 =?utf-8?B?YUw1TTFvaDdDdXlkdmllTHRJQjV3dEl0MGxjRFZIWFJPUjl2dEpuQ2FHQzB6?=
 =?utf-8?B?STdQUjlTOFpCQ1dYM081Rkd6SDJhTE1Yb3c4UUdmckJ5UFVza1JaVDR6eFl6?=
 =?utf-8?B?bWJ2c3AzSTVNZXNsNWZudjdvYU9MRVNhVjY4ZWRtcUJRenRPYnJLbW9YbHc2?=
 =?utf-8?B?U1ZBWlM5U2FNQ1I5aXhRUS9oTFlmUkhMR2FrODA3cmZkdW1LMFJ0UFdwQlFS?=
 =?utf-8?B?WXNmUi95UFZ5VlRVL3JxeUFTVTRqM3FHVmFCZVdiTXlrNHc4VktUTjVqcW5X?=
 =?utf-8?B?SUduMjdmenlXcXFhQlpvcWdHMGVxckdiSDg3dUd1MXY2OVdVckxPTTFQTW1N?=
 =?utf-8?B?cGgyYjk1aHlyV0xhaUprQ0cvN0g4VnNIT1UyZWZiNEtyZlJlWk5VK3NzTFlM?=
 =?utf-8?B?d1pVNTN3RGZjNmdnRmpUQWE2S2NrVk9MOWNCTmltR1B3eWNnSWloUUhjYzNv?=
 =?utf-8?B?SHByeHNiTUprNUs2cXQ5VVpKdkQxdExvUjF5bDhaN2ZkSSs0bkxiN0szNXVH?=
 =?utf-8?B?Q2xTVndqaE9xRERtbGF2bFdoTDhsUkkrbFMrQTBKU3Y1T1ZXT0lIZVJkNHlq?=
 =?utf-8?B?bmdLWXV0SGhIbE05Ujdlcld0bU5ybnZ3WHVSZERlbWhPNmYrQ0cvZEhPaDRs?=
 =?utf-8?B?TTJ4aEdLUkR0QWx0K3lScEpvaGFSL0JQdzAwWmNSYUtzYnVaTG44K2FXZklU?=
 =?utf-8?B?MXhXSVgxL2loSlNxMm8yY1cvK3BYSjFDT212T3lYY2pEak5jNlVyRFJyK3hC?=
 =?utf-8?B?ck9WMHZNbEdKVmwyWDVpRXZhSDVhc0FCZHkzeXFEcjErY1htUGJDdU0vbFlx?=
 =?utf-8?Q?MwLUeOGh/1c=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SGFybXI1Y2lrY0MrOERJUWVOUVpURUFwK2VORFN5NVJXS2VLSTNLcXVWbFdB?=
 =?utf-8?B?TWdZS2QrL2ZHQk0rMG1LYnBGanBiNmFmbmt0cGFpZXVNMnVlM3BrK3hxTTVh?=
 =?utf-8?B?SGFxSmI2d2JKWkQzcVYyTGxBUU9QRStudGV1TUl4cVNLa0VlV2I2clAyb2RE?=
 =?utf-8?B?aFY2Sm5iY3BERXJlOHVMbFRpSDhjb0cxVG5kQUZLOTFONjY3ekdtb2p4VEl3?=
 =?utf-8?B?NWZLMFNVQy84RVVnZENMVkxSb1crekwwRjRHRlZ0UllGUkRVNGhxcUJ2azE3?=
 =?utf-8?B?cG1uVW5uWDZmTExKTVdrZFF5UXdlbUtsbDkxbXRSdW5DUi9hUVdiZzZQZGJP?=
 =?utf-8?B?S0YwMHdlR3grRG1Id2VPUEhSYXF4bzNEMjBYS1ZZLzFXWGtiS1hlanJnMVlV?=
 =?utf-8?B?NThmV3RNMS84dytBdHJXeW9hWWZZd045YVQzWW1UcWsyWlR5Q2NKYzQ3dUpD?=
 =?utf-8?B?eXNCcFdsOFQveU5nNFQ1VEVlblJxc3lrQjh3cHhReExUVnNXN2gxK2UvT0l3?=
 =?utf-8?B?Q0RXRUhiZk85Ykt4a29pUWtQZ2xyc3Y1UnZqQUhvRzZONks1QnlaS3pndUJM?=
 =?utf-8?B?dTZuNVdZSkVwdDh2U3hlTE5QekpvTm9TQis2WFdOQjFBQlVuc3JlRWpPdzJ5?=
 =?utf-8?B?QXBNYVI5WU9wcVZ3MDdzMU84L3Q4S290a0VqZVNadUdKVkswNUQra0NETWFG?=
 =?utf-8?B?MWY3YUh0Tm5ycG84dnhJQ3FwNENDSXptVEtJYllOVFlNa1JFTkV4WmJGaHBC?=
 =?utf-8?B?bGNJRWZMeHluYXY0ckpwdTZwTnVWTHhLQzI0aVMzNE8yMkdPb09QdXFmMnRk?=
 =?utf-8?B?WG9IRDdLQ0hWKzFuUktxK1IvR0QvYVRJemdHK2RhRnJHSm4zeVhmN2dWYjRJ?=
 =?utf-8?B?eFlJT3loL3dwNCs1R1VrTnVaVmMxUlJJOVFaNXRsUS9VMUtmVTZDSkw0L0FF?=
 =?utf-8?B?ek1HU2pwMWc0c2RCYnRUQTkxeitqb0FZdzY4bkJaSjNZTjRrTVF5Y3BZd2FB?=
 =?utf-8?B?a0ZVZTRxdFh3TGJISG9ZYWJmVDh2bVJLS2FKUGQybGtaWlRvcmpLc3BoNE5G?=
 =?utf-8?B?Wjhta3NVQjhvNEFrbzRVN1ZHYmwzUGhVbTFLSFB0RlFtclRLc3dlRkZ3S0lw?=
 =?utf-8?B?K2tmVzVQVkUxY09oOUdZcTFHcXVHRVRyWE8yVm5zTzUwWjlvTE0rdU1vdlYr?=
 =?utf-8?B?U2VUK2I4VmdObmgySWloZ2IvSlZwK1hxY0U5bVlVYURQaGtKQTYrZU9vbk9I?=
 =?utf-8?B?M1FibXJmV0ZKSk1SNi9WejQ2K3NWZjlsMU5naDRSN3FKYzdCVnExNGhXbVFn?=
 =?utf-8?B?ZTJvQW0wV0hiRGJ6b3BaakRXb2J2L0VTRHlwbEEvMmhMZnNPNmFpd2xiK0FY?=
 =?utf-8?B?blloWElxd2NoSGZOOW5ZR1hnbmxDcmlJVThsYURkTFArejlLZFl1UlNPbkU4?=
 =?utf-8?B?VHF2RjQ3Mnc1UWR3Wmx0aEhwckJZR1A5VTh6UmdoSC8xR3VYd3lIekl3ODV1?=
 =?utf-8?B?S01UditQdnNha1dKUElyWXNCVXUzM0lmYTRXOFp3MGZNVUdBUG1EOTlWRzA4?=
 =?utf-8?B?TGE2cktTeG5vRVIyWStVRkM2ajBROHVrNGZkZ3VJeG1jQk5nSG9vRlRzdk4r?=
 =?utf-8?B?REd2YkpjejFPK2NXdE55MU1IZU93M2JtOE42SVI1bldOKzZaVUdDK25PNzBu?=
 =?utf-8?B?VEs5VFFrZFZaZWhqRGpwRm95UzdrTHhBN3NidW5ONnY2dFh4ZTh0cElrdFpi?=
 =?utf-8?B?b0g4dDMrWHZKVkxUOG9HcDZUcHptOWZ1RGhBcVFnTzlPTFlQK3hyTHp4enpp?=
 =?utf-8?B?eEgwblU3eG5GcE1vZ1JRWVJpMTN1YjBubGNmcmhEMGFOaGRPZjNTbHBnMk93?=
 =?utf-8?B?Mzc3Qm1HalJ1N1ZpSDZrZlZyV0pMNk9RbExpTkc0MlhKU2I2alEvTytzcitN?=
 =?utf-8?B?V21sZjNzd3Q2MHg2c29IdGx3MGd4YTU1dlo0UWF4MXhDSEhzOGthNTdwRTcx?=
 =?utf-8?B?OWxheUowV0xMcWJRNzByZklqZ3J3YnRCTyt6ZU1pSmprYjF4TGtFWU1BemZh?=
 =?utf-8?B?OGs2RkUyaGFRSVhvQUdmN3B3TkVDVUJGSCtwYko2NyswYnVSd1hHY1F3OFEr?=
 =?utf-8?B?M0V3blVGc2xpQWVodW5JUldnd0N0STVCOHIxeDAzS3RjZDU5Nk45RmVJQUMx?=
 =?utf-8?B?clE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 87645efa-b062-49bc-0d36-08ddcda2efcf
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2025 06:49:45.1436 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GmdosfBQSTgvA+KPNSSajySq6xx57biT64xnrkDfps06jvYiEBj3YsNfe2ain8PiREwgEd4v8Sl9kibfnoIGFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7175
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

On 25-06-2025 22:59, Imre Deak wrote:
> On Wed, Jun 25, 2025 at 11:04:07AM +0530, Arun R Murthy wrote:
>> Use recommended values as per wa_14021694213 to compare with the
>> calculated value and choose minimum of them.
>>
>> v2: corrected checkpatch warning and retain the restriction for
>> min_hblank (Jani)
>> v3: use calculated value to compare with recomended value and choose
>> minimum of them (Imre)
>>
>> Bspec: 74379
>> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>> ---
>> Changes in v3:
>> - EDITME: describe what is new in this series revision.
>> - EDITME: use bulletpoints and terse descriptions.
>> - Link to v2: https://lore.kernel.org/r/20250624-min_hblank-v2-1-9110a9342d8c@intel.com
>>
>> Changes in v2:
>> - EDITME: describe what is new in this series revision.
>> - EDITME: use bulletpoints and terse descriptions.
>> - Link to v1: https://lore.kernel.org/r/20250624-min_hblank-v1-1-5c100e4a8b05@intel.com
> The above 'Changes in vx' templates could be removed imo.
>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 17 ++++++++++++++++-
>>   1 file changed, 16 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index f48912f308df7fd26c9d089e8f1bd096bfc8df95..c55315fb74734fded40695bae40dd19f71a9786f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -3175,7 +3175,22 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
>>   	 */
>>   	min_hblank = min_hblank - 2;
>>   
>> -	min_hblank = min(10, min_hblank);
>> +	/*
>> +	 * min_hblank formula is undergoing a change, to avoid underrun use the
>> +	 * recomended value in spec to compare with the calculated one and use the
>> +	 * minimum value
>> +	 */
>> +	if (intel_dp_is_uhbr(crtc_state)) {
>> +		if (crtc_state->dsc.compression_enable &&
>> +		    crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
>> +		    crtc_state->pipe_bpp == 18)
> The bspec page describes this format as YUV420 at 6 bpp. Not sure how
> that would align with pipe_bpp == 18 (which is 6 _bpc_). Bspec could
> also refer to the compressed bpp, however the driver's minimum
> compressed bpp is 8. Could you clarify which bpp bspec refers to?

Here since the check if for DSC, its compressed bpp and even though 
driver's minimum bpc is 8 as per the calculations for bpc 6 min_hblank 
should be 2.

Thanks and Regards,
Arun R Murthy
-------------------

>
>> +			min_hblank = min(2, min_hblank);
>> +		else
>> +			min_hblank = min(3, min_hblank);
>> +	} else {
>> +		min_hblank = min(10, min_hblank);
>> +	}
>> +
>>   	crtc_state->min_hblank = min_hblank;
>>   
>>   	return 0;
>>
>> ---
>> base-commit: da56936fad6f5e1d5f0cef8b50277bfb071eefe7
>> change-id: 20250624-min_hblank-8af8d2626ff8
>>
>> Best regards,
>> -- 
>> Arun R Murthy <arun.r.murthy@intel.com>
>>
