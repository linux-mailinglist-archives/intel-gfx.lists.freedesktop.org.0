Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6B98AAABC
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 10:43:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC7BB10E0B7;
	Fri, 19 Apr 2024 08:42:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e2mv+P39";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CB0C10E0B7
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 08:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713516177; x=1745052177;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=B5qu4TEwR1DwsZGsZb+sDDqIdyKCeI1MrLgDJbE6ewk=;
 b=e2mv+P39IgjP8jZLKM9vJqCnpu4ZxIF5k4vJ8Nf1zsZVOEOa43+QOfWK
 amdJC664UIsWHYEzNw6an3x03nmHjEc3/gv9hobTp5vQUnZLwEQGibIkC
 lZNC72VgLzg3zFDO5NRluoRIEh6wVUzOkxasCaMdbgaYBa+Hh+BcAS893
 mhnujWDouB16jXkxFkKHe7eUTmE6lkugcsNEiFcdLFyajuxg5QkmSiY4H
 owPMXMMGgYA86Bfr0b+9fVDaPk7rTYQLbiMrxv7/PtsGL/Aygk/oT+Lut
 ci8A8Jtfb3/vgciLz+EDZpUZExp9zMEqoj+D27WgiUpKQcNtEdkpFEvUz g==;
X-CSE-ConnectionGUID: 9c53dM5CSiiIdHRaF9ukCg==
X-CSE-MsgGUID: T4jhLAaVTvGfD3be/R4PAA==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="9233864"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; 
   d="scan'208";a="9233864"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 01:42:54 -0700
X-CSE-ConnectionGUID: S88BR3tWSo6a6XEYO+T3lg==
X-CSE-MsgGUID: RHKd4jRqSD+DZ/XjfPcLkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="23353408"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Apr 2024 01:42:54 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 19 Apr 2024 01:42:53 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 19 Apr 2024 01:42:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 19 Apr 2024 01:42:52 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 19 Apr 2024 01:42:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iyh83nKYzBtQHSiCfRl5LuAgf85i26FZXgFpx1mINcjYouo+xzKLB7WWZXEmdWlAQ7KIJUzdWkG5u2M/zJbjDTCIPRDkc391IKfarJsw8H0k00eIHW4f6k5eigs6fEHlwwMgz+M6O6GXLeJFSbAF72pExi4V+EeRKp4ISsHSX7ll8w+S6njA1eco7eUaItt17eLZERdjGObZFhSHJ+f1HbSxO8clXGN3MSzlJViDx5x67qvXcX4Qtwro0gq2rQTbDBjzdttGxCF5l14a962B1LTGJlAeqGCOIj7jx7ogAujkSOWuaAvAAw/At+Yk6HARtZuzFMPpnRmw91rAzVcYnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B5qu4TEwR1DwsZGsZb+sDDqIdyKCeI1MrLgDJbE6ewk=;
 b=Z2s/yjkc5YmWyHKSl0XReyy4uRPkg261EyyUMwlRyHBOmSlxB8vziBlJMigbbk4olArhPFfdS8dMUlO5XETe/nFmbSPhI5dZ5J7VZk/+chAj1L6phlKZlixiDncMi8BhSlv1vhC8yu5vfMisUjIn5GBV1iHyApgiuvzkzCkFFGigfE20Jatm2tqb2gSh6caX1oRa59tJft7NL3hr/YVtaiv4XjCZx/fcQzBuMi9t4cnVKTL5qeXZvXghVWPTTo9V+e5Caa27wkiuA+wLr6pyGyVa6DKzvFCTbDxtCdxqDF5ufMcCraA0UnnMNDGB47ZVGuv9MM2lagd+PV9ysnIEQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB7291.namprd11.prod.outlook.com (2603:10b6:930:9b::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7519.12; Fri, 19 Apr 2024 08:42:51 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::bccd:7928:80ae:179f]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::bccd:7928:80ae:179f%5]) with mapi id 15.20.7519.010; Fri, 19 Apr 2024
 08:42:50 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
CC: "Saarinen, Jani" <jani.saarinen@intel.com>, "Lisovskiy, Stanislav"
 <stanislav.lisovskiy@intel.com>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v10 0/6] QGV/SAGV related fixes
