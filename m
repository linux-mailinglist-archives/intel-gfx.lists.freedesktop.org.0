Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UHDxKlTTlmndogIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 10:09:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC0715D37C
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 10:09:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D12A10E1C8;
	Thu, 19 Feb 2026 09:09:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kg5k6HL7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0355410E140;
 Thu, 19 Feb 2026 09:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771492176; x=1803028176;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vyjNQtx/pJ4pCFxDvu2IcC07B0kHNAP0QFEsYApvGeA=;
 b=Kg5k6HL7o1p7e4jW3mWTZHNv4t6QXFpqZf1HFL0kpUnjq7PUgjouOQrG
 M8bpeqejDucSAw4zQPGNgxLdAkRlZeUwFjfvN3bzRwEgZs4o/RVwnZmDk
 rZrh3jZZh3n+RCcaT9f+P9Ps8AlQadsnLHKygSr8IUPLdTrpPnBiOem1d
 EZPr0ZRHBb1uHnBytrWeyZL8Ay747+9OnfkQtqSMizBNvMF2i8zcxtrpj
 97DfI9k0ZNcWNeNVd36hisILWB+ETJrDxfkoVC0DypPh6B+R/yUwhFrJS
 E8Nm+T7cffiY9v9aaeyFnok+rcHzGJoxQjrn/LauBjDClzz3yMmy/Losa Q==;
X-CSE-ConnectionGUID: h49UEj6SQIKyMKWMBtVraA==
X-CSE-MsgGUID: SiHhaUTHReSFvv9cIxzQJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="71597948"
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="71597948"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 01:09:35 -0800
X-CSE-ConnectionGUID: 1DlTr/FkS52uKKeOgnTpHw==
X-CSE-MsgGUID: u/0MKf9eRfKk/E+lNhdDUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="218235217"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 01:09:35 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 01:09:34 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 19 Feb 2026 01:09:34 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.39) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 01:09:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tsG2XrlSq5c5i2rcMOn+dY4nptYccdkLfRkd7SFO+b9Tv6D5kdHSDDg2QqDgtvJ9aNIH7YvL/zYoXj7rFtJv//YdT0xLinvXgr21IikrWZYYhco+iB541FP4UwVrSw/APLjGnkMgbk1+9VVF2Vs3ok2C+iCwU4SvAPQg6dlOHjsDVxoKIOS6uh8bVaEzqTF4RK1P0wsXznLl5QiaH7g2L8z9vpAr+tsZ/wQNxoDauR+gA2uwaMPEFomse3JspQHmZNSdciE1u/PRCKIljlNpaipgeNI50xXSCZX+0IqVQ4bjAWcCbW6NuF70z+lsayxrbip8qBNTnfa6IdGVpbKlDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VGjC90YprdIa36X8VFILXhf+eZ4CPGKvcnynzLixtLg=;
 b=VE59MS7VbFH4djUaiy4GM3M1DGASknmHzp36CUmPm2WA0u3U8TJILzWMnr0YZdfSphU3biieot63odstZiGIc7ktXohNL2yNK2bB4nYkyr9CDmLy58dum4rEoCJWVexOiUx0crIJRVg7FrwVMvOTWfIpl5wO3QLW0obqcAKjplaZLjgLEGMvaoFYpBWflB9FCPPlziR8ok0qglN7zlMaAKREeU6WCyso/+ff0DE0Kz5Q2Mt0rjnMIgYV0LxYUOFmSIC2raAS7h9BomC0S7UCMbEDJlSWmHjFU8jfSUWsGTbO1od9vFpgHYDZ0m2hMr4UKAJIemF+fyUZ95/XoFvRnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by LV4PR11MB9468.namprd11.prod.outlook.com (2603:10b6:408:2df::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.16; Thu, 19 Feb
 2026 09:09:33 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9632.010; Thu, 19 Feb 2026
 09:09:33 +0000
Message-ID: <23735591-84d4-44ef-8d42-5c664c6b82bb@intel.com>
Date: Thu, 19 Feb 2026 14:39:25 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display/dp: On dpcd init/caps wake the dprx
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <suraj.kandpal@intel.com>
References: <20260219083219.32256-1-arun.r.murthy@intel.com>
 <aZbPT-bcZlvl2Jc-@ideak-desk.lan>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <aZbPT-bcZlvl2Jc-@ideak-desk.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0052.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b8::9) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|LV4PR11MB9468:EE_
