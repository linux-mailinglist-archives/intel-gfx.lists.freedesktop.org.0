Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D91CC10F0
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 07:08:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C70D910E31F;
	Tue, 16 Dec 2025 06:08:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d4KjbiPU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3173010E03F;
 Tue, 16 Dec 2025 06:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765865304; x=1797401304;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=5OpaXFgIsDhO+sGat10pSdLwbpkUY0feUmH3OlwAUJg=;
 b=d4KjbiPULaSGQPutUmcec0vwqVRf0vIGHVF0Hff+L9RCGs1xLqX31OWm
 w0ISzk+ocWBwmM87q8Fy/eIeyjY+ul0WfIFuqA091dctUE00l29jgQS9/
 RZsyo0Mtz8emIwBHF6W09vT2JJnGSjlEDLcSmn5R+oEL7BX7Rsr1D1kUk
 UV0aXS49t1JNCSoGYADnIR+ad5SbMpSBBtuhGDW1GpphAkeaLPY/DL/iY
 mf3+uX5gVGjJkYR3DMWOwV21w/4fGaD5suf3aRLPcjijVZ8xMfwD5JPTL
 OrvqFXpLR6PrvTzuoI0g3M42y2Yo4yJSWTef16InqDWp3Ul8QRkvNht0f w==;
X-CSE-ConnectionGUID: ZmaAy0r5TsmRNfCOgn5jKw==
X-CSE-MsgGUID: HvIgvt0zRqCvVfWTZHwapA==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="78895138"
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208,217";a="78895138"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 22:08:24 -0800
X-CSE-ConnectionGUID: uyKtv1QfQqioKrQBuVwnRw==
X-CSE-MsgGUID: cAcooEdQRFO9k8Z/qLsrQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; 
 d="scan'208,217";a="197981745"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 22:08:23 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 22:08:23 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 15 Dec 2025 22:08:23 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.12) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 22:08:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vbCfxC5tigLtOXXLKjz/32UvdWzKIp1WKbpFUac4i+ATuaWPjF3Vyq2nonsf7Me/6xe/DUmHq84ft05kntrXrFBVZrTPjlisyMMqtQruwPOqyZlztO2f4bXBXJ8fMgUY5saDpB4GMzmytXUl87pO+olGV6V2oy1hPAsNwpqyFoFUB8dbTg2u1dfL8WlnvOUhAjAR+G3+JZU0Xa5rmTEADvNKVtUo05uzFBtk9SZ2G5ncX3qeGbDE5rdjj21Ah1whT7zupDrd+zZAthgrTna5ofz26pTeqKQ6hV1f+/dNIBzQN70vDIutJghxfEa7NVIBYJsroQIAzw2RccgRQR9iUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d7XoK6+V/sARgWJ0fXrVRy565j6ukeV51/50wCn5XfE=;
 b=VGay/VbvzPqj+d6qO6GB27MYg3c66uTuSNhcocjNcManPGKw6iZTavWL3mA1aokD+tXDA+Mbv3vpZt/Z9YWyHiKDD/+BrjsP3ejySqFBD18hpTvaQUE1ais5GL9xNckHUaDaG6tToULihpXLJEhfgmIy8EULB1LeEe4GuXOkXeprKebL7M2J8BasCWVa2aRKM0qkTTlQQCN6OFvFZ15FGWo35ceJ7WlUk0mLwfHtfnhcsKyUxFYa9q6m0fkrKQIVAnnJROdPGxPgUsxqi5h641oAxCcWB7mbe9fQ7HIRPEzDNvnOjfVsQhkPy0OycyI9tLSWVg5j+7WQ/u089FdrSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by LV1PR11MB8851.namprd11.prod.outlook.com (2603:10b6:408:2b2::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Tue, 16 Dec
 2025 06:08:13 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::e656:9300:fc6a:1b5a]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::e656:9300:fc6a:1b5a%7]) with mapi id 15.20.9412.011; Tue, 16 Dec 2025
 06:08:13 +0000
Content-Type: multipart/alternative;
 boundary="------------Idj0zrcyg5dDlDpG6b7DwNwt"
