Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6EeCIPmz8WmwjgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 09:32:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D8C4907EC
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 09:32:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9331F10E3CE;
	Wed, 29 Apr 2026 07:32:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FrMS9TV2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32C3710E3CE;
 Wed, 29 Apr 2026 07:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777447925; x=1808983925;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mZDS8RFU9hJziSxb6APi+RKEdonph9EEWz3RwBkIa/c=;
 b=FrMS9TV2K3nouOmx2qcKzLDGxbqfLlzIlt4XtLnNXFETuz8RTNlcI267
 Jp6f0huC7jWQ2nk8d19MpoyJao39U3qLoZ8+40NGn+DKa5OHFIj6Uurnv
 jD2tqn6K0T5DmZ9PAeGFG3iGyMu0BxZbSrBGPWYfU3etG+1xeu1EJ+HWz
 lE7/B5Vzywv4vE0DjdRnlw0TPdrJebKDhnpZbDqJUFRn4YJ49mX7TT2Jl
 +ArB5taw/Ze3ynZLO8zcNkbFyFiohAUOqqh/+iNuDdA+lgaOB48NqCv9Z
 l/38Kh+BiywV4VJu38Zp/I2MlsXW2qRNIldpRr1WRW31v7jBZMhV7oT9c g==;
X-CSE-ConnectionGUID: q50SUeySQmKNvN545949lw==
X-CSE-MsgGUID: 8kJs05QWRhCSchA1FC0DLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="78264111"
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="78264111"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 00:32:04 -0700
X-CSE-ConnectionGUID: LJADouMvTVeFSQobc25/1Q==
X-CSE-MsgGUID: jyikG6KxQcesRD5OfpKG0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="234056387"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 00:32:03 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 00:32:02 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 29 Apr 2026 00:32:02 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.64) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 00:32:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m6Myu2CXsq/r72mvzMIgDFmSIFLOQoJnYFIcmioNnRj7svhzRGoL+mu4i9SKKIsadYNTq3cuHPDq6mMgFxnhSwKp1AkjmgZ2kkOtvGggaxiMxPfFolWzd5lbofpyITBX8E6hMwUUDUDTgisZ2Nj85yttBRw6CeaS/QKcriktzrmX4zhaVrI1IjqnQ0gFlA/u4iU54Ba5N4jMquOL05bdfoJ2CZNe7qH2lIWCtPrDyHD6QrJHVjxhBSVhhUpHREptWXck2yLJWMttj2nXHKrn6hMk+otqMr05r+/oGo4Pia42TELaVjg9CG0KGmoVMsidan6wZM+cnmFviPbKxqiZNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2/eAG5C4riF4Gu1qO6Ra6TsU/CHN3XQNNIzVzGKkBPc=;
 b=mPYimbWVLpzobQfU1gK5QuMlGvR+9ARTJ7zjQkgQ5gwjVV84D8w3bYiIIzasOQNcBG3APjfxT/s52K0nubt31X0bUXDw8rSdLzkh6V1TuZZ/YGoiLr29/AzVrplNRfYFvHScolwBATBMf8zR29wE22yQbvkB7kP0SN5ecOgO2+Pb3xYZgDKKW3JEGS+mADZxJGv6AZODxOhsi3QwXqkcPZtltzXQuocXGH3adQaFxrXWVf0oH/pObZTtDyxDvhj60Aizcg/cZ6erLmqK/QKEx1jKXwBH+r9gRxaLjQoaSAWgs1nYzEY3CJuqf73GkAZ3EC6KyzTOrNsN5PH8qIlHuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by MN0PR11MB5985.namprd11.prod.outlook.com (2603:10b6:208:370::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Wed, 29 Apr
 2026 07:31:57 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%6]) with mapi id 15.20.9870.016; Wed, 29 Apr 2026
 07:31:57 +0000
Message-ID: <f617fb7e-853f-4430-807f-3bf15fd41ea3@intel.com>
Date: Wed, 29 Apr 2026 13:01:49 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/13] drm/i915/display: Add DC3CO support check and
 validate target DC state
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
References: <20260422162622.1869831-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260422162622.1869831-6-dibin.moolakadan.subrahmanian@intel.com>
 <DS0PR11MB804932256EA05D51759130D2F9342@DS0PR11MB8049.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DS0PR11MB804932256EA05D51759130D2F9342@DS0PR11MB8049.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0021.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:179::10) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|MN0PR11MB5985:EE_
