Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eFL/JgXNcGkOaAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 13:56:37 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 101B057281
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 13:56:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9770910E6E3;
	Wed, 21 Jan 2026 12:56:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AIO1u/5O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A75310E76F;
 Wed, 21 Jan 2026 12:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769000194; x=1800536194;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3rltiiowOy2swxBqHlFH9O3/25fp25na0ICsL9+hbt0=;
 b=AIO1u/5OQjvSTYBRyOSkwyJSP4L/QEKlZEx/obuxwnb92B66bp3QtaS2
 7rhhVlddFZ3LUkePlcapr3wlBz9ySLeFMfUaNISvn+3asu471ZnOx7YLM
 Y/wvFNPN6NNRB34hhUZHQ5LGS4cTfwjzOv1hGqubdeJaMAmAw5uLa13mt
 mHbv3CL6eFO6EH78+Ww1EkxTdrOeEMXnMT8WjgaZuM9kuvx3p+hejSAr3
 wVddJjqUJ1PA9Gnek4vHPEuEJNU9nsEs4MbrBmG6nxYoGOADjIPL+xyts
 AGUBsZJMxgNwwoAohtEtZbj1J5HzxtLgYdh9ZL72QEKOWWMRwtVO8V8la A==;
X-CSE-ConnectionGUID: ErX6YmMMS82oiOMH89kImw==
X-CSE-MsgGUID: 93dGzhffStCnuBaeUqegQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="87803416"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="87803416"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 04:56:33 -0800
X-CSE-ConnectionGUID: clGvENsOQuO7T7eD6yq2bA==
X-CSE-MsgGUID: tbw6lar6QjSi4jGDCksUAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="237106595"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 04:56:32 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 04:56:31 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 21 Jan 2026 04:56:31 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.26) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 04:56:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i8W2P8quqOCCnSaer/ntQmJUy/Z4D+CKfnHuIx0QnA4WRiRg0+vMO11qODB9K1x9gGf94o4RA2/542Tr76KQe94wlkeqIoVVQbzp5Mi4Bkab6Vsf2lO5LyZ8kKZWChyv2B7LWjdiedOpBuqRxt6VfLHRFtbFQ8lrmYxvoWK9S+kj24c41jytGL4dgtpSv/FCQqOtUUAA+berPNgHRYFPZXf0iBITWZlCp1+p4r70YcsQCg0yIVfO3xGviSdTixuMr7R4YCZ4oHyijmC0rJR9sowbCAR+2lg/i+ippTc685WviQAZXIL8mKOLH7Pjg0x/Kqb95UxgXzPhKYU1kNrVCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yNzNWrwek8C7XsYq0eRpFcXxCFQVRiXIChCKCedY1EU=;
 b=xSL3CAiBcHfddCbAosL9aE5jig08oBPVJSkdMZySEnxayJXwfaTY2WZ0rIWi/nFAynxUi7t9jPRhvDaeE8GzZXZiiIUdXQIl/cCcgOZMR2sTYYv60HN6d7ksr/NaEPdq3EiZ1q3sDqD+9aN9RoMRJYfBAY9b3CoHojHa0I7P9ixhpRuQjBP/4Kt81hXYjRB7T/Afbk5H9H3ENJ9/l+0l9kKT5bdqWbBco2rTm0Vr6nTNR1X3HuRSWxURaF1jTTckoDFEuCKAWgC+BLBrK95nFClPUS8Un5JqkEHAmEqZWtIUsZK8HgmIN13RqyyF8RmwhzrC6CNg6rHGXPKn9RHSRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS7PR11MB7932.namprd11.prod.outlook.com (2603:10b6:8:e5::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.9; Wed, 21 Jan 2026 12:56:29 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.009; Wed, 21 Jan 2026
 12:56:29 +0000
Message-ID: <73e0de50-b7e3-4315-ab81-0a3ecebc2363@intel.com>
Date: Wed, 21 Jan 2026 18:26:21 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND] drm/i915/hdmi: Poll for 200 msec for
 TMDS_Scrambler_Status
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, Jerome Tollet <jerome.tollet@gmail.com>
References: <20260113133845.1636774-1-ankit.k.nautiyal@intel.com>
 <aWa7jjtOWnSd_JIp@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aWa7jjtOWnSd_JIp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0098.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1a8::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS7PR11MB7932:EE_
