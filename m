Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3258BCC2BEC
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 13:31:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A87110E520;
	Tue, 16 Dec 2025 12:31:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EA2WE8G6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA6CA10E520;
 Tue, 16 Dec 2025 12:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765888271; x=1797424271;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Aq/HUll/HVC44+epg9c8gm3HuaYiW56R2t7OxUzgZZw=;
 b=EA2WE8G6wvGEThorULzFqRApt/lV/+H3muWyKDpOjDg5APgDiBYCVrPk
 I0rNOnQ63g6EhGuivfQV8h4DuTizNiID449A8guFE3vDLalOSmeb09wgo
 z3NhFptpHCbo2CbMxlMr4jdNwKACTsXVzN9eqYm9yNj43wZ76v6F+pvRd
 Tjl3ukTDnpaIXqQho2myB+kNJzmlTyEAl62SbrrjBXm60s37CYivAuY6j
 qDstx892oB7uMFIdfQh3ClGGM6St/gesj/3s2JUYV1jShLGAQJUY0YRqU
 dpY7N6C1Cv2Z4lwSrco1mUHQOdHG8UMsv9R+B35Y00dGOptk1+IDKcmo0 w==;
X-CSE-ConnectionGUID: A6vBjMIpTu+XZ5vkdED1Pw==
X-CSE-MsgGUID: RjwDWagESNiU5ll3NHCqbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="71656672"
X-IronPort-AV: E=Sophos;i="6.21,153,1763452800"; d="scan'208";a="71656672"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 04:31:10 -0800
X-CSE-ConnectionGUID: 86D+kdY+TVSnmeiVYiqRIA==
X-CSE-MsgGUID: 5uyaRso3TfGYX2swmYLWhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,153,1763452800"; d="scan'208";a="197628793"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 04:31:10 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 04:31:09 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 16 Dec 2025 04:31:09 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.57) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 04:31:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ncH3edH2f/UqY1Ml/gEUArTHvNWG7UgTFKBWs3Xb31kQbPDTTnMN0fGkqWvkhPyYJUh3KfE1MwpBI/1IqKCOVfUuzf/pfHQKPR06N5W6edxy5L7aVAHxoKbXAIbGrrh8C0tjwDQxT/nIkc5R+C/xqN+T02HWdU/MtmBilw3Y+/KwcRCB3oft9839ebCIh0S4Wv2VOgI+KyKTApBvnJgiF6ro6trxT9iGHna7f73jvsWTH5/jLDaThXiiavN/qm7DE/ZFhCwLmUC70Q5l767juKBNAQu7QBuiTENx/lirIf/PPXo2WUppxvS5fpMduEQG9cLX/KU6/H21ys2J0aDQLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jh6ZGZZKC85CIuqDM/eXV5YOBmXl7cH5Tki8AvAi6fQ=;
 b=HEkUun1kBC3XQR9/KBZCJIam62Kd8c2DgEW3CdjlMR+9LxrWvS7itnarGKnwz21OHiv1RwZ02Oz/d16Pc39HGKIDs0Mp61+UgeFM8xX1DaftFjEBa9SaYOSvfkbc8jwuoKSHinCE8dYiz2WfjJMasDlDJCOc1D/lWRyzMLEbOGAndTD1rEcbOBn2V6OyThLXgsTo9laBkG7Dz8Vn75ZDrjjAkYI4zKjA1q5cjSO7x/m3YrxFjEqu62+czOdaE2bfx3YCOQj/HkLXTotqIdCv5/XqzmmRg2jqRQudQTh1NRn7Pp7dYdtw7cPyahquZPoTqhEZNeXDQJgg+o7y0PNVCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA3PR11MB9399.namprd11.prod.outlook.com (2603:10b6:208:577::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Tue, 16 Dec
 2025 12:31:07 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9434.001; Tue, 16 Dec 2025
 12:31:07 +0000
Message-ID: <8d31226f-a94d-49f7-8ee5-aa34ea37f19c@intel.com>
Date: Tue, 16 Dec 2025 18:00:59 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 17/17] drm/i915/vrr: Enable DC Balance
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>,
 <uma.shankar@intel.com>, <jani.nikula@intel.com>
