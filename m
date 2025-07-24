Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 332B0B110E6
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jul 2025 20:29:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C78A210E090;
	Thu, 24 Jul 2025 18:29:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="djbQTiHO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5419E10E06E;
 Thu, 24 Jul 2025 18:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753381780; x=1784917780;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=U/U4JVvtGlEQJJX1pPB121k1QO/S9+JL1A+i/TZ194s=;
 b=djbQTiHOmc093Aou0O46+5FyIxMH6P9Sq1x2Gso5PwbqWZ2PBCnbS7oR
 6miPhvE3D+8hMG2zOkOebUpRyQ5T7+BP72xmMm4EyBraHREFrFzICHJE1
 rhgGsrBZFWXPR3zefHG2z0nZHE0ThzZMeMZx8VegHKAINkpTs5u+l3Wal
 fDGuBiLY75Z+ZaELMXZnqkGUBj3Db8i/0f3S+fdJRwFu/KXNAKCh0ret0
 JqzqJqh0RMfd/Izd8xqMuv24wTGArhkgPXTcdpfS4zZh4qHdM5gjUGJBE
 YaQHs0sCDfTeHzeyEntZ4pIM/6d2U3rVeI73SD74bJG5d45mGRN6SkEco A==;
X-CSE-ConnectionGUID: Or5G42eBSTuAu+vy6MEhKg==
X-CSE-MsgGUID: GeP6IjFNQgy96nOcoOIUHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="55587850"
X-IronPort-AV: E=Sophos;i="6.16,337,1744095600"; d="scan'208";a="55587850"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 11:29:39 -0700
X-CSE-ConnectionGUID: UkRtt4W6SVOnwky+CLIIoA==
X-CSE-MsgGUID: x/iRO/9VT/exVaV6iXiRDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,337,1744095600"; d="scan'208";a="165744536"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 11:29:38 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 24 Jul 2025 11:29:37 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 24 Jul 2025 11:29:37 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.61)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 24 Jul 2025 11:29:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gvenOacG5Ij9gtzEg3lJo/tnraWN2MeZkdd3PFNeq9B8wAeiFv/BMVHX3BYD3tNNiEFl0pE6B9Db/o/m2HAQYfXN8lf1tCCL4q3MMep9xiy63CESoXoaVYQISAMTASiMKMK7d11f5Gbz05uFaKgvQtRRJZh/9f1otex/ExCV4oLc5G+EaMKMSWmu8QppjzHdo+cNImWbGuqZSNLx8cl08UaFPQ927TEFfa+N8nIATeho1GRPocjyAe9mzjsXv1vjptFxTiMv3mPxc/aN9S+5OS2Ylr0eJZkyvPIit+F19qBwehqRyChhfE89yTKABP1wRceRWXCBgd2VkoT40ZfKrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cdY6mVeqMAMPgYP7KYUHtXSGT4Oa1rzz9yh+Vnh2NcU=;
 b=ekEcV2sBHX2QajQvHVe3IwmfF6yoovaeZUf7uPPw7gRQGhI24mDTFPgYPscOkFnf3MvAM5i0hkJCaSDiO0IrTtkwdQ0kkK5UJUNElkC2nN/ltW/LAJ/STb85U8kHGLRuM/0QhWNSnZRxISIUvchLzsRgEA5ri+yKGpsI6EUbVa4PoNug/l6fNzrOn576YibWMcO+OgIHWFL7OHDbPpg29LaVwiJHkLDYD1kzYwxVcZmsY/hyofvB51ePd9MgR/3hPLfkcst6pA9NjDqJG4Lf5++PeR6qF3izgrghcx4iUoNvmJmtsbu+9Zqb4ud41tnlFdo9wbIPovkrR8YLZiJ4Lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH8PR11MB7023.namprd11.prod.outlook.com (2603:10b6:510:221::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Thu, 24 Jul
 2025 18:29:07 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%7]) with mapi id 15.20.8964.019; Thu, 24 Jul 2025
 18:29:07 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH] drm/i915/dp: Fix disabling training pattern at end of UHBR
 link training
Date: Thu, 24 Jul 2025 21:29:00 +0300
Message-ID: <20250724182900.160891-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB6PR0301CA0070.eurprd03.prod.outlook.com
 (2603:10a6:6:30::17) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH8PR11MB7023:EE_