X-MS-Office365-Filtering-Correlation-Id: 94f0926c-2a82-47d3-249f-08de6f969826
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R3o3UzVHeU9sMVNxMVZ2QkppcUMxcGdmNGhlbzhsaVVkLzJiOHZlUDllK2Iz?=
 =?utf-8?B?YkppdHk3U2pZb3EzNXVUcnpkTXE2NndqVWJVdi9Jakp5R1VIejJJYVFVRUll?=
 =?utf-8?B?WGJzc1hRVGE4aUFqRVBXM29hMUNKb1NuWXJQbUFNY09jWHhVb1UyMlpHbjdh?=
 =?utf-8?B?b3laK01SWjlqNFl6R0VnRkNiS1VDVHd3a3NZd0J4YnNrNUdRdGRXUWRyNDhY?=
 =?utf-8?B?dkRwa3lQRmpvelNoMkdRcHVZcGRlVlRYelNKanMxc3orcjh6OG01VGxEUUlG?=
 =?utf-8?B?TjV3VmpVRkx0N2llbHJiSmM1WmllN3I5bmw4UlpUOFV3ZWg1clpSTUY0NHha?=
 =?utf-8?B?NngxTmtvRzM0NFFwWGNyT3F3bU5sZ09sb3ZwQnlwR040Z2I1aCtlV2UrcGRo?=
 =?utf-8?B?MVdKOUh6bGp1SWFEMXBmNEpLLzNCYlAwOENyeU1GRmFlazBYeUUrbWJSNExa?=
 =?utf-8?B?Wm1yTjJKRlRxTDdHZkh2ZHhKemtMR0Y0TDk1TDRhL2RSSWNxMEQwbGdSTkFK?=
 =?utf-8?B?ZmpEdXZocmlJd25id2g2cTJLQStCTThRVkdNSkFJN1JtUkFHTEx0Z09wVTBa?=
 =?utf-8?B?THFxODNpdTFvMlgvTEtkTDZCMnhjVXMwaE1SeCtSSVJ1Ni9UVksyQVNWK3Nu?=
 =?utf-8?B?MDhzQ0dqeTFHb2M1b3dzbXl3TjBOeEJIbk1PZXRkVklDeWlZNnBGOW5pU2V2?=
 =?utf-8?B?U0J3bVJjcWtvdFZHR3lwdytDZWpDQURHcTc3aWtpbVJ2QUhpdGc3TTdhUXJa?=
 =?utf-8?B?M1lZOTJwNVplb0poVE4zZUg0ODdqREE3SVlsZmVLWTlIbENxeldRd3VrYU05?=
 =?utf-8?B?bWw1clJsSHVqc0xobHdnL24xRUdsR1JmaFdBUnl3UmdtY3VGcHdnNmluNFJa?=
 =?utf-8?B?eVoyc2ZmanNpZmZ6TytkZVVPOXBvcGNHN3NwUnJFeWM3U0JPNzAwZXhKMWFN?=
 =?utf-8?B?RFhzK0pPZTlKT1U1SS96MGNMdjg1Vm84WDBCaktVRVRmWjd0VUNnKy9ZWTBj?=
 =?utf-8?B?d21vTm1DRWV0bENVa1VJclFJbzZMUEpEdkhXWHl6MFNTYklhVWFXNURwK2NU?=
 =?utf-8?B?SUR2K1FnS0pSdzkzYk42YkhkZVFTR2FCM25EaTBnZzd3SkhYd3BsOVUzc01Z?=
 =?utf-8?B?Zkt6dUJvM2cydTByMnN2OEo3a1dhaFNIK3pDc1N6aStPeVdhOEdyODRxTElJ?=
 =?utf-8?B?Zy9laUpwL0JpU2pGcEdtZEt1U3gyVnNKU3c3QStDQnd3Q21ZRFVjWVN6dXBK?=
 =?utf-8?B?WGk0Y1c3QmpVWXdMcGlMb05mK1VUVXZvWlkwZ0dYY0VEYThYaU1STk1jZnZx?=
 =?utf-8?B?M1JtWFJ4VW5xaTExc3ZraEF6WTRCajhXWTZ2UUV1QVdTdyt5RnQrd0ZrTTRM?=
 =?utf-8?B?T0t3eGh3Qm1UbVBsaDZGQjRGUWNMV2Fud2pzQm40MXkwdDBuMEo5cnk5TThv?=
 =?utf-8?B?d1VJZjk4Rk9nM3pLUHNqLzJqMklpYUF5RkZLTFVZNnQzczlyVjNGUTZvWFVz?=
 =?utf-8?B?MWlTeVV1b0JRUGxGZTd0ZTkxWDlyUno5M3Z0YzhWclV2aVNKMFRNVlovdkdm?=
 =?utf-8?B?bXVKN0FyazhJN0RJbVQ2WmJYVjJXYXlBbUtlRmdEYVhkMDZnYklXOGJHSzJR?=
 =?utf-8?B?dko3bjFyYXZXcURYcXROeCtnTzNhVVUySmcyTGx5Z3hYUWRUaXVjM1huM1ZU?=
 =?utf-8?B?WnEwMVh4MXZZMnV2OURjeERBV3oxQ3BKVEtNcmF2UnllWWJ2SlJ4OTJMQTNq?=
 =?utf-8?B?RkJxcVVSaHlZSkVHc1ZYTVNLZ0wrVldGa2hxN2xOc3ByV3BybU93V0JWWWh2?=
 =?utf-8?B?dWNQMlo5T1ZQemJ6L2R2VkhJMjF3SDRJcEYrdytMZ2ZPZGNQTkY3d3JxYW9h?=
 =?utf-8?B?c1BpTjZ5Sllja2FCZDZKSWhBVWZwbEhMOUpsMmVLYUcwdzV3S2dPeDlZNFI4?=
 =?utf-8?B?cWtIQ3ZKUzZwOG42eFA1a0x1MStZeTlOdmpaWndkRG8yT2ozbjJIeVZ0Umsz?=
 =?utf-8?B?SDNCVCtKWmlrdmpzSVhBWkZ2MmxPWHBNYzdsSEJrYU9vQVN1MGRpSEw2dE9F?=
 =?utf-8?B?ZmhhV0tHb0xuaUdlczdFNFFHU3VtOFhtandGekxPRnZMN2ptWFN2TkdaOUZW?=
 =?utf-8?Q?Iu+w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UEZ1M3FOd0tVOEtlZDZnTDBGT0RDS3RtRVozckcvU0JMUGFLVVlra0pZcG4x?=
 =?utf-8?B?UEtZSTBMVVhyQVlIbERucVBBZm1ieUdOMEtXdXFsTFIwSXl3cW1yc29tVHVm?=
 =?utf-8?B?OXlYQjZwb0dEVjRjSlpIb1JQUkV6S3ZLZ1BvMWVNdWJZbHdKN3czV0RSUXoy?=
 =?utf-8?B?Y0t3VFFoZGRzQUptY2JBcE9XNVFkbk1Gbjh6QUhYckFnR1B5UmZkbTVaZ3BW?=
 =?utf-8?B?Z0ljWXpWRWFwOTdjNDJzQW9LTFEzcnFzZUJTMU1zcDZPNWNkdnp2QkN4SVFr?=
 =?utf-8?B?a3hvOUN1M1M1SUdWZDY1Z0RoNTkySFJyMTE0RDl2NStlVDRNSXZ0S0dsTjBW?=
 =?utf-8?B?VDQvUzhGaEp5OEZlSWtBVFZySzV6YmpNTFAxQTlGd2xxOUZ3UGlGQW45dDdj?=
 =?utf-8?B?Wk9nV0w2VHNlbUdEQVovY2ZVSzZMdVJIcEszVE5VTjBmWFJqdnlYYnduMUp0?=
 =?utf-8?B?dy9CRFZTV01xNmE4UzZtb0lRM0RpRjhtT0o3NHhVSVBYaXIxR29VZ0lra1ln?=
 =?utf-8?B?eStLSFhvcFdmM3M1UDVCb1U5NUpPZXhlUFI5cHEzOHk4cWJocEkySFhyUmlC?=
 =?utf-8?B?cE5PZFloK0t1dXdHbjMxMVFEakpoazB5THN4dUh2b2lsMjlPS0tibEs5OXBV?=
 =?utf-8?B?cTdQcnZGaHU2VVBpcms0MWRXVFhNc2ZTV1ZnZWtLY2EvdzRWbTV4ZHJoUHVz?=
 =?utf-8?B?eTZSTW8yQll3MmVBRUlCKzBQcGJVbnhMbzBUMjFzWXp4NmtNeWVpS0IzWUhB?=
 =?utf-8?B?Tm85eFFscjZKbGxxS3hqaDlZVjcvNXVlUTlmVERaRUNCalUzSmNwZ0pqT2Y5?=
 =?utf-8?B?TU1LNUNFWHR5OXlIRDRlaXI1OUtwOFVTOXpZeW8vT1BqOWNYbHExL2FoUWtW?=
 =?utf-8?B?R0lNUHJIYWE4a1J1RkI3WHJhR1ZSUkZVcE5KVkhTY00xOEVaZVlnRmhjUlMv?=
 =?utf-8?B?TzdHclo4WThTcFcrNUU3b05kTEd6MWovMUQyWU0vTUpiYXA4NnhkSFBHTnkx?=
 =?utf-8?B?VGk3d0crNldVTkRhdE5sNUhaNWR1MTk1ZkZ0ZXl2cy9LMzFscjBnS0FSOG9U?=
 =?utf-8?B?VE40bEJYak9VOURHdmVhU2EveVpGUVVHa0dNTG1Fd2xUdEdpQmdKVm5VWHdw?=
 =?utf-8?B?a05VWFIwbTlLdEovMXZvV0QzS1FPVnRhY203TTVYdkhJeUQ0OVdKMS9BTHNL?=
 =?utf-8?B?NW1xVnNveUVHQWZvRFVSbm1WNXVNQk9MUHBjSDVjVmw3ZkV5ZkRkUGZSU2Ew?=
 =?utf-8?B?a0FDVFkyMjVjRGkzendIRU91SEtTNEFQaGNYOGJlN3c1cjVXMGlVWmVEc0Nr?=
 =?utf-8?B?c25WK0cwdWs3UkoxSmlxclhQQ0tnbTVTaGFJM251L3pSUjNTWkQyV0Zld1BU?=
 =?utf-8?B?NnhHSVFiWlBCOGRVSlVhZUdlSTJzMFk0bDFyODRZaWNvOFBXSVVORHhpWm0z?=
 =?utf-8?B?T1Z6RmNDUkdGWHIrdkN3UGdCNlJGQnhWVmFId2pRMTErYVNxQlJRckFxc0gv?=
 =?utf-8?B?QTdPYm94RWt0TjQ1OHNmVjZGYzd5MFV2bmw2Vk90cFJ2TVd6WEp6MVdLUmUw?=
 =?utf-8?B?TU13RTM2VVFIRUFqUkhuSHVjN0hCQjUzV1FJdjlya2JkSENFQS9zWlZsYThF?=
 =?utf-8?B?WmNOUHJFandtK25zbnFCa0ErRTlQK2Z4YWNoSHc3WXg5dHNvblQ4YnArMkdY?=
 =?utf-8?B?TVhPNGJHRndWRUpKbkNZTVhrM2w0djNOQlJkemQ0ek9JRzRlc3dYSDJqVjB5?=
 =?utf-8?B?RmtaMUswdzA0bkNLeW5kd3BFdWdyTHdPemlQZm9veHdQU2tOaS9jNlBKb1RG?=
 =?utf-8?B?SkRBSjJzbzF0a1NjNXYzSWc1YS9VRzBNMGoxV2JpZi8vTTd6VWNqZDJYaUdF?=
 =?utf-8?B?ZmFEQmRiZ0VYY3VITloycDJtTHltTWlBVTNxaUZmRkxqV2NJMUxxbE1LSGI3?=
 =?utf-8?B?T3ZKWDRrNStZU0ZrM3ZEb1NLVTJSTHZVd292cS90Q3FUUWdjMzA1YncwSms0?=
 =?utf-8?B?dlFqVHQyOHVPWmNmK1ZsL1NMTmNuRlpFSUZpWWk2QnFhak1XSlpSbjhkd2k4?=
 =?utf-8?B?RktzRXZDRWtjMUdnS05mTFNxZThmck9UZFZMTDdXa05lZjNMdWszN2dnbFZK?=
 =?utf-8?B?b3V1UmIvcGE2cVVESjlYSmJnNTRrblkyL2dyZzZnc2dNejJ1di9GSmJIb3ZC?=
 =?utf-8?B?ZU9wWHR0MUxzNnlVcC9iRVJWcCt5MVZDdFRpQm0xL0VOY2NwUHdPdmZ4aUxw?=
 =?utf-8?B?aTF1UHhmbzhJSVZmM2xHTGZhd3AyZkNHRmE0SmZHZzU3dmVXU1g0U0VGWkMr?=
 =?utf-8?B?OEJ1eFB5ODk2ZkVmYk5teUNYRmhUZ3lWVWovNzZsWDNMUlV0dFAyZz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 94f0926c-2a82-47d3-249f-08de6f969826
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2026 09:09:33.0632 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FztwQI8oZ/DCthGWyEtNRBbwrTJ/xzwG8q2o95Pm1hHqTJLJ1grzn4H/il7N6Ivwt0NMVlPjQffUmZ/auA7CmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV4PR11MB9468
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 1CC0715D37C
X-Rspamd-Action: no action

