Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C24CAF3DD
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 09:06:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E60E10E484;
	Tue,  9 Dec 2025 08:06:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ef9diB4k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10C3010E484
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Dec 2025 08:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765267588; x=1796803588;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sFksvnBEVQRbS1UYBUSlYXKzbBW0sBaQAvD+zYxmZlU=;
 b=Ef9diB4kvMm7M/r5+7lqq7THtX1cXLNFFha59+Oip2Fs5fEBcSHyfWGK
 VPbWiJJDVu3omB/ZHYeOIUuVSySGKGvhgEahUaJiOSIYmtmg3manhSBNg
 J7pksWkDEFo6rrF1g5vQ+RO1sOWHjDMIoYg+9rUvaAROcaSLO8gLw0bg7
 G74Tv24CE6xF5EQvBvbNRA0OQqOslp76f5lqoMCHJv638IGTtetJQuVY8
 qLHze2NQqihEuNXc6Ad4FF8ARnThQfONoGv7pIEWlEK7XICUBtlppY8dZ
 ell8fjUweK6ye/CpeXTSOqiUs87mgAT4jP2V8RNt5IK0Y2l/8Jl0zSlaJ Q==;
X-CSE-ConnectionGUID: 5EiJ29QyR4iEsIgvfVM6Mw==
X-CSE-MsgGUID: 6Wtqss9JQWmdX3BIor0A3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="71074542"
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="71074542"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 00:06:27 -0800
X-CSE-ConnectionGUID: kHuP6IBDQFig/kT+Fd9Xqg==
X-CSE-MsgGUID: 8bmEbTgwSCuMx1w2JkZsNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="227196861"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 00:06:27 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 00:06:26 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 9 Dec 2025 00:06:26 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.71) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 00:06:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s79jbtmkmUuUTZWK1Jvx1wOIZKlqcpiHn5yvsEdt0aZ6+W1tL1a2Jq2D2E56jcBG80EokhJAYFEiJBCY8ABKsXpiGUqxRpTjLIsQmLTYpz7oZhNbnEz+nZHmlbU4iNg6U9YKzusyndBvRKJGslNm+NwqlfkbRZA4vVq8cPOaL9AfHP5lgbv5e6tyJ5d6cuj7MDd0BFwuyNd9ISuUi0ntL9LMp1dUUQenMAWneSz6XO3i7elIChlU3wgcj6R+NoQajK20ds862vrIVex1MPewANpfR2N/62RBaNisfZ+Lf/+PALdhYcSit71U1FyR45FNgQNXxlZvk/RbKFfAlDZ08Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BvCmYGWlDiXdY1wLLoxIjxp6p/oWojFsNxOF6hIDI2c=;
 b=gpJOVx0jSOC8jdg11NIZSrkIZMFSk7Str1Lcl9/EMvZydjnGBk8GYoSBo+caZIbmtiM8EYLHbPtYNZSJI1LLsVy7D0WE2PsMHUhmZYl6sWaj602/Yi/5JxRNWNQf7uvcnoAZitQ2IReQDwQbrk1LJ58ipcvsYMeIo/d4av0LAOQ+F7uJkckyDyvcrmOZnJqq0WlcCDganjHou0wbLckYgmK7n4Yn6tHio9WJW28y0gPBwzW983SmJEmA8Xa8WPdIISyiq0im8y8fqy3ViUIBYAmphJtPl/4csgpK75+smWKF/+RkPBYtsDbqITD8hEhrKnB5ftPZU2DifDPG+PJslA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by IA1PR11MB7270.namprd11.prod.outlook.com (2603:10b6:208:42a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.6; Tue, 9 Dec
 2025 08:06:24 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2%3]) with mapi id 15.20.9388.013; Tue, 9 Dec 2025
 08:06:24 +0000
Message-ID: <40c877e4-a017-4056-a0d4-8cf3ada0c96e@intel.com>
Date: Tue, 9 Dec 2025 13:36:15 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/selftest: Add throttle reason diagnostics to RPS
 selftests
To: Krzysztof Karas <krzysztof.karas@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <anshuman.gupta@intel.com>,
 <badal.nilawar@intel.com>, <riana.tauro@intel.com>,
 <karthik.poosa@intel.com>, <raag.jadav@intel.com>, <soham.purkait@intel.com>, 
 <mallesh.koujalagi@intel.com>
References: <20251209055616.1095495-2-sk.anirban@intel.com>
 <phjuejgrtlhzocdcmvglngezt4u3xhcdkptyeatx7rtx66vpwy@mfitxo4m7txn>