X-MS-Office365-Filtering-Correlation-Id: 84d5eee3-62e4-487c-863d-08ddcadff98c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|366016|10070799003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?blFOVTdjVzBLSkwrVllkK3FhdTZqUE14MHU0WEhlOEQyTmw0L0xqKzNCSHh2?=
 =?utf-8?B?K2dOVlFaZGNMUVVrOU5pWDNsNXdhWVBWaVBxRjZPcFVRRjBtcDZKMHM4a0ls?=
 =?utf-8?B?UEVmV1Zabk5ENkk2UWg2SzJ1bi9jUnBhaVc5eW9pdWRFYTF6OGZHSnZ6aCsy?=
 =?utf-8?B?d0h5Skg3UjVZeHpCTGp2Z3E0L3hLeFdhcnlWMGJORnYwQVdlVXRyRFQ1Sjlx?=
 =?utf-8?B?TzMrNXE2K2pDNGNDL2VEaXVzSW56QkdKZDF3ZWVjY0hKcGlXbExRSno3T2hB?=
 =?utf-8?B?U3o5SEhOYThHVkYwU2NJNCt3RGI0UzZ1clFDYWt1dDNPT0NZZWV1NXNlMzJM?=
 =?utf-8?B?L2dCdDVBQks3U0pNOW0vUk83QVJHdmpRTC9nUlNKWWZUT1dlYVQ0OUtEYi8x?=
 =?utf-8?B?RHM5WURZR3QxdEl1MkVyZjdBYVcranl6NXlkTDJRUWZHZW5FY21zZUx4SHRX?=
 =?utf-8?B?VEhhc1lrVldSeEdubFlta21Oa3V1aU5hVW1hQlFYRjJDVEdlUU5VNHYzSmJk?=
 =?utf-8?B?N1kxYk9kNElqYlJFUTRTVllQaHMzZm9WdTZZTitQQVFzdGlLNTZtNDlGMzdU?=
 =?utf-8?B?RzRwM2pBL1ZLRUc0Y0hqUDRVeXk2ampUZFFxRTZiNis3WXEyUi9BMVNWYnBS?=
 =?utf-8?B?ZTdpNVU1RHllOXhWc3BzSVJZZlFUTGxia0hUdEFiaGxRVlNObzY2allQK2Nk?=
 =?utf-8?B?UVZzZjRMSXliZUdsY0lLZUhibTh0ZENhMjZwbDY1WlB6YitwWEw5Vlhnd2l5?=
 =?utf-8?B?QU16dG5zZFJZc0F5MUkzeC95dm1oWTZJeXJRTEFtZGZCUjFhelBvZXl5ejdX?=
 =?utf-8?B?d3hPemJLM211M0w5KytkV2l4S1YzODF2UVpJSkp2NWlJcDN0M04zNkY0OWdG?=
 =?utf-8?B?WnVuUU5ma0ZFL1RiU05RK2lHblFQN1dpUVB0QythOVBGU01WeXJNNHpOR1F0?=
 =?utf-8?B?OTdzREorcEdUTE9SdE90NmZtSkNxNVdTV1c0L3JMRVhpYmpqb3RhU1JsMVRo?=
 =?utf-8?B?MDRmYUdMR2Y4K3dmZmVJLytGanR4SlVVSVdhWTRZb1ptMUQrTjFDcGYwcWtt?=
 =?utf-8?B?MG5wVWlHenJqVy9tZjcvTHJCMnhaSWlhR1NUencwZDA1Y3VjK2tjTkFwZXBQ?=
 =?utf-8?B?Q2k3cE1vT2trL3dQVmowUTZPcWRaWmNNcVdlV0pFNlByeGNLb2ljZE4vdHRM?=
 =?utf-8?B?ckUzUUNScU9GSzZLZEUveEVCalN0TnZBSUJhYzloTVZUT0FQemZ2YWdKemw2?=
 =?utf-8?B?eW1iVjcwOHlTaDk2YnRpT1h0a3lscEJpZVJsemExSG93VHJ1bFdTTG5vUHZY?=
 =?utf-8?B?Z21LNjhUb1FCc1JIQXVLTzVham9WQ2dIT2dPV2dpa1FJQUN3KzkxK2pUbkh2?=
 =?utf-8?B?Tzc0OFZLVmVMb1M5Yk5KR00xZFlyTjNMSHlhSlQxUHlLMlErRFUrWUhLNnVN?=
 =?utf-8?B?ekd6SXVMcXA3bklUU0s2T0haNU9YQStNcERyU2s0VDVyc1V0NU0yUFg2R3Vp?=
 =?utf-8?B?cHB2U0Q1SXZBb3NoSnFockh5UzVyQ0RuZFlNdy9xdSt5SlE1b1RPQmxwWDBD?=
 =?utf-8?B?bndvVUFpWnVLYVVpTHJJOGh3cHRObW9vZElSMGY0dHliQStPNnE4VWM2V0hE?=
 =?utf-8?B?WjUxa3BmYkoySVZIaE9xRlV2enRsMmcxUzhhVHFKdlhENmdwd2lqWEttUlZS?=
 =?utf-8?B?a0VNTDV1TkR6N1RxeUJvYXJJcEdDMFY1ZW9aY0ZIRUxncyszdEJ1cVhqSVJY?=
 =?utf-8?B?WC9uTlFRcXowU2kwSnA0VkJvTGtaNHJQZUhzVGZmaDIveDFQaFBJejcySFhl?=
 =?utf-8?B?ZUhKc3VWSFlOVU9STDNSMnRkb2FtYlFMSkdUeEhYOFJSc3FIUVhOckNjcERy?=
 =?utf-8?B?RTBpZFhFWkdIRnB0YXJHS0FDR2NhOWFGamlzUkVmWjdMNDJEeVZ6YmJFMXZD?=
 =?utf-8?Q?v9NyWszUoL8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TGUvZ3dNVkhmWHBHQmRaYk1pVjVMeWJpd3BJaFYrRGxLaXd5TDFsTmZVNk1t?=
 =?utf-8?B?d0ZKVTNETXJtc0szcXNvODcxY1pJcFhQTUlHSkhEZnlkQnZlSDJKcFA2cVhL?=
 =?utf-8?B?ZHYwSGlFZ2JueVA3Y09aWmFWZ1hkZ1Z5K2JlVUtxWjd0Wng3RXQ0ejVjMGN1?=
 =?utf-8?B?cnhqQ0xtQnlxd2VhZGtVWmlnR09FQVVDbEt4NU84SDN6b0RhcGthYStQeEZa?=
 =?utf-8?B?cis0SldXVjE5VFVXeXVHYmVoTFV2K25wM1FiSTNld0NHQjU0OFJKZ0RDMHMx?=
 =?utf-8?B?RzY3NDNQYURSUkVoRUdtTWV4S0sxelNXdU9lSE8rM0VPeVUxV2pQa2loM3No?=
 =?utf-8?B?MGF0bnF2aFNpS1E5ZWw4ZFhrc1o5a1dCM2NydjEwVXQ1K3ZPUmtNdGNqRnRQ?=
 =?utf-8?B?dnFZV21tMkNLMVUwTFBKam9zaUtyanN2Njc4a0RZVW13Y1NBTGoraytLdzRF?=
 =?utf-8?B?VXhjK1Njcks4cTNmdWlZV3ovb1RwbExyTjdkMEpNT1ZPSUlTOTdXcHJwWUxr?=
 =?utf-8?B?V2lNSWV0M29nS29KVkhkZmF2b1IzZUdaSjFweTBBSm41K081VG9lRkloQ2ZN?=
 =?utf-8?B?ZXdFNkgxMFJ6Q3FkdzVpblBTYURJdy9ZTm11RFY2aE5qcHRKbEFaREFUZ0dm?=
 =?utf-8?B?alBPdEZtL3pFVTZLSkkwT2hmTWRHbnoyT0JDMjE2aVpDTjNwSWpLbnhraWtk?=
 =?utf-8?B?V0xMOFNlSnlYVXkxVXBXODBzNVNXZEowLzhSQXdORmJ5aVREcUxoQ3oxdWRQ?=
 =?utf-8?B?QmtpNnVXSE00TWt6RENWVFdhUVdoTXFHaVJvZ25UZ0tPR1E1ZFZlRDFVbUNQ?=
 =?utf-8?B?MzFOVmVmekpvdTNYcm1pcDc3cDhER0lHeG1VaHdRK01zay9aWVo2M0w0ak8v?=
 =?utf-8?B?dWdKNkp5R2lUbCtPZEkwUmQzYVZCUTJ4RkJ0NXdGWVRVYTdsb0Vxd1ZJSUZ5?=
 =?utf-8?B?MnN6SlluSlR2VHloREVPdVhXTEZ2OUJkWnlSUWhVb0NuQmNSckI3cTdLTFJV?=
 =?utf-8?B?NlBXN3F2aUpZM0NrZy9EU2w0amlaMkJMOEI4TzJVNXJ4bU1jc2ZCNjZpWGN0?=
 =?utf-8?B?cWtsUHFNT3pwRVBpU2xvUEhueDgvZndxdEVZQ1ZBMHh6bHB1NVlwei9kdGpO?=
 =?utf-8?B?MHJ5ZlBiSkExSFBnYWZHclV1L1V0MzFzd3BtVlFGa3NNTDFqVFVUN1kySGpo?=
 =?utf-8?B?dG9wSWxXZVNJQVljLzd6ME8yVWQ4UE1sQktPRitCajgzS0xXZGpOMGozV2FK?=
 =?utf-8?B?d3ZTakgwQUgzL2JpTnVwb2dMa3IyeUY4R2xZeDFTT3hYRDhnQmRaOHlFZDJo?=
 =?utf-8?B?dmxtd3dkNXIrWFkvaHdpYXVQczh2aWEwZTR1S3pSL0VkMU55WnlmUG9wdk1J?=
 =?utf-8?B?NEV0dU9YV3RBN2dmbXlmd0szMVJ1U0QwNWlLbDJBZ3RFNkdMdjFxK2JOUlZv?=
 =?utf-8?B?ZVprYTlQclJQS21ITk45ampYQzQ5WmZwODJXTjkveFdPU0FzSS8rRE85TWpq?=
 =?utf-8?B?b3d3cjdyWmdyQk04QTJ2OWxNdEFuY0J3VGpaekh1NEdFNVd4dmhWUGR3SlBO?=
 =?utf-8?B?SEp6bE83U0JwREw2eTYxazJva3lkb3BvZWRrbTVOYVJwQlVsSkRhUXU4SUhq?=
 =?utf-8?B?UmJxbXllV0I5Tng1aFZ0TGlUSXlkM3JXdzhTbUhITXZNOWRDYzY2T1BiRm5s?=
 =?utf-8?B?RFY0WEN1cUJMQ0dUdFlzQ2dpOC9DcjBoRmt4ZFFpSzNCUm1iRlA1K2FySnNh?=
 =?utf-8?B?b1RCa0d0UXFPRjlid0w1eUc0MFlaYWthSmwyejBZRnhWa0dVbFdqK21jbHRU?=
 =?utf-8?B?dks5Mm94ZzFCblJZT0l4c0E2M1VJbU9YbWZldDNLSnI3VUdWQkZTQWtRUVAr?=
 =?utf-8?B?QzNCYXZWRTBMc0Nobk5wcUJ6UUt1a2xhbHY1ZGFTTlRkellsUzIwRGU4MTJq?=
 =?utf-8?B?aExXYjMzbnpiTDFUbkVpRUJ0TGtYUmVCRWlXMW56K21pMWxRaDlCRytyK0E0?=
 =?utf-8?B?bmhYKzRFNUpiQ3FWZEVQT3NWaVBjY3U0anZGejBSb2hMaEdGcysvWkhJWE0r?=
 =?utf-8?B?VGh0QkpIbXBiOHFsdHA4ekc5aG1aOGFTaXZNeXNmZEhXdEVvT1Z6Q3VXWWFZ?=
 =?utf-8?B?aFZRRFBDU09zUG5ralBtT3pXWHYwakh2M2NpZXgwUXdic0R3cnBhMmdUM1FG?=
 =?utf-8?Q?IAziTO6wd32g8PoB7k59tSjvMiVKkDlyTxN/E47a26zt?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 84d5eee3-62e4-487c-863d-08ddcadff98c
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2025 18:29:07.1286 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: opy1Ujj/y6t7ywTFsLAfKU/Xxwxto5/5vWr8o9doZOGCXivdZ7TrK0PmuqJBvFWeripy/59mw4B6cpxzKd/5MA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7023
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

The Fixed: commit below overlooked the fact that
intel_dp_link_train_all_phys() is only used for non-UHBR link rates, but
intel_dp_stop_link_train() is used for both non-UHBR and UHBR link
rates. Hence, after removing the disabling of the training pattern from
intel_dp_stop_link_train(), the commit missed adding this back to the
end of UHBR link training in intel_dp_128b132b_link_train(). This left
the sink in link training mode at the end of an UHBR rate link training.

Fix things by disabling the training pattern at the end of UHBR link
training as well.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Fixes: 11fab5a2a1ad ("drm/i915/dp: Clear DPCD training pattern before transmitting the idle pattern")
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 344b74109a830..9d14b4e595456 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1609,6 +1609,8 @@ intel_dp_128b132b_link_train(struct intel_dp *intel_dp,
 		intel_dp_program_link_training_pattern(intel_dp, crtc_state,
 						       DP_PHY_DPRX, DP_TRAINING_PATTERN_2);
 
+	intel_dp_disable_dpcd_training_pattern(intel_dp, DP_PHY_DPRX);
+
 	return passed;
 }
 
-- 
2.49.1

