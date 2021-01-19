Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 074D02FB366
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 08:44:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67B596E839;
	Tue, 19 Jan 2021 07:44:08 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4A636E839
 for <Intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 07:44:06 +0000 (UTC)
IronPort-SDR: rAyGw06ol6uOSkxiKU6/VO8WTKXabmrlUiC5IP2hvVCS6YMrgzKfzAA058yWXAVvxJWi35fRxM
 DfW1vw7IOvFQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="158070801"
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="158070801"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 23:44:00 -0800
IronPort-SDR: 18CfD6726CSi/A9Vhbo4lbxqOEPXJSpWzdKDaf6Lji9npufIDUMeTvxdZmWZAxISGzqL4HvG5O
 O9mLkBfbhU3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="570927505"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 18 Jan 2021 23:43:59 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 18 Jan 2021 23:43:58 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 18 Jan 2021 23:43:58 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 18 Jan 2021 23:43:58 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 18 Jan 2021 23:43:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=luTn8/8+d6wP57UiukN60+czhzsvdhWB1PUvH66rhhvfLfrbelEt60+flVpgXf9LR18kxFW3iMaot6RJdB2Hmu1mzmeQNq4uCfiAFpqvl5IhQsIRkuq9ts7iIg1qef2rO6RZLHakOKhEvh8bn+aqq1ljLQkiDW/7ja4tAkbZlUaEMFbecxASzbYqouw5ZPdCkOvjwf5H29nTZZVBUgUR4jaILCgU//94b1UQvAiO6kJCBN0yAXyfCjo1omkqnfXWGs4Z0/koTDK07h+iD6e17YgJp9yueQ2WgEG4AusqVZQTZf474IGLlqyCxBn5euyFFywj74qGM9oh11zVm4o5vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A9ckCrQajDVD7rYng56qxVAZ1q9pRl7Jz4urD/E9/p8=;
 b=LuAE/zwyFFPEk3dTrFpQxhP0iqPvc5vQNqBMDt7SOi8ivMx2Fg4wRbzWG02BP6h/4L2b3uBuU4HPZkw76Z7Ux+Yy6C1LumBiKsI8y5kbPXYWjNBwvH7JFARoISI6yND7vC0wrcO2reiBDUlwdUQ9oEYbZdJVp6KAzUoOfdwhU3S+vhiC4o5YSX0DdQ3xf7aEJQNsgLDNd3neMYnFs3JugDoyukjwJs3LBwTE2jTWc1YXvu1+wMVjaNN+EcqBRlnhfpserAKTTFa9egUUwPAqH3ju4wU+4Gwz1p4x67oqSnAQOnj5a0hsleSmpbI+RiwuGc/Qbb0aqCSVVEa11AN2pQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A9ckCrQajDVD7rYng56qxVAZ1q9pRl7Jz4urD/E9/p8=;
 b=jTuvV1z8ZTl5xZhMK7MAL1GrdQL6pQfXfoiiwvlgOyF1UEgJHbJVFwLHzzKnk1f+BOZhA4Rsk1Vrsbp72H446yQ2ntiHUIAvddl5WSPsSR4yuNWadA7k3ovi78HSvdu3gr3a4e3BP40Pvlbe/ktNOjRUu+JU6h9xh1Fz6Go7sis=
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by MWHPR1101MB2239.namprd11.prod.outlook.com (2603:10b6:301:5b::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.13; Tue, 19 Jan
 2021 07:43:57 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::94eb:c915:5a57:e7bc]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::94eb:c915:5a57:e7bc%6]) with mapi id 15.20.3763.014; Tue, 19 Jan 2021
 07:43:57 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH] drm/i915/dp: DPTX writes Swing/Pre-emphs(DPCD
 0x103-0x106) requested during PHY Layer testing.
Thread-Index: AQHWeFBJC9h7pTfgWEKsTwcZLoCZZaomijQAgAjy2IA=
Date: Tue, 19 Jan 2021 07:43:56 +0000
Message-ID: <097601d8899c497ba574d9360b4292832a9a9d98.camel@intel.com>
References: <20200822064837.3276-1-khaled.almahallawy@intel.com>
 <20210113150440.GA371457@ideak-desk.fi.intel.com>
