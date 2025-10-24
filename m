Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D7CC04993
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 09:00:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86B8D10E9E3;
	Fri, 24 Oct 2025 07:00:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JqfECEah";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30EC110E9E0;
 Fri, 24 Oct 2025 07:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761289216; x=1792825216;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AggBubbdrWg5crzqLG1T2aZETT9CtBlza23f3Nw7dqg=;
 b=JqfECEahQHj14Rou1qfVwQvM9SqlHIYrifSGb/ePFWt9DLBG58QUL8am
 9un8MxnKiwtGhgqYp/qdLW4kzsgxHmepa44JdPoz01JisJhiIEPUa/9kx
 ypVkVl3862PUzqefnwbFxnYBQBRA2mD/MagLsNGQi5r/4PtJv9e1nVza8
 YtII7c/SFpLGh0rQVqHMmxzsA9XQXhBQFmkPQZSjWXqgdzw5QsqNXsZ9w
 4evGlzPqnAMAlGd78CZdSAR6uRgExsBy/Nw42+nqVG+Qw0h88DYs0fBoV
 BvV9qzCVCPagMrc0Stq7u2Mztjrgnp21sFeG8m0YnXFQmZsJXDSXjwV9z w==;
X-CSE-ConnectionGUID: KMN52UpASkS63vAOwb/HfQ==
X-CSE-MsgGUID: U10auEjPQD+0T7rEc+Xqig==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62677276"
X-IronPort-AV: E=Sophos;i="6.19,251,1754982000"; d="scan'208";a="62677276"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 00:00:15 -0700
X-CSE-ConnectionGUID: bj/p0O+tSv+rVH+vxGzdWg==
X-CSE-MsgGUID: 4ltaABW+TtCF2DAEc0PfNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,251,1754982000"; d="scan'208";a="188652444"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 00:00:16 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 00:00:15 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 00:00:15 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.68) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 00:00:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uM1O4PpbHj8BvedBaHOXtb1xOwTHSIZd2UtW/TFumvj1Aj1ulvFC95YyQNNQqsTgxI0UGto9str3CBT/CP1r/5lWFgWyrbNSlUv9Mya4hn1p6rI23+ee1aSa6woqi6fcdizymcMwv/Ezr8RqBzKP84PsNLp/QXQsBsVblf4RJN32fydKeE4swy372l0iCgeWbE4UD0E45VRGEUXSS2r0hf7+LOIN/nxeM3Qg6TZjX1QHh7Sjdl2mKmPma64EBD6O54x87vnS9afO+9PGZeBd0vaobSxtI8aJ5xr6bPrIvaGxVhdyx2G68Ubsm++kQUeP2MuiQTMsk81eXzSfyZLYQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pYHcid2nyHXoEVyc25bdB/kwvPAJvcGk1v9OmJwMW1I=;
 b=Z/IYyeVtR0J5TFPjjLhlGGZ1hsTnh5Vj//CbcpCp2TM9tBNZ4PfbMO7iuTVa/5QbRaLRrJOI0v7w+/065NdxeX1t4cGqI+KiGl2rPGmYn4z0WH1WyM+5Q5ibbS06ibZGZd4fnkiN/HAf7w5WZCKgF9mre7ZoXdU6G0mRiz5zdW+LpqKzjqrGXatPK/dY6vc0UCLBIu8sDlt2GgkuxFS5eeV2o3s/WolRQfxPQlczT55vbp33+oiNTH/AVWFqI0Y8y4X/bcCdDkQdZC5joTIoW03vEG+CzbB7vO19qtuOV/7z8CWjtikyzU86DxY2yIyQ9u9s6xr4qLLREWEoV29deA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CY8PR11MB6889.namprd11.prod.outlook.com (2603:10b6:930:5e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 07:00:13 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%6]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 07:00:12 +0000