Thread-Topic: [PATCH v10 0/6] QGV/SAGV related fixes
Thread-Index: AQHah01u5hIBOljKuk6TBajRV6/qjLFvXIOA
Date: Fri, 19 Apr 2024 08:42:50 +0000
Message-ID: <10f25c7dedcfd3cc52e785369ac16bbecc1ed5c5.camel@intel.com>
References: <20240405113533.338553-1-vinod.govindapillai@intel.com>
In-Reply-To: <20240405113533.338553-1-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB7291:EE_
x-ms-office365-filtering-correlation-id: a73c2cb4-9a5d-43fa-17a3-08dc604cb271
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: YI+gZBO1zkrA6b/MRu1IDpq8jh2xYzbFHm6OJGKixZKtQdfxQ5TwkJLjscuDRjBx+rhBWemhtbypdqqiorsNuHfI+cTM4TCOYBb/zw4OM7R8B/dx98c66s4YKk4l3MiLvvKCuMN0j7FNgol7rUgCl+SCaFky7Mq7wT66SKuxSwuCloNqGZxUqPXEx+lohnQbT7cxCX2bp8xKoXEdrOwCzpRey/bvnCpBPtxCvCK1+sq5VOyZY00xDO+kjVoiPtisNJOPF8KghSJvAAIh3hauzCIMpsuWXn/xnUuo8ILjNx5ubWMeY2PAcxRaaiKHtROCYSKGH/jXknyDjpfEIdHIBq/SKXziWiwCFGqKaV3egbxemaEbvfxCpL+jn2+mpCGEwieU2oLwRFBkxUj5yhr7rpNPtLjQh+QwiUAN/phxMGzRLDCnNwnYnwVjNcyCY3kzWNYFHIZQEjHEKWk+ScL3UrYuGCNc56Tr0vOTZzX80npaHqNXv8xImlfYaG95ZgJGOo+2zvW7wZyktmqZ2EwxvZC1wP1vEK4/54Vy7mxGW+rx/pYP9RtFQQ9kOPuX39/kalw/cXK84MouIYvJeVLl8tdadWOcCtzjq0PjYl4KFu7u+IcQAkEIYI5zZu55Nh0MEv9EPA/mxY9oiDqV04FKOoDYNXbXUrpoZQAMfTBSIteasn4TGACnbckEr1lsVVXbWbzCujKX12wbQUox8N13OTDzPmZNAiZRaAyxEHa3oLc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MUk2WWkxeFlVMWxsTmN5VnhSMGVXUlZ2Y0RqdHZTWUxUTGxISzkwS29wb0NH?=
 =?utf-8?B?bWZ3eEZBWjRWRE1weHFtbmRaR2Q5Y3hyNDdaNW1ZVEFkdTkrcWY2T0FUZGNm?=
 =?utf-8?B?SnM4c0NtNTEwZGdKZkNyMXVNMmZIMWM3RG9TS0xWczl2bjFYT0g1enNsZFA4?=
 =?utf-8?B?L2pmQllXcTBNSHU4bXNyV1o0Z1IwN1RCeE1jZjRmZ1BzK1gxbkFEK0VpL0xq?=
 =?utf-8?B?Q05QenVVOVhKYTJzcTBreEplNW5yc3ZxaHlmZHlyTXZHaytBVG5jODhEcFZP?=
 =?utf-8?B?NldhL0J2Zm1RVmJQR1pPM0lyVngxWmd3aDVLR2c0dSt3eUVNbStlZktQRUdu?=
 =?utf-8?B?c0dJN1N0Ynl3MVlZdGNtWmxVbU1wQzZ3a0xGbWh2YmtndzRkaCtVbWdDeUJG?=
 =?utf-8?B?WThPWEZINDlXTjZpZ3RGMEhPaVZDTURKS3BIdlJVZnBzSTJGVnhoYWVkZnRq?=
 =?utf-8?B?Q3JkTmNUUUFhc2xPazJlcjhha0ViMVVlOTVUSGNYSjNKdWV3cDNDL05vMkFK?=
 =?utf-8?B?QVpFaWdyYUJNd3hCRWQzbjMrZHpxd3R1VFNHTThLMEFhejRNZmhBeC9jYnd3?=
 =?utf-8?B?RDR6TmtLbUhTN3U3UFQ3UmtJNFJ1cWVYMktZN0tjOW8xVlFBb0czZ1NSQjN0?=
 =?utf-8?B?eWpMWmtxbmd3ZEFGNEcySWZiM0k5b1g1d2szOWxHdzVTTmtVVkdzOWZxTTZM?=
 =?utf-8?B?QjJFMlVpd05GalpMU1NnSmQ0emdXcEpNN00vME9XamdXMkhlVHAzdmVWUFEz?=
 =?utf-8?B?cDBpNk9oSWFHQWJUa0ZodG5qOTNFZnB4K1psV09mRXUyUFZmNldDOE5ROHpN?=
 =?utf-8?B?SkhJWU83dnVyWnEvZXUxQks0UGR5R0tjWUs1ZzZJcXFVMlNHK1NnSWdpZ3BD?=
 =?utf-8?B?NXhmaTk4SFQ4WUxQdHVZR0xhcnNmdExnMzFZWjBoNmVjdTZkMnY3S2RZTkRV?=
 =?utf-8?B?bXQxcGErUG44N212ZENNTnZiZHFJOGxqME01UURHYnVSQ3d2RnY0MmNyQ3c1?=
 =?utf-8?B?NXd3Sk5MVm1GVER1NWRnL1p1TS9DWXBWMERmTmMvQkN3dk53MjI2OEY2NzNY?=
 =?utf-8?B?eGlicTRzMlZVZGI5bTV3Q0MxRW13OUdDWHJKdng3bjZiSmcrR2ErTDliK3Er?=
 =?utf-8?B?cTVjR1V2WDYzMmkvdGR3T1RFTmVEM1FDL3lnUVlDKzhXOEhDWXVzU09oQW1F?=
 =?utf-8?B?Mjh3Q2NPU3c1dHdPV2JycloweWJSWWxobXphMmVMeDFjRDU1dENCVG9hMHVs?=
 =?utf-8?B?T2xmUkxSQ2VHaFFwOGdqYlVwZ2Era210MUJMUVdVZjdvWkV2bzhTcnFlck5Z?=
 =?utf-8?B?YzZ3Q0xMcUlFalhqQTIxS2djUVVmYk5DbWtYMDR0SzVWSTI5SGQ3aGMrRVpJ?=
 =?utf-8?B?ZDBQbHR1V0R1bXUraHFYVFFoSGVGTWd5WnB2TlRyWlFHeWFqeHNDbFpYaXNq?=
 =?utf-8?B?N1BEYm5KaVp0a0o2TDZ6aHc0OVhxMVJES09BbndWd0ZvRWliTy9OempRdXE0?=
 =?utf-8?B?QmpobmtHdUtNN3A2MUZ2R09zanFZc2VERkZXaE5PTUZJNk1kTURyamF6S0FL?=
 =?utf-8?B?andtcVAraFNuSVlxTWpBRUFlV04zRDBiVXU0a1VNdVcyLzM2elpqQ1dZV1or?=
 =?utf-8?B?YXg0dUZ0MStuZDA0bzNscVI5SVVEdUc0N1VOYzJ6dEdWcWdwNWRxR1gwRHRI?=
 =?utf-8?B?R08wWk9XTkxVMUtrcGZmS0VsMHdIdSttbGl4MjJrbVdSZnEvdGRZZzdiNUd2?=
 =?utf-8?B?dmZyeXRBRlNFZGprT0VNblNBVXl3N2lpRGIrWk5RZzFqVmVQR0dxY1hXeTIr?=
 =?utf-8?B?YXVXZFhaRy9saGxGWWFhZEVvOHcxNXBkQVhFTktRa2VxRVZLSWpESVRnaUdO?=
 =?utf-8?B?RjJjbEkwNHlnSFZ4cm92cWFLSFB1cWNJRGtFOC9zVUIzWk5xbGhXR2EyeHdU?=
 =?utf-8?B?dXZPN253YnNXNDNZbndNa2F6TFJFR1AwbmUvMW4rUzZNTUwrVkUzaDJyWEVM?=
 =?utf-8?B?SnR1UHRUUmYzbFVPcllLMjZMNEtMQVg2aklHNEtFZ2IycmUwMGVuVFZmZmQ5?=
 =?utf-8?B?OGdRaEVTWWp4YTBTdGowMU5LeWNzVXltUXpmTlFrMnNpVmlOd1JBNzV0OTFv?=
 =?utf-8?B?aHB5bEdhRWlNaUtYSzd4RzkxOXpwREcwQmc5ZldhZkZDRHFUUVZlNXZHNXpt?=
 =?utf-8?B?YUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1E48DF4BBF8766449BAAD02091C5D9C1@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a73c2cb4-9a5d-43fa-17a3-08dc604cb271
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2024 08:42:50.7030 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SGidF8d2prnXXEpUmRLXZBfoqX8CUlsou5rucioq0XBxT9lV5f32awQxxDSXk7JkfxYedyyNlmUjcQwzJNuAKq3HJsIL0N8ELq0GMrvINrE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7291
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

