Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1F6CBC9EF
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 07:25:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8327610E158;
	Mon, 15 Dec 2025 06:25:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OCzkg32f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D896F10E158;
 Mon, 15 Dec 2025 06:25:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765779937; x=1797315937;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1NqgQF7jWnnfXyj03DiYxjdukL4SbICnC5st3jBdRJg=;
 b=OCzkg32fUzqsT7lDz7+X8xsux+VHPeevJ1XkRBXrb22AGekw+5X1VyR9
 Vwllgj2U9YJl2+i+FB8enoXCcu1V0aOLrUt6GaQ8HYvtQV8mIfBhqtYs8
 IZhYC+aoz0W9PMeD2Q7xG+LWULSOeYGDvkKInZAjprViU9kD4aQjjtPRN
 RX5rrdyTGXgPJycyo5hMCTKLcp+jz5QtoPjnS4cvbdj5FY5ciVUht/BZT
 aV37W/ZDloz3tBYUmKzwmpsilnO6ZP0lMtdP9B0cGVfDniqFTRGkp1lH0
 Bt2P42D+UwpEp0MgOdniqJRNs+hhjWOpiL5byvMxX9GvDAS09lqqv+UkD A==;
X-CSE-ConnectionGUID: ZbTwurOhTza8bzlKj3KM1g==
X-CSE-MsgGUID: TFBAE/grQOKKMkKqMDCBEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11642"; a="85086981"
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="85086981"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2025 22:25:37 -0800
X-CSE-ConnectionGUID: pmNM5q+gT9Kr4+Kc7hv3lw==
X-CSE-MsgGUID: yEg6Oe61T/ym+/dZJgzNtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="221033304"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2025 22:25:36 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 14 Dec 2025 22:25:35 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Sun, 14 Dec 2025 22:25:35 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.42) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 14 Dec 2025 22:25:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AhoDJAUCdrFMDe5mP8jX+PEIz5EDiVn/kswaJXd9dcgjhNFV2tjeG0SjszR97XgcdgKEvMPgvoZ/v0ZKNxf6B1D7hZpI2wjGuJmLprKrdi/lD7yt8xjPxiLC7leFlCJv23gUm0QWGQCSNmhSupgYfd+67qYNKU/B7LwX0gRWgMX47Xu/xS67Z+Uq5Wddfoco8Vclje8hnOXtrYMdr4teH5BZcJVn0+TUL1/y3zQ4rvD4LlCk20GtDIuzeHgMSMw/PLS8gJPwQmfVFfLPY/DMi+WwvLK0Hjkv3WOLGUmvfmkzKSpCnQ8WdXaLCgPYPcQayoUBx7SEKh4nATUPLdPLmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1NqgQF7jWnnfXyj03DiYxjdukL4SbICnC5st3jBdRJg=;
 b=CRF7Hx5O47NtswO4pLP8k4tOfMYF//m3MnOWq3MnbVnHolA1g4NIQSjyXREm3SQCFPi2nHXaLf+iRw9QEiDtQeMm2yup4Yc0WuXWCt3OSdP1oFxeme8QHlSRTaMWeHMLlCCnw0qPxxuq0p9EzMEEpAroQFICUxVk5SlVarFAAkdr8LLs9MisyjXY+AIjvGbMzerbmZWrpXhcLkqaUwKJvFg7R1wjAG4WqjQd7PoOe+fmPcXWWRVEebzsId5xRTdJUo3iqaOjyvK0hIBQsD3uSWE4Iakdb1yx/ET6AgtWXTRlOcclitpeJnBXZ3wRJuu1SvjeDczIgeoTuoXLnDo7ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS4PPF900531A26.namprd11.prod.outlook.com (2603:10b6:f:fc02::3b) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 06:25:28 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 06:25:28 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v10 07/17] drm/i915/vrr: Add compute config for DC Balance
 params
Thread-Topic: [PATCH v10 07/17] drm/i915/vrr: Add compute config for DC
 Balance params
