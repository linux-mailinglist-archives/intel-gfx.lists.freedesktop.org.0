Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A90F5A1BAC1
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 17:41:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97B5E10EA11;
	Fri, 24 Jan 2025 16:41:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UuYVS6JJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A205210E9EF;
 Fri, 24 Jan 2025 16:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737736892; x=1769272892;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=XnWLv01i9D2j8PA0AvKR38eAXeULCPQEq7KwkFdxgS0=;
 b=UuYVS6JJsNU2BjSjqM6mqrvVTxY+3VNobUyLG4TErvfJ+4dfivR15gTC
 0yf3Pc7RPvheY4jOkerTFGZWZC5hFikLLGTmUd3JY1TY6tpk290meRYtI
 KHeDljSJo4uLKPHkveDL7kttIxnzzhc+pUVIzlDv7PuWSA5yelGPl89C6
 2XHerCmfvfE5IKss9uU6xlPvxyAad5Pgu8o+8MhCvXUs2HsvjCV90wFu9
 teULODlSCBOba9mvI4unzgu8og3ZDTcxWTPCZySLWqs8+OuQeGkF2FwcQ
 Om+yvLqwvVEBlhiVyaLpZ3qj42NQf7mCoQ7Ur6wre7xqWW5kCkRK5tuXf w==;
