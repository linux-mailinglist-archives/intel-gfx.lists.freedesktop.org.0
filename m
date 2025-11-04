Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 167A8C320E3
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 17:28:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9648E10E290;
	Tue,  4 Nov 2025 16:28:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="azX+qDWO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BB4510E28E;
 Tue,  4 Nov 2025 16:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762273701; x=1793809701;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=XNUFlj3+zXTW3ZB7nUCUE5v58VgiJk7BgOMeMxytZrw=;
 b=azX+qDWOSP/sb4J6JYKHUB/LNjh8mAT6FfHBu6kBPaej5Q64NSG+eUyy
 +XGagtcOjj5+mscLbWpMNW3XzLc5/ByNzwzEy1vT/7WFO4wf1lTo4j5Zi
 3j6efVHAAEdWqk+ENjGUPyDeavsGzLmiO4BnE8ljPfQLuiMZ4+uf566CV
 DtLb16Ks6nNcKZm0UeAD3y+b9lZV29pksYZpKfW6ST16bIxgpnA/DcAa1
 qY11OTOzYSm5w6AKa2gaFDYBZV0yBp3hELva12v8yoLDxLYVWZwpl9rGG
 E9SP/FWDQXoGmkHefSev896x/y+YEppLWIbld/FxdtIv2B3isZeixTRwG A==;
