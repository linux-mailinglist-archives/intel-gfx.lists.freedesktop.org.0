Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id c8FuJ8gqVWoskwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 20:13:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74DB074E606
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 20:13:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=gVzAJuQD;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 600E210E3E1;
	Mon, 13 Jul 2026 18:13:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62D6910E3E1;
 Mon, 13 Jul 2026 18:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783966404; x=1815502404;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4WkoXuwLP3asrALnEIatWyDw7EQeUTy/dO5GlDBwRws=;
 b=gVzAJuQDC2KIq7yOlIFgr6oGNbyIMSxAavnBTWIUBrXbOpd2SoKaIYKg
 dxGGoIID288pY2fH/gcGL4UPMaKRwfAjmbldIQIaYyK5SolxiPI9kdwyN
 oUukS71ufTZ1/iYT8VkIcEaa2cGrbC0NhCgRCVTdihd6+c/AmDAzuJBYq
 MIoLQA0nGnqecTS9C0/Lsn047Ve7bYNaJVfwHmxRlo4IJicBTrw9A1sVx
 4d3K6fsBOfO7YPMRKYxxArA9uEjP8YoK4HBZg3WLEsMVGfzibg9zetZdQ
 DmuXjll3EokrifWCUY/Efdi6VYNHo3/26+GWAv+zURjl/icqq/Jnn3KSy g==;
X-CSE-ConnectionGUID: h/PVrwmSRluiKkSpntkJhg==
X-CSE-MsgGUID: kbaeCaRTSPmhOFjoaW1+lQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="84360300"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="84360300"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 11:13:24 -0700
X-CSE-ConnectionGUID: /sbbfz5rTieAx8+tZu3CFA==
X-CSE-MsgGUID: ytLo6s9nTdKgadXyqILuvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="259203562"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 11:13:24 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 11:13:23 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 13 Jul 2026 11:13:23 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.21) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 11:13:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VuzFJHUhuaibH+VV7t0cH3co5TXlgkRzxyG7BqqJFSmwGehwF0uML9JQUfecaMjcw8hdR6guYLt6UAdzVlWgOKBFwRzNeFJgZGT18xDmARROSMiknWaKuM/EZnL+pTQbwzmWAattlrVky/fhY5qKYd5smVyg99djmKHpsE9jU1AHAk2MiPiE0/NTGD3VNpT6Q7zAicmiic8g3qZ7Afb6s+ETCBS2DTjdT0MU2Z0fkwiWh98jJ7g8GBg8eEEjxiEHeO+mcuErf6+AdCXE2veT4MK96bqo6logV1wCWuuOs4xmWri4Wo29uG+O4ectsj/LGNIG2KpLyHum2BPa3mdMjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gfK00rMTsySWJ6XdCk4Z5T0vP4uXodaquMLWhW53OvY=;
 b=Yy3m8AsOAj4tD9rQHKNLXHCoRU91RUQfcWVULb2VcIdgCtg2qEcsWRGc+LYb0JywFb6Xksa4ymT5CGTToEGSR5Rg1KiDzo0rOHmUllMVUV3Z5KG6kMzpW01vXS0eRszfFkkUA5ECrpf9fe7i1PRJqdHS/ctYACLVc1lFlriimyQ+NikXXj6LfSdqQVK2JyQRv8Re8/A9LaiAnjZRKQmIOJ6pK84O+l/06tlZmtfhpuELWBRtetpjjd6zIBb8kgWr/tdlW/1zST9J4K1DUMb5OpaDEbC6Bfrqiye27L0rIQJD6mLxAwSB+bRwzwRK4W24qXmas3i/Muuuz3sxXa3l4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13)
 by SA2PR11MB4876.namprd11.prod.outlook.com (2603:10b6:806:119::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.19; Mon, 13 Jul
 2026 18:13:20 +0000
Received: from PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b]) by PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b%5]) with mapi id 15.21.0202.018; Mon, 13 Jul 2026
 18:13:20 +0000