References: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251202073659.926838-18-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251202073659.926838-18-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0034.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:178::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA3PR11MB9399:EE_
X-MS-Office365-Filtering-Correlation-Id: 26fd9a46-fb67-4610-7368-08de3c9efc57
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c0xuWjA3UzRxdTJYNFdXUmI2WUZCUUsrdkNjRmxNaUlwZmgvbU5GRDZmYU4r?=
 =?utf-8?B?b0VtSXVvL2JpdWl0K0FvM2l5TWM5ZFg2dGtEWFU3UXAwbnZ5b1JMOVRVQVly?=
 =?utf-8?B?a1lGbGc1Nk5wZ3NlTWk4VXppcGxmemNSaksyWHo4RXdQTWRucHZPOThxNDRm?=
 =?utf-8?B?SUplM0FFT3N6YUI3Mk9zTzBIU0d6QVBCUVJ3LzhlUGFzRW8zcEFiWXZyNnZN?=
 =?utf-8?B?dXBZOEd2VXlxNStiOHRDK0VHeDRyS1d3S0JuRzlvUUdFRDVYZEVCazdiODcw?=
 =?utf-8?B?QjZmVUdNdytXdWkvRjFQNnliSU54cHdMd3JJQUZTRkFXZkh2Q3lGODlZV245?=
 =?utf-8?B?WWI4N0tnR1lKdVB0OFFQdWJmNEJJYy9DQ1ZFSURtcGJQbytzU2NReG5jaXhH?=
 =?utf-8?B?MWorelZPb1VYdHJjZlJwaEVyWGtVRkdwVWRyS3NFYWo4bWEvTzNScTdYUVZL?=
 =?utf-8?B?akxZVnNMd0tFd0x4QU9MYkFSSjNubE80OVpFOUJ4R0t3WmtRZm1RN3p1WUZK?=
 =?utf-8?B?emdjbDB4NURveGtTV3dmSVYvSVVKbmYzM1ZkVldwWmdZa3k2RmVPR0h6M2pj?=
 =?utf-8?B?OTR6OG92Ym1JMTdvbHVxRkdkZmtGSWZ0aXJoOGFxMTRZbGZEc3FiZlBUZEh6?=
 =?utf-8?B?SFI3K1NwMjZNTFJ4Q2kxckhKQ21qK0JYT1ZobW1CaWlaVVRrL25aT2VHcDZG?=
 =?utf-8?B?VFI2WWRvMVQyN2ZVMXdOZWRpYWpXVTEyY1JBYStQVHU2eGh4eEFEbkxVSG1Q?=
 =?utf-8?B?a2pmNzhtZ1BNRDc4ZjNkbWRMY1IzQms0a3JhaGRTL1JQMG9YQWNoMkJIS2dh?=
 =?utf-8?B?QWdzMDVFSnAybm1Cb0lESXNaOHdZVU04eHI5TVQyU21tWW5rMkg2cTVLT3R0?=
 =?utf-8?B?Qzk3Tko4UzN5VDU3NWMxbE5hWXltbGswZWVodWUvYVRycUpCUUg5d0NZUzlp?=
 =?utf-8?B?dGVDdkc5RzlvK04zaEM4VWxGZ1FWRXNnc1BWbEVFVCsxRlBRZnVHUjFKQkEy?=
 =?utf-8?B?OU5qdzdtR1Y4cXkvTkVrcmV0YmdwOXFoRkljRktEcEpPTzJneGR2cDk3VWd4?=
 =?utf-8?B?UzRmczlFNXBSRi9lNUk5WTVDTGt0THhqbXYxN1kwTm1VeHM3MlZuQzFnbVJh?=
 =?utf-8?B?VjhETHZad2x2NTFScEZYZHE1V2VwZDJxOWVsb21rTldGT0szQkpQd0o3R3Vw?=
 =?utf-8?B?SGZEV1B5dk84VXFrRFduUFo1UmI5ZkFaRXJmTHc5Z3BsN0duenJ5TEpQODVZ?=
 =?utf-8?B?SEp1c3FJZUM0THQ4c2lqZUNKQ1lQMjdRQy9IQWo1b1FaVGgybC8rME5ueVZY?=
 =?utf-8?B?Z2dRT01UZXpaOUZJR0p5RWl1QXlqS1lwRVl1U3BTMnR0K2EyUTZwc3N5Q0JC?=
 =?utf-8?B?ODRoU3hYcGpVc3BNWXVvd3U0MTExbWpDaFl5Tm1ycnA0RDYvQUxMcW9VcTBI?=
 =?utf-8?B?S2FyTmpZR3NkbGZsNUEzNEN3VTdUNlBCYWtObGx3R1YvZkRLWnZydVNkV1BV?=
 =?utf-8?B?L05SZmVKQXFxeG9RQ2hWdm1sR1dOb0FqdFA1KzFzZm9Xa3p5TVc1TmVRTEx6?=
 =?utf-8?B?WVRFb0pwbHBRcUxIZ0FJNWpHR2NlZXFkRWduelpXZ0RxdC9mUS9Xby9sYWw5?=
 =?utf-8?B?WDhreUNxa3VWOXJKRGpTZTBxWHgvUS9oZzdVb21jQVJZQmpBSnQ5SHJpdTlp?=
 =?utf-8?B?N2NTeUFWclN0eHl5L2Nlc0t6dk1qYjVtb0JsR0IyOGoxSzFCeStvbm8zd3J5?=
 =?utf-8?B?OWtlOU0zSlVwTEtsbktsNUFBZTl4R0tHeWJZY0hWblAzRU1ucnJ1WEl3UGFC?=
 =?utf-8?B?bWEvQzFvUjhTVW9xUlNtZmFER2ZxZmxOS1pYekd4ODgwYmw4K0Iva1JmMHU2?=
 =?utf-8?B?V3VQbGZjdnd4LzgydDQvUmNBYjdiMnYybXVKUGZ5dkJDOVE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WElybENnSHpjNTdkT1N0aUxXd0g4cEN3dlE4YzBVdFNiUk9qZ0MvY2UyL3pj?=
 =?utf-8?B?QnBRZXF5RVNXRUg2NFVQcDUwOHRaV1dQaFRQTGkwTWt3K2puaDdsZTFKOVhn?=
 =?utf-8?B?bkxXd3VEZU1STEdIcXZyWWhJeTgxdVR5SzZKZFFoMjJkb3ZjaDNqRmF3a3JZ?=
 =?utf-8?B?RG9WM0xHWHZOc2wrUjJ6ckZpN0V5NlhXY3ZEcnc4VVIxR2xPZXhjQThOcEdR?=
 =?utf-8?B?alJlOER3ODdDZXJVV2tpNStGYWozd09DR01rQUZWOERRZUFJZHZ4Z1BQY2dI?=
 =?utf-8?B?THJ2eFNVYWM2aURkMEtYV1hSaXFYUDR1Ly9ROTBFUnZudjlCc1I0aVlKSWNS?=
 =?utf-8?B?Nk9BUFBvZXRCOHBCUjl4bXhiQnBLU2RiSnQ3L1A4WGloOWNMQ0ZIRkRPa2do?=
 =?utf-8?B?K3BVaDlmbWRDRkJuSUZuSVNveUp0VWx4NUhHMER2SzBoL1k4U2piNlN3MWxP?=
 =?utf-8?B?emExVzhaMExOOGx3TE5hYkZ0ZEZBa3pZMU9uZTlxVFRJNVFWSEZmOHpsWnVt?=
 =?utf-8?B?SFk3S3NlM3hYNmpiTzlMSDZtTHFzNFZWSE5ZRjh4YXdnTHVvbm5VSFVXUHF2?=
 =?utf-8?B?OFp6ei9MaDRWQ1pObkZNQkd1cVJLSGVhSVJXRGFDSG9ranRZaHZQYzhOVVpl?=
 =?utf-8?B?UStqUnN2YXg0dzQwWVp2K2txMU51N01hTWRUbytHYWYwY0NaNG04VFBTcHdH?=
 =?utf-8?B?UExCamNJN2ZCWSs5Visrb0pGQ05CSXhuNkp4QkxmZE53Y2x5Y0J6bUE5eThT?=
 =?utf-8?B?b0QxNUROVVg0THRiOXB5RW90TDdFbVlFVEtMS0NLclNYYWFCMDB2d1lRMk1z?=
 =?utf-8?B?cHRUZ3BOa1dOWllBdkdqZGlicFpVWEtJdWkwaGkvZ05ybkc0QkwycVdqUUZJ?=
 =?utf-8?B?NDN2cEhwNG96bjllY3cxdUp3b3czdHMrNnVFWnkwWE9iM255SnM1U2RoRmtv?=
 =?utf-8?B?Nm5XV2hwZ3BGOFVDS0U0SVRxM3E2SW9tYnJsT0gySDRCUTNqWmJQM1hVOHll?=
 =?utf-8?B?NC9sWTh1VG1LeG44Q05uR3hubVFnVHdRcWxDejRxWTY1Q0dTWThBNldTZUhF?=
 =?utf-8?B?QklOUEl0WE9MR1h6bkd6WXdMWnJoOVJEVGxYYlptYUEvS1ZtT1V2S2xBQ3c3?=
 =?utf-8?B?aU9qcEFhb2ZoSlRoaDF1aWJNbUYxUitmQm80SjFSMkc0a2p4NXFKWGN1cUls?=
 =?utf-8?B?M3hkUU9oOGtHaC81dGJDU1dwUktxc2xVS3VsRTM1T3lna0paSm5McU9Pc2tv?=
 =?utf-8?B?THRlWmYza21VVjEvUmVETld6dWYzOE1zciszb08vTi9WSDVwanREdlZLeTRa?=
 =?utf-8?B?TE04L1M5MzhtNmMveEFIb1kxVkJmdGRNUFNudjZQclcrNmFUby9XVWVsK0M4?=
 =?utf-8?B?NG5ObU1ORC9ETnN2d1JGUjM5ZTgzVDhYTE5OL0wzdUFVZ2FxL3B1M1duUGdh?=
 =?utf-8?B?ejlIVjhNQnVPMmtEaU5ubzNES0dscDRwQitIbXlVcVBSdG1PeXo5R0s3Ynll?=
 =?utf-8?B?SXVFZy91b2sveGV1RWRiWkRZZjRLdk52U3oxNUMwWGtWK1Jna2x0d052eHQ1?=
 =?utf-8?B?VkloKzZicUFqb3M3ODVIcjFNcU0waUtQVk1ib3FDTTZCY1NIMkwrOE9vNHlu?=
 =?utf-8?B?V3RnNlpjL2krakh4bTIzVXQ1dlp3TUo5djV2MTQ3NVdrMVM1cE9qQm56bmtW?=
 =?utf-8?B?eFFvd2VlNFc5ZGFQb00xWXJYcnlWWHFMd2FOc2FJR2Rtalltb2ZKT2hxU0dN?=
 =?utf-8?B?NUlyOE1CV3lIb0UyUEp4YVA0eVlkZjN1ZnRNWUVPcHBkWGhpOUM3K1creWtt?=
 =?utf-8?B?eGdDYlQrNkpsS3lKNjdXWjlYUjRwTytBZXdlR3NlWlY3RjVielZtZFExNkhD?=
 =?utf-8?B?S2tJTE13cUVrMzNOUkM1YzhXMkgzNW0zTlloM3c1Z09FeEV0N282MUg5MkZu?=
 =?utf-8?B?dTJHQ0dJWWE4QXloM0lvVTRTVmJVU08zZnArR1ZNa2FuWVVsSk1QYllEdml4?=
 =?utf-8?B?WmR6RWhFb0N4YTlXNXJpRkV3Y1FBU0I0eTBXTlVwL09WNHJjem1WZWpGdFhJ?=
 =?utf-8?B?ZWxRU1RrZ0N4akFwK0VlaTIvUDRqZDlpc3NXS0ZHT2FQeFVXWEpJa2dZcUpK?=
 =?utf-8?B?YzFGTXRzUTZ5OXJmQ1puUFJ5WTJXRGNSK1A1Y0JDTmJCNEoyVGRvdEF1YWdZ?=
 =?utf-8?B?REE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 26fd9a46-fb67-4610-7368-08de3c9efc57
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2025 12:31:07.3418 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T/xCwvgsEIpYsPPQkkwal4JPGY9pE67q+ki4FrwQXpaOXJq//YASCiXtS6iICdNzdtsYYcapbmfyVjzX1+k+R+nmsjk/eQqrfe52Vjf0MqE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9399
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


