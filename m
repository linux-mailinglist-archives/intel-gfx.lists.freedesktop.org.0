Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CAC9B2B865
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 06:40:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDF3E10E535;
	Tue, 19 Aug 2025 04:40:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FujuzUbE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5599F10E530;
 Tue, 19 Aug 2025 04:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755578409; x=1787114409;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rLS52TVl5y/EgK/C3MNUbomWXC7THcFpDjcILPUuJ08=;
 b=FujuzUbEDrWSGkDFnerq5Zxo+7jfcobnOAbxpvJUUJYZJXNx5Hmra75j
 uuT0ABHAl+O39QoPxl+rY54ZkvNQiefoggS+H+aV/SEnVjeXIveoT+DzP
 f13kzFoQD0DqFt+xJ5jbDzfaiRWtegsySHWolXUL7LL66QnOCnt8wehpq
 Q32seBensqZfz5SctTPZ3IIWLCddJ512GzAxXAN4A+JStkTJT4HA+aFlM
 /lfgtM2AVjwoxXsMIP+kxAebkOojhwUWSCbP9Zf2LrzsSs76vhBfZ2gRd
 NoaZD1YEWb8pMWemfzbEZl7Pcz0wWJDpt1dF6t/LGEm6dx/wydw0KtWSr Q==;
X-CSE-ConnectionGUID: +mKUyI0zTAeuuJ2psicqdg==
X-CSE-MsgGUID: MSZjXXbiRPyFiD4b1rXSWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="61644760"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="61644760"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 21:40:08 -0700
X-CSE-ConnectionGUID: ubG3PF1tRbmfXvCa8B+gTA==
X-CSE-MsgGUID: I5UMuFD7RDy8N6OqEZv2RQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="204898942"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 21:40:08 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 21:40:08 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 18 Aug 2025 21:40:08 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.69)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 21:40:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nxntwbFNHIFAQ6BXtg7Cgg6f7mOltza1GFIi9l022iO9IIWFEmtXAGONqGZTmqZS0ZZnFMK4lX6CEn3ijzuEbH8Bh9beEmr0EeNukWOq/1rQ11jEGcCxpgf5/BEnUdWlBr6Bw657zoP5J+Qf4EgowbVVj4IDvl70mPqOd8uQUz6nd62VWy4wABvs4q6sJjO8PagxVkqUlB/S6nAZFcQmJRS2qz26jTFUIyCVmIE0Daznry+58RBSokXShTmOHmsj+gLjIRKEqLkd6jkGUjG38axE3pJ+ReMKM4ZQbi1Ud/ZVBZKfBQbP/ios9cQqzRibkwGmlJG4M0pkZpDZeXyDxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XwLVpuur2uPjn+CSzKNZdawBJI4A8IANKJkGponQ/8s=;
 b=KyUKdk/3Ea9LAWxH1MYHR8n08BXRwd4l+3T6h46gPU2dQrlUGQDTeY3SJXwAuPjAadowUOS7mBr58uskfgVhosZBizabTb1hHOlEGEeP4t0sikSc3LdKg8igDbXfmGI1LnwgLzmoUORX2ruXEm/zrxkZGWT8IJWfwYm4KwZw6Hhrl4yjKwlcCw+5LEggSC+SzyNezhkEEiQ2ec9IQ5LgCND0l2aER9fGuCuEmV0az7gue5KiqUUTuXITz7Tgk0KVKut3EK0+5MD/A9TMyH6RZDcUW+6mByTYJs0+eiy8BLGRLClT6ku9s7edjHCEMG0rMYXRC07v+yEN4oVF0yIEaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB5087.namprd11.prod.outlook.com (2603:10b6:a03:2ad::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Tue, 19 Aug
 2025 04:40:00 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8989.018; Tue, 19 Aug 2025
 04:40:00 +0000
Message-ID: <5e20ad73-6649-4317-b66f-d83fe5541693@intel.com>
Date: Tue, 19 Aug 2025 10:09:53 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] drm/i915/bios: Add function to check if edp data
 override is needed
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <jani.nikula@intel.com>
References: <20250731051646.3009255-1-suraj.kandpal@intel.com>
 <20250731051646.3009255-3-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250731051646.3009255-3-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXP287CA0022.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::29) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB5087:EE_
