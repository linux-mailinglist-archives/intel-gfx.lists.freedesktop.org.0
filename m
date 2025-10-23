Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EFCC01FE1
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 17:07:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34DBD10E916;
	Thu, 23 Oct 2025 15:07:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W9pXK09S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADEFD10E915;
 Thu, 23 Oct 2025 15:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761232051; x=1792768051;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=evMsXjczcngDGMY5AdTlsvce5pgmWFe4cVVPc++tmXQ=;
 b=W9pXK09SoTl+YZy/Tv2dhmUD249w6A7xI0QR46PNUm0Uj8iScFEqB8Qy
 SlX0XESXm2JYdDtMzH+B2Vv+ygqH15MQ5npbcp8xUBi0P4xYxyPCUuZt7
 y1MSYJU0b5GPWtjr+aVpSgUH70aFhBRSp8+5WWd7M6N3fD+di9cqcadQa
 4sRNtM0XYxnf6w/RXkqBakomgUgs5LKgClMptXYIFnL6W8t/qSMHolxrr
 jI2csduJBndaMQLm0axJUtBMTHT7tlblnnL4eXbsjpV0rffInzQj6qUrS
 Pp8MXASF6l+6mAU21O2Gr/Um7KotjFUePE19JoOYKadh8i501FdG9rhfM A==;