Message-ID: <ccd34394-ce42-4ee9-9b30-f2a0feb3322e@intel.com>
Date: Mon, 13 Jul 2026 23:43:14 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/11] drm/i915/vrr: compute CMRR fractional timings
 generically
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
References: <20260616144233.832276-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260616144233.832276-3-mitulkumar.ajitkumar.golani@intel.com>
 <eaec82d5-7f46-44b5-98ae-14048c6ab33c@intel.com>
 <IA1PR11MB63485F18CB78CA3A8955AE99B2FA2@IA1PR11MB6348.namprd11.prod.outlook.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <IA1PR11MB63485F18CB78CA3A8955AE99B2FA2@IA1PR11MB6348.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0278.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1f2::9) To PH0PR11MB7636.namprd11.prod.outlook.com
 (2603:10b6:510:26f::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7636:EE_|SA2PR11MB4876:EE_
X-MS-Office365-Filtering-Correlation-Id: 499dc311-e701-4606-b355-08dee10a6b91
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|23010399003|22082099003|18002099003|3023799007|56012099006|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info: 6a0Zo2xpwuIcvg1CQrL2dNx8vcJ9yNTPgN9XSrDGbPNJ3RhISmu+p4P8sdQls+okqIWhApZlWNi0Jp8lcihgGv8tvjll5ONZyvmDrbJX9Dvlp15rnj4McNhcy3WJvGJ4KBqrZodeg6XPJFUYqoT8dL7vrPEUKAJ2Y3fGI1NotAIweDRnTAQ9Mf4RFLhj9NAG3R3jU2QNQ8EqFYZMwJ8wAqCS9iLgCO4tGw5XrgvwLUAs2fasKfylSgjR0xiF/RBmSkfihI0Q/6e4MEsOVFD8edRNuisKDOOumHLkfqxsJq+zfOgX/cvhFEIm6yuJ6dMJfASGaEevrmLG0sQxjGHiqHDZ7Sm/ur8HUxIXiMpdzI/ySzoDsvSlWj3CkAdi5d5Xp+l/ThGNciw9okO94GfdPE44BYB5CzJ5Llmtt5Qj/xq44u43Py2smDZ4olqfJk0cHlPORHJrJRuf4ywNEHOuFawtJ8yPCaGaeamwRSdtZwEpyXXyagAAWZqpoIM1iRnQEWYHQ968ZUzDc53agoqM4PCx0EPHO0Pmg+TXvx9e/vNzDsrMmAvqN8ObNBhsiWNS0Pfn3usE6Z9FJuG4reTk9eeb6KIfyzbNZiZpD3GpsCSVP/tfXa9R0l+sr6xduZeRSIsdWDRQL4k+iChNJSXILhVmYYBSQMx2anhOH3TgFDQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(23010399003)(22082099003)(18002099003)(3023799007)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?emZQVzBOZ2p4cGNFcWhPbERJTE1BSDFFS3JOeU11N0J1U1ZqT3Q1NjFYa3FP?=
 =?utf-8?B?MEFISXVGL3orNHU4bUVrM0N3dVpXcG01OVlmTndFUG4wd0lRcEJ4eDhwZjAz?=
 =?utf-8?B?V1hCNG83bFM1VTJaU1loQXBLMHh5bW9PdDlJdXlxZmg5eWxGSGxzSEJIREE5?=
 =?utf-8?B?alRwMTRFU0dBV3lUNXBFb2FWU3MyaWpiaUxHVWljL2NwT0JEbnNXKzdQenBH?=
 =?utf-8?B?NTg3RkdTeXlIaFRRQXdoeDZ1WThHSU8yZGRpcm4zR3d1aUpEcVZoU0hlT2t1?=
 =?utf-8?B?TGw3dGNoN0NEVXphVVpLb3NoVUZIbnd4alFwZHg4b2g3cG5TMUdqN3NtYnZu?=
 =?utf-8?B?QWdiZkdtem02UFRZenh6TnVKVUZ4S0xsVk9ub0lqY0VMYkNnaFk5bXFvM2R0?=
 =?utf-8?B?M3JSelBEWTZWalNib3krN3oycDQyME5Yems1czRXenBJM3Zta1k4b2xwc0E5?=
 =?utf-8?B?ZVYxWWRRM2IwR0c0VXk5a2x5d3J3YUNpaGwxYlFKS2hMRVhnMTBFVGpjMkpO?=
 =?utf-8?B?cDQzYWJGOHpXbzVvUVAwNk02WStKWGNXbXhPbi9DbzNybm1QMnNxU3dmaW5S?=
 =?utf-8?B?dG1uTkNoOXo4Y2lmTHptMFExT1N5c2gzdVZFUS8xOEtRMmtPM1ZIWS9GSVE2?=
 =?utf-8?B?NGpMQzkweXFhend5OXlwNllkc1RmclQvWkZGdXg5U21MZ1hHejZ0UjhQQjEr?=
 =?utf-8?B?RFJqSTJGUTF5SHRxMEdjNE5OZlpDcmZoK283dzN1dUUwVUNaL3RZWUtvUVV6?=
 =?utf-8?B?Tzd2eXZ2NXMvcEVQSTU5K2VRdWVuTXhKZVRsQWV6QUx4eVNRY1FrY1hpS3Yz?=
 =?utf-8?B?ZjEyOEgvZGllc3ZoWHpYVjF6S3hoKytIdko2NDc0cm9KaUNJcjdjWkYzUFdH?=
 =?utf-8?B?eHdCMU1KdjBOcTByMXV3OUEveTU1WlplNjg0NnZtUGY0MFBsVi9qWDB6NE5O?=
 =?utf-8?B?azl4K0ZUenhuUU9mSDZNeFdYcWhEYzRmaHBuVnNGR3BkZWtia1ZiVmZNYUxL?=
 =?utf-8?B?ME1nUDVqcHZjT3RCcENNdVF1bEszQWplazQ2WGNiYjBsZGVFYU54bHRpekMw?=
 =?utf-8?B?M21RODNvUmZrWTB4NVRXRk5NRDVrdi9QeFMvOUxqWHB1dHF0MVFlTXFTNzMx?=
 =?utf-8?B?ZE1mWlVYTnAzRFBUZGI5ZGVOUGJURllEelBRVTVxL0ZndFRQYlFRdVhQcVAw?=
 =?utf-8?B?NktZSXdFdmhCWEdFRUtWb1l1TzkxeTcrdGhMcHdQckdUM1BDKzZ6TmtYQ1BM?=
 =?utf-8?B?NUpzMG0rRWRQRU1VVGdUOVN0b090dkpmU3JXOG1aaXJ0M1BNZEd0Z0lWQmZn?=
 =?utf-8?B?VTNzeE9vN1V3NFArSGRMQkpLSVdPM3ArV2JZekxkUW9tMFJCaFFnczdUVDF1?=
 =?utf-8?B?R0tFUGhRQkJZOHE3R1RPYUNVdWtQZ29nSEFIWTdsWWZjK2MwYTM0ZUJDS0gv?=
 =?utf-8?B?SHFNYjNtcjlQUVliTkVxL1ZHdXZUajZTZEQ2WTRGdVVEOG85QjVrVWlzWnlP?=
 =?utf-8?B?L0NqcWVHSmNWV2NFUDVzcXczUEo2Tm5DY0J2eVpWZ3A1QlpaamwrTGcrOFZa?=
 =?utf-8?B?SngxK1A3VDdQS2w3MFRnRmp6WHYzZnNHVFpPd1FLblNhTGNTQlpqdTc0OUpw?=
 =?utf-8?B?eGltTUI2N3djcVFJcURPRXdaajNDTGtHc1hPMUtpdFdKYzdhNHRDcEJBK1hn?=
 =?utf-8?B?WFBRcS9lS3JjV0lEdnBQRzZHVjhGdXNYVzhRdUpHaWNyOWxrN05WT3hDMEVH?=
 =?utf-8?B?OUliWGZQb3hMa0kzSVNoYWw0NHhuOGdWdzcva01ZbXczMVNVTzM1SkZJUUFB?=
 =?utf-8?B?ZmphWS9ydGlwdFdVYVpRYnBGTkxYbnRrYzV5aTJheU5kWDhFK0NqemVpekE1?=
 =?utf-8?B?WXBvS2FxYVcxaDJaaGFzYXFaUzRBYzZ5UEgweUQ2RTA1YmtUTWZXQnhlMUlr?=
 =?utf-8?B?NEUwamtBUVUraHBRdU5pclgzbHNqVXVET3JHUGZJNnZ4WHd0K2FkQ0lNalBI?=
 =?utf-8?B?dFFPNHc4T1dhSUJOck5vRVNyeWNOd2V3YUIvNks2czNWbDlKNkRQL01pMkxp?=
 =?utf-8?B?eFRxN0tHVkNmTUROeXNEY3YzQzFlckQ0a3dCV051VWx6bGxnVmtOYnFIQlNO?=
 =?utf-8?B?aVgxcFBmNkd0ZEswSmpsa0dzOTdKR0FIb0VaWUJBOUZGYXk4SmtqTW4wMndW?=
 =?utf-8?B?Wk9Ja2ZpY1BZUVhsdGFBTWYxanZKN0dNaktNSWJBVlIxR1l5UENWeCtjeElo?=
 =?utf-8?B?eHJQak1STGxxRG1lMEsrdHNRUzZLaWJ0K1lqOUVrYWlxdHU4eGk3dWx6eXlH?=
 =?utf-8?B?SnpsdEh3ZzhheHYwVW43cFM4WEtTeEFYWHp0c2ZwbXhjdWhGRURWVjZZTS9R?=
 =?utf-8?Q?kf4yfRT2p1a+JsJd934c1mNfUN/jkJPzrNL5F?=
X-Exchange-RoutingPolicyChecked: Ay6h4LwNM8U6gG/SqKrQJWxKzlsNZTu1CC5h98eXaGs5TjhZxixlfyO/zMTDDU/aJjfYQ1wGanSEcYuXtyX29yslIT5pb/d/TMoYl3t40fe6GdI0gcJWV0BV7ic6h8kf1kO+vAH9jF2IWhhQo89ZCbU5JUFvxbAiVR0VGadQlDBZ4uHoDbnP7TQe1M1ESPdQXK0KP5Wm/MEiixhn+TWQJyIMMuUVHYlsrNj7uDUYSuT+RaieG5hlC4bRbN6So2rS+8bxBB0av9/TEOrfcg75oz4RatLZT/1SKEZTKhrjeI4GMVsR9oEtnrwTJK/snQXtMi7JReD80GFwUklFXgQryg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 499dc311-e701-4606-b355-08dee10a6b91
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2026 18:13:20.7490 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6zubdzDlID1LSLs/u39+feeGfHO2drznU4QgGLFAVkniYLk+zLs7a5Z6Ucng21jXIWp11zxmMR71fjYeEy/qgsHiYJ/yWw3C7ZB4fSYzY34=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4876
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:mid,intel.com:email,intel.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 74DB074E606



On 7/13/2026 6:31 PM, Golani, Mitulkumar Ajitkumar wrote:
> 
> 
>> -----Original Message-----
>> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
>> Sent: 06 July 2026 17:29
>> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
>> intel-gfx@lists.freedesktop.org
>> Cc: intel-xe@lists.freedesktop.org; Nautiyal, Ankit K
>> <ankit.k.nautiyal@intel.com>
>> Subject: Re: [PATCH v2 02/11] drm/i915/vrr: compute CMRR fractional timings
>> generically
>>
>>
>>
>> On 6/16/2026 8:12 PM, Mitul Golani wrote:
>>> Replace the disabled,
>>
>> I guess it is still disabled at this point, so the commit message is a bit
>> misleading.
>>
>> eDP-only,
>>
>> Should be a separate patch.
>>
>> fractional-CMRR code
>>> with a generic, transcoder-agnostic computation driven by an explicit
>>> per-CRTC target. Compute CMRR_M and CMRR_N timings based on video
>> mode
>>> reqirement
>>
>> typo
>>
>>    if CMRR is required to be enabled.
>>>
>>> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>>> ---
>>>    .../drm/i915/display/intel_display_types.h    |   2 +
>>>    drivers/gpu/drm/i915/display/intel_vrr.c      | 121 +++++++++---------
>>>    2 files changed, 63 insertions(+), 60 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
>>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>>> index 897a1ffd7b79..39e11362630c 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>>> @@ -1548,6 +1548,8 @@ struct intel_crtc {
>>>    	struct {
>>>    		u32 numerator;
>>>    		u32 denominator;
>>> +		/* Derived during atomic check: 1000/1001 video timing
>> required */
>>> +		bool video_mode;
>>
>> I am not sure why this is needed at all, since you can just use the numerator
>> and denominator to derive if it is a video mode within compute_config.
>>
>>>    	} cmrr;
>>>
>>>    	int scanline_offset;
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
>>> b/drivers/gpu/drm/i915/display/intel_vrr.c
>>> index 41118883b845..e36c0cab096a 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>>> @@ -26,9 +26,6 @@
>>>    #include "skl_prefill.h"
>>>    #include "skl_watermark.h"
>>>
>>> -#define FIXED_POINT_PRECISION		100
>>> -#define CMRR_PRECISION_TOLERANCE	10
>>> -
>>>    /*
>>>     * Tunable parameters for DC Balance correction.
>>>     * These are captured based on experimentations.
>>> @@ -186,69 +183,69 @@ int intel_vrr_vmax_vblank_start(const struct
>> intel_crtc_state *crtc_state)
>>>    	return intel_vrr_vmax_vtotal(crtc_state) - crtc_state->vrr.guardband;
>>>    }
>>>
>>> -static bool
>>> -is_cmrr_frac_required(struct intel_crtc_state *crtc_state)
>>> +static void
>>> +intel_vrr_cmrr_compute_config(struct intel_crtc_state *crtc_state)
>>>    {
>>>    	struct intel_display *display = to_intel_display(crtc_state);
>>> -	int calculated_refresh_k, actual_refresh_k, pixel_clock_per_line;
>>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>>    	struct drm_display_mode *adjusted_mode =
>>> &crtc_state->hw.adjusted_mode;
>>> -
>>> -	/* Avoid CMRR for now till we have VRR with fixed timings working */
>>> -	if (!HAS_CMRR(display) || true)
>>> -		return false;
>>> -
>>> -	actual_refresh_k =
>>> -		drm_mode_vrefresh(adjusted_mode) *
>> FIXED_POINT_PRECISION;
>>> -	pixel_clock_per_line =
>>> -		adjusted_mode->crtc_clock * 1000 / adjusted_mode-
>>> crtc_htotal;
>>> -	calculated_refresh_k =
>>> -		pixel_clock_per_line * FIXED_POINT_PRECISION /
>> adjusted_mode->crtc_vtotal;
>>> -
>>> -	if ((actual_refresh_k - calculated_refresh_k) <
>> CMRR_PRECISION_TOLERANCE)
>>> -		return false;
>>> -
>>> -	return true;
>>> -}
>>> -
>>> -static unsigned int
>>> -cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool
>>> video_mode_required) -{
>>> -	int multiplier_m = 1, multiplier_n = 1, vtotal, desired_refresh_rate;
>>>    	u64 adjusted_pixel_rate;
>>> -	struct drm_display_mode *adjusted_mode = &crtc_state-
>>> hw.adjusted_mode;
>>> +	int requested_refresh_rate, current_refresh_rate;
>>> +	int multiplier_m = 1, multiplier_n = 1;
>>>
>>> -	desired_refresh_rate = drm_mode_vrefresh(adjusted_mode);
>>> +	if (!HAS_CMRR(display))
>>> +		return;
>>>
>>> -	if (video_mode_required) {
>>> -		multiplier_m = 1001;
>>> -		multiplier_n = 1000;
>>> -	}
>>> +	/* No CMRR ratio configured through debugfs */
>>> +	if (!crtc->cmrr.numerator)
>>> +		return;
>>>
>>> -	crtc_state->cmrr.cmrr_n = mul_u32_u32(desired_refresh_rate *
>> adjusted_mode->crtc_htotal,
>>> -					      multiplier_n);
>>> -	vtotal = DIV_ROUND_UP_ULL(mul_u32_u32(adjusted_mode-
>>> crtc_clock * 1000, multiplier_n),
>>> -				  crtc_state->cmrr.cmrr_n);
>>> -	adjusted_pixel_rate = mul_u32_u32(adjusted_mode->crtc_clock *
>> 1000, multiplier_m);
>>> -	crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state-
>>> cmrr.cmrr_n);
>>> +	/*
>>> +	 * The numerator encodes the requested refresh rate in kHz, so the
>>
>> Not accurate, because numerator/divider together provides the refresh rate.
>> If anything the numerator is in mHz as commented in patch 1.
>>
>>> +	 * requested refresh rate in Hz is numerator / 1000. It must match the
>>> +	 * refresh rate of the current mode.
>>> +	 */
>>> +	requested_refresh_rate = crtc->cmrr.numerator / 1000;
>>
>> Integer division loses precision. It can be used in the comparison below but
>> incorrect to use it in actual M and N value calculations done later.
>>
>>> +	current_refresh_rate = drm_mode_vrefresh(adjusted_mode);
>>> +
>>> +	if (requested_refresh_rate != current_refresh_rate) {
>>> +		drm_dbg_kms(display->drm,
>>> +			    "[CRTC:%d:%s] CMRR requested refresh rate %d Hz
>> does not match current mode refresh rate %d Hz\n",
>>> +				crtc->base.base.id, crtc->base.name,
>>> +				requested_refresh_rate,
>> current_refresh_rate);
>>> +		return;
>>> +	}
>>>
>>> -	return vtotal;
>>> -}
>>> +	/*
>>> +	 * A 1:1 ratio (denominator == 1000) means no video timing is
>> required
>>> +	 * Any other ratio (e.g. 1000/1001) requires the video timing.
>>> +	 */
>>> +	crtc->cmrr.video_mode = crtc->cmrr.denominator != 1000;
>>> +	if (crtc->cmrr.video_mode) {
>>> +		multiplier_m = 1000;
>>> +		multiplier_n = 1001;
>>> +	}
>>
>> more intuitive to use names like rr_multiplier, rr_divider. Also the names are
>> reversed now.
>>
>>>
>>> -static
>>> -void intel_vrr_compute_cmrr_timings(struct intel_crtc_state
>>> *crtc_state) -{
>>>    	/*
>>> -	 * TODO: Compute precise target refresh rate to determine
>>> -	 * if video_mode_required should be true. Currently set to
>>> -	 * false due to uncertainty about the precise target
>>> -	 * refresh Rate.
>>> +	 * Let pixel_clock_hz = adjusted_mode->crtc_clock * 1000.
>>> +	 *
>>> +	 * cmrr_n = requested_refresh_rate x htotal x multiplier_m
>>> +	 * cmrr_m = (pixel_clock_hz x scale_m) % cmrr_n
>>> +	 *
>>> +	 * where multiplier_m/multiplier_n = 1000/1001 when the
>>> +	 * video timing is required, else 1/1. The integer vtotal
>>> +	 * term is tracked in SW (it is the programmed mode vtotal)
>>> +	 * while the fractional part represented by cmrr_m/cmrr_n
>>> +	 * is tracked in HW.
>>>    	 */
>>> -	crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state, false);
>>> -	crtc_state->vrr.vmin = crtc_state->vrr.vmax;
>>> -	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
>>>
>>> -	crtc_state->cmrr.enable = true;
>>> -	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>>
>> where do we set this flag now?
> 
> I915_MODE_FLAG_VRR is intentionally not set for CMRR. CMRR is implemented as a subset of the fixed-refresh-rate path. The older TODO in the readout predates that design decision and I'll clean it up. cmrr.enable will be set in the dedicated CMRR-enable patch at the end of the series.
> 