X-MS-Office365-Filtering-Correlation-Id: c44e7fe6-7312-4b9a-af7b-08de58ec7e6c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OVQ4dUQ2TmpFNHNKVk5jRXgyQThYUktoZHFWZHBFOENiSSt1cCtNOEc3ZUU5?=
 =?utf-8?B?N2pKTW1GK2lNaW5Kc3BPUUNXazNZdWZhVTYwcXVBN3ZZaVRIS2JNTVU5SEhK?=
 =?utf-8?B?V0tGMjlDSmZZQzA2Um1vMkVMZm5RaDFHcjNURnpNcGxyOXJBNmxnQ3dWTThq?=
 =?utf-8?B?Rkxua3ZvMmF0OHkvVjJidGc4RS9HQklRWU51bXAxRGxMMnU5Tk5iQlAxSUln?=
 =?utf-8?B?NW5HMUgzNktlOG91bW5QSzJYUDFmd28zakpqcUhUR28yT01WM3QySFlHV3B3?=
 =?utf-8?B?OU1GZ1BsSnkwMmdJeUNRYndkNU84Z093QnIySWpzTmo3ZFN2RStiM0U5L21h?=
 =?utf-8?B?N0k4Ni9RUjlZbUdMQUNkK21iVWFZZTR5U1hHazdRaW9FZVJpSHlFMWRmWFN5?=
 =?utf-8?B?S0tEdnVNRkhaM3NaZlhZdlBZVzMxdERxMHFXUWl4dFR3RVF5bVNwYndaS0gv?=
 =?utf-8?B?YjNXVVZSbWhXVFVtUzhyU2o1SGRqMzZGL2x5Z1pMSmRnSU5RbHpJT3l4N3hu?=
 =?utf-8?B?dDlmSzh4aWNYUE1zdDA1N09BdVZjbFMrTDdiKzRLN3NYZGxCZm1QTlBYUTh4?=
 =?utf-8?B?dDJhYkhtRzU5REUzN1kxRXg1cTBlSWQzWEVnNi9NcnZqTFdmTWVlVkNqUUl4?=
 =?utf-8?B?YmlxdFdnaGJDOVRFZHdYTC80VDI4YWpXVFVSOXlmQjJoak1LRkpKOFZpNFRk?=
 =?utf-8?B?NGpoMDNMVXRaK1plcXEyZk9CeG82ZVZLcnFQcE4yYjJIdThhUlhtenRydXh6?=
 =?utf-8?B?L240TE5yOTQ0V0V1S3VyTGZmYTY4bXBxQXFxK1ozaVJid0VkRktCRUErUllI?=
 =?utf-8?B?OGRvbVhoVDRUSjhqaEUvZWsyaEo1WEN3YmlPb3NnRzRoVnZUOHMxOGt5UVVa?=
 =?utf-8?B?Y1FvcExJUTRIOXpLTE91c3NMOUVBTzJCb1dtYTI0WGRJRCtFT05WSHZwaXhK?=
 =?utf-8?B?WGZsNnh6T1JqVlBRWk0yeUg2N0lwT2JzV2hKQlZEYU0xcWovT2VGK0swZWp5?=
 =?utf-8?B?Skg4cmVMUGEwcmRjekI2VTBrSVdvdnk4N3lZNFYyMzg5QkluWUdGVGpqNlBC?=
 =?utf-8?B?dDdnUkxnbFZhSjJVVXhYSDlJOHFVaC9VVDI5NkozMGczSVJuN3ZUQU5aeFVR?=
 =?utf-8?B?UmxNeURIVGR6S3lQdzBWZXN6OXI1YWtmU0dWdzVPS0M2bU1jZit4NXJJSlpM?=
 =?utf-8?B?aFRweTRXUXNZTmRnRmUwaWQ5SFRqYzBaY29zQVJTaVorbldKbFI2RzNvTjFm?=
 =?utf-8?B?MVMwVWY1M01yUitSckpWR1l1VExET1oxcThaN3RZSk1DTjBGbzIySkZSdzYv?=
 =?utf-8?B?cVpiaFBOUUNnNTB3bGNCdUZualRIY2swUFY3QmRxeDVodTBabStuNWtZUVJX?=
 =?utf-8?B?czVTenMyelg4MXlGOU8vejMyMVRUWmRaQVB3SHhncFVaZ21MMlJFZENoMFUz?=
 =?utf-8?B?RW8yMk5lT0Y0Y1V2akFwNXc0VUExUit0MmRTd1hUeUhOZjA3NWM4VFAxc0ZP?=
 =?utf-8?B?OGRobVR0ckxRZ2ZHNXhkQXo2a1NZcnYwTUpkb25pYXRvWFc5OS96Y1FlZ1R0?=
 =?utf-8?B?L1FEUGVKK1RlTVhXampFeFM5UG1QS2tZMFZzQVc1WW5VdzJHWTI5dW5jRkpa?=
 =?utf-8?B?S0tkeXdwK0tHdm5zaVpWZ0RpZFY3STlqdTRJRmR0dUhjYTVyODZDNHJrNTVs?=
 =?utf-8?B?RkFQY3ZiT0VNWHVNZXJCdVNseTUwMmJPUUErTzBxWWxjRHVET3dDMFgxSGhY?=
 =?utf-8?B?ckN4ZkVVei9yZ0orS0ZSZk1RT2hha0hzd1NKVlAza1lNbFZoQ2t2cDFIUU4z?=
 =?utf-8?B?aHZhY0ozZ3dOOW9PM01pamdyWk8yU0ppMkVySmpuSDJDazNKRklRbXgrNmF1?=
 =?utf-8?B?UkVubVJkVmZxUHU2a2FGYmVrc0pDQWV2OE9SN2ZjaFQ0QU1ZQy9YVkFqN1V4?=
 =?utf-8?B?OWo4aTQzUlA4dThibTVNdGN5dWQxWXVBSHQxdDM1UURWcXdVUVd3QmhzNkcv?=
 =?utf-8?B?R2VFMFBHeVlRWTh0WVRSYWx4QlZtaElLR1dKSW12MFBobGs5T1p6Y3VuZWRa?=
 =?utf-8?Q?Y/0N79?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U3YxRHAvYXZLdzVwRmhLOS84N2FlM2RPaGx6VGZCS2p4TEF5K1NPYWFUbCtw?=
 =?utf-8?B?aHRCUnAwQU1HbXkzc003ODBzeExUMmhOV21oeWVnWk9oa3NOTFN3aUhCT2Vm?=
 =?utf-8?B?UHFnMmgrd2xEemVSemtPTDh3RTNqbWhLZXVJYXlCTlFGZlBUd0t5emlUYlBx?=
 =?utf-8?B?MXR3RERJVnFoNVcvc1hsQlpDRzhKSGNmRDI5R0VablNnVEpqdEExVEovUjBJ?=
 =?utf-8?B?MmZ2U0hVOGdSdFJLV25ackJRWVo4MWRTTzJuaWZxODB6VjNDT0xwRnlLRi9P?=
 =?utf-8?B?Mzk3QU93UkRhSnV3NC9NL1pQWEgxUndBenNwdFZVZzcwY05xb3RyQlpIL1BN?=
 =?utf-8?B?eHRScFNhRnFGT3JpRzJLWU1aT01rYmY0elg1Nkx5MnFjVXJhQ3ZkVjFvY1VI?=
 =?utf-8?B?OFBoMGFSYWY3SU9Ec1hTSjY3ajZLelZvZ2tYem9iaUF2RkhRWWNLWnZleU44?=
 =?utf-8?B?U2xuV0F3RXMxNHMzNGtQZWYyNzdIL3kyTzNWeDQvOGk4RWN5THZMWnFNQjdk?=
 =?utf-8?B?WWp4TGduT3NCcWp3S0hhVG5vOXRWc0RIVFlBa0tSTUtiQTY2UzRqZmh6L21U?=
 =?utf-8?B?T05VR3luMXpjVTFjcXFzOVRQWUxSYUVUSi8zUjE3WGt5TzZTMytQMWR2Ukc1?=
 =?utf-8?B?RUFHeVpYRG5aOXpXNjRROXhFMTJqRU9nT1RZemFueklKazh3a0JtRTN5U09v?=
 =?utf-8?B?dW1VMVdsLyt4M2RlU2VUdFVoMTBZMWVEcE9la01Ccmh0VjlYa0E3NExJakw0?=
 =?utf-8?B?dk43WUVBSmptZk5ZdjNhcjRFNUpRdlFob2ZjRGhrM0tRTXlLOWl6Z3VjYXZa?=
 =?utf-8?B?QmMrYlo5ektZZWNpRjRWcTRxU29oaHBMVTZHT0EyVmxPRzY1VlNuTVA1dkhz?=
 =?utf-8?B?a0k2cStETnBYNkJUZTgrVmwwQ1JkRFQ2blMyLytSSmNBTnNXQVlFK200NjFC?=
 =?utf-8?B?NE9Db2tja1VSWHQ2Z3NVR3J5Nm5Jenc5ejlLZnE4UzlyMmhrMjVIZEdpald6?=
 =?utf-8?B?RjcxZ05reWlaMEIrL3IzQ2d2aVV2aXozMVJPcmduazdWdG5qcW9QRHlrWlcx?=
 =?utf-8?B?WGVqTUsvOVFrWnNRSmczenlGZlVMWUF5bkFoVGpQZXRKVDlLaVVjdStpTnEz?=
 =?utf-8?B?azVKY09pbGN3OVI5NFB1YW5UaTJYMXliVG9jNkh6cDVtNWYxaGZWUlFxdDF4?=
 =?utf-8?B?VzFGSjZQbmtQTkpzbXBDOTkwbVFRU1JHcjF1WE1MVXlQUjNYZEY4ZWxIQ2lK?=
 =?utf-8?B?NlhncDM2cm5FOVNjL0w0czRLWkhrRGZlYUhmclh2UVppUTFkQUVRSFRrRmhm?=
 =?utf-8?B?MHBCckp5b3gvN0s0UkNCajNlcVl6dnlkN3JJUXFaZXIycnI0RFNHZURVT09G?=
 =?utf-8?B?UVdnU0luSUVjVkFndG4wQmMxaS90Wk9EL3NOa0xnOWMyWWhXNURWUXRxaDJa?=
 =?utf-8?B?bGFqRVdTV0ZxaWloYmFXbitjN3h2N0hFVDN3aC8wd3I2K1pqYmJSbFZuZWc0?=
 =?utf-8?B?NlNyVG1rZ1ppNG5wUGxPeHVWVWFWN29jTmxuUlJ6TlEwSmFrUjN1cWNIWEw5?=
 =?utf-8?B?VmhIK1QyUVo2OVpVeHZHbHZQTzFiNnkySGdqb2pGN0VlcmNTOG80bThOOGZa?=
 =?utf-8?B?TUxFNjV3WUpCWTc5WlVBNjRFbEJoUGk4YzNBTURSMnNsWkZGOENZSlNSUmRR?=
 =?utf-8?B?bHpzaStFMWNXVXRiTEZibTd5dk9BdURMN1ExeDAvS21DaXV2M2lXWnpudXVC?=
 =?utf-8?B?anM2QTlMWmYzb3dUT00wM1pYQzU1b2NFZXRQemJQVkNtN05VaTZOL25YbUVx?=
 =?utf-8?B?TW5lOWl3V0ZqdFVOTk5KT2JRdVZ5SFViMTZ2V1RWREJTNTkwQVNoSnVPQWo5?=
 =?utf-8?B?VC9OZEZjVjZESWQrQmVtVW15N1ZpME1LZE42RnhiMUtNdDJHUlhsbU9oRGlU?=
 =?utf-8?B?ZWRTN3hNcndEcUM1NldTQTd4N0dodVFCdnR4bmRPV1NscWZWN3ZwZGVzNE50?=
 =?utf-8?B?Y21uOXVSTHBheGtRUzRGYkJSNDhTQ1JlclVpRlUxWHRRelNxZk4xNElFWUtD?=
 =?utf-8?B?Rnh2aUNsQlRLckYxK0FLeFNPL3JxdkRyQmE2UjFad1FkWHRjZDJkTTVFeUtG?=
 =?utf-8?B?RTlJckJIUUEvOTZodXRWQzBoV0p3L2psY2pBUXdYdE1uS2pYQUkwZ1JUYnhz?=
 =?utf-8?B?aXU3WGtkVS9ESm9mL2N1STVGT25Vd1lCYTJTQnpvcEoyODZCNjZqM0pRSzBy?=
 =?utf-8?B?SUpVKzc2czFwWVpqbitmZU9ueTZpbjk5ZW1udTd0cE4yS3k0VlNkN25rbDJT?=
 =?utf-8?B?NmtpMi9TSzV3TG9ka3kzUndqeU4yYjBVdnNMRi9nTGFFaUdKN0lFN05BdThL?=
 =?utf-8?Q?fXcjfnhg3KQgJZjw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c44e7fe6-7312-4b9a-af7b-08de58ec7e6c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 12:56:29.5090 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7hUgBs7vxY9HRekkW37OWmkjjjbWJlkDBtOKRUnKJDCWcVwFql5xXwYoKFkgIb+yZHNNSjIYj9ZQHjmZkx4P2RtzxwcPLqVpkIbqUonAcKY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7932
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:dkim,intel.com:mid,60hz:email];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,linux.intel.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 101B057281
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 1/14/2026 3:09 AM, Ville Syrjälä wrote:
> On Tue, Jan 13, 2026 at 07:08:45PM +0530, Ankit Nautiyal wrote:
>> From: Jerome Tollet <jerome.tollet@gmail.com>
>>
>> As per HDMI 2.0 specification, after scrambled video transmission begins,
>> the source must poll the TMDS_Scrambler_Status bit until it reads 1 or
>> until a timeout of 200 ms.
>>
>> Add a polling step after enabling the HDMI port to verify scrambling
>> status, following the spec requirement.
>>
>> Without the wait for the scrambling bit to set, some HDMI 2.0 monitors fail
>> to decode the signal at 4K@60Hz (594 MHz) when SCDC scrambling is not yet
>> fully configured by the sink.
>>
>> v2:
>>   - Instead of the fixed delay, poll for TMDS scramble status for 200 msec
>>     as per the HDMI spec. (Ankit)
>>
>> Reported-by: Jerome Tollet <jerome.tollet@gmail.com>
>> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/6868
>> Link: https://lore.kernel.org/dri-devel/20251230091037.5603-1-jerome.tollet@gmail.com/
>> Signed-off-by: Jerome Tollet <jerome.tollet@gmail.com>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>
>> Rebased and resend to intel-gfx and intel-xe so that the patch is picked
>> up by intel gfx CI.
>>
>> ---
>>   drivers/gpu/drm/i915/display/intel_ddi.c  |  2 ++
>>   drivers/gpu/drm/i915/display/intel_hdmi.c | 25 +++++++++++++++++++++++
>>   drivers/gpu/drm/i915/display/intel_hdmi.h |  2 ++
>>   3 files changed, 29 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index cb91d07cdaa6..c708b713f0e8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -3506,6 +3506,8 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
>>   	}
>>   
>>   	intel_ddi_buf_enable(encoder, buf_ctl);
>> +
>> +	intel_hdmi_poll_for_scrambling_enable(crtc_state, connector);
> This is the last thing we do in the modeset (apart for some HDCP stuff),
> so it's not at all clear why this would fix anything. The only thing that
> will change after this is the actual video data or some infoframes (audio
> in particular). It would be good to find out what exactly is the thing
> that needs the delay (ie. keep moving the delay further forward in the
> modeset sequence until it fails again).