X-MS-Office365-Filtering-Correlation-Id: d1e8fa4d-5279-4b26-1297-08dddeda74b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aVY3NVVSdUt4YXpJR0I1LzRxc0haczBPcTVseGwvQVluZkxIaFd6M29QOGtz?=
 =?utf-8?B?VDFVR25WemZwY1FRMXhJd1pYQW1wbmtXNU9NeEY5TVhtQnkvckdyVzhzYWh5?=
 =?utf-8?B?YjBlaVpJMy8yYjZtU3BiazU1eHl4Z0M2K1hyYWdVRVRFN0tUcGJXK3ZqWmRL?=
 =?utf-8?B?NFE2aUxnOUdsMFFIdUU0TE9QVjU2RDN2ejJxbTJBSEVteTdnbW5OSXVaQjlN?=
 =?utf-8?B?aHgyRGhXZlhieTI5QnJOR0RpOTg0TU55di9LUElkTEpFc3dmSHoreG5uSXFn?=
 =?utf-8?B?TXZqb1dib2JuTlZSL3JYSm5ZMHZqSy9IcFBNL0FPa2laQUZZaEU4Nk8wcHZG?=
 =?utf-8?B?eWJOTGtySG45dVpnSmJKRmk1VGhlMVVEdUgxeDZZZUdXSUpuK1FWNm91VU0z?=
 =?utf-8?B?dkpBT2RaTGtxOE9RZTJCYkxZQzcxTjNJY3dSdEZxZUZiajRaWkU3Q24rZmtR?=
 =?utf-8?B?YkdNbFJxWHVNNUY1YUhMNlJkT24zL25MdmEwTjNiYld0WkI3TFhUY0J6NUVn?=
 =?utf-8?B?dEMwelA4V0NuZi9yMmJyYzV2WXdmTUxvOE5zaEZVdm1UZnEyYURibDVra0Z5?=
 =?utf-8?B?dzNlNERXdHV1YVEwS3JOVXArZkxkWGtpbUd1OUtFelJRL2RHU3pUMUZvcVRB?=
 =?utf-8?B?U2svS1VQTEVPY2dOUERCUUFtZXFlUDF0cUxRd09KamdXTlRSYVVpQ0ErMWJJ?=
 =?utf-8?B?QmphdmdKYk9yZ0c4R3JNcHlXbTNCaXF2K3VldTdqQndvKy9UMUEvOFE5bXVr?=
 =?utf-8?B?bUx4ZTFTa2RPMzBsRTNaS0hNOHdjcnFRUmhYNHBZZ2M1UUYzNHBiSFNnM0NJ?=
 =?utf-8?B?K1FscnhnMjNWWDRMZlFWZUw2VS92WXVaSUZGMElGb2Jrc2EzSWpETW1SeFJo?=
 =?utf-8?B?QTdTK1p3T2FsSzhVcUNtamtQdi9VNGxyWWpIWW8zMXozTnFvYlNCNHlrTkZV?=
 =?utf-8?B?S0o0YmMvbHVDRDdHK0x6SGZwdDRHaEhLdGNYeU1yaVVnMzUzZlFOMmpnN3BU?=
 =?utf-8?B?VjRyRTBLS25NWm5mWUVrSk9qazVCcXM0eEpUSDVMdXEzYVl3SllUS09BWEpW?=
 =?utf-8?B?aCtNb0tIa2RlWkxiQ2xYdVU1T1NTK0xiWmt3dWd3ekQ0cXlOOHoxS3dOWW5Y?=
 =?utf-8?B?Ymo4N1JtZnBLdGhYYTYrZmxRT1FudmVlNDdNMFl5UG1mZ0VMNzZrdFVnMGVS?=
 =?utf-8?B?VmpyQXAxVXVweUhnRnM1cU96MUxYaDJ1dDJoUERjdlpZYnQvVjBja2pwVkN4?=
 =?utf-8?B?Q29mRjk0SStiYklQdjZNWldzYTdhd0NvTU5oVnpDQm44N0pPem5xaXBGNkl1?=
 =?utf-8?B?amJpUGV2N0J0T25mVEYzQUZTWTRGN1VpVGxZdkRhMng5aGJFS1F1OElIUzVp?=
 =?utf-8?B?ano3U0tvV0twUFdBYUk4N0Izcy9WL0VuYjVSTXAyeS90RGhhc1dBM1QxNVVP?=
 =?utf-8?B?dkFNTGl3aCtaSmtSbjVsQmZGclpzdzdQL3Q5SGhaK0M5U2FYdzJyWG04SzIr?=
 =?utf-8?B?WXZoYkRwanhtRG9WV3VtSzRYQUVCQ0h6aG5DeGZuN2Y4UUptVlo0R2w0MnlS?=
 =?utf-8?B?OXFsSUtrTFZxVDBRVDRhZ2VCTE03QlY4ODJzenhpUlhlZE1EQ28vQTZ5cDJJ?=
 =?utf-8?B?YVo4bnU0Qm9vemhwazdEYUYveEtyU0pTK0lrMU5OU2lEWEhYbXQ1U2NnWU1P?=
 =?utf-8?B?ZU1uNlY5Qys1b2RXbml3dXZveFNySWQ1aC80Z2htV3RHVkF0Qkk2ekZ1cHNa?=
 =?utf-8?B?c1kwMFNOcm81NksrWmhvQXJEMkpzSG41YXVlUktFVHQ5Rzlsb1hnZGZDNTF0?=
 =?utf-8?B?UDF6aHNzK2xhb3JIUFBRZURFTDRyRlBJdlhxTzQrcE8yTHdpRjZKZXlvenpP?=
 =?utf-8?B?NGRobUZ3VS9VaUpvOUhuLzFwL00zNU1VQjZ0YXBNb3RNSWN2UFFzc3k5TVRE?=
 =?utf-8?Q?ycyZom7oFiE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V0h0NXNSNE1ab2tIMHlBRXhjTHE0dDlGZlE5L2ovZlNFRkNHeGhKU3cyZ0tW?=
 =?utf-8?B?RUVSSGRxOGIySTZ2TVJMcmh5Z3NGMXNTbXlGaFB6NUZqaUV1ZEZCZ1Y4bC83?=
 =?utf-8?B?Qzc1OFZYTEFxaGNlOWZxL1ZhaTByVUlYbStmRzRoT3RoTSs4cUx4akdxZ3l0?=
 =?utf-8?B?RlFXQVZrdW1ldTFvL0Q1NGRTUXNzS3Jvc2NtKzR4dVZyenh1V3pndmZUOHBN?=
 =?utf-8?B?YTVrZ1RxWisxZWtoVk4rNk9kaEtVMGd6eGFYUlQ3Q2RYdXVpbTNvQS9CcGd3?=
 =?utf-8?B?WjJGQkI5L2JtVXY0K3VGazFvVHlaYWxkQ0RBTjhqcEZvYkxrKzVPRlMzS0ZY?=
 =?utf-8?B?TExWbUMvRG5DUndtK2xSNisybVI0TndEZnVRN2szSUJwUXA2UjRZWkwwazVt?=
 =?utf-8?B?WnVhcE5kVDNteWVmR1I1eW9sRDVuOTJCcy9Yd0UrZzVRQkxnaGxFWTF2UmZN?=
 =?utf-8?B?b1g4aWhFZnhDbW95Nk1vQVBPZ2FKaUhhZUtDR0diVVl1WGtXWE1weWZYR1dY?=
 =?utf-8?B?VTNnWFNmV0ZWRFlONkpvWHNEdGdkeXljTzduMC83VEhhMmQxWFhrUGRVTFRJ?=
 =?utf-8?B?RVdtME5XMG1KQWk3SjNILytkZTJLa0tlcHFVTUdpL1liaGdvOWZxcEJYQ1Vq?=
 =?utf-8?B?eFRDdm5Rbi8yTXJqTDR3MnNkUm1yRjRtTm05QUdtOXY0RXZITitqM3R4c2t3?=
 =?utf-8?B?YnpPTzJIZWFxcXlGTTNJZU1GYlQyK2l0Tmc0a0lkTVpWR1JiR1g5RkF6TVNx?=
 =?utf-8?B?eVB0WlJESStWQXJRUnJob0g2dWFBZGZPZ01jcmlFbVpiRHE5TkFvQTJBWXRM?=
 =?utf-8?B?ZkN1ZXVydjgrSDFmY2M5M0pHVU1TdUxmZko1ZDl2K0tJNTZxUUZpdGEzWmdw?=
 =?utf-8?B?TTV1dmx0Q29ZU1B5Mk9pZ2pmWVpaNFNuWTBOZnVxeW5lRVpCbkk4UnJHQVNv?=
 =?utf-8?B?OUIrVHNscG50ZFc5UFBnUngwTzczcHlKVUQzQVYxMEFuRnVWdjhpK0RFY2Nx?=
 =?utf-8?B?QlQzZVdoZ0t6dkJxa25oUnVGL3h0NzcyWU52UnE1WFFEK3pWVDlGTWE2ZzNk?=
 =?utf-8?B?SWF3TkhqdkRlS1JnN0hXVXFlRXd5U0RIaFVFS3NPbGlzU1RtVHZ5S3hHQlhs?=
 =?utf-8?B?b0cxRzkxeGZPMTJCeDVJWm9LSDl6MGlHUkxGUTNvWUwzNmlMRWZVS3FXb2Jt?=
 =?utf-8?B?elc4TjNFa0hmR2dkdXI1T0ZGNTlHTDJ1S1NlMWo4LzY5U05HU1ZveXp6cUxW?=
 =?utf-8?B?MVY0UmxPdzgxVXU0ank1WFpVVHFUeHZtT2VFNnk1aHZFd2s2cnhGdjJjd1p1?=
 =?utf-8?B?M1pBNTV5YWRkd1Vkd1lQSFRTSTU0Nmg3ZEREZGRUQWw0ZXZWUzZNN1Y0SUcz?=
 =?utf-8?B?ZkVBQWlWOXpKTWpGQ05hWktoS05OWWp6by9SaGU3TkpPTEEvUHB0ZjBnQjRi?=
 =?utf-8?B?WFJWNURSV1Z1clFIeGx4RDRXNUN6d1lUZExGcnNyZG4yN0ZBU2NmMUVBWjlB?=
 =?utf-8?B?YmJYN0FHbUhidzVCeGFlUVFXT2EyQUMrNkVzMmt6OThoRVVXSHpNTGkvUDdU?=
 =?utf-8?B?WHpMMGJMWFViNUJvRGV5VHNjalp2bXF3Nm83TzFmdnRpcU1EMGF0RWZaT3Ir?=
 =?utf-8?B?cUFRaTNrRXdDZjJVN1VVZUwrUXp6SXA2QkRwV0xabEJhQ3NOTHBYUlBKOHNY?=
 =?utf-8?B?WlEzUVFuNWdMcVI4Mk0xdWZPenA2MDQ0VDh3UDFwRFFZclRJa1E0ZUdqTnIx?=
 =?utf-8?B?V0txUStHblliT1cyRWp3MzF1N3NtSzdYZE1EakQ3SUZ1bzQ2cFJsemZMa28w?=
 =?utf-8?B?Q1dwT3JsK1dUWklYSjNLMTRmODVUSzViNGFGSjNUYitIRlVRTStEVGxvZkFF?=
 =?utf-8?B?d3hBM3ZuYitJYVpLUEgzakdEaitmaHEySXVuRGQ4NHgrZjdzamQrYklWU2Zx?=
 =?utf-8?B?OUFXWks3TmVIL3V1TFJqWkFiY0czaG9MZjNqR01JbkdoVkVTbTRpOERkbitq?=
 =?utf-8?B?MTFDNEEwLzhZMUxQWmJqaW45a2lTQjZoYzZBWDFKN21uV0RPVmY1RUt2WkVa?=
 =?utf-8?B?QlN2WXFSMHdLWDdPTnp0bi9pNUlhVnZkYzdPbWorMU5pZ3VIS0tFek83VUgx?=
 =?utf-8?B?dlI2dDhvTEVwUGRodm8wZ0ZNcjBvQXZWRFJqcFUzNTJmcnFMVzBscWNTQzll?=
 =?utf-8?B?Q2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d1e8fa4d-5279-4b26-1297-08dddeda74b9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2025 04:40:00.3105 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RSRfqLUgGbB9/bghJTxZRVycl659cd7Qo+Id6gX9s7Msrvdh026rEtk6gJw69u/IyfGNSRiZSodyMYNCJszdIMUOMUUil4HPDdD1bGcqIzs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5087
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


