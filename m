Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE97B9A347
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 16:18:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACF7110E23B;
	Wed, 24 Sep 2025 14:18:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MOlkSd0I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E959A10E22F;
 Wed, 24 Sep 2025 14:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758723487; x=1790259487;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Hduq93U5hBrRryEJTVuOQ0tMTc6avcwz6xlbZsDaqvU=;
 b=MOlkSd0IQbIIfuH4Bml0nVdiBckFwExzgib2sx7iERTY4c9Wf2mpKuuB
 SC6WoX3rMLe6NZOpDTAMMPM+5hu0ZNjvprOQdB3/zA0o7qflXwv4CZrOm
 XzNHw/5O+dWvpq3Ai2xTcgx9r6ZZqBJSWsyqOWOw7p3Qf3B3nu8v35AtA
 SfxYUVPXj1tI//7DfabMXFIwC2dZeQ4h/YVDGwA+76RiP0QJ+ZoQjerer
 yVmtNMNUNA5IZzxoLp+UmLHCK0WqxF3xizkRVgpTHb1Z3d0IIErScKp4K
 FTU/xpbwvlgJRUPlgbBYdEAnJgTevodNByaMNbn4m+RYe2wwELcCgGLJ5 g==;
X-CSE-ConnectionGUID: 5kxrWFHOQUG2rdYxOchc9Q==
X-CSE-MsgGUID: e0BpDDWTQfezIOm1hKLSgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="64661680"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="64661680"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 07:18:06 -0700
X-CSE-ConnectionGUID: N+Bj5fbARS2oVWSEX6ey3A==
X-CSE-MsgGUID: rX+F60yuQvO6dZjRTiWcRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="200744167"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 07:18:05 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 24 Sep 2025 07:18:04 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 24 Sep 2025 07:18:04 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.39) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 24 Sep 2025 07:18:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=am/ppaQYCa+KqW7eXFNjZ7nXW0iWG7FTpJVO3iwxGOWobk1d0kRCd6Q4WTwOTGrxbAPuocz4T8NrX3edz9+OaVQpIJWYuP3HowF2nlaM7BXzDRjocPsm2b1UVUiOgLQ6SLxIzht44H2j7jonHtAGrN9Yg4Nrh5b7Vh1tiUPuvJRAol4+pV3qwopYshTY+mqzPjxwBlb0VPJDR8NT0BLtjoPjV1SVoGA4xUfLbTXJLD9D1ZfX6CbMHAHNpi8bgTR5lH3y6XHhxi7qiy2Ah7+X2QK0HF5yFmgV6y+vG423ZiJzoK9OiGZY+WrCzHtgA1N3vYYBas+ZSgkFgEzyWHSJ/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5T92K0arqxamIgvqCNgdMLLUFHQSPIJxh5DhudGJv2k=;
 b=m3c3B/WFJfwU3UaXNAl/+mXg7bbBGfmGrh5gXZ95Ny8lEA84upT0O9hkzvDytPB1kz/M+gJWvcUvI8fU9M1BT4/b4YSm0tKHAmqZdOtSzDwT/tQ1g1N528p5ipFBpsOqFKT67nxRetcKkp8mdu2D8sKZQjQrWp3tSLPRI7T7fuRR6yozQfq0cvKV4JLxD0TDMGBw4CrSjL3ZxNm1WoC/h6JP6On68lCbN3OPal5NOIhdhVs6CuP4rXkCu4/c+UJvMhbdEt6f4MCGxw7Y1r2O4CoLPacubST8Z7FJ/ZrI8uhAESDkzTwl1CiHUIJIWqWFy2CfphY4F+0nGsrNi4wsWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS7PR11MB8828.namprd11.prod.outlook.com (2603:10b6:8:257::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.9; Wed, 24 Sep
 2025 14:18:02 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9160.008; Wed, 24 Sep 2025
 14:18:02 +0000
Message-ID: <a6c0b173-2eb0-44e6-a760-5b2671d2f32d@intel.com>
Date: Wed, 24 Sep 2025 19:47:55 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/9] drm/i915/reg_defs: Add REG_FIELD_MAX wrapper for
 FIELD_MAX()
To: Andi Shyti <andi.shyti@kernel.org>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>
References: <20250924105129.2771196-1-ankit.k.nautiyal@intel.com>
 <20250924105129.2771196-8-ankit.k.nautiyal@intel.com>
 <i6ppumn76afqjrppko6ck33qqhiknlnizbnnvskuxjg3nu5bx2@zvyfo6easidr>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <i6ppumn76afqjrppko6ck33qqhiknlnizbnnvskuxjg3nu5bx2@zvyfo6easidr>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0023.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS7PR11MB8828:EE_
