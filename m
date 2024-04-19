Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 217698AAF65
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 15:32:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A14B910F33D;
	Fri, 19 Apr 2024 13:32:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DLuMhkrX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C12E910F33D
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 13:32:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713533571; x=1745069571;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=mEAi4IpelrePcAB4OjtiLucRaGGYcq1yXBW9UngUa48=;
 b=DLuMhkrXT9i40TTN9G7aVuFX9b9f201uvAZe1lnSMfP3toPWNVMwfzlS
 e643WVKsHJdxbxJuuDPaQourC7+w6NYLdVE+i4Ogvs8oUmbXWuuh2STgg
 DFRlXNG3DYaTqZw64TCv6d6Kd5pvfFUQMIFa/YZ0xtzHwr9VcuvCmbtsB
 5miLSOUSuET9CO9cksxI+LvtBdzYXSgV/sCietevjXqDII9S6XPG7Q9nK
 uM9PAXqyatno1KaFT2NxcRlC1F7z7KkyutvtFpCq2WIPt5e9kVg8I0vlm
 6LWCWvMWwgyiRBkotVJRJQSB75b7EAofbQ2v8ISASzTp9kpiW4vo3avDN Q==;
X-CSE-ConnectionGUID: yiIiY/WcSFeTCWUF9bPPvA==
X-CSE-MsgGUID: IYGbmlCnRfCe0k0axkLYgw==
X-IronPort-AV: E=McAfee;i="6600,9927,11049"; a="34532593"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="34532593"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 06:32:50 -0700
X-CSE-ConnectionGUID: ZwGGPPkHQOmzO43FeOCpdA==
X-CSE-MsgGUID: azJlZFmmTzGWXTaonvG0Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="27987448"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Apr 2024 06:32:51 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 19 Apr 2024 06:32:49 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 19 Apr 2024 06:32:49 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 19 Apr 2024 06:32:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=giyXO3laY1seoO8T+wpn7avsaoQBApBuacwLykZlF6moU8ySfvYvTkW8qKtJqkB4O5GL1ikwBrfRa3taLC3OxDe+hlFfuIbwZMitu5OmDG9sabAkeDI8RgzJUQK3697TVn03KqEHvMkuVoVEJ+fcMtiimGbbx//Qh6tNt+5nXW5UMoPJ60DCwe1UN8xx8Zfc7vPqH0nwdGSwsz2JZke4OtYhW560nqkgTE7LlAB5PkZIXfz3TRIlm48Vhl4YNv5M69QqEHdOA2dMmwyf9xMi7lCNBEMxpQpzSdjww/n0RWuFI4FEWG3HcNrd2sqcedKNCQODVeNTaPc8DQBiRcp4JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mEAi4IpelrePcAB4OjtiLucRaGGYcq1yXBW9UngUa48=;
 b=GHcfT85lEVwQDTg77f/08EGaY4k3gRJfLN/R5p5SzOZ09wYL5btAkjoWdyLc86+MYecadzrfc+gJlKlSPZBx48HHda8m7pgDDo7Bhv1egBPBQ4BWlOMOdJIcCplvRhKhEWlPkRX0CwSHFFnZiELW2tKkQXDFHdpVu7XthQr9WXswRWT4VhJdatFUJas6eBGuslXrVutKvriPLIRlQEsGpYOMo9OKO18iUpW9IFkH5gZIRK6zmVVjrQZzE8Jg2l49r9SGW8aOvysHY2OOxkBlOd4/b3jvASuIo+6+Cup7c4V1MPZbgUTr4wHbTPlTu6MQCJq8LYeLd5WxX6q44hhBPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by MN2PR11MB4759.namprd11.prod.outlook.com (2603:10b6:208:26a::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.12; Fri, 19 Apr
 2024 13:32:46 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%3]) with mapi id 15.20.7472.044; Fri, 19 Apr 2024
 13:32:46 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
CC: "Saarinen, Jani" <jani.saarinen@intel.com>, "Lisovskiy, Stanislav"
 <stanislav.lisovskiy@intel.com>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v10 0/6] QGV/SAGV related fixes
Thread-Topic: [PATCH v10 0/6] QGV/SAGV related fixes
Thread-Index: AQHah01tp37Bprpqd0qP1nDfQvl3DbFvXIQAgABQ/wA=
Date: Fri, 19 Apr 2024 13:32:46 +0000
Message-ID: <986f047f9dce309b11b854477f33ce575b48f4d1.camel@intel.com>
References: <20240405113533.338553-1-vinod.govindapillai@intel.com>
 <10f25c7dedcfd3cc52e785369ac16bbecc1ed5c5.camel@intel.com>
