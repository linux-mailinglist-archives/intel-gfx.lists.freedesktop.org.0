Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 804B2C44E28
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 05:01:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CC8210E2B0;
	Mon, 10 Nov 2025 04:01:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yjw4z4U9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3BFD10E2B2;
 Mon, 10 Nov 2025 04:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762747317; x=1794283317;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=MoUpIkC6yazbd6hi3b8eqgOv+rM9wD4SN8S9mJ9TA5A=;
 b=Yjw4z4U99wg7WTm6WyLK6gyFJiopn0embMl/Zq7uLhO9JnfOIlhd1zmE
 F2YRTjbN9Jf4z98UELGgrlgkVSRAH0KtWf4jrWGmy2b+U7vRPM8BGiDMP
 KaXLCD4Bw3NFPInVgkWD/IfxAUq7kvUcx+qaWT6TmufaLGeg8ZIf8/Nig
 lNTxBQ1fAOce6ZlNcZSsGXJtQEJZ3AZkKb5mnGXDRAqZvSbUO7IDPfDBn
 fntDqmxBynpadwmpRtIZC7OVLLrPVKHWTu02Be5o+5Yc8enHNefkHN1hH
 MAFZMdFFj9uqLuCtRgK/kfsKESj5GYDJzf5mNirgY4SgtuZWwUpDVM5/P g==;
X-CSE-ConnectionGUID: uAJ6wCqeRVG9+2KV7R6K6g==
X-CSE-MsgGUID: vKTjg4NdTLWQyOpe5+3wnQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11608"; a="64949706"
X-IronPort-AV: E=Sophos;i="6.19,292,1754982000"; d="scan'208";a="64949706"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2025 20:01:57 -0800
X-CSE-ConnectionGUID: vBW5eniqSOaBHmSqwY1Tag==
X-CSE-MsgGUID: GIHCqbccQr+lS8bLL2O8yA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,292,1754982000"; d="scan'208";a="219220630"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2025 20:01:57 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 9 Nov 2025 20:01:56 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Sun, 9 Nov 2025 20:01:56 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.69) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 9 Nov 2025 20:01:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tANRubvLoaeEQW2VnkhJ9Klc/e6Tg7MciqkWFV63AH/foTJ7cQ1AtNlAIkWtWciVtUbUYYMpVb+5xIzv0zSVRrQBTeQ7zxdcvEVd/AhTibJvOs92UUxe+2MAZoXhYG9/PSU88Lc/ijzCcqzRi7dycHo33s3zMz/ESb1DiyoGF07VqxEckZCq2E5xHQd0XxDoHz83CdEknRX29hwdUCD3fdfO9qryvObRfkHW0T8VSWsMAw4LsVBJxudIyEN7Gi8hTGBCXsLVjxoLUUmToEgyqrjNQdMAss2WgZp4KZWF7xD8aspAzCr2kZPL/u9KGQAvjcWOKon+OCA+A0OizANZHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mZEDdUCjTDfmj7qLLDudO8XMWU4DFsO2YksZqgygfQs=;
 b=T0fpdPogmrFik3n+RL/RiQOYBo+zJCsE61AL0judPHFazPiVO9zPKJxqsXdSpIqjAtPBHzxWVgopEs7rnJlzQ2MC6oZtaNFUdDmq2mFyq/KlxBMmRJB0yxqmb/kbsfq1OYx51FlIZOnFl0V8ao85AKKJ95i7yy5XR7MPl0ga7dy5J5O6rY/IPxuURctY1EpDORuar1tN+SuoQYpz4tfxiOiVMyb1xYDWpNayE7htg921gJ7OC5Wb+B0KQer0vOKvHoWxUgpN/iTvon7tZiG2b4g6IE8eZVv92fPAHDPxfeVpuZ96UfxJsLmCE21orxs+ZXqKbyMUP66ekMR/Y3mtfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA4PR11MB8961.namprd11.prod.outlook.com (2603:10b6:208:56e::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Mon, 10 Nov
 2025 04:01:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9298.010; Mon, 10 Nov 2025
 04:01:54 +0000
Message-ID: <53980b1c-d781-45d8-a503-92195b1737f5@intel.com>
Date: Mon, 10 Nov 2025 09:31:47 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] drm/i915/ltphy: Return lowest portclock for HDMI
 from reverse algorithm
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
References: <20251107093512.533577-1-suraj.kandpal@intel.com>
 <20251107093512.533577-2-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251107093512.533577-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0155.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::25) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA4PR11MB8961:EE_
