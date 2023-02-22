Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C39C269F5D4
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 14:41:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F79410E9B0;
	Wed, 22 Feb 2023 13:41:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8216C10E9BB
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 13:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677073268; x=1708609268;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=X1vVB87AGoH6I/sbxqUa4/y0eGf3ONMdJy/ygzhCg9g=;
 b=OpKcQDAATOwBEVsBMMZbA1p6OPMVP9GMuTAxI9lcYBW8ZdlLXSGOEp1M
 daUig/kjdJyDrVMhjRVQX9mYp8lzpvMp/8YIbqWdm2EMriA1GsLtA9X17
 Kga5JZLY35F/n2bIezpWv3WdLUQ5c/74SkBBmzPBYZ2rcOkyj4PSzFZwu
 vvTu43JurqV32l4ftoOJYbuPDqlK7WSuzG17adksTH4xrAlDRQjWoiDxf
 r1m4Jke46Yr4rVEv+CRpVRvnc8m4pwuWYVXQkWq0RQ9MoN2+fEIeJIntg
 vQ3yarUarnmwrfGkvL7it3A2cQNc5/sxb19TlCwAQ2WnHLExQS3xPDI66 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="395407567"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="395407567"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 05:41:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="814939270"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="814939270"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 22 Feb 2023 05:41:07 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 22 Feb 2023 05:41:07 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 22 Feb 2023 05:41:06 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 22 Feb 2023 05:41:06 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 22 Feb 2023 05:41:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fxfjn5exSDyVIYsYSP0MlSyEGIpvvGQuj9Sg6WKFCYupLapXuwXofxjC954XyBQ7nI1p6T1nVC2dUZOXkuIvzCbQSH6lHYcqwCBDWZSz86B3O2NMzs9+07uMUFcxDKu4tzJhKqBwxpghRv0UbF2ECzEoNgNZhlu+cxIzhMJV/CsxYHmRylN5btqsdKlh6NsDQZ50FEp5VbGQ9TmysEYUbGWrrKiVu+v/c3pVUcPOAoQQdaigEdP1Lb0P6LPxUBtzK+T5cTguxb4KumFlLw+2tjHSIxJ9wCYlcMFOdduS9cmnlc5UwkswXr1sU0QfLUyxBBVSdTOYqkQeP1ah30Wo9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X1vVB87AGoH6I/sbxqUa4/y0eGf3ONMdJy/ygzhCg9g=;
 b=BKSOnft5s5ZqlPBeeYlquuIN5r9d1rbDnmCD5zVRBOiQavOSKYiQLWKOcCo6i3XXf4PhNM2b1mi++ptJZP4j5AqTLPuKI7TI+j134JGkg+ef3VPdcZ3xDfsqlvUnEjSLSHy9KmMqLVEayovtJXyi+E+6dHH83Y0A5Iv2JoUC5JmzTknnYcGWzAQWhwG5vPWOqEgQveO8w3qJiCcthda3SIyEtFpVm8UH/brDQWoP4KnCeknM3E4AaGUh8+anxcRQKlMYQ+/zx3pMacQw71VdYLrvqj9sRyEmJqw9EgCdD60yK5bsaj+HGtIX9lD4P+T4Ib/H1bBoNSUv4E09PjWF1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB5111.namprd11.prod.outlook.com (2603:10b6:510:3c::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6134.19; Wed, 22 Feb 2023 13:41:04 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6723:483:53a2:5569]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6723:483:53a2:5569%6]) with mapi id 15.20.6134.019; Wed, 22 Feb 2023
 13:41:04 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 0/4] drm/i915: vblank stuff