X-CSE-ConnectionGUID: +wMny6mlTGqm15u6WWR/aw==
X-CSE-MsgGUID: mqVDGrVGSMWKwrVkui1z9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="74666375"
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="74666375"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 08:28:20 -0800
X-CSE-ConnectionGUID: TiMWurRlRvSLUASRFiFkSA==
X-CSE-MsgGUID: 7PwdeoKxQEKmuP31PAjHwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="186438337"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 08:28:20 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 08:28:19 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 08:28:19 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.57) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 08:28:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r6zQlbDZTo2lQF3msf4o5GVmHhdxAKnMTLydp7NNrW9/jo/Dndn77WwwoDpT9voAZy7bzwCZ7BWDR8M9Zq7pbJNCc2ujGlBC9FzINLfbcxSTGaMrJnNxterVIb+YUsO/PhI5din26OaFsuVqT0ZgdhTqydRH8YFhwIezxEI0pMVJAf1ZRncZe7WXUF7IouFC5fyr1ev9qvetG2FtZqHX1XCGGeVFeY6EPCMoQxy1ojKshe9Olr3Z1lDoH9YToIv2kjboKi0QTRNZ8QGJOSP3Gj4OzXGj9Jh29/mRZROsAyWZGK2ynxeGHsfn5Egcv5oJk5ZwHsawQb0HxKdAy1chTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TgtQI4vKrNY9i+rw0FR8ngygRBa7kMuQHqFozLyHQQw=;
 b=aAQ6qWNg5ZXikbAmGHroXyTxXDF2ZP8xnV9nyzI1RL2CS9rR/bblqhMNO1QMQ/OFrVCRczBMfw33gmJA2IGZkXdhs226z1lL5e3nYxlz7cSFZedFi0N50JBBA8H3wmp4A4IAS+jMOZCCMSsj2SRxmTjxWW88lDYxhKdJCDKA2lQRCkWhVax1td2F1kEGI03b5xIzBCWgER9y7QXK4GMRGnKox+F/C9GXrPN5tRlbKFaLPj1/2Nr5EaeK6P44FOeYGBFti21/AsHAj0VGoGOrdM7qsViNzscgCIwEUlUidIl9hZtFI0uyH2AniWKqyTQFRFB8sxbrG5JWCNVQvC/ecw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ2PR11MB7548.namprd11.prod.outlook.com (2603:10b6:a03:4cb::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.19; Tue, 4 Nov
 2025 16:28:17 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9275.015; Tue, 4 Nov 2025
 16:28:16 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <176227296151.3586.4499016022396976833@intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
 <20251103-xe3p_lpd-basic-enabling-v3-21-00e87b510ae7@intel.com>
 <20251104001537.GX1207432@mdroper-desk1.amr.corp.intel.com>
 <176227296151.3586.4499016022396976833@intel.com>
Subject: Re: [PATCH v3 21/29] drm/i915/xe3p_lpd: Enable system caching for FBC
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan <shekhar.chauhan@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
Date: Tue, 4 Nov 2025 13:28:09 -0300
Message-ID: <176227368961.3586.18103273933170980883@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR03CA0345.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::20) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ2PR11MB7548:EE_
X-MS-Office365-Filtering-Correlation-Id: 9622c1fc-8528-4d65-2681-08de1bbf27d1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dXVPbEhGclhqUzl5MzNSd2ZuRlJJYWsrQ1VsR2U2c0lwQ0hUbjFuaExQRFE0?=
 =?utf-8?B?SU5NdXlCc09jcWpKemtuaXphc05VSFpOdUkyc2lFTjBBZWl6S0MzdXEwb2hT?=
 =?utf-8?B?OUhuY2loSnpOVTJjcXNFdUt1MzVTSHN0MHJiQ0p1dUxRblhpbnJXSHRKalpp?=
 =?utf-8?B?NXROWlMxN2xLdzVMMWlIUTVEaDNtdGtLK1lDdkJhaGJUanlobFFOUHNncHlZ?=
 =?utf-8?B?bVF1WGJ0TEFUTER2TkpadUE3RkdtanE5a2pXaVcxajZSR1RTSE11ckljK01z?=
 =?utf-8?B?S3R5MlFQRDJiLzJKZ2JERDYzZHNhbUxVVm5MQ2R5bzNFb2RvTU1VZmZrcklq?=
 =?utf-8?B?bFVYZU9IS2txMWNlVy9MYythZDhFM1U3WlY4ME9vZ28xMkxCVWJUdldYRC9v?=
 =?utf-8?B?bGt4dUlpTmxTSTdSdVd2OHQ4QW85RmhDNjNlazZwMzJ2aVBiZSswRWd3a0pD?=
 =?utf-8?B?NjFHTDUwZGRUazdoa3JCOHhvSWVFdkN6Y2gyejFNREg4SXhGWUE2dGswT0xN?=
 =?utf-8?B?L3hVOEpTS1dnUXp4MXA5VWZydkswaWxybGh2cjd6T2ZwYW0zcTBxdytwMlRJ?=
 =?utf-8?B?cTVueFpaVXkyaTV1RW1IaTJhNkx2eU5IMmxQUFh1NnJwNWFVNi81dmlWR3Na?=
 =?utf-8?B?MUZUSFpEL25VSlZvYWhqT01SVFVGWktsaisrcHAra1pjcjBWMjFkNmhZenNO?=
 =?utf-8?B?cGcvY0pEWVRUZUJzeHd6aW5rNVVlTlZmK0xTSjZHc292Mm1kUXFtWWI2bnpr?=
 =?utf-8?B?M1VUaXE1L3p2aUNnUE9Ba2t4dUorNUNqZExiY2V1dnlGS0hIbGU4QzU1Z09V?=
 =?utf-8?B?UTByQnNNMUg5S201cTZEVVJjS2I2V01oSTFwRGtIS29NV1NYNVlyRHRlRzZQ?=
 =?utf-8?B?eUZXRUV4a3BRMWZxdzdmSzhkMVFsOTVlSnorN1BtM3FFem5ta2RBbXRRMHJS?=
 =?utf-8?B?ZGFraWdoRVR5N2pFUno5VGkxWkxwSVp2TC9lcUd0UE9XT1hvWXMydnBsODIv?=
 =?utf-8?B?YURFSFhYaFNDajlCTlpiNGdHeFZ3eXFORXJkaDBFM0xQTVN4OFhaam5raWp0?=
 =?utf-8?B?cy94Zk9CNW4zK0h0UXpzWjFvM1BEUXBEeTA5c3dUOW9KZ3NQM1Y5WVRUalM5?=
 =?utf-8?B?V1crMHNMdWVGODdsWWd1ZElBeFA2YjZjVi9OWnM5ZEJOdmQ0S3dnVHRvL0Z2?=
 =?utf-8?B?SW5DcE40elM5YUI3dTNodTdRWmFReVlWSkcxbUlrdXh3VGVjeVVBM09PSVdi?=
 =?utf-8?B?Z2xndUttNUhqZWNTZWk1dGozeEdMbjQ4bDFqUDhrVXBZeHU5aDl1NWNXbWdU?=
 =?utf-8?B?ZzR4eFl6c3VtNExsSlR0Ulc0RUZVMmZvQlJvSktGRTZRRnJwaVcwME5EbWFF?=
 =?utf-8?B?ZzRnc0hlc3QwOUZUSFg3Y3dYcTIrR0c0Sis2U0R4VFIxZFFZRVArazNXZmxM?=
 =?utf-8?B?c1NaZG9TcHdRNXlTZGRyeGVDK0srWWw2RmdyclZlcnk5ODh4VXBWMktmYzBB?=
 =?utf-8?B?ekJXQjBIc1pHMnZvbnZhbGJPeUZpblZsYjJLWXc1MENiQlI3dE4rMFZzYkRi?=
 =?utf-8?B?eXByeGovb1VsMVoxUngyMzliN1dQaFJDWjZwa3o4UHZ5Y2thWFF0a1lpS043?=
 =?utf-8?B?Y1BJdDZZOUFKUVZzSzRNNnJhbnFuMlJiQ2w3cVN0Z0M4OG9SSG02ajNHNVl4?=
 =?utf-8?B?c1BjbUNic0F6S2dpdUpqVHRDbW9yT09HR2hCRDE4c0o2ZzdwSWpGeE9WVUpo?=
 =?utf-8?B?NVVxaG84TkRvM1I1L2pjYnkxWTVWRG9MczlUYzRHNGFRUG1TZGtJbzhWTTlt?=
 =?utf-8?B?SDJwQlVQUnRydHYrckVjbVJUajdRL1p1MHFXSjVVMENCOEM5N3QwM1VsZTJ0?=
 =?utf-8?B?eHRFajFEOGtCTFB3eDZ4cUIvNURiRGdDVEowcVF2K21QNXZEZTFmNmFFemE3?=
 =?utf-8?Q?ql2s/zoY7pnIHg0k3mRdZsrN7ti2ecPu?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cHVIRndxajZNQklZajNnb0JJNUlIVDJLMU4zelZpLzZKM3VCanN0TXUvSzB3?=
 =?utf-8?B?Y0NBRHlKaDlKd2VNVjBkK1RjcjlBcktSS1lBR0pGcGJxV0FvY2N1UFgxRUVo?=
 =?utf-8?B?U1l6Sk1KUUZqUHZiMDlHeGVqa2wvRWhGdFY5M1p3WGRVcC9JSkNiT3pRQWdR?=
 =?utf-8?B?YXVUTkNSV0haRGdBRXM2THVoeEtWcmNEdzV4dkJsK01XUllNekNhU2xwL09R?=
 =?utf-8?B?eEc4Z3hWOWsrejVaVFdralUrMzlSd1ZFR0Jra3kwMUo2bE9KMGJ5cXlwWVQ2?=
 =?utf-8?B?RDltOUF6bkIxUTRZaXQ5VFljRTIyM1NKWDNhdDg3ZGlyM3RVbFlzTFg2bTBW?=
 =?utf-8?B?bWQ0VTRHN2JwRjhmaEVUeXVuekFGK2EwRS83VEZtaGIzbjRDazVoL2ZqSCtG?=
 =?utf-8?B?bVlaT2VJNVMxNExlMHM4SUVxR284Z3ZaSnRiNkZEWTllcEdmNDlxaklvRHVW?=
 =?utf-8?B?MlYxQVBmQ20rRzZlME0xdnhkNFY2RjhpbnJqVUhZQ2wwSk9UamUwSThPREJU?=
 =?utf-8?B?YWVsbzJmVnV5NkRNUHBEYXM3U2xnYnZ2VkRQSnorSGM5c3R4TUNDc3lUTTBW?=
 =?utf-8?B?aWx3UTMvdGJ0Y2lnQllxdHVTWk82ZmI0Q2crT2hQTkFXMGpYbHNoRWNxOFpE?=
 =?utf-8?B?QnBjZ0NRMjdiSHNSSjZncURMUHFicFNUcWhNVWRSdm9ua3VTU1ZoZ3ZqWkdM?=
 =?utf-8?B?WUpsT0tsOE5Yb0F5bGR2WFV3T01JeUppSHkvaWd0UUdISUtXc2ZiYkdrVUZ1?=
 =?utf-8?B?WXZQbXA1M0gvR1gxYWN1M0dROHlsMzc3bVhTTFhFWm5PU1RhYjcwMHB4anVt?=
 =?utf-8?B?NGErelhjSGVQUTZMS216dGlTUEFMRUtsaUV5bnFvM1RJM0R6eHJGb0tuenFk?=
 =?utf-8?B?WWxabDR0ZXdLS2piTGxSemdrczdsMXJwN2ZiUVV2L0VjSWlBVFpHdy9Tck5k?=
 =?utf-8?B?Mm5peVM3RGU3K2dXUFpxV0FnckdUVW9UR1g4MWFpbGwzKzJrRGJQS2Exbldi?=
 =?utf-8?B?djVSWE1NdWFvQ3BFQmczNzhHMlloWXNPa3RKVllwS0FtSmtGaVZIR0JWcjlt?=
 =?utf-8?B?alFQMWIvVGlQNk9lT0llM0J2TmQrR0lrSldnODY5aE1JSjZiVE1QQW9rd1pi?=
 =?utf-8?B?Umg4bkY3TXN1cmJKYjdrSTViM0JOMTRpMTB4VkNsRlJIU1czdUp4SStYSnBX?=
 =?utf-8?B?RWE0UC9PdHFJWWg5dndkVzBReVQ5STh2c1p2M0Z6TmVTekJHQ3c2QVlhc3da?=
 =?utf-8?B?cFRTS1RYTUphTCs4Y0tjOW96V3NBcFQ1QW5USDdGZXRuTkxRYko4Y3paQVVE?=
 =?utf-8?B?cEFkWHV1NlMvQk45UUpLVGVRWnVJY3QvNHRCUUFrdERJWUwrMlFrR2I2aU5x?=
 =?utf-8?B?MTZDYmRwM3VUWk9Sdk10aVdiN0pTWFdQMllrY0VqK1pKUmJmdGhrVlRGSGo3?=
 =?utf-8?B?MHV2eHhHcHNvK0NYM1V3MktxWS9tTGZHNjhScE5aZXRTL1VEWXZzNlZ2Z08v?=
 =?utf-8?B?RGx0d1BSZlBnQ2lxczQ4RXcxdzRUNHVSeDlndzJydnZkcnYzc2RLM2ZMQ0Zl?=
 =?utf-8?B?Zi9VanJzOG5iaVFEZGxhNFE2Ym5Xb1haREJvZjN4eUU1NXExNERyQy9Kbk9B?=
 =?utf-8?B?VWIvenVKdXlXYTVtYkVIWXNvd1ozYWczYjlyc0tmVDRFdU1uYVhOVWNhSnR5?=
 =?utf-8?B?UXpGbjZqMGo4ZlhYaVl2NUQ5U0QwT0Q4T0FwUlJxUEh2M0VFZ0JhV3hpVkJo?=
 =?utf-8?B?Umd1bGF0UXBhNTFGMHd2K0JNZXJsTGN6SU80NG5wN0NIa0lCRGZDV2RzdkpB?=
 =?utf-8?B?RXEyMjlNbkZZS3ZLaWVRTFBYeTgzRG9NUFBvTlJtRUZxSDBTZ1BmdUdhTVla?=
 =?utf-8?B?VWRSaUVVOUdzRHNQNy9JM1p2Y082UzBCVGJQZ0VZQnB2cC9LOUlDcytNck5K?=
 =?utf-8?B?S0NZdFdxUmF5Y2hzckYyN09HNHloamtOLzkzWGRIWEFOQTFjTWwrMnozMHBD?=
 =?utf-8?B?VktiSzhBeG9lWFdMK2hoemU4aUNFN09ycExIZWVsMEVQWTNRVDA2Q2x1dHJJ?=
 =?utf-8?B?cG12S1BzQk40NkpqL01QU3p6WmpNVUtLbzFSc09SQjBGZVVCQW81T2NqSC9u?=
 =?utf-8?B?UGpaOWMyZTlnTDdzUXU2WGRJR1FjWmYrcSt1VEpNTUdyVVZKZGF5bUQ3dHc3?=
 =?utf-8?B?c3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9622c1fc-8528-4d65-2681-08de1bbf27d1
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2025 16:28:16.3651 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PLTVI3GzCoiqZ07vqeaP3doQG38E4CryRBDWk7gWO/Dr7WuImIa1TP1gZg4f041ED2BxNU+s3rL8gsChG/cwfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7548
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