X-CSE-ConnectionGUID: RKAN81fpTcSqLieXfAX87g==
X-CSE-MsgGUID: ugsvkGlgTse+U3PCprhs4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="37526605"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="37526605"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 08:41:32 -0800
X-CSE-ConnectionGUID: deWqJGiLRGSm6f2rtW6B1Q==
X-CSE-MsgGUID: mZX8RIihR723xQ3xOcKsug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112944493"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jan 2025 08:41:32 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 24 Jan 2025 08:41:31 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 24 Jan 2025 08:41:31 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 24 Jan 2025 08:41:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EsoH2A+VVpvcgxLK4vi/1VBsDTV7NLwQ+jEU5iK1LzKW4dq+tTLOqHZgvK7aWtOE38u2KyFzhLIZD4a6jCrrJIV4y83OsjH3/lruHck58fU5UhoNpFw0QGv97UjV5Dq+lVolUnKbi+0P0anGU0Uswlau7RLtNRzXLzqlTaGs15TzdoeeYW+vi1JfKcQk/bpzBiWcug0uTzC4LkqxUCa7mMcyODtf55M2O6bqqS+r6HLYem36+u51zFReRCgMo5SI5Uwh7SyCHBy4EQTUDZaLGkdySRloyUoMR/joCLmWVJlt8Ql0+Yrm8qs+67h/aKJgtgcQTEYhK2+Vh9kCk2AyzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G1wg27PHKt3t5e1VI6TZR14TZ4tM0RDAzIBQUTtG3fM=;
 b=fG9XBTyJ5o9WXEuOhYrl43areIO6Mm+uZF1nCRndCv8gZ4ytnxPfLc2ZF+UOK2I/2OvMGFG14otsU1nE9z8o2uaboGDhwXxrKrdwM0lK6Fp4CU7LGfPBvbmPN2PNxl+vTf6yqTWtto2JNt5+TQhD4hVBtSHpPKtaPD5fcSAn8+u9Y3IT1wvmKbsL0DckwjjBc+u2yKh00CvJ2GjwHtdr/CE0LXmEE7x6nfof6/OgAeII6Jp+MN2DD/tbJ91kbVMAeQvHRQ7GtZ7t8ut+A1D/E0lEuq4gb+OBilTENW0B5DCD0nttmB+gA49Cz56HLjcYIWF0fXmRBEG3feqwG5pgdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS0PR11MB8084.namprd11.prod.outlook.com (2603:10b6:8:158::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.16; Fri, 24 Jan
 2025 16:41:29 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8377.009; Fri, 24 Jan 2025
 16:41:29 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Z5OuxLDHHvEnfcaJ@intel.com>
References: <20250122200355.89389-1-gustavo.sousa@intel.com>
 <Z5OPWg2wZyXcPP_A@intel.com>
 <173772913356.3215.15837611112615353054@intel.com>
 <Z5OuxLDHHvEnfcaJ@intel.com>
Subject: Re: [PATCH v7] drm/i915/cmtg: Disable the CMTG
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@intel.com>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 24 Jan 2025 13:41:23 -0300
Message-ID: <173773688346.3215.15196666599214525133@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0061.namprd04.prod.outlook.com
 (2603:10b6:303:6b::6) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS0PR11MB8084:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ca8344b-8251-43d1-367f-08dd3c95f3b1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SHRjN3J6ZDMzWmx2WHdMTm1MZzdzTWNtem15eU8rWktLNzcyaW1wTENUQXk5?=
 =?utf-8?B?dU5EekFHbnhXQ0lodU1hRXpuempFMVMxUTZ2TnQ1VTFoSU52Y3doTXdIVXBo?=
 =?utf-8?B?c2taVExMTmhnRWVGblJCeGE4YUl3QlJITlVjOHdubjN6R0s1VlRQdzdVK2NC?=
 =?utf-8?B?U21CZ0IxamdtU2I1dTVKYmVPeEczVzFpRVZwN0dsMG1CRE9nekNvb1BZRmJT?=
 =?utf-8?B?ZGN5TFEwbThvNHRVa202UDhnNi9oSWFhWWZqcnF0amdtNFFLSXNQeDBVdDdv?=
 =?utf-8?B?QVFHVnFlSlFrY255WkdUcDZ5QTMxV1lsZlg3UldqdmV1eXFVQlRjYmpQV01U?=
 =?utf-8?B?UEZJZkJDVFdEWGFIYUtWS1E4MVl1ajcyR2xReCtQaVBtNm9mZGFWYVdBN2JJ?=
 =?utf-8?B?NzZIejRvOFgyU2pOTDFvU2NmbVc1eEE4SGZmcmpzL2JsT0xmZlJsY1p3d1kz?=
 =?utf-8?B?bFgxdVZkWWhSNzRCRFlOam5WbjRlY2R5dzdpQlU5Wm41aXZjdmxscExTbk1C?=
 =?utf-8?B?SDJRS3ZnNnJsdi9oMkcxQzlxcFdqUUtRZ283QjBSWUdRUm9jcVZ2ZDJXZ2dB?=
 =?utf-8?B?Q010QmU2MC8rb1luY05OeHJBS0c0MmtNUTM5TDIweEU5aVNaZTc0blA2RGs0?=
 =?utf-8?B?ODNZVGZreHhIM0NDejFnK1hwWnIyZHE0bElZUmJldldZNGpGckYycU12cGtZ?=
 =?utf-8?B?MFFJMlFHMUludk9pQ1p5VVpEdlNSUzVVYlFWTlo0UnNPZzVlNWdqQXR6K0pn?=
 =?utf-8?B?QTRYL09qemNXZm1KWGhMdjZrWDNyb2tQaXg2WXVTOE5Hc2tjeUlJeFk4ZE5K?=
 =?utf-8?B?UWR0THp0KzBpbUtaOTM4dzNWZlR4azdYTk11WEhZakpraGtkbFZWT3lFaDQ0?=
 =?utf-8?B?VndVQ1VvbG84N0FtSkhPQ08valNkR1lmS1UyeFY0TmRkVXZQTzFkY3I1OVVU?=
 =?utf-8?B?Y2dKSEhMZU5GN2h6TCtIdEJnaWxnRVZpM2RJMDF2cDVGSDNSc0FnZ1N0Ri82?=
 =?utf-8?B?UkRIQlZUSVJVcmJVY1FFVFJvZkpzT3E4dUNEOWR4WlRJL2VDY09LaVJ2eDBY?=
 =?utf-8?B?VmxLWjdFTWNqWHk0d3hhdEJ6Z1V4djNmYXJoeTVLb1BjL0R3bElHNzgzTFpM?=
 =?utf-8?B?RTFkMnlxYjZkMzFuU0hiT0svSVI1cDlzM1pHRFQzV1Z4QWpXbGJ0Y09zUVFJ?=
 =?utf-8?B?UUx2ZG51a2RYdkYwbVY4amdEUzVteWswemQyMDVuZmxFWXR0VUxzVDFWQXVV?=
 =?utf-8?B?YkZiY3NNT29WbWNjeFF0MEpsVlN0UGdhTitUanJIQzM3dmNpR3crS3pGMkxo?=
 =?utf-8?B?djFHTTU2NVVjSlV4RnZhcGUyZW1KR2c5L3o3UHZLbW9UTWowbkN3UzA1c3Av?=
 =?utf-8?B?Z2xCemcwOGdGemNsWldKVHpKQ09FNnN4TTR4MGNOdGhvbVQwU2F4SFpNTXAr?=
 =?utf-8?B?c1ZwRDFGN1hSdlYwT3RTQThLRUs5WjF4TmRFRVkrMmRXVTdXMTlneGhEVmp3?=
 =?utf-8?B?SGkwUDdZdTVlYUhKdSt4UGhIZDJxb2txUm5jZVdUZ3RndTNQWWpFWW9qWUpT?=
 =?utf-8?B?ckxEbUxlTlBqM1ViN1NqWU1HdC9KNmZ0ZnNwU1VvVnd2MFJLKy9US0pkSWow?=
 =?utf-8?B?UXl1c2RjVTFOYlEvMmFvMGdrWFBmK0xWS1BrWUQ5QnhZejAxMmlwaGlFY1Ir?=
 =?utf-8?B?K1g3THM4aWRwTFNyby8vaVNLMWg0RVdTN01LM3lIdmtvai9JbktjVzBWeHZM?=
 =?utf-8?B?SEVScmduUnFwOThGelZBb3h5TmI5c1g3a0JjY3g0c3d2QVdOSDVHWDRkUHFI?=
 =?utf-8?B?ekR6Q0ZyS1lxMUt3MGE5dkFwTENRTFJKN0dDVUltNWZ2c01TRi8wbGVTc1cz?=
 =?utf-8?Q?Z6qdUJdyve5g0?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZTlZaGRlZitsZnJsUzNsREphc3R2bXJvY0Y2bWQ0UEFKRWt4QWdzVUpMQjFy?=
 =?utf-8?B?SHZxdVJFejJ3MUs2bjhzRHZQQ3dVMzRWOExrbFhNb1JaV2x0QVF3YWRNSHlN?=
 =?utf-8?B?ajVrc2Yzd3dCRFgvRzJ5NHBBVzBLSzRQTXo0MG9GbnRqQmNQWGZhWXdHRVh6?=
 =?utf-8?B?bm91bG1LZi8rUTFRdHdhNXhJRTdNbUtIdTRNaldBSkZGYThWSXVPU29MWGh0?=
 =?utf-8?B?U0JsTEpsK013SG1MaTRvVGZiMDQvUTVZck1iM3RQcWZrQmhLVXRGblVsdnp0?=
 =?utf-8?B?R3d6RFRmaTdDZHBUL2tUekJFQ05wdlV5OTVFZmh3NHlWaktBMC8rZnlGS01i?=
 =?utf-8?B?TGl4aitlaXpSb2N6UXUzNmo1NWYxOFhzaklCRHJrbFE1aktXa0srbnNoM3RH?=
 =?utf-8?B?U1A2RVhwYXFNTkZKTzJ1Q1Voa2ZhS3hSeGlqTjRrWjFZQlFOdklnNEVKSGEy?=
 =?utf-8?B?TjJRbUoyajMxVHZZWnBENmJjZGwrT291ZE9HOFRZcUV4eDExUitaVEpTbzJM?=
 =?utf-8?B?dThpajFwS25FNEt5TVh3L2V2eXQxZkl2Y3EzZXF2SUVRVGpIeVlqWjk3SHJZ?=
 =?utf-8?B?bGdwVnFoMlNLRzZiL0ZiNGR0ckdTSmRnWjVqQ3g4aG10OEZTSG83VE84aHFG?=
 =?utf-8?B?ZTJXNlBsV0NLRzQ3ZjJZMXV6UUNDdWVJd1ZjeE9YbWxaNlFmbjdhcGZ5aWlP?=
 =?utf-8?B?YzVPMzlGMEZORkQwck1QVEsvSWVIUFd5dkpXM2R0amdLUkJRNFBOZ21XYVh5?=
 =?utf-8?B?STIyMk55d0xwdHVJSjdEeTJmeFZLemk5N0VVNDRaemtYOWdCMW5RNXdDQkxw?=
 =?utf-8?B?RHR1OUtmZXNwcVpGWlY3OVRvY0Vsa3pPdVd1MGc5WXlNTjhkWDhLM1NCY3JK?=
 =?utf-8?B?dlpyMEhBVVNTUmdIU2IzcUkxaHJwN08vZkpTSkJVOHVCZWZZa1dtdkRmdzdS?=
 =?utf-8?B?TThXeFR6L0RhbDZvYXovOCtxRENxa1JDTUwvbytiNTJTK2Y0Z284S3FEcStB?=
 =?utf-8?B?eDk0SEQ4Z2FIdS9hZEpNZlNQN2FwcG9kY0V6T2Rkc2l3RGI0YlJYUDdzVmhh?=
 =?utf-8?B?R2wxRlhzK3dXaUNjSjhJdlhLVWRkamJpc0VpR0szRXk0a3hKZDdZV3FDV0Qx?=
 =?utf-8?B?VEc4dXFrbHVYQ255SGZVTmx0M2ZzYjY5UDNrYytDT0dBZW1lSlVmc3dvcVRR?=
 =?utf-8?B?d1ZwcHlZMWpCOGxzbmkrbXZUVlhkOHd6TERGZ2RRbFlodGNxZkV2ZUk0cWpF?=
 =?utf-8?B?U1NzWlZLbC9HWGo2Wk1hN081NTViei9zMnYremxrMlQvcTZLMWlPYWowdW9M?=
 =?utf-8?B?MWNXZUE4RDIyMGRYSld1T0FNdlQwU0FBRXRsNC9jb3Axek1jV0doT3YwL3d5?=
 =?utf-8?B?Sm54Z1VnK0RwUzNqbFpqNGRBTHRjZXczZFVKazhTRm5GVFlGNFRiajRldllw?=
 =?utf-8?B?RFN5dnJkSVhZc3Ezc2xHVUZsMEUyemJwdENTaXgwcUt1UGIvQ1daOUhzb1I5?=
 =?utf-8?B?b3ZBbW81ZFV2Q2VzdGNGWHVDNUtkYjZPV09QZVB2TnJrSDlLek1xUFA5OEhj?=
 =?utf-8?B?YVpSdms2Vjl6Z08yc2dYVkl0dzJKVFQ0M1F1N0JveWVUc3BISHB4bncxTDB0?=
 =?utf-8?B?bnAzOFVYc2hHL0ZtdVNqU21pVzhnK2JyYmlEN1VHTDlxYitESTdpV0ViMW5E?=
 =?utf-8?B?VndYYUovb3JIN0diL3hPREdLK0NmV2IwSGRBUE15TVgxWkJuNENNcmlBb2Rq?=
 =?utf-8?B?QmFFZm1wT1lNYmQ2b2JscHpWY0YwVFJTbmRYWC8xaWZXZ3Qvdi93ZDVPRHYr?=
 =?utf-8?B?Q08vN3lDeU9UMVM0ZGkzYW51NlFKalMydEFrM0wwU0xGaEdzU3FUWXk4RUtD?=
 =?utf-8?B?bUcwbUsrTTlsdDZtejNqc2FBVStkZEVxOUI3aDlWd0hWZzFkL0hPTFk1UWp2?=
 =?utf-8?B?QUlqRHppWFRzazg3YU9MUnF4YytqWk9nSU55NmpnRnNUd05Pd2ZOUFltYVZk?=
 =?utf-8?B?Nk5TTnFqWlhGNTRaUGZadVlRdkt1eElWVWxENWsraTVCZE5jWEgvMG5SY04r?=
 =?utf-8?B?M0R0SUEvV2EvRjBOQXpLc3h0M0dtNzFvZFZwdDFtczJQbjQ1RnBCbGUzZzRy?=
 =?utf-8?B?VitMOWF3VVVXeXdkWnM1eEZrSjl1cndCSUlBbGYvSm5sOEhqa1hSNCtYbEF3?=
 =?utf-8?B?cEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ca8344b-8251-43d1-367f-08dd3c95f3b1
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2025 16:41:29.6252 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1j8YJPEcNFQAJYgHheu9t/wRzOXykINMx/U/kfmOddn/CxwJ1Ce8cqYGr6bposoELOBcU4pvScfhzlOdUnqsnA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8084
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2025-01-24 12:16:20-03:00)
>On Fri, Jan 24, 2025 at 11:32:13AM -0300, Gustavo Sousa wrote:
>> Quoting Ville Syrj=C3=A4l=C3=A4 (2025-01-24 10:02:18-03:00)
>> >On Wed, Jan 22, 2025 at 05:03:41PM -0300, Gustavo Sousa wrote:
>> >> The CMTG is a timing generator that runs in parallel with transcoders
>> >> timing generators and can be used as a reference for synchronization.
>> >>=20
>> >> We have observed that we are inheriting from GOP a display configurat=
ion
>> >> with the CMTG enabled. Because our driver doesn't currently implement
>> >> any CMTG sequences, the CMTG ends up still enabled after our driver
>> >> takes over.
>> >>=20
>> >> We need to make sure that the CMTG is not enabled if we are not going=
 to