X-MS-Office365-Filtering-Correlation-Id: bfa56ed6-ac97-4009-78f0-08dea5c1649a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: DXpn+gXtyF4Tss198ys8qCc35gOMZUQjeQ/ghMnUMPQQAKFs1Bq1xpg7rfgmuDDTJMQJojIUMA37NVMV0ROy+MRxpM2lcOI3gHiepxm1Vw3icWrvhpspbgzi7H7n7B38BedtOHcI72KwaQDX8sdwtQ1LSTgMk37qgXicSOajVeElf01Hk7hHd7YBjWXwvA3a7zzZCeoZwOqXzk3xXlw5jAiJeacPfl+luWXIhTb8nJt1qA9zEPRQkkTuYehnCAUjPLqMqdZ2mGIo0OGAL0WW2xsed11jYIcA1AIMWTM7C+aJe5P2ksyMEJ54VrkgoOoo5n0mUWdrI6/9pD9OvkLYOoMz5HEr0k8M8Rcf2O2+wdZD8qp0Lt9pawSooJ5NWNBOshhYvA+Gn+Lfs587rHnQdOrvI1n4YydUQWF7Fe0r947wk0MvyO6GMtDul2CDxVLT1ZSKmoip/5dk8a4a3zIgmIxfszgQvT6AFzJnO7uvlQWGP5UaJXT8/5hq2k1e3MlkvLQKRynxiqhyzKA7f/ccAsv3TWeDMBZQvvER2bXsC499KjJDA+39hX8QrmKojH9GdgeebE8uiyRZ9jM2Xf9z1GnClTxXxpC6SJzg5+6nzRd5GaxHHDl9XlUNsMtlen0EqosVfBCNbbooMNAEFKC+FD2xQTZYie4ia7jueWRDNqZvkiUABYBRaH92QtbfsKqzyDoi/BmpRNUX1wmoTAhV8pzAWOIpYIZ/wCN+mM/0EPM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cXJNWE5ZTHIwSnFZRmxnTFhhQnEwUUM2ZTZ1Y1RWLzI1emlzRFN4aFFVaDY4?=
 =?utf-8?B?QTBuaUxPeDFVK3FKYXJVSXpIQ2lpcHpLclZvdEhubmN0YWFQRzNhZDBHS0dp?=
 =?utf-8?B?VSs5NTdndG9IRllZYnNPSENBUDZPT2dXU1o1bUNoNlZmZHk2ZFVuY0tUVmNR?=
 =?utf-8?B?eWdqMmplZGJzb0dyaUVZMmRhL0l6ZjhwR05PSlp0eW8xdE8zbjNkT0JYZERo?=
 =?utf-8?B?Y1Q0WExvODVaemNZTE8zN2I4a2FFVmF3NjZFRWI4eWJCbjIvY3BDWmJCMXFp?=
 =?utf-8?B?OTVTS0pid2FEL0FoNlpBdGtuU3JjWHVoSG1xRjBqZEtSREFZNGNVbHRHK3BV?=
 =?utf-8?B?Q1BkbnpGWjdmZUNKS2puSEJ5VU51SUJvQmF5WTZ1dDFGQkM3d0NobkE0cDh2?=
 =?utf-8?B?VVhVbTB2bUYwMkZQa0Z5Q25ML0xXQkVBeDZDTkc0S0FWWlpWWXZlM3pveGFr?=
 =?utf-8?B?RDhSSEgzTVB3ZXFIL3h6cW5MazNsZGUrYU50WGhLT2NVdU1wSllWbDNVUUhF?=
 =?utf-8?B?VmpNVXMyZTJIMFhnUlhQR05JUFVMTC9OcytRTEdGRmtwbDZaVTlZQU9TbGlu?=
 =?utf-8?B?UzJNQURJbGxZRkZyRmlKMmlYaGppSE9zdVh4UU9lTVhKdTlJdWNRdkFBZkVK?=
 =?utf-8?B?NENNbnF2SUNIZTFwK1prUTJ3R004WHVKRElWTHFiSmpYQVlPTlo5UnNwVjgz?=
 =?utf-8?B?ZlFvSFRJSXFzNm1hVkxuN2ZObWE2QldyVVRDdEc3ODYxNUZaeVEwRE9jMFRq?=
 =?utf-8?B?QUtzUVVBS3llU0ZNbTlJMHdmcE5UQ3ZDVEpRWXhKQ1BSOWhlRFQrSGdpLy9Q?=
 =?utf-8?B?d3l4aW1VeVRYRWg0dDhLRlpXRkxnWUk1ak1naTVVMmd3aTV3MVZRbGJNME55?=
 =?utf-8?B?YmpwZWU5VnhqSzV1KzdVWDg3bWRzK3VYWnJOV1ZKUi9UVmxncGZIcEl4MlNu?=
 =?utf-8?B?Vi94YlJWQXdWbG9ER01lSll3c2lEMkhzUFpmbUR4dkc3L081a3BPK0g5QTVw?=
 =?utf-8?B?UkF5MGU1NCt2dnJOOUQ5czlHUkFjZlpZVmdJZEhVTVBYTk9LdmxCMHpqcm00?=
 =?utf-8?B?VHR2bDhWSFZTY2k0WHVyWjhmOWhIbVdXTWdhV0FGWjMzY0IrNnZYZCtaSnEv?=
 =?utf-8?B?M2RVOEFyVnZLZzVjUUtsUWUzVnQ5bDc0U2dLck03ZWFyNEgxVFVsL0hHVDNY?=
 =?utf-8?B?RnNoYTMxN3RrSitkQWlUYkhWcXdnNVFYL3ZxTGF3SHd4ZU12NXFHN2FnNTBN?=
 =?utf-8?B?Rmcra0ticjViZ2ZHZ0lUMDZVcHpaTTZhYVRPTlZBVmtyaEFkajRnRnNNRFNl?=
 =?utf-8?B?ZFpydEFCbHdBQWFEb3B1V0hGVk9rRVFxSmhYLzJxenREOGk2STJUSkZERWto?=
 =?utf-8?B?cWlFQlowTjFoV3lUWllkOElkeHM0WmJPR1FMbTV3YkE2Mk9EQ0l6VnhTSDli?=
 =?utf-8?B?L084S3M1VjU0UktBSHJEMEJVcnpXVVVDaG4rMWNiZTZXcElKMzZ0djdoc1FU?=
 =?utf-8?B?MXhoYmdRUFVFcmpNeERML2x5TFN1K1hvQVZTYVNzOVFpbzZieDcyNUdaUDJj?=
 =?utf-8?B?NnE3ZGhRSFgwYit4bm9WaXBnTzJXb01CZ2NsZU40WFBucUx0d0xNOG5XTUU3?=
 =?utf-8?B?ZEE2YnI3cDVRemZWT0x5R1kwTkd0KzdhazlpT1d1NzBRQkFWNFl3NkU5c0do?=
 =?utf-8?B?UGdUSDE3c2FTa25oL0diUlpUcGxlZ0I0aUl3MXB3dU15MDV4V1IrV080Q1pr?=
 =?utf-8?B?WGhsV2kyUkgvSE1ZblZ2NDNhQ1B4dzdsRlJ4Tm1wY0d1aTB0N0RIM0pXK294?=
 =?utf-8?B?WUFCZ1c1cE1lV2xsOUQ4N0hxdUIwb2JQMjUwOFEwUlBjTXNjQkFXeFc2WWZn?=
 =?utf-8?B?c0pwZmsxNDJxS29GZW1UUnRMaWRmUkkrV2UxVVlRaFp5eVV4MHFlL3VITnZs?=
 =?utf-8?B?ajJvUlloSFVWczlRb1ErZ2k2TS9FWDdxbk9pUDFWVVpwdEdQS3ZGaVAvS2M2?=
 =?utf-8?B?WThqUXlMVURDdTRGOVF2QitLY0xDVHRvT3NSdmxXQWRjWEFhUXBwTFQyR09m?=
 =?utf-8?B?NUlEeHpNSjNBTkRZdVFmbEpkSU1vL0pZOG1WbXFoY2wxZE02MDF1WnJjMGN5?=
 =?utf-8?B?RVFyZDd6bmJWekZ0R2Q0NU13M2YvSlpJMnhvdnRrZSs0dWptbnJRQWR0cmV2?=
 =?utf-8?B?Z201dVFlNytta2gzRTlkVUVlR0NVSXZ2dEhVSFY4TUJjZnNaZU9tUWtuSE9z?=
 =?utf-8?B?QU9uV0J0WXZ4SVBSOUFDWGUzbXBNMktmYjlwV2tJSWd3cTVvZHVNRkVMVVlV?=
 =?utf-8?B?alNVN0NSdjJCcTBabGo1cVNnM3BiRHBFTHozdWhoOW10Y2JNZ0FwU3NHTlE1?=
 =?utf-8?Q?91Vb39tPhOwnTUQB3LGrhTv3EIGgEvTCKSlkmY9ljcXq2?=
