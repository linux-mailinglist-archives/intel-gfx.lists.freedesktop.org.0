Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7384CB9889
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 19:17:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3667510E0C7;
	Fri, 12 Dec 2025 18:17:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lu1u0Ycn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 555F210E0C7;
 Fri, 12 Dec 2025 18:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765563463; x=1797099463;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=++gImoTCjpLrXUBV7KFzjbiKxe7qzZg9aJ4OhZsePOk=;
 b=lu1u0Ycn/XCFC12yUjxLbNXFenHiWgaIBmIQ6nkx//sRs82+MwnaUbxZ
 ZqG2NDoNds78a5UyRkKhdAxaMygRrvMeURu9jajQhSg9ZihP+dmUdotIT
 iBezRSJHZq6F0PusM19UaGdYOd2SwrDxK1cMgGBbNqjzgVQbK5daW6HXc
 Nn3gZe0hUONk06jwVUqAOzz3FH/rRW35taAKywjY/T9jdj84SGRytYWVz
 xe4rsScEHhOKsG2lm2EYIcDin9W1dZmFmns58FtTQBK/gtt/aJ+wsMkRi
 s5EAC6ie2ZVCjFDUYvIvzsXksLyqUgC5I27srK+nDY91nvNsJDGCPBB4d g==;
X-CSE-ConnectionGUID: q/wVyQ9NRmGpcotir6iHKg==
X-CSE-MsgGUID: kz6IeVP/Qg+wSwCbrqGhIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="78688452"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="78688452"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 10:17:43 -0800
X-CSE-ConnectionGUID: iXAIEjWgQUiI0856c/m1gg==
X-CSE-MsgGUID: 63DVNQtMQLazU6eyp31HSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="227815245"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 10:17:43 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 10:17:42 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 10:17:42 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.9) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 10:17:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v9+a1fppCivchB5kI357qFVq66dB8RNduBhTJVnuZ449iG+6lzQseMNVI5IX6OxOedCsXghGqu3gFUAQYYQuUFAuAYcliEJji5iEGtUB0fym2i2v4tmwuBQMjd1hCoIMho3+uCKUggQIW6wkNuaP+ZulcyLVOmZynfZcCCn8au9HFT3UOTTr1wSJKOTUQz2bCMLMPyxA2CSsH6xMzi4dw2gLbRBqy+dTpBEDDfiaaXlAHNKgB1DAWeszXUtdmnSSFdHhb/H8O33J2bW2QL//e1OYtez56rwFXuPwB595h8kBn8CCNIGTDT72iFudCXdgEjYvzQ2T3GvodFq/n+kTig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qa6kNKvHeci9WMzaosb1Vcx5+dxc7l0ErV4K9FCHG1E=;
 b=SdRfUoXVpzzPG2mASHySLkDDKvZ+FZyEmMjEleSfip1K9hvnrPxUjG+pLDT5V4l/wcmHTJDcwCtjP8+OMy3eF7b7Fj0cMYZKUE9st3EZj79nr0i+1RuReRc6zHavOcIENFWRqtqqo+mh/vnNs60C6MFhwlShbHs1NFYc3ZtcqXdLFa5sfWVRGZ6iBeTL1JtrYxQqWdZkHDGvXaVUtq0I9e4QWzP/t8qFlbz73dSk5rVqzlr9h5rOOjlxEXiyxOkBY9UzyTLEw54S+njTeJvJbZm7iKemt2N3kQDf2UZa+W9QSFauBl67cAaFEtx7TkSdWOrvzNUITcr2u7GkcFaGLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB4840.namprd11.prod.outlook.com (2603:10b6:510:43::16)
 by CO1PR11MB5059.namprd11.prod.outlook.com (2603:10b6:303:9a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.11; Fri, 12 Dec
 2025 18:17:36 +0000
Received: from PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::7044:24a0:758a:4bfd]) by PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::7044:24a0:758a:4bfd%2]) with mapi id 15.20.9412.011; Fri, 12 Dec 2025
 18:17:36 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 49/50] drm/i915/dp: Add intel_dp_dsc_get_slice_config()