Content-Language: en-US
From: "Anirban, Sk" <sk.anirban@intel.com>
In-Reply-To: <phjuejgrtlhzocdcmvglngezt4u3xhcdkptyeatx7rtx66vpwy@mfitxo4m7txn>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0180.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1af::12) To PH7PR11MB8252.namprd11.prod.outlook.com
 (2603:10b6:510:1aa::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB8252:EE_|IA1PR11MB7270:EE_
X-MS-Office365-Filtering-Correlation-Id: 28ea01ca-b3b7-4667-e266-08de36f9d899
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bTUvczJuaHZXejZGak9iUmVyUnJRR0NFU243cXlIY3Q2VURXTlRHZTg2MENU?=
 =?utf-8?B?OW15eEUyK2JCVVVwNmVLTnhpTXJ2UllMcjdLblhsaUI2MDlWa1VWVGlmUkY2?=
 =?utf-8?B?NUd4VUZYL1VuOHd5WmE5NjM0alRxdWhxTUlWRk9QVlBmQXRSL3QrSk1YekdJ?=
 =?utf-8?B?WXlpUXZWS2YxcXVNNUZoSnhzQlBwZkxJbGJaRDMzUkNyOGh6Vms5ZHhhSkYz?=
 =?utf-8?B?LzQ3VXoxZXFFU3J5eExNRkNyL3FoL2dMSnJQVHR1TkVOWHg1dFZydG5VL0Ur?=
 =?utf-8?B?V0xPelhJbVYvVDRZLzExa0h1aTduU0ZmSzhmbk4vRStUYkR0QThBWVdLcUNy?=
 =?utf-8?B?Mk11Z0tCd05ZdUZlKzdsSS9RSG9oRkw3bmx6WERlYk1vOXgxeVBTZnRCM0pp?=
 =?utf-8?B?QVZqTDBVRG5CcjJHbUhrcnRFODFuTitmVXBaOEJua3ZFVVdyUERERXkzMVVm?=
 =?utf-8?B?RUljNFdKdll1TGhOc1JwQTIxM0p3ZXlmRGZWV2x6QUtodFErd0FtaUtUNG45?=
 =?utf-8?B?YjA2bS9wSERCYmJjR2E5aFN4WHBjMCtqTkpvaFU0RUYrZDdFUkRvWGZnYmwx?=
 =?utf-8?B?dldLRzE0M1FPRmp4RXF3YStwMGh3UHB1L1Y2aXFSN2FyUXJrRWk0TWhMbnRD?=
 =?utf-8?B?TUVGdndpYVZxbkIxRVZXYWN0YXF2bGxLWkZXbWR6enBlMkhqQ3lmWXZoaTQx?=
 =?utf-8?B?VCs3WlIzWnF4SnZ0dTZXYnc4R2ZxMHQvVHVxc3FQT3hnd2ppVmJyN012RjQy?=
 =?utf-8?B?SDl4TXROWlJlNFdIaitmZjZuN3lKZXdOZG9PWGE4WUh2NGMvVktmWmNJT09N?=
 =?utf-8?B?ek16ZEw5SHpqQjJHOHhHalNCV1hMS3FyM0kyUlhuN0sxSjZQbmorLy9lQmc3?=
 =?utf-8?B?UjdUR0tBR2hkbFVLekl4Qjc4TXhoejBVekQvcXRWN0NKenF1T1hzMHNqeGIw?=
 =?utf-8?B?MWZXaVU0aVQ2RHVPMjFTZXJLZWtWYkhzOXRvL1RSQW9jMEEwQUtIMHoxY25T?=
 =?utf-8?B?RnUxVTVXNVZlS3crdlBqaTZuTXZNV1d2TzF0dVFTd1JtamNCSkpGbE5iZHZN?=
 =?utf-8?B?TXJsRFlmbE5lcGFHWkhFVDZ5c3dLSmFhejJicXhvSFpsdDhQZmFxelIwd3NK?=
 =?utf-8?B?c1pKU3Njdm1vU0hJZUtjaDhUQW5qUlF1c3NSUjdhSVBEMTFkMjNURHljSEUx?=
 =?utf-8?B?Zm51S2lsVFM4ckNsZXdDZ0ZaSzk4cENISWFKL2ZIZnZpbWlxSlFyZ0hhekY0?=
 =?utf-8?B?WFFYcW1WaFlpREZNMmd2WEVidTl3U1VnQk5hUmtNa0ZaVDdOcm94RHIycTZQ?=
 =?utf-8?B?M1NDZTRSUWl2UXptZUU3R0tmK1RkSWZNRTY3WFRWeTdOZHdCRnFiTWh0ZlhB?=
 =?utf-8?B?Mk01MWVGUHhWU1AzV1VmWElENllrbUQxMEZMVVF3T2dzaXRZaGs0TWlGMXJO?=
 =?utf-8?B?cFNVak9iL1NRQXR3bTBObFIxVzZXaVhwN1RjWTd2RW1nQ2p6M3JQMXJkL1Rq?=
 =?utf-8?B?SlM4TEFYRUNEdHU2RmpqYWsxSTVwbTFOTzBZQm5PakgyRXVLVVhLWEZEVS9v?=
 =?utf-8?B?UjhpeCt1OUthNXpzWHd2Qm01dFpCcUMyditnaHNNNUptVVlWbm91NnRNUFlW?=
 =?utf-8?B?QU5aNUoya3JmUjlhaXA2UU56TVVIdTBMR3JiNEt0OFdSd05sd254KzdvMTF2?=
 =?utf-8?B?S2wzUk9aQUJBUmZlWTRJMkpnVzN1M1NzL3FuVHc0MDRSRXNadnhJNi9uRDhD?=
 =?utf-8?B?eWluYU53QXUvNnJrUjkySWJ1Z1loN21TalVHSURTQXFxNHZwNVROOW5jUzhh?=
 =?utf-8?B?Y2ZjL1FoVHM3WFFudmJvMHZjL2hhRnJ6MEcvViswRVpVT3V5cis0OGFUS0N2?=
 =?utf-8?B?RXFMOXVIVHlYamltL2VkMWRZbWIzUEFZblFPaW52YWdSejZHVW9VdENJRlFr?=
 =?utf-8?Q?VClg84idDfGZtmb5S+7/8z/tt8vRvPYA?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Rm5INUZOWkhYQ2FUa2puNWJUc01FUmF0NitHSnNHWTk3MzE0V2ZsTHFNL3pR?=
 =?utf-8?B?cG1RY085U2twNU50c0Vla0RUNzJ5MVBxMmtUbjFNaUFFZytickp1bndoMlZQ?=
 =?utf-8?B?dTE4Q1VOUUNUWnF1eEp0QmY5NnNtS2xDZys1UkRRSDFpcXFQd0NtR01pZTdX?=
 =?utf-8?B?SExQMEM0aXpDUWlnTS9yaHZEMmR3djhzbnVkZjd0K3dIVzJWRW1Cb3J1RkZu?=
 =?utf-8?B?ZWFJY0t2c1lwd0NoUlNWM0FNMFQvUk44UGRobzRaTWhESGxuWVRrakVLVXFS?=
 =?utf-8?B?bFdoSUQrbllpcmtlVkRPMUtFbGNwRUJhTHd1UTI0ZzcvVDVpdC9tdkw0QXFp?=
 =?utf-8?B?S0l3NlNVNVhadmt6QnNoMmlER3N6b2ZEaG9YaFNUTVphbG1lbFFidXVWM1k5?=
 =?utf-8?B?WDBFRHNxd1pHL3JpSUs2Q1ZUVWFTT1RsSHJMRTNNQlRLVU45bTY2UW5XTVln?=
 =?utf-8?B?UlNrTUt6dEh5c3BoVVZKU0JPRDcwVEQrR0xaYWJ3cTV0cnpCWUpIN0FyZVRG?=
 =?utf-8?B?N3pkdStYYXlrbGwwWmtpUXVrcnhOaWIzdFpHbitvUGVsSG1lWVBXREduaEVT?=
 =?utf-8?B?SFhaUElOaU5Rc2Q3dUVFa2RvbG54R0h1WGM2MjlRK2pLVFJlWEFFemNKbllY?=
 =?utf-8?B?Wk14VEdzdC85bnpkT2ljZk12akNzcGJGYkhZeEZiclB5SGQ1SDd2VHoxWTht?=
 =?utf-8?B?b1YxOUZ1VHo1Rm1zYm1DdnJCZDRSOWIzYjE1YkhJa0J1dTBybGhhbGdkVi90?=
 =?utf-8?B?ZGoyTnNXSnBQZVYzSEdmM25zVWVpeTJyN0lXM3RSb2cyQm1Ub0gxRk9WU2do?=
 =?utf-8?B?cEdLM29UVE0zb3d4ZDNENXRuWGRJOXFENVpjUGpOK2xhRk5jRDFjaXRGUnFk?=
 =?utf-8?B?RGI5czh5SzVhVzNtTjVJaUppOWNoYXBHa1ByaHcrd2ZmTGZ6MS9iM1FaZUpJ?=
 =?utf-8?B?WUlFbVlSeTRjMXk1RUEyWTFIMlMrQlpLZTNyMzFqc1pwaG5heWx5Z2RPQ2pQ?=
 =?utf-8?B?eExiOEZHOS9ZbjVoTjBqR002Zmp5UUVSbGZNZ3BsWm1YZng5dnVQTnRzbmRN?=
 =?utf-8?B?aWo4ZThXVXIvWXhUK2FiWU9TZXdnejBSRmNKU1pPVm1NYmlXWkZWeGdzL0N4?=
 =?utf-8?B?NGs3RmtLRk1obzllTEJsRDBLS3kwQWNMWGJWMDhtVTAwOXo5ajhTR0dTZVJL?=
 =?utf-8?B?RTlPVGJCcytxVWEyVDloZGhQRkpxWUYzekZsb0R2cXlWTk9kdUx4MHY3aEFC?=
 =?utf-8?B?cGYzVDQrd3VNZkQrOFcwRVI1MjBRRVlRd2ozd0g4VGl1LzR0S3lmY2JuUW44?=
 =?utf-8?B?V0t4ODBUQ2ZmQVg0R05iQXpCOEJKNkRYdW5xZHNqeUs0bTdock5RV3ZybnVv?=
 =?utf-8?B?aVlNWWxqTUs1MlVlN2dKcmFIbTFYdFZwbXlkbC9mMFdZK3hsbVpBUnc0cjdB?=
 =?utf-8?B?N1JpZWxhVFVoZWluOWVLcERWdk0zTnE0UENUL1JXdkg3a2QrSlk0S24wUUVD?=
 =?utf-8?B?b0pUT09CVUdqaXZuemlBNWdYNTQ2SGcvQW80Y0xhdWF3UW0ycUZ3bk1nUW5t?=
 =?utf-8?B?ZUNnQTcvb0dpZnpuTHR1NG9zc1M3OUtnQjlDZTdCbE5JWW1xS0RFZGFhMVRJ?=
 =?utf-8?B?Q2lDSWxCcGcvcVZkNzlaTi9XWDVvMXVPN2w3Q240MnpRWk9ITEtwYStDYytM?=
 =?utf-8?B?MCtSNXZkc3d3dWl4RVA2NXo0cEJkLzZwYlNYcjlvNlRFeEVVSVlLQUs5MFNi?=
 =?utf-8?B?bTMrT3ozMnNPWElQOWlUSHlxV3d2ZVVoTWdMbUxMVkJuam5CSlNpWTFDNHlt?=
 =?utf-8?B?NklMSW5wR2hyaGdYeUxXQys4MXUyS1NvVHBKRjdONlNVZE1xSTUrRUlvandn?=
 =?utf-8?B?dUtsaklhQk54S1N4ZHlPcS9ML2xUd1g2RlJmWk5PVHZTc2dsclBHT1Q4NkZl?=
 =?utf-8?B?N3dqR0d5TFVXU25OYUhtM05VeU5KZXZabUpFN3pzWEY1QThadjd1Uk5kSXB4?=
 =?utf-8?B?QlhKd25ZN1h0NEFhWENGNDZKZjRWbnN3WlBVM2JFb2VveDE5VitlOWdLRmFs?=
 =?utf-8?B?bkUralBLZ2gvd1dibFUrdDNFeVpHd1RLaUxyZFNLZUFLZUpmM2V1R1A0dXZl?=
 =?utf-8?Q?Y3aGmz+TwEUtBPJ4yaAs5EYTj?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 28ea01ca-b3b7-4667-e266-08de36f9d899
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2025 08:06:24.5655 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aT7u/hZfjiAKfxCQlaFFAEAIXfh2d14ufGsbDtZ5NiLsO3C7ofc/puI+UkG55Kp6LzhsXPXrOP6tT0tNm4Yv/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7270
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

Hi,

On 09-12-2025 12:46 pm, Krzysztof Karas wrote:
> Hi Sk Anirban,
>
> On 2025-12-09 at 11:26:17 +0530, Sk Anirban wrote:
>> Report GPU throttle reasons when RPS tests fail to reach expected
>> frequencies or power levels.
>>
>> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/selftest_rps.c | 17 +++++++++++++++++
>>   1 file changed, 17 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
>> index 73bc91c6ea07..01c671e00e61 100644
>> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
>> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
>> @@ -1138,6 +1138,7 @@ int live_rps_power(void *arg)
>>   	struct intel_engine_cs *engine;
>>   	enum intel_engine_id id;
>>   	struct igt_spinner spin;
>> +	u32 throttle;
>>   	int err = 0;
>>   
>>   	/*
>> @@ -1216,6 +1217,13 @@ int live_rps_power(void *arg)
>>   		if (11 * min.power > 10 * max.power) {
>>   			pr_err("%s: did not conserve power when setting lower frequency!\n",
>>   			       engine->name);
>> +
>> +			throttle = intel_uncore_read(gt->uncore,
>> +						     intel_gt_perf_limit_reasons_reg(gt));
>> +
>> +			pr_warn("%s: GPU throttled with reasons 0x%08x\n",
>> +				engine->name, throttle & GT0_PERF_LIMIT_REASONS_MASK);
>> +
> This feels like spamming the system messages. We are on error
> path already and exiting with -EINVAL, so printing an
> unconditional warning here is excessive, I think.
>
> [...]
Got it. Based on past experience, most failures occur due to throttling. 
However, I can switch it to pr_info since we already print pr_err 
beforehand.

Thanks,

Anirban

>