>> >> use it. For that, let's add a partial implementation in our driver th=
at
>> >> only cares about disabling the CMTG if it was found enabled during
>> >> initial hardware readout. In the future, we can also implement sequen=
ces
>> >> for using the CMTG if that becomes a needed feature.
>> >>=20
>> >> For now, we only deal with cases when it is possible to disable the C=
MTG
>> >> without requiring a modeset. For earlier display versions, we simply
>> >> skip if we find the CMTG enabled and we can't disable it without a
>> >> proper modeset. In the future, we need to properly handle that case.
>> >>=20
>> >> v2:
>> >>  - DG2 does not have the CMTG. Update HAS_CMTG() accordingly.
>> >>  - Update logic to force disabling of CMTG only for initial commit.
>> >> v3:
>> >>  - Add missing changes for v2 that were staged but not committed.
>> >> v4:
>> >>  - Avoid if/else duplication in intel_cmtg_dump_state() by using "n/a=
"
>> >>    for CMTG B enabled/disabled string for platforms without it. (Jani=
)
>> >>  - Prefer intel_cmtg_readout_hw_state() over intel_cmtg_readout_state=
().
>> >>    (Jani)
>> >>  - Use display struct instead of i915 as first parameter for
>> >>    TRANS_DDI_FUNC_CTL2(). (Jani)
>> >>  - Fewer continuation lines in variable declaration/initialization fo=
r
>> >>    better readability. (Jani)
>> >>  - Coding style improvements. (Jani)
>> >>  - Use drm_dbg_kms() instead of drm_info() for logging the disabling
>> >>    of the CMTG.
>> >>  - Make struct intel_cmtg_state entirely private to intel_cmtg.c.
>> >> v5:
>> >>  - Do the disable sequence as part of the sanitization step after
>> >>    hardware readout instead of initial modeset commit. (Jani)
>> >>  - Adapt to commit 15133582465f ("drm/i915/display: convert global st=
ate
>> >>    to struct intel_display") by using a display struct instead of i91=
5
>> >>    as argument for intel_atomic_global_obj_init().
>> >> v6:
>> >>  - Do not track CMTG state as a global state. (Ville)
>> >>  - Simplify the driver logic by only disabling the CMTG only on cases
>> >>    when a modeset is not required. (Ville)
>> >> v7:
>> >>  - Remove the call to drm_WARN_ON() when checking
>> >>    intel_cmtg_disable_requires_modeset() and use a FIXME in the comme=
nt
>> >>    instead.
>> >>  - Remove the !HAS_CMTG() guard from intel_cmtg_get_config(), which i=
s
>> >>    static and its caller is already protected by that same condition.
>> >>  - Also take the opportunity to put some Bspec references in the comm=
it
>> >>    trailers section.
>> >>=20
>> >> Bspec: 68915, 49262
>> >> Cc: Jani Nikula <jani.nikula@intel.com>
>> >> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/Makefile                 |   1 +
>> >>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 176 ++++++++++++++++=
++
>> >>  drivers/gpu/drm/i915/display/intel_cmtg.h     |  13 ++
>> >>  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  21 +++
>> >>  .../drm/i915/display/intel_display_device.h   |   1 +
>> >>  .../drm/i915/display/intel_modeset_setup.c    |   3 +
>> >>  drivers/gpu/drm/i915/i915_reg.h               |   1 +
>> >>  drivers/gpu/drm/xe/Makefile                   |   1 +
>> >>  8 files changed, 217 insertions(+)
>> >>  create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg.c
>> >>  create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg.h
>> >>  create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg_regs.h
>> >>=20
>> >> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Mak=
efile
>> >> index 3dda9f0eda82..7e7414453765 100644
>> >> --- a/drivers/gpu/drm/i915/Makefile
>> >> +++ b/drivers/gpu/drm/i915/Makefile
>> >> @@ -231,6 +231,7 @@ i915-y +=3D \
>> >>          display/intel_bo.o \
>> >>          display/intel_bw.o \
>> >>          display/intel_cdclk.o \
>> >> +        display/intel_cmtg.o \
>> >>          display/intel_color.o \
>> >>          display/intel_combo_phy.o \
>> >>          display/intel_connector.o \
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/=
drm/i915/display/intel_cmtg.c
>> >> new file mode 100644
>> >> index 000000000000..a2f26b297733
>> >> --- /dev/null
>> >> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
>> >> @@ -0,0 +1,176 @@
>> >> +// SPDX-License-Identifier: MIT
>> >> +/*
>> >> + * Copyright (C) 2025 Intel Corporation
>> >> + */
>> >> +
>> >> +#include <linux/string_choices.h>
>> >> +#include <linux/types.h>
>> >> +
>> >> +#include <drm/drm_device.h>
>> >> +#include <drm/drm_print.h>
>> >> +
>> >> +#include "i915_reg.h"
>> >> +#include "intel_crtc.h"
>> >> +#include "intel_cmtg.h"
>> >> +#include "intel_cmtg_regs.h"
>> >> +#include "intel_de.h"
>> >> +#include "intel_display_device.h"
>> >> +
>> >> +/**
>> >> + * DOC: Common Primary Timing Generator (CMTG)
>> >> + *
>> >> + * The CMTG is a timing generator that runs in parallel to transcode=
rs timing
>> >> + * generators (TG) to provide a synchronization mechanism where CMTG=
 acts as
>> >> + * primary and transcoders TGs act as secondary to the CMTG. The CMT=
G outputs
>> >> + * its TG start and frame sync signals to the transcoders that are c=
onfigured
>> >> + * as secondary, which use those signals to synchronize their own ti=
ming with
>> >> + * the CMTG's.
>> >> + *
>> >> + * The CMTG can be used only with eDP or MIPI command mode and suppo=
rts the
>> >> + * following use cases:
>> >> + *
>> >> + * - Dual eDP: The CMTG can be used to keep two eDP TGs in sync when=
 on a
>> >> + *   dual eDP configuration (with or without PSR/PSR2 enabled).
>> >> + *
>> >> + * - Single eDP as secondary: It is also possible to use a single eD=
P
>> >> + *   configuration with the transcoder TG as secondary to the CMTG. =
That would
>> >> + *   allow a flow that would not require a modeset on the existing e=
DP when a
>> >> + *   new eDP is added for a dual eDP configuration with CMTG.
>> >> + *
>> >> + * - DC6v: In DC6v, the transcoder might be off but the CMTG keeps r=
unning to
>> >> + *   maintain frame timings. When exiting DC6v, the transcoder TG th=
en is
>> >> + *   synced back the CMTG.
>> >> + *
>> >> + * Currently, the driver does not use the CMTG, but we need to make =
sure that
>> >> + * we disable it in case we inherit a display configuration with it =
enabled.
>> >> + */
>> >> +
>> >> +/*
>> >> + * We describe here only the minimum data required to allow us to pr=
operly
>> >> + * disable the CMTG if necessary.
>> >> + */
>> >> +struct intel_cmtg_config {
>> >> +        bool cmtg_a_enable;
>> >> +        /*
>> >> +         * Xe2_LPD adds a second CMTG that can be used for dual eDP =
async mode.
>> >> +         */
>> >> +        bool cmtg_b_enable;
>> >> +        bool trans_a_secondary;
>> >> +        bool trans_b_secondary;
>> >> +};
>> >> +
>> >> +static bool intel_cmtg_has_cmtg_b(struct intel_display *display)
>> >> +{
>> >> +        return DISPLAY_VER(display) >=3D 20;
>> >> +}
>> >> +
>> >> +static bool intel_cmtg_has_clock_sel(struct intel_display *display)
>> >> +{
>> >> +        return DISPLAY_VER(display) >=3D 14;
>> >> +}
>> >> +
>> >> +static void intel_cmtg_dump_config(struct intel_display *display,
>> >> +                                   struct intel_cmtg_config *cmtg_co=
nfig)
>> >> +{
>> >> +        drm_dbg_kms(display->drm,
>> >> +                    "CMTG readout: CMTG A: %s, CMTG B: %s, Transcode=
r A secondary: %s, Transcoder B secondary: %s\n",
>> >> +                    str_enabled_disabled(cmtg_config->cmtg_a_enable)=
,
>> >> +                    intel_cmtg_has_cmtg_b(display) ? str_enabled_dis=
abled(cmtg_config->cmtg_b_enable) : "n/a",
>> >> +                    str_yes_no(cmtg_config->trans_a_secondary),
>> >> +                    str_yes_no(cmtg_config->trans_b_secondary));
>> >> +}
>> >> +
>> >> +static void intel_cmtg_get_config(struct intel_display *display,
>> >> +                                  struct intel_cmtg_config *cmtg_con=
fig)
>> >> +{
>> >> +        u32 val;
>> >> +
>> >> +        val =3D intel_de_read(display, TRANS_CMTG_CTL_A);
>> >> +        cmtg_config->cmtg_a_enable =3D val & CMTG_ENABLE;
>> >> +
>> >> +        if (intel_cmtg_has_cmtg_b(display)) {
>> >> +                val =3D intel_de_read(display, TRANS_CMTG_CTL_B);
>> >> +                cmtg_config->cmtg_b_enable =3D val & CMTG_ENABLE;
>> >> +        }
>> >> +
>> >> +        if (intel_crtc_for_pipe(display, PIPE_A)) {
>> >
>> >HAS_TRANSCODER() seems more appropriate.
>>=20
>> Ah, certainly.
>>=20
>> Thanks for this.
>
>You should also do the display power domain dance ala.
>transcoder_ddi_func_is_enabled() so we don't end up
>reading from a disabled power well.

The intel_cmtg_sanitize() function is called with POWER_DOMAIN_INIT
grabbed... But I guess it doesn't hurt to also grab the transcoder's
power domain here. Seems to make this more future-proof.

I'll send a new version with encapsulating these reads with
with_intel_display_power_if_enabled().

>
>>=20
>> >
>> >> +                val =3D intel_de_read(display, TRANS_DDI_FUNC_CTL2(d=
isplay, TRANSCODER_A));
>> >> +                cmtg_config->trans_a_secondary =3D val & CMTG_SECOND=
ARY_MODE;
>> >> +        }
>> >> +
>> >> +        if (intel_crtc_for_pipe(display, PIPE_B)) {
>> >> +                val =3D intel_de_read(display, TRANS_DDI_FUNC_CTL2(d=
isplay, TRANSCODER_B));
>> >> +                cmtg_config->trans_b_secondary =3D val & CMTG_SECOND=
ARY_MODE;
>> >> +        }
>> >> +}
>> >> +
>> >> +static bool intel_cmtg_disable_requires_modeset(struct intel_display=
 *display,
>> >> +                                                struct intel_cmtg_co=
nfig *cmtg_config)
>> >> +{
>> >> +        if (DISPLAY_VER(display) >=3D 20)
>> >> +                return false;
>> >> +
>> >> +        return cmtg_config->trans_a_secondary || cmtg_config->trans_=
b_secondary;
>> >> +}
>> >> +
>> >> +static void intel_cmtg_disable(struct intel_display *display,
>> >> +                               struct intel_cmtg_config *cmtg_config=
)
>> >> +{
>> >> +        u32 clk_sel_clr =3D 0;
>> >> +        u32 clk_sel_set =3D 0;
>> >> +
>> >> +        if (cmtg_config->trans_a_secondary)
>> >> +                intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display, T=
RANSCODER_A),
>> >> +                             CMTG_SECONDARY_MODE, 0);
>> >> +
>> >> +        if (cmtg_config->trans_b_secondary)
>> >> +                intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display, T=
RANSCODER_B),
>> >> +                             CMTG_SECONDARY_MODE, 0);
>> >> +
>> >> +        if (cmtg_config->cmtg_a_enable) {
>> >> +                drm_dbg_kms(display->drm, "Disabling CMTG A\n");
>> >> +                intel_de_rmw(display, TRANS_CMTG_CTL_A, CMTG_ENABLE,=
 0);
>> >> +                clk_sel_clr |=3D CMTG_CLK_SEL_A_MASK;
>> >> +                clk_sel_set |=3D CMTG_CLK_SEL_A_DISABLED;
>> >> +        }
>> >> +
>> >> +        if (cmtg_config->cmtg_b_enable) {
>> >> +                drm_dbg_kms(display->drm, "Disabling CMTG B\n");
>> >> +                intel_de_rmw(display, TRANS_CMTG_CTL_B, CMTG_ENABLE,=
 0);
>> >> +                clk_sel_clr |=3D CMTG_CLK_SEL_B_MASK;
>> >> +                clk_sel_set |=3D CMTG_CLK_SEL_B_DISABLED;
>> >> +        }
>> >> +
>> >> +        if (intel_cmtg_has_clock_sel(display) && clk_sel_clr)
>> >> +                intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk=
_sel_set);
>> >
>> >We don't need some kind of sync to make sure the transcoders
>> >are no longer using the CMTG before turning off the clock?
>>=20
>> Well, that seems to be the case for pre-LNL platforms, which require a
>> modeset after clearing TRANS_DDI_FUNC_CTL2[CMTG_SECONDARY_MODE]. Only
>> after the modeset the CMTG can be disabled and then it's clock source
>> deselected. I guess the modeset might be what ensures that the
>> transcoder is not sync'ing with the CMTG anymore here?
>>=20
>> However, for those platforms, we are leaving the CMTG enabled for now.
>>=20
>> Now, for LNL and forward, the Bspec instructions in the disable sequence
>> simply tells to disable the CMTG and clear
>> TRANS_DDI_FUNC_CTL2[CMTG_SECONDARY_MODE], and then disable the CMTG
>> clock. So it seems no sync seems to be required here.
>
>OK. I guess it just immediately stops expecting the signalling
>from CMGH then, and presumably in this case there is nothing
>else to sync really since the timing generator just keeps going
>with whatever phase it's running at right now.
>
>With the power domain issue sorted this is
>Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks!