On 12/2/2025 1:06 PM, Mitul Golani wrote:
> Enable DC Balance from vrr compute config and related hw flag.
> Also to add pipe restrictions along with this.
>
> --v2:
> - Use dc balance check instead of source restriction.
> --v3:
> - Club pipe restriction check with dc balance enablement. (Ankit)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 11 ++++++++++-
>   1 file changed, 10 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index ba8b3c664e70..db74744ddb31 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -399,6 +399,7 @@ intel_vrr_dc_balance_compute_config(struct intel_crtc_state *crtc_state)
>   	crtc_state->vrr.dc_balance.vblank_target =
>   		DIV_ROUND_UP((crtc_state->vrr.vmax - crtc_state->vrr.vmin) *
>   			     DCB_BLANK_TARGET, 100);
> +	crtc_state->vrr.dc_balance.enable = true;
>   }
>   
>   void
> @@ -789,6 +790,7 @@ intel_vrr_enable_dc_balancing(const struct intel_crtc_state *crtc_state)
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>   	enum pipe pipe = crtc->pipe;
> +	u32 vrr_ctl = intel_de_read(display, TRANS_VRR_CTL(display, cpu_transcoder));

As Uma pointed out, it would be better to use trans_vrr_ctl() here.


>   
>   	if (!crtc_state->vrr.dc_balance.enable)
>   		return;
> @@ -827,6 +829,9 @@ intel_vrr_enable_dc_balancing(const struct intel_crtc_state *crtc_state)
>   	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
>   		       ADAPTIVE_SYNC_COUNTER_EN);
>   	intel_pipedmc_dcb_enable(NULL, crtc);
> +
> +	vrr_ctl |= VRR_CTL_DCB_ADJ_ENABLE;
> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
>   }
>   
>   static void
> @@ -836,6 +841,7 @@ intel_vrr_disable_dc_balancing(const struct intel_crtc_state *old_crtc_state)
>   	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
>   	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
>   	enum pipe pipe = crtc->pipe;
> +	u32 vrr_ctl = intel_de_read(display, TRANS_VRR_CTL(display, cpu_transcoder));
>   
>   	if (!old_crtc_state->vrr.dc_balance.enable)
>   		return;
> @@ -858,6 +864,9 @@ intel_vrr_disable_dc_balancing(const struct intel_crtc_state *old_crtc_state)
>   	intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(cpu_transcoder), 0);
>   	intel_de_write(display, TRANS_VRR_DCB_VMAX(cpu_transcoder), 0);
>   	intel_de_write(display, TRANS_VRR_DCB_FLIPLINE(cpu_transcoder), 0);
> +
> +	vrr_ctl &= ~VRR_CTL_DCB_ADJ_ENABLE;
> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
>   }
>   
>   static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
> @@ -963,7 +972,7 @@ void intel_vrr_get_dc_balance_config(struct intel_crtc_state *crtc_state)
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>   	enum pipe pipe = crtc->pipe;
>   
> -	if (!HAS_VRR_DC_BALANCE(display))
> +	if (!intel_vrr_dc_balance_possible(crtc_state))
>   		return;
This change looks out of place.
Hmm .. In Patch#5, intel_vrr_get_dc_balance_config() is added, but at 
that point intel_vrr_dc_balance_possible() is not yet defined.
I think the above update should either:

Move to Patch#7 (where the helper is introduced), or
Introduce the helper in a separate patch placed right after Patch#7 but 
before the enablement patch.

PS:
My earlier suggestion in [1] was to introduce the helper sooner to avoid 
having it as the last patch.
This was to make sure we have pipe restriction in place before the 
enablement logic lands, to avoid any risk enabling DC balancing on 
unsupported pipes.
Given the current series structure, moving this change to Patch#7 or 
introducing a separate patch right after Patch#7 (before enablement) 
seems a better idea.

[1] https://patchwork.freedesktop.org/patch/690789/?series=158156&rev=1


Regards,
Ankit
>   
>   	reg_val = intel_de_read(display, PIPEDMC_DCB_VMIN(pipe));