On 19-02-2026 14:22, Imre Deak wrote:
> On Thu, Feb 19, 2026 at 02:02:19PM +0530, Arun R Murthy wrote:
>> Before reading the dpcd caps for eDP wake the sink device and for DP
>> after reading the lttpr caps and before reading the dpcd caps wake up
>> the sink device.
>>
>> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c       | 28 +++++++++++++++++++
>>   drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
>>   .../drm/i915/display/intel_dp_link_training.c |  3 ++
>>   3 files changed, 32 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 454e6144ee4e..4d86826dba1b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -4705,6 +4705,32 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>>   	intel_edp_set_data_override_rates(intel_dp);
>>   }
>>   
>> +void intel_dp_wake_sink(struct intel_dp *intel_dp)
>> +{
>> +	u8 value = 0;
>> +	int ret = 0, try = 0;
>> +
>> +	intel_dp_dpcd_set_probe(intel_dp, false);
>> +
>> +	/*
>> +	 * Wake the sink device
>> +	 * Spec section 2.3.1.2 if AUX CH is powered down by writing 0x02 to
>> +	 * DP_SET_POWER dpcd reg, 1ms time would be required to wake it up
>> +	 */
>> +	while (try < 10 && ret < 0) {
>> +		ret = drm_dp_dpcd_readb(&intel_dp->aux, DP_SET_POWER, &value);
>> +		if (value)
>> +			break;
>> +		fsleep(1000);
>> +		try++;
>> +	}
>> +	/* After setting to D0 need a min of 1ms to wake(Spec sec 2.3.1.2) */
>> +	drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, DP_SET_POWER_D0);
>> +	fsleep(1000);
>> +
>> +	intel_dp_dpcd_set_probe(intel_dp, true);
>> +}
>> +
>>   static bool
>>   intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
>>   {
>> @@ -4713,6 +4739,8 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
>>   	/* this function is meant to be called only once */
>>   	drm_WARN_ON(display->drm, intel_dp->dpcd[DP_DPCD_REV] != 0);
>>   
>> +	intel_dp_wake_sink(intel_dp);
>> +
>>   	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0)
>>   		return false;
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>> index b0bbd5981f57..3f16077c0cc7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -232,6 +232,7 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
>>   bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>>   				     int hdisplay,
>>   				     int num_joined_pipes);
>> +void intel_dp_wake_sink(struct intel_dp *intel_dp);
>>   
>>   #define for_each_joiner_candidate(__connector, __mode, __num_joined_pipes) \
>>   	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> index 54c585c59b90..cbb712ea9f60 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> @@ -270,6 +270,9 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
>>   		lttpr_count = intel_dp_init_lttpr(intel_dp, dpcd);
>>   	}
>>   
>> +	/* After reading LTTPR wake up the sink before reading DPRX caps */
>> +	intel_dp_wake_sink(intel_dp);
> Not sure if this is correct or needed. The D0 state you're waking up the
> device into is a requirement for the main lanes, not for the AUX / DPCD
> register accesses as this change implies.
Without this change when there is a AUX transaction failure, 
irrespective of increasing the retry to even 1000 times failure still 
exists.
Which means that sink is an unknown/sleep state and due to which there 
is no ACK.
> Setting D0 here will also
> leave the sink in D0 even if the output - i.e. what would require the
> the main lane to be functional - is left disabled, thus wasting power.

After setting to D0 we can again set to D3/D3_AUX_ON which helps in 
keeping AUX active.

Thanks and Regards,
Arun R Murthy
--------------------

>> +
>>   	/*
>>   	 * The DPTX shall read the DPRX caps after LTTPR detection, so re-read
>>   	 * it here.
>> -- 
>> 2.25.1
>>