--
Gustavo Sousa

>
>>=20
>> On a related note, the spec for LNL and forward also says that the CMTG
>> can be enabled dynamically after the modeset.
>>=20
>> --
>> Gustavo Sousa
>>=20
>> >
>> >> +}
>> >> +
>> >> +/*
>> >> + * Read out CMTG configuration and, on platforms that allow disablin=
g it without
>> >> + * a modeset, do it.
>> >> + *
>> >> + * This function must be called before any port PLL is disabled in t=
he general
>> >> + * sanitization process, because we need whatever port PLL that is p=
roviding the
>> >> + * clock for CMTG to be on before accessing CMTG registers.
>> >> + */
>> >> +void intel_cmtg_sanitize(struct intel_display *display)
>> >> +{
>> >> +        struct intel_cmtg_config cmtg_config =3D {};
>> >> +
>> >> +        if (!HAS_CMTG(display))
>> >> +                return;
>> >> +
>> >> +        intel_cmtg_get_config(display, &cmtg_config);
>> >> +        intel_cmtg_dump_config(display, &cmtg_config);
>> >> +
>> >> +        /*
>> >> +         * FIXME: The driver is not prepared to handle cases where a=
 modeset is
>> >> +         * required for disabling the CMTG: we need a proper way of =
tracking
>> >> +         * CMTG state and do the right syncronization with respect t=
o triggering
>> >> +         * the modeset as part of the disable sequence.
>> >> +         */
>> >> +        if (intel_cmtg_disable_requires_modeset(display, &cmtg_confi=
g))
>> >> +                return;
>> >> +
>> >> +        intel_cmtg_disable(display, &cmtg_config);
>> >> +}
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/=
drm/i915/display/intel_cmtg.h
>> >> new file mode 100644
>> >> index 000000000000..ba62199adaa2
>> >> --- /dev/null
>> >> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
>> >> @@ -0,0 +1,13 @@
>> >> +/* SPDX-License-Identifier: MIT */
>> >> +/*
>> >> + * Copyright (C) 2025 Intel Corporation
>> >> + */
>> >> +
>> >> +#ifndef __INTEL_CMTG_H__
>> >> +#define __INTEL_CMTG_H__
>> >> +
>> >> +struct intel_display;
>> >> +
>> >> +void intel_cmtg_sanitize(struct intel_display *display);
>> >> +
>> >> +#endif /* __INTEL_CMTG_H__ */
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers=
/gpu/drm/i915/display/intel_cmtg_regs.h
>> >> new file mode 100644
>> >> index 000000000000..668e41d65e86
>> >> --- /dev/null
>> >> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
>> >> @@ -0,0 +1,21 @@
>> >> +/* SPDX-License-Identifier: MIT */
>> >> +/*
>> >> + * Copyright (C) 2025 Intel Corporation
>> >> + */
>> >> +
>> >> +#ifndef __INTEL_CMTG_REGS_H__
>> >> +#define __INTEL_CMTG_REGS_H__
>> >> +
>> >> +#include "i915_reg_defs.h"
>> >> +
>> >> +#define CMTG_CLK_SEL                        _MMIO(0x46160)
>> >> +#define CMTG_CLK_SEL_A_MASK                REG_GENMASK(31, 29)
>> >> +#define CMTG_CLK_SEL_A_DISABLED                REG_FIELD_PREP(CMTG_C=
LK_SEL_A_MASK, 0)
>> >> +#define CMTG_CLK_SEL_B_MASK                REG_GENMASK(15, 13)
>> >> +#define CMTG_CLK_SEL_B_DISABLED                REG_FIELD_PREP(CMTG_C=
LK_SEL_B_MASK, 0)
>> >> +
>> >> +#define TRANS_CMTG_CTL_A                _MMIO(0x6fa88)
>> >> +#define TRANS_CMTG_CTL_B                _MMIO(0x6fb88)
>> >> +#define  CMTG_ENABLE                        REG_BIT(31)
>> >> +
>> >> +#endif /* __INTEL_CMTG_REGS_H__ */
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/dr=
ivers/gpu/drm/i915/display/intel_display_device.h
>> >> index a7b5ce69cf17..fc33791f02b9 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> >> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> >> @@ -146,6 +146,7 @@ struct intel_display_platforms {
>> >>  #define HAS_BIGJOINER(__display)        (DISPLAY_VER(__display) >=3D=
 11 && HAS_DSC(__display))