X-MS-Exchange-AntiSpam-MessageData-1: itoXi6VtdlULdA==
X-Exchange-RoutingPolicyChecked: AgodBbCm2M8WAQk1LY7Pz9h1uZCVIAw1d/7p0CBokzjDNi7MWDf195wMRKXMC0MRcxfiGayQ8hW4z90uRoJQ/yKy2zUPHPT9hq/z1f78XBSSZIC68+FVDdkSpeuaKL+64RcU7+ZGI4bDCh7X/Xa6ZXHiuC4p1OBKcy1rVm2ZETyKFMHmOq9os3j7LPILrpF+tZ4aIvdDbbPbgg8PdQUUi6GpfaptxoQ+xlquD888R9aU9y9xhveXxUHHTCp5+IohUePpr7pdwXqDbyewteKqFsnzspVfjW35A/5vileOZlHTwfs9W/8O7rD1zSpP04xu08tPS4Fc1Ol8B30XnJPefA==
X-MS-Exchange-CrossTenant-Network-Message-Id: bfa56ed6-ac97-4009-78f0-08dea5c1649a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2026 07:31:57.0623 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JqDGugi4Lsr8OoC0mwlyV3rUO49skfzn2q+jRxiQDmL3YOfUMbRmKz7STHuKy7jzLxA0tBw7F3SrW3VTd7a+ZiypdbEjdJXBbySiFf50x4sTyQtu2iMsd5EQ+xGuUsub
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB5985
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
X-Rspamd-Queue-Id: 27D8C4907EC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]