X-MS-Office365-Filtering-Correlation-Id: 61db9279-ebd9-4ab3-c572-08ddfb752b95
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z0JjaXpmRStWajdrK1BkVDFHWnA5TTJCT2lpM1RSWFVmNDgvTk9HdmkzYU1j?=
 =?utf-8?B?QlJPRHhOUjBaWEdTUlM1eGxrS3paTnc0TDJQd1ptNStCb1RGWVNxRHI4SFBC?=
 =?utf-8?B?QmswbVovdlh3WTZmQXBkQ0VkcTdGYi9lekdjQ0ZOR0w2d2xvR1hiaDNmdUl3?=
 =?utf-8?B?Syt4WE05NkNIeWJkWWgzZUVEUnN0eCsyWEg0cnZ3ektoL2MrZXBRK1NxdXhk?=
 =?utf-8?B?cms2VFpnZW43a3o4TVNsTkF5UFpJMlErVTkwdjZXYk9kRDBlQ2tnV3Vlb1RE?=
 =?utf-8?B?NmdITmp2NkdoZlZvQ3lqVFRSK2xMKzZsS1pnTFd5SlhFekhtRXRGNE1pTk1R?=
 =?utf-8?B?RVV0bzd0MHRheWx3akFnbXNuZVV6dVV2QndJZWVyQ0NTcDN2bmZzRGJ5d0lR?=
 =?utf-8?B?TzNRWEp4Q2JLL0pZZi9CeThGVEtWWk9WSExaQ0Z3RGlUNWRGclJ4MmtlK3pk?=
 =?utf-8?B?ZUhFRXlReG1kQWJIOWNXMlcxWnk5clZyaDFsbzVMaERFYXlINFlWVVUyYTRT?=
 =?utf-8?B?QXo5WC9obUxGbWw4akhvUUo0d05ZVEtvN3BFNy92cVFCZEhQSXVTbGQrT3Fj?=
 =?utf-8?B?ZnJSTExrU1pPa1BoWFV2QTB0bnlaV2JtdnZ2RGRKMTZYWmRIQUIwRkpMbFFG?=
 =?utf-8?B?NFRwYmV1ZHZxVUNjZnN6NkxvT1A1c0VIMkFFbDNtRW5XdjBGTnVqMExFbzlh?=
 =?utf-8?B?SmVtTE9VSWFWRU1ITmdQaFRTUHVJUUtxTlNEdE9rZ1R5M1F2WlFmNVdRK1hk?=
 =?utf-8?B?d0pkWE4rMTg2akwyWFo3TkU0UGNIdVhxQ29jcnJiUW45MVI1Umh6K1VRZHBv?=
 =?utf-8?B?RjFneXFUeUNhVnFyTGoyQmh1emtPVTdkK2grL2Y5aU5QT0gzaEVrM1RCajAv?=
 =?utf-8?B?QVRBaE5QR0hMTXhBZWFNUXFoOXJjL1B3R3dTSm8vN0JYQW5TVmpicmtDZy9B?=
 =?utf-8?B?K2RUc2NwNDhvSVZGbFNiOGsveStCUWlRSTdETDREUkZOSnQzK3ZycDJhc2hD?=
 =?utf-8?B?UHZOUGhndWxMY3phRVI5VDdSaXo0b1c1ZkFqZ1g3Q2tJSGJ1SjJiQU5aTUVV?=
 =?utf-8?B?YUpuNk5ZeHdwUDBKMVVtcmE2bFl2K0NIU2FCRDJJdklwZ0FCaUdJMnZWejgr?=
 =?utf-8?B?RVROTTlnT1VrTmRWUDFwNGN0Tk4rKzlvRHR0TzBYVVRXeXZjQllER2xwblcy?=
 =?utf-8?B?UnpxWVl0Tk0rdzY4S3Fidk53V05DYVZLcW5IZnA4WktyRzZ6VkNtTTZTSlg5?=
 =?utf-8?B?TmgwMFZlYUhhRU5GMXI1cHJVMDM3NUZKSjRoMGpxL01WSjdLRTRLemVGZis5?=
 =?utf-8?B?QUl5U3krZzIxZzMrYkVza2dHb1h6Zy84ait5TVU2eXhDaWZSRDdkS3hoalVU?=
 =?utf-8?B?N0ZZS3VXaVpYdWFBcno1V3ZnWVpOQm0wSWhkZUdPWUx2Vkoxalh2MUlsang0?=
 =?utf-8?B?QkkrYTg4bTlxYWlIL0tqeHJmRXZoOHJnZHhjZ21JSHdrVXRxcE9EMVRpK05H?=
 =?utf-8?B?OHJNV01JRGhIL0hJa0Q5T2ZONk1BOUUwRm93U3lFOTgrNUg5ZGNRUFBPUjlW?=
 =?utf-8?B?dndRbEhoTjIzTDNUSkc1cWJOUUZGVTlXekhra0NWbG9CSTFmanRrU29SZm92?=
 =?utf-8?B?aDNFN1VJUG9IVFdBRlY2NUR2TUFvQUgxalErN2U5NlNET0NCWFdTL3M5UmNh?=
 =?utf-8?B?ZEdhMGpHcTlpMkxhWkhmdlc3NzFqQmdYVXpUaVFNNllmdm0zUkFTOVVMZWJU?=
 =?utf-8?B?Z0RsNVUxYkRUc3ZxV2RGWnk0T2NHYnlvU29DcHNBYk5jd25kU3lMZ2pEc1pR?=
 =?utf-8?B?a3lMZms2Nmg1d1M0MGhZb1FIeTFyc2ZmaWhHblpQdHdZTkcwV0RWQjg4Q2VO?=
 =?utf-8?B?R3MvNFM2MXFnUVB5YmJCY2lPaU5SeWZ2dFFaSThnd2VMc0xnNDNDdEh1TVIy?=
 =?utf-8?Q?WBbxyj2gJD8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Wkw5ODB1Z29MTmRFN1lic3RGZnYzek5vZWJ5SGE4UVlQMWMrbHM4dXluWnBx?=
 =?utf-8?B?MWhUYmh1SU5sYlQ4UmFZZ05yRkx1Y1pUQ0lPa29jUHlPalptMlV2RFpwc252?=
 =?utf-8?B?YVZNL3BzVWFvZjZwbXZQZE1weTRjSEdjcEY5alVoRU1hTmhQY01pVGpFS085?=
 =?utf-8?B?UUcrN29aWnNaN2hrdk9meVY4OENlMU4yQWhJcU9ZZmdoNHlZTGsxM29EOTJK?=
 =?utf-8?B?cHNzWXh0RmxQUk5yS0g5R1ZmUXlROWZ2b2Jub3BDb21MQXJPNWh5VlRVNGNY?=
 =?utf-8?B?ajJNaTFJcGhmcVg0c3ZzU2w3UE8wSU5pUTlzdG80azE1aUZxUHpGTW9yT2Vn?=
 =?utf-8?B?azdVTWMzREwzTlpDZU1kL0dzRERXSmpYUmozM0FyMTJ2eXNiamt0N0FPVnBQ?=
 =?utf-8?B?bGdZUDJYZHF4WXQ3TUk1REJVOXNxRXlMbTN6c0ZwUGs1ajlBN2FoVG9iSUVE?=
 =?utf-8?B?Ry9aK3pjdWlXSkYwMlU0YStBdllwc2Q5OVNqS1VuNHZiY3g2TWdCYUNFSllK?=
 =?utf-8?B?Zm02Nm4vcDdISFl2VGxNNHZyc20rdXV1T2s2LzNvUEJlbFh4cGJLZUVUUjVy?=
 =?utf-8?B?ZGY1TXRIekZHS3l2NzRmWG1IcUxhNzdtYjlpSityamVlZkRyQnJHTFp3S2Jl?=
 =?utf-8?B?aUM2REUxZ1JPMGxxVENqZDdGUXRZN0s4bGEva0ZCUFUzK0hMNWc0Y1BZRm5r?=
 =?utf-8?B?SFhLaEZ4NndOUEg5d2Q5Q3lwYys5VXplU2NKZVllWG4xSUNhS01uN2swMDB3?=
 =?utf-8?B?QkFnays2VWFBd0VoaitkYmJ5N1ByNnJwY0F1Y1NtZDNTVysxMTA0Q1UzTHF4?=
 =?utf-8?B?NW84SHlway9PSlFjcm9oSENIdkl5UGVFUEgvWVpvakFZcHpiTnN6Q1BDMUoy?=
 =?utf-8?B?NmJtNVVBTnJqVXo1ejRXVHlGRXgrOGhsZllaVEZ3YzFlWFdpYXM5MWIzbFBO?=
 =?utf-8?B?dmFIL0ZsWDZyaEJObjN6TVQ1bldObEZwaUc2L3RERDhjZTVVMlhqay83MUhH?=
 =?utf-8?B?bDVpYmpDTFhQeXE3QmxBaHUvVmxValhVNE8ydytXVTRnbWNSQWtZRjRyUlFz?=
 =?utf-8?B?a2I5NWpMbmhselZJZ210Q2ZBc1pwU01HSDJHU254aDNrQmVmUy9aSWwwRGZj?=
 =?utf-8?B?bklMVzVLM2JYWDZwUXJRYnFDRFI4SENWV0ZlZDh5eUtGUGFjVkVmY3dKTGVK?=
 =?utf-8?B?dm5Jc2EyaTUzV014UGFVakZHY1ZjWVpMeHVuWDZEUkZJaEN0bGcyWTlkclQx?=
 =?utf-8?B?UkFQVVZ2S2FaQWdNSjN2MWhnSlh6cUpNaHVqOFBjQUNvS2RGMG5BYkVHNGJ2?=
 =?utf-8?B?bFU0LzBmVjkya3JUMG5xTFhWRUhpanNWK05DR043dDNOZnBMQkZEeVFIbVdH?=
 =?utf-8?B?S0prWmVMYkxrZE53MklwOEJYRTE4Q2EvSnhha2pFZG8vbzZWb3JVL0wyMVRs?=
 =?utf-8?B?bVNPZEZlTVMwQlkrR1Vqc1hKY3NtUDZzVmlTdFB0emsyUXNDaTJ5Zmlyam5s?=
 =?utf-8?B?cVc3Z05FS1B0TExHRVM3bkQ4cGNFQnlaV0o3dVpLUVdJbTI5SnB2RmF0ejhh?=
 =?utf-8?B?UTNaOFFlNmlzTG12OWNZaGlmaWZsdFYwR3ZVRityT09tdVgzOHBkM3dsRExs?=
 =?utf-8?B?YVR5OFFwV0lKc2VsRmlLblZObE80K3h0b3ltWGlacVNVQzRtRU5VQjdsRW05?=
 =?utf-8?B?Z2NxRG85bHEvNC9PZHF2ajNQNzhiaWZ1ay9mWWlRUzdYQlRUMFFOM09rQUZQ?=
 =?utf-8?B?V1lRa3RMSFVHcmtlTTU5Rzhtejd2cmdOdTYzczlyZDgrTXF4OEt3Kzg2VUt1?=
 =?utf-8?B?NHNwNU9icVFpelRScDF2YzlhMXl5bjlrR3MwRmtrOHZIdjJqT3FSZzVyR0Jr?=
 =?utf-8?B?WkpBVDlJSVduMXVHWExoQ1BEU0pRc0xzb2dseXlVZ3BTY3orWlIvc2cvSnRS?=
 =?utf-8?B?di9FOHkycldId3JhOW9sQXN5VEduRVF3Y3BxaEQrWTREejZNNTd5TUtub2hS?=
 =?utf-8?B?Skt1OVVxZlhBWmtIelVLcWZqS3E3cHhuNXp4dHRHcFNXOXBNVFFvTGE2Yzkw?=
 =?utf-8?B?WUh1aXhobjcyVXUwd0pENmtMSTJuSHJDWVEvdHRPaG1XeW1QWkx5NU5IMExw?=
 =?utf-8?B?STBobXFKNGZJelNPQ0QxRXRhVnU2M0RoOEFhR294NUN2ZjR6Tlkya29Eemhz?=
 =?utf-8?B?K3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 61db9279-ebd9-4ab3-c572-08ddfb752b95
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2025 14:18:02.1162 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 46Y6vuj0tFioftVnxByuCwAyuUQgFc+CzaE617YMINjphKRB/3SCfrrVt1+ECqWA2qFDjGFUJsvdMrEg1jB3RZt0WFGKIZKhMfA1b8pTIFc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB8828
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


On 9/24/2025 5:54 PM, Andi Shyti wrote:
> Hi Ankit,
>
>> +/**
>> + * REG_FIELD_MAX() - produce the maximum value representable by a field
>> + * @__mask: shifted mask defining the field's length and position
>> + *
>> + * Local wrapper for FIELD_MAX() to return the maximum bit value that can
>> + * be held in the field specified by @_mask, cast to u32 for consistency
>> + * with other macros.
>> + */
>> +#define REG_FIELD_MAX(__mask)	((u32)FIELD_MAX(__mask))
> I'm not a big fan of these generic definitions inside i915. These
> should all go to bitfield.h. But this is how it's done here. For
> now:
>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks Andi,  I added REG_FIELD_MAX() for consistency with other 
REG_FIELD_* macros already used in i915.

Since FIELD_MAX is already in bitfield.h, but perhaps it would be worth 
considering typed variants like FIELD_MAX_U32() or FIELD_MAX_U64() for 
broader use.

Thanks again for the review.


Regards,

Ankit






>
> Thanks,
> Andi