As mentioned by Jerome in [1], all the earlier placements worked, which 
suggests this is a timing issue rather than anything tied to a specific 
step in the sequence.
However, the HDMI 2.0 spec requires checking TMDS_Scrambler_Status only 
after scrambled video has actually begun, which perhaps would take place 
after intel_ddi_buf_enable().
Windows also seems to perform a ~200 ms SCDC poll for the scrambling 
status after port enable as part of its post‑enable sequence, which 
aligns with this.

On the other hand, if we are not sure about the placement or requirement 
for this polling, should we just add the delay as a panel specific quirk?
I mean we do not see issues on other panels, adding this delay or poll 
at an earlier generic point would unnecessarily slow down all HDMI 
configurations.
If the SCDC poll for scrambling bit does not make sense, then perhaps we 
can add a panel‑specific quirk placed immediately after enabling SCDC 
for that panel only.

[1] https://patchwork.freedesktop.org/patch/698437/?series=160074&rev=1

Regards,
Ankit

>
>>   }
>>   
>>   static void intel_ddi_enable(struct intel_atomic_state *state,
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> index 055e68810d0d..6f7dcd7365a4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> @@ -3363,3 +3363,28 @@ intel_hdmi_dsc_get_bpp(int src_fractional_bpp, int slice_width, int num_slices,
>>   
>>   	return 0;
>>   }
>> +
>> +/*
>> + * As Per HDMI 2.0 spec: after scrambled video transmission begins,
>> + * poll TMDS_Scrambler_Status until it reads 1, for up to 200 ms.
>> + */
>> +void
>> +intel_hdmi_poll_for_scrambling_enable(const struct intel_crtc_state *crtc_state,
>> +				      struct drm_connector *_connector)
>> +{
>> +	struct intel_connector *connector = to_intel_connector(_connector);
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	bool scrambling_enabled = false;
>> +	int ret;
>> +
>> +	if (!crtc_state->hdmi_scrambling)
>> +		return;
>> +
>> +	/* Poll for a max of 200 msec as per HDMI spec */
>> +	ret = poll_timeout_us(scrambling_enabled = drm_scdc_get_scrambling_status(&connector->base),
>> +			      scrambling_enabled, 1000, 200 * 1000, false);
>> +	if (ret)
>> +		drm_dbg_kms(display->drm,
>> +			    "[CONNECTOR:%d:%s] Timed out waiting for scrambling enable\n",
>> +			    connector->base.base.id, connector->base.name);
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
>> index be2fad57e4ad..0fa3661568e8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
>> @@ -70,5 +70,7 @@ void hsw_read_infoframe(struct intel_encoder *encoder,
>>   			const struct intel_crtc_state *crtc_state,
>>   			unsigned int type,
>>   			void *frame, ssize_t len);
>> +void intel_hdmi_poll_for_scrambling_enable(const struct intel_crtc_state *crtc_state,
>> +					   struct drm_connector *_connector);
>>   
>>   #endif /* __INTEL_HDMI_H__ */
>> -- 
>> 2.45.2
