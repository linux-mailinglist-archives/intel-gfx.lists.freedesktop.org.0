Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 665D5ABD2C4
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 11:09:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0EAE10E146;
	Tue, 20 May 2025 09:09:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mXWbIyLr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AD5C10E417;
 Tue, 20 May 2025 09:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747732171; x=1779268171;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=aDQR2EP3ZgN4XIZ471VfVDP0lgVG3xuDMheAW0oObRY=;
 b=mXWbIyLrN6mAR6EmUhare+Gdw4OeF90Vti31AsbGZZmfj1i/vziPGPMm
 qCvGUve6ecQYtQSIY5YLEDDcolM8m3UUqXjIXiS2L2Oe8onTzPQrHOgEU
 i+vXcXYk5LlZkH/XK+raswhIqIEvSV7uJhtVeAS0smu3KAXaQeSHpntAR
 6INKDTkT1wkL5pXpfoK4My6OnP8D4NmHKRzzI0KRIUkkklRpNBtQnuie/
 7L4stDMm0hVzKkk7Ii5KVTmGg0l+kSNYXmdER0OYNKhgWcLA8PrUKI6wd
 KGfZntqiOhrMRXgEfaGyJ8lq/vevZYT/Q4pEJoSsrZlegiXjjZpNxQakt A==;
X-CSE-ConnectionGUID: +Qv20d11Sribw8Y6ClR+jg==
X-CSE-MsgGUID: fgLF+mc7Sna5atpUiM2YmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="49558182"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="49558182"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 02:09:30 -0700
X-CSE-ConnectionGUID: SVbKAAn9TqS7liSxD2eUgg==
X-CSE-MsgGUID: 3YmEo57pRn28tSUZ4vofxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="144621083"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 02:09:30 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 02:09:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 02:09:29 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 02:09:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rgl4r7QverZ5l3kAX+dNZuvVUiMt3uzpfzE3SLRISGI9QDH/pcvSVEWMDLRguKU7Z23f+041i3imvQ0JQkrPuiudXusl1kI7ZrzCaNU1RwZ4PWfMvG4ggrPndCl+SZlF2PJTNjOmqxAIpCa7VJJrK1gcRrAzFToBK4CB331PMriqFvUdDvhXzoc7PF7TDWJY5NZ6w8cgnz8zop1WQt6tCHpHmMq+pkd75GuYSNh8KBzQwxpTRZTYNszGMNScOiC4KVQRF35ZMO7DQIDNiKL0bZbVCQSvozmx152b2GmlfpRaKPjo4TA6x/IRUdr0yyYcAvLswcKUoe7V2RpzpPl4ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OiGImULS/9EXlJK5H4aHdHa1XOegiXjJXNYbflD5H2I=;
 b=JgcGh6wCeRBBQm5n/eJKQoId0FTrn6hbz8Sh9S0mdRZew5FPFk/RL/R3aerosNtGk/oD/4WCBK6FuxUgy+7/C7rte/nOtGSgUEhKrVENyC2L0HjodNNC6KtqnJijyJ+NdmuuFeZxvofYjYTrzuIzBQvmLkF4FgsGGfZ9xmR4BnuSXfeJECq6BC1VOKztErIlYJ7ELOWp9aC56y9EXxpAKxer8Cg58ImPPbPxSXtq2UQezDjmX5kYtbYtk1QuKG37bgULm0kITBL2nEwZnocDdAIDW8QFlLXbNCOPkourYUWvd6Z9hMlLn1CG1M5OG77G8SjFuSYEkWD3q+dZmRl1KQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN2PR11MB4519.namprd11.prod.outlook.com (2603:10b6:208:26c::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.31; Tue, 20 May
 2025 09:09:27 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8746.030; Tue, 20 May 2025
 09:09:27 +0000
Message-ID: <76442d63-3ad2-4e14-bb7e-6794089cbb8c@intel.com>
Date: Tue, 20 May 2025 14:39:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/11] drm/i915/psr: Fix using wrong mask in REG_FIELD_PREP
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
 <20250502085902.154740-11-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250502085902.154740-11-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0007.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN2PR11MB4519:EE_
