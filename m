Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 371E6C3409F
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 07:18:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB71B10E690;
	Wed,  5 Nov 2025 06:18:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c61hfE7Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08A8A10E690;
 Wed,  5 Nov 2025 06:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762323508; x=1793859508;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZSBM0oEvxoa9SGjWvMCh8MjF5M9xyZW46TtCS9reM4A=;
 b=c61hfE7ZG+o0ZEQUkHo+jxJXZYi70rISSN8w2GbdRGKKiym62SO5FnYf
 qxMnv0AKyOO2xUfEbmbGBxfbNlGgst0vBJ7v0O3V0y2pdX1xSX4x+bn8J
 O7Z4/zhxfuq4dofz+JUVC5gj/gYM7d0JeNogZxzqSChJ2eMMnMxnGa0Hx
 CKqFLy+ePaOYSe01YWZb5MO6aYS9xAKJlqX9Bd6a3Cj4QjSWfgEREUyMF
 3XNZtogyrLJDaf7df5U7dKoQHO/lvX577yepSXZVYxysPNAI5mbhcLThZ
 TjtHbVgjrIxOyge1wuTDUXTPCEDhyrofS6/lvk/sZnepqvNWr/CN7p5Vy g==;
X-CSE-ConnectionGUID: 1VCRq1FHSiSiIxd10iJskQ==
X-CSE-MsgGUID: egUqXsYrRlqoHplIWuTQ9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="75778981"
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="75778981"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 22:18:27 -0800
X-CSE-ConnectionGUID: iHEqNXH0SvCyN+qBmkDelw==
X-CSE-MsgGUID: jUoUhH+uRtWjh1cgPMOmHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="218152923"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 22:18:27 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 22:18:27 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 22:18:27 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.39) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 22:18:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Abmv8Leu9szAK8Slf/93ZsuOn8WnAxYOHqW+wPk6BcSOxRzK3yB1nx2dsbwZ7OQ79GIgllwJPzBYehWYetHNyn+WuAcnxVDsAIpapcV5pmGEM5CZHAOazchR/zGPmEbNxdLajS/m0QTh1vQBgCGB7CcTJJ3Une7m3/IAIdEDJOYwRkphpa6WXOKTp9In0fikkOti3sSFKM1dswo2CXKxrRZWpFRyhRAUubHqeaKPGG18sfdLgwtt6MkbUNXVk4MCXBO+1m/kiVoJEZwYhcU0Ry2b9IOV4mJxxe2pcSBxq2N5Jpc3vc986IjMYjNgHuLZsN5D4TdbXOq6TQe4ysU18w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yXnBwDA21dNXz3xJSAl64/YcKfs3mNWdoVd2ROqZ/lg=;
 b=rkHyqhnuEbJ22GVyh8k0y+evUM8v809xqDNMcuD9Lx6R34jkooE8AdD2cLaFsJcUSd3ovlQu9mW2Vo3psBcWpfJSZ6r32Dg1DxOXKgW7eVBjGJJrlaxZAnzLnsuNpSYqhk6mLSWe8eB/93V7/0toWtwR+er3VWummE9L2JdWZawIiGvYmEelQTZFIEPcLzdzIwgVUrsMumV1C/wP+E8XugEeJ88x1uxBTdLf1F/4O4d+NYbjinOUwv/cTQaIhfdBHCaoohzuvzpCY0bzK+527DWlv1enAFkMAN/c/2c0IG5boItgL0fh7SxRbpnIeJTRYVDawcetrAVBEiFbBv2RvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB5147.namprd11.prod.outlook.com (2603:10b6:806:118::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.15; Wed, 5 Nov
 2025 06:18:25 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.013; Wed, 5 Nov 2025
 06:18:25 +0000
Message-ID: <4d642610-e84e-4663-bceb-1e3fd64af600@intel.com>
Date: Wed, 5 Nov 2025 11:48:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND, 19/22] drm/i915/display: Add function to configure event
 for dc balance
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <uma.shankar@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251103053002.3002695-20-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251103053002.3002695-20-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0024.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:179::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB5147:EE_
X-MS-Office365-Filtering-Correlation-Id: 026504ea-583b-4300-dc7f-08de1c3320e4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aVZXYlUwOXQvSjNEeENMUWpLV3R5R2RPaUplbElseVphYkpRdTlISlgzcXBC?=
 =?utf-8?B?Y2Q2YXdXOXpsRCtNWkdqb3oxSFBsQWFoVmdvakZUVGpSNXNZeDVIYVVUT1p3?=
 =?utf-8?B?eXcxcDVpMEpRQVlKQ3BpQ3ZmU3NLeDhiTlZmRG5kYkF4eFFKRW04R01nQnNz?=
 =?utf-8?B?ZlB5YkhsenEyN0Q4QllNYlZPQ2ZWVXgyNHNRc2tYNFhsKzloczh6MGVEY0Vl?=
 =?utf-8?B?eFJWR281bGNhQU1BUk9qZ1BsZ2JVV0xvWTMvVTdKY0hVTjV6K0dYL0VVSTBF?=
 =?utf-8?B?M3c0bDJlL0tGckdUajdsUzFXUktlN1B0d0ozaHI4USsxNTFvdmExQlVNcUdz?=
 =?utf-8?B?S2YwNWRPWUNwQmZBS0VCNld0NTAzYTZKQzFqZWtpSWVrWUFqNDdJbmlBUkhj?=
 =?utf-8?B?Q0R1ekJpOHk5bWNSOU5STUVqdUNnRmxCMWdUbjYrYkd1Qzc4aFprV01WbWQ0?=
 =?utf-8?B?RDB2aktXcUhsZWdMUzVEaTZibGQ1Qm14ODhjQmVhWkRjWTYwRDlhZ3JwR09m?=
 =?utf-8?B?WWdnL0lrYldwVisrZXN2UThvc1REbk1HQ1FKUzFMWTdQcU02TVNGMkkyT1gv?=
 =?utf-8?B?UGhOaWhMUkoyWWVQUjdGSEp6akRVZkN6K0RVT3gvYlVSNU9EcFloZGJyQ1dj?=
 =?utf-8?B?TUlLRXkybFZUQkM1Y1g5Y2ZtYkViZGl0Vm4zZlBabzdncmFxT0NQLzlFdVdZ?=
 =?utf-8?B?akk0QWxQS0NJV1Y5OURBTnJvTlB0Vk5GU3FLOXdFWi8zSWZ5ZVhLQldpQkx6?=
 =?utf-8?B?SzBYVWNQL004elBjNXJwamUyWmp5SjlGbTZKOGx2Wi9tUjRzZ1g0Vi9qZWRR?=
 =?utf-8?B?V1E5Qlkrb2VWWUp1RmVFN01zZDVtaHh0MTY1cm0vdkVzRFpWNEgydHlFL1RF?=
 =?utf-8?B?Yi82VnVTUTRFRjAxa0VFbjVkanFDZXFoclFTeTdkOGtIVS9EOEVDQUp3QjNY?=
 =?utf-8?B?K0h4RmQxTkVCTDArS05SUUl3TkZwUnZESkVoczl3b041bFdZR0xTeERhbjlG?=
 =?utf-8?B?NkE1aWtVVUhBMmtPcTVEK0xPSDhKUVJTUjBERVRFcFNERktmS0xlTUJwYUUv?=
 =?utf-8?B?S0R1NVQwNU1mZ1ZhRmdWRlpxdFh1eVRDcXROZVVGK3ZLUmpPdGtmbXV5Unh1?=
 =?utf-8?B?VlZZUXBZN0xvdWF1WjBxQ1JYbTc1Rk5NMll4WW1NckZxeWkvSThseW91WWNK?=
 =?utf-8?B?S1haV3BvMDQ5WlVzcTJ2dGxIYUlML2E0aytsTGhBdWpiRlh2M0lpMnZnbFVh?=
 =?utf-8?B?WitxYzhndmpUT1IreGNyMTZjbVRLR3RieTRrcFp5MWtzV1R6TC9jYzEwUHpQ?=
 =?utf-8?B?QUo0bUxNVTJWV3pHSU5Ra2YzUW1VRyttdm9pdkVRbVVrVzBWQldwZGIwWTUv?=
 =?utf-8?B?L05ySmN4UFY4YUl5b0wyZ1Q4bHgyRkhoT0grTGEySmNhNmtzSDA0bXdyRzZB?=
 =?utf-8?B?b3Y4NlQ3ajRNWVhROVJlWjF5RmJZNWVjU0FrSFhHZ084TUgwRnVLNWJFQU04?=
 =?utf-8?B?VnFMbHpHZDIycFFIUGpDc0o3S2k4VkpKSUVtcUY4bjVEcWNPc09aZXBYTHA0?=
 =?utf-8?B?NFRGZU41STJPUHVENUdtVmVZdFRmeXZlVWVvZTZ6TE5peGpoQng1L0dDQ085?=
 =?utf-8?B?YzNOMnZkcWlmNnNMamdWdFgxaCt6R255WS9wR0VuWDlQWGlrVlorWkgwdUF6?=
 =?utf-8?B?bGVvZ0pFRzVRL1BnOEI1MmcrNFlvZlZmbmlPbWZOc2FmU2JXc1dQWVl5eEk4?=
 =?utf-8?B?VXJ3NDZhb29QNFNrQW5Bc0pMWEZrQWhSb2RTd3EvbThUc2V0QzFpZW10QUFJ?=
 =?utf-8?B?cU9RZ1U2V09mZ2ZiU2RQaENKcFRTZTY1a2Y0M2Z1WGxpN1REeVlRNzBnRWFj?=
 =?utf-8?B?YmdCeFcwcGF3em13OHRzTy95SnRxdE5WYVFONDBFSXh4NVh5QUNDaThhSlpI?=
 =?utf-8?Q?TpTiSz3zNp63RgYo423581yyy2WlNKzS?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YkVoSGQyckVYb1ZJdUErbnQxWW5pYm5GY3MxUUcrb3ZLdHdaWWxlZ3BUUXRS?=
 =?utf-8?B?akw1aVhpaUlRQjZTaS9FUmQvaTZmaFRmWUxCUzlzaEZhRzR5bzlXU0p5Tk54?=
 =?utf-8?B?d0EyemxkQ0ZKNldRV2JVY01weENETVFzeVU1V01wZzVGTXhmV3g1N0VtMEVL?=
 =?utf-8?B?aWJWMWRGcWFOaGhXU2s5RERUZmdSV2RQZ2EyMWgxVXhOR1UyY2ZrNmxsNEwx?=
 =?utf-8?B?S3FyVVVGRlpNakR3aEVORlAyL0o4OUh1M3htT1EyZS9CbFZwNCs5d0xmaEVr?=
 =?utf-8?B?aE54NDZDb0h2dFNnQUZ3dkllRlY4bGI5YWVuNnhUT2N4SW9ueEhiTXVMaG5B?=
 =?utf-8?B?LzRIREV4K016NTVaWWY2L3VMUVU4VVFsNU40K3REcVVWcVFNZUhDS09TMUFp?=
 =?utf-8?B?bHordGMxeGJrV1BveWo1amtjZHZTZUtUTWdRdGtwZmZyd0F1dlFPQ01wNktD?=
 =?utf-8?B?dnN6LzFPRDRaYlJLMVhhc214czdvcmdSZE1JUTJxc1pSR0FZYzFVd21wVSty?=
 =?utf-8?B?WCsyQjBnWG1QVzhObFU4TE1Ta2t1Wk8yRTBvTkRNb2I1bWxpNGxvQi9jRXhU?=
 =?utf-8?B?cllUcXdhUXRFL0V2K0J1NHRxak9XN25PcmFNcjZIRldTajBQN0xDdHpndzVU?=
 =?utf-8?B?dUhEVmI5YkVMUjY4cHpGREszeEx0bU9VSHdsZzJJS0lZUDFGWitPQzlkNEJo?=
 =?utf-8?B?RFJtcmtyZ3JyK1lXeStiYzhQQzNTUkgwRzFHTElDOHRRWWRQYkdIOXRpSWZV?=
 =?utf-8?B?VVE0U0JrYU1XRGhnMHdROVVOMFhJTGxkaEM1aEZYb1VEd3R1V2VOSjBma2JG?=
 =?utf-8?B?K0pBQ2FkdjhBS3hxcGtuM0M0T01meUFua2c1QVBieHdFaUZ0bUZXZ3JFdlVK?=
 =?utf-8?B?cmE4b2dZNEIzOUVjWWc3dktqTThVVVd1czNKdHFxRE9ndXlERktqYm9GVm5P?=
 =?utf-8?B?cE92NzBZcSt0c3A3V282NEZjN2RObkFqRFVnSTgxUDA4LzhsMTZaRHQ2STZ5?=
 =?utf-8?B?NkZrT2FTRUxFaWEwNjJjTTIzWGRoY2o3S051RjVQeDRDTXJSK0YvSW1pNDZF?=
 =?utf-8?B?UElQT3Yyd01iRzVkOVlSL1ljRjdnZHpDUUY1ZURrWFNlMEFhVk5kUThsUjJs?=
 =?utf-8?B?S2lOYzJQSXRCSTZWaGRHL0J4WThSaGNnN0VBVGZBSG1QVFlRZnp1SGM4U0NR?=
 =?utf-8?B?eHMwdkNBQXdOYmlBemxGeUFFN1VHL3NCMytGdWl3WHhOUElXb2hnV0tPYW1V?=
 =?utf-8?B?Sk8xdzJqcStPWkFCQjROSCtOcklGNno5a0VSeGY4NzNENEZSQjcybzBnNlNt?=
 =?utf-8?B?N0RlTFd1aTBDTEs4T0kyOEh2OUlkNlpTVHZaYWxuVzZoZzA3OE1nSlhBRVdJ?=
 =?utf-8?B?Wll1Q0VjN0gyd0hQTXZwRU5KNHJweHIrc2p4Um4xSS91bnYwVUlwU3NTejZm?=
 =?utf-8?B?NkZ1WkwvNlRKbTdrYytaVEN1azlTTW5zV2xTSC9BZjgxOHFRMVNYdm1FUWUw?=
 =?utf-8?B?NjVveVBHUU9tN0xyaGR6QllFN0VBdWRvWER4QXlNZkNKbDBJQTdELzBMU0Q5?=
 =?utf-8?B?RWJoMW0xTXlaQ1dnM0N0cGlyaUxKaENIT1p0Z29RK3ZucXYwVFlDWnJ0Wnox?=
 =?utf-8?B?ZDhxZE40NXQ5eEloNDVvNkhST292RXE4L3lSSmtybmh6TmdGeDd6ejFNdFc5?=
 =?utf-8?B?TTlGSnNORHFjZW55Y0VpUDEydEROUTAwdUVTTHJhT1o5eE5tTnNtL2JablJj?=
 =?utf-8?B?SzJISlBjdDBTZDR6ZHRDSjhJNWR0U0dWMTU5YVNXTHVUOGc2YTRRTVkxNkQz?=
 =?utf-8?B?K0JGd0NQbUliVVdtTW8wR3k5S1oyY241d2E5UXRIWTBNa3lDcVlhMkpUOWFU?=
 =?utf-8?B?bkpwaVRnck1ZM0pXUFVkbzVtcmNvN0JOdVRCOUxSWkZCNXV6ckw4czR6dUxX?=
 =?utf-8?B?QkFaaDl6eHZvTVk1ZVMrR1g0ay9IdTdqai9WVlUwdTAxNE4zR0FZS0YwbHk4?=
 =?utf-8?B?N0x1bGt5RWkwR2tLV0UwLzhxcE03UVlHaGFVR2NZK3hYWnZvanR2elRlOXZh?=
 =?utf-8?B?VVowWHRLbWhNZDUvNjZPdWtnUU1ER0J2UWtDSEQ0RnBlYkJ5cmlWRGl6dGRi?=
 =?utf-8?B?UEFpalJ1QldGM1JyTlowVWIvZHlMdUd1b1JPUk55OWtrdGN1U2c3eDI2SW5W?=
 =?utf-8?B?a2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 026504ea-583b-4300-dc7f-08de1c3320e4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 06:18:25.7630 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6NzotAmJymvs0wrwmsu6NuK8LM4eRjP52BFfj76ve+i9vBFJkuakcfpuI2DGYB8RCrnfcwG8SqRrH4+QFqd7er9tAlQfVbwgEyNqukO/a5U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5147
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


