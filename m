Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB3B2F3BCD
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 22:22:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0583C89AA2;
	Tue, 12 Jan 2021 21:22:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFE8789BB3
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 21:22:37 +0000 (UTC)
IronPort-SDR: OW7gjtZiy42hX6LKElV/nojMg9KptoGWh42x5+0cnCng4FVHY9Ep2/dUo6CS1Js9amdahHHhC5
 UWrCkT/PZFmA==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="177333575"
X-IronPort-AV: E=Sophos;i="5.79,342,1602572400"; d="scan'208";a="177333575"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 13:22:37 -0800
IronPort-SDR: vJ0XjMU2T7K7FKlsJlqq+zi3k2jd9jaZMPafKoHJudTG/ea5fRpE6a6e32k40rRUjzIEcS07X4
 41Bif7wSFMUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,342,1602572400"; d="scan'208";a="424304050"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 12 Jan 2021 13:22:36 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 12 Jan 2021 13:22:36 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 12 Jan 2021 13:22:36 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 12 Jan 2021 13:22:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QpasniNeHmHQToyY9f2N1hxjOmyPKQZv7pVrSB3yFk2fdqSEAILqm/05PuIOiCm9dyTw5OvGRismxuUtBKN3dklSecEC1sIAK7IpSrS5dG8qxAUrrZ4YpiVEyN0DIyIJXm+wwxYLWHvkNV3jUav6rzI1TboFzpI3Iyr/YyW4Ht4ubqbqXAIce+ZVK79iKuz/mRi+6x1+0SicEzIayyun86TJnMV1gmIl5aC/qK+VkBbFv3RexdLzROJbL8BahDNZkiysxSNEhVCKY7L89gQzYSyZaKHG2X860zXjfZXgssd6r/NDtnkt/tfvvis6GoWbZRhFeO1JrdSOJOehFq+7KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=auOxJ7oeoEq7ldQKXCb6wuRm+8H7UxLusI14kffGSBM=;
 b=QWXVnkSxfTMxLwVNwsg/SYJTyesrXjX+dU0X0AgUT2bIPzL/OaVAY+Kn1oQZg2IiRrgkERDJ+BRr6EFhN6Qj0b6Jz8R3M6PpXw4R75Z/cEQX/W57ummFXdxUnulkV/u6ZFsNzUNg8Bo5v5sXlNLC3zIJXNBrgSxhrWdxS7F1c66PavxEiCvvf88XW/lMz7/1+UKHacZGHO2RsWKvjSytGKTOVttpdxemvrf5TK3/uBErtwQsICArIvyWO77ps5wBNoZUi/OS4TRIFBc6QqvKl420RE9pNUZgufUoSWZOVS7ISD9R2ugNGVtb2STHXuGHMI6u+imK/Wp0UuNJZ0MIDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=auOxJ7oeoEq7ldQKXCb6wuRm+8H7UxLusI14kffGSBM=;
 b=g/LyvbMKna3SBYv1YFOk0r9YX5PX5qtchPeEdU6gEQ0NUbfMfLGPdLA/3n7k1rAKG6J6lYMvCK1u4twFXBRW3CgkzjLnaLOLfegjolsv3CEjCNWnipsWBYe/r/gl0sf9Mqp9vZJ28hrf8zN3R56GIZe7TYvLhSbJnU34G0VUCxk=
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by MWHPR11MB2032.namprd11.prod.outlook.com (2603:10b6:300:2b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Tue, 12 Jan
 2021 21:21:54 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::94eb:c915:5a57:e7bc]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::94eb:c915:5a57:e7bc%6]) with mapi id 15.20.3742.012; Tue, 12 Jan 2021
 21:21:54 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Deak,
 Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/dp: Fix LTTPR vswing/pre-emp
 setting in non-transparent mode