X-MS-Office365-Filtering-Correlation-Id: 3f0e569d-365f-478b-19a0-08dd977e054d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SkVIUmd3NkE3TTNHNXVlOUtZdFJDYWZtMGgzZHoxdXYvWjdKUGF3cWZNM2o3?=
 =?utf-8?B?VlpSQzJMeTFUWmEyZXdJS2trWEs3R1VVYWpRbzYxc3dTREJQRkdod2Q1L21u?=
 =?utf-8?B?eVJWd0lrbTExRDhlK2F0REZTc0VneUZQK1J0V1M0Mmo4ZjhJQWJ2YllFdnZI?=
 =?utf-8?B?Smh5anY0cjJnTXFxK3lLZHJMd0txV1ZpV1RhK2MzcHk5c3NYaUprck1SMjAr?=
 =?utf-8?B?OHp6VjVkM0F1UU5weTZaVUFyK2FqNi94SCt1bFNkTVJNVWtiKzJmN003YTEw?=
 =?utf-8?B?OWE5WitMTXVKRSt5bUwvcFh5R1VIVGtDUVBGa21zbFdzQ2ZiM1liNWxnZk5o?=
 =?utf-8?B?ZkFadWxzczNSWnUzRDI0ZENSdUV2bHp3WnZ3STUxdHZNRkZRK05PNXBDSzVS?=
 =?utf-8?B?UnFVRndDOHR1VGVIVU9OUERFOEt3Ym5ZNlZOc3VFdjJHRTRpOEZLUDlaNXVq?=
 =?utf-8?B?K2xydGQ4cUdOdU9DTUEvQkgyeFVFN3JnZW1VQ1JWMkJFWm9LeElHOEdHYlZn?=
 =?utf-8?B?K2prTis2Wm5mYncyR1cwcmx3RjJubXNOclJvMmlyTEVBWGJoTFRIaVcydWNt?=
 =?utf-8?B?b1RtYUFGdHpkRGNiaVpNUXZBSXEzQk1WandqTWREMWoyeGJYQkN5QUU2Wjc3?=
 =?utf-8?B?NFFIdmZ6M1FoTnlwSlRQUW43QUFnbWo2a3l1K09wYzdzaFNyZDROaU1kRkxn?=
 =?utf-8?B?WG54KzlvUUh6cEFUWEVsdlBublBUVUtqcE9wbEwwQUx1dnBwZzRTRmFaaERS?=
 =?utf-8?B?M0V1MFUwcjhFMWJ0VWJlak1ZNjVNMWk2ZWR1K0tLT3BSRGtkU05JbWJmb3lT?=
 =?utf-8?B?WHF5QnJzdXp2ZEZjVmRQQVA1elBqdkhnN0xBUW5DVnl1eUpDZ2JmZ3UyVUly?=
 =?utf-8?B?M0pxK2tZVUNHL0toUTJDc21DRUdDOE9kTnp4L0VIQzFvTGN4VFlCVk5OS0lL?=
 =?utf-8?B?OHM3SFc4SjQvMjQvL0ZqK1Y0ZG9uR25hZzZGdmZ2RmN4OWdIUDE0bUJwODRR?=
 =?utf-8?B?YXh2Z05QSzFzdDJXcHY1NWg4MXFkYzNYK1QxYWY1VDhubUhWRC9ZeFB3d1VL?=
 =?utf-8?B?UlRkRS9raGNHdjFjZGFtQXpIMUZTbzFUaG9tOEd3bnFabUVRUytEN0FkdStN?=
 =?utf-8?B?NjlRWVdHNlRDNk8wNzcvQ2N6a1R3aSsrL0VxUDBiOVdsejljRUE5dDNXS3VC?=
 =?utf-8?B?TmpjMFVOVTUydFlQWHpFdTJnSFdvRGltWHFrRElNU1Z3VWdJR2cwQUpYazVt?=
 =?utf-8?B?eGNDOHJ0MUMvQ3BNK014ekY2THA4M2RxcDNWbGFIOHNacUorcHlBVFRIY3JK?=
 =?utf-8?B?T296TkdXUHQ5UVNnT2huMXMzRzZYUFF2ZFVTNExLeWZiY0VmTTdFSnc5TUhS?=
 =?utf-8?B?YUFkRDZMaEtTYy85cHduUUNsblUzS2hVcFFiT1E4MG1GWEsyZ2V6VkhLU2Z5?=
 =?utf-8?B?TTE3UzlXOUt4RE5BZGxTamEyQXZYMlVmSHB5YTFVSFIzelk2a29aSEZkWVh6?=
 =?utf-8?B?d01EYnYyK09NN2JIanVLaUh0YWZLdW01OE9PellmVHNCNjlqSTE0ZHNEYXNh?=
 =?utf-8?B?aFNqSExhVTQvbGRwZkVNUlp1azkyTG5Bbko1ZDJCNnkzV1cvemJRNjBzQjZo?=
 =?utf-8?B?VC9BK1M2MVJ3bUhGQnVsTWhWemFyV1NkNDNsbW1NeWN6U2hvSDh4UE1BNENv?=
 =?utf-8?B?a2NzbjBZYkRUZzdSNTVEc1REdjVtOTI5RTRlMTVER2wrcG9YRTAzVEtLdGhy?=
 =?utf-8?B?dGNKdi9DUE1TRks3bDFpVHk4YmpsclNFWjVQZXQxRERCQklQUjdGOFlLZ25J?=
 =?utf-8?B?Q0NlMFVBSDVUbVJHUXl4bGRjcUtZOUhQUWZQaGJMb29OUW5wTllaTXk0bHdY?=
 =?utf-8?B?NHo3SGtwbjd2akl4VW56QyswNzltK1graFR4TVo1aXVBY1Nka1Z1TG5pR3Jj?=
 =?utf-8?Q?n41GYNjcAn8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T0RUS1AvbGh1T3dmMG96YmNHSXpCVXRyKy96S2xBSGJaSFJwNHNVYzVmaUpq?=
 =?utf-8?B?ZkxtTlNjai9UODFZekxBeEczSjFXdWlobDAvcGVGdmVkajVCRHJJL0tYYkxy?=
 =?utf-8?B?Nk1VKzBSSVpDdmROVysvMjNaOFMyVC9Ib2ZvZTBYV3hCSXNPMHRWblZTRFdI?=
 =?utf-8?B?bTl4TmJVQ3NhT29lSnRtTHB3akJiVS9XMkczdEFFeUNnT21CcTJYMEd1OTAy?=
 =?utf-8?B?Ly81b0orbHZKUnVIaE52STRwZ05EK3IrakFyTUFrTG9jc3BUaFdCcG5obVpQ?=
 =?utf-8?B?ZHpxYWk5VGZwSVJsSituQ2FocjgvVkRnTG4ybHJFSk00U2xPUEhSYTNTQ1hL?=
 =?utf-8?B?WVovdHh4bGJOUWlvem9SK29HY3loa2Z1RGNIMzNDY0NacjM2K1FmQVA2RFND?=
 =?utf-8?B?OU03cUNoUWpUa0ZoTEdnYkx6bnEweHgyZ2U2NVdBdEZFRkdNRWdJYXUyakFw?=
 =?utf-8?B?L25WcjJ1dFdxU1hleVdXTlNBOU45UURzOElLVS9yZWlPVUlneGZTZ0ZKQnJX?=
 =?utf-8?B?eVNJU2tBWmJXQlA5RW45TDRHVjJrcXZFTXA1a0Y3ZEc3RDROTHFCTE03NG9I?=
 =?utf-8?B?T2Viblc4UTM5RU1VVmJ1UmtDWE91UmhGa0kwR1NKZmExZi81YWFoZ1hYRUJN?=
 =?utf-8?B?d3VYeFBoK09abXk1UWVDWGNXTVpjMnM1TlFUQmdOb3lpZTlza0ZKWUFqNkx1?=
 =?utf-8?B?L0pVWXp0OXErRkxaaTdJZHdQVXhrQ2N4eW9ZTVU1TlY3YzROTURoeHVJRGJZ?=
 =?utf-8?B?VXMvSkVRT2lOdVRxdXk4VlBZcTY4RjQ2V2RqZ3dML2RXVXd6TnM4TXRUQW5k?=
 =?utf-8?B?OTFDS2U2N2NacW5TWU94TElLRHYzZm9LNkh0SnhkNi9aaTk3M1dnVmRoTkRu?=
 =?utf-8?B?Vm1BQVhRMGl0NXJCRFlHLzlPVFVDa3V5L1l3QXZPSnFFRUZBMFZIWFdyb2JL?=
 =?utf-8?B?OExQT0w3UjdZUlZWaHhQUVU1T1cyZXNxVit3S1RtQnNtVUVnRENlWlNTYUJM?=
 =?utf-8?B?OFBDeVpiUlhqbS9XNmtrNVFmNSs3c0drMTAyV3lVcUp5TTRkZDRnT25SZDc3?=
 =?utf-8?B?dGx4cTZHNlNMVENVUVI5TnVQSWFON0xBdml2ODlLYThCRVFYdGt2amI5elN0?=
 =?utf-8?B?T3dKeFVKMS92QlB0TmpidDlkNVBWY1prRUZOYWVoMFJGNGxEc0JQNkNUbi90?=
 =?utf-8?B?V1RBQ2pzRitwaWdvUEJJbUhPWmd2QzMyK0ZhVzAvNlJSU1h1RmVqYjFLRFJt?=
 =?utf-8?B?VE5lMmlrVXMwZEpuQmlTbnhUZEQ4d2tvNC9JWmRua1krMTc2SXVrUlphYjEv?=
 =?utf-8?B?a1FualNiWWtnakZabTRVT1Y2anhXbXJkWjVia2MzZXI5SFRDOS9hQVg0Y0VI?=
 =?utf-8?B?ZjVISU83L2J0dUpWSlZZNUIvMXJFQXF2MnV6TmYvbFdPS0RUK3plR3FqTXZB?=
 =?utf-8?B?WkQrV2VDQzMxUlcxYkE3Ykw1NGRIV3JmeGRKV0dtUTN2SGVjK1daaTFLek5N?=
 =?utf-8?B?aTlnV3h6NmVqQ0Z1eE5QSFVlb2hVUSt6QjBkWDFycEdGTWJLREVlZEdKWHg3?=
 =?utf-8?B?U1drZTQ3VW0vblBDbjhRZ0ZtalAvYjBIMkxUUVZKaGxwSHZXYXNteitNblBp?=
 =?utf-8?B?dHlaTmRQa1hRdndpVXZVUFJBMXBvYXl0R2FvMVFoNmpRWDFDRnFMTFJ3MzBh?=
 =?utf-8?B?akJSQUJqTjNyT2ZQOGFJd2RMTVpTU0l5bWRtMTNBQytMZnlwQWM1TUJ3V09s?=
 =?utf-8?B?cmtnaVJUZ3Q4bG95WkJmRU5pY3NMQjNLODB1Vy9JOGRZQXdrUk9jM1B4NkM2?=
 =?utf-8?B?UVF4Qk9zMVdiN3BTYW1adng2dXNqL25rN1RKV3UrbmQxK3ZrTzhGRm1DWmNB?=
 =?utf-8?B?RjI2NDlNbnV3eDhYTXgwNjZBbUFoSkczYUhQdjVqQXluWm5WWHdOTGxVUDhD?=
 =?utf-8?B?OEQzVmpPRzVmUDhkbEpod0JBVlZSc3Y4RFhjOWM3ZDlxRTVTUGpWWmpxYlZJ?=
 =?utf-8?B?dXk2NGNPQlV4N3MxeUV3RmNXWEZLYjNZazNHRi9WZ2lxSExYOFpmT3BKZEhQ?=
 =?utf-8?B?c1hFTHZYSzk1OXBMR3ZqSTkza3FxU3FyY2lNZHhBOU5HOU0rMkNwZVdqdkZi?=
 =?utf-8?B?YXBrRTlBV2Q2ZEhOWENSUk5pWEUvU2FWazdyeFJJeDFHTmt0eXRVT1BJSTl6?=
 =?utf-8?B?a1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f0e569d-365f-478b-19a0-08dd977e054d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2025 09:09:27.0252 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5PcbdSZHMOH0xeMhxUF40N5XIn0N+Moq3MjktYjdJIKPcSLXvKHDs/kRPuvSkWoO5Nxmzov5WYo4/BS8df30HdLR6TEF+KqOjcM23i0Eh4M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4519
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


On 5/2/2025 2:29 PM, Jouni Högander wrote:
> Wrong mask is used in PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION and
> PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION.
>
> Fixes: 295099580f04 ("drm/i915/psr: Add missing ALPM AUX-Less register definitions")
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_psr_regs.h | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index aad3ac5f502ed..8afbf5a383353 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -335,8 +335,8 @@
>   #define  PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK	REG_GENMASK(20, 16)
>   #define  PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)
>   #define  PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION_MASK	REG_GENMASK(12, 8)
> -#define  PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)
> +#define  PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION_MASK, val)
>   #define  PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION_MASK	REG_GENMASK(4, 0)
> -#define  PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)
> +#define  PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION_MASK, val)
>   
>   #endif /* __INTEL_PSR_REGS_H__ */
