Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBD4BC058A
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 08:34:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 352DC10E56D;
	Tue,  7 Oct 2025 06:34:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ajwmP8e6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85BDA10E56A;
 Tue,  7 Oct 2025 06:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759818845; x=1791354845;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xS6HJ8zXIMNsYQzZDYyzCuXQc8GJJP8MhoYU9NsB/ew=;
 b=ajwmP8e6szuMh/3qa7ZAY6vix8H1xQj4f+eESGGll/l/5mzEibNO0N+3
 EPett7/obESKooP8nvo5AL/IJfElFrAe34HYUF1Z4jHMnXpCM/hPpX7XQ
 bra+Q09u/4ldUF4RTu35ZAp/Vyh7+fxse+mOBp2EHsI5Q9ZCZq9/slH/Q
 GToj7TpNZGYWp3Qhut+TXUJ3ti++djlZTcafs6T76GpyCWP062OGgb4Au
 d/2nH/sOi+zijcJPMzR2GamZUZvpoJ5tBPmGOqA9yMPfV8DHTVZJXccz3
 qlCNdsB191Z4OzkHY1x9qaiQnvpqOudEuR3+tNNEilO6u5jv2MGW7xYlZ w==;
X-CSE-ConnectionGUID: +DtvpDrMSFS2vpFi+iBp/A==
X-CSE-MsgGUID: 1AqZxx8vRNSoqol/jVgAcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="49551195"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="49551195"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 23:33:58 -0700
X-CSE-ConnectionGUID: lVhWyWA3SUGm2p3Z7I5BOw==
X-CSE-MsgGUID: tHcs2YRbRhqMPkS3DT9hXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="179656466"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 23:33:58 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 6 Oct 2025 23:33:57 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 6 Oct 2025 23:33:57 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.61) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 6 Oct 2025 23:33:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TqbgrYk4nts/5tTgZebiflFqJ7SoruIyIfjP4ea2GUnlx2b+3KY6d2DWqHYANBAO/aTgHpvqxS9ZuL51mL24VIa1tjYHn3nJU6VI4rZSE0x4FvNijdxokfdha3Gnekm1UpxL0r79DyU7D/+2n/u1MhkDIyrZWe49SNhW1NnwfPIJ6COyzNkb0f7+BDA+qEtclKhENBbbzIIWy1GyI/0fSNrW2fDfyfGjkXjwGD9a7aHuhenDUE3t8hF3YrH4ttlo5YNJEZ71fNybdN8h9TfY+GCz5bMv/qZ2m3XTqRG8Ugza639nsyMaxuQiNr2npp2eIU84tlP+7miXtUZUGxVsBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ti+A1CPbbMWWtDR7B3THGRAukpHlz+FVniIGD5BIpwg=;
 b=VUpK0Y39REmVg/3qTHY0fHZ9EK+a6jSaOSPUQYveQIUhtJ0DVJG5NfFL+PrKNqxWTsFvvgGEE11BBeVYDAsecHKYLUysDp1JjoVMBHl5qxzQUSYwDX/2WeG+7KPvgnkYLeMdWQ2n/eSckFxzuKythwk0pj14vQ0Lv5Y6BCdUGeo0Enj5806UClwVbJ1xe+54f/30xb69OzACASJ1PJwERXt7Uh4ZmdY+RXffOhgXoP5h5hup1XB29choV69PEbDfCgNCR7JQDjaoW8aZcZbIUDYr7MBPYioYFVVCSUcycH82m+/iAU1vnL0J+YKhMYSbArsOm7+SmIcY8xx+WDdY9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV8PR11MB8678.namprd11.prod.outlook.com (2603:10b6:408:20b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Tue, 7 Oct
 2025 06:33:55 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9160.015; Tue, 7 Oct 2025
 06:33:55 +0000
Message-ID: <bb6e11f6-d270-4a20-9bc6-8c1964b95315@intel.com>
Date: Tue, 7 Oct 2025 12:03:47 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/16] Optimize vrr.guardband and fix LRR
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20251006042852.263249-1-ankit.k.nautiyal@intel.com>
 <aORHvhi6o729-bQc@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aORHvhi6o729-bQc@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0013.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV8PR11MB8678:EE_
