Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A121A9F257
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 15:29:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BC9110E4E6;
	Mon, 28 Apr 2025 13:29:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iz3EnfCK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8432B10E4E6;
 Mon, 28 Apr 2025 13:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745846947; x=1777382947;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PqIwinxQoR7Y+MEC+wWsnd5WCdzuOa2scNmNOe89GWM=;
 b=iz3EnfCKKXV6sd6oXGSlpQgaz0KmsHJMncMmz7Xr9W7jK1NO8pmo5OQe
 up7qq4Vij0/pKHo0/JDdKytJOYLOgnVjhg2YuhSKPc4vd9CEIDAIFvyT6
 /vykEixNFfV2lnishadiKCGPayEQSkjvEvNiORARRKssGiZCPCq0hujbe
 I1t1qNqifvdNPTqrnjDUHNkI4Wt5zmCrR4ox/+TD07YwRLVLox93zsn2/
 +qS3gIjn7zsjId933vrb1TTTY6Xd3SIXg4hgL2a+LDs/Utl1e21qhFFVH
 YTGQg0C2bul3seWt4ur5BzCIhltOzKtkzN5B0q2Z4ffjBwFT6wKHp0j8y w==;
X-CSE-ConnectionGUID: yek0tM4XQYCORib67mliLg==
X-CSE-MsgGUID: o3ka60ROR0usUQiX3PO6Zw==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="47526942"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="47526942"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:29:07 -0700
X-CSE-ConnectionGUID: VVOZSOwFRESW2XqnKncEBw==
X-CSE-MsgGUID: EEAL8y08Rk6UVsazwXTh+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="138334387"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:29:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 06:29:06 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 06:29:06 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 06:28:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UqR141bja00RC09vTd+dN2p2ZY347JXcrzngRAipmw3CqBN/ACxZPgQw+9L76CddmZ86/ajDcl3OOZC3wE4Qq1Vzk5L4zUKzq7Xmw06odjlaUPY0Z77UyLKhtd+Mi3bmFK7ScX92A9rHTUcu/0k4srJPzh3bps/Q8ZGdqWAuPxXFp6YlXh2fHOnFHSog7cytG5SVhA4UE8ISJLR01AfQpA6fAEu++n7lgPhr8oaBAPX495Is9IDu9a7wBLbcxfl789BDORqiG2/lh1mgqfMfP05xU3akl92gqItbz/3302uRscSShilrDtWSwbuzRpwyblHQCLk4f9imoda0OkDGDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qQiSciJ/Cs8Iqvis6FzcC+297d8WFOVBiM3O01NO5s4=;
 b=dK3YemTA1j6nOqhmkTK8+WXagIDtWplc15tRltQwFu6HR5CIA2Ec6s1Mim23hR7xJb5j60UCFmuvklEwDXa8fcJs0rg+glPtnLg6eOL+f0g4o5gkL3di6r0IDFOB92VXehr0Ok5SR9x/3SIotlDSoUS68QqzwzueDLzs9EYFBRO1YLK4+IR7huQBGhtj4p7lAlUiJ/23TwKF0xxv8vQTb6dIh3wRD+ilMIp1/L0XuZq8aTjcjaUjYphby4XXej4mt7YCHMtk4IYXNWpixIonnebzrqBzkwfukZePHZoOBsGz3oO62QyQeoYeNlkbfJ8PQh3Gwlf14d8+OhwyX6Im+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB7246.namprd11.prod.outlook.com (2603:10b6:208:42e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.29; Mon, 28 Apr
 2025 13:28:33 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8678.033; Mon, 28 Apr 2025
 13:28:33 +0000
Message-ID: <025998d1-da21-4217-89db-d902cffdb39e@intel.com>
Date: Mon, 28 Apr 2025 18:58:27 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 08/15] drm/i915/vrr: Add compute config for DC balance
 params
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@intel.com>
References: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250428062058.2811655-9-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250428062058.2811655-9-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0044.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB7246:EE_
X-MS-Office365-Filtering-Correlation-Id: 44d0abbf-44a6-497c-6733-08dd8658923c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OWFoTnBtTkorTHVXaGhmWkhhbGRmbjZQRzNLdjdOcGlrTHJJOEFCZmN5ZWpv?=
 =?utf-8?B?WUZMMU5JaGdWWFhDKzhtMitrR3Uwb3NNY1VxUXVYL2YzZE5IQ3pwZjB2MWFQ?=
 =?utf-8?B?c3FxNWNndTNLLzdXSGY3REE5NFI4dmtZdnROMWg4dHVzdTlpL0YwYVBPOGN1?=
 =?utf-8?B?M3VnWmMrZlBiaEJQS1ppcVp3L2IxYmVhR1JnZmtnaUNkL1pGbHFpRjRsTTJL?=
 =?utf-8?B?ZGRPeUJoTDVFVjlmeTFWWXgzcjR6c3p1Z3BFMXpFcWNpYWt2WDN2RlRFeGE1?=
 =?utf-8?B?bUZEb0FmV0JxM1lzNWNKSjY5anN2YkE1UWNlTWxnM3g1N1dyVkNVTlRkaW0r?=
 =?utf-8?B?N2g3Rld0eklUamFTMFFxZkFqT215Ylp6QkFReFhwUk41UmMwTk8zZUhmbXhL?=
 =?utf-8?B?ajZ2Smkra1JVbGRWRDJlTHBtRUkxQmNKV2MvZGp5R2dDcktCcG1LcnRmNkpn?=
 =?utf-8?B?WHhlbW8wTHJGMGNpT2ZJKzVRZXhUbnZNbjU4SkRMaFFsckZ0ZFZaZUZIZm1j?=
 =?utf-8?B?TkxPZHh0cCtVMlZlSjQwVWtyRFR4dHZWNFVicklXZHpGenFQU2NKTk9nQ0Vt?=
 =?utf-8?B?eXYwNW9xSDFHNGxoaTYzWU11OHlqR0dRcFNQNmROYy9XSllCMDJSbnFleDg5?=
 =?utf-8?B?MkFaWmg2VERjdktBUW5RQjhhb2lGK25MaGFhZTdWMlltSTUrVWtZMDNiMFRl?=
 =?utf-8?B?VnV4U1lKMjVmMnBKcDRBMitWd2F5aVlMZXR3V013V0hZbDZZemQrOTVSV0ZG?=
 =?utf-8?B?TFlSaTR2ZW1RbjlWeUtoZE8rNW9hSGtoSDZ1dExiMXExNnBIOUZFNTdjbnV6?=
 =?utf-8?B?NzQ1engwVXkwY2RudFNKNGl5NnpsUEFPSWQvcDhIdjBmSDYyZkRybkN5OFp4?=
 =?utf-8?B?Z0NjRk4vYUo3OE5LUzBwTlpVejczOVoraUp3bWRLZXhaWUxndnZoTEtDNFFm?=
 =?utf-8?B?R0NJNlRGbmMxMVhhblpFUmM3UlNaTzF2c2FiUG1heFRyaDRRY0hZK3ZjT2FX?=
 =?utf-8?B?SXBhYkwzRlZvSmhFVHJIUEppanhqUEFSQmhILzJueW5TTUVXYWdoc2Fkb0Yr?=
 =?utf-8?B?YmQwak5xdm9ZM3VIZVdPa1ZScmVTeUpZaHEzeDUzYlhpV0FvNWxqQmxXOEZW?=
 =?utf-8?B?aHVKZ2Nqa21RNE9lcndnV3I3MC9zTkU0OElrdXdXeXJ5K2FiaHl5VFN2aTA4?=
 =?utf-8?B?a3dVcHViT3ZGNUY3TDlnRzJBN0RFaHIxalhjQWNVOTllVy94QUdoMmo1VTJY?=
 =?utf-8?B?bXhKazJLTjZwMTZ4bFdrWC9iaUhGQ2pEWTVEOXkrS1kydzZ4VzViNEtIR1Js?=
 =?utf-8?B?TERxZGNuU3A3ZisyajlFMUUrb1BFK2F0bW5BZndZZjdadTc0R09oVVVRUjR4?=
 =?utf-8?B?RWUzUi9uN0hzYWQ5d3c3WXowR0pQTkwySVVpbVozdEwzcHJ2YVZOejBFaFYy?=
 =?utf-8?B?QnZRSzluUHpnUjlNMlljRzhwV3lKQ2pNMDYrTGNJSjduOCtpSW45YTRDNnRG?=
 =?utf-8?B?VS9GcnhjcW42MThDRTNaNjcxMHhqREdKVjVtUENZdVlLQWhtS2dIUFB4U3hy?=
 =?utf-8?B?N080V3dFLzZRWHJVamNPSUZqNkVrR2gyMzlacHEzUXpybnlvZnlSdElWOVFZ?=
 =?utf-8?B?aHdwNk8yaS9RS3BScE9hQUhJMzE0aVE4RWs3S0hwbzg3Ly9HaDZ3c3BnS08z?=
 =?utf-8?B?K09QSG5zYVB0UGdIMStRUEtiZFBSbmFkckpMbDVHa1FPL3VTQm9ia1ZwN0or?=
 =?utf-8?B?Y0taQjhranExYloybzdRaHpvUDhKOXB2VEtLS2RBRWtlWXRXd0Z3SmdVTzlu?=
 =?utf-8?B?Rmt1cm1EeWJzVFhGbm5VNE1vb1A4NWUveFhxRmxYU0FudmI1SnNHRWZyazZE?=
 =?utf-8?B?N0ZyY1pqOTlwb0tNY2NWYzlsQ0luNUo4M0hpN2FqRm1WblNjTVh1MWlSYjJV?=
 =?utf-8?Q?NByovY0QwyU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RUdZTG95Z1kyRml0VktnUHFJVFJpSTlHT3I3UjF0VWpmVDBWNXhGTFNUMVRO?=
 =?utf-8?B?SkloamhlVlJDbEN6QnEwNVFwamlxNytqMk84aHZHNjdOd012TVhqVXNTTThy?=
 =?utf-8?B?UjVYY3JHNTBRUEV4WDVwejRLNjJEd2lQcm1yRWhsSEoweXZSVkFycERyTHdw?=
 =?utf-8?B?am9FVS9CZThKMVFhZWd1QlVieXZQdlE2K1o2TGU2aVhkQmtvSktKUHZHTjk5?=
 =?utf-8?B?Q2FOZHltK2xoYkg2dWI3cGZBd1didHAzdFRGTkJQaHc2eGErOGhFcGU3ZFU3?=
 =?utf-8?B?Y2U4akJVM1JSeVdhL2crMmxLNFdib2hRaHcrcDBKSTBlWm9tczUwcFNZMGhE?=
 =?utf-8?B?VElSNjh2MHZld2NNdnE3Sjd4Y2dsNDExNEI2Sk51cTJkZnhhbFNESnEzbk9Q?=
 =?utf-8?B?RTlOd1hSRVg4UkYvVis1RVB1a3F5MFFoZk4waFRSa3NQZS9GSU1la2ZvR0c4?=
 =?utf-8?B?NlpmcUtES0FOaU1SclAzYStmNzFPQ2VsN1BjcnhFOW1OU05xWE5ab2xEMHk2?=
 =?utf-8?B?K2FET04weE9TNVI0YmhaYzRmd2FBOFd0Z3JoM3RvUFF2di9TTDBKVlV6MllJ?=
 =?utf-8?B?V2lPQ0kzUHdwV25hNjVGbzRFdDdTNmRjRFZFaGZsUWFXczArYUl1VElMVDBF?=
 =?utf-8?B?K294aGFNYWxLSnV4bDUvaFhpM1E1bWV6eEwvQ3hBNWd0TVlRdW1kSWpFL0tp?=
 =?utf-8?B?K2ovZUZKdk1keEhKVkVlekxZTjlDMGR3enE5RzRXdzR0QzNOS1RwSUdnZEFC?=
 =?utf-8?B?ZWpVWEhjb3lVcTN1K1RQK1NKOGVsM1ptY0s5N1BmVmJZNnF3NTdmSlRjUkR1?=
 =?utf-8?B?dk50cGtDUnlQRTYxWHhacVFranU3ejZwVElSZVhaVGFVUXRJeWloeDFkVDMw?=
 =?utf-8?B?OFp4VHlJSEVGV3pqZlpLQVQ3T3lLNVdOVEZQTjgvdko5WVpqeHFmSjdsa0RP?=
 =?utf-8?B?SkFVOHUwZ1VnZHFmUXlocGc1UEM0K3VKb2pXNjRJeEZDaGVBSElSbkx3Z2pp?=
 =?utf-8?B?aWk4bGIvQjNFelVZSTFTZWt5WTBQWWtDNm11cFlLSjFiR2d4cjRHRGJ3RjZk?=
 =?utf-8?B?S2NZT3lZcnphL3krSkM3VGhqZEJ4dXpJL0RNelVWbU5RU1ZFaWRvZVcxTWs4?=
 =?utf-8?B?N3BTMHpVTHR1T0IrV3R6dkY4Q2hreWl1a2dDSVl3YnhKcjNiTEQrWS83dkd5?=
 =?utf-8?B?RENJVS9aZ2RhbFpyZVJ5bmdrb3FCUE1TS1dteEZwS0U4YmFjMkcrMy9tZElH?=
 =?utf-8?B?OG02dC8zOE9Mb2E5a01QTzJWWWdvd0kveVBGc3U1NTNqVnNoUzJXR0FtcGpZ?=
 =?utf-8?B?Z25DbWczcVUwU01Ud0dIbStkQVBmOUt6WVB5OVdqcGlTb2ZZaFA0SjN4bTBa?=
 =?utf-8?B?WngzUlhoTDRIOTd6L1BvbGVzVGJYdEpiZmZKWG9MeXdoUWVDOHUvTjNNOEpq?=
 =?utf-8?B?c3dzdWMrcFFEL0lTUEJtcmVTSnp0MnNmMUM2aTFONktoMXhGb0g1SzZiZnMw?=
 =?utf-8?B?ZWN0c25FVkoxclZibkJ1NDhDb3VNL3AzZFg0ajZrWE9OOGd2ZWZNQXg1UTRw?=
 =?utf-8?B?NDhyYnQzaFFucVBHMEVSSjd1QXh2ZzZ2c2hVbG0wbXJqYW0yNkM3UUdOa2ZU?=
 =?utf-8?B?VysvSmFCUXI4WUxzajlNUFpNc1ByTndrTzRPeEpLQUhZd1RkbUkxMFJ0ZGRl?=
 =?utf-8?B?d1ZVYm95TmNsWGtseXdpOUl6UFVZOHErUkRMTTZWalR1TDJFSUhmcy9rVFR5?=
 =?utf-8?B?cFVmSTRibEw0RmRseGhTd2FnbVFwNEwxQTlwR1Q4czUrbXdNRDdxS0xOa1F2?=
 =?utf-8?B?d01ZMmRXa1AyUCtLYXJkZWdSM1RoaEFPNVNTNkpBZVJ3d1VobVRYL3JhcFZG?=
 =?utf-8?B?b2lqSkVob1VGQzJpZXA1UHlOVlVUaUFKTy9wejJiZHZvMnlCeisvWWJyRSs2?=
 =?utf-8?B?ZkZ0aVl3bUlSYmpVMGNsN0NQblhvZkV4STh5bHBkUUpOenM0VHI1OWYzczVM?=
 =?utf-8?B?NXROYkxTQ09CWDU5bTNmVVh4Qk00R01yRi9NTFRURC9EYU92R3dPdXRkVWxp?=
 =?utf-8?B?U25MZ1Q2cWhTdWliMjM1S0xvaXlMamFwOGZEVkNOK2ZSbFlsZHlCbUJ3WDJM?=
 =?utf-8?B?cFR2YkhlQ3pDcHdkL0NxanZzZTlhWnpQSXFrcE1FQ1NNSG95V0QwZC9JTXRi?=
 =?utf-8?B?aHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 44d0abbf-44a6-497c-6733-08dd8658923c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2025 13:28:33.0129 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q7wV7Zb9F8Khvrs0FIugVcDcyV8BMtEAPbVdZDSV2hlNL5GensaAMouzKThC+NFsNvWBQ4LecoLF4HUGNvmbB9CxPKmOn8ISjWlOVN1MaLg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7246
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


