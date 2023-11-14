Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A86417EABFE
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 09:47:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDF5410E1C0;
	Tue, 14 Nov 2023 08:47:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6360210E1C0
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 08:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699951663; x=1731487663;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=27zaJKSWUw5AAzHWtENcGc6igAT3PEtVpIW/3g14VHE=;
 b=ccINRF/XllMGKXSk9GVPEDkLZuEhgqwMINPAeudAwCcBR/7Lx7QPV6yq
 81b8nmT/BwDfn5TJQAJfeJ6MDpmZ2bLgxvU9WQ3AqvkDyzgMd0CifQWOo
 eR1dQSHHNCxv5X4xEeUrWxFl22cSW5kzbnz1YP5POeTCqZOhvmbCxfyyn
 EZkKH6avDtSWB3Lgq0oe3W721D4Mbsre6x8IhzG2A2iro/nqago3B2lyu
 4FBdTEXi+IDDnBlAfegAHl9IOVn0lwf26vqUrhNunhBkqIVeP+L+rLPoR
 N0LgCEJL1j4QRgmX2DZyltd7nYbHYObS0nQC/nVcUPb4bcHxV1shqJr8S Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="369956147"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; d="scan'208";a="369956147"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 00:47:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="714503667"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; d="scan'208";a="714503667"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2023 00:47:39 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 14 Nov 2023 00:47:38 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 14 Nov 2023 00:47:38 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 14 Nov 2023 00:47:38 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 14 Nov 2023 00:47:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WEeYzP8ka1gPQ4s6cUsvZHaSsGTHbOZlY5B5JiK26NgN1hgHz1VB5ZFfLbjZFuPgJ6xI4fL24ScmvnG3o/bQThEiL69NViQKmdqSUw7zTlWhwDJOVeufpDNgzsPPtonJF3vmg66EbO4I7GRh66sT3bZO/O5zERFc98zylu3cnSpl8L01fAScGvTVCFMCGssCqkIwr8iEmb1ENNLzFe+enYDT9gz0MdHIK1lmQ/Ydxo4D1P5KriiV9qMgarrkzFtqIFdBWFOPXYOZEt/ppwEO5S39kkDqFmY4ic58O1XmqDAsLgSlWL/hSALGUFIUvJB0p3y2Fi2GYUHeDagIUxO5IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=27zaJKSWUw5AAzHWtENcGc6igAT3PEtVpIW/3g14VHE=;
 b=Je+pBqGGI5CUar31Hy4xU60y+nnSxvWhAICoUTXnXHDv86Qp3axAnObLpMMUOsSahyt7CTXFswNp+/fHDXyPwOD2uXv5moSRBSXGQJrT+xCIzFnk10p5uaOTlRKSZsDDdm1loOLts2/GWQF+aorf3R0cGlQzTRvp9Di9XsqQhc9zHvU2t3qXuxPHyvtvzds+SiCxEwosgXZjCvNfjKcB66VHkl9Fj68IoEHrJZNCn+8k6cs0gkhd8Hr7SLhheWeTvJWNMrR1Asy7ysvPOI3IU1JQTkx5+JfHo9AwVmzngvZoKzmCaaIEHqbV3CKleoy5S39urJSTJI1Kbz9Ver4iDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6366.namprd11.prod.outlook.com (2603:10b6:930:3a::8)
 by MW6PR11MB8366.namprd11.prod.outlook.com (2603:10b6:303:24c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.29; Tue, 14 Nov
 2023 08:47:35 +0000
Received: from CY5PR11MB6366.namprd11.prod.outlook.com
 ([fe80::8593:7da:ec34:29a3]) by CY5PR11MB6366.namprd11.prod.outlook.com
 ([fe80::8593:7da:ec34:29a3%5]) with mapi id 15.20.6933.025; Tue, 14 Nov 2023
 08:47:35 +0000
From: "Usyskin, Alexander" <alexander.usyskin@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Thread-Topic: [PATCH 06/10] drm/i915/spi: spi register with mtd
Thread-Index: AQHZ4+SWmqcIZAUsFU2z1MSft+JTq7BMUNCAgAHIK5CAACJ6AIAABanAgAAIdICAK5iEkA==
Date: Tue, 14 Nov 2023 08:47:34 +0000
Message-ID: <CY5PR11MB6366383C8C0DCA9B3D41BF63EDB2A@CY5PR11MB6366.namprd11.prod.outlook.com>
References: <20230910123949.1251964-1-alexander.usyskin@intel.com>
 <20230910123949.1251964-7-alexander.usyskin@intel.com>
 <20231016103939.67445bee@xps-13>
 <CY5PR11MB6366850CCE851BCA05A9DC2BEDD6A@CY5PR11MB6366.namprd11.prod.outlook.com>
 <20231017155544.6cceb6a6@xps-13>
 <CY5PR11MB63663DB0C17321A1A0C46FF3EDD6A@CY5PR11MB6366.namprd11.prod.outlook.com>
 <20231017164615.5b58fcc6@xps-13>
In-Reply-To: <20231017164615.5b58fcc6@xps-13>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6366:EE_|MW6PR11MB8366:EE_
x-ms-office365-filtering-correlation-id: 77252e47-5de2-49c8-77bf-08dbe4ee588e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cocRXAby1OiXyBqhIcGCz2n0WmDX5qY0VxmqY3pXUUPzH56bl7lYwIf1ELFR2TUdWHeqNQ4C+E+yo5J3KpXll52u15+TXj8vvw6wz5eBnHAdZOF5JplYHbraXmpPvASCU5KZVi9RCm4fs5cP2hn/HzkeKWlxNdLlUcwaeeWvUGYOr6GlzWALe+Ho2TSo22G9aWfFvXCM2BAnj+MPg20RZa+UAhFWnvlmM0gGjUwetFmpf6ZdL5Eb7yd+3aqhLllzBSOJa2abIn4pOwbJj+D3vXwegvk6Psq6dH7Q+CvU/lcF/FZ077ZbjqPJV+9yID3/are9p9JJRA/EgrEna0gZC2zY4rIR5mQCkF7/k/h2Gi2Kyt3OMrjegapuQN74BTxvN/RisgmQCsBFnZL+Wun0OR0uWG10fcGR63u1ClNxUvrto9P5LUJ8Degs3LLc6I8XSSvV4naOONY+0yZCmtTs7yt1hWRKLAgCEzZIvb3yBSGmXD1mds9QkobieSV8WpLSenogpBthtq0k2yjYcSJX4vbTuv8C9V8r6e5BPOBoyTkkWR7cBgl0w7psMgi+X107rMLJifxr9f3iBufuKZW7MqRVLb6prJLr4Q9FK1Kva7seAzFeVcIzpPCNRhqo9VlJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6366.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(376002)(346002)(39860400002)(396003)(230922051799003)(186009)(64100799003)(1800799009)(451199024)(38100700002)(7696005)(9686003)(6506007)(122000001)(55016003)(26005)(82960400001)(478600001)(71200400001)(66446008)(76116006)(54906003)(64756008)(66946007)(66556008)(316002)(6916009)(66476007)(33656002)(41300700001)(38070700009)(4326008)(8676002)(8936002)(2906002)(52536014)(86362001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NDdpQlJLRGRzRGUyMVRPc0VrUDRDcW5NU1pQSHFFR2t0UFB6ci83WTVMVEFH?=
 =?utf-8?B?TUFZaE8vTHZOR1BoOVJRNGJXelgxSzdMTE1vblRXRmtETHRtL2ZDcndTdVpQ?=
 =?utf-8?B?Rk8yQ05Qd0NhMkhZMEF4M0dqMFo0b3lYTkxZcFllUU4yWnpvbGg5b3VNTGIv?=
 =?utf-8?B?L29XcUwrY05yYjJwSmM2b0lMTjVMSXltUWpMZHdTU3JJR2pUTjdhR0h2YUpw?=
 =?utf-8?B?RVV2L2tqWTQ1dWNTRllpRlZJaDhDOHowV1F3OTJQK3gyQW9SZUVROVFOY1NB?=
 =?utf-8?B?K3JqT0FqOHdmTWJZU01BbkhvUG9GL3lvU3U5MUdNeVBPdHdrZ2JGQUp5aHNB?=
 =?utf-8?B?c1BxelpWUTE0c2lzL3NEalY0QVhvNjdNTmM5UG92MW5LdlY3YWhHaWI3ZGlP?=
 =?utf-8?B?TjBXa3hSOWlGQ05wSGozaXpzTmd5b05QcDJNVWp6cjB0M3R6TStXVE53cUli?=
 =?utf-8?B?WDg2MTNTODRibUVmVTBNTzd5OHdMeWk4V3RiREMxWXgySEp5RUtleEhHKzVa?=
 =?utf-8?B?L0tJZmxmeTdUdHpFemhDR28xclJvcGltd1pkWU5CMmZ1aGZrTlFXcmtydzc1?=
 =?utf-8?B?Rm0xWXBsSmF6NzFSR25kSlVCaFR2c3AwL2lMNFEyYnNZd3UrNkNacDBlZ1FP?=
 =?utf-8?B?c2Fzc3NSVHRHVFRmNThFK2gzdXZYdzBaTE5sV2tuZm80SXdRUjdnWWU0Z201?=
 =?utf-8?B?czA1cG54R2ZlWWtMOWlTaDVxaUlHN2FzdnhoWGtEcHpyMXA1Qy9XSzl5c21s?=
 =?utf-8?B?a1IwVTl6RUpISmxnRTVxalZIUWp3K2tBQTQza2piTm5aSmZoaStvWFFTTEFL?=
 =?utf-8?B?amFRR0RRS3JxL2N5S2NySFZRa3RFQ3l3VUhmUDFXL0M1SXIzcjFxdHRJVFNx?=
 =?utf-8?B?dEdldkJXWElIZDFYc0ErV2R1K1lNaUVMTlZOd2syTjNsM0J2YTBEL1VpUjky?=
 =?utf-8?B?MWFCcUtJSkgvN2RPZUl5R0JZRGxPYktKNTFWdGo4eHRLaVA1Rlo5S0oyQlZl?=
 =?utf-8?B?aWI0R05FTk9FMGFmV3pXK05DTkdXelFPUm1NTGUzVGFUZlJTbkNmOUJsS0ZI?=
 =?utf-8?B?bDF2NURmUHpUUmF4TjYrZERKL3NpakoyZGxjWG5UVmo3NU5DSGhNdnAxRHN1?=
 =?utf-8?B?S3BTdUwvM2ZhM28rZzFHQ0ptUkhuZnN3dlJVQmNzRUtVcW9nendqamhVUW1j?=
 =?utf-8?B?bElPK3FoTGxwUThCcEQvekRHS2pVSFVlZzNockZoTnk4OGRQM3dzSzhQNUE5?=
 =?utf-8?B?aDlZcFR3RDM2ZXBBNldHN3ZqR3hUK08yZ1hYaGhBVkE2RDYzSUxOZ2VMRjBI?=
 =?utf-8?B?emRBZXhmRmhCcFhQSXZ3d1NsVUY5aGtIaFNJaFVzUzIwcXRpbU9iWHFkNndh?=
 =?utf-8?B?VHFlbVBESEk2MVBYWUtwN1lDSys4ekczWjQrQVk1bC9YVnl4K25QTjJmVHNi?=
 =?utf-8?B?aWhCS3kveWxKdjNGWWNuUENMTnA1ZXp6UXlmOHpHcHk4aEFvR0t2TkRtZ3Fo?=
 =?utf-8?B?a2pZNDJGU3Vpc1Mxb2NOaEhwZGpwRURhL1N4bU5WUWcwNGQ2ME5mbG9lUGxN?=
 =?utf-8?B?Njhrb05LSDlmOWFzUitSWTNiaUVLT3RrY1Z5dmZtdlkvZytGSmtOV3g2NS9O?=
 =?utf-8?B?REp4NVZrMXVmS0JBRmVJakF2VzhZYVA2aVY0ZThmU2xWQldrRmxQNTZqWE1k?=
 =?utf-8?B?Q1lLeUgyRzE1Z3NwMEc0dWJLZ2VsTWJPQ1JIZkpUTERlajhGdENtaktJU3RF?=
 =?utf-8?B?ekRyaEVUV0g5MU51ejhwRWtEakZJYUlyNWVrQ3lmcW56cVhqRWV1Yll5R3NC?=
 =?utf-8?B?NlBmTHcwS05JTHd1VnIva3ZmcjZBVS9IVC9XRmZXRE5DTmdySG8zRlFuVmtl?=
 =?utf-8?B?SXJPd2pkWlk1R1AzYlZMb3llUFBha291NmQzUUlpaHJ3R2tQNGRONVNtTHM2?=
 =?utf-8?B?Z0l5dHhJQjZXUnRDWFlQM3IrNTNFWDVHdUV4NXArbW13d2JBbkZCdmNUNk00?=
 =?utf-8?B?ajVMejdCQkVDTHFQb2RMR0dVbGJ2V01zUjFKWjFPTi9hSFI4MmRDTFE2M0U0?=
 =?utf-8?B?QVZ4UERQK2pOK2QwRUMvUVcwRWlsaWlOc2tqOXVkMjdjVnBKQVg1dnIza0Ns?=
 =?utf-8?Q?3SQ+JRQIZ/Sk1ukq1iYdb4mvw?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6366.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77252e47-5de2-49c8-77bf-08dbe4ee588e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2023 08:47:34.2090 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DfE/s7VxqCaRhqqr0H3+S7UgrWT5j2g8XgVHKXAqVbqxq1KPFBRcs7nosBcqxarwzxygxEtkr3Q6OMpRikeNj5XaMFFgTGgQJXPJdBbO1QE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8366
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 06/10] drm/i915/spi: spi register with mtd
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, "Winkler, Tomas" <tomas.winkler@intel.com>,
 "Lubart, Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiANCj4gPiA+ID4gPiA+ICsJc3BpLT5tdGQud3JpdGVzaXplID0gU1pfMTsgLyogMSBieXRlIGdy
YW51bGFyaXR5ICovDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBZb3Ugc2F5IHdyaXRlc2l6ZSBzaG91
bGQgYmUgYWxpZ25lZCB3aXRoIDQgaW4geW91ciBuZXh0IHBhdGNoPw0KPiA+ID4gPg0KPiA+ID4g
PiBXZSBzdXBwb3J0IHVuYWxpZ25lZCB3cml0ZSBieSByZWFkaW5nIGFsaWduZWQgNGJ5dGVzLA0K
PiA+ID4gPiByZXBsYWNpbmcgY2hhbmdlZCBieXRlcyB0aGVyZSBhbmQgd3JpdGluZyB3aG9sZSA0
Ynl0ZXMgYmFjay4NCj4gPiA+ID4gSXMgdGhlcmUgYW55IHByb2JsZW0gd2l0aCB0aGlzIGFwcHJv
YWNoPw0KPiA+ID4NCj4gPiA+IElzIHRoZXJlIGEgcmVhc29uIHRvIGRvIHRoYXQgbWFudWFsbHkg
cmF0aGVyIHRoYW4gbGV0dGluZyB0aGUgY29yZQ0KPiA+ID4gaGFuZGxlIHRoZSBjb21wbGV4aXR5
Pw0KPiA+ID4NCj4gPiBJIHdhcyBub3QgYXdhcmUgdGhhdCBjb3JlIGNhbiBkbyB0aGlzLiBUaGUg
Y29yZSBpbXBsZW1lbnRzIGFib3ZlIGxvZ2ljDQo+ID4gaWYgSSBwdXQgU1pfNCBoZXJlIGFuZCBj
YWxsZXIgdHJ5IHRvIHdyaXRlLCBzYXksIG9uZSBieXRlPw0KPiA+IEFuZCBzeW5jIG11bHRpcGxl
IHdyaXRlcnM/DQo+ID4gSWYgc28sIEkgY2FuIHJlbW92ZSBtYW51YWwgd29yaywgSSB0aGluaywg
YW5kIG1ha2UgdGhlIHBhdGNoZXMgc21hbGxlci4NCj4gDQo+IEkgaGF2ZW4ndCBjaGVja2VkIGlu
IGRldGFpbCBidXQgSSB3b3VsZCBleHBlY3QgdGhpcyB5ZXMuIFBsZWFzZSBoYXZlIGENCj4gcm91
bmQgb2YgdGVzdHMgYW5kIGlmIGl0IHdvcmtzLCBwbGVhc2Ugc2ltcGxpZnkgdGhpcyBwYXJ0Lg0K
PiANCj4gVGhhbmtzLA0KPiBNaXF1w6hsDQoNCldoZW4gSSBwdXQgU1pfNCBoZXJlIHRoZSAibXRk
X2RlYnVnIGluZm8gL2Rldi9tdGQwIiBwcmludHMgIm10ZC53cml0ZXNpemUgPSA0IiwNCmJ1dCAi
bXRkX2RlYnVnIHdyaXRlIC9kZXYvbXRkMCAxMjggMSBjIiBwYXNzZXMgb25lIGJ5dGUgdG8NCmk5
MTVfc3BpX3dyaXRlIChtdGQuX3dyaXRlIGNhbGxiYWNrKS4NCkkgc3VwcG9zZSB0aGF0IG10ZCBz
dWJzeXN0ZW0gZG8gbm90IHN1cHBvcnQgdGhpcy4NCk9yIEkgZGlkIHNvbWV0aGluZyB3cm9uZz8N
Cg0KLS0gDQpUaGFua3MsDQpTYXNoYQ0KDQoNCg==