In-Reply-To: <10f25c7dedcfd3cc52e785369ac16bbecc1ed5c5.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|MN2PR11MB4759:EE_
x-ms-office365-filtering-correlation-id: 7b69db06-182a-4853-c314-08dc607532f7
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: 2W17cQpaUUu+6o48qiBOW/0I1FRhG6Oh/rn07WHoXGJP2Z6EzPAfUPO0WxhdxZRaYeKOppTb+IZehXZGkxOLHAedcJYYySkYigCLG/EmrPEL4OF9RbLJ2tb8D6vix3VV42tYlC/+g9WJA0oZY0MDyDda4mo3i+413RQOT+tdYykLBapSlaMIZR4ZUbHrrDNGwTwkaZ7F1aJmQ4Xkl/0lwkYen8e/Zzyj1ChRfkafJIO1RlnmYjtaIrgrjQG7laKQabD75hWl8e7ENQsbpvW/AIPVsx3NFyWYhomzY4gj6vMZN3aF6XSyp47gr9uB8vCcMEx1GCbjI7kJxGazCw11GBDguVlj8aY/vkv/u9nl2CJLEv7mfFVnDSUWBUynrYl1EXkcZfJ/9XdzcwD3N0trRskduVkS3Hv0edppFqNl1v23e6k+Zm4P1fsCMDKC4jLezhu29NUuw07hLjoHywv/DsWUPxTnyOX254M93mx/gEzs1IXmwGrEMtTiVLKIteaLm/4DRVphMxsgrCZHygvHC6ApEsVnq3SiXvSA7Va8iLJ8zqcSPz1FtfR8f2SHqOOiOTOfD5LURW8mOECu0AF4iZs6XkYVFUf6CaFCI7kTqxr/fuGR0YkgTBqdMOQTIcWV3+Pv2nnS8Odd1ppbMvz2LcfIyGU0pw9Epf90k4SG7mK6dQJsV0m69EgUATiWjM3i043unud44uM9A6mJUVWb4K1cntY3HQQbPogaY1smeA4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bG53bURxSmIvelFFN3VTdmlSck14eVU4QXRSUldKNEpoUlBJN3MwelZZUUFo?=
 =?utf-8?B?NU1HV29yaSt4V0ZjWjJ2Smh3cGJaZy90eVBYRnhOK2RpN1YrQ2ZxN2dXY0Ru?=
 =?utf-8?B?dFVBbmROcmhuNUdxeEcySzdpMGZ4cGlVTEJMQXl6a2h0aE45QzAxaVlHRVI3?=
 =?utf-8?B?b2pEd2ZsVStkN2JsaTNlYkllbncxU2s5S2trU3pRL3RWcm5sKzBYZStpZ2J5?=
 =?utf-8?B?RHdMNUlIOTFOTWxwOUJobzI4UVp5eDE0UnNKTEdGZVIxSUNjTWo1TlZ1bVBp?=
 =?utf-8?B?MytiQWhDb3ZsVjVBUlhlK2RFUFM2YXBqWXZZcFYwVE9aeEZmRUc2ZFdGQnlm?=
 =?utf-8?B?c1ByQnRuajN2d1JPUEpxK2FYblJzTUt5dHdYZlVvK2ZkTHpQU0NyaGlGMzcx?=
 =?utf-8?B?NHhMUG9NS2JTVnVPOUIvQmFRZXY4a2ttSitIaTdZN2c5TmU2UDBnT2tBTyt4?=
 =?utf-8?B?ZVBTY3dWamlIdzVRbzBTMGRkdlRrUWtoTXNYY1duOHJzS283eVp4SXJRQ244?=
 =?utf-8?B?eXpNd1MzWW1TZ2sxWDVzSDFSamdsZDdFWFd5L3h4Q0FzTmZHaTRnSC8xL29z?=
 =?utf-8?B?ay9vNFdMakJkaXp5NXBxYzZoS3MrWk1UUEMrSUVaVUxpZ0FwQ1lMdFU3L2Nr?=
 =?utf-8?B?UWdndS9tWnFPblNzVENqS1UrOVRzSUV2eUNpRmxNR0llRll3SGpoYXhuUWRM?=
 =?utf-8?B?bG00dEVJMmJFckhlWVpBOWZQYUNhSFpGcUQrRFJGUEYrd2x3MUZ4Y2srS2JM?=
 =?utf-8?B?S3NtSytBZ0t5NFlLdVZnazRhcHE5QUdyVXpBbEcxVU8zWE1zOGhFbEpBUnFa?=
 =?utf-8?B?Y1VkNC8vZGZPQTZ4S3BlUzY1RWl0dExTRWZyRXNLSXRrT2hZZm1vZ281bGpU?=
 =?utf-8?B?TXdHVWtWbEFYN21RaFlxZG92dlBBSzZRVG8wWnA5Sk5wMlVhdTNQblpmNzlE?=
 =?utf-8?B?dU9tclI3aW0vbHN3dmI5VXkrejNRV3NwVTJIc1d2QnIzWFJNZWgrMS9TVlh4?=
 =?utf-8?B?TWNTT3JhdkdyWHBwOHFCeDdjRHJENVd2V1o4dFBMN25LbGhFV3N6YW1hbDJJ?=
 =?utf-8?B?SUxKc3U1b3BaV3M4MjRoeUhseGd0amlMbE5VeUJTcnpwOFZyVityeUZnTUIx?=
 =?utf-8?B?aFQ0TUttT3hWQm9XZStocDNqVVk0ZVQyOWVrMVorL2RBcEtzVkZyVFFSWXp1?=
 =?utf-8?B?c2tPSGpoOCtVTEYxTlQ2N0YxMUFoNmNLZ3hYT2JjMUowY3Axc252dGhLdlo5?=
 =?utf-8?B?UEs5UEY5eDB3bitQaWQxNW9YODJRWFBRNVZ1ZzVvT2MyWXRhbCsyNlRFTUpJ?=
 =?utf-8?B?Z3VvQnVGL3ZGWWlzMEtRMEtLVjVqa3ZQWXY3clJicy9FQXlFYXJXdDUyNEVW?=
 =?utf-8?B?dkFoYmcxUXM2dFQxeWF4aDMrWURiamdrVVk2M1psM0JMbWdrUHcwZjNYbEho?=
 =?utf-8?B?SC9uTmFjMVVtVitzY3J0djA4Z0RmWmdKWlRhMTV1TCs0c1I1d3c1TVJwcmlV?=
 =?utf-8?B?eS9JUE03S3hybk14T2VQS1A1ZHd4eXFKRmNRZnlLczFRWkFtOVRrT2xhbjdW?=
 =?utf-8?B?SDVqcXZRQ21QdERCYS9lL2RiNWpndHBwQTdIRTJPenFOaEhienM2NmV3TXlX?=
 =?utf-8?B?Y1NadHcvUnk2OGRMU1NYendMbTUwVVBsdFlZL3Z6aFZHUnhyU3Nra0VQdzk0?=
 =?utf-8?B?UVppQnZQZ3pydmhPOURxeGhmYjVNeEIzM1E0TWxnWEdyMiswZXl1aXo3NUtV?=
 =?utf-8?B?cXNVUi9VZ0p4SDZWSWZvY1lYc2l5NThOZEZ5QjRWZkc1YjVPNDdodUR4QVpx?=
 =?utf-8?B?RXBjRlF6cUd2dEtIb3k2UDV3TnFyaHJSZjUzRmxGclh4WjhWa2l6R2NpVHR2?=
 =?utf-8?B?S2taNmxVN1FRVUJPemxvTUxudnBUbVRld1lRSW1XV3RBRnZCQzJSU1Z4L0Yx?=
 =?utf-8?B?UEhZMkl6YW1KVzVkSTJlWUVyR1Z2UlJNY2hvZzRFZnM3Z3VhK3dUR2ZiMVJn?=
 =?utf-8?B?cWJkbjBabld5WE9nR0xwTlZXVndDaklCRGk1R0RKTzMrei84WEVTa0NTY0lO?=
 =?utf-8?B?NUhOQ2hTMm40TG1RRzVUa3Z2TWhsVTE5Q0dMNEFHL1JUWms0NWNSSUl4R0to?=
 =?utf-8?B?Q2dzazFIejFLNnY4RjZ4SklmN1o2QWQrNDI1Nlk1K1FkUlRhQ1B2R3FjY0ZN?=
 =?utf-8?Q?U4VIy3SUDrW+D98K864xg/g=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E30FAE4726D6164FBEB414CBE9BB260B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b69db06-182a-4853-c314-08dc607532f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2024 13:32:46.1820 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4R0Xv/atZ0w9GD3KIu8W9kxwKyOkvJerZ2JyA8+mkUMw3r7ToHAGuVMjpm3224y9LWi6rHrC0Dh3DSQyyXvZogiO2GHsvINvniNV68WlHa0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4759
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