Date: Fri, 12 Dec 2025 20:17:01 +0200
Message-ID: <20251212181702.1906312-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251127175023.1522538-50-imre.deak@intel.com>
References: <20251127175023.1522538-50-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0505.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:272::15) To PH0PR11MB4840.namprd11.prod.outlook.com
 (2603:10b6:510:43::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4840:EE_|CO1PR11MB5059:EE_
X-MS-Office365-Filtering-Correlation-Id: 6cf8c52b-6a9f-4176-b2ab-08de39aaba12
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WkRySmlUYjBOQzZaVHB5eUlZWlg5RlRndnFsSVdTZlZXWnpueFRrUkFKM2l0?=
 =?utf-8?B?MmMvSVBRT0Znc0hTNXkyYTVUMGdJZUFjcGQ2cVVRa2FEK2lLeXk3OXlqYnln?=
 =?utf-8?B?eWRMVUxyMWJUZWl0aXdsaUJZQ3htSjFQekN1c3RNYlFpR3A0M1huRzRzRVBQ?=
 =?utf-8?B?cnFVcndISmNJejMwVlgvQUdNVEtTTTNoTjF6blhLMlJUZkNGSnowZkxGdXJE?=
 =?utf-8?B?ZG9sbmc1VXFEQ29jZkw3WVZqWWJheTQzMDdOZVVmV01peWw0MENsSmFRcFFm?=
 =?utf-8?B?bFV1dWhDY1FXUDVudWFld1UyT0ZHWFBLQ2VSTytoZGdCWjgxQUU1MHhrRERl?=
 =?utf-8?B?K1VqWlVXbERCRGJrMG96ZmtLZnJPZVFIT1VWRnU4N05MamRwMW9kcXBJc29C?=
 =?utf-8?B?YzBDZ1RqbWwrZUxad1dlelNDdEZxbWNFcFJ5NkMxUDNYWm4rdkpCeitzS0pX?=
 =?utf-8?B?YTVCK0QyNVVKcTFScjV1M3VjNDQ2U1N5eng0OXlkZXFSM2VOZHppVE9UdDg3?=
 =?utf-8?B?ekI0amgwL2RtS3JoMHBRcnVNT2RoeTJzdnU1alVxTnVrRGFaSGx3NW9lQUdE?=
 =?utf-8?B?TU9OUENWOEdkL0JCMWNwbEpraXBTTGJvblhKWEgzaUE4T2svZW9mUWZlK2JJ?=
 =?utf-8?B?c2xjYzdPZDNDMSs0cXNvY3V5cFEvWXg0cGtZcEw3cXlkZEZ6MTJVVW1tS20w?=
 =?utf-8?B?QWJUYmJnR3I2a2RhTXlDbXZpelNlV0dmZSs3cGp5QnRVMTErNWNVV1UvNGRQ?=
 =?utf-8?B?Nm1jZnY4K080MUhiekxhVnFVWEpEVzlTK3c5UkVNSzcxZ2s2blp5dnhQbGh1?=
 =?utf-8?B?OVZMY1NHTXhuTjgxeHZ2OE5TNkZ5TkJhMUFQZWFUdVh6eUxBYU5sZVgwT3hJ?=
 =?utf-8?B?cW5tUkFGN1JDNm5jTTdwY09zYUhtUE5pOFhkaWI0Q0J5MWRYSkpJSTlyaVJH?=
 =?utf-8?B?bVo1dVhaYWhRTHY1TWpKWnhDR09Edkh3MnFURjdPcFU4UWNOZmo1Wkh3Y3hN?=
 =?utf-8?B?aURQZ2tnWHl1SER5K0ZlbW1zdzk3VVZiUDhzSzRBK2ROREM4L0hOVzRvNHMz?=
 =?utf-8?B?MTlnRy9IaWJLOTRYdGxOYkQ2Um5EQ2lKcTVyaWxwR1MwRGE0eWJiZFpjbkRP?=
 =?utf-8?B?c09ydTM3N3VMa2NBMDdmTzdidm03bFEwVFJIbXplYkJzN1ZoS09MRU55R01h?=
 =?utf-8?B?cUVXa3hLbm1CU29GTTd4NnByNjFLak5CNWYwalFPQ2tDKzNJZTc2eVplQW9j?=
 =?utf-8?B?cnhUMEpQWHJmYytDcXViakxjN29mRXpOZkFvamVCbEpPeEpNakJxMGR5V2xu?=
 =?utf-8?B?UXovR2xpQkk3N2hNM2N5QjNWT29QSlZma0ljTGVZNDhpbFFHMi9INzV4eWFP?=
 =?utf-8?B?RlcyS0ZUNmtpZFRyK1Ird3A0VFdzT20xai90aHVkdForQUNFTEVjM2pMamxH?=
 =?utf-8?B?ZXVXdWJtdVhrR1pBSHJXT0JmYkI0TEZMaDMyNGk0cUhOM1BBL0JDKytPa3Y2?=
 =?utf-8?B?VXlvYkU3b3RUS1F0SU1zMC85SXZmbG5mY003Z0xRT05WMWl5R1MvZU1rUnV0?=
 =?utf-8?B?Si9UYTV6N3FodHNuVjZTRVh4Y2cvYURDNXc5bGtwK2hNZWlwaDVqLzNnSGxI?=
 =?utf-8?B?M3dPZ2h0REluUDRoRjZuUWNYUzV4OGhSZDN0cGloUWp6OVR6UHlrMUtkZTBE?=
 =?utf-8?B?MXM3U1JNN1BOd2E4N3ZvV0dvL050UURSNW1xL3lZUndSNEVwVzlucnFxbjVB?=
 =?utf-8?B?Wms2N21kWDdDNHBhQ3lMOUNTVXVXYVl1bXh1NmJrYit4bDB0QktsY0twRTdO?=
 =?utf-8?B?Nk5ycXc3SW5QR2tvS0ppa0JwOWlkYm8wSmg4L0hSSEVVZHFWYTlmN1I2dk5B?=
 =?utf-8?B?bTNHRkpLSS9lQy9JK0xuVkdQbTczNEp0dnlndVNKcjV2YmxZbS85dkY2elVx?=
 =?utf-8?Q?wgeh4gpGA0gLdIau5YfclI/6tfQ8TCMJ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4840.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?KzN1MGdGWU1mVUYvSWZhKy9xcmZSSCtVdjVHQ0VmOWhxSG9RR0F6K3F6bDJT?=
 =?utf-8?B?OC9VTmMybFlzM29VaERlb0ZyUXYrR3paZnVFaVoxK1J1UU1zUUhINE5aMklD?=
 =?utf-8?B?d0dKK28zbSsyOE1SWnd5ZFdEQ3liOFVrbDZ6Vm9FNnlTSG95N25SRVQvdjI1?=
 =?utf-8?B?d2FBSnM1TFhqTytMSTc3bXBPUURHYjhVQUxEZjNEQWZ5K3FoMFdEQzZOUXRS?=
 =?utf-8?B?Yis2VmViY0U3QjRKQmQ5K28vVVZLYjRIRy9rMTZxczUrUUk5ejBLejY2S3g5?=
 =?utf-8?B?NyszYyt1S1dDNjZieXRLYk9QUGJ2cE9DTmhvTVM3ZEV6NGZ2S1lpRWNHZUk5?=
 =?utf-8?B?aSt3RE04YldEOTkvWWQxTnUrbDMraVlXN1g4R25UdDdCa3NUMWpySFNaTzBC?=
 =?utf-8?B?UUdlTWF3TUh4b1VUb1c2MDZKVC9CczBPWkJxZzRFRzJaS1Z5ZWlyRGQxN1Bw?=
 =?utf-8?B?VkFQbEM5amY4aCtPbkdab2ZiVDBhZElzOE01TU9Pcit5dUJ4b0lFKzZ1K01p?=
 =?utf-8?B?QmJLMWd5UEdGMWQ1RllRdUtMSlFmc3hVTEFIVU1EcVdxY3MrbC9COGJudWFv?=
 =?utf-8?B?SkJUbk1wVi9ONEFUTG9WQk5Cb2wwZXB6NVI5cE9laDJYL04wdVBsVnZqamZP?=
 =?utf-8?B?Vjk3QzNjSUwvdmluMHlib3FOWmM5SWg5WGdwdnM4TnJJQ3ViWVg3QURoU2pz?=
 =?utf-8?B?ZG1YMGFCcWpjak5FazQ4T3Zpc2NxdjJiTFVlZHVBdGNqdFVuV282NlBaYTZJ?=
 =?utf-8?B?THBsa2RjQlorbG82cWp0a1ZNVWkrdWZYcFkzNXBvc0h6NkhNZ09UV2cya01F?=
 =?utf-8?B?QnRKUEk2Q2JSVHBWaXF1dDlEa09CUTA4TzkwaHVOSlljSkxMSkY0ZEZ2Y2Zw?=
 =?utf-8?B?d0tBb1lzUGpTWGpPR2J2MjNsdHFndGJnWUVybjVFL2V3dytITDVGdTBjcXpq?=
 =?utf-8?B?aDN5QVAwa0RjazFQZGxPVTJIVTFFMnZzbDNaYW14djFKZjNzejVyYjJzYUN6?=
 =?utf-8?B?RXE2ZzVvaThPNzZGdS9XdkhCd3BDUjNRcUw5cGFCbFJLNXRZODY5WVlMK1VM?=
 =?utf-8?B?c2NqbFdxQjVvelhraHhUK3NxeVVaUWpzaitYRS9NUnRFTSt3VzIrRGx5Y2Rr?=
 =?utf-8?B?Y2l0U3ZoUzJIRFpIWGlYMm45VHlOTFR5eGdZdmliS05Ka2RNK0U5Tm9ydmpM?=
 =?utf-8?B?OXpCZW95TWxKMnFESU1qQlpQT1BybjNFNU1MQ0VtdUpSRTg4NFhCT1lUOHho?=
 =?utf-8?B?Zk14MHpDaGRGSW02T0NDMUYxTGgwYVdtK2RoVzFxSFNlWHoreTVyVnN4LzNJ?=
 =?utf-8?B?YVY5dWNuSUZwZmhhU0xCQWVFSEJZUGpSdTFvYnhvdTltcXdSNHRPWU9qY1lW?=
 =?utf-8?B?YzhKSStJY04yTy80bjZWMno1am0vSlFGMjQ0dzBWS3JnRU8raVgwbEV3MFRM?=
 =?utf-8?B?VlVHTTROVnh6UW5OQjBNZWJPQjJERlBuOVV4Z08wN1l3YzQ1cjNlYTBWbzhx?=
 =?utf-8?B?T1hJVngzUU9ESHRwRzJ1ZUpES29xbTBMSGtrd2F3Rnh0UDNEeW9QNFBqUGtB?=
 =?utf-8?B?dW85ZVNxWlAwSkxFWHc4eG15Q3dYemZYSTVVOTNncnZnRlpQaFpOa2U3M202?=
 =?utf-8?B?OXpKZzQ0RlpqMm9iWGhFbEozNmRpMklPSUorZTFaMVpCYmg3VHRRaEpDZTl6?=
 =?utf-8?B?RFlpK1dhWGU1eFdxVDBQbTdpdDRNMUpGdTh0ZHZSZGN3QVpoOXUxekZ1Qkpq?=
 =?utf-8?B?akgzcVVJMU4zSVpoUDMxcjgyNVlqVE54NmxiTW1MWE44bTlmNzdpekttTXM3?=
 =?utf-8?B?eG5UNGltR3ZmaHJnN09FZE5tRFdvYVFKY0VOVUJMWE1jUXlpRlk5K05CT0ha?=
 =?utf-8?B?OWhhUm5lRmNWbWFFSE9YUEs0dm1hSUFQVDlMam81bEtDVXBHMjE3L0pyaWY2?=
 =?utf-8?B?Sjh6Wkh0N3F3ZE5abkx6SHhFS2JUbE9vRm1uTXZlL1E2MEltempxYWk1UlFO?=
 =?utf-8?B?em9GWWh6UGhwWWtNY0lKTW5ta3hvN1BZV0E3VjAxdytDM2I3dVdqUDJkNERR?=
 =?utf-8?B?TDRwclBJYldoL0RRdmx0VTAxeGc0MDJHNTBLbThMaUVURTN3UnFkUGRET1VT?=
 =?utf-8?B?MlRIVGduemx5ZHRzSVpOSWNGb3AyV0RPa1ZjWTVRbnI1WERhZHI2bEtkY2w5?=
 =?utf-8?Q?asbLICpaLk3tPq+qbP0ZzSXl8RsM4OnHMHPvOg/aWGqm?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cf8c52b-6a9f-4176-b2ab-08de39aaba12
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4840.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2025 18:17:36.6191 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u8vD6x5/xvcdZ3sooA+V5e+jTohA86TjL88JTGbRXRoevByAO9DNwc5QiFT7BOpDXf7UqMu7cMrbxKHfZaYcaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5059
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

Add intel_dp_dsc_get_slice_config() to compute the detailed slice
configuration and determine the slices-per-line value (returned by
intel_dp_dsc_get_slice_count()) using this function.

v2: Fix incorrectly returning false from intel_dp_dsc_min_slice_count()
    due to rebase fail. (Jouni)

Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 31 ++++++++++++++++++++-----
 1 file changed, 25 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ff776bf3b0366..1808020877d19 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1018,9 +1018,11 @@ static int intel_dp_dsc_min_slice_count(const struct intel_connector *connector,
 	return min_slice_count;
 }
 
-u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
-				int mode_clock, int mode_hdisplay,
-				int num_joined_pipes)
+static bool
+intel_dp_dsc_get_slice_config(const struct intel_connector *connector,
+			      int mode_clock, int mode_hdisplay,
+			      int num_joined_pipes,
+			      struct intel_dsc_slice_config *config_ret)
 {
 	struct intel_display *display = to_intel_display(connector);
 	int min_slice_count =
@@ -1057,8 +1059,11 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		if (mode_hdisplay % slices_per_line)
 			continue;
 
-		if (min_slice_count <= slices_per_line)
-			return slices_per_line;
+		if (min_slice_count <= slices_per_line) {
+			*config_ret = config;
+
+			return true;
+		}
 	}
 
 	/* Print slice count 1,2,4,..24 if bit#0,1,3,..23 is set in the mask. */
@@ -1069,7 +1074,21 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		    min_slice_count,
 		    (int)BITS_PER_TYPE(sink_slice_count_mask), &sink_slice_count_mask);
 
-	return 0;
+	return false;
+}
+
+u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
+				int mode_clock, int mode_hdisplay,
+				int num_joined_pipes)
+{
+	struct intel_dsc_slice_config config;
+
+	if (!intel_dp_dsc_get_slice_config(connector,
+					   mode_clock, mode_hdisplay,
+					   num_joined_pipes, &config))
+		return 0;
+
+	return intel_dsc_line_slice_count(&config);
 }
 
 static bool source_can_output(struct intel_dp *intel_dp,
-- 
2.49.1