Message-ID: <fb48f903-ed03-4e71-b497-4ddc755ac310@intel.com>
Date: Fri, 24 Oct 2025 12:30:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 19/25] drm/i915/ltphy: Enable/Disable Tx after Non TBT
 Enable sequence
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-20-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251015040817.3431297-20-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0153.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1ac::14) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|CY8PR11MB6889:EE_
X-MS-Office365-Filtering-Correlation-Id: 817a2e93-2c9c-41aa-2ce8-08de12cafa47
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OHk3c2loSml4VG45dFBQVDlSeGZ6d3VjdDFsdmlXRXhUT2lESkNMdmtYRFNE?=
 =?utf-8?B?ZGZKUTd0dU9PWlFDTkRocG44ZHJTSnlYTEZlOWZNakZmdEszUytWditlQXVV?=
 =?utf-8?B?T25nUXRkVUx2MnJiMzJQZ3ZzeEVuN1RYMjBJOWpwSkNGOVcrd0RVeFZaYnZI?=
 =?utf-8?B?Y09Od3hUeGZWbnRoMytJaUdydHFSaDZzTUhjUXRXdzg0Uko4dGthc1dET3Jm?=
 =?utf-8?B?cDZNSE85T0lRZXhOUWtSc3h3RjF4YXAxVVBsYk1IZXFxaCtFb1lVTUpzQzBT?=
 =?utf-8?B?YTVjZ3V2NlluUDB1MUFXYUY1WmZqK1p0UnJCTjFPV2Nqa2k3Sk54ZG9OWmFu?=
 =?utf-8?B?ZGlEWHF2cmEvRUtUZkdmM0dqVmNDMTdUOFFuK0E5ZmxDVGZCNUU4MVEycXNs?=
 =?utf-8?B?RlZYS2t2OElQRHpCVGp5ano5UXRGK3dNVm8zSWo5K3lKdTlRcXJhcW1HTUlu?=
 =?utf-8?B?OE11VzhUMDRsQUdWVitSakhQcklYcWJ6djV6V005Qk1SMDJxRnBsRC95VHBy?=
 =?utf-8?B?dlhUWUcrZ2wrTDdVWGxORjNwUUlWbUNkSDZRVVdjNUhha3RDZ0YrVVBObjFm?=
 =?utf-8?B?cnNISmR4OTIrZEV4STErT1FCMVFBSlNBOXVnN2UreEhaTU9ISFNWYklxL08y?=
 =?utf-8?B?S3kzc1FnU083Zy9LYmhka21INXFpeGVnSjhQeXo2YTVTcEliTklJVW8wbm5k?=
 =?utf-8?B?VjlMckgzNDMzVzI4RFR2dDdzdGtpN2R1QVQxNkJscWFTUWV1MTNxanlzUHlI?=
 =?utf-8?B?MHgrejBLelJHek1oVUdkMktVL0xmMDVYV1o1bmhYeDFyVVR2M00wd09DTGx0?=
 =?utf-8?B?T0piK3l4R3puUmh2Mkh0TVNEOHlZYlpsSFVpZkRGTmJlL1BnejlPOTE2U0VL?=
 =?utf-8?B?bzZqTU9lbGJEM2NYVHdCM0hFc0NRb29tZjNFVFZIZ1NPWmFDUThUTE12LzBS?=
 =?utf-8?B?eWhNYTBLaWJWKzRXY1NQSlJKdWVDdWlMN1c3VVlDT3dNbzNxb1h2RmJyak1W?=
 =?utf-8?B?Q3J1L1VhVENrZ1pFR1UxOFdPdURKN0pEOTV4a3pDT0ZUd052R1FDQjc3c084?=
 =?utf-8?B?RWI4dnZyMCtmL3RwSll6ekltVFk2QjRIbXYrY3hXSU5qWjFyNmJoSWZwTVNM?=
 =?utf-8?B?c1hVTVZWb0k2UHg4RnFyQkhGR21jcTZNM2ViSTR2dGJ1Qm1HT0ZzeUc2VUlH?=
 =?utf-8?B?dXZ2SDdoOENNUGI4a1VnOTFkYnFDd3pRd0U1ZzJlNkhiYTdJUm5ISk5UaWcx?=
 =?utf-8?B?WVI2YWxXZXFUTCtSd1Z4VjBuaTdaK1AraS9vOHBqV2NXY2lHSkVYYXdIdzJ2?=
 =?utf-8?B?MWp4c1VrZitNN2Y1eEZQS1RDMWJLNmpNVGhteW1rRHJORnNqNjZEeFFaRHoy?=
 =?utf-8?B?eFc5dWM4SStFVlgwcWlBUVpIbGs5aHZKVlZmZUZudVF0T2JxVUtINHJyZDYy?=
 =?utf-8?B?MjhlRGtQeFBPbUZGbjYxN2tXU0s0R2RYU1lmNDQxN21lN29sWlFuQ283VVZz?=
 =?utf-8?B?M1hCaG4xTWI0bXBzVmt0aDN6ODRPay9CZFRSTFVrSUFtSmFTa0ZucXFrRXJX?=
 =?utf-8?B?ZGE3SjRKbDlDWkN4Mi9ZN3NVR01YRENqajl6S1ZGTXY5L0RGRUx5RFh2MEtL?=
 =?utf-8?B?bFc4QWVXOENmbVdIUDZZT2hrL3ArTlRZd0FvS2RqRGlUNEQxY3J4Q3RGZ0hs?=
 =?utf-8?B?bDBMcmZhYk05WGJlZHRqVzg4bDZGcHJUekt2QVppVlRMclcwSldpbHdUdE9p?=
 =?utf-8?B?WjFiOHI2d2p1cGZXQmxTbFpkajRyWjVMRXFWd2tjWUlmRVZyaWw2QUwxOW85?=
 =?utf-8?B?NEh5TFA4dW1qUUQyMEtBWTUzWFAzN0lRQm1KYjlZUWNYRy9CRDdUb2M4aW00?=
 =?utf-8?B?a0JDdWlaSkNCaTJrcUdzQk1yb04rUlYzaFlzS2ducWlZQ0hpZlRXQ1Y3bGZi?=
 =?utf-8?Q?y44KADfduXmz8TNid4bx+9dEoySXvEcO?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SUVta013S0JKM2s3QU13cXhFZkp1Y240bUhMY0ZrZnNiR1drc0ZkOTVaTTc5?=
 =?utf-8?B?YjZVVzB6bjk4VzNpMWUrSElxQ0pzVnpkOGV3QzIvaTZsbXBFdUp1MnR6ZHN0?=
 =?utf-8?B?OTd4K3cyT2lEUTJsWHhha1RpeWN1bmlvaWxVMFcxU1cvVUxaU3ZnR3RqdU82?=
 =?utf-8?B?SktpYkVHMk05REJSRXA5ZnkvTHQ1UVo2a0IrWmxGRkNNaDEwc1Y5ZUNid1ds?=
 =?utf-8?B?MHd5SS9lcFU1dVJlTHlTZW1Nak9hbUdHSjg1RWZRby9wMEh2WldoTXRWdjc3?=
 =?utf-8?B?RzRiWG9vd2orTmxmeTI4b3U2czc2aUlKYnZkbEdWYzFDbkNtQ2Y1QkJnVm1r?=
 =?utf-8?B?SFptT1dxVGxDcXdQUjVtSS9nY1FUbW5PWlRnYWFJUnRpcWJiK0JvWkk2S2Nw?=
 =?utf-8?B?TzJjUVVIaUFXekxocUpoR3AvOGgrTCtnZXZmTnpUM2F6MlBMcmpKU1BOa0Za?=
 =?utf-8?B?aFc4Zm9kTitGVmtqSi9UY3RUaFpRVW5oMjd1M016V2Z1eXkrQmpTV1FrNTAy?=
 =?utf-8?B?L253ak56UGMvYm4rSUNna05jY2k3UXpuMHFVRHViYURRdlpQZkhnWTBMa25m?=
 =?utf-8?B?NW93UHcvbjQ4ekwyTVF6K2NYOG5YWXNRWTNEZlVZSDNjeW5FYkxoVFltZUNt?=
 =?utf-8?B?djdsVGFVRmZzT1dDWHg4RGV1VVBic2QrYlpzVGNjVjlsNDgzdTdvTUJaYUNt?=
 =?utf-8?B?dmNxM29xZUZKcUFqUFpWNkQ5VW1uYkM1aHpJS1lOT1pGQnVZVEFNVkRIMlFV?=
 =?utf-8?B?NUUxdHp2d2U0QThDS1UyS2NESTA4emMrb1EwTlhFSUdPS20wd3Z5SFVHUHpL?=
 =?utf-8?B?SEI2d2JEZ3gyMU9GZzAxNHFrRTdJNVRaZHl4ODczbTVLVTVEL3lyakFpeTd6?=
 =?utf-8?B?WXZzM1RZdzFHN1dBN1MzcGZlbzZNQWRyN0N4M0YyYUY0OTZrQkNxdXdrSzVW?=
 =?utf-8?B?bXIvem9GVnNHd2RSUUttVlV6Z0RzZlV4Rmw2ODh1T3Y1Q1FPcWthd3RncUsx?=
 =?utf-8?B?VlMwMmpTSE81bzNvdTk3TjVRdEdUWEZ2a0ZCYTNwNlhGaGRFVjJSUGJoYmNC?=
 =?utf-8?B?VGhPU28vSDd1NmVyMlIxOHNaaHF4ejFtR08zb0doN1pCZmpQT0Q2Tk01TnZx?=
 =?utf-8?B?R2wzVkVPUzl0ZjFudHkrMFBpNjRHejdLTFl0NXRDWGxQaDBtUVBsa2QxVDFu?=
 =?utf-8?B?bTg5a2ErdGRsbnJtVEphVVdoSHptNm5udDk0NUZ5VjUrTGdiUXJOdllRM241?=
 =?utf-8?B?SlhkdVZXbDZZMkNPRHQwK3pYaWo5S3JpL2VTajR0ZmMvbzRjR0ZUT2N3LzVH?=
 =?utf-8?B?c09ocWxUZFYwMVRvczVOY2Y2alJLSGF4dlkxQjhxOFkvZ1RHT1VQSDZ1YUVy?=
 =?utf-8?B?b1Bad2trZE9LSWlJSnpQdlQ0V25hOGhjU3JxY0VISWlJdlR4SXhORkpYam1t?=
 =?utf-8?B?VHVRYzJpQ05HK084MDcvMUtIbTl4bGZkUjMrYkFSWWUxOStVWko5ZDlNUHpU?=
 =?utf-8?B?T1hMaE5SNG5LeFhyT1lCQmlqSExGODQxbkNJa0M0a1lwb3lsR0xvQ2k3eXAz?=
 =?utf-8?B?OHkyRUVFU3dXc1BQaERBbTZSVzVvVk5VeWtYZzVVRFVHNkk3QmtZbDZLY1hJ?=
 =?utf-8?B?SHBoU2syYXdmVmtMQTlOSGF6eUlwUDIzaE1nd1NUWDBSSnNjNjl1N3lId3py?=
 =?utf-8?B?MzFXR0ljYzdhUVlnemhDL21hbGo2c0VlS1FhMWdaMndwNHBzNFNOcTFCV3NG?=
 =?utf-8?B?Um9kV3hHUDl5amhvY2l3QVpTeHFxaExHbFZSK1NzUG9Kd21JdGpqWU5ia1Z6?=
 =?utf-8?B?R1VOaWUyVG9tanBMbUc1QUJDekpMbDhVMjFKRnpleDNmb2ErQUE4Zzh4K1Vp?=
 =?utf-8?B?ZnJFWnZpOUI2MlVMYitoZ0NjZ01BKzBXU2tsVGRNeHczZzVuUTF2MGo4TkVp?=
 =?utf-8?B?bnNkWllVVmlQQ0I5ZVZpTXoxbWd6ZWVtVk5tUzVEelBXaUV0ckZSS2dnNGd0?=
 =?utf-8?B?cXBuTDgySDdqbEZoaVNZUjZKR0haNFNyZXBHSUJzQURtQ0xJTHN2MHVNbVBt?=
 =?utf-8?B?RWo0eVNGSXpNR3JSbWJiTjlkYzJTcmNJZnRYWFFLek9LU0s5SU1Hck5yVk5O?=
 =?utf-8?B?cmt3Q0ZBNFpKN0EvTWZvWnVlSHh5REhNMmVxMWZsUlZmQWxIVHlwK2hMYjc0?=
 =?utf-8?B?b3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 817a2e93-2c9c-41aa-2ce8-08de12cafa47
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 07:00:12.8733 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fGbz7NCYUV0LWHl4lEyf3BYqSHoQaBBEx+kELZzOwlLLk/+8IH2qo4RkMb0b3FWA0xLYhYorxWYQdfqHlh+I4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6889
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