Thread-Index: AQHcY153T3aTy08ekEGIJZGU/zuy87UiUEyg
Date: Mon, 15 Dec 2025 06:25:28 +0000
Message-ID: <DM4PR11MB6360F5354BD02B3FFBEED025F4ADA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251202073659.926838-8-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20251202073659.926838-8-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS4PPF900531A26:EE_
x-ms-office365-filtering-correlation-id: efe72f8c-1877-4957-e186-08de3ba2bdad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?S3dLVWZPaEpqeE1DeURTOGFDU0EvWVlsalpIenNuRlo0TlZYZkF0UTEzeEdl?=
 =?utf-8?B?TTVTZ0tjZHNJUlVWNDB0QVhBS2JJVS9HK1dIUWwwL09maGRMZi9CTHpDN0hv?=
 =?utf-8?B?ZGJFQmlWTTRCUG5CVTROVTJRY1hVUXJsaWp4OTczK2UvRkw0WWdGbm9wUjh3?=
 =?utf-8?B?dUtUMXEyZmxVdnlkQjYzRlpsV0RhMUNSSnlqek1oTWVZYStrVXRMbjQxaHRL?=
 =?utf-8?B?cXJuamJJVFJnYjhTY3ZXT0o3ZzRhMURYUEtnNkV0N3dvdUplRnRIZ2tPeDRa?=
 =?utf-8?B?NmxXL0FaYWFqSEZMOW9LdFNEWVY4ZW82bzBtSUJieGp6cTlKSEw3Z2JPdGVD?=
 =?utf-8?B?aWpOL2hsdUNlTG1QTS8vRGZjM3p4MEhLdmk4T1RBRUZsRHJKc2hhRlBTMlI2?=
 =?utf-8?B?Y2w2bG9oMllRNUptcEUxN1pTRWZGcUFjWnZGbi9JZS9kMHdjZHJ6M1JXOWt0?=
 =?utf-8?B?WmdBWTBLdDZaaGw0OWt2SDFEOUw0bURCUE1FWVYrSDJ1MmdoUTloRGJyb29X?=
 =?utf-8?B?Nk5ISHVDQk5Oc21mQ1NJRXZTMmFIanVLa2E5K1QvQkY3UlhQOU53bmNnQ01z?=
 =?utf-8?B?YTkyNzZ2QWZYakFTWEs5UDY4bHJqa3VtNGh0aldkb2s0dVFqNWVWKzdQcmV5?=
 =?utf-8?B?RmlKdXVvR3NMMXZJeml6cDIvTmY1RG9JVUFCaXRISzd6dWxtUEE2UllmVkRV?=
 =?utf-8?B?aS9wc0xkOWw5SVlTM0lVUllHZkM0TjZOenRrQmJXQ3FYbFlKdEVIcEZ0Y2Y3?=
 =?utf-8?B?RDZVQzFhcjd6WlhQalZvQlVCZGlMQ2dJMVZXS2d5NzNqVVN6UVdZNjhJOUR2?=
 =?utf-8?B?QmJuRzJBZXFLVGdxMjlVU3FoVEY4clRtNFU2RGtlbUJLUEtRL0paVXlqZVlR?=
 =?utf-8?B?bFg5MmcyOWZDb2pXOUZTVHNCamZiMHZBS1RYNTRTMkxldlltOUVpQ3dWY1Q2?=
 =?utf-8?B?V1d3d2pCNE1KU3BxYlNYM1FwZGNzdGNhNm9xampJU1Q0eHI5Z0VGWmFpbW44?=
 =?utf-8?B?b3MrS1R4Y1JneHJ4ZVFnYzdBeWl5bWJEM293SGEyUWt2RytKNXNpTlZ1N2NY?=
 =?utf-8?B?bFVidUEzUmlTeEZaM2Jsd1BMTzVaaHRPbWd3RHRWNEJwTnJxT2xrSzlzV3pB?=
 =?utf-8?B?N25Na3FWTjUra3haa2M3Z1oxUlk4ZGhrM3grYnBTYTdqQ2p1MVVOU291MGxn?=
 =?utf-8?B?T0t2Q2N5clphMmdid0xBLzUySitzTXlDSTZwZG1FNnpCQUFFRGVZK3NuRHoz?=
 =?utf-8?B?UU51M0VnTXJSeGV1U09HZDdocGZEWUJ0MUdod1FzL3N3eHFwSXB6aU9TNVRu?=
 =?utf-8?B?Yk5OM1NCd1FUcmRXQkJxODUzQmI0SGVMVHp2b1lVcWhNK3VEZ0RQRTFjMzBB?=
 =?utf-8?B?YzUwR0kyK01nZVdWVSt0V3ZOWjk3TlQvblVSVElkdVAzL3RxSFFNbTBWb3Y4?=
 =?utf-8?B?Rk1JZVhQZ1JuVnFpSDNKaHVlWHpkUVBwV0FzSmpNTFJTcUJBOE9NNUJrdHE1?=
 =?utf-8?B?alR5RkpVVWxtZ1Vrd2tDcXdCUXI3NzU4a3pxU3hoM0pzM0lsNURWNU5EYVNH?=
 =?utf-8?B?SkRzL2dUQXlNdGRlYXRuUzdlcFlJMndxSEZOUmRkWEpldkx5WE5ibWY4ZlNJ?=
 =?utf-8?B?ajg2WnlpTW1NK0ZuVGRiUzlQL2F0TGVWTlgvdU4yVC9Udll2d3BPYXMzQVRY?=
 =?utf-8?B?M2JNOWM3eEZSNkRZSi94VG1LaGk5Z1RUN1pQVngwTE1HazdiNkNXTEJZVWFo?=
 =?utf-8?B?YnRsS29oeGxkVml3SFVrWFlXa2N2RDlNNU96NnhIUjdXNENJRWNObHVDeVN3?=
 =?utf-8?B?WERQUU0yaTI2aTNyOVBFdllDMVZ6N3hVV1pZWFZWQWpyTmw2ejJnVk9FTG1U?=
 =?utf-8?B?TUdUTFlwMFk4aUwxdExFVUFiMnpQNExpbCsrcThrWGxPbjJZT1lIVFdyQy9R?=
 =?utf-8?B?VW9Yc054VFgzekVnWEZSR05ZS1NFaHY2bWFzcjlJdVJaMkV0TFNUZmhGMFVh?=
 =?utf-8?B?cjUyRVZaMHZHTGVtS05menBVNEN5VFBCNmhrTiszMVVzbE9SVUlxNG94b0l6?=
 =?utf-8?Q?uU1Kqs?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VnVNdjJpNys0Mk9YMUZIaEhONXh3MmZWZmt3VitlSmpuT1RUNFdqRHVDTEIx?=
 =?utf-8?B?NVhXSTdvTTFzVlVSUEdIbUdvL1RpUllnZnlMNWk5UGJNdTU0TFFkUTl3dUND?=
 =?utf-8?B?Vjh2V3dxeHhBSmh3Uy9sTm4vOUorNVdQczdsRjNhVGRTWmhheTBQL0NoTWpp?=
 =?utf-8?B?VEUyRmdIeThNdUFaOVZwUlJmdThuWERTNWxibURGMzM4SDJER2FXK2JIK2pW?=
 =?utf-8?B?SHFSdDdQNUpnRVV5RThlbGk0OWwwTTIzTEhtcTJVd1FFRlROc1h6eW51Sm5L?=
 =?utf-8?B?VkpvdTBmYnBWeUwxVWVFdTdkTU15QlM3bDRhQ0xoQXBnY0xndllJNFhnSjVB?=
 =?utf-8?B?ZC9wT29BcnR4bk9DUUU0R212aUxDTkEzcCtocjRGVGtUVW9VclJkSGkrNmJP?=
 =?utf-8?B?L2Y4WlRqb3lYYjMrV1loOEE0eTREUHRGcUhyTVBOSjRNbWR0NVJzbm1OOWlZ?=
 =?utf-8?B?eXdEb2t2WUxyck9ZeWoyaHdGNHN4dC9rUG1lekxMWnZBNERZZ1I5Nk5QYVZH?=
 =?utf-8?B?VFFrNXAvNm1aSkR1ZmY5TU1JU0kxcGMrbG5XaURKcTFndStZekNuc0pJcGVh?=
 =?utf-8?B?VTRUZHRWRGFqcjBvOG14ZVh0SkQzcXNzV1Nadnk4di92RTViWW56Y0JhTXhU?=
 =?utf-8?B?Y3Q2Z3J4ZSt0blBUNTNtekF3eUJ1dHVaTEpNMHVXWWY5U1RJbWhRM3oyc2w5?=
 =?utf-8?B?c3ZyN2VjbWt2N3JiRG5DUDFDWCtTWDhnSzNBT2FxeThzT3hzc0owZ3VaZXNs?=
 =?utf-8?B?YlVuM0xnMzVQcHZRNlBucUF3K0prdVlLRXdYK1JJSm1ZV3NwS2ZnNVNIdFpk?=
 =?utf-8?B?V1FvVzB4cWdQMVZUYS9Rc01nZiszaStSaHBIQjg5V2RDQ1ErUmpHUFNJWnpa?=
 =?utf-8?B?Mm42T3BZTkZaTWZ0QlpBVEQ4WWxUT25DOWlmS2szQkNKNlRVRTBCd3pxdit2?=
 =?utf-8?B?UElOSHMySGQ5eXU1bXRYTFpad2xyL2dMZnUxdWxKbjc2b0xPMEYwMVY1UzZw?=
 =?utf-8?B?ZmpWQ0h6bzVTRlREN2tKbTV4N1k4NHJKV2J4TGZoNGJsVklqWWtjVFhVNHVS?=
 =?utf-8?B?TXVGVTFrd21YbExCbDNVczJ4bjExS0dHTVhCRlJjaXVkY3FFMVdBOG1lUWFG?=
 =?utf-8?B?MTBSRzZtYWJsU1FEdUNGY0hDVkxhL0huSXFLZWNyUUg4NzJXWVlORDBpTWtZ?=
 =?utf-8?B?MG9KamlsaGZ0MEZCUDVMcmozVVFKTVljZUQvdzhhUjYrdUhlUGxqSzFob1RK?=
 =?utf-8?B?V1hIQkxDN3lWT2U5M1pURlE0N3drbGdtQm9mUlhoOVorbjlIdFI0T3VaeEYy?=
 =?utf-8?B?RUlSMU9rNXFPOFZRaHVxdVN0SE1tditnNkhtdGVDVzRHN3hNaTcrb29INUJh?=
 =?utf-8?B?QUlnTlJsRVV5OUt6UmFRNEF2SitlZXptYVU5M1AxN1YvMyt1WTdzYlp3MDRT?=
 =?utf-8?B?V2FhT0tBYlZoRUFhMzliRGU3Y1dpaEQvbE1ScWc3c00rVEJFL3Y1Zmg1UTBS?=
 =?utf-8?B?eTR6K1J1R0pLOTZZWmRqUzJ3d1BaR3FvNUZ0SkFiaGpEcXcwSzA5QWk1akJy?=
 =?utf-8?B?ZWdFL1JUdVBDc3g5c2xBVUdQSEFHODhuYjBRMk1VVmpBRHozczBNUGMzclFX?=
 =?utf-8?B?OHkrYVF2NDQzQm5teDNaZGNoa0xkM3F6K2xla2prM2JnUnBiZXdSaVdpVVJS?=
 =?utf-8?B?b0RHZHZzNFNkcDliUzFDTUJhQno2Zk1iNlBlc2tuRUIwdGl2ZHRaYVBsR1Ur?=
 =?utf-8?B?bmNaTHpQLzJYUDJ0cWxCVnRzK1ZBbWpvQldXcytQTzAvWFF4eUljT2x0UnlC?=
 =?utf-8?B?WnFjRmpOM2ZpWWlPSmJKYm9SUm9zQWVIS1picllaYStTbjVoS0doWWRxdzBz?=
 =?utf-8?B?WWhIakZRWXdjaGE5aW1PZ1prZU1lQ2lXNktHYXR2bkVUaEVIME9MUVZDMXIv?=
 =?utf-8?B?QXRTNmdENG8waFgyQVpPRUJaRHpFQk5DR1JwOGVzaGV5NHpGTTNWeHFUSGhZ?=
 =?utf-8?B?R20zemRxc0dlWXNDKyttc1RsbU00bmFxTkluN2VRUUpGRHhldjk5NE1zV0xY?=
 =?utf-8?B?VVI3RGk0ZEQvU2xMWU5obzVVaHFqYm9aTHZ5MXQxNnFtWDJnMlpsWjJwYkth?=
 =?utf-8?Q?zg/WKQpzZ5i3HA1zNsPfV+uGH?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: efe72f8c-1877-4957-e186-08de3ba2bdad
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2025 06:25:28.6057 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q5MQe5FGio08MCmipw6SjSVspi54b5QIztBwZ11jevY3zl1AV0A7rkKvbk1okmKPHa7sAM1VVLeDV1EJVKJNUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF900531A26
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogR29sYW5pLCBNaXR1bGt1
bWFyIEFqaXRrdW1hciA8bWl0dWxrdW1hci5haml0a3VtYXIuZ29sYW5pQGludGVsLmNvbT4NCj4g
U2VudDogVHVlc2RheSwgRGVjZW1iZXIgMiwgMjAyNSAxOjA3IFBNDQo+IFRvOiBpbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5v
cmc7IEdvbGFuaSwgTWl0dWxrdW1hciBBaml0a3VtYXINCj4gPG1pdHVsa3VtYXIuYWppdGt1bWFy
LmdvbGFuaUBpbnRlbC5jb20+OyBOYXV0aXlhbCwgQW5raXQgSw0KPiA8YW5raXQuay5uYXV0aXlh
bEBpbnRlbC5jb20+OyB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbTsgU2hhbmthciwgVW1h
DQo+IDx1bWEuc2hhbmthckBpbnRlbC5jb20+OyBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYxMCAwNy8xN10gZHJtL2k5MTUvdnJyOiBBZGQg
Y29tcHV0ZSBjb25maWcgZm9yIERDIEJhbGFuY2UNCj4gcGFyYW1zDQo+IA0KPiBDb21wdXRlIERD
IEJhbGFuY2UgcGFyYW1ldGVycyBhbmQgdHVuYWJsZSBwYXJhbXMgYmFzZWQgb24gZXhwZXJpbWVu
dHMuDQo+IA0KPiAtLXYyOg0KPiAtIERvY3VtZW50IHR1bmFibGUgcGFyYW1zLiAoQW5raXQpDQo+
IA0KPiAtLXYzOg0KPiAtIEFkZCBsaW5lIHNwYWNlcyB0byBjb21wdXRlIGNvbmZpZy4gKEFua2l0
KQ0KPiAtIFJlbW92ZSByZWR1bmRhbmN5IGNoZWNrcy4NCj4gDQo+IC0tdjQ6DQo+IC0gU2VwYXJh
dGUgb3V0IGNvbnB1dGUgY29uZmlnIHRvIHNlcGFyYXRlIGZ1bmN0aW9uLg0KPiAtIEFzIGFsbCB0
aGUgdmFsdXNlIGFyZSBiZWluZyBjb21wdXRlZCBpbiBzY2FubGluZXMsIGFuZCBzbG9wZSBpcyBz
dGlsbCBpbiB1c2VjLA0KPiBjb252ZXJ0IGFuZCBzdG9yZSBpdCB0byBzY2FubGluZXMuDQo+IA0K
PiAtLXY1Og0KPiAtIFVwZGF0ZSBhbmQgYWRkIGNvbW1lbnRzIGZvciBzbG9wZSBjYWxjdWxhdGlv
bi4gKEFua2l0KQ0KPiAtIFVwZGF0ZSBlYXJseSByZXR1cm4gY29uZGl0aW9ucyBmb3IgZGMgYmFs
YW5jZSBjb21wdXRlLiAoQW5raXQpDQo+IA0KPiAtLXY2Og0KPiAtIEVhcmx5IHJldHVybiBjb25k
aXRpb24gc2ltcGxpZmllZCBmb3IgZGMgYmFsYW5jZSBjb21wdXRlIGNvbmZpZy4gKEFua2l0KQ0K
PiAtIE1ha2UgdXNlIG9mIHBpcGUgcmVzdHJpY3Rpb25zIHRvIHRoaXMgcGF0Y2guIChBbmtpdCkN
Cg0KTG9va3MgR29vZCB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5r
YXJAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IE1pdHVsIEdvbGFuaSA8bWl0dWxrdW1h
ci5haml0a3VtYXIuZ29sYW5pQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jIHwgNjAgKysrKysrKysrKysrKysrKysrKysrKysrDQo+
ICAxIGZpbGUgY2hhbmdlZCwgNjAgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+IGluZGV4IDQyN2VmMTc0MTA1MS4uNzRhZDY2
MWYyNjU0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Zyci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMN
Cj4gQEAgLTYsNiArNiw3IEBADQo+IA0KPiAgI2luY2x1ZGUgPGRybS9kcm1fcHJpbnQuaD4NCj4g
DQo+ICsjaW5jbHVkZSAiaW50ZWxfY3J0Yy5oIg0KPiAgI2luY2x1ZGUgImludGVsX2RlLmgiDQo+
ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV9yZWdzLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfZGlz
cGxheV90eXBlcy5oIg0KPiBAQCAtMjAsNiArMjEsMTQgQEANCj4gICNkZWZpbmUgRklYRURfUE9J
TlRfUFJFQ0lTSU9OCQkxMDANCj4gICNkZWZpbmUgQ01SUl9QUkVDSVNJT05fVE9MRVJBTkNFCTEw
DQo+IA0KPiArLyoNCj4gKyAqIFR1bmFibGUgcGFyYW1ldGVycyBmb3IgREMgQmFsYW5jZSBjb3Jy
ZWN0aW9uLg0KPiArICogVGhlc2UgYXJlIGNhcHR1cmVkIGJhc2VkIG9uIGV4cGVyaW1lbnRhdGlv
bnMuDQo+ICsgKi8NCj4gKyNkZWZpbmUgRENCX0NPUlJFQ1RJT05fU0VOU0lUSVZJVFkJMzANCj4g
KyNkZWZpbmUgRENCX0NPUlJFQ1RJT05fQUdHUkVTU0lWRU5FU1MJMTAwMCAvKiBtcyDDlyAxMDA7
IDEwIG1zDQo+ICovDQo+ICsjZGVmaW5lIERDQl9CTEFOS19UQVJHRVQJCTUwDQo+ICsNCj4gIGJv
b2wgaW50ZWxfdnJyX2lzX2NhcGFibGUoc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9y
KSAgew0KPiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxh
eShjb25uZWN0b3IpOyBAQCAtMzQyLDYNCj4gKzM1MSw1NSBAQCBpbnQgaW50ZWxfdnJyX2NvbXB1
dGVfdm1heChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsDQo+ICAJcmV0dXJuIHZt
YXg7DQo+ICB9DQo+IA0KPiArc3RhdGljIGJvb2wgaW50ZWxfdnJyX2RjX2JhbGFuY2VfcG9zc2li
bGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKypjcnRjX3N0YXRlKSB7DQo+ICsJ
c3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNydGNfc3Rh
dGUpOw0KPiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0
YXRlLT51YXBpLmNydGMpOw0KPiArCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsNCj4gKw0K
PiArCS8qDQo+ICsJICogRklYTUU6IEN1cnJlbnRseSBGaXJtd2FyZSBzdXBwb3J0cyBEQyBCYWxh
bmNpbmcgb24gUElQRSBBDQo+ICsJICogYW5kIFBJUEUgQi4gQWNjb3VudCB0aG9zZSBsaW1pdGF0
aW9uIHdoaWxlIGNvbXB1dGluZyBEQw0KPiArCSAqIEJhbGFuY2UgcGFyYW1ldGVycy4NCj4gKwkg
Ki8NCj4gKwlyZXR1cm4gKEhBU19WUlJfRENfQkFMQU5DRShkaXNwbGF5KSAmJg0KPiArCQkoKHBp
cGUgPT0gUElQRV9BKSB8fCAocGlwZSA9PSBQSVBFX0IpKSk7IH0NCj4gKw0KPiArc3RhdGljIHZv
aWQNCj4gK2ludGVsX3Zycl9kY19iYWxhbmNlX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlDQo+ICsqY3J0Y19zdGF0ZSkgew0KPiArCWludCBndWFyZGJhbmRfdXNlYywgYWRq
dXN0bWVudF91c2VjOw0KPiArCXN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2Rl
ID0NCj4gKyZjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlOw0KPiArDQo+ICsJaWYgKCFpbnRl
bF92cnJfZGNfYmFsYW5jZV9wb3NzaWJsZShjcnRjX3N0YXRlKSB8fCAhY3J0Y19zdGF0ZS0+dnJy
LmVuYWJsZSkNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICsJY3J0Y19zdGF0ZS0+dnJyLmRjX2JhbGFu
Y2Uudm1heCA9IGNydGNfc3RhdGUtPnZyci52bWF4Ow0KPiArCWNydGNfc3RhdGUtPnZyci5kY19i
YWxhbmNlLnZtaW4gPSBjcnRjX3N0YXRlLT52cnIudm1pbjsNCj4gKwljcnRjX3N0YXRlLT52cnIu
ZGNfYmFsYW5jZS5tYXhfaW5jcmVhc2UgPQ0KPiArCQljcnRjX3N0YXRlLT52cnIudm1heCAtIGNy
dGNfc3RhdGUtPnZyci52bWluOw0KPiArCWNydGNfc3RhdGUtPnZyci5kY19iYWxhbmNlLm1heF9k
ZWNyZWFzZSA9DQo+ICsJCWNydGNfc3RhdGUtPnZyci52bWF4IC0gY3J0Y19zdGF0ZS0+dnJyLnZt
aW47DQo+ICsJY3J0Y19zdGF0ZS0+dnJyLmRjX2JhbGFuY2UuZ3VhcmRiYW5kID0NCj4gKwkJRElW
X1JPVU5EX1VQKGNydGNfc3RhdGUtPnZyci5kY19iYWxhbmNlLnZtYXggKg0KPiArCQkJICAgICBE
Q0JfQ09SUkVDVElPTl9TRU5TSVRJVklUWSwgMTAwKTsNCj4gKwlndWFyZGJhbmRfdXNlYyA9DQo+
ICsJCWludGVsX3NjYW5saW5lc190b191c2VjcyhhZGp1c3RlZF9tb2RlLA0KPiArCQkJCQkgY3J0
Y19zdGF0ZS0+dnJyLmRjX2JhbGFuY2UuZ3VhcmRiYW5kKTsNCj4gKwkvKg0KPiArCSAqICBUaGUg
Y29ycmVjdGlvbl9hZ2dyZXNzaXZlbmVzcy8xMDAgaXMgdGhlIG51bWJlciBvZiBtaWxsaXNlY29u
ZHMgdG8NCj4gKwkgKiAgYWRqdXN0IGJ5IHdoZW4gdGhlIGJhbGFuY2UgaXMgYXQgdHdpY2UgdGhl
IGd1YXJkYmFuZC4NCj4gKwkgKiAgZ3VhcmRiYW5kX3Nsb3BlID0gY29ycmVjdGlvbl9hZ2dyZXNz
aXZlbmVzcyAvIChndWFyZGJhbmQgKiAxMDApDQo+ICsJICovDQo+ICsJYWRqdXN0bWVudF91c2Vj
ID0gRENCX0NPUlJFQ1RJT05fQUdHUkVTU0lWRU5FU1MgKiAxMDsNCj4gKwljcnRjX3N0YXRlLT52
cnIuZGNfYmFsYW5jZS5zbG9wZSA9DQo+ICsJCURJVl9ST1VORF9VUChhZGp1c3RtZW50X3VzZWMs
IGd1YXJkYmFuZF91c2VjKTsNCj4gKwljcnRjX3N0YXRlLT52cnIuZGNfYmFsYW5jZS52Ymxhbmtf
dGFyZ2V0ID0NCj4gKwkJRElWX1JPVU5EX1VQKChjcnRjX3N0YXRlLT52cnIudm1heCAtIGNydGNf
c3RhdGUtPnZyci52bWluKSAqDQo+ICsJCQkgICAgIERDQl9CTEFOS19UQVJHRVQsIDEwMCk7DQo+
ICt9DQo+ICsNCj4gIHZvaWQNCj4gIGludGVsX3Zycl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gIAkJCSBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9z
dGF0ZSAqY29ubl9zdGF0ZSkgQEAgLTM5OSw2DQo+ICs0NTcsOCBAQCBpbnRlbF92cnJfY29tcHV0
ZV9jb25maWcoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ICAJCQkoY3J0
Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZS5jcnRjX3Z0b3RhbCAtDQo+ICAJCQkgY3J0Y19zdGF0
ZS0+aHcuYWRqdXN0ZWRfbW9kZS5jcnRjX3ZzeW5jX2VuZCk7DQo+ICAJfQ0KPiArDQo+ICsJaW50
ZWxfdnJyX2RjX2JhbGFuY2VfY29tcHV0ZV9jb25maWcoY3J0Y19zdGF0ZSk7DQo+ICB9DQo+IA0K
PiAgc3RhdGljIGludA0KPiAtLQ0KPiAyLjQ4LjENCg0K