In-Reply-To: <20210113150440.GA371457@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cff4198f-d00a-49af-8f4c-08d8bc4dfa45
x-ms-traffictypediagnostic: MWHPR1101MB2239:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB2239EDF6140055138B5B409689A30@MWHPR1101MB2239.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G/Gu9l7QUdsNprDXWCpVWvX/t/7hRDT4+pUnpbixV/2Dxdm58aXcH3HY1e6nX6zQN4VnVCzVevyQ40CH4qKB/3CgHozl73Zirw91doWLGI3gx+xVJNLOWyQmwix6i/sHAuvsS2Mo4LiUKfGW/cqUS8/ITy58EO8lsxuuW6V811WdcKxLdjXuLD7Wrf33jfxUHdnF2DHEJzMGRC/YQUtqaxl+nOjfwUmE5lm5ztvGk5yCFGMj77g3m+BtGDhSxgxUbCg6+mTRZNMKKoOtkqGd0+n52wqFoZ2HionqgZuWHyn4hyFAXzGzT42KLM1ePjcADWoL/xRBwGsGFTbykaUG87ntjE6YBl4IZV5/isyeyGOZE0BR09CBZUrQNCy4N3TXTrSqiRaLNcBCX0oMNFZNHQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39860400002)(376002)(136003)(366004)(396003)(4326008)(6506007)(8676002)(6636002)(71200400001)(26005)(6862004)(316002)(83380400001)(66446008)(2616005)(37006003)(8936002)(107886003)(66556008)(66476007)(64756008)(66946007)(2906002)(76116006)(36756003)(186003)(86362001)(6486002)(6512007)(478600001)(5660300002)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?b0dLM2psZDRwQisva1piQXBHUldUSnZCVXcyY2syQTNpbXpGMDJLc0ljOVhw?=
 =?utf-8?B?Yk9jVVhIWnJxNkFLS3l1RFdxZjNPMC84eSs0RG9nT1d6emFXVFBPaGJrSHhp?=
 =?utf-8?B?Qm1LTHNzUEp4b0RzNUc0UmhjcGpCcmhSWXZVOGVZeHl6NHpIYW5rY3ZvdTNm?=
 =?utf-8?B?ZjloYlA3b2QrQTY0N2k2dStuWnhuSkhGbFltL3ZpeElMUE5KcW1QTHo4M3lN?=
 =?utf-8?B?cVJqZEU0Q3BVR2wvb0VNVE8xaU9abk10QWlMdTFtQ1NCSXpYSkFxcEsvSkcz?=
 =?utf-8?B?dFl2Y2EvL09mOEFNRHpob05NSllpVDlrbExYYmFOZHBkR09jR3BrQ3FlNklv?=
 =?utf-8?B?bkFtUDZYTUVLQnExYVFnbmZPb3RLKy9FbWR4VlNwTEJEUVp0b3hpRnVCblUr?=
 =?utf-8?B?cDNqdndUdVQ2ek1nc3I0RkdzSTZjVmMwT2U2bnRVM1dybjdxaU10UHEvWXlq?=
 =?utf-8?B?d0NoaHdOK3E0ZGJJaVhIQ3VMZmY5ODdBYWpTdDY1L2hwZllEREU4T0VDbkRL?=
 =?utf-8?B?TjBMNkdIWlpQQmdHYyszdXE3QkpUQThDWEczZDNrQWlVU2UrckRpMkU3NTFi?=
 =?utf-8?B?QWtaTEhVVGVtaUZ6UXRQSnFGY3BRQzg5SjA3MUpKVGJPN3BsMHR3dFg1WFN1?=
 =?utf-8?B?a2hQdHJ0MElsMkVOSmg1dWFPYlFwcWtUU1dOVGc1VjFERk1oY2lkbFNLenRa?=
 =?utf-8?B?SktyZVVMV2tHSlVJbWVjWEtKOGNLSGszcjl6cm92MUxRUlhqcnJwa2FjL0xE?=
 =?utf-8?B?WmhFWHJwVTdwZ0JZYnhQMlo1Tkt6Z3hVcnV3NUhIM2h1OWcrcUtiVDd1YkFj?=
 =?utf-8?B?clk2NkFhTm9qT0N4SDN4SEVINThjVExLK3FyTk8rUXlCVHZ4QmVKRExFalFr?=
 =?utf-8?B?aVo1UVo0TUJpa1BmenpMS0tQNFdyV1JETG1DWU9BYm10dzFHcVBBTlJ3WnJ0?=
 =?utf-8?B?dnhERUlSVnBiRHFKU292c0ZERWRZZ2hWL1Q5OWlqZ1V6d1BUZ2xyeVBsbU5F?=
 =?utf-8?B?RzBqOURKR2J4L01yYjE3YUkxZkU3V1liZ3FFYm93V0xpMkVHUS92WnV2bEJR?=
 =?utf-8?B?RHJ1U0FzeEFtZlZoa0I5RVRKelpycHM4RFVRWGNaUXYvb3N0djJkaEkvMHRK?=
 =?utf-8?B?TktBN2hTc1NwdklhbWZOS05lazFGc1FCem0wbmR1aGtLMEZ2WTVQNzFDbUxH?=
 =?utf-8?B?OE1ObWVHaTQva3VRZWhjMkw4QkhaVDJKdTZVYWZzbm1vMFphdm4zM3U3NlNI?=
 =?utf-8?B?VGJXeHNIWTdnVlpUcGxLUmJLN0hiTUkxRjQzaUF0VkhZQlF6bnpjQkRadjdn?=
 =?utf-8?Q?mPp4XeHyGoncFtQFEi2u0r7tb63/0TayQJ?=