On 7/31/2025 10:46 AM, Suraj Kandpal wrote:
> Add a function that helps identify if the rate provided needs to
> be overridden. For this we need a function that compares the rate
> provided and bitmask of rates provided in VBT.
>
> --v2
> -Rename functions [Jani]
> -Return the mask instead of parsing it in function [Jani]
> -Move the declaration in header [Jani]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_bios.c | 29 +++++++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_bios.h |  2 ++
>   2 files changed, 31 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 8337ebe0f2c8..7adb7c4b0432 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2480,6 +2480,25 @@ static int parse_bdb_216_dp_max_link_rate(const int vbt_max_link_rate)
>   	}
>   }
>   
> +static u32 edp_rate_override_mask(int rate)
> +{
> +	switch (rate) {
> +	case 2000000: return BDB_263_VBT_EDP_LINK_RATE_20;
> +	case 1350000: return BDB_263_VBT_EDP_LINK_RATE_13_5;
> +	case 1000000: return BDB_263_VBT_EDP_LINK_RATE_10;
> +	case 810000: return BDB_263_VBT_EDP_LINK_RATE_8_1;
> +	case 675000: return BDB_263_VBT_EDP_LINK_RATE_6_75;
> +	case 540000: return BDB_263_VBT_EDP_LINK_RATE_5_4;
> +	case 432000: return BDB_263_VBT_EDP_LINK_RATE_4_32;
> +	case 324000: return BDB_263_VBT_EDP_LINK_RATE_3_24;
> +	case 270000: return BDB_263_VBT_EDP_LINK_RATE_2_7;
> +	case 243000: return BDB_263_VBT_EDP_LINK_RATE_2_43;
> +	case 216000: return BDB_263_VBT_EDP_LINK_RATE_2_16;
> +	case 162000: return BDB_263_VBT_EDP_LINK_RATE_1_62;
> +	default: return 0;
> +	}
> +}
> +
>   int intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *devdata)
>   {
>   	if (!devdata || devdata->display->vbt.version < 216)
> @@ -2499,6 +2518,16 @@ int intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata)
>   	return devdata->child.dp_max_lane_count + 1;
>   }
>   
> +bool
> +intel_bios_encoder_supports_edp_rate(const struct intel_bios_encoder_data *devdata,
> +				     int rate)
> +{
> +	if (!devdata || devdata->display->vbt.version < 263)
> +		return false;
> +
> +	return devdata->child.edp_data_rate_override & edp_rate_override_mask(rate);


The function name intel_bios_encoder_supports_edp_rate() suggests that 
it returns true if a given eDP rate is supported.
However, the current implementation returns true when the corresponding 
bit is set in edp_data_rate_override,
which actually indicates that the rate is rejected.

To avoid confusion, either the function should be renamed to 
intel_bios_encoder_rejects_edp_rate()
to reflect its actual behavior, or the logic should be inverted so that 
the function returns true
only when the rate is acceptable.

Regards,

Ankit

> +}
> +
>   static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
>   				 enum port port)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
> index 6cd7a011b8c4..a4abaa89a682 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -251,6 +251,8 @@ bool intel_bios_encoder_supports_dvi(const struct intel_bios_encoder_data *devda
>   bool intel_bios_encoder_supports_hdmi(const struct intel_bios_encoder_data *devdata);
>   bool intel_bios_encoder_supports_dp(const struct intel_bios_encoder_data *devdata);
>   bool intel_bios_encoder_supports_edp(const struct intel_bios_encoder_data *devdata);
> +bool intel_bios_encoder_supports_edp_rate(const struct intel_bios_encoder_data *devdata,
> +					  int rate);
>   bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encoder_data *devdata);
>   bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devdata);
>   bool intel_bios_encoder_supports_dsi(const struct intel_bios_encoder_data *devdata);