Thread-Index: AQHZMnVLnYF8iyzKBECw7r6YwGCTsK7bIbGA
Date: Wed, 22 Feb 2023 13:41:04 +0000
Message-ID: <1b1b9f8c261daf3cad283225f040e3dc14c4b273.camel@intel.com>
References: <20230127173044.24108-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230127173044.24108-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB5111:EE_
x-ms-office365-filtering-correlation-id: a4631e6d-e95e-483b-dc89-08db14da71c4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ng/e7pEhUV/5Tm97+nNA359AMFJdfgXnCnvHSo/ElO63orI1KDzUbjQfl2mXoSBpbPn0aV3mQykMjV7VOmhiF5LHchMFQ+T33euGashnYcnYpGIMlqitYOv1LNTlTX4lnKhUl5CZAS6LJJ317ptnf+4OTPID46cXmmBMoWkPQR9bAEDlnO30SCEcCboZtXzNPgUFiQNcYDzTunw3ntXW3NswMp+RIW6dq0jRWBnEzopBGpV282rJXWnwtFEQTte1iGI9282FGYVYNMCEc8Uy/pafBCrakIjfoonafzPXHDudCWr9kxJA/7DChpl+3Ts6UlJ1hf9ekmRhhCFxIP59edvqYCxJWvZK49DUEHAuemEwnP3LD5Eah0e412hwo4adCJxj/WE6BCXlQWnAxX9de/W6AawliLC2YLyhiWeyYscCsoR58i/F1YKO3kCsgFtja7mJfTYZi0wWs7FzYTmoOFFg13f3nlcOwifRo6YqBq6auvL4+gpzuDUtFpxy6w6rj1hAI2rV8+KmdRqFA+SlKALx2eyt/M95otX9yf3uKWbyuCeqFUpd35aCKne4hDAT6afok7fFhJmIuY4LijJJYYB5z7AHpXhlgPkzYez3Xvo2GD12QDx5SZa+Ve59q/rMo1vccI0N62mFe9FIFfl+pGF8tXoL+t+Q4w6QgczbCEr5faGZ99AngV1k/4jkEq/2oOJmPe+v+JKksSy1YMC+jw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(346002)(136003)(376002)(39860400002)(396003)(451199018)(66574015)(6486002)(36756003)(5660300002)(4744005)(2906002)(83380400001)(6512007)(6506007)(38070700005)(110136005)(86362001)(478600001)(41300700001)(71200400001)(122000001)(2616005)(38100700002)(186003)(26005)(66556008)(66446008)(66476007)(316002)(64756008)(8936002)(82960400001)(8676002)(66946007)(91956017)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZTUva3NaR1FkYTAxNzd3WWgzUUl5ZWZlRUJvVkc4MVN6OWc0Z3NSTlNzU2d0?=
 =?utf-8?B?SVA3Y2RWSzBTLzVFTEhpSTltSlNtVjFscnkxU2pUT2hVYzVXYmN0WkgrVkJP?=
 =?utf-8?B?RzJNUnNPcXpWd2EvdXZ4NGd6ZFlxa3ZSMDdBT3Jtc1U1OUxiT0xLMmZjMEYw?=
 =?utf-8?B?cG5WU0dmWHZaQW03V2llZ3lqQVZDZHBFTXB5KzY2dkVhb05vZ3dEd3VHMnZS?=
 =?utf-8?B?N0RtWmk0dkkzdTdyUXN4TklvNUlLZUNnM3l5WFRPNTFvMTFJSzFQRGxrblBl?=
 =?utf-8?B?ekt1U2w5Z3FQY1FNa09JcU5kWC8xOEZVcGl4WC9XSU5nU3BDaEhIVjBkT2d1?=
 =?utf-8?B?YXp4c1FjMHJ2ZVg3dXUvVVBGNEN2eWtNVnQ3WlRYd1lkOEFFUDZveWpGenE1?=
 =?utf-8?B?aXoySXBoejM1QkhQYUZzMXZMUEhhZklQVmU1aUlHRHp5QmY5WTExblhsWmZy?=
 =?utf-8?B?TkZEUmFsdnZWalZoM3VkM25aV09DaE1lWkMvbFNlTGcrSjMzTVhQdlJJenZ4?=
 =?utf-8?B?eHdjcjhXMDRyR0wyR0VBU1l1QnF0a1VlY0p2WmYrQ3B1OHU3MUt1d3h5b09m?=
 =?utf-8?B?RlhxVldDd2lwOGtNclFSMm55bHIvT1FxTGtpUHBHeXVWbmgrYmszUFcySVZ5?=
 =?utf-8?B?Zk5wRHI5c2dwL3dWVXZPQXdpVDJLSWRZRjJNS0hNWkVvRjNKOEplS3R5SS84?=
 =?utf-8?B?YTV0MWJIUkw4OEQxakJsdkRnSnlVR1NWd1QyaXlNcUVESmdwRllsWk0yNnpB?=
 =?utf-8?B?Q0tNYnJnQWxoY2l0Y1NnNHVqb0NRbENxU29iWkRKY2dYczhEcUdqcjk1ckUy?=
 =?utf-8?B?YkVzNjJEZXNWQVNKekZjVTlCMGlRazRYNVJQYlM3QTFRNUxxNlpNRzVha1g4?=
 =?utf-8?B?cjFFUWFHNHNjM0tZSS9kOEs3SzB2T0dyYlFDcUJhaXNMK2x3TnhxZFVBeTR3?=
 =?utf-8?B?K0k2SW12RVVVRkh4S2hEYTlzNmdBRVNNOFpCdEVvWXB3d3NIS2NKUEdsVHQ2?=
 =?utf-8?B?NzdFQzMxNDRiYW9iamFUY1QxdWFsVURQRVhhT1RiTm5IZGZSdGl3dU0xRCt3?=
 =?utf-8?B?L2gzRTY1ajdnM0s3QWh4UDN0SEN6K2taSTMyVHF5Q21IK2VCOE9FTTVPS1do?=
 =?utf-8?B?OEF6LzhNcWoyWE5UaEpLVjRsdHFsMVZVNDVHemRZa1g3Z0FhemNpenRaMWdY?=
 =?utf-8?B?UGFPUW9naU1SVGFZSzhuUElJYVBscmZnaFZ2cmx6TVdvSEFXK1dienk5ZU1U?=
 =?utf-8?B?Nk1sV01lMTNlQXIwWE92aHJESDl4djNuN3JNclJTd3V3dkhQcENQTDVmVEwr?=
 =?utf-8?B?cFhNbWxQSGhxMmNUa0ZYeGpwSVZvMnpGR01xUW5PSzdKZ29yZFg5aUl2SkN6?=
 =?utf-8?B?ZjFRZXhtSzFIK2EvZW40SWY5UlMvdDFUREhNNGFLanNGYnRoUGFGNTltQ0Zo?=
 =?utf-8?B?SkJDbDRibk9iS1A5UERpK0c3bE5DSVFUYnBPUCt5OHM0UVdlUUg4dmZCeGJD?=
 =?utf-8?B?Ynhjc1VoWVUwdW9uY2hneVZBbzNkYklHOTN3dnVSSzFZRy9XZ2J5Ym5zRE1H?=
 =?utf-8?B?VEJXblBlMkF6TnBUaWQ1TmJGSmg5STNvS0pVaGN2TkYwVTZac0gya3pmdUc2?=
 =?utf-8?B?c290YVBiczhtNHI1SE1tZFdaMHd5V0VocVNTYmFWV3NNV1lScWZMVE5WZlB1?=
 =?utf-8?B?bmtBdWRNU2RZem85UGtLcDNlYk5uYWpLVWtkR0Fib1VKT0hGNDg3TUNwM0c2?=
 =?utf-8?B?NWM5U1c0eGRCNUR6b0s5UzlNTWVqQjVtM1QyTWJuVlFjeGNGZG0wSDM5WjlT?=
 =?utf-8?B?ZEw0NDF0U25ONEdiRUFKV0F6N2tpVnExWVFtdUcxazRTTncyaTVGNDJuOEhK?=
 =?utf-8?B?ZExiWG5QZ0JPMyt3R1dEbTU5WEdKdmlPbjNiUGVvQVBRbUd2RS9VcWpGNWdz?=
 =?utf-8?B?ejA4UWcwSEJhS1BwMCtHZnRiZWVOK3htUHNsZVFMeUUzbkRvNFNRSzI3eGt1?=
 =?utf-8?B?MGRhdy91RmRvVHFmS0tMRFFLRE01eTRYTGk0OXljOGRva1dycjlnQW9rdjB1?=
 =?utf-8?B?TSsxaVB4RkRUeTJISEsvcFRjS3J2Y2wzMEdDTzl1dkV1S284YlBpWXNYY3pi?=
 =?utf-8?B?SUU2VzFTQXNnd2xQRUc5TC9hY1RqUEFEQUpTWjhFRkNab1dlSlIySWd5YkFE?=
 =?utf-8?B?cFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1700D824011A804196A55D5E29627A76@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4631e6d-e95e-483b-dc89-08db14da71c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2023 13:41:04.6740 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tq+JnYZmHMfTlqk6WS7TuSyp45mdpFQPRCW0mz4F5OaQUlYzUxMC2gmkyaucNIvZPdMZVV+iGL+KRrlcwfzZc5ArYVRCkSeCJ70LjABu4mE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5111
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 0/4] drm/i915: vblank stuff
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

