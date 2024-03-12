Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02912879302
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 12:30:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D15210F3CA;
	Tue, 12 Mar 2024 11:30:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PKR+j9Dd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1768010F420
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Mar 2024 11:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710243031; x=1741779031;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=m7J7U6l9VUlzY8/fzLDsd/OKA+GR3n7BLT1IxHBp5aw=;
 b=PKR+j9Dd3nEbMUBHSz4fFzoib3SsV5wg3DFCb6G1jg3u67GNvLve+0vP
 KwJ1x6IrioQx8xeHfgsTSlcBOKHP/Wo7CukZYV+qvQtp66qsdoyDauU8N
 A0Ld63dZyllhMcZh5XuVtMgSsr3boaE77nRvXjECh4oNEc80B7Tt4tGKR
 pNVV2H17p7cVtI+TNfWnHt44VgPvFU2tcorhn1KeUVCe5lm91yneC3vpd
 i9TUpwRw+vYiCvdRsiGy85Xh5dddQ0cDZSkIBt4K0la71i9RLYKtNWE7u
 aUiA0+tyKVCcdfDOCVhBMPfy+xPYZMc9SavP23tuF/89ugVqxD/FurQ8f Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="8709283"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="8709283"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 04:30:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="34688031"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Mar 2024 04:30:26 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Mar 2024 04:30:25 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 12 Mar 2024 04:30:25 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 12 Mar 2024 04:30:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VCt30+S8BftE55sUMqM0fXbt/LSt1HFTuG+9/KHeu0TpRTCgMFHDD+kZCXT0WEvHVYYEpTLiLjoYq5bmE73zxSVw6NRyfHJe3+66MQbnBOjikhAHhVltYSnPx3A5VRmTSWTL3btV1EI0aHEjRBMbNZa3+pS68QnaMHp2bHtMUNec2xupgd1WaxmmyR1IBPCzuuQ7PQ355+IkIL1rv9Db+V7LrpsI5abS1a2xDfp/h0NZPilLkrjh2gfwgsGhxPCu7vM6Oj7zdKoBG3My067cNUuiu9MURh/h3ZKM5NKE2dwP2+/FC21pDwHbJcRTMyr+FHB1cvCBWJGeAyiiqAViZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m7J7U6l9VUlzY8/fzLDsd/OKA+GR3n7BLT1IxHBp5aw=;
 b=e+diD9/vEWYDH49A/ODNPnjQd52wLGtjW8KIr1GlVU0loY/LXW+bMLTcHwUVPMMg8xsYqs4j4Y7qZspYPRCjUro8JCFz4GIrx0RcTZENPHaC+itAabWXR0hs2PN3H5lif0tLbWT3whY+G7QPT86hdhSNks4yBTHayggHxNuWKpnjq+YnPEPfb1+obQTaVbCinb9EpFji5E8don9av5oFNKnwjTerxxAK/Kta8/KKkwmVYgf4DGEiZPVtZpLMVxZ5NqFJXdijuDHAUAZ3/U/pQmwFUci0DKkE5+ZCfPA7UpINd0FUyEyYkKEDfusD/gmpi17RdfuoXaAY34rWvFBmpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA1PR11MB6194.namprd11.prod.outlook.com (2603:10b6:208:3ea::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.16; Tue, 12 Mar
 2024 11:30:22 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::d317:e2a8:8e14:7bff]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::d317:e2a8:8e14:7bff%7]) with mapi id 15.20.7386.017; Tue, 12 Mar 2024
 11:30:22 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v5 4/5] drm/i915/psr: Add IO buffer wake times for
 LunarLake and beyond
Thread-Topic: [PATCH v5 4/5] drm/i915/psr: Add IO buffer wake times for
 LunarLake and beyond
Thread-Index: AQHacUgSrBH2P1kQyU+adP35RC63qrEt6miAgAAEgICABgttAA==
Date: Tue, 12 Mar 2024 11:30:22 +0000
Message-ID: <3e13b613d5984b5020a21a0936ba191aad9ef168.camel@intel.com>
References: <20240308110039.3900838-1-jouni.hogander@intel.com>
 <20240308110039.3900838-5-jouni.hogander@intel.com>
 <ZesjOx-OjJ4qT4wz@intel.com> <ZesnAUVANrVYVXwq@intel.com>