X-MS-Office365-Filtering-Correlation-Id: 145a2130-a183-4582-e1dc-08de056b7c62
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZUJEMmlEdW14N0lzdlpWK01SNzBMdm1EQXQ0bmk0UXU0NC83cmZ4QmNabGJW?=
 =?utf-8?B?NUNURjJDMXNidnlvN1lwU3pSakczUk5uSm9KZUp3MmVVVnlXRE5VK1lwaDFZ?=
 =?utf-8?B?N2lKbXZhSU5QanByQTJsK1BGaUYyR25TSnF3dkhBTWlaaGZXNllyWmpyTWNO?=
 =?utf-8?B?VVZvM0xyOC90TG8rZjNsN2M1RTlCZHB5K3o2QmdjL3ZBUldXalBvbkdTZDFU?=
 =?utf-8?B?Z2lGSDhqdVNCaGdncWhXZWVSUWZ5TTJWREdiQVA0ZWxERFJ0MWtnWHlHaGlz?=
 =?utf-8?B?NHRXcjZaM2ZETGpRc3h3UHBwRFNKcjdlNzFXY3lSSDFyYWI5eVlVKzRCa1Az?=
 =?utf-8?B?ckxMbVRRRFl6b1R2MXFwYmJXTksrckZMVG8xc3FnbXdKSjk4VUw0YVVVWkZ2?=
 =?utf-8?B?OENkWkM5VS94MXh3N2dRdXo4WThqcjJEQlNUNWphcjVYQXlWMEpreDR2SmZX?=
 =?utf-8?B?NmU0UnczMUh3WHRuaExPNG5NbUZiNk4rbkpsVTFVMGxmRWd4TkROdERCcTFz?=
 =?utf-8?B?UWNjeXFvbUFxMVpJUWJ1SHB2RVRmUGhDbzlhN054eTJoL0JxU0pEaDNxcGhH?=
 =?utf-8?B?ZUc3Y2k3U3hBRWlvT0x3MndURCsrejhYOStKR05MUWV6dzk3RC93MVdrcURO?=
 =?utf-8?B?WGQ1NEcrUkIvNS9QYWhFWkJrT0grUnBsdXdDSmZOTmdpNDRoZGF2R1dvb0g5?=
 =?utf-8?B?TjhOaTYxUnBtMjFvUnIxT0IxR2FYU0lwQnZhYkJ2ZFkwVUhhc0pMdnlvWVMy?=
 =?utf-8?B?R0ZxTHhZakFucitpR2FjVTMzMi9kT2ZTQjBCMnAwUDBGbUNEeHVic3lUK2g1?=
 =?utf-8?B?VktwZU1DRkxQaGlJN3FBMm4veEF5SzNBNmRBQU1EeVp0TjhyNDBPUkNyd2dr?=
 =?utf-8?B?NnlDTWFNc2dtRWF4M3o5d2hpNjFoay9IOCtsWTB2WXFmbGJRaTd2a2ZLOGhB?=
 =?utf-8?B?UVkxd2xPQU9reHFvK2tMYU1YVm1Fc3piVWE1OXhJRDlDV0ZMSnlMQW9PVC9V?=
 =?utf-8?B?Z0xQekRLRFZRNzhGYUhSM2FLSU5BVEVKQXFWMzM3cGFHdDFjSndRN1NEWWpY?=
 =?utf-8?B?a2JlcEI3Y3dxeGJzU0thZVVhUmw2bGhybUllcXNmRlhCa2diVmtRQWpERVpF?=
 =?utf-8?B?U3AzZ2VBYTVycDduVGNvUWxlWmFEeVhwNk1QTjQweWFFTXR3dnFNYUdEb3kr?=
 =?utf-8?B?RGg1eGdPRW5lUmxYbVN5amFISlFjV05QMlk1aUVzejhSMW1zNml4d05rQTBQ?=
 =?utf-8?B?REliUjNNd0NkSDhWM1JhU1A4dXJRd0V6dGRJZkdlem1hUHpvY29VSmtWbUk3?=
 =?utf-8?B?SEVMSVE1YzE3Z3lVK2d3L1kyNnNhYTFqR0J3V3JFbmdZOWRHZUNtSG1rVERz?=
 =?utf-8?B?bE55R3lTdlhNb2RqYkd2Q1JKdkMvbFlsdTVFOXFjZWZXRzVjbVpYWFJYa0d2?=
 =?utf-8?B?Q2xMaXFTMThQWk1helNhblRzZjZUQzBBQVdKd1QwOXhtbkd3YzJUaG82cXNq?=
 =?utf-8?B?K0RsQ1Ztc284OFI0MHhreFVaK1NyUG9idjJBbWxkZHlCWWtwV1lCVEdlOHQ2?=
 =?utf-8?B?WnZWWVZWaGVKZmRCQ09jQ3lhbWdkNjFaR2plMHVNQkNYMk1RZmxHQzNPSWs4?=
 =?utf-8?B?VkhXZFlMTXdvUzQ2czhiM3ZLMk9KNFhra0RhaUxiSVhSMzV4dEdWSmZQaUM3?=
 =?utf-8?B?a3VoaXhCSFR1aG90dHJFR2pweE4wckYxcTJ0SVBhS1o3WlJ3VW1oeWpNT2w0?=
 =?utf-8?B?R25QWmJVRE01bythUHFUVUdZRnNZcG1FR1NJOHAwOVhZMTd1WlRVMWU5WmYz?=
 =?utf-8?B?ZUo0NjJIV1QwSXRzeHNwOGp2YUwvcDJMYnVZcVk1UUhJb1RRR1kvS2h3WVJH?=
 =?utf-8?Q?N70oo96vUHYqk?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ckF4b1lqNUJlU0tlRkxZazQzdUQ3UzR0WXBubEFpSTdjNnRYRXRVbU1US0FR?=
 =?utf-8?B?UFU5Z05DMFFGSkUrZUwzWjBzeWE3eEdJUXJITFJnblY2bFdYclFOdElTQW5v?=
 =?utf-8?B?bG55M3ZiY05QT21BT3pHbjMyZ2ZjRzhJY2ZINFpkUGtRMC84bjd1QVlRbXdP?=
 =?utf-8?B?cm9VbHhhT2RseG1LaVJ6blRhaDdLd0t0RkVvRDVEc2dtalo2R2NaMmNIOWxI?=
 =?utf-8?B?S3J3MStyV2xZdUNPQlFyNEJUL3RNNzhEOVlySzVGeEdFcHJGOGFsM2lka0Rs?=
 =?utf-8?B?WmNkRUc0WVZFd1VMVVVUelpHbFlGWnZwYnMwa1YyckgzRVdjbExVWjV2aTNK?=
 =?utf-8?B?ZTRROEdRK3htOGQ5OVNsbW42KzFjNEoxTVh5QVMwTnNEZFJtWENXVWNGTkxk?=
 =?utf-8?B?TWtHRHpSYXZ6SGxLMzRLT1ZpdE4wYzYzSFRSLzlUZjVWNG9rRjVBLzlTdEhm?=
 =?utf-8?B?eStWMG9ndjJqVUZuNHJtR09ML3QvZzRNWW9iTlRaTGxPVVVTdjVNVjhuK1FZ?=
 =?utf-8?B?dHVvTE1MK09Ec01WMDl4VTJsd1UxazFtYUdaNmVKS1Flb1FUWmRjMzdwWW1U?=
 =?utf-8?B?c1piZDN2a1ZEOXA3eE1GWW9xUnAzOFV2dThxY0ViOWRqSFJtRjB1MC9QZ0Rq?=
 =?utf-8?B?bmVKQlFYQ1MwSU0yN2dBK00vNE02S0YzbTVXK2xSdGF5RGtNWFMveW5wV25p?=
 =?utf-8?B?aHpUejRwcHhQbWJER3REeTdPQ04zU0dFUU1tVGh5YisrdDhtblVGNkQrYkxQ?=
 =?utf-8?B?cHNlZU83cTBYSmc1VS9Rdk9Xcm1XYTYvZTVOQXo4bDloZXErQzU0WTcyd3Az?=
 =?utf-8?B?TjFDbnlLMUwrRlBBeDViN1AvaWlidzErcy92T01EVjVlaitja2VQTmI3cjdR?=
 =?utf-8?B?SDdSUitTdnJ1YUJOUjFJNTltTFNEcVRZV1dCRTQySjFudU8rRkJuWkREQVhz?=
 =?utf-8?B?VFUrNUswc1U3WkdwTDVHZHhDbU44WHdXT0Rwbmt0emdnd1p5QkpSeHFYa2da?=
 =?utf-8?B?UzVWN0ZpaGhPVkk1Zk5lVmJnQzg1K3R6WEFHQkJRM2Jmb0NycWxSbmZ6ZzJ2?=
 =?utf-8?B?eDZLajVxcUhaZUFUSExsWFUxWGgxMFgzNDluSXRNTUFLWjJOZzAvcW1vbUVN?=
 =?utf-8?B?Y3JqWHFtZUUvMy9QQkMydWR5SHpEWXZSeTZNRng1SWtxckdOb1loS3hmTnhy?=
 =?utf-8?B?RlMxQWlwbDFseEZtUEVNdFBLRXNhRlRoTFBvUUFNUlhuWWhvcWJyS001MG8z?=
 =?utf-8?B?ZUlhclozT2tDc3M5VHdFRS9XRmIwQTM0a2QvOUd3d25jQjlvQVlWOVFCSU5q?=
 =?utf-8?B?aHIybDE1WWZYSy95aXFwc3N4em9sNElwNzZkdmlReVdQTW5MWklZbXNZUmp2?=
 =?utf-8?B?ZjZONFhRUEJJUmFaOXZkaHRiOEFGUEpreHkvdmRkMWpmbmhzZStRS3JNQ1Rq?=
 =?utf-8?B?bFJNSDlEM0ZvSWZmYlFQSDZCbWNyb2hKK2ZKSUQ0TWVlSUZkUGJmeUFzN2xV?=
 =?utf-8?B?RjJHajhkYjBETFJZMWl0OHMyZnNIVlVsZVVZaDA3MkRUV1pUbkw5RHozdWR6?=
 =?utf-8?B?ZUZZNitpRE1GZjFFaDVEa29OeW9VdklueXNWNDN1Y0VqamJWRGxkS1pHUlh2?=
 =?utf-8?B?dWJxbW8zMFdOTGFxRDVnNjl5SDFDVkZ5RUp1Qmhyck1sTTFQbUhMSDJ2Znl4?=
 =?utf-8?B?Uk1FRGtLNWxaa0h0NGNaSURvRTJyQXdCMHZRaTFYUDZLQ01HS2JtRUI1eC94?=
 =?utf-8?B?eUV1Y2RjMlFUREJGS3E5TXBIZnpWaUFPZXRUckhGbHNxRUZXNXpRbzgyZE9v?=
 =?utf-8?B?aUlmOUNRTDdKQytRTzNTT09rdDdGV0lHUzBHa1c5cTYyeCsxQ2lpUXRtYUJ4?=
 =?utf-8?B?T3NqMTFxT0tyQ3oxb2ZtaWIxY2xyYitxa0NodTVXZDJ4R05HdDVrTW43YkNm?=
 =?utf-8?B?ZFVEay8vUGpucWJjUGNGcmwrQTk1TjhDZ05KbDBSYS8yb3UyZ1kzbnJRZmZw?=
 =?utf-8?B?TDR4WHB4U0ZpL29XK3dVVkttdDQyeGJsZXlVN1pINHNMWUVNZEdjcHpyYjJD?=
 =?utf-8?B?MXNZM1hNWVlLUFFjVVh2Wm1wZUhhRlozcmVpdEZZVnFxS1pveUpuekhqTkdo?=
 =?utf-8?B?ei9Yc1hLU0ttcFJrZ0pROVYway81VStqYkcrTjQyMkhhVHFVM3JyQmp6UEox?=
 =?utf-8?B?cGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 145a2130-a183-4582-e1dc-08de056b7c62
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2025 06:33:55.0879 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9a+XdBsJGzorYFRUFf2BaKMzUbToYU6g/h75P+cbs+OlnL9h146QFBlDOFZnpEo4Nq7I11c3xpv2+M/MSScKB0yELkAON1no7rMrg3aGqws=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8678
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