X-MS-Office365-Filtering-Correlation-Id: 25677cb8-6c4a-4545-655b-08de200de20d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a2dnY0VjSk9abDR4R1djT1pFc3puc0R2bG5FWWUyNjYybjZ3c0RvQlpKSklM?=
 =?utf-8?B?ZnpKQllFVnFHYXQ0a2U1d3ZCeFVYaHFtdVcxK0FuSXNSS2d5MjVjMUY4Qk9C?=
 =?utf-8?B?YnRvc2xCYys2cUM1RVdsN3pZUTBLR2c4VjNEbFo4MUlNVDJHcmlUTDNoSWo4?=
 =?utf-8?B?L0VySGI0dVZCS2s1THN1N0tuQldmVENPcTdxVHIzMTlzNTUxRUFXZXh2M0ls?=
 =?utf-8?B?dDNjUnB0TVQySmp0VWo0ZHhZaUYzZ25Na2EzTHhEbUdGU1FjOXg1Yml3UDdr?=
 =?utf-8?B?ak1vODdsMWRpYW9qSllPV3NycDZqdlVEaWt2VFlKUUVzQWliVEh0blpGSkY1?=
 =?utf-8?B?ejhSNEhzWTR0OXRCRHd6KzJ4Tm5lU09uUHJ0UjZiV3UrM2EyTkxzbjBSTHh0?=
 =?utf-8?B?WXBMUW9jeVorYnRTaXNYQW5EWGVuWGk0U1dPRkxCL3dNQjh3b3VITzFEcjlB?=
 =?utf-8?B?Wnd0dVlCVytxQm1VSTh3QjN3SVZ6ZGkyVWl3RDc1ajR4cmJsNDUzUVdwOW8v?=
 =?utf-8?B?c0tCSHFEWTZoY01CRUJyOHpKVU90ME5mbCtCVWwvUmJYYkdTK0hnYXNxK29E?=
 =?utf-8?B?eFlvZzRIRngrWGVmSWllRWJ4SU5EU0IxTDF5cGc3aW1XZkNKbUI1R3R2K0pV?=
 =?utf-8?B?NnJMaFJ5NVNGU05kZDFtNS9xeGZ4ZGRPVjhrNGtCUTZwUmlOZUpPa2RmNmxQ?=
 =?utf-8?B?amV5bUFZMnNMd3Rwb2xUYlg0YkJ2dDVzdVhKR1JtYnorckxBZUs2Ni9xNDVE?=
 =?utf-8?B?VjNlUnJOVG42eHc2OTBMbGpqWnYzZmtzYXhDUWxYWWZZS083a1RqSEtybnNM?=
 =?utf-8?B?SmlEby93Rmg5b0hBQ05TT2lRTml0VXRFNzRrZ0UrbS8wU2NmajdlSUIrUzAy?=
 =?utf-8?B?STU2SFkzY2VWS3BQZ3FiT3J6WXgzRUxEeHpUb1R4SXRSSzRzblFLOCs0WmhD?=
 =?utf-8?B?a1BWbUtmTDdRaXFGcVZrUllLbnZXMjRaMjhTbmR1U3pTTjFIdXdtQ1RiTnNM?=
 =?utf-8?B?YmVKMnhlTm9lNUwxMEtxZlRMcWtpYzE4NHNHSWFsTUFRZW5sZWFyS1NMYXRY?=
 =?utf-8?B?RUxqODdIdEI4aFRWblEvWGNwMm9CUktNdTYzY3Z0K0Z2ZHI0OHFDYzFObUdJ?=
 =?utf-8?B?WHFJeG1yRnFXaFcwWlBwRUd4SkNKK0MvV0RWdFl3Qnd1R0NvcVl0dXNvYzhD?=
 =?utf-8?B?dlp4emQrUnF2MVVkRFhSYjlhdGNTQ1VNNGVjNHJ1NUNaY2MraFZENkRMRDU0?=
 =?utf-8?B?SzlXbnNodzJDcnRZUzc2VC80UGh5LzRrdWQ2eTlhK21UUk0rV0FxVWNOZXJD?=
 =?utf-8?B?Nit0SnZJQzRtS3J4MEt3ZTl2VDhhUkROYVRleTlTWm5GS05zSU1JQVBnQnYr?=
 =?utf-8?B?c0tiNVVlTVVHREZoalYvVU54b25HQzRBalVRSGhhcFJMMzl4dGlLVldPMHp5?=
 =?utf-8?B?a0JKbjV2MjFLZHZzL3lySDdkWVlVUlU3bzFwcWlpaUpXRlczVjIzOXhBbDh4?=
 =?utf-8?B?b1hMb2pvRXZnQkxsSzh0ODN1YnZjSGNJR1ZGajRSWFpSRWdRRXhDTmVLMnlF?=
 =?utf-8?B?d0ZKU2Y1VHAwNTFrWnV2YTBWUVo2RlFrSEd6Wi8rMVNlSURmcDBCMFBydmNT?=
 =?utf-8?B?T0MzMWZVd2Z0amFSVHRiUVZKb202MjFEM3d1MXR3bXFjc3NOSVVTS1k5cW1a?=
 =?utf-8?B?UUNZMFB2QmdSTWVjZGVkYmhZZ3NoWFhWOEZwd1ZrOVh2RDdrK2ZWU3lTY1h1?=
 =?utf-8?B?emFNTzBacjdtS0RnU3dvYWUrU1FHM3J3S0hHUUdnQzFCMUpRYU1ET2h4Rmds?=
 =?utf-8?B?dkJyMkhyR2tCN2d0SFdwcXE2VERoZkpISUVGMnM1ZzJXNHdNU25XajM0Vita?=
 =?utf-8?B?RzBXbDQzb3l6d003Ni83VXliM01ZRUNEV2l6OXYwaVNGeHdGTFllYnpQSFNr?=
 =?utf-8?Q?NTfpBnx8yydV4zndEJYFhQTj1Y9hsOSb?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WG9Ucm05RzZJRnZ6OFNXWS9KRnY4enI0dTVmTVRBS05NV0VwbzR6R05EdnE2?=
 =?utf-8?B?enF2THorYlF4QzFHRlJjZjVlOElrY0NJS1FUN2lLSmFyMVBBNm95eUlKYVhH?=
 =?utf-8?B?SGtYcHdLM0EwaVBlMDhqMjhQNEZ2dnhSdmhvQklFZFhaakdsOExOOGh6eU92?=
 =?utf-8?B?eUpPMTFjL2NUNWlxUjBJK2pJcXllNEc2SFBrUmlQTGRXTm5Lam1QZ1pweVZh?=
 =?utf-8?B?bENJUldudGlFU0Z0VUhCUzM0cEJtMWJxaWhvL2doTTlaMU9ZVjM3ekNlOUNy?=
 =?utf-8?B?aXgvdGQ0aVNuNExUMVMyTjNjQVZ3N2ZvUlZZZFYzNVVDSENNeEhLZTFjNXAx?=
 =?utf-8?B?bXFISGllOE5tVFZoTFQweU5xbEFJQ216NEhMVE1YK0RSKzdGZFY1dDJMdkgx?=
 =?utf-8?B?cysxdGw0bS92U0tqMllXdjMwRGV0SldWZnpCV1dSUWJaQ2FGWmwzWUFnSkVH?=
 =?utf-8?B?eCtpSWhwYWJiQ3FjOEM0R0JkYW54MzZnLzVjeXgzNUZVMFpKbGR4U3RyUGly?=
 =?utf-8?B?bWpJWXFpeGdOcHZjR3M3d0FBU21NUW1IMkpnUnNONWdidkRURzNpWmxUY1M3?=
 =?utf-8?B?ZFhoeGRZT3dCUTRCNUZ2d0NXNWpZNXJmak9TWUhRUWJxQXNJMmdxRmFJOEl5?=
 =?utf-8?B?L01iUFFIRk01VGVsMThCM21qU3ZHYWpGNVhNTEpTOFJtMSs0MlBDYUEvU1Vq?=
 =?utf-8?B?YjM0TWxoYWFvRndvQXU0MVBGMlNjYkJjOUtwTmNlVDhhUUptdlMra0NUeHRl?=
 =?utf-8?B?clRuVlR2bEZITmdWeXBUenZSRmhKdjZkai9IeDVlRmZjQUJqRFhSMDkyU1lE?=
 =?utf-8?B?ZDUyY2ZZbWNhYjIzTW5hQnU3MlNnTUVhU25rRXZ3SUdoR2pCOXdGbEZDWWs3?=
 =?utf-8?B?emQ2YXhsaVZpeDhYai90QzNzRmhrNFNLeUtwdmlzUVZzOGhOOUZjREN4UCtl?=
 =?utf-8?B?MXJlUDdFb2krV1lVZkVZUWhTdUpjTytjL25RbDBNRUx6UisySWdKMzRoOVI2?=
 =?utf-8?B?SHdVczNHSzZKMi85dFROOVdneG1oT2NqSGlualJoMFJWMmZDQUI5NVBydm41?=
 =?utf-8?B?QkJsdDZnb3F2Qm55TWs0NTlWMTVEK0haNTRwVkVUQTFvYWlkLzBlSmZrYm9B?=
 =?utf-8?B?T3BhaVhaTnI3RkNjSW5oMGZzdlY5KzVsbC9ka1pESEl5b1RHSVZuVW0yekZu?=
 =?utf-8?B?dkRwZFRnUEZOZWM5QWYyblBJN1lEMzFaWUZBOFlja2xxencvY3ZyQ0F6K0cx?=
 =?utf-8?B?amZ6K045UWthRUR2akQrdjZnNmM1cnJIODh0cGoxOE5rMTJoVWs2MEtPQllK?=
 =?utf-8?B?MWJTazNIV3J5cFZPVHZHWDl1eUhkTzM4bUFvZGRYeTdBaTdVbnVTM1pqa0Uw?=
 =?utf-8?B?dm1lME03MVpYZzdyZHc5Z09mWk5iOU5ONU1SY0lGb25SZTlEMXIycjhES1Bx?=
 =?utf-8?B?U0d6VGZJbzBuWWV2eklGWlNLMWFKZzIxSnliU2xrbndZV1N0K1plYW4zbGIr?=
 =?utf-8?B?NVhBQllrN1ZQaXpyOEgwZ2tncnVIbEVEZHJQWW9jL2ZFNFBJcGxITlUrcU5B?=
 =?utf-8?B?NVJnYitZMFIvZlZBK1h4OFc4aDZQTzltekZmaThiR0hKNmVRMjBxNjVNaTdL?=
 =?utf-8?B?cWJHU0Y4OEVCMmswQ3B1dXFhb0o0L3Zwa2tZOTloaTh4MlVJOXRuQlBDSURQ?=
 =?utf-8?B?dEVtVDFuRzNGeXora0d6eG5OMWNVd25aU1UwdEtWRTZuZk5NU3RKdHltOEdi?=
 =?utf-8?B?YnZWVTZnb0tJWCttdjRsRkFmc0JObE1kOWkxeXh1SnBYRXFjS1RHQVRPOTVE?=
 =?utf-8?B?ZzBCVE4vNFdPZlY1MkV3Vm52NU15Tm4vU1pZMmdVZGl5bGRVWVM5WEdCWkpM?=
 =?utf-8?B?Z2Y1ZWsyR25iRnEzaTJVT0JmYzN3S0g3R0ZqSkxpTVVIbFh6SytUcmpzeUwr?=
 =?utf-8?B?V0Q5K2k2M0tYaXpuOTRXWGpGeVhhTGR2YWM2MmExVU9wVHZtVllHdDQ0Ry9x?=
 =?utf-8?B?K1R2VitMUndyVklYdVlnUUJueGU1Si9CbFFzL01XYUNCSFo2Nk52OHdzdEIr?=
 =?utf-8?B?YzhRS1dGUkpLbXFuajc5Zy9uOUpjT3k4VTl4MHZEOGtzV1JqMVo1SUlycytY?=
 =?utf-8?B?NXo3VUFyOVZNcWlRaUFGL2J3aHp0akpRQVkwcXUxTHhZRWFaSGltTVFRT3JC?=
 =?utf-8?B?dFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 25677cb8-6c4a-4545-655b-08de200de20d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2025 04:01:53.9491 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z+EIG/1ZsMdiUN/OjJu1HMq++HO3OEZ78Bq86kmyP72U0gvWrbuQS+KHErW4rnjKvCEY9wpk8vErj2qd290C0c+hh4DkIcHV1mNoRYMsDmw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB8961
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