In-Reply-To: <ZesnAUVANrVYVXwq@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA1PR11MB6194:EE_
x-ms-office365-filtering-correlation-id: 02eeb296-ea6e-4c68-6e38-08dc4287ce3b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: W7AGvvobfLxsJ7GF6OC72ihi9Ll/cdWf0iSCfUxYsWd66qE1ud8ei923NPJ9si/pu0Ea+t0Ae1HJLMyo6mIaGWxD/DNMgGhJAl2IwMItXpFOQjBKRkNT3oQnxUjnWpAdGWjru1NNxcLXU0XZI/EPjmq8JTbxa7+xWfW/9D3lpD6H0iRdYr7+JiItdDFS9tNzPoWoDTT2fr23JUzqy4FHRz5DES4lHHs8A3leEG64HVJn91bx8F28DyWw3s7yuaizyMvRt6ejW7uXzQkyCTCgXP47oybyMmQo6kZAoW3YsECfPj3xq4jRXdumb9w8YyOikKjFhXpP/1xaNJZjMYc49lFnjqpGOFYEvOyhrpalLPlBHqt6Np5HBwnhdtAnT0S1OEH4su4zht3JMabft99vC/YjIcru3qQ73v6JxO3hGsEoyil3nrmOwn2f3DuNKEhz2s9mVywOiWPKYRVTBzN5fsUgd8M7pfyctmYeRD3BZaoB1ZIPh17yxYbpWpLl3F7phHUBF+upwnjw0wyPX8IdLXBnUWqRYl7Ab7ou7zLAYbP2yw3oqLJLgFfUgI1BDa5F0cR/MbPvuYR+Z4FlmL10rgsYgPANScmEgcbT95a/ZxfnCH2lPaJHcXM7QpxNW5rlWALVzHpLktUrcyHJBvqlTUOhyYEuD+mYSvPMVDoVAoAXpZWrm6wEtUhC9+iin0LYfDIj1dHpytg91KdAlHPqzYL37G4cW8vUaZGXKsaKIbo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y1VZVVpaY3d1OW4weDdNWWR3V1NETlp2N1Znb05ZRDBCYW9nY2pZRnpTTFNO?=
 =?utf-8?B?eXg5cGtRbHVaVXprWFo2VTlHNmloMGVjRlpWbm5aZkQ4WnZzWHBmdnRQd3B1?=
 =?utf-8?B?eXFJMUsyZFBlQ1lqMlJ0VjhCNWFWNTV5TGR0Uzc4MUduWStrb1QzQTVZU2o3?=
 =?utf-8?B?TmZYaXRKSHBueEhKaC9zQnV4SW85Yi9QMWNiaVUrV3A0S2RrWk14bCt0UDcv?=
 =?utf-8?B?YzhZaHlJdGhyUTZRWkhQMjVLcE44Z3BZQkVzZWsvWWsyeSt0YnVSUXRFNGZB?=
 =?utf-8?B?dGpEeUhXOEhmb2pScUNoT2liQW1Nb1JiYk5RTkVYbjZZMm5rT3NTMWNsSFFz?=
 =?utf-8?B?N3NhbGtGZVJuMXoyZzdUU0JIRHY5NHltdUJkc2pLekJvZkNibkpqelgrRmtK?=
 =?utf-8?B?OUtJYTBnd2gza0tQemkxYXcrK2V4b2xJei9LTkY2VXRXaFgyWjhLcU5MYlNC?=
 =?utf-8?B?amNLNWhqN0M0bS9tVE1XMUc3YnJrSTlHWTByc0hnQ2wvY010RHorcHdURFJj?=
 =?utf-8?B?Y0VZaGFsQktmSTNFblYvbCszU2o5SWVFVnhYMmtSRm1NcWNyVkxDZVk5aU53?=
 =?utf-8?B?Ym4xMHZkeTBnNE13MnV1K0FjSmhScTVoM1RkTkxQSjJYVUllNklNMU5jQlQ0?=
 =?utf-8?B?OTVLUWJRNnRKSU9tRHhTUDhSMS9GRzVaL2xYamJpWVA4RmRhb2xhTmxUeTJq?=
 =?utf-8?B?bnlleTVkaGFtTFdocU5Idk9vZkFXdFp5Wi9OU1FUa0Rvb25DK3F6MldUeWNt?=
 =?utf-8?B?bm9QTGN0TDl6TnEzSzBhWWpYNDFFUksyRlFSMXByUmJneEpkQXRQMFZrTjdY?=
 =?utf-8?B?MGdsQ1RmZE5TTmozYmRMMWwzSEJ6QTdNN1YxNFBKWVJhL3VMSUVyWXkrZGZ1?=
 =?utf-8?B?SnV6MEFNMlN5emlNYTloSjRDVHAxV3Y1Qlc1ZXgwdk1qdWcxYUZ5R1djdnVL?=
 =?utf-8?B?YThMWnV5SU4vVjVlbnBDQkc2dnlGYlhHQ3BnQ0w0L1MrZFBzazlsTno0SURv?=
 =?utf-8?B?TzBCdlZhOC93ZW1JekVpdGNST1pQY1E4bGlSY2IyRDNVRXRMeVdydGJBd2JP?=
 =?utf-8?B?OHNma0t2THFISHRQSEl0cWtZRHRtQmdmQ0ZHNm1UMkxxMTVubU93TzRrTERC?=
 =?utf-8?B?RWZoTHlrRCtJY0lqMFNZaGdoOXJ6bzA0SjZwZDJpR1krbEtjbGc2ZmRGc2ps?=
 =?utf-8?B?RXR4WVlRZzdJdklPWmRpSC9GRFhLZmdDSEg4Wi9HdHdMZnpXM0kvZGoxclRO?=
 =?utf-8?B?U2tJY1MyMUNhNWpWeDJ2QnNESXVkeWhyUnM5Z2xRSWJ3dmo4ekUvQk55TlRz?=
 =?utf-8?B?QllsVjY0WnRlNlZTNC9sQ0dvRUFVZVR4RnFHZURwN2JvSVNBTHVZMzRBcDR4?=
 =?utf-8?B?UkU2WHFRZ3ZvMzRQNUUyS3lyZ2tBQXRvVTNFd3AycE1zcmRXQ2RsUkZLYUs3?=
 =?utf-8?B?Wno0WTl3bk9NeU54OXNQcmZRWDFDVGwxcXNwRW4wQWVPZEF0REpKcy93YVQ4?=
 =?utf-8?B?bzM1V3V4ODlJY2pEeW1tcFRJN2hmbGZFb3I0RDdvSncrZDkvUis5bnZOdVY5?=
 =?utf-8?B?bnkwT3E2U1Vtc0RYUlVSdFF1TWZmTHVMZGRCKzdiWFIzSVNETUw0TEk1L3BH?=
 =?utf-8?B?ODlYRXp4dHIwQVp6a0VMcWxFaGlnZURWNlh5VWVOcDlkUFZHZ2hQZzgxQUhV?=
 =?utf-8?B?WUg1eTM4bmpEZFRiRldHM28xZm9SUUNHNWlSNFJGbjZaeUJ2ellmNWJRNVdE?=
 =?utf-8?B?UEdTN1k0REpjdVNyRDd1V1NueWNYaUxZNEN2NDdtT2loVTFOUThjM0R4cVBQ?=
 =?utf-8?B?UjlIWXp4cnBrTGl4VEZYR1ExTUJxSDdIQjBUYjV0ZXgzUGwzSDBTQ0tGa1FE?=
 =?utf-8?B?aGVTWFkrbG5WOWZJK1g2YVQxdSttOHM0and3THFrbk1SdFl2SkRlSjhuek5a?=
 =?utf-8?B?clBMdFg2WXZRRmhWQ0dnWXhTek1xRGJUUFZBbVViSFJvN0doSEM2YmJFWlRF?=
 =?utf-8?B?M2JqdWh3YWpxdHE3RWhnbmdFRnRBZHJzbTRmelp5RjR6MzEwdFBCSjJLM3RC?=
 =?utf-8?B?M3FlbUdiQWMyZFFidmJMR04wS0tXaUpRRE9IV2lzSkw3RkxYbVJmZEJuU0Fq?=
 =?utf-8?B?aW1PaGVuRmYxc1lBTCtRVGM5MEN6cUxldVYwVFFkc3VjRHoxWVZMdklrME9T?=
 =?utf-8?B?N0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <842D11A80D396E43907CE72213140D49@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02eeb296-ea6e-4c68-6e38-08dc4287ce3b
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2024 11:30:22.7752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BpVzW6VTJa3E3bY3pCgiJgK4N3zWpOwqF1zXQp2bbKsleXGBQJ/Rrk9D71+lBv0LvHu6HxpScN615PvFQZhcUVF4jY2xaATLMyuIKH8FAxg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6194
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