On 10/7/2025 4:20 AM, Ville Syrjälä wrote:
> On Mon, Oct 06, 2025 at 09:58:36AM +0530, Ankit Nautiyal wrote:
>
> I'd like to see a separate series with just the patches to fix
> the crtc_vblank_start stuff, which I think is roughly these:
>
>>    drm/i915/vrr: Use crtc_vsync_start/end for computing  vrr.vsync_start/end
>>    drm/i915/vrr: s/intel_vrr_compute_config_late/intel_vrr_compute_guardband
>>    drm/i915/vblank: Add helper to get correct vblank length
>>    drm/i915/vrr: Recompute vblank_start for platforms with always-on VRR TG
>>    drm/i915/display: Add vblank_start adjustment logic for always-on VRR TG
> (+ whatever is needed to sort out the issues I outlined in the
>   indiviual replies)
>
> That is really just fixing existing things, and has nothing to
> do with any of the prefill stuff/etc. in the rest of the series.


Alright I can send a separate series for this.


Then optimized guardband and pipeline fill thing can wait.


For fixing LRR on PTL, is there any other stop gap?

Currently guardband depends on vmin vtotal and for LRR vtotal gets 
changed. Is it possible to get a constant value?


Regards,

Ankit

>
> The prefill stuff btw seems to be completely borked in current
> upstream code even; it computes things based on a completely stale
> cdclk frequency (the new frequency will be computed much later).
>
> I *think* I can reorder things sufficiently to fix that, but I really
> must get https://patchwork.freedesktop.org/series/154921/ landed
> first...
>
