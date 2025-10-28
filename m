Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D23C13692
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Oct 2025 08:58:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DB5010E5A2;
	Tue, 28 Oct 2025 07:58:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NS158UR1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F402F10E5A2;
 Tue, 28 Oct 2025 07:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761638324; x=1793174324;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+hui9wAuEpUmN/sH9r+wpp8OGVgINCRfBQ7ifKdfwjw=;
 b=NS158UR1BITHFLBTWtVcacoQKz12bCTkbkaueZHbHpKDl2Ysnu57Gv8R
 PA2ErK3ZVDWzzJpVdEpjHUXtd06iErD3/xeC2qmqlvOsu4iO5PZBjAoBp
 dWzqySIy0gJMnHdDsxs5NQ1EteBOuaHJ2LglX5eorVCeGLLg3YcImej5f
 shcHqS7AIqzQQQbKzOmwRQMlhxW3f1NiCJdHTWRwUmuMhF3MujsHSL1+S
 fbH7EfbX8zslvOTkOctKw6O/Nym8R4xTS4clIuUJR8QoZN+V5Gcbe/kxv
 CuZNlebLa3DNFlpb1YHeEaiz7dUl4ut5DN0R1GMCQkajkYMPOUk4wVgyI w==;
X-CSE-ConnectionGUID: 8cQ7A/TqQTeEid/nJXRcfA==
X-CSE-MsgGUID: kRjmyjAmRcabv9RmXc8kUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63433496"
X-IronPort-AV: E=Sophos;i="6.19,260,1754982000"; d="scan'208";a="63433496"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 00:58:43 -0700
X-CSE-ConnectionGUID: fc2JZQgXSBGCJ272N+KTiQ==
X-CSE-MsgGUID: HCOicmzAS0ibX/SntSGIEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,260,1754982000"; d="scan'208";a="215933716"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 00:58:41 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 28 Oct 2025 00:58:39 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 28 Oct 2025 00:58:39 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.21) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 28 Oct 2025 00:58:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IRjXHd+bqSKwBh+4qXgMjSLjaEYH12WN82AaMEfkgU3qg9v5Fc2vSJySnOL/ayytMGwO7wQi39hKzzrjeQpxRR8RdxZsJhRoes6lhe/nwQvsXcxvkAtKeX1nm6rLSPzu/skVFwUCnRev0SIVPeDaPg6a+pcNQIRD0C7H6+I/TCrKf6COW6lHkIlZNUQohAT45onH4B9p04o/r2J3vdi4qFIZNrUENnlb5myuoAtBhsICA8tzuyUsRe0C2gWTXkQh2WYabq/O1aGPqnkUjaZWUXERoJKJ91+wQxWT2xo1+Tg6gEqGaxRomiJPBBdGYEHzUq0IIyt2ViQYSpS1nX4R6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GuaIGfdWOT2i7EnG5THyS7nWQFFa/ss0r1pLvTGXbsc=;
 b=QMCMl9w0m6ReMcZlpa1vd9S870+Ekltx77PDjsW8Bwb7+RCPtP/GImCBikZyuSC09+6EDDVR2uoOPm0XY/c8uBg89zhNKd8wk3pEK3FnUj17Pyqo4h14hxFy6AlRAqM2Ik+3yRlFAbsuuWfsrkYv52CacLlKcgoNr5dNHvESG69RvZI8Phd0ubW0GSCYyv0RBFyTLI7Y5DrGyawOiwcuqNNmAjK9tdr8Fb9xvP5B1Vg7lq6BKVWv5nCbmjl/ejMGfweqeWP+uxs+XWFONIf5RTw+n2L3Gzyt9UbytETOK6E+EwKxrFQbvKMRdJXOqNcDPaW6maORkwYT+JcVpNJhbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by MN6PR11MB8147.namprd11.prod.outlook.com (2603:10b6:208:46f::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.19; Tue, 28 Oct
 2025 07:58:31 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%6]) with mapi id 15.20.9253.017; Tue, 28 Oct 2025
 07:58:31 +0000