Thread-Index: AQHW3gcywJbEd8xl+0+EUt+iBdg8pKokYGkAgAAoYACAAA0PgA==
Date: Tue, 12 Jan 2021 21:21:54 +0000
Message-ID: <743441674eaac3fe84eae8e94924f4fa0935ce3c.camel@intel.com>
References: <20201229172201.4155327-1-imre.deak@intel.com>
 <20201229172201.4155327-2-imre.deak@intel.com> <X/3mIA6nvmhYK2SK@intel.com>
 <20210112203510.GB330298@ideak-desk.fi.intel.com>
In-Reply-To: <20210112203510.GB330298@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.52.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 88aa23a7-591b-4030-34c5-08d8b74015fb
x-ms-traffictypediagnostic: MWHPR11MB2032:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB2032A24D7AB6B26CA8DABE4A89AA0@MWHPR11MB2032.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sfkxvzmT00T3CVAUmCacaJcYZoMh7pVcwaMKLSdo8BtvpNyzGPTVYOGgYNf3E98h3pj6b+Jq0IoR5vjDaH/goTiCsQ8w3BvDUmS+ACtrkWRXMsvsUvsF7OLwgtzFJB4jI2yI1T2BrKhOdxkWB+aB78wzeJtGxtu5i2Sb1e+KHSEkl2OSkejcsTPkKhr2nfO9HgkKA5y5pv4nakLBzWk8sfcrXYiwlSV1ODZBHKeL1RL0lWxR63OQVcSmDsxl5vFrkQpifNAL8pTRi+FH+S0nq3CG0IevAi0C/4mhHpok/T4jNaGTyAMWLBEPbSGE+y1JndoYvJA17hzdCkycdUZ/OU/+zESLYnrN9/8sVeStzsAg+eQCPIn3OxI/GlWL3v2SVDxoywrSc+1njp/KRfCisOezZy0b9ohhpWHuBN3XSYE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(346002)(366004)(376002)(39860400002)(136003)(66446008)(478600001)(316002)(110136005)(8676002)(91956017)(66476007)(66946007)(966005)(2616005)(6512007)(26005)(66556008)(6636002)(8936002)(86362001)(76116006)(186003)(36756003)(83380400001)(71200400001)(4326008)(64756008)(66574015)(2906002)(6506007)(6486002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?RXBTUnJkaFRRY3VEWW14ZC96TTlBTC9ET1RML21qcmUvQlU2cUVXL2JJL1NZ?=
 =?utf-8?B?empTa0NLTXZDUUxZNEhRMDN6cGV3ZlZSeHRjR2FsM2xVRTRibmtiUFJyVCtC?=
 =?utf-8?B?SjRXRVNhSDBXQ2hHSkNNdmxsTlRZaWVrMTd4d1B6MjZ4VnVHTUE1dnQ0cURQ?=
 =?utf-8?B?UEU3Z1RROUhFa0NaRmFaZ2ZkUDUvL2N5SXg3aE5qWTROY1ZXeitGMzhKQXBs?=
 =?utf-8?B?N0svZUdRaHNSNWkvQ1ROOWRBcmt6ZG1wNHBOUmJUd2o5elpIZWIxYjI1bFBI?=
 =?utf-8?B?OVlETTdZaW5ia2Y4ci9OUXdwc0ZxQzVDWk4rSlVXTnZZZ3lyRDRKaU16Tkgv?=
 =?utf-8?B?dDIreXA4NnVUb084d2ZPSGNETXB5eS8zVXJyMEFONFZyeDNtdWtyVFdJb3NY?=
 =?utf-8?B?SXpSTGZGNTRQRXR4U2J5VERaU3ZvZWErOTIyRzRlUTBRTi9KRHIveVBVZzhY?=
 =?utf-8?B?cnJGK0EwaTRlTWhNZzdpeVRHcTVGb29yTzVIRUlaVEJsSnV5R0hDSmtRWm5n?=
 =?utf-8?B?VXN6TmVENjZDdW5rWmFsYmp1NkFWTkdZL1diNXpiL1Baamd4SWxhWUNpNEJF?=
 =?utf-8?B?dUsvZHBmOStONDhFaEpPNHEyNCtNa05IaXNabHg4aVdPdTVtMXdDdW1ubnVo?=
 =?utf-8?B?TjRvbVFkUlRwWlV6V0pOcTVsYXNXa0NybnE5K3h6QTNaSHFkYXI5MHlTMmpU?=
 =?utf-8?B?MmkyUEJTMDZWTkZSQ0xOd2d0bkkvcGVKQU1XUG9wR1RseWJLcEJhQjZMZEpl?=
 =?utf-8?B?cEFnK1pwYk1lVlVXNlBrR2dMcDBXQ0JyUFpPN2VwZU16WURUcGNlWjFvVGxu?=
 =?utf-8?B?aEE4M3d6T29RSVBqL0hlT3NZMXJLY2VXRnhjV3RJQXM2Q1IreEZPY3V6SFUv?=
 =?utf-8?B?azJ1WWlnVWhGTU5iNlB6blJXTk13bU1RK0FsbWRJekYvNVQ3Z3RCVWJuRGR5?=
 =?utf-8?B?dGpaMm1yTGxORy92UXJCUkk1ejdCdmhuR29xSi9HcEJJdTRqa0dqVjA0THgv?=
 =?utf-8?B?Tk5PYXEweEZ2bmNxMVE2OVhFU1NRbjdCVHpYQXJyQmd2bk1PN1pnL1owclhC?=
 =?utf-8?B?Q2RXV09DbDJxaU9JSmVJNDgvMzNiUG9BOEJaNGVJbHl1NkJXWWwzMnlFQ2k1?=
 =?utf-8?B?dE81ZjU2cmZZcnhFdHBWVk0zRTQzdWFoUXkvelJzejV6L1llYytlcTEvdTVI?=
 =?utf-8?B?Q0VtTVlIVjkwRzEvcnNRbVNYMG1qOG1qaG1iZXZ2ZGRCUVRGUldxVWplVTNN?=
 =?utf-8?B?aXRRY2FJeCtSWlZOKzNlQW56N0dZVGlxRTNCTWJMWHMwS1IyVEFHY0FCWWdZ?=
 =?utf-8?Q?lkIRf2hzmYnm8BaTwhYB9mQPaa+m4Evpiy?=
Content-ID: <C50D691B85041A4C97880EBBC5EA37BB@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88aa23a7-591b-4030-34c5-08d8b74015fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2021 21:21:54.6902 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: buenFziVJ2Ds1PAP3bAhgBa8WTEIu0y6imvicIu5OFE5QEEr9HCPWmWrWKgWLX+8XGCh32WQrfSHBD9dBffVFFeZEZl5h9ttDo3mfdwZFks=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB2032
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dp: Fix LTTPR vswing/pre-emp
 setting in non-transparent mode
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIxLTAxLTEyIGF0IDIyOjM1ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IFR1ZSwgSmFuIDEyLCAyMDIxIGF0IDA4OjEwOjQwUE0gKzAyMDAsIFZpbGxlIFN5cmrDpGzDpCB3
cm90ZToNCj4gPiBPbiBUdWUsIERlYyAyOSwgMjAyMCBhdCAwNzoyMjowMVBNICswMjAwLCBJbXJl
IERlYWsgd3JvdGU6DQo+ID4gPiBUaGUgRFAgUEhZIHZzd2luZy9wcmUtZW1waGFzaXMgbGV2ZWwg
cHJvZ3JhbW1pbmcgdGhlIGRyaXZlciBkb2VzDQo+ID4gPiBpcw0KPiA+ID4gcmVsYXRlZCB0byB0
aGUgRFBUWCAtPiBmaXJzdCBMVFRQUiBsaW5rIHNlZ21lbnQgb25seS4gQWNjb3JkaW5nbHkNCj4g
PiA+IGl0DQo+ID4gPiBzaG91bGQgYmUgb25seSBwcm9ncmFtbWVkIHdoZW4gbGluayB0cmFpbmlu
ZyB0aGUgZmlyc3QgTFRUUFIgYW5kDQo+ID4gPiBrZXB0DQo+ID4gPiBhcy1pcyB3aGVuIHRyYWlu
aW5nIHN1YnNlcXVlbnQgTFRUUFJzIGFuZCB0aGUgRFBSWC4gRm9yIHRoZXNlDQo+ID4gPiBsYXR0
ZXINCj4gPiA+IFBIWXMgdGhlIHZzL3BlIGxldmVscyB3aWxsIGJlIHNldCBpbiByZXNwb25zZSB0
byB3cml0aW5nIHRoZQ0KPiA+ID4gRFBfVFJBSU5JTkdfTEFORXhfU0VUX1BIWV9SRVBFQVRFUnkg
RFBDRCByZWdpc3RlcnMgKGJ5IGFuDQo+ID4gPiB1cHN0cmVhbSBMVFRQUg0KPiA+ID4gVFggUEhZ
IHNub29waW5nIHRoaXMgd3JpdGUgYWNjZXNzIG9mIGl0cyBkb3duc3RyZWFtIExUVFBSL0RQUlgg
UlgNCj4gPiA+IFBIWSkuDQo+ID4gPiBUaGUgYWJvdmUgaXMgYWxzbyBkZXNjcmliZWQgaW4gRFAg
U3RhbmRhcmQgdjIuMCB1bmRlciAzLjYuNi4xLg0KPiA+ID4gDQo+ID4gPiBXaGlsZSBhdCBpdCBz
aW1wbGlmeSBhbmQgYWRkIHRoZSBMVFRQUiB0aGF0IGlzIGxpbmsgdHJhaW5lZCB0bw0KPiA+ID4g
dGhlIGRlYnVnDQo+ID4gPiBtZXNzYWdlIGluIGludGVsX2RwX3NldF9zaWduYWxfbGV2ZWxzKCku
DQo+ID4gPiANCj4gPiA+IEZpeGVzOiBiMzBlZGZkOGQwYjQgKCJkcm0vaTkxNTogU3dpdGNoIHRv
IExUVFBSIG5vbi10cmFuc3BhcmVudA0KPiA+ID4gbW9kZSBsaW5rIHRyYWluaW5nIikNCj4gPiA+
IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+
ID4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiA+ID4g
LS0tDQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAg
IHwgIDIgKy0NCj4gPiA+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWlu
aW5nLmMgfCAxOSArKysrKysrKysrKw0KPiA+ID4gLS0tLS0tLS0NCj4gPiA+ICAuLi4vZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmggfCAgMyArKy0NCj4gPiA+ICAzIGZp
bGVzIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQ0KPiA+ID4gDQo+
ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
DQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+ID4g
aW5kZXggODhhNjAzM2Q2ODY3Li4xNmM1NjNmMWE1MTUgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+ID4gQEAgLTYwNTcsNyArNjA1Nyw3
IEBAIHN0YXRpYyB2b2lkDQo+ID4gPiBpbnRlbF9kcF9wcm9jZXNzX3BoeV9yZXF1ZXN0KHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gPiAgDQo+ID4gPiAgCWludGVsX2RwX2F1dG90ZXN0
X3BoeV9kZGlfZGlzYWJsZShpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7DQo+ID4gPiAgDQo+ID4gPiAt
CWludGVsX2RwX3NldF9zaWduYWxfbGV2ZWxzKGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gPiA+
ICsJaW50ZWxfZHBfc2V0X3NpZ25hbF9sZXZlbHMoaW50ZWxfZHAsIGNydGNfc3RhdGUsIERQX1BI
WV9EUFJYKTsNCj4gPiA+ICANCj4gPiA+ICAJaW50ZWxfZHBfcGh5X3BhdHRlcm5fdXBkYXRlKGlu
dGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gPiA+ICANCj4gPiA+IGRpZmYgLS1naXQNCj4gPiA+IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4g
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5n
LmMNCj4gPiA+IGluZGV4IDc4NzZlNzgxZjY5OC4uZDhjNmQ3MDU0ZDExIDEwMDY0NA0KPiA+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5n
LmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlu
a190cmFpbmluZy5jDQo+ID4gPiBAQCAtMzM1LDIxICszMzUsMjQgQEAgaW50ZWxfZHBfc2V0X2xp
bmtfdHJhaW4oc3RydWN0IGludGVsX2RwDQo+ID4gPiAqaW50ZWxfZHAsDQo+ID4gPiAgfQ0KPiA+
ID4gIA0KPiA+ID4gIHZvaWQgaW50ZWxfZHBfc2V0X3NpZ25hbF9sZXZlbHMoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCwNCj4gPiA+IC0JCQkJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUN
Cj4gPiA+ICpjcnRjX3N0YXRlKQ0KPiA+ID4gKwkJCQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZQ0KPiA+ID4gKmNydGNfc3RhdGUsDQo+ID4gPiArCQkJCWVudW0gZHJtX2RwX3BoeSBkcF9w
aHkpDQo+ID4gPiAgew0KPiA+ID4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4gPiA+ICAJdTggdHJhaW5fc2V0ID0gaW50ZWxfZHAt
PnRyYWluX3NldFswXTsNCj4gPiA+ICsJY2hhciBwaHlfbmFtZVsxMF07DQo+ID4gPiAgDQo+ID4g
PiAtCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiVXNpbmcgdnN3aW5nIGxldmVsICVkJXNc
biIsDQo+ID4gPiArCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiVXNpbmcgdnN3aW5nIGxl
dmVsICVkJXMsIHByZS0NCj4gPiA+IGVtcGhhc2lzIGxldmVsICVkJXMsIGF0ICVzXG4iLA0KPiA+
ID4gIAkJICAgIHRyYWluX3NldCAmIERQX1RSQUlOX1ZPTFRBR0VfU1dJTkdfTUFTSywNCj4gPiA+
IC0JCSAgICB0cmFpbl9zZXQgJiBEUF9UUkFJTl9NQVhfU1dJTkdfUkVBQ0hFRCA/ICIgKG1heCki
IDoNCj4gPiA+ICIiKTsNCj4gPiA+IC0JZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sICJVc2lu
ZyBwcmUtZW1waGFzaXMgbGV2ZWwgJWQlc1xuIiwNCj4gPiA+ICsJCSAgICB0cmFpbl9zZXQgJiBE
UF9UUkFJTl9NQVhfU1dJTkdfUkVBQ0hFRCA/ICIgKG1heCkiIDoNCj4gPiA+ICIiLA0KPiA+ID4g
IAkJICAgICh0cmFpbl9zZXQgJiBEUF9UUkFJTl9QUkVfRU1QSEFTSVNfTUFTSykgPj4NCj4gPiA+
ICAJCSAgICBEUF9UUkFJTl9QUkVfRU1QSEFTSVNfU0hJRlQsDQo+ID4gPiAgCQkgICAgdHJhaW5f
c2V0ICYgRFBfVFJBSU5fTUFYX1BSRV9FTVBIQVNJU19SRUFDSEVEID8NCj4gPiA+IC0JCSAgICAi
IChtYXgpIiA6ICIiKTsNCj4gPiA+ICsJCSAgICAiIChtYXgpIiA6ICIiLA0KPiA+ID4gKwkJICAg
IGludGVsX2RwX3BoeV9uYW1lKGRwX3BoeSwgcGh5X25hbWUsDQo+ID4gPiBzaXplb2YocGh5X25h
bWUpKSk7DQo+ID4gPiAgDQo+ID4gPiAtCWludGVsX2RwLT5zZXRfc2lnbmFsX2xldmVscyhpbnRl
bF9kcCwgY3J0Y19zdGF0ZSk7DQo+ID4gPiArCWlmIChpbnRlbF9kcF9waHlfaXNfZG93bnN0cmVh
bV9vZl9zb3VyY2UoaW50ZWxfZHAsIGRwX3BoeSkpDQo+ID4gPiArCQlpbnRlbF9kcC0+c2V0X3Np
Z25hbF9sZXZlbHMoaW50ZWxfZHAsIGNydGNfc3RhdGUpOw0KPiA+IA0KPiA+IFRoZSBmdW5jdGlv
biBuYW1lIGlzIGEgYml0IG1pc2xlYWRpbmcgbm93IEkgZ3Vlc3Mgc2luY2Ugd2UncmUgbm90DQo+
ID4gYWN0dWFsbHkgc2V0dGluZyB0aGUgc2lnbmFsIGxldmVscyBoZXJlIGZvciB0aGUgTFRUUFJz
LiBCdXQgc2luY2UNCj4gPiB0aGUgZGVidWcgcHJpbnQgaXMgaGVyZSBJIGd1ZXNzIHdlIHdhbnQg
dG8gc3RpbGwgY2FsbCB0aGlzLiBBbmQgYXMNCj4gPiB1c3VhbCBJIGNhbid0IHRoaW5rIG9mIGEg
YmV0dGVyIG5hbWUgZm9yIHRoaXMsIHNvIEknbSB3aWxsaW5nDQo+ID4gdG8gYWNjZXB0IHRoYXQg
c2xpZ2h0IGluY29uc2lzdGVuY3kuDQo+IA0KPiBBZ3JlZWQsIHdpbGwgdHJ5IHRvIG1ha2UgdGhh
dCBtb3JlIGNvbnNpc3RlbnQgYXMgYSBmb2xsb3cgdXAuDQo+IA0KPiBCdHcsIGNoZWNraW5nIGFn
YWluIHRoZSBjYWxsZXJzIG9mIHRoZSBhYm92ZSwgbG9va3MgbGlrZQ0KPiBpbnRlbF9kcF9wcm9j
ZXNzX3BoeV9yZXF1ZXN0KCkgYWxzbyBtaXNzZXMgdGhlIERQQ0Qgd3JpdGUgZm9yIHRoZQ0KPiB2
cy9wZQ0KPiBzZXR0aW5ncy4NCg0KSW4gb2xkZXIgY29tcGxpYW5jZSBkZXNpZ24gdGhpcyBpcyBw
YXRjaCBJIHVzZWQgZm9yIENocm9tZSBpbiBvcmRlciBmb3INCnJldGltZXIgdG8gc25vb3Agc3dp
bmcvcHJlLWVtcGhhc2lzIGxldmVscyAoVkxLLTExODI5KQ0KaHR0cHM6Ly9wYXRjaHdvcmsuZnJl
ZWRlc2t0b3Aub3JnL3BhdGNoLzM4NzI0OS8NCg0KDQpUaGFua3MNCktoYWxlZA0KDQo+IA0KPiA+
IFJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPg0KPiA+IA0KPiA+ID4gIH0NCj4gPiA+ICANCj4gPiA+ICBzdGF0aWMgYm9vbA0KPiA+ID4g
QEAgLTM1OSw3ICszNjIsNyBAQCBpbnRlbF9kcF9yZXNldF9saW5rX3RyYWluKHN0cnVjdCBpbnRl
bF9kcA0KPiA+ID4gKmludGVsX2RwLA0KPiA+ID4gIAkJCSAgdTggZHBfdHJhaW5fcGF0KQ0KPiA+
ID4gIHsNCj4gPiA+ICAJbWVtc2V0KGludGVsX2RwLT50cmFpbl9zZXQsIDAsIHNpemVvZihpbnRl
bF9kcC0+dHJhaW5fc2V0KSk7DQo+ID4gPiAtCWludGVsX2RwX3NldF9zaWduYWxfbGV2ZWxzKGlu
dGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gPiA+ICsJaW50ZWxfZHBfc2V0X3NpZ25hbF9sZXZlbHMo
aW50ZWxfZHAsIGNydGNfc3RhdGUsIGRwX3BoeSk7DQo+ID4gPiAgCXJldHVybiBpbnRlbF9kcF9z
ZXRfbGlua190cmFpbihpbnRlbF9kcCwgY3J0Y19zdGF0ZSwgZHBfcGh5LA0KPiA+ID4gZHBfdHJh
aW5fcGF0KTsNCj4gPiA+ICB9DQo+ID4gPiAgDQo+ID4gPiBAQCAtMzczLDcgKzM3Niw3IEBAIGlu
dGVsX2RwX3VwZGF0ZV9saW5rX3RyYWluKHN0cnVjdCBpbnRlbF9kcA0KPiA+ID4gKmludGVsX2Rw
LA0KPiA+ID4gIAkJCSAgICBEUF9UUkFJTklOR19MQU5FMF9TRVRfUEhZX1JFUEVBVEVSKGRwX3Bo
eSk7DQo+ID4gPiAgCWludCByZXQ7DQo+ID4gPiAgDQo+ID4gPiAtCWludGVsX2RwX3NldF9zaWdu
YWxfbGV2ZWxzKGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gPiA+ICsJaW50ZWxfZHBfc2V0X3Np
Z25hbF9sZXZlbHMoaW50ZWxfZHAsIGNydGNfc3RhdGUsIGRwX3BoeSk7DQo+ID4gPiAgDQo+ID4g
PiAgCXJldCA9IGRybV9kcF9kcGNkX3dyaXRlKCZpbnRlbF9kcC0+YXV4LCByZWcsDQo+ID4gPiAg
CQkJCWludGVsX2RwLT50cmFpbl9zZXQsIGNydGNfc3RhdGUtDQo+ID4gPiA+bGFuZV9jb3VudCk7
DQo+ID4gPiBkaWZmIC0tZ2l0DQo+ID4gPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfbGlua190cmFpbmluZy5oDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5oDQo+ID4gPiBpbmRleCBjMzExMGMwMzJiYzIu
LjZhMWY3NmJkOGM3NSAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5oDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuaA0KPiA+ID4gQEAgLTE4LDcg
KzE4LDggQEAgdm9pZCBpbnRlbF9kcF9nZXRfYWRqdXN0X3RyYWluKHN0cnVjdCBpbnRlbF9kcA0K
PiA+ID4gKmludGVsX2RwLA0KPiA+ID4gIAkJCSAgICAgICBlbnVtIGRybV9kcF9waHkgZHBfcGh5
LA0KPiA+ID4gIAkJCSAgICAgICBjb25zdCB1OA0KPiA+ID4gbGlua19zdGF0dXNbRFBfTElOS19T
VEFUVVNfU0laRV0pOw0KPiA+ID4gIHZvaWQgaW50ZWxfZHBfc2V0X3NpZ25hbF9sZXZlbHMoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiA+IC0JCQkJY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUNCj4gPiA+ICpjcnRjX3N0YXRlKTsNCj4gPiA+ICsJCQkJY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUNCj4gPiA+ICpjcnRjX3N0YXRlLA0KPiA+ID4gKwkJCQllbnVtIGRybV9k
cF9waHkgZHBfcGh5KTsNCj4gPiA+ICB2b2lkIGludGVsX2RwX3N0YXJ0X2xpbmtfdHJhaW4oc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiA+ICAJCQkgICAgICAgY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUNCj4gPiA+ICpjcnRjX3N0YXRlKTsNCj4gPiA+ICB2b2lkIGludGVsX2Rw
X3N0b3BfbGlua190cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ID4gLS0gDQo+
ID4gPiAyLjI1LjENCj4gPiANCj4gPiAtLSANCj4gPiBWaWxsZSBTeXJqw6Rsw6QNCj4gPiBJbnRl
bA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBJ
bnRlbC1nZnggbWFpbGluZyBsaXN0DQo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