>> >>  #define HAS_CDCLK_CRAWL(__display)        (DISPLAY_INFO(__display)->=
has_cdclk_crawl)
>> >>  #define HAS_CDCLK_SQUASH(__display)        (DISPLAY_INFO(__display)-=
>has_cdclk_squash)
>> >> +#define HAS_CMTG(__display)                (!(__display)->platform.d=
g2 && DISPLAY_VER(__display) >=3D 13)
>> >>  #define HAS_CUR_FBC(__display)                (!HAS_GMCH(__display) =
&& IS_DISPLAY_VER(__display, 7, 13))
>> >>  #define HAS_D12_PLANE_MINIMIZATION(__display)        ((__display)->p=
latform.rocketlake || (__display)->platform.alderlake_s)
>> >>  #define HAS_DBUF_OVERLAP_DETECTION(__display)        (DISPLAY_RUNTIM=
E_INFO(__display)->has_dbuf_overlap_detection)
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/dri=
vers/gpu/drm/i915/display/intel_modeset_setup.c
>> >> index 9a2bea19f17b..10cdfdad82e4 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> >> @@ -15,6 +15,7 @@
>> >>  #include "i9xx_wm.h"
>> >>  #include "intel_atomic.h"
>> >>  #include "intel_bw.h"
>> >> +#include "intel_cmtg.h"
>> >>  #include "intel_color.h"
>> >>  #include "intel_crtc.h"
>> >>  #include "intel_crtc_state_dump.h"
>> >> @@ -978,6 +979,8 @@ void intel_modeset_setup_hw_state(struct drm_i915=
_private *i915,
>> >> =20
>> >>          intel_pch_sanitize(i915);
>> >> =20
>> >> +        intel_cmtg_sanitize(display);
>> >> +
>> >>          /*
>> >>           * intel_sanitize_plane_mapping() may need to do vblank
>> >>           * waits, so we need vblank interrupts restored beforehand.
>> >> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i=
915_reg.h
>> >> index 765e6c0528fb..b34bccfb1ccc 100644
>> >> --- a/drivers/gpu/drm/i915/i915_reg.h
>> >> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> >> @@ -3565,6 +3565,7 @@ enum skl_power_gate {
>> >>  #define _TRANS_DDI_FUNC_CTL2_DSI1        0x6bc04
>> >>  #define TRANS_DDI_FUNC_CTL2(dev_priv, tran)        _MMIO_TRANS2(dev_=
priv, tran, _TRANS_DDI_FUNC_CTL2_A)
>> >>  #define  PORT_SYNC_MODE_ENABLE                        REG_BIT(4)
>> >> +#define  CMTG_SECONDARY_MODE                        REG_BIT(3)
>> >>  #define  PORT_SYNC_MODE_MASTER_SELECT_MASK        REG_GENMASK(2, 0)
>> >>  #define  PORT_SYNC_MODE_MASTER_SELECT(x)        REG_FIELD_PREP(PORT_=
SYNC_MODE_MASTER_SELECT_MASK, (x))
>> >> =20
>> >> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefil=
e
>> >> index 68861db5f27c..d80e0766db35 100644
>> >> --- a/drivers/gpu/drm/xe/Makefile
>> >> +++ b/drivers/gpu/drm/xe/Makefile
>> >> @@ -200,6 +200,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>> >>          i915-display/intel_bios.o \
>> >>          i915-display/intel_bw.o \
>> >>          i915-display/intel_cdclk.o \
>> >> +        i915-display/intel_cmtg.o \
>> >>          i915-display/intel_color.o \
>> >>          i915-display/intel_combo_phy.o \
>> >>          i915-display/intel_connector.o \
>> >> --=20
>> >> 2.48.1
>> >
>> >--=20
>> >Ville Syrj=C3=A4l=C3=A4
>> >Intel
>
>--=20
>Ville Syrj=C3=A4l=C3=A4
>Intel