On 11/7/2025 3:05 PM, Suraj Kandpal wrote:
> Return the lowest port clock for HDMI when the reverse algorithm
> calculates it to be 0 to avoid errors later but throw a warn.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>
> v1 -> v2:
> -Derive intel_display in first line (Ankit)
> -Use the actual lowest clock from table (Ankit)
>
>   drivers/gpu/drm/i915/display/intel_lt_phy.c | 14 ++++++++++----
>   1 file changed, 10 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 57a0f443eb1a..1a7dc0ebd050 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1671,7 +1671,7 @@ intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
>   }
>   
>   static int
> -intel_lt_phy_calc_hdmi_port_clock(const struct intel_lt_phy_pll_state *lt_state)
> +intel_lt_phy_calc_hdmi_port_clock(const struct intel_crtc_state *crtc_state)
>   {
>   #define REGVAL(i) (				\
>   	(lt_state->data[i][3])		|	\
> @@ -1680,6 +1680,9 @@ intel_lt_phy_calc_hdmi_port_clock(const struct intel_lt_phy_pll_state *lt_state)
>   	(lt_state->data[i][0] << 24)		\
>   )
>   
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	const struct intel_lt_phy_pll_state *lt_state =
> +		&crtc_state->dpll_hw_state.ltpll;
>   	int clk = 0;
>   	u32 d8, pll_reg_5, pll_reg_3, pll_reg_57, m2div_frac, m2div_int;
>   	u64 temp0, temp1;
> @@ -1722,11 +1725,14 @@ intel_lt_phy_calc_hdmi_port_clock(const struct intel_lt_phy_pll_state *lt_state)
>   	 * frequency = (m2div * refclk_khz / (d8 * 10))
>   	 */
>   	d8 = (pll_reg_57 & REG_GENMASK(14, 7)) >> 7;
> +	if (d8 == 0) {
> +		drm_WARN_ON(display->drm,
> +			    "Invalid port clock using lowest HDMI portclock\n");
> +		return xe3plpd_lt_hdmi_252.clock;
> +	}
>   	m2div_int = (pll_reg_3  & REG_GENMASK(14, 5)) >> 5;
>   	temp0 = ((u64)m2div_frac * REF_CLK_KHZ) >> 32;
>   	temp1 = (u64)m2div_int * REF_CLK_KHZ;
> -	if (d8 == 0)
> -		return 0;
>   
>   	clk = div_u64((temp1 + temp0), d8 * 10);
>   
> @@ -1755,7 +1761,7 @@ intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
>   				      lt_state->config[0]);
>   		clk = intel_lt_phy_get_dp_clock(rate);
>   	} else {
> -		clk = intel_lt_phy_calc_hdmi_port_clock(lt_state);
> +		clk = intel_lt_phy_calc_hdmi_port_clock(crtc_state);
>   	}
>   
>   	return clk;