T24gRnJpLCAyMDI0LTAzLTA4IGF0IDE2OjU2ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgTWFyIDA4LCAyMDI0IGF0IDA0OjM5OjU1UE0gKzAyMDAsIFZpbGxlIFN5cmrD
pGzDpCB3cm90ZToNCj4gPiBPbiBGcmksIE1hciAwOCwgMjAyNCBhdCAwMTowMDozOFBNICswMjAw
LCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6DQo+ID4gPiBJTyBidWZmZXIgd2FrZSB0aW1lIHVzZWQg
Zm9yIElPIHdha2UgY2FsY3VsYXRpb24gaXMgZGVwZW5kZW50IG9uDQo+ID4gPiBwb3J0IGNsb2Nr
DQo+ID4gPiBvbiBMdW5hckxha2UgYW5kIGJleW9uZC4gVGFrZSB0aGlzIGludG8gYWNjb3VudCBp
bg0KPiA+ID4gZ2V0X2lvX2J1ZmZlcl93YWtlX3RpbWUuDQo+ID4gPiANCj4gPiA+IEJzcGVjOiA2
NTQ1MA0KPiA+ID4gDQo+ID4gPiB2MjogYWRkIG93biBpb193YWtlX3RpbWUgaGVscGVyIGZvciBM
dW5hckxha2UNCj4gPiA+IA0KPiA+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxq
b3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+IMKgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDE0ICsrKysrKysrKysrKystDQo+ID4gPiDC
oDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gPiAN
Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
PiA+IGluZGV4IDc0Nzc2MWVmYTRiZS4uZTNkYWFmMDVkNjQwIDEwMDY0NA0KPiA+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gQEAgLTExNjUsMTEg
KzExNjUsMjMgQEAgc3RhdGljIGludCB0Z2xfaW9fYnVmZmVyX3dha2VfdGltZSh2b2lkKQ0KPiA+
ID4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiAxMDsNCj4gPiA+IMKgfQ0KPiA+ID4gwqANCj4gPiA+
ICtzdGF0aWMgaW50IGxubF9pb19idWZmZXJfd2FrZV90aW1lKGludCBwb3J0X2Nsb2NrKQ0KPiA+
ID4gK3sNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChwb3J0X2Nsb2NrID4gMjcwMDAwKQ0KPiA+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiAxMDsNCj4gPiA+ICvCoMKg
wqDCoMKgwqDCoGVsc2UgaWYgKHBvcnRfY2xvY2sgPiAxNjIwMDApDQo+ID4gPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIDExOw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgZWxz
ZQ0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiAxNTsNCj4gPiA+
ICt9DQo+ID4gDQo+ID4gVGhlc2UgbnVtYmVycyBhcmUgb25seSBsaXN0ZWQgaW4gdGhlIE1UTCBz
ZWN0aW9uIG9mIGJzcGVjLiBUaGVyZQ0KPiA+IGlzIG5vdGhpbmcgbGlrZSB0aGlzIGluIHRoZSBM
TkwgUEhZIHBvd2VyIHNlY3Rpb24gQUZBSUNTLg0KPiANCj4gV2luZG93cyBhcHBlYXJzIHRvIHVz
ZSBmaXhlZCAxMnVzIGhlcmUuDQoNClJlZmVycmluZyBvdXIgb2ZmbGluZSBkaXNjdXNzaW9uIHdp
dGggSFcgZm9sa3M6IEl0IHNlZW1zIDEwIHVzIGlzIG9rDQpmb3IgTE5MIGFzIHdlbGwuIFdoYXQg
ZG8geW91IHRoaW5rIGlmIHdlIGp1c3QgZHJvcCB0aGlzIHBhdGNoIGFzIGl0DQpzZWVtcyB0byBi
ZSBpbmNvcnJlY3Q/DQoNCkNhbiB5b3UgYWxzbyBwcm92aWRlIHlvdSByYiB0byBwYXRjaCA1IGlu
IHRoaXMgc2V0Pw0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+ID4gDQo+ID4gPiAr
DQo+ID4gPiDCoHN0YXRpYyBpbnQgaW9fYnVmZmVyX3dha2VfdGltZShjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZQ0KPiA+ID4gKmNydGNfc3RhdGUpDQo+ID4gPiDCoHsNCj4gPiA+IMKgwqDC
oMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoY3J0Y19z
dGF0ZS0NCj4gPiA+ID51YXBpLmNydGMtPmRldik7DQo+ID4gPiDCoA0KPiA+ID4gLcKgwqDCoMKg
wqDCoMKgaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDEyKQ0KPiA+ID4gK8KgwqDCoMKgwqDCoMKg
aWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDIwKQ0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoHJldHVybiBsbmxfaW9fYnVmZmVyX3dha2VfdGltZShjcnRjX3N0YXRlLQ0KPiA+
ID4gPnBvcnRfY2xvY2spOw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgZWxzZSBpZiAoRElTUExBWV9W
RVIoaTkxNSkgPj0gMTIpDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJl
dHVybiB0Z2xfaW9fYnVmZmVyX3dha2VfdGltZSgpOw0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGVs
c2UNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHNrbF9pb19i
dWZmZXJfd2FrZV90aW1lKCk7DQo+ID4gPiAtLSANCj4gPiA+IDIuMzQuMQ0KPiA+IA0KPiA+IC0t
IA0KPiA+IFZpbGxlIFN5cmrDpGzDpA0KPiA+IEludGVsDQo+IA0KDQo=