On 4/28/2025 11:50 AM, Mitul Golani wrote:
> Compute DC Balance parameters and tunable params based on
> experiments.
>
> --v2:
> - Document tunable params. (Ankit)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 25 ++++++++++++++++++++++++
>   1 file changed, 25 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 55923eadc3c1..bc99701be2b5 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -16,6 +16,13 @@
>   
>   #define FIXED_POINT_PRECISION		100
>   #define CMRR_PRECISION_TOLERANCE	10
> +/*
> + * Tunable parameters for DC Balance correction.
> + * These are captured based on experimentations.
> + */
> +#define DCB_CORRECTION_SENSITIVITY	30
> +#define DCB_CORRECTION_AGGRESSIVENESS	1000
> +#define DCB_BLANK_TARGET		50
>   
>   bool intel_vrr_is_capable(struct intel_connector *connector)
>   {
> @@ -409,6 +416,24 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   			(crtc_state->hw.adjusted_mode.crtc_vtotal -
>   			 crtc_state->hw.adjusted_mode.vsync_end);
>   	}
> +
> +	if (HAS_VRR_DC_BALANCE(display) && crtc_state->vrr.dc_balance.enable) {
> +		crtc_state->vrr.dc_balance.vmax = crtc_state->vrr.vmax;
> +		crtc_state->vrr.dc_balance.vmin = crtc_state->vrr.vmin;
> +		crtc_state->vrr.dc_balance.max_increase =
> +			crtc_state->vrr.vmax - crtc_state->vrr.vmin;
> +		crtc_state->vrr.dc_balance.max_decrease =
> +			crtc_state->vrr.vmax - crtc_state->vrr.vmin;
> +		crtc_state->vrr.dc_balance.guardband =
> +		DIV_ROUND_UP(crtc_state->vrr.dc_balance.vmax * DCB_CORRECTION_SENSITIVITY,
> +			     100);
> +		crtc_state->vrr.dc_balance.slope =
> +			DIV_ROUND_UP(DCB_CORRECTION_AGGRESSIVENESS * 10,
> +				     crtc_state->vrr.dc_balance.guardband);
> +		crtc_state->vrr.dc_balance.vblank_target =
> +		DIV_ROUND_UP((crtc_state->vrr.vmax - crtc_state->vrr.vmin) * DCB_BLANK_TARGET,
> +			     100);

We can make the longer lines more readable with a bit of formatting by 
breaking the line after multiplication or at comma:

                 crtc_state->vrr.dc_balance.guardband =
DIV_ROUND_UP(crtc_state->vrr.dc_balance.vmax *
DCB_CORRECTION_SENSITIVITY, 100);
                 crtc_state->vrr.dc_balance.slope =
                         DIV_ROUND_UP(DCB_CORRECTION_AGGRESSIVENESS * 10,
crtc_state->vrr.dc_balance.guardband);
                 crtc_state->vrr.dc_balance.vblank_target =
                         DIV_ROUND_UP((crtc_state->vrr.vmax - 
crtc_state->vrr.vmin) *
DCB_BLANK_TARGET, 100);

Regards,

Ankit


> +	}
>   }
>   
>   void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