On 11/3/2025 10:59 AM, Mitul Golani wrote:
> Configure pipe dmc event for dc balance enable/disable.
>
> --v2:
> - Initialize with redundant flags. (Ankit)
>
> --v3:
> - Add function as per new enable/disable configuration framework.

This is a new patch, the version history is no more applicable.

Regards,

Ankit

> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dmc.c | 15 +++++++++++++++
>   drivers/gpu/drm/i915/display/intel_dmc.h |  2 ++
>   drivers/gpu/drm/i915/display/intel_vrr.c |  5 ++++-
>   3 files changed, 21 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 3e3f4438d739..1460f9674a35 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -852,6 +852,21 @@ static void dmc_configure_event(struct intel_display *display,
>   		      dmc_id, num_handlers, event_id);
>   }
>   
> +/*
> + * intel_dmc_configure_dc_balance_event() - Configure event
> + * for dc balance enable/disable
> + * @display: display instance
> + * @pipe: pipe which register use to block
> + * @enable: enable/disable
> + */
> +void intel_dmc_configure_dc_balance_event(struct intel_display *display,
> +					  enum pipe pipe, bool enable)
> +{
> +	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
> +
> +	dmc_configure_event(display, dmc_id, PIPEDMC_EVENT_ADAPTIVE_DCB_TRIGGER, enable);
> +}
> +
>   /**
>    * intel_dmc_block_pkgc() - block PKG C-state
>    * @display: display instance
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> index 132d6cfc8e8b..32a9abd53a8d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> @@ -26,6 +26,8 @@ void intel_dmc_enable_pipe(const struct intel_crtc_state *crtc_state);
>   void intel_dmc_disable_pipe(const struct intel_crtc_state *crtc_state);
>   void intel_dmc_block_pkgc(struct intel_display *display, enum pipe pipe,
>   			  bool block);
> +void intel_dmc_configure_dc_balance_event(struct intel_display *display,
> +					  enum pipe pipe, bool enable);
>   void intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(struct intel_display *display,
>   							    enum pipe pipe, bool enable);
>   void intel_dmc_fini(struct intel_display *display);
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index eb6643ec5194..4d56a4e8c7ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -814,8 +814,10 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
>   	if (cmrr_enable)
>   		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
>   
> -	if (crtc_state->vrr.dc_balance.enable)
> +	if (crtc_state->vrr.dc_balance.enable) {
> +		intel_dmc_configure_dc_balance_event(display, pipe, true);
>   		intel_pipedmc_dcb_enable(NULL, crtc);
> +	}
>   
>   	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
>   }
> @@ -839,6 +841,7 @@ static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
>   
>   	if (old_crtc_state->vrr.dc_balance.enable) {
>   		intel_pipedmc_dcb_disable(NULL, crtc);
> +		intel_dmc_configure_dc_balance_event(display, pipe, false);
>   		intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
>   		intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);
>   		intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(pipe), 0);