On 29-04-2026 10:43, Manna, Animesh wrote:
>
>> -----Original Message-----
>> From: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> Sent: Wednesday, April 22, 2026 9:56 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
>> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
>> <suresh.kumar.kurmi@intel.com>
>> Subject: [PATCH v2 05/13] drm/i915/display: Add DC3CO support check and
>> validate target DC state
>>
>> Validate the requested target DC state against allowed_dc_mask in
>> intel_display_power_set_target_dc_state() to avoid programming
>> unsupported DC states.
>>
>> Also add intel_display_power_dc3co_supported() helper to query DC3CO
>> support from allowed_dc_mask.
>>
>> Changes in v2:
>> - Squash "Add helper to check DC3CO support" patch into this patch
>>
>> Signed-off-by: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_power.c | 14 ++++++++++++++
>> drivers/gpu/drm/i915/display/intel_display_power.h |  1 +
>>   2 files changed, 15 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
>> b/drivers/gpu/drm/i915/display/intel_display_power.c
>> index 77c32492caa1..f626803bbd88 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -302,6 +302,13 @@ void
>> intel_display_power_set_target_dc_state(struct intel_display *display,
>>   	struct i915_power_domains *power_domains = &display-
>>> power.domains;
>>   	mutex_lock(&power_domains->lock);
>> +
>> +	if ((state & power_domains->allowed_dc_mask) != state) {
>> +		drm_dbg_kms(display->drm,
>> +			    "Rejecting DC state 0x%x (allowed mask 0x%x)\n",
>> +			     state, power_domains->allowed_dc_mask);
>> +		goto unlock;
>> +	}
>>   	power_well = lookup_power_well(display, SKL_DISP_DC_OFF);
>>
>>   	if (drm_WARN_ON(display->drm, !power_well)) @@ -358,6 +365,13
>> @@ u32 intel_display_power_get_current_dc_state(struct intel_display
>> *display)
>>   	return current_dc_state;
>>   }
>>
>> +bool intel_display_power_dc3co_supported(struct intel_display *display)
>> +{
>> +	struct i915_power_domains *power_domains = &display-
>>> power.domains;
>> +
>> +	return (power_domains->allowed_dc_mask &
>> DC_STATE_EN_UPTO_DC3CO) ==
>> +DC_STATE_EN_UPTO_DC3CO; }
>> +
> allowed_dc_mask is not set in this patch series, which I presume will be based on HAS_DC3CO() check.
> Could not differentiate between intel_display_power_dc3co_supported() and HAS_DC3CO() and both are dependent only on DISPLAY_VER() like if platform is supporting or not.

HAS_DC3CO() checks for the HW capablity.
intel_display_power_dc3co_supported() checks if dc3co is supported at runtime.
it check DC3CO against power_domains->allowed_dc_mask which is assigned at in intel_power_domains_init()
based on params.enable_dc , allowing the feature to be controlled via module parameters.

> Regards,
> Animesh
>
>>   static void __async_put_domains_mask(struct i915_power_domains
>> *power_domains,
>>   				     struct intel_power_domain_mask *mask)
>> { diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h
>> b/drivers/gpu/drm/i915/display/intel_display_power.h
>> index d616d5d09cbe..05880e9da89f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
>> @@ -186,6 +186,7 @@ void intel_display_power_resume(struct intel_display
>> *display);  void intel_display_power_set_target_dc_state(struct intel_display
>> *display,
>>   					     u32 state);
>>   u32 intel_display_power_get_current_dc_state(struct intel_display
>> *display);
>> +bool intel_display_power_dc3co_supported(struct intel_display
>> +*display);
>>
>>   bool intel_display_power_is_enabled(struct intel_display *display,
>>   				    enum intel_display_power_domain
>> domain);
>> --
>> 2.43.0