Message-ID: <78140803-b63c-4f94-af94-b39a44824b41@intel.com>
Date: Tue, 16 Dec 2025 11:38:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/9] drm/i915/display: alpm enable DC3CO support
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "Deak, Imre" <imre.deak@intel.com>
References: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
 <20251209113332.2770263-7-dibin.moolakadan.subrahmanian@intel.com>
 <4735ae6f3a837db3b7cfc989ab63bb84d9ede129.camel@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <4735ae6f3a837db3b7cfc989ab63bb84d9ede129.camel@intel.com>
X-ClientProxiedBy: MA5P287CA0174.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1af::8) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|LV1PR11MB8851:EE_
X-MS-Office365-Filtering-Correlation-Id: 62acabb8-cdff-4203-a30b-08de3c697e9a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|8096899003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WEdQQi9WWUxVc0JiT2p6MnhoL1RLVXRhUUI0L0ZhVE00RVppdW4zajNJWmhp?=
 =?utf-8?B?aVdZaXFyWkx6VFpYU0JuYnBjRlFiWi83dmRKNTI0SnlWdkM4RXBBbXVuUlNy?=
 =?utf-8?B?REVZQWk4NFB1QVVxWUZPUUZqOWk0NklyU1VCbXhsaWVsRFBmS1V3ZGwxMUFr?=
 =?utf-8?B?REtoa0tTMTJIeGNya0lMR2s5clZHZVZtVjNuTWt0d1RjUmU2cDlnalFnSGNI?=
 =?utf-8?B?Nk5FZ1pwWjg3ek9tZDFaNW5kNWdmY0RiQWl4WjlSQ1AxRnJjeUowSHFqems3?=
 =?utf-8?B?TzdmbTZuaXpqU0NYd1VPa0w2Y3hLdzYxYkl1bStVdlNrL2VaeDU1WGxyWk1j?=
 =?utf-8?B?bzg1bHN4LytpVVh1bXE2cEdwNmsrUDZ5ZUZEdnlGcERIS0xpVzBIc3JCVFRJ?=
 =?utf-8?B?Qm5QM0EyeHI2MkFGRUJsN3FKczgwY3daT0tlbW01VU16dEdZMy9nOGdUL0Ns?=
 =?utf-8?B?RGFYampOL0kxMk9vMWhxNjJYWVVvREFuRlkydGtodkRaOWEvUUY3ejJaalJT?=
 =?utf-8?B?WXJEVUsxTHdBOUxyM0hzRTljdHhpNkt3UWFqa0tGelV0Yno3eWJHL1ZSWCtW?=
 =?utf-8?B?S0NNeUkvNDNTNHJGWmxQdmJyUFQ1VnNoaTVTejRtQ1diRUk4b0QwNzVIRW0w?=
 =?utf-8?B?ZlFpZUdpbERBM01JMVBxTnVVazkzbWwwMjVUUFdKSFJhKzFzMU1FSVhOeUtx?=
 =?utf-8?B?ZkNyd3N3RFpTZUI3QnppdURZekV2NGlDUldRMDFtQ2IwcXAyNmpzNFduZ1RX?=
 =?utf-8?B?dUY4alZhL3pwZ0VtbDZDRllmaTNLZHdZbUUrZW50aVp1K00vakRaeXU4OEJx?=
 =?utf-8?B?MEUzN2RFR3RXblk0aHFUbkE0TzhPUzZlS0RlSTdLaFg1ZEQyTlBFcUpXdFho?=
 =?utf-8?B?ZDRFS056bWxKMFhMTHJwNm1vMHVMaDJ3bWtSOTY5aUZWTHMwc0Zjd0sveVlO?=
 =?utf-8?B?TFFUUFo4cHBnallkTEdIZlRZVDdjekhGWk9BV3NheEtRQ0U4MmpjNHlYaVRo?=
 =?utf-8?B?Uzh0T1kwWmVoNDJ0V1VZRFFwYVpaQW5YbUVIRHFWV2hodElKakVZMi9WZXdH?=
 =?utf-8?B?YnBZZzBZN0oxNUhCZjhwWW1FRTd2MDdDdTYvazJNVjZPaEwvZ0hCcXg2cGJY?=
 =?utf-8?B?V3ord1podnZ2ZHV0OUtWZnBVa0JMblowS3JIUFFxMmg0akFkK3lzSmlLUDU3?=
 =?utf-8?B?WUhOaUR4YWdMYmNXeUdtdjJjK052RERNVGl6cjRtd2x2bituckxRT2RhL0gr?=
 =?utf-8?B?aTFWVTBvSGh1b1pxT1BQbENicXZyaXlDdTBzT1p1RWQwNkROZW00OHBIR3Rx?=
 =?utf-8?B?U1JEWTVCS1IrQ21aMEswcGQvcG15OVExYzltRncvQ2hxVGg3eitkKzQ0Sm44?=
 =?utf-8?B?MXV3KzNTakkrRTFpSEZHZ2lldGp2d2FTbGJvaGkrWkRrZlp5TGNoR0p6aUdl?=
 =?utf-8?B?QkM5YllsdXdiZERKWWw0Tjltd1ozWVVtbVp5UGsvdG0vRWxidnJjR0g3V09o?=
 =?utf-8?B?aUFyNjBTSGFHU3VvdWh0R041em5YcVdFMXJLZ3VveHAzUDV1REJhZThhZFdi?=
 =?utf-8?B?ZEtIeHNyQVpnQ3VVWUJIWFFhWllnczNPVEdzVFFCRTZLZGE3MTZ5OW5BWXBq?=
 =?utf-8?B?VXpTM3QrVWNLRllOditrS09IYUVXSVhSSHNzYlJPMlVtVTJuSWtaWDN4V1Iz?=
 =?utf-8?B?OE05RG9xZVl0NmtIa1dZVDMvNmdjRyttUm16b3N3UVVMRkxOOG1BbnZMR0Zl?=
 =?utf-8?B?TlJTV2QxTHBkYVJPd3djNFZNSFRFbk5xejVEZndWVmc0WHUvLzI0SmJrb1FX?=
 =?utf-8?B?dEgwR1lONzMxbUkxTEMyWHpvaTcwUCs5SXpVaVdyVmJPRUdxb3NnTmJ4VXM0?=
 =?utf-8?B?a1Z2aGM0Ujl2N2o4dnl6Q2JWMHBmQ0JLRXBhTGM4d2VqVGlTanplUE9mK3dR?=
 =?utf-8?Q?r4mar5ko95cKB/ejTcEsN6QxZtzCCSBK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(8096899003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?elNLQzNsVVdlOE5YdDVnQzNyK29lZHpXZVBRNGxKVi94SzdvcE15cE5keDYw?=
 =?utf-8?B?SXdJcHNFTHJpcWNYN1V5MytJM1NNM3kyT2h6SzlYNWcrY00xd1gwVWU5MW5W?=
 =?utf-8?B?MnBEMzRYckszVlZXeXlFODZrVGxUOTJyMndkMWJsbnEwNDl0YnJFYThqdjV2?=
 =?utf-8?B?TjVjVVA0TnNJZUQzSnQ1VENJQnFjamxJTCtramEyTlV5RDVnK3JpUEZQWmFO?=
 =?utf-8?B?R0NOUS9jZld6VWhMdDM2bnN6RVFhNUV6bXRHMGpBMVVTV2xFcXJjS1oyYXZx?=
 =?utf-8?B?VGhxZmdWZExZbDVBQ0h3azhiWWtvVytLZThuK1VHeitQRi9FR1VmVDRkKzVv?=
 =?utf-8?B?V0loRkNHQnh4UW02UndkblRqdVYyaGIwQWNIdzZXMkhYaURYeHl3QnlLaWh5?=
 =?utf-8?B?MlE1aXhsbFE0OW5LUFB1R0dNN20xbXFULzFCOURTN0xPc24wZjBFT1hxaklD?=
 =?utf-8?B?a1luUzdHTWhJZytMZCtMNUhrVWoxblpoNHNIc1hqazR1c09GTWtGMm1QZ3VQ?=
 =?utf-8?B?aGhwSUVvajl4NU0yc2UvQ2NlelhzM3k5d1dEQTREVnZtbmovZ3IzTU9uMmNJ?=
 =?utf-8?B?dGxMNkpSMlJ0TjMrK1FuL2VWam9mL002UzhyU3lRTW0vcUxDeU9JbjFubnhE?=
 =?utf-8?B?Rm54TUM2R01YYXhldmtJRWgreGRaRWVFNHoxS3V2OHZSVW12TlFheVNyMGIr?=
 =?utf-8?B?MnhFV01Ta1crU2oxNERNakpZUnpxUnoxa3pjNHI4ODlWY1FPSkVCSzNJWkt0?=
 =?utf-8?B?MFZ0YlZ3Y00yN0Y1VVMrS1UzMFFsNncvLzkzbDhLQ281MGdYZlYrdTNhci9Q?=
 =?utf-8?B?RzNmdHhIejY2TGsxNzg3NnB6NmU5UXlWeVhtaDVwUGd3RG9vNTFpcWRVVzJV?=
 =?utf-8?B?bGlSdEJaZWFFRkRmQVUvWlRST0NKMHpSREZoaUs0OU82VHJlRkpNU3dIakZ1?=
 =?utf-8?B?aDNpdEJ2bXFvUTNWUTVSTmEwMDlmaDgvUWFLOWZqb2JVOC9OMlA2dGc4bDJn?=
 =?utf-8?B?c0RmRDFRd2NDTXNQMjRmU1dBNDZ2SFl1YVpSTHIwVGVYLzlYYmZ3YlFmY0VW?=
 =?utf-8?B?OHcyZm0vem1NVERORUJIMlJSVmZ3Yi9Ca01KQnpvYlN6RldEYTNXbjA2cTk4?=
 =?utf-8?B?V3Zrd25wSy9jZk9iY0JiNG1hekt6cWt1TVhkS2xqNmxLOXN2TDZoK3AwZDVU?=
 =?utf-8?B?dkpib1hRSDc1UUQ2d3BWN1ExdTFMZHQ5SjNvcGVMeVh3S0xaUnp2MTZtZ0dI?=
 =?utf-8?B?M3RRNHg3cHl5UEtWT0huaExFQlRlVE5aYUxOOGFjWXhaWlRSWDV2eXIxaDhv?=
 =?utf-8?B?SW9JREZLWmU3YXMwa1lkNE1TazE4VW43cWpjNDdrc2ZFZWI5cGp3Q2hrazZr?=
 =?utf-8?B?MTBFOEd5WGRZRWVNTVF6aHkxeFA2MmFMZU4wUmwzQW5ieit5eldpSmRiTERF?=
 =?utf-8?B?N1NJVmZyekZHcXZhcDgzU1crdlFQY0cvRDh0aXN4emhXNm9ycUtjWmE0OVJX?=
 =?utf-8?B?dVBjQjFDa3ppaW5qN1M1UnlKblIzenY5Tm9mOVdkQ0NBT09GamJmb3BsTzdI?=
 =?utf-8?B?NSszNHlaYlhncU9Wb3R5Z2hoYXdOK0VzN0hsSWZwRWdjQVF5NFJOcnRnL3B3?=
 =?utf-8?B?cXBLYmV1NU5oU1BHSE10dnhacnU3dnV1SUE3MlRNMWR2TE45eSsvVmZWakVN?=
 =?utf-8?B?UTVwU1NFYnVZaTJsdGQxR0daUGVpVEFmMUdKbW40MHJDV291S1NmZThJL2hX?=
 =?utf-8?B?Nlc2aWt5bm1LbTdrc2hseEZMVmsySTlpZlJ5SC9LbW9pM2NkYVhzVGp0NEs4?=
 =?utf-8?B?WG1NcWMxZGo4SURmT1hKUjRqemNrbU9WaDFSKzJTbEllNTQxTTFITTVQUHpF?=
 =?utf-8?B?ZExVRHZKVmRVSjF2UkdHejc4UFBOakRZWTFPTHVBajV0VnRXOFJuZ0t2ZGxU?=
 =?utf-8?B?RjA4OUljWXU1Wm9hVnRmbFY5MU9IczQvVVQ2Z2RiS1duZnFLNzJrcFdZVERC?=
 =?utf-8?B?dUpUSmNuQ3hWU3ZrMlVOM3dYYjhRUjZCSGc3aUt6QWdmUnJTQzhJdUE0bFAr?=
 =?utf-8?B?a1JyME9HWS9VK0pRNHQ5KzFwaTAwVllYa1dPOFFpYlBQN292bVVxOXIyTlRo?=
 =?utf-8?B?R1ZBbXdQaG5ITnRsVTgyR2owMWZIOWx1STNBUlE3d2tHVndRWm8rNG0yZ0pm?=
 =?utf-8?Q?xAK/dtWk7Mza4ZUIjU2ciIMc4JclvbTqSzvTsTYzxNjo?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 62acabb8-cdff-4203-a30b-08de3c697e9a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2025 06:08:13.1559 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WQ0XpnrpCBnT7QiW/336qf9ndcYsEfgQnmqKIhLlCqbWHGWPrUqijUZq2uHRoctYlTWI8TAJzdTmVscneL1hOmO25xrQEeofloXimmVLvIb+moXYEU3LjkFhXA5Zv4Ue
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV1PR11MB8851
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

--------------Idj0zrcyg5dDlDpG6b7DwNwt
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit


On 12-12-2025 13:07, Hogander, Jouni wrote:
> On Tue, 2025-12-09 at 17:03 +0530, Dibin Moolakadan Subrahmanian wrote:
>> if DC3CO allowed set PR_ALPM_CTL_USE_DC3CO_IDLE_PROTOCOL
>> in ALPM_CTL and update dc3co_source
>>
>> Signed-off-by: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_alpm.c     | 4 ++++
>>   drivers/gpu/drm/i915/display/intel_psr_regs.h | 1 +
>>   2 files changed, 5 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
>> b/drivers/gpu/drm/i915/display/intel_alpm.c
>> index 7ce8c674bb03..28a95f6ddfab 100644
>> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
>> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
>> @@ -347,6 +347,10 @@ static void lnl_alpm_configure(struct intel_dp
>> *intel_dp,
>>   
>>   	alpm_ctl |= ALPM_CTL_ALPM_ENTRY_CHECK(crtc_state-
>>> alpm_state.check_entry_lines);
>>   
>> +	if (intel_dc3co_allowed(display)) {
>> +		alpm_ctl |= (PR_ALPM_CTL_USE_DC3CO_IDLE_PROTOCOL);
>> +		intel_dc3co_source_set(display, DC3CO_SOURCE_ALPM);
> This source concept is generally confusing. More specifically
> DC3CO_SOURCE_ALPM I don't understand:
>
> PSR and LOBF are methods to allow switching link off. ALPM is a method
> to switch the link off. DC3CO and DC6 are Display power saving states
> which are possible as the link is switched off.

Thank you for comments , I want to track the reason for enabling DC3CO.
I will remove DC3CO_SOURCE_ALPM as you pointed, but want to keep
DC3CO_REASON_PSR2 and DC3CO_REASON_LOBF .

> BR,
>
> Jouni Högander
>
>> +	}
>>   	intel_de_write(display, ALPM_CTL(display, cpu_transcoder),
>> alpm_ctl);
>>   	mutex_unlock(&intel_dp->alpm.lock);
>>   }
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h
>> b/drivers/gpu/drm/i915/display/intel_psr_regs.h
>> index 8afbf5a38335..16a9e3af198d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
>> @@ -268,6 +268,7 @@
>>   
>>   #define _PR_ALPM_CTL_A	0x60948
>>   #define PR_ALPM_CTL(dev_priv, tran)	_MMIO_TRANS2(dev_priv, tran,
>> _PR_ALPM_CTL_A)
>> +#define
>> PR_ALPM_CTL_USE_DC3CO_IDLE_PROTOCOL			BIT(7)
>>   #define
>> PR_ALPM_CTL_ALLOW_LINK_OFF_BETWEEN_AS_SDP_AND_SU	BIT(6)
>>   #define
>> PR_ALPM_CTL_RFB_UPDATE_CONTROL				BIT(5)
>>   #define
>> PR_ALPM_CTL_AS_SDP_TRANSMISSION_IN_ACTIVE_DISABLE	BIT(4)
--------------Idj0zrcyg5dDlDpG6b7DwNwt
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <br>
    <div class="moz-cite-prefix">On 12-12-2025 13:07, Hogander, Jouni
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:4735ae6f3a837db3b7cfc989ab63bb84d9ede129.camel@intel.com">
      <pre wrap="" class="moz-quote-pre">On Tue, 2025-12-09 at 17:03 +0530, Dibin Moolakadan Subrahmanian wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">if DC3CO allowed set PR_ALPM_CTL_USE_DC3CO_IDLE_PROTOCOL