X-CSE-ConnectionGUID: SAs8yZx2RiKPCXcBaHO1Hg==
X-CSE-MsgGUID: qIt1urZkSo+dz+bzJah52A==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="86032381"
X-IronPort-AV: E=Sophos;i="6.19,250,1754982000"; d="scan'208";a="86032381"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 08:07:31 -0700
X-CSE-ConnectionGUID: +DOEFyYWQGCqfLEmgtGE3g==
X-CSE-MsgGUID: FULuLhzRQai5OSxLNpuqyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,250,1754982000"; d="scan'208";a="189308664"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 08:07:30 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 08:07:29 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 23 Oct 2025 08:07:29 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.53) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 08:07:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fm067fAl3aO6Wuar6fk0bXO6oajD9Ou7isLL6EzLf0fk3CuOXGaPsm32SYbqpKR6ftmXIKjNLiiwFaFnHHTUhGFNAhkR25s4haqiQxMfJD6JtC+W8nV3BZ35xPHNQgKJgvk6+6vqYdml4GQawFeh5Q5LPzaRjL3+D5lPJfHy4JFDjDHYMKzcWNzDstlUzwvk69v6prea0WH7Z/eQWrwV9R5WKXeVaHumB9PUWKtgB+0A2XTcp0FQi8mCWkl0Wh1CC4x8lW5V2GccJJiuJ3F+d7S8PxFO7Syo6QLx9dhJ3nzLHtef5wmoXvnZAI6EpP0GcY6MNvcp3zcP56DmAT3omQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jqLFOh67SEdUBK/G5khAj2n/KGHDskAPy8KndYgQYwM=;
 b=LMXWVCRpvaIlxLAOXKnuSqLohW3JOIpfLVwtpDjAqzj0wIlgr01YhlRifRlTsVAhvdJkjEdtQMMGX362fL5J+/ov170CoYv3ebi4MqkakvNQ2q+SVnumdQY86cdeJRKoc8DGOvOxGPljlf3euzQdmpj1vCMjyKTTlm21t23jJhPWclT5NDf8pipM4yS1e6+PcQMjD26nOtAb2hj3LYt29aIAzZ1dmHgRP7VMFxmG73r7zPxDDruSPNqea2AN6eAi6LHGxqC36SA8fy/yNM0DW6EWz43gPCiFGrZHrZtgcCzsoZctATSt0wdeDn7X0CRvpFq+sWir/Ff3olgoTaA/xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB6374.namprd11.prod.outlook.com (2603:10b6:8:ca::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9253.12; Thu, 23 Oct 2025 15:07:22 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9203.009; Thu, 23 Oct 2025
 15:07:22 +0000
Message-ID: <fb3a74ae-5b57-477e-8681-11d0ee10747b@intel.com>
Date: Thu, 23 Oct 2025 20:37:14 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/vrr: Fix transmission line for Adaptive Sync SDP
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jouni.hogander@intel.com>
References: <20251023081614.2645242-1-ankit.k.nautiyal@intel.com>
 <aPoZ05jth8oGvoGk@intel.com> <b7971dfc-2c75-4a33-ba91-5a2d30339b35@intel.com>
 <aPo-STwN09z7qnFB@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aPo-STwN09z7qnFB@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0089.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB6374:EE_
X-MS-Office365-Filtering-Correlation-Id: a5a21115-3689-4104-1a06-08de1245dd6e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ak9uWFhLUDFyZ3NiYmxQUEZMWWNZMjBPVFRlUFdwN2ZEZ2ZqWUNubnNzbU4w?=
 =?utf-8?B?WkNZVTV1YSsyNVFtRUdiMFF1bHdnQjNPTWVrVUpLRXlPdVVlZncrM2ZSaG9Q?=
 =?utf-8?B?U1hkMkp3WnhBQmh3MDFuSFFscko0enFQcTFhQXFNMTlEZmRPRk1GVit5dE9v?=
 =?utf-8?B?a08xM0JwejRDbUJOMlNOaEdaVm01czM3SWU1UDB0NTYzd1djM1Z1N2xrcE4x?=
 =?utf-8?B?N3J6UkUwa0g2MUd4T0tweXYrMklxelI4Y2VET1I0V29yZkt4UUF4YlFuY29u?=
 =?utf-8?B?VDlVNk1XZ1NhU1RhVC9iWktmRWdkUE1aVEM1TDFKUXhaNUFlcWV0QndkRW1Y?=
 =?utf-8?B?SUlJNmc3d2RVTWlQVDdjaDc3SFhIcEMxQ3BSMVFZOUZLSjY5Zjh2bWFYaHJ3?=
 =?utf-8?B?c1lteEZmSHlFaldUaVZOYmZUdC9vRUpSbkV3eDZkR2VMNGNOR3BibWNpcGVJ?=
 =?utf-8?B?SFdDdlpwOFJ2NUx2dTVuamZxdlhXbHB1eEZaRjRNWVhOVFRuV1JmeHpJNlhJ?=
 =?utf-8?B?bGM4bUZad0NHM1pORDh6VXc3ejYyem9hampBV3NXcVVsY1VPT3p4bnBaU3ZP?=
 =?utf-8?B?QkxGRDNJbWsxKytybUI2MDZ3MWZLWU8vbFdtT1pFbmZtakRxTkNGZEI1NFFS?=
 =?utf-8?B?ZnRWRm9nMkR4c1RWb0VMQWRMb0Y0L3QwN2tyTk9IbVlmTUw4czJqWDlSQU02?=
 =?utf-8?B?Q2I0NnkvMHhWZWVQTGJ6ZmJsa2RCOHppY3d4ODV4K0tPSG8wSko0SzRDemZH?=
 =?utf-8?B?TE9kaWJBN2REbEY1UjNDdVkzZ0g2Snl4OGt2RDRHd2pNYTFhaSt0V0NjOGJq?=
 =?utf-8?B?US9EVHBZSFJ3VVhPRXk1YnNuZkd1bmRnOUJ6UmgySG40TjVFdHBuMHBJN2pX?=
 =?utf-8?B?WktmUGN0NU53dCtESk9aNDFUV0h4S3BkZzQ4dmZiL2FLTVhRb1ZJT3RNSjI0?=
 =?utf-8?B?U3FkcHlXNS80Ly9vU3V2VFNMWE1ndENDNEdtSHhOTVRCcTlqb0phUHlFQjVS?=
 =?utf-8?B?YllKcHFwMnJ4dTRYOGE2RjZQQmNhTFBoRmlRUlZKeFlZTVBPU3FrWWtGazdq?=
 =?utf-8?B?a0ZXWUtKdThtRnd0dkRjajloMHplemhKQXAxdWRBTDQrOGRCeFdmSFdtek5m?=
 =?utf-8?B?cFk3azFBamprWlZBU1RJS0xnSUd6VEtWU3BtNEJla00zYTk0V3lpUlkxVFZ0?=
 =?utf-8?B?WlVwZnhhc2JPaExGeXFNbEN5a0lmUmZJV1Y3TnVFK2dHUHFLNG13dXpITVZH?=
 =?utf-8?B?cUtUOWNGNXh4L2l1bEE3cjh2L1d4eHdjV3VUeXZ3dGJOci9TaHJoeVBqd0do?=
 =?utf-8?B?YTEwZ2M0K0dPYzhhNElwWmJjYmJWaWFlUENEdmZhTGVmalBuSHhxcnQ4SlVP?=
 =?utf-8?B?QUhVUStrUm1PN0YyaUxrR2NSZVJhRUZuZGd1T2FDd1RlSmppZW1lVmRFaTIr?=
 =?utf-8?B?dTZDZ09ZTnJpdXhYdXoyalk3SXNTQXVvTTM3QW9WWk5La2RGa2tuckxkMVUw?=
 =?utf-8?B?ZFowVjJlU3pMQUlvUXlwV3JDSzRtY1pFekFKcGh6QzZ5Tzc3cDNiK1BONGZE?=
 =?utf-8?B?K2hmVDdqV21hQmhQTldlY2xDNDZURDRLSnAzQTFubHVNemVRblVZb2R3YWpM?=
 =?utf-8?B?dDhLanUxd01NT1Z3RDNBMlBZdmg1MEF1ZU1tNjl5QU5SUEFya0RRZ2kzQkg1?=
 =?utf-8?B?Z21hR1hJak9QdnpiMCtGN0NMU0xHQzhzdkUwRGV0VzNtb1ZRSVVmYlNpYnF4?=
 =?utf-8?B?T0RQZldpRGxyZHB2L0FFcHJaVU9VYi9nVjAreUdZZEdsOUZpdC85cVFHVm04?=
 =?utf-8?B?a2djNlFKMzdWRGJ2M2NIbVJIeGdIMEpZSlN6eW1oVEJUMjhjVVJMMHlSeW8r?=
 =?utf-8?B?M3hGV3U3d0w5ejJkclJTRyt4VzNrVWpCY2dmTVdtaDJQNzdNOE1SZy8vaEJ4?=
 =?utf-8?Q?4QTOXJ9tnCVmD4NNHO1w4XaO/eGUP3BS?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OTdsVTdSYVNWNWVqQVBwT2F6MlFhRU1yMm56akNMQUF3RW5DME9KN2c4TTFO?=
 =?utf-8?B?TnVuVGpFNlorN2lqODUzQnhzOWhpcUhEZ3FiSnFJWDZzdmlmSUllZW93MkJm?=
 =?utf-8?B?UmFSeUpVbjZsODFjOGpiV25Eb3IwNmU3M3d6YkN2aWxraHd5UlE3WDdkcU1L?=
 =?utf-8?B?STdCNE5xZ1VYeno2eFZ3VTk1ZnRUTWFoSXhDRkd0STRzeS9INTZ2V3VUMHhu?=
 =?utf-8?B?bysvUDJWeExITVB3dks1eGJrSXNNNCswdlV5QUZJTmVTRnNjUlA2VTlmTlhW?=
 =?utf-8?B?b1BLb0JlRFpISVY0VDB0bVROQ0F1RVZPZDBQTnRWdThtcTJ0bUx5YmIwc01M?=
 =?utf-8?B?ZmE2ZytuK2VGWHZkMDBqYWdveHhadEhCeHJjUldvWTJZWHUzU0NiL1pHWExa?=
 =?utf-8?B?VFRsUEU0b2JWTmN2bEh6UnlwUFZsTnRwWENUcGRTV05pdTRNeEJFYTFJcVJO?=
 =?utf-8?B?QWpkN2ZGdTB0U0pFRC9VZDh6THJ4Vlhmdk4yOUQ1UDN2dk9MZU1VZTBrWHFO?=
 =?utf-8?B?NnhTemtVZnc0KzZCMThWNjRFUXMxRW9jQnM1bURuWm1uZ2Y1eUVwNU9VZ1Zn?=
 =?utf-8?B?ajA1L05YdzhtNTZtV0QrWmZBWDZDZnF4OE02eWJUd1pOM0hwRVgxdlNkWmRt?=
 =?utf-8?B?OENPV3Y4T2NNQUxOdzBXL1VDMzZubkhDOW53U2t1NnJObmxaYk4rZ010cG1B?=
 =?utf-8?B?ZER2QlkyOHpDRzIzTGQrTXlsMUljMWN1dDhPTUlGTXgyT3BTSngxdmpzRXdO?=
 =?utf-8?B?QlJVckNLb3E2LzNZUzR3M1BpbmRjekpIRHhXbTBKUytCdnlyeElabnZQcm9X?=
 =?utf-8?B?OGtLdk5RUTBjTStudUR1OFg4bGVMalFPTXpFWnpaQ0hLNER0aU5SMTBERmdp?=
 =?utf-8?B?RHBXYUNQczFTU3pqcTJ1VEpDMVM4a2p1S2QzTWNsZmtHVnZIUWUyZFExbE1S?=
 =?utf-8?B?WnFMaGIzZVRvRXdteXNxdExLRm9QUjVkcmlSQVU0RHAwWENKayt1RGROT1Fm?=
 =?utf-8?B?L2hsZzExckNIQkI3d3dpWGVXUFRtWnFXVzM2Q2lJRG1DT2pNY1Y1WUxSY3NW?=
 =?utf-8?B?ZjVueTBIYkRXdnpUUzZDMWtWNkF1OVZadFMwcENkSG1NNVB6MWxiWDFCY3Z0?=
 =?utf-8?B?YTRha2RWdzg0Y0E1ekJsUFJzMUx2TVhpVnF2UUh5SEhXUklIUkt3RHlCZGpN?=
 =?utf-8?B?MVNxMmNqYVJGTDc1UWFYNTh1V0ZCcmxyYW4veUdYMDNiL3A5UjUvclNGR3Rq?=
 =?utf-8?B?SFNKdTJQVDdiSDJWcHJFUk1qWW1lWlhnZ3VMVkpEMW5NbUFrVWpCWUZvLzZP?=
 =?utf-8?B?UFVHLzFzYWxRbnpHRlZFTURVN29rVHAvaXVjdnlwM0JhdDJINFIvRFZIZHVS?=
 =?utf-8?B?Q3VJenZUejZxZGZTbjZFeGRtT25RL1phTTNHaVJrNXI0NmZyT0U5Ull1dm5X?=
 =?utf-8?B?VzI3ZkJROUhqNXcwL0lhWHhpZEJLd2dJUXVSSlBEMFlTc2hNVU9vYjRqdzhy?=
 =?utf-8?B?WXdsTkdjRnpJbUcrVVB6REZDcnpDQVBXeUZ3YStVMzBDN3Z1MG54U0dWemgv?=
 =?utf-8?B?TkxUV3prc0w1NC9NQk1ERUZBRnlhQkx3QmpRa0x0Umg0R3ZrVUZ1bGdwbFJL?=
 =?utf-8?B?TU5GV0JZdVMrQ1RGTzRqbk1SSEZhOTV4aThUUmFyUEhvZFd3N1pCOW1BS1R2?=
 =?utf-8?B?WXFZekFiQjJuSHhITWJ3T3daVmQ0ZVA0OW1zMnNmako5Y3dHVzIwdHJvd0Q3?=
 =?utf-8?B?cmZPcUh2T1VnUFRBTUlsK2ZnZWRyNE00dWtaVUc0K1p3MFJTUDlvU0pqYWJm?=
 =?utf-8?B?ODJzcGFlNzA0WlhZWGRTYXJ1MDZYK3RvS1ptMVl3RjRIMlVMdjZJVTJNd1M5?=
 =?utf-8?B?V1RpOWRuUFRPT0NiS2xFK0VYY2xSbkxOYytTa2tDRjJJcElhUFZmM2pFQkFH?=
 =?utf-8?B?ekxCNjdqRXNXZkFQTFNFVlVnRmJRdjJodGZMd3pMcjlYMURlQ3NnOUFJQWdw?=
 =?utf-8?B?N3UvY0VOMFdtWDNxZ0xJbVF5NVlTQ1E1enI3STg3R1QzNnBmaFhJbmM3RlNv?=
 =?utf-8?B?c3o5ZE9LUUt2ZlVCTC9KYk5rMzlLcEJJYUFNMEJjT0luUkpyQnhKNlFqeHJl?=
 =?utf-8?B?aTRNYVhqR2JMNThoMnhRZml5dEJXdXpuSEFqeTJmUDcyMk9ZQ3pFdkZYVHdX?=
 =?utf-8?B?UkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a5a21115-3689-4104-1a06-08de1245dd6e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2025 15:07:22.3663 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a+Rc4IMd6cf/oSBAeeX8x08CFwatCVyTuId8Uyp+1FFgyX+dOuZVKgmkEnLJMVztK4lM1/+XT+U/ucHGV3AbmTPIzh1q9Wstb5TVZC/pbbg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6374
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


On 10/23/2025 8:10 PM, Ville Syrjälä wrote:
> On Thu, Oct 23, 2025 at 05:57:02PM +0530, Nautiyal, Ankit K wrote:
>> On 10/23/2025 5:34 PM, Ville Syrjälä wrote:
>>> On Thu, Oct 23, 2025 at 01:46:14PM +0530, Ankit Nautiyal wrote:
>>>> Currently the EMP_AS_SDP_TL is set to vrr.vsync_start which is
>>>> incorrect.
>>>>
>>>> As per Bspec:71197 the transmission line must be within the SCL +
>>>> guardband region. Before guardband optimization, guradband was same as
>>>> vblank length so EMP_AS_SDP_TL set with vrr.sync_start was falling in
>>>> this region and it was not giving an issue.
>>>>
>>>> Now with optimized guardband, this is falling outside the SCL +
>>>> guardband region and since the same transmission line is used by VSC SDP
>>>> also, this results in PSR timeout issues.
>>>>
>>>> Further restrictions on the position of the transmission line:
>>>> For DP/eDP, if there is a set context latency (SCL) window, then it
>>>> cannot be the first line of SCL
>>>> For DP/eDP, if there is no SCL window, then it cannot be the first line of
>>>> the Delayed V. Blank
>>>>
>>>> Fix the EMP_AS_SDP_TL to VTOTAL - (delayed vblank_start - SCL + 1)
>>>> Internally the HW computes the value as VTOTAL - EMP_AS_SDP_TL.
>>>>
>>>> Fixes: e1123e617e51 ("drm/i915/vrr: Program EMP_AS_SDP_TL for DP AS SDP")
>>>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> Cc: Jouni Högander <jouni.hogander@intel.com>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_vrr.c | 12 +++++++++---
>>>>    1 file changed, 9 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>>>> index 92fb72b56f16..dd81d2133aba 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>>>> @@ -655,18 +655,24 @@ void intel_vrr_set_db_point_and_transmission_line(const struct intel_crtc_state
>>>>    {
>>>>    	struct intel_display *display = to_intel_display(crtc_state);
>>>>    	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>>> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>>>> +	int transmission_line;
>>>>    
>>>>    	/*
>>>>    	 * For BMG and LNL+ onwards the EMP_AS_SDP_TL is used for programming
>>>>    	 * double buffering point and transmission line for VRR packets for
>>>>    	 * HDMI2.1/DP/eDP/DP->HDMI2.1 PCON.
>>>>    	 * Since currently we support VRR only for DP/eDP, so this is programmed
>>>> -	 * to for Adaptive Sync SDP to Vsync start.
>>>> +	 * for Adaptive Sync SDP.
>>>>    	 */
>>>> -	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20)
>>>> +	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20) {
>>>> +		transmission_line = adjusted_mode->crtc_vtotal - (adjusted_mode->crtc_vblank_start -
>>>> +								  crtc_state->set_context_latency +
>>>> +								  1);
>>>>    		intel_de_write(display,
>>>>    			       EMP_AS_SDP_TL(display, cpu_transcoder),
>>>> -			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
>>>> +			       EMP_AS_SDP_DB_TL(transmission_line));
>>>> +	}
>>> Pretty sure we are expected to send it at vsync_start.
>> Hmm.. then do we need to move vsync_start too similar to vblank_start
>> for optimized guardband?
> The vsync pulse location is dictated by the timings.

Hmm... then with transmission line set as vsync_start, with a reduced 
guardband we might need to increase the SCL so that vsync_start is more 
or less inside the SCL + guardband.

So, if the panel supports AS_SDP while optimizing the guardband we 
increase the SCL for this.

-Ankit

>
>> If we do not move vsync_start, and set the transmission line to
>> vsync_start, it will never fall in the region SCL + guardband with a
>> reduced guardband.
> Only if the vsync pulse is early in the vblank. That's up to the
> display.
>
>> Meaning effectively the guardband will be full vblank length.
>>
>>
>> Regards,
>>
>> Ankit
>>
>>
>>>>    }
>>>>    
>>>>    static int intel_vrr_hw_vmin(const struct intel_crtc_state *crtc_state)
>>>> -- 
>>>> 2.45.2