Quoting Gustavo Sousa (2025-11-04 13:16:01-03:00)
>Quoting Matt Roper (2025-11-03 21:15:37-03:00)
>>On Mon, Nov 03, 2025 at 02:18:12PM -0300, Gustavo Sousa wrote:
>>> From: Vinod Govindapillai <vinod.govindapillai@intel.com>
>>>=20
>>> Configure one of the FBC instances to use system caching. FBC
>>> read/write requests are tagged as cacheable till a programmed
>>> limit is reached by the hw.
>>
>>What exactly is "system caching?"  We have lots of different caches in
>>current platforms, and it's not really obvious to me from the
>>description here (or the bspec page) exactly which cache(s) are involved
>>here.
>
>Perhaps Vinod would provide more assertive answers for this and other
>questions, but I'll also try to reply based on my research on this
>topic.
>
>Although the Bspec does not make it clear, by digging a bit deeper into
>other documentation, "system cache" appears to be the SoC-level cache.
>
>>
>>Is turning this on always a win or is it situational?  I.e., is there
>>any potential for display memory traffic to fill a cache with FBC data
>>by evicting data that was part of the CPU or GT's working set?  If so,
>>that seems like it could potentially harm the performance of other
>>workloads running on the platform.
>>
>>Or is this whole thing about a completely new cache (unrelated to
>>and unusable by anything else) which is devoted solely to FBC?
>
>From what I understood in the docs, the value
>FBC_SYS_CACHE_TAG_USE_RES_SPACE (i.e. 0b11) for field "Cache Tags"
>indicates that the caching will happen in a reserved space dedicated to
>the display engine.  So I believe we wouldn't be interfering with other
>agents.
>
>>
>>>=20
>>> Bspec: 74722
>>
>>You might want to add 68881 here since it has a bit more information
>>about how we're actually supposed to set the fields documented on 74722.
>
>Agreed.
>
>>
>>> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_fbc.c      | 47 +++++++++++++++++++=
++++++++
>>>  drivers/gpu/drm/i915/display/intel_fbc_regs.h |  9 +++++
>>>  2 files changed, 56 insertions(+)
>>>=20
>>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm=
/i915/display/intel_fbc.c
>>> index 24b72951ea3c..e2e55c58ddbc 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>>> @@ -127,6 +127,9 @@ struct intel_fbc {
>>>           */
>>>          struct intel_fbc_state state;
>>>          const char *no_fbc_reason;
>>> +
>>> +        /* Only one of FBC instances can use the system cache */
>>> +        bool own_sys_cache;
>
>If we go ahead with using this member, I would prefer that we used
>"owns_sys_cache" (just like we use "has_something" instead of
>"have_something").
>
>>>  };
>>> =20
>>>  static char fbc_name(enum intel_fbc_id fbc_id)
>>> @@ -569,12 +572,51 @@ static bool ilk_fbc_is_compressing(struct intel_f=
bc *fbc)
>>>          return intel_de_read(fbc->display, ILK_DPFC_STATUS(fbc->id)) &=
 DPFC_COMP_SEG_MASK;