in ALPM_CTL and update dc3co_source

Signed-off-by: Dibin Moolakadan Subrahmanian
<a class="moz-txt-link-rfc2396E" href="mailto:dibin.moolakadan.subrahmanian@intel.com">&lt;dibin.moolakadan.subrahmanian@intel.com&gt;</a>
---
&nbsp;drivers/gpu/drm/i915/display/intel_alpm.c&nbsp;&nbsp;&nbsp;&nbsp; | 4 ++++
&nbsp;drivers/gpu/drm/i915/display/intel_psr_regs.h | 1 +
&nbsp;2 files changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
b/drivers/gpu/drm/i915/display/intel_alpm.c
index 7ce8c674bb03..28a95f6ddfab 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -347,6 +347,10 @@ static void lnl_alpm_configure(struct intel_dp
*intel_dp,
&nbsp;
&nbsp;	alpm_ctl |= ALPM_CTL_ALPM_ENTRY_CHECK(crtc_state-
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">alpm_state.check_entry_lines);
</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">&nbsp;
+	if (intel_dc3co_allowed(display)) {
+		alpm_ctl |= (PR_ALPM_CTL_USE_DC3CO_IDLE_PROTOCOL);
+		intel_dc3co_source_set(display, DC3CO_SOURCE_ALPM);
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
This source concept is generally confusing. More specifically
DC3CO_SOURCE_ALPM I don't understand:

PSR and LOBF are methods to allow switching link off. ALPM is a method
to switch the link off. DC3CO and DC6 are Display power saving states
which are possible as the link is switched off.
</pre>
    </blockquote>
    <pre>Thank you for comments , I want to track the reason for enabling DC3CO.
I will remove DC3CO_SOURCE_ALPM as you pointed, but want to keep
DC3CO_REASON_PSR2 and DC3CO_REASON_LOBF . </pre>
    <blockquote type="cite" cite="mid:4735ae6f3a837db3b7cfc989ab63bb84d9ede129.camel@intel.com">
      <pre wrap="" class="moz-quote-pre">
BR,

Jouni Högander

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">+	}
&nbsp;	intel_de_write(display, ALPM_CTL(display, cpu_transcoder),
alpm_ctl);
&nbsp;	mutex_unlock(&amp;intel_dp-&gt;alpm.lock);
&nbsp;}
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h
b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 8afbf5a38335..16a9e3af198d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -268,6 +268,7 @@
&nbsp;
&nbsp;#define _PR_ALPM_CTL_A	0x60948
&nbsp;#define PR_ALPM_CTL(dev_priv, tran)	_MMIO_TRANS2(dev_priv, tran,
_PR_ALPM_CTL_A)
+#define&nbsp;
PR_ALPM_CTL_USE_DC3CO_IDLE_PROTOCOL			BIT(7)
&nbsp;#define&nbsp;
PR_ALPM_CTL_ALLOW_LINK_OFF_BETWEEN_AS_SDP_AND_SU	BIT(6)
&nbsp;#define&nbsp;
PR_ALPM_CTL_RFB_UPDATE_CONTROL				BIT(5)
&nbsp;#define&nbsp;
PR_ALPM_CTL_AS_SDP_TRANSMISSION_IN_ACTIVE_DISABLE	BIT(4)
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
</pre>
    </blockquote>
  </body>
</html>

--------------Idj0zrcyg5dDlDpG6b7DwNwt--