On 15-10-2025 09:38, Suraj Kandpal wrote:
> We need to enable and disable the Tx for each active lane after the
> Non-TBT enable sequence is done.
>
> Bspec: 74500, 74497, 74701
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

>   drivers/gpu/drm/i915/display/intel_lt_phy.c   | 87 +++++++++++++++++++
>   .../gpu/drm/i915/display/intel_lt_phy_regs.h  |  4 +
>   2 files changed, 91 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 359a2dbf0847..f1e41f009bb5 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1494,6 +1494,92 @@ intel_lt_phy_program_pll(struct intel_encoder *encoder,
>   	}
>   }
>   
> +static void
> +intel_lt_phy_enable_disable_tx(struct intel_encoder *encoder,
> +			       const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +	bool lane_reversal = dig_port->lane_reversal;
> +	u8 lane_count = crtc_state->lane_count;
> +	bool is_dp_alt =
> +		intel_tc_port_in_dp_alt_mode(dig_port);
> +	enum intel_tc_pin_assignment tc_pin =
> +		intel_tc_port_get_pin_assignment(dig_port);
> +	u8 transmitter_mask = 0;
> +
> +	/*
> +	 * We have a two transmitters per lane and total of 2 PHY lanes so a total
> +	 * of 4 transmitters. We prepare a mask of the lanes that need to be activated
> +	 * and the transmitter which need to be activated for each lane. TX 0,1 correspond
> +	 * to LANE0 and TX 2, 3 correspond to LANE1.
> +	 */
> +
> +	switch (lane_count) {
> +	case 1:
> +		transmitter_mask = lane_reversal ? REG_BIT8(3) : REG_BIT8(0);
> +		if (is_dp_alt) {
> +			if (tc_pin == INTEL_TC_PIN_ASSIGNMENT_D)
> +				transmitter_mask = REG_BIT8(0);
> +			else
> +				transmitter_mask = REG_BIT8(1);
> +		}
> +		break;
> +	case 2:
> +		transmitter_mask = lane_reversal ? REG_GENMASK8(3, 2) : REG_GENMASK8(1, 0);
> +		if (is_dp_alt)
> +			transmitter_mask = REG_GENMASK8(1, 0);
> +		break;
> +	case 3:
> +		transmitter_mask = lane_reversal ? REG_GENMASK8(3, 1) : REG_GENMASK8(2, 0);
> +		if (is_dp_alt)
> +			transmitter_mask = REG_GENMASK8(2, 0);
> +		break;
> +	case 4:
> +		transmitter_mask = REG_GENMASK8(3, 0);
> +		break;
> +	default:
> +		MISSING_CASE(lane_count);
> +		transmitter_mask = REG_GENMASK8(3, 0);
> +		break;
> +	}
> +
> +	if (transmitter_mask & BIT(0)) {
> +		intel_lt_phy_p2p_write(encoder, INTEL_LT_PHY_LANE0, LT_PHY_TXY_CTL10(0),
> +				       LT_PHY_TX_LANE_ENABLE, LT_PHY_TXY_CTL10_MAC(0),
> +				       LT_PHY_TX_LANE_ENABLE);
> +	} else {
> +		intel_lt_phy_p2p_write(encoder, INTEL_LT_PHY_LANE0, LT_PHY_TXY_CTL10(0),
> +				       0, LT_PHY_TXY_CTL10_MAC(0), 0);
> +	}
> +
> +	if (transmitter_mask & BIT(1)) {
> +		intel_lt_phy_p2p_write(encoder, INTEL_LT_PHY_LANE0, LT_PHY_TXY_CTL10(1),
> +				       LT_PHY_TX_LANE_ENABLE, LT_PHY_TXY_CTL10_MAC(1),
> +				       LT_PHY_TX_LANE_ENABLE);
> +	} else {
> +		intel_lt_phy_p2p_write(encoder, INTEL_LT_PHY_LANE0, LT_PHY_TXY_CTL10(1),
> +				       0, LT_PHY_TXY_CTL10_MAC(1), 0);
> +	}
> +
> +	if (transmitter_mask & BIT(2)) {
> +		intel_lt_phy_p2p_write(encoder, INTEL_LT_PHY_LANE1, LT_PHY_TXY_CTL10(0),
> +				       LT_PHY_TX_LANE_ENABLE, LT_PHY_TXY_CTL10_MAC(0),
> +				       LT_PHY_TX_LANE_ENABLE);
> +	} else {
> +		intel_lt_phy_p2p_write(encoder, INTEL_LT_PHY_LANE1, LT_PHY_TXY_CTL10(0),
> +				       0, LT_PHY_TXY_CTL10_MAC(0), 0);
> +	}
> +
> +	if (transmitter_mask & BIT(3)) {
> +		intel_lt_phy_p2p_write(encoder, INTEL_LT_PHY_LANE1, LT_PHY_TXY_CTL10(1),
> +				       LT_PHY_TX_LANE_ENABLE, LT_PHY_TXY_CTL10_MAC(1),
> +				       LT_PHY_TX_LANE_ENABLE);
> +	} else {
> +		intel_lt_phy_p2p_write(encoder, INTEL_LT_PHY_LANE1, LT_PHY_TXY_CTL10(1),
> +				       0, LT_PHY_TXY_CTL10_MAC(1), 0);
> +	}
> +}
> +
>   void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>   			     const struct intel_crtc_state *crtc_state)
>   {
> @@ -1620,6 +1706,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>   	intel_lt_phy_powerdown_change_sequence(encoder, owned_lane_mask,
>   					       XELPDP_P0_STATE_ACTIVE);
>   
> +	intel_lt_phy_enable_disable_tx(encoder, crtc_state);
>   	intel_lt_phy_transaction_end(encoder, wakeref);
>   }
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> index 1eab328c70f4..b8d02c39e738 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> @@ -35,6 +35,10 @@
>   #define  LT_PHY_TX_CURSOR_MASK		REG_GENMASK8(5, 0)
>   #define  LT_PHY_TX_CURSOR(val)		REG_FIELD_PREP8(LT_PHY_TX_CURSOR_MASK, val)
>   
> +#define LT_PHY_TXY_CTL10(idx)		(0x40A + (0x200 * (idx)))
> +#define LT_PHY_TXY_CTL10_MAC(idx)	_MMIO(LT_PHY_TXY_CTL10(idx))
> +#define  LT_PHY_TX_LANE_ENABLE		REG_BIT8(0)
> +
>   /* LT Phy Vendor Register */
>   #define LT_PHY_VDR_0_CONFIG	0xC02
>   #define  LT_PHY_VDR_DP_PLL_ENABLE	REG_BIT(7)