T24gRnJpLCAyMDI0LTA0LTA1IGF0IDE0OjM1ICswMzAwLCBWaW5vZCBHb3ZpbmRhcGlsbGFpIHdy
b3RlOg0KPiBXZSBoYXZlIGNvdXBsZSBvZiBjdXN0b21lciBpc3N1ZXMsIHJlbGF0ZWQgdG8gU0FH
Vi9RR1YgcG9pbnQNCj4gY2FsY3VsYXRpb24uIFRob3NlIHBhdGNoZXMgY29udGFpbiBmaXhlcyBw
bHVzIHNvbWUgYWRkaXRpb25hbA0KPiBkZWJ1Z3MgZm9yIHRob3NlIGlzc3Vlcy4NCg0KRm9yIHRo
ZSB3aG9sZSBzZXQgKHdpdGggYXNzdW1wdGlvbiB5b3UgdGFrZSBjYXJlIG9mIHRoYXQgb25lIG5h
bWluZw0KY2hhbmdlIHN1Z2dlc3RlZCBieSBTdGFuKToNCg0KUmV2aWV3ZWQtYnk6IEpvdW5pIEjD
tmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQo+IA0KPiBTdGFuaXNsYXYgTGlz
b3Zza2l5ICg0KToNCj4gwqAgZHJtL2k5MTUvZGlzcGxheTogQWRkIG1lYW5pbmdmdWwgdHJhY2Vz
IGZvciBRR1YgcG9pbnQgaW5mbyBlcnJvcg0KPiDCoMKgwqAgaGFuZGxpbmcNCj4gwqAgZHJtL2k5
MTUvZGlzcGxheTogRXh0cmFjdCBjb2RlIHJlcXVpcmVkIHRvIGNhbGN1bGF0ZSBtYXggcWd2L3Bz
ZiBndg0KPiDCoMKgwqAgcG9pbnQNCj4gwqAgZHJtL2k5MTUvZGlzcGxheTogRGlzYWJsZSBTQUdW
IG9uIGJ3IGluaXQsIHRvIGZvcmNlIFFHViBwb2ludA0KPiDCoMKgwqAgcmVjYWxjdWxhdGlvbg0K
PiDCoCBkcm0vaTkxNS9kaXNwbGF5OiBoYW5kbGUgc3lzdGVtcyB3aXRoIGR1cGxpY2F0ZSBwc2Yg
Z3YgcG9pbnRzDQo+IA0KPiBWaW5vZCBHb3ZpbmRhcGlsbGFpICgyKToNCj4gwqAgZHJtL2k5MTUv
ZGlzcGxheTogZXh0cmFjdCBjb2RlIHRvIHByZXBhcmUgcWd2IHBvaW50cyBtYXNrDQo+IMKgIGRy
bS9pOTE1L2Rpc3BsYXk6IGZvcmNlIHFndiBjaGVjayBhZnRlciB0aGUgaHcgc3RhdGUgcmVhZG91
dA0KPiANCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmPCoMKgwqDC
oMKgIHwgMTYwICsrKysrKysrKysrKysrLS0tDQo+IC0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9idy5owqDCoMKgwqDCoCB8wqDCoCA2ICsNCj4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYyB8wqDCoCAyICstDQo+IMKgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmggfMKgwqAgMSArDQo+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvc29jL2ludGVsX2RyYW0uY8KgwqDCoMKgwqDCoMKgIHzCoMKgIDIg
Kw0KPiDCoDUgZmlsZXMgY2hhbmdlZCwgMTI5IGluc2VydGlvbnMoKyksIDQyIGRlbGV0aW9ucygt
KQ0KPiANCg0K