T24gRnJpLCAyMDI0LTA0LTE5IGF0IDA4OjQyICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIEZyaSwgMjAyNC0wNC0wNSBhdCAxNDozNSArMDMwMCwgVmlub2QgR292aW5kYXBpbGxh
aSB3cm90ZToNCj4gPiBXZSBoYXZlIGNvdXBsZSBvZiBjdXN0b21lciBpc3N1ZXMsIHJlbGF0ZWQg
dG8gU0FHVi9RR1YgcG9pbnQNCj4gPiBjYWxjdWxhdGlvbi4gVGhvc2UgcGF0Y2hlcyBjb250YWlu
IGZpeGVzIHBsdXMgc29tZSBhZGRpdGlvbmFsDQo+ID4gZGVidWdzIGZvciB0aG9zZSBpc3N1ZXMu
DQo+IA0KPiBGb3IgdGhlIHdob2xlIHNldCAod2l0aCBhc3N1bXB0aW9uIHlvdSB0YWtlIGNhcmUg
b2YgdGhhdCBvbmUgbmFtaW5nDQo+IGNoYW5nZSBzdWdnZXN0ZWQgYnkgU3Rhbik6DQo+IA0KPiBS
ZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoN
ClRoYW5rcyBmb3IgdGhlIHJldmlld3MuIFB1c2hlZCB0byBkcm0taW50ZWwtbmV4dA0KDQpUaGFu
a3MNClZpbm9kDQoNCj4gDQo+ID4gDQo+ID4gU3RhbmlzbGF2IExpc292c2tpeSAoNCk6DQo+ID4g
wqAgZHJtL2k5MTUvZGlzcGxheTogQWRkIG1lYW5pbmdmdWwgdHJhY2VzIGZvciBRR1YgcG9pbnQg
aW5mbyBlcnJvcg0KPiA+IMKgwqDCoCBoYW5kbGluZw0KPiA+IMKgIGRybS9pOTE1L2Rpc3BsYXk6
IEV4dHJhY3QgY29kZSByZXF1aXJlZCB0byBjYWxjdWxhdGUgbWF4IHFndi9wc2YgZ3YNCj4gPiDC
oMKgwqAgcG9pbnQNCj4gPiDCoCBkcm0vaTkxNS9kaXNwbGF5OiBEaXNhYmxlIFNBR1Ygb24gYncg
aW5pdCwgdG8gZm9yY2UgUUdWIHBvaW50DQo+ID4gwqDCoMKgIHJlY2FsY3VsYXRpb24NCj4gPiDC
oCBkcm0vaTkxNS9kaXNwbGF5OiBoYW5kbGUgc3lzdGVtcyB3aXRoIGR1cGxpY2F0ZSBwc2YgZ3Yg
cG9pbnRzDQo+ID4gDQo+ID4gVmlub2QgR292aW5kYXBpbGxhaSAoMik6DQo+ID4gwqAgZHJtL2k5
MTUvZGlzcGxheTogZXh0cmFjdCBjb2RlIHRvIHByZXBhcmUgcWd2IHBvaW50cyBtYXNrDQo+ID4g
wqAgZHJtL2k5MTUvZGlzcGxheTogZm9yY2UgcWd2IGNoZWNrIGFmdGVyIHRoZSBodyBzdGF0ZSBy
ZWFkb3V0DQo+ID4gDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3
LmPCoMKgwqDCoMKgIHwgMTYwICsrKysrKysrKysrKysrLS0tDQo+ID4gLS0NCj4gPiDCoGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuaMKgwqDCoMKgwqAgfMKgwqAgNiArDQo+
ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYyB8wqDCoCAy
ICstDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuaCB8
wqDCoCAxICsNCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NvYy9pbnRlbF9kcmFtLmPCoMKg
wqDCoMKgwqDCoCB8wqDCoCAyICsNCj4gPiDCoDUgZmlsZXMgY2hhbmdlZCwgMTI5IGluc2VydGlv
bnMoKyksIDQyIGRlbGV0aW9ucygtKQ0KPiA+IA0KPiANCg0K