Content-ID: <1D95D6EFE3C30A4081DC00DFF8577041@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cff4198f-d00a-49af-8f4c-08d8bc4dfa45
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2021 07:43:56.8887 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ncqVKpMibIHH7Yx7xmvq5kzpPycDRl3bOcJDYt50i0s6fLa+nUfrYtbHxhyNbos4zOoKuO6XboJXJ1ZxU/rGpefgZ7ndnLl23+RqWWslbU4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2239
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: DPTX writes
 Swing/Pre-emphs(DPCD 0x103-0x106) requested during PHY Layer testing.
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
Cc: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIxLTAxLTEzIGF0IDE3OjA0ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IEZyaSwgQXVnIDIxLCAyMDIwIGF0IDExOjQ4OjM3UE0gLTA3MDAsIEtoYWxlZCBBbG1haGFsbGF3
eSB3cm90ZToNCj4gPiBTb3VyY2UgbmVlZHMgdG8gd3JpdGUgRFBDRCAxMDMtMTA2IGFmdGVyIHJl
Y2VpdmluZyBhIFBIWSByZXF1ZXN0IHRvDQo+ID4gY2hhbmdlDQo+ID4gc3dpbmcvcHJlLWVtcGhh
c2lzIGFmdGVyIHJlYWRpbmcgRFBDRCAyMDYtMjA3LiBUaGlzIGlzIGVzcGVjaWFsbHkNCj4gPiBu
ZWVkZWQgaWYNCj4gPiB0aGVyZSBpcyBhIHJldGltZXIgYmV0d2VlbiBzb3VyY2UgYW5kIHNpbmsg
YW5kIHRoZSByZXRpbWVyDQo+ID4gaW1wbGVtZW50cyBBVVhfQ0gNCj4gPiBpbnRlcmNlcHRpb24g
c2NoZW1lIHRvIG1hbmFnZSBEUCBQSFkgc2V0dGluZ3MgKGUuZy4gYWRqdXN0aW5nDQo+ID4gU3dp
bmcvUHJlLWVtcGhhc2lzDQo+ID4gZXF1YWxpemF0aW9uIGxldmVsKSBmb3IgRFAgb3V0cHV0IGNo
YW5uZWwgLiBJZiB0aGUgc291cmNlIGRvZXNuJ3QNCj4gPiB3cml0ZSB0bw0KPiA+IERQQ0QgMTAz
LTEwNiwgdGhlIHJldGltZXIgbWF5IG5vdCBvdXRwdXQgdGhlIHJlcXVlc3RlZCBzd2luZy9wcmUt
DQo+ID4gZW1waGFzaXMgYW5kDQo+ID4gZXZlbnR1YWxseSB3ZSBmYWlsIGNvbXBsaWFuY2UuDQo+
ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogS2hhbGVkIEFsbWFoYWxsYXd5IDxraGFsZWQuYWxtYWhh
bGxhd3lAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMgfCAzICsrKw0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25z
KCspDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
DQo+ID4gaW5kZXggNzljMjdmOTFmNDJjLi41MDQ0MjAxY2E3NDIgMTAwNjQ0DQo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gQEAgLTU1MDMsNiArNTUwMyw5
IEBAIHZvaWQgaW50ZWxfZHBfcHJvY2Vzc19waHlfcmVxdWVzdChzdHJ1Y3QNCj4gPiBpbnRlbF9k
cCAqaW50ZWxfZHApDQo+ID4gIA0KPiA+ICAJaW50ZWxfZHBfYXV0b3Rlc3RfcGh5X2RkaV9lbmFi
bGUoaW50ZWxfZHAsIGRhdGEtPm51bV9sYW5lcyk7DQo+ID4gIA0KPiA+ICsJZHJtX2RwX2RwY2Rf
d3JpdGUoJmludGVsX2RwLT5hdXgsIERQX1RSQUlOSU5HX0xBTkUwX1NFVCwNCj4gPiArCQkJCWlu
dGVsX2RwLT50cmFpbl9zZXQsIGludGVsX2RwLQ0KPiA+ID5sYW5lX2NvdW50KTsNCj4gDQo+IFRo
aXMgc2hvdWxkIGJlIHJlYmFzZWQgb24gYSByZWNlbnQgY2hhbmdlIHVzaW5nIGluc3RlYWQNCj4g
Y3J0Y19zdGF0ZS0+bGFuZV9jb3VudC4gVGhhdCdzIGFsc28gbm90IGNvbXBsZXRlbHkgY29ycmVj
dCBzaW5jZSBpdCdzDQo+IG5vdCBndWFyYW50ZWVkIHRoYXQgdGhlIG91dHB1dCBpcyBlbmFibGVk
IChoYXZpbmcgdXAtdG8tZGF0ZSBsaW5rDQo+IHBhcmFtcw0KPiBpbiBjcnRjX3N0YXRlKSBhdCB0
aGUgdGltZSBvZiB0aGlzIHRlc3QgcmVxdWVzdC4gQWxzbw0KDQpTdXJlLCBJIHdpbGwgcmViYXNl
LCB0ZXN0IGFuZCByZXNlbmQuIA0KDQo+IGNvbXBsaWFuY2UudGVzdF9kYXRhLnBoeXRlc3QgaGFz
IGl0cyBvd24gbGluayBwYXJhbXMgdGhhdCBtYXkgYmUNCj4gZGlmZmVyZW50IGZyb20gdGhlIG9u
ZXMgaW4gY3J0Y19zdGF0ZS4NCg0KQWN0dWFsbHksIHRoZSByZXF1ZXN0IHRvIGNoYW5nZSB2c3dp
bmcvcHJlLWVtcCBhbmQgUEhZIHRlc3QgcGF0dGVybg0KY29tZXMgYWZ0ZXIgdGhlIHJlcXVlc3Qg
dG8gY2hhbmdlIExhbmUgY291bnQgYW5kIExpbmsgcmF0ZS4gTWF0dGVyIG9mDQpmYWN0IEkgdGhp
bmsgcGh5dGVzdC5udW1fbGFuZXMgYW5kIHBoeXRlc3QubGlua19yYXRlIG1heSBiZSBub3QNCm5l
Y2Vzc2FyaWx5IG5lZWRlZC4gSG93ZXZlciBJIGNhbm5vdCBtYWtlIHRoaXMgYXNzZXJ0aW9uIHll
dCB1bnRpbCBJDQpleGhhdXN0IGFsbCBhdXRvbWF0aW9uIG9wdGlvbnMgaW4gdGhlIHNjb3BlLiAN
Cg0KPiANCj4gSSdtIGFsc28gbm90IHN1cmUgaG93IGludGVsX2RwX2F1dG90ZXN0X3BoeV9kZGlf
ZGlzYWJsZSgpL2VuYWJsZSgpDQo+IGFmZmVjdHMgdGhlIHZzd2luZy9wcmUtZW1wIHNldHRpbmcg
b2YgdGhlIHNvdXJjZSAoRFBUWCkgdGhhdCBnb3QNCj4gaW5pdGVkDQo+IHdoZW4gdGhlIG91dHB1
dCB3YXMgbGFzdCBlbmFibGVkLiBUaGUgdnMvcGUgcHJvZ3JhbW1pbmcgc2VxdWVuY2UNCj4gc2hv
dWxkDQo+IGJlIGFsc28gcGFydCBvZiB0aGUgcG9ydCBlbmFibGluZy4gTWF5YmUgdGhlIEhXIHJl
dGFpbnMgdGhlIGNvbmZpZw0KPiBhY3Jvc3MgdGhlIHRoZSBhYm92ZSBwb3J0IGRpc2FibGUvZW5h
YmxlIGNhbGxzIGFuZCBzbyB0aGlzIGhhcHBlbnMNCj4gbm90DQo+IHRvIGJlIGEgcHJvYmxlbS4N
Cj4gDQoNClRoZSByZXF1ZXN0ZWQgVnN3aW5nL1ByZS1lbXBoIGZyb20gdGVzdCBzY29wZSBpcyBj
b21pbmcgYXMgcGFydCBvZg0Kc2hvcnQgSFBEIG5vdCBhcyBwYXJ0IG9mIExpbmsgVHJhaW5pbmcs
IHNvIEnigJltIG5vdCBzdXJlIGhvdyB3ZSBjYW4gdXNlDQp0aGVzZSByZXF1ZXN0ZWQgdnN3aW5n
L3ByZS1lbXBoIHZhbHVlcyBhcyB3ZSBkbyBmb3IgbGFuZSBjb3VudCBhbmQgTGluaw0KcmF0ZSBh
cyBpbiA6IGludGVsX2RwX2FkanVzdF9jb21wbGlhbmNlX2NvbmZpZw0KIA0KSG93ZXZlciB0aGUg
cmF0aW9uYWxlIGJlaGluZA0KaW50ZWxfZHBfYXV0b3Rlc3RfcGh5X2RkaV9kaXNhYmxlKCkvZW5h
YmxlKCkgaXMgYmFzZWQgb24gU3BlY3M6NTA0ODINCndoaWNoIHNhaWQgVFJBTlNfQ09ORiBhbmQg
VFJBTlNfRERJX0ZVTkNfQ1RMIG11c3QgYmUgZGlzYWJsZWQgcHJpb3IgdG8NCmVuYWJsaW5nIHRo
ZSB0ZXN0IHBhdHRlcm4NCg0KDQo+IFRoZXJlJ3MgYmVlbiBhIGRpc2N1c3Npb24gZWFybGllciB0
aGF0IGluc3RlYWQgb2Ygb3Blbi1jb2RpbmcgaGVyZQ0KPiBhbGwNCj4gdGhlIHBvcnQgZW5hYmxp
bmcvZGlzYWJsaW5nIGFuZCBsaW5rIHRyYWluaW5nIHByb2dyYW1taW5nIHNlcXVlbmNlcw0KPiB0
aGUNCj4gZHJpdmVyJ3MgYWN0dWFsIG1vZGVzZXR0aW5nIGFuZCBsaW5rIHRyYWluaW5nIGNvZGUg
c2hvdWxkIGJlIHVzZWQNCj4gaW5zdGVhZCwgbWFraW5nIHRob3NlIGF3YXJlIG9mIHRoZSBtb2Rp
ZmllZCBQSFkgdGVzdCByZXF1ZXN0IGxpbmsNCj4gcGFyYW1ldGVycy4gDQoNCkFjdHVhbGx5LCBW
aWxsZSBhbHJlYWR5IGRpZCBtb3N0IG9mIHRoZSB3b3JrIGFuZCBJIHRlc3RlZCBoaXMgY29kZQ0K
aW50ZWxfZHBfcGh5X3Rlc3QgDQoNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYw0KQEAgLTYyOTksNyArNjI5OSw4IEBAIGludGVsX2RwX3Nob3J0X3B1bHNlKHN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQogICAgICAgICAgICAgICAgICogRklYTUUgZ2V0IHJp
ZCBvZiB0aGUgYWQtaG9jIHBoeSB0ZXN0IG1vZGVzZXQgY29kZQ0KICAgICAgICAgICAgICAgICAq
IGFuZCBwcm9wZXJseSBpbmNvcnBvcmF0ZSBpdCBpbnRvIHRoZSBub3JtYWwgbW9kZXNldC4NCiAg
ICAgICAgICAgICAgICAgKi8NCi0gICAgICAgICAgICAgICByZXR1cm4gZmFsc2U7DQorICAgICAg
ICAgICAgICAgaW50ZWxfZHBfcGh5X3Rlc3QoZW5jb2Rlcik7DQorICAgICAgICAgICAgICAgYnJl
YWs7DQogICAgICAgIH0NCiANCiAgICAgICAgcmV0dXJuIHRydWU7DQogDQpUaGlzIGNvZGUgZXZl
biB3b3JrcyB3aXRoIHF1aXJrcyBvZiBzY3JpcHRpbmcgbW9kZSBvZiB0aGUgc2NvcGUgYXMNCndl
bGwuIA0KIA0KSG93ZXZlciwgSSBhbSBzdGlsbCBzdHJ1Z2dsaW5nIHdpdGggc2NoZWR1bGluZyBh
IGxvbmcgSFBELiBJ4oCZbSBwbGFubmluZw0KdG8gcmVwbHkgdG8gVmlsbGUncyBwYXRjaCBoZSBz
ZW50IHllc3RlcmRheTog4oCcZHJtL2k5MTU6IEZpeCB0aGUgUEhZDQpjb21wbGlhbmNlIHRlc3Qg
dnMuIGhvdHBsdWcgbWlzaGFw4oCdIHRvIHByb3ZpZGUgbW9yZSBpbmZvIGFib3V0IHRlc3QNCmF1
dG9tYXRpb24uDQoNClRoYW5rIFlvdSBmb3IgeW91IGZlZWRiYWNrIGFuZCByZXZpZXcuDQpLaGFs
ZWQNCg0KPiBJIHN1cHBvc2UgdW50aWwgdGhhdCdzIGRvbmUgd2UgY291bGQgc3RpbGwgbWVyZ2Ug
dGhpcyBwYXRjaA0KPiB3aXRoIHRoZSBhYm92ZSBpbnRlbF9kcC9jcnRjX3N0YXRlIGZpeCBhZnRl
ciB5b3UgY2FuIGNvbmZpcm0gdGhhdA0KPiB0aGlzDQo+IFBIWSB0ZXN0IGZ1bmN0aW9uYWxpdHkg
YWN0dWFsbHkgd29ya3MgYXRtLg0KPiANCj4gLS1JbXJlDQo+IA0KPiA+ICsNCj4gPiAgCWRybV9k
cF9zZXRfcGh5X3Rlc3RfcGF0dGVybigmaW50ZWxfZHAtPmF1eCwgZGF0YSwNCj4gPiAgCQkJCSAg
ICBsaW5rX3N0YXR1c1tEUF9EUENEX1JFVl0pOw0KPiA+ICB9DQo+ID4gLS0gDQo+ID4gMi4xNy4x
DQo+ID4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