>>>  }
>>> =20
>>> +static void nvl_fbc_program_system_cache(struct intel_fbc *fbc, bool e=
nable)
>>> +{
>>> +        struct intel_display *display =3D fbc->display;
>>> +        u32 cfb_offset, usage;
>>> +
>>> +        lockdep_assert_held(&fbc->lock);
>>> +
>>> +        usage =3D intel_de_read(display, NVL_FBC_SYS_CACHE_USAGE_CFG);
>>> +
>>> +        /* System cache already being used by another pipe */
>>> +        if (enable && (usage & FBC_SYS_CACHE_TAG_USE_RES_SPACE))
>>> +                return;
>>
>>Rather than relying on the current register contents, should we be
>>sanitizing this on driver probe (in case the pre-OS firmware already set
>>this up) and then making our own decisions (as part of an atomic
>>transaction) about which pipe to prioritize after that?
>
>I agree.
>
>>
>>> +
>>> +        /* Only the fbc instance which owns system cache can disable i=
t */
>>> +        if (!enable && !fbc->own_sys_cache)
>>> +                return;
>>> +
>>> +        /*
>>> +         * Not programming the cache limit and cache reading enable bi=
ts explicitly
>>> +         * here. The default values should take care of those and that=
 could leave
>>> +         * adjustments of those bits to the system hw policy
>>> +         *
>>> +         * TODO: check if we need to explicitly program these?
>>
>>There's no hardware default documented for the range field, so unless
>>the pre-OS firmware sets it up (which we probably shouldn't rely on),
>>I'd expect this to be 0; I don't think that's what we want.
>
>Agreed.
>
>The Bspec clearly states that we should set "Cacheable Range" to 32, the
>equivalent of 2MB (i.e. 32 chunks of 64KB).  So yes, we shouldn't rely
>on any existing value and always use 32.
>
>>
>>> +         */
>>> +        cfb_offset =3D enable ? i915_gem_stolen_node_offset(fbc->compr=
essed_fb) : 0;
>>> +        usage |=3D FBC_SYS_CACHE_START_BASE(cfb_offset);
>>
>>And if something *did* set this up already, then OR'ing a new address
>>over the old one isn't going to work.  We'd need "(old & ~mask) | new"
>>to ensure we don't have leftover bits still set by accident.  But it
>
>Yeah.  The current code is not accouting for any pre-existing value here
>and is subject to corruption by simply OR'ing.  This needs to be fixed.
>
>Another thing to fix here is that the field "Cache Start Base" needs to
>be in "4k byte chunks" and we are currently using cfb_offset directly
>instead of applying the necessary shift.
>
>>would probably be better to just avoid RMW-style handling in general and
>>build a complete register value with exactly what we want rather than
>>trying to modify the pre-existing value.
>
>The Bspec says that we should keep other fields with their default
>values.  So, I believe we do need to have RMW logic here.
>
>>
>>> +        usage |=3D enable ? FBC_SYS_CACHE_TAG_USE_RES_SPACE : FBC_SYS_=
CACHE_TAG_DONT_CACHE;
>>> +
>>> +        intel_de_write(display, NVL_FBC_SYS_CACHE_USAGE_CFG, usage);
>>> +
>>> +        fbc->own_sys_cache =3D enable;
>>
>>It feels like instead of having this as a boolean flag in fbc, this
>>should be a pointer/ID tracked at the intel_display level.  E.g.,
>>
>>        display->sys_cache_fbc =3D fbc;
>
>Yeah.  A single member instead of one for each FBC seems to be enough.
>
>>
>>or possibly converted over to something tracked with atomic state so
>>that we can make better high-level decisions about which FBC we want to
>>enable this on as various displays get enabled/disabled.
>
>That would be nice.  I see it as something that could be done as a
>follow-up.
>
>>
>>
>>Matt
>>
>>> +
>>> +        drm_dbg_kms(display->drm, "System caching for FBC[%d] %s\n",
>>> +                    fbc->id, enable ? "configured" : "cleared");
>>> +}
>>> +
>>>  static void ilk_fbc_program_cfb(struct intel_fbc *fbc)
>>>  {
>>>          struct intel_display *display =3D fbc->display;
>>> =20
>>>          intel_de_write(display, ILK_DPFC_CB_BASE(fbc->id),
>>>                         i915_gem_stolen_node_offset(fbc->compressed_fb)=
);
>>> +
>>> +        if (DISPLAY_VER(display) >=3D 35)

I forgot to mention this on my previous email: I think Bspec is missing
this info, but this feature is applicable only to integrated display, so
we probably want to limit the condition above to reflect that.

Perhaps it would be good to have a macro like

  #define HAS_FBC_SYS_CACHE(__display) (DISPLAY_VER(__display) >=3D 35 && !=
(__display)->platform.dgfx)