Message-ID: <c5426a19-831c-4ec8-9045-6dccc4716d6a@intel.com>
Date: Tue, 28 Oct 2025 13:28:24 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 24/26] drm/i915/display: Aux Enable and Display
 powerwell timeouts
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251024100712.3776261-1-suraj.kandpal@intel.com>
 <20251024100712.3776261-25-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251024100712.3776261-25-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0151.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::21) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|MN6PR11MB8147:EE_
X-MS-Office365-Filtering-Correlation-Id: f058a2ff-e31c-4d7c-f6e4-08de15f7c952
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WlVyY3JFVFFKTkhYWktMSjFyNWY3akxwMkhkMit1bCt1R2F0bjB6RzNEYkVw?=
 =?utf-8?B?Y3FBOVZabTd1VzFkTFViTDZmbFNKenFoc213K0xNaE45Y2NVbWlqMktkQk1P?=
 =?utf-8?B?aDZIVDdTQys2Y242QWZsVkhDSjFFaWd2MzRLUk50MmxsSHY4aWRPMTFCRU9p?=
 =?utf-8?B?Zk50Wjl0dHJGakZhWm4xNUgzY2Yrc2dJOFpyYTk2VHYwOTl1Y3Q3a1BzMm9y?=
 =?utf-8?B?M0w5QkxBTDdpenJuY1RuWE5FVHdRTVJXdXBHQlcvRFB4SVhHek9xNnVYZlVl?=
 =?utf-8?B?c0Y3S01nbnBtZDlrQytlaGF5dHBZZ3AxUDUwaTVGSTd2bUJ6RmU0eER5RXRJ?=
 =?utf-8?B?enRsQmcxMUVySGRZYlczZ0ZoWVlVNFFBc1Bua3FIaFNUY20yaC8zWm9jUUZG?=
 =?utf-8?B?MCtBaU5MTXJvK2VIWTNoWkJoRWRCWXEzbkMrS0lKMCs5UkZhYUdmYjRvZ1ZY?=
 =?utf-8?B?cnZrWmhOWnFkUkJaRDFZRnBPNXdzcnJnL3Z0bXM3bVhPUGNRYStEZGVYNXc3?=
 =?utf-8?B?YkttZzBIWWxhT29zTGhnS3VRWjJSUmowWnBQQlk0N1h2bmVybW9ZVmdVSlF0?=
 =?utf-8?B?NlorR2F2ak5LSnVhTkxiYno5RnRyWGtsbW1iUmg4SjVqclgxTkczTVQ2T2tN?=
 =?utf-8?B?VVdBUU0zRkt0R0V0QzVJS2twUHhLRUUwVVJzeFRkREZBb1grWVp1YXBnMEcy?=
 =?utf-8?B?ZXNRNHJOeXAyWW5oZFZSOUJJTVR4SlM1cWlFRUljamUwNUd4cnQwaGJQRU1J?=
 =?utf-8?B?cjdDdHZIZytLQ1hxcVc3V3hOcHhiM0ZESUdocnN6Z1pHVTVKVURzWEdFd0VR?=
 =?utf-8?B?ZGpTMVpxNHlVbSttU3NhaERFNWM3Vm9qamFtTlJIS3JtUDdoVmp1SjIzRFF3?=
 =?utf-8?B?SDJjcEdqenc5VWF2MjhEamZTOXc5OEYvN05LWU14OU5HZWQ0Mm55dS9oSmpy?=
 =?utf-8?B?RlM4UHFqaThPT2t2cXcrOEpkK3RKT0FlTElydm1KNm91SXpuc2J1VFBjNzZG?=
 =?utf-8?B?K3d6MU9DRXEvekZtU2R4WTYwYTZHaU1zcy95SEFxZUZydzBMc1EwbFR2aEJX?=
 =?utf-8?B?M2hTWTdQdzdjV1ZxYk9JcHBMRk1NdXp2QjJiMGRYZlN1dW5nek9CM3h4RU0r?=
 =?utf-8?B?eXoxSE9KREZzQVNNMlhiWXBMRDZ1WnR1TUU4RElYUlRwU2dYMHNHMEhBVHlR?=
 =?utf-8?B?TThDQ3NtbkZuRGh4NDRxb3krNGtJWVlpdmZhS1llWTRCVi9QZmlxdCtCQlFU?=
 =?utf-8?B?V0o2OEo2bnVQSGFyVDZJNW40c2hsNkFzVjlUUmhFejBETmVKSFVjZU9ycGl5?=
 =?utf-8?B?SlJLcUl3K3BmaEtPUXR6VFQrdEZZQzMxMUQ4ZG16bmZ0ZDRqVmdzSXg5MHRp?=
 =?utf-8?B?enp2VVNzRU9nMElQOVFvRTkvTzErZTVGTHhlTUVvYWt0UWV4SDBmdzFYT3ZT?=
 =?utf-8?B?UllsRXRmVFl1M0ZjeCt6WDZnTTNEajMvUVFCOWZ4WlhNY1RSOXNScGlYaXN1?=
 =?utf-8?B?cUpKZmZ5bm1MM3BvUTZxQU1ONGlkV2E4TW9VclBlT3pUL2NjSFBHTGRXRG80?=
 =?utf-8?B?ME9QamR5eCtVZEFLQnlSeEdUUG1Ha0hHV1dMVEhHUFFSUU0rREN6cFdsYUZB?=
 =?utf-8?B?RDcvcC9ZUGZjYWx1eDRTVGFTanRkSnBCdDllY2t2QjZ4N0gxMmtkQXlmT296?=
 =?utf-8?B?SDA4VldXbk5GYkZkTEtQbzNsdDB4Wk1UdzFlb1RZV3FDZE1DNjRuMGFQMkVz?=
 =?utf-8?B?OUkzTEJmMVBZUU1EWHBOaDY0MnVyZ1lsakVHdm1FUXRuWWpXUzJiU1c1ZjV0?=
 =?utf-8?B?S2NFOEwwQUlpL2pkUTFMUitmZzFqYklHS21uM1UwNjYvY1VtZ1ZIMW4rV1Na?=
 =?utf-8?B?cjY0eG5aUXdXSkNrSis1MjB3VVBZRVdyc1ZYOHVxZm1JQ0pWMnM0NWV4TWFS?=
 =?utf-8?Q?V/bWGmmmC5WmvTXHfvIbxkGlekIvyDuo?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R0dEb1BhenN0dWgzUGRXVmErR2FSQmMzdW1DS201bFRFSmt4QWFwbUtSa1U5?=
 =?utf-8?B?RUY1MmxzaEp0dUxTa29RM3c2M3AzQzlESnhaZGdOUm9XeGJlRE1UclpySklo?=
 =?utf-8?B?b3dibVpmVFZIZ0JhV3NBQzhSc3JWdUlCNFpDbjhxMzFmcEJaVGgydnhyNkE4?=
 =?utf-8?B?NVYweUxHajhIbkZsRzJmaXRpWGQ0WkNpK1I5dFN2bnBmSy8zUDRVS0tMRVFV?=
 =?utf-8?B?SHBsWVVaRHhBekdsYTZrRWhCMFJRaEFTR2NKK21VY1ZlWW1FRnpDaDZNajJ0?=
 =?utf-8?B?NFp1SWJBc3F0SkkvWEpXZHoySzRKdnVyeEVlMzFiVmdXVjZmUk5UekNFS1pp?=
 =?utf-8?B?VzQzL0cwK1Jhd3h6UEE1ZWh6VzZTd2Z6aHI5ZTVMVk1yKzVlQityY1hpeFQx?=
 =?utf-8?B?L29xNVBIK1BlelFUNm1NT3IxYlQ3OXJ3NDROeE4yckEzVy9kcS96Z0VLZ1FN?=
 =?utf-8?B?VU0raCtwVEhFV1UwUEE0ZWh0QjE2TTNpK0hQalRWdlV0WjBrTFR4OVFRc0cx?=
 =?utf-8?B?K3RnTVJKV0lLVW9aRUpaeWlrb2tGQjNOQkU2RDJmam0wMGI3U2tRYVkwQzcr?=
 =?utf-8?B?WWYxcUNqVkwwTitkRUZQU3Q5a0FBSlBqQnp0MDZja0M5cHFUT2dZM2pjUlpT?=
 =?utf-8?B?TVVSTVdtdXMzV1FMZUJVL3l1QnRuY2J2T25OWHdnWVF6eW1jSkpralhZMnNT?=
 =?utf-8?B?WnloQk4vVGwwZUNBenZXQkdiUktJSC92SlFLNFQwR3I3UkZmaXV2ZEFJSFBQ?=
 =?utf-8?B?MkgwV3BHK2pDNFdTa01WTFlRN1QzRjNONEtwY1Bkdkk4ZFhHZloxb0tXbHM1?=
 =?utf-8?B?ZjBvRG4raFc1YU9DRDJXTkg3VWxBcHNJYVh3ZUx1bitGMzV2QzRrTGhjT3JL?=
 =?utf-8?B?eUZWY0crdHRoMnlKeXN5cU1QbzlHUU55OTQycHhGVUszMXo1Qlhoc1N6VGN3?=
 =?utf-8?B?Zm56NTFqSUkwZzBLREpFbzRJRzJzNEpOaEliWkh2WnVZa2xlU0tma20yZEli?=
 =?utf-8?B?RVB6SmJPUktITHN1d1d3ZURLMGpnZkVMSDJIOGlFZmg3UjEvdG9DTE5YOUtF?=
 =?utf-8?B?OXNPU0RKNHhGWE9SemdNNUpqQXBNc1M4QXNVNFRoa0xuNHdqVmgzbWYrWEZU?=
 =?utf-8?B?QnJ1cUFBTG5RSmo0Y282c0h3MlRuaE9XdGRhV05tT3oxSFl3Y3ZGTE50Ky9F?=
 =?utf-8?B?ZTVsaFhtTGtYQXVsblZFdGtWUlk0dWZJK0wwRkdMSlBWbzZ4NWd4TFFKTUxR?=
 =?utf-8?B?OE9Gd0VLZnQzYlI4dzExM1A2SlVKSkt3Qk5HeXRGL1hTVks2d2hUL2pQaXBC?=
 =?utf-8?B?OVhNckh1TWRyd1NBamkyYnhNZ3ZEdXJSdXgya2FKQ2pESTFOWmtmQWIzKzZv?=
 =?utf-8?B?VmV4bGorVkhFbkpWMTFTam5MUU9jQVFPcVdieGRTbmZXUytXZWtPRkFlSllj?=
 =?utf-8?B?MVhXUlFKUUNaSm91aFJOUldZOUxBSnp5aWpTLzBRWVQrS2tGcXVHVHAwZjEy?=
 =?utf-8?B?bmR0NTkxYjBsYzRZdE9vLzRPSXpUeVE5YlVLTzRwYWowdTBtT2RObklHaWg3?=
 =?utf-8?B?cHBDY1ZPdTdDUVRXV3JTNjhNbEU4S00xMTd2VTZoS1NGRHVZQkVTMUQvazl2?=
 =?utf-8?B?d0NoMmNFOXZ3UHFzZ1U5dm9LaW9lWHp2eCtoYy8zUVRVMTJadlNCTnptbVkv?=
 =?utf-8?B?ckdabTFvWFptRjBzeWxXdCtwVmd1WnZ6aDhNcnlqdEg1ZXJjSDJsTTRjNFRy?=
 =?utf-8?B?dGtpQ29zR3dlcXFFczk5YjB2akxYS3NBcXJtaUF5NUhNZWY0dFVXYUhLenpm?=
 =?utf-8?B?YzA0TDVDNnNNQzIydTRVTm45T1NuVG1Na0ZPdTZ2dTlPSHB1R3V1N1JZaG1m?=
 =?utf-8?B?Y1FIZFdnNm1TcXJ1ZVFJTFhhMmIyNFZMVVhhQWdtN3B1T2xVMENDMlNXM2tT?=
 =?utf-8?B?NVo1RmkwbVQxbWo0c0hnajk2T0F2bm0zUWhUdGxXU2E4Z3YrWTRPd3Z1Rzk4?=
 =?utf-8?B?T0hGUjc5SzlpZ25qdVE3VE1rWGppRDc1TmcxSEJvY3F5d0dER3RmVjVobzZL?=
 =?utf-8?B?cFF3M1dkb3d0UGE5ZktUYUpUNnJ4ZWFPKzRTSzN1TlhVMEorNHYyaGpTeUho?=
 =?utf-8?B?OTI3R0w3cVZIVU11NUdMVHFsSUhaYVI5V0FKaHdMcVlsb1lOTitXMDg2Qjlp?=
 =?utf-8?B?R3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f058a2ff-e31c-4d7c-f6e4-08de15f7c952
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2025 07:58:31.5829 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KxqgqnBblPLsWBcF1OlNP7mJ4sSTRA1P5X0MF+i3d62aEP31kSI3YM0TcjWcmBDUvOZC/f5hBXRf6UinduycYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8147
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