T24gRnJpLCAyMDIzLTAxLTI3IGF0IDE5OjMwICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gQSBidW5jaCBvZiBzdHVmZiByZWxhdGVkIHRvIHZibGFuayBsZW5ndGgvc3RhcnQuDQo+
IA0KPiB2MjogRml4IGluYWN0aXZlIHBpcGUgaGFuZGxpbmcNCj4gwqDCoMKgIEZpeCBTQUdWIGhh
bmRsaW5nDQo+IMKgwqDCoCBGaXggc29tZSB0eXBvcw0KDQpGb3IgdGhlIHdob2xlIHNldDoNCg0K
UmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0K
PiANCj4gVmlsbGUgU3lyasOkbMOkICg0KToNCj4gwqAgZHJtL2k5MTUvdnJyOiBGaXggIndpbmRv
dzIiIGhhbmRsaW5nDQo+IMKgIGRybS9pOTE1L3BzcjogRml4IHRoZSBkZWxheWVkIHZibGFuayB3
L2ENCj4gwqAgZHJtL2k5MTU6IEV4dHJhY3Qgc2tsX3dtX2xhdGVuY3koKQ0KPiDCoCBkcm0vaTkx
NTogUmVqZWN0IHdtIGxldmVscyB0aGF0IGV4Y2VlZCB2YmxhbmsgdGltZQ0KPiANCj4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDCoMKgwqAgfMKgwqAgOSArLQ0K
PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmPCoMKgwqDCoCB8wqAg
MTAgKy0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYyB8
IDE1NQ0KPiArKysrKysrKysrKysrKysrKy0tDQo+IMKgMyBmaWxlcyBjaGFuZ2VkLCAxNDQgaW5z
ZXJ0aW9ucygrKSwgMzAgZGVsZXRpb25zKC0pDQo+IA0KDQo=