Please call it out in the commit message. Otherwise, the change looks 
out of place.

> Regards,
> Mitul
> 
>>
>>> +	crtc_state->cmrr.cmrr_n =
>>> +		mul_u32_u32(requested_refresh_rate * adjusted_mode-
>>> crtc_htotal,
>>> +			    multiplier_m);
>>> +	adjusted_pixel_rate = mul_u32_u32(adjusted_mode->crtc_clock,
>> 1000) *
>>> +multiplier_n;
>>
>> Please align the calculation as per BSpec-68925, calculate the cmrr votal here
>> and retain the cmrr_get_vtotal semantics.
>>
>>> +	crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate,
>>> +crtc_state->cmrr.cmrr_n);
>>> +
>>> +	return;
>>>    }
>>>
>>>    static
>>> @@ -424,8 +421,6 @@ intel_vrr_compute_config(struct intel_crtc_state
>> *crtc_state,
>>>    	struct intel_display *display = to_intel_display(crtc_state);
>>>    	struct intel_connector *connector =
>>>    		to_intel_connector(conn_state->connector);
>>> -	struct intel_dp *intel_dp = intel_attached_dp(connector);
>>> -	bool is_edp = intel_dp_is_edp(intel_dp);
>>>    	struct drm_display_mode *adjusted_mode = &crtc_state-
>>> hw.adjusted_mode;
>>>    	int vmin, vmax;
>>>
>>> @@ -459,13 +454,19 @@ intel_vrr_compute_config(struct intel_crtc_state
>> *crtc_state,
>>>    		vmax = vmin;
>>>    	}
>>>
>>> -	if (crtc_state->uapi.vrr_enabled && vmin < vmax)
>>> +	if (crtc_state->uapi.vrr_enabled && vmin < vmax) {
>>>    		intel_vrr_compute_vrr_timings(crtc_state, vmin, vmax);
>>> -	else if (is_cmrr_frac_required(crtc_state) && is_edp)
>>> -		intel_vrr_compute_cmrr_timings(crtc_state);
>>> -	else
>>> +	} else {
>>>    		intel_vrr_compute_fixed_rr_timings(crtc_state);
>>>
>>> +		/*
>>> +		 * CMRR is a fixed average Vtotal mode and is only computed
>> on
>>> +		 * the fixed refresh rate path. It is generic across transcoders
>>> +		 * and gated on platform support and a valid debugfs ratio.
>>> +		 */
>>> +		intel_vrr_cmrr_compute_config(crtc_state);
>>> +	}
>>> +
>>>    	if (HAS_AS_SDP(display)) {
>>>    		crtc_state->vrr.vsync_start =
>>>    			(crtc_state->hw.adjusted_mode.crtc_vtotal -
> 