On 24-10-2025 15:37, Suraj Kandpal wrote:
>  From XE3P we can now poll if the AUX power is up or down define the
> timeouts for each respectively.
>
> Bspec: 68967
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

> ---
> V1 -> V2: Remove the extra blank line added (Arun)
> ---
>   .../i915/display/intel_display_power_well.c   | 22 +++++++++++++++++--
>   1 file changed, 20 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 5e88b930f5aa..e1d45ef0eedd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -1864,18 +1864,36 @@ static void xelpdp_aux_power_well_enable(struct intel_display *display,
>   	 * expected to just wait a fixed 600us after raising the request
>   	 * bit.
>   	 */
> -	usleep_range(600, 1200);
> +	if (DISPLAY_VER(display) >= 35) {
> +		if (intel_de_wait_for_set(display, XELPDP_DP_AUX_CH_CTL(display, aux_ch),
> +					  XELPDP_DP_AUX_CH_CTL_POWER_STATUS, 2))
> +			drm_warn(display->drm,
> +				 "Timeout waiting for PHY %c AUX channel power to be up\n",
> +				 phy_name(phy));
> +	} else {
> +		usleep_range(600, 1200);
> +	}
>   }
>   
>   static void xelpdp_aux_power_well_disable(struct intel_display *display,
>   					  struct i915_power_well *power_well)
>   {
>   	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
> +	enum phy phy = icl_aux_pw_to_phy(display, power_well);
>   
>   	intel_de_rmw(display, XELPDP_DP_AUX_CH_CTL(display, aux_ch),
>   		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
>   		     0);
> -	usleep_range(10, 30);
> +
> +	if (DISPLAY_VER(display) >= 35) {
> +		if (intel_de_wait_for_clear(display, XELPDP_DP_AUX_CH_CTL(display, aux_ch),
> +					    XELPDP_DP_AUX_CH_CTL_POWER_STATUS, 1))
> +			drm_warn(display->drm,
> +				 "Timeout waiting for PHY %c AUX channel to powerdown\n",
> +				 phy_name(phy));
> +	} else {
> +		usleep_range(10, 30);
> +	}
>   }
>   
>   static bool xelpdp_aux_power_well_enabled(struct intel_display *display,