--
Gustavo Sousa

>>> +                nvl_fbc_program_system_cache(fbc, true);
>
>One thing that concerns me here is that we are programming
>SYS_CACHE_USAGE multiple times and the Bspec seems to indicate that we
>should do it only once:
>
>    "Configure SYS_CACHE_USAGE to setup the caching before enabling
>    first FBC and leave it alone after that."
>
>I believe we should get some clarification with the HW team to verify if
>what we are doing here is legal.  By doing it multiple times, we could
>be interfering with other agents (e.g. PCode) that could be doing some
>dynamic adjustments.
>
>--
>Gustavo Sousa
>
>>>  }
>>> =20
>>>  static const struct intel_fbc_funcs ilk_fbc_funcs =3D {
>>> @@ -952,6 +994,8 @@ static void intel_fbc_program_workarounds(struct in=
tel_fbc *fbc)
>>> =20
>>>  static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
>>>  {
>>> +        struct intel_display *display =3D fbc->display;
>>> +
>>>          if (WARN_ON(intel_fbc_hw_is_active(fbc)))
>>>                  return;
>>> =20
>>> @@ -959,6 +1003,9 @@ static void __intel_fbc_cleanup_cfb(struct intel_f=
bc *fbc)
>>>                  i915_gem_stolen_remove_node(fbc->compressed_llb);
>>>          if (i915_gem_stolen_node_allocated(fbc->compressed_fb))
>>>                  i915_gem_stolen_remove_node(fbc->compressed_fb);
>>> +
>>> +        if (DISPLAY_VER(display) >=3D 35)
>>> +                nvl_fbc_program_system_cache(fbc, false);
>>>  }
>>> =20
>>>  void intel_fbc_cleanup(struct intel_display *display)
>>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h b/drivers/gp=
u/drm/i915/display/intel_fbc_regs.h
>>> index 77d8321c4fb3..592cd2384255 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>>> @@ -128,4 +128,13 @@
>>>  #define   FBC_REND_NUKE                        REG_BIT(2)
>>>  #define   FBC_REND_CACHE_CLEAN                REG_BIT(1)
>>> =20
>>> +#define NVL_FBC_SYS_CACHE_USAGE_CFG             _MMIO(0x1344E0)
>>> +#define   FBC_SYS_CACHE_START_BASE_MASK         REG_GENMASK(31, 16)
>>> +#define   FBC_SYS_CACHE_START_BASE(base)        REG_FIELD_PREP(FBC_SYS=
_CACHE_START_BASE_MASK, (base))
>>> +#define   FBC_SYS_CACHEABLE_RANGE_MASK          REG_GENMASK(15, 4)
>>> +#define   FBC_SYS_CACHEABLE_RANGE(range)        REG_FIELD_PREP(FBC_SYS=
_CACHEABLE_RANGE_MASK, (range))
>>> +#define   FBC_SYS_CACHE_TAG_MASK                REG_GENMASK(3, 2)
>>> +#define   FBC_SYS_CACHE_TAG_DONT_CACHE          REG_FIELD_PREP(FBC_SYS=
_CACHE_TAG_MASK, 0)
>>> +#define   FBC_SYS_CACHE_TAG_USE_RES_SPACE       REG_FIELD_PREP(FBC_SYS=
_CACHE_TAG_MASK, 3)
>>> +
>>>  #endif /* __INTEL_FBC_REGS__ */
>>>=20
>>> --=20
>>> 2.51.0
>>>=20
>>
>>--=20
>>Matt Roper
>>Graphics Software Engineer
>>Linux GPU Platform Enablement
>>Intel Corporation
