Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5C72F21E9
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 22:38:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCE7489A1A;
	Mon, 11 Jan 2021 21:38:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A904989A1A
 for <Intel-gfx@lists.freedesktop.org>; Mon, 11 Jan 2021 21:38:50 +0000 (UTC)
IronPort-SDR: f/NBUrN4iInHAoeA4VTr+4OYqsGmZ6WdQIrTlmhXe9fyC5K8iUfSRETo+GgPkxiRWnieu9xR+t
 xC6nFFxZGxJw==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="239482089"
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="239482089"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 13:38:46 -0800
IronPort-SDR: PxmzimpeLzUjE7iA+g4Frc1JcMMAPtUwe9clOyY8JtY6GXI5tq09cgD3AFZQKZmZNjOBOugrOO
 L1bNamDHRb8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="498708740"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga004.jf.intel.com with ESMTP; 11 Jan 2021 13:38:46 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 11 Jan 2021 13:38:45 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 11 Jan 2021 13:38:45 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 11 Jan 2021 13:38:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ds6MD8Ux/yYjqVQgJtlWMNv2R/wVOY4veIn0Sk1NQq2STEcL0HIMfm+xGK/2Z/qZ6ca+hPm+fhty7i/7BGFgCrgVc8V6BpbNoGH14y7KgOsrEcS/oThcyKDoXEEemUQsRSXNy1wi+75vfLWsovsrY47Z8OplZcGbbJme9dNLnGezgm0d5e+v/9vP2lzH2nVXakvgubY1JgR/gCrYUeZ8bmmVOdiakYydkosREPWK40JqHgTivtDRys/3U6VaG7aD69XiXRFxPXeIZKyBOwio1DVq5v5xL9giayLZItQUzsOTIrjWP1KmeyjPIzDGzPCjs94QhW5GMB2uViE5TAby7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8dZ0GrL//1sv1B2f9n0G+mzEEdcFdcxOgZ89r/g1V1g=;
 b=c4NgnRggUWR2XGQPvQi2Z4ScZU+wrVYvpd/aexKM00PzElFqzXrIlHvbHCARg654xGB4168jceavfUXxt0kQx2X+bHdvK3wPd7fKeToHbkJLuARC8WjJZkI3NUvAfQLLBf8FdeoDXvzW7MhzNIv2gPPxJKu3LPDEUYt+o/gzbAMTqE9SRNqhiN4liIOvowyeDFsYHaD0jbQpX1nuieytzlYKdr3HrlrwTj3BspEfJihdGQSkxahtf4hraxSL3I5qcHSrWyWsQRR8lpdMUTLqF5pSxOPd7kIDKJ3s4TgyxyDqjtsa0Dy8ooj/PfWFn8PALNuKRKQMYKALattrltuF2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8dZ0GrL//1sv1B2f9n0G+mzEEdcFdcxOgZ89r/g1V1g=;
 b=m94jmNzYrFz7L+Qfpk+RvDvng6GIQwcyv7TTeEeddRK4euvberBrvfTjvJrVT48sJjHs8ate0TCPigHWtQk3tu/VWbleb4U4PhZuwgYkJC+4d1KxAQ3K9LhhMy8FXytdm4pFmLdxy3OP42Y9pm+Tw/ivtzaPkrfvD6FJdzpsty8=
Received: from DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19)
 by DM6PR11MB4609.namprd11.prod.outlook.com (2603:10b6:5:28f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Mon, 11 Jan
 2021 21:38:43 +0000
Received: from DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::50ab:1cac:2a5a:7786]) by DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::50ab:1cac:2a5a:7786%8]) with mapi id 15.20.3742.012; Mon, 11 Jan 2021
 21:38:43 +0000
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-gfx] [RFC-v19 02/13] drm/i915/pxp: set KCR reg init
 during the boot time
Thread-Index: AQHW5IFvUr6mvDwXTkmr7VsjJGTrkaoc0XaAgADI5ACABWBJ4A==
Date: Mon, 11 Jan 2021 21:38:42 +0000
Message-ID: <DM6PR11MB45315ACD9C5ADE72383A740AD9AB0@DM6PR11MB4531.namprd11.prod.outlook.com>
References: <20210106231223.8323-1-sean.z.huang@intel.com>
 <20210106231223.8323-3-sean.z.huang@intel.com>
 <9d20bff6993bfcf5ff30dd766e930bb031b69d93.camel@intel.com>
 <161010543675.3935.1412306268203884564@jlahtine-mobl.ger.corp.intel.com>
In-Reply-To: <161010543675.3935.1412306268203884564@jlahtine-mobl.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [73.220.16.43]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f9897a92-b915-4a50-fc1e-08d8b679448b
x-ms-traffictypediagnostic: DM6PR11MB4609:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB46090CABE9BAE94AB0589C4ED9AB0@DM6PR11MB4609.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 929YZtSV2QnxoHSOf8dnKz+qKlzWBAEhVMU1a46vkrqXgNkHpj2P4JOZ6/nx7kmMWpsAuKj5igFmvxqeYogxvVfHsz+8F92xDIa4r5NadWv18gPurAPo9XD5lZ0u/1l8Sk+yKbKiBgu9LIIAxPMppTPUEChoW3NyF7lI8D7CIUGqTb9c/ZInQ4sXgl38C5ydfODvf0MRPM0Np8WZdXQIo3OK89+za5Of5f7fWDEgWAX7ZgaOwatWdZVy4dks3J9bHh3tlwTa89idR+x2meFL/ulTMLb/TnvnQV/fI+UxSoQPP0Mh4zJaEklHEXW33rR6MVriHLokxmD8HEtnn3xVtyXY/EmlWooHZc1PTO0KUF6bOk3qRQL2YC1ZUh8BZbygyCdFQARzDa5/ahkSPmqeHQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4531.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(396003)(366004)(39860400002)(346002)(83380400001)(53546011)(2906002)(76116006)(33656002)(71200400001)(8676002)(55016002)(64756008)(52536014)(478600001)(110136005)(66476007)(316002)(26005)(8936002)(66556008)(66446008)(186003)(6636002)(66946007)(86362001)(9686003)(7696005)(6506007)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?ejBDL3NYT0xuRnhXWkxvYUlDTDMzZUVLb2diTUwvVjVZVFZSM09PbzgweVdt?=
 =?utf-8?B?UjRyVnFDM3NkajBTTjhKVDQvWHNCR2dYTFEwS0tWaFg1VkpIVVJlOVk2NnhF?=
 =?utf-8?B?N3M5ZWdqakRNZlhmeUtIOFJ3M1ZJWlJ4WFJPd2Z5a0FjZDhZSzllRjV2UGtV?=
 =?utf-8?B?TEJBT052NE1zekZtei9Kb1JmakFhS1QzdkYvR2J4L1hTZS95WTZFdnhrUFJq?=
 =?utf-8?B?WjNtdklvckdOT0pzNk5NSkNmQ21vZUt2SDdPeUFOS2RtZGNMTXRDb0hzQTE5?=
 =?utf-8?B?ZS84T0FyWnlZYzZRL3BhZHJiem91eE1DeGdQc0pUdDhlU1NBTnlNbGdWa2No?=
 =?utf-8?B?N1VvdHd6bEJERWRJcUNaa2VtQkVnOUxiTXFPZitjVkhiUkVvdkMxajJHSHN3?=
 =?utf-8?B?WlIvNW1hcTI0RkJNbHFBZ0xTT05LQ0dYSXhldXhYWU1xUUYySjJZV2d0NXFX?=
 =?utf-8?B?akNTVEhVTTJOWStCNldkMHBYREMxdTdyZU1qaEdjZzlRaGJrUnp3TFNNNTk5?=
 =?utf-8?B?NGNuZHNqbWZ2UHZraHZBR3dpbTFZaVJVZHVuRm5QOHdZaWZwT3JSSmZvNUg3?=
 =?utf-8?B?VVg5Ynhjd1VCTTBmTlRPcFdTSVkzTEVDVk9HdnFqZzdTYklhcGJpWWxlc2xw?=
 =?utf-8?B?Yk50Z2RrN1I1YkdsSEMvKzV0THo2cWdHY2pyb3ptdVkzK3YwekZUVGFtb2R6?=
 =?utf-8?B?WjZxdWNDZG5JckFYTTdlTy9pTzVaaG1oTjYwd25hZlZKZmsyY09DR0I2alBC?=
 =?utf-8?B?bnVTQzFrTm5iV200algxeTRWekdIaWJWZkpJWW5NWWZERFE1MEIwRlFYUW9V?=
 =?utf-8?B?enhQVTYyYkJZdlF3SFhpVmVJY21FTUk2NG5lckVyRTRuTEhSR25jY2tmTkV5?=
 =?utf-8?B?cDFZcTJXK0J6SThqb2pnNEZCTVU2QlhkTFJoMHgwaEpzVFRlTG0wbk83ZVdY?=
 =?utf-8?B?L3lFTVd5ZkUwL1p3U0hNMEk3REVXTXlsNi91WkhOSWQ3MmhXL2RLb2tWWmI4?=
 =?utf-8?B?OG5pNHRoQnhrY1J1OER1Wm8zT256cGxSQVVEUkpMODZ5NEptSzN0QmJ3K3Jw?=
 =?utf-8?B?cUtMK0U3c09wMzRKelBxVkxlQjJHMjFUWDBqakJ0ekx1QW9LSk1sdHZ2ZzFB?=
 =?utf-8?B?ZEJIOE9rVU84ZWdJNWt0dW81V0g5K2h0QXhQMkRXaUgzSVV1NFhQMDhrblJl?=
 =?utf-8?B?Z1k0Tk5LdUtBSlRuYkpQUnNJMDJNS0xkYU9kd2tWNHlDaUsyamdnZnQ4OGky?=
 =?utf-8?B?VUdwaDlqVU1aUEY4Uis4dUdKcll0MENrbE1pOUxHUTVrSVFJeHhYbzlvd0xN?=
 =?utf-8?Q?NOEbOyBrpTcKA=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4531.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9897a92-b915-4a50-fc1e-08d8b679448b
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2021 21:38:42.7131 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TWU52JgkMl+l9IliE9uJM+hifWmve4nmrPTbm+XaST3idGpqWE5lwU3ZK72/jJVPaX2NhVGb5mNo94w7ugINnA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4609
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC-v19 02/13] drm/i915/pxp: set KCR reg init
 during the boot time
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGVsbG8sDQoNCkkgc2VlLCBiYXNlZCBvbiBKb29uYXMgYW5kIFJvZHJpZ28ncyBmZWVkYmFjay4N
Cg0KSSBtYWRlIHRoZSBtb2RpZmljYXRpb24gYXMgYmVsb3csIEkgd2lsbCBzdGlsbCBrZWVwIHRo
ZSBtYWNybyBpbiB0aGlzIC5jIGluc3RlYWQgb2YgaTkxNV9yZWcuaCwgYW5kIHRoaXMgY2hhbmdl
IHdpbGwgYmUgcmVmbGVjdGVkIGluIHJldjIwLg0KDQovKiBLQ1IgcmVnaXN0ZXIgZGVmaW5pdGlv
bnMgKi8NCiAjZGVmaW5lIEtDUl9JTklUICAgICAgICAgICAgX01NSU8oMHgzMjBmMCkNCi0jZGVm
aW5lIEtDUl9JTklUX01BU0tfU0hJRlQgKDE2KQ0KKw0KIC8qIFNldHRpbmcgS0NSIEluaXQgYml0
IGlzIHJlcXVpcmVkIGFmdGVyIHN5c3RlbSBib290ICovDQotI2RlZmluZSBLQ1JfSU5JVF9BTExP
V19ESVNQTEFZX01FX1dSSVRFUyAoQklUKDE0KSB8IChCSVQoMTQpIDw8IEtDUl9JTklUX01BU0tf
U0hJRlQpKQ0KKyNkZWZpbmUgS0NSX0lOSVRfQUxMT1dfRElTUExBWV9NRV9XUklURVMgKEJJVCgx
NCkgfCAoQklUKDE0KSA8PCAxNikpDQoNCkJlc3QgcmVnYXJkcywNClNlYW4NCg0KLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVu
QGxpbnV4LmludGVsLmNvbT4gDQpTZW50OiBGcmlkYXksIEphbnVhcnkgOCwgMjAyMSAzOjMxIEFN
DQpUbzogSHVhbmcsIFNlYW4gWiA8c2Vhbi56Lmh1YW5nQGludGVsLmNvbT47IEludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmc7IFZpdmksIFJvZHJpZ28gPHJvZHJpZ28udml2aUBpbnRlbC5j
b20+DQpTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1JGQy12MTkgMDIvMTNdIGRybS9pOTE1L3B4
cDogc2V0IEtDUiByZWcgaW5pdCBkdXJpbmcgdGhlIGJvb3QgdGltZQ0KDQpRdW90aW5nIFZpdmks
IFJvZHJpZ28gKDIwMjEtMDEtMDcgMTc6MzE6MzYpDQo+IE9uIFdlZCwgMjAyMS0wMS0wNiBhdCAx
NToxMiAtMDgwMCwgSHVhbmcsIFNlYW4gWiB3cm90ZToNCj4gPiBTZXQgdGhlIEtDUiBpbml0IGR1
cmluZyB0aGUgYm9vdCB0aW1lLCB3aGljaCBpcyByZXF1aXJlZCBieSANCj4gPiBoYXJkd2FyZSwg
dG8gYWxsb3cgdXMgZG9pbmcgZnVydGhlciBwcm90ZWN0aW9uIG9wZXJhdGlvbiBzdWNoIGFzIA0K
PiA+IHNlbmRpbmcgY29tbWFuZHMgdG8gR1BVIG9yIFRFRS4NCj4gPiANCj4gPiBTaWduZWQtb2Zm
LWJ5OiBIdWFuZywgU2VhbiBaIDxzZWFuLnouaHVhbmdAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+
IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cC5jIHwgOCArKysrKysrKw0KPiA+
IMKgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwLmMNCj4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L3B4cC9pbnRlbF9weHAuYw0KPiA+IGluZGV4IDliYzNjN2UzMDY1NC4uZjU2NmE0
ZmRhMDQ0IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9w
eHAuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHAuYw0KPiA+
IEBAIC02LDYgKzYsMTIgQEANCj4gPiDCoCNpbmNsdWRlICJpbnRlbF9weHAuaCINCj4gPiDCoCNp
bmNsdWRlICJpbnRlbF9weHBfY29udGV4dC5oIg0KPiA+IMKgDQo+ID4gKy8qIEtDUiByZWdpc3Rl
ciBkZWZpbml0aW9ucyAqLw0KPiANCj4gcGxlYXNlIGRlZmluZSB0aGlzIGluIGk5MTVfcmVnLmgN
Cg0KR2VuZXJhbGx5IHRoZSB0cmVuZCBvbiB0aGUgR1Qgc2lkZSBpcyB0byBjb250YWluIGluIGEg
LmMgZmlsZSBpZiB0aGVyZSBhcmUgbm8gc2hhcmVkIHVzZXJzIGxpa2UgdGhlc2UuIFNvIHRoZXkg
c2hvdWxkIGJlIGF0IHRoaXMgc3BvdCwgeWV0IHRoZSByZXN0IG9mIHRoZSByZXZpZXcgY29tbWVu
dHMgYXBwbHkuDQoNClRoZSBzcHVyaW91cyBjb21tZW50cyBzaG91bGQgYmUgZHJvcHBlZCBhbmQg
bGlrZSBSb2RyaWdvIHBvaW50ZWQgb3V0LCB3ZSBzaG91bGQgYmUgdXNpbmcgdGhlIGFwcHJvcHJp
YXRlIG1hY3JvcyBmb3IgYSBtYXNrZWQgd3JpdGVzLCBub3QgYmFraW5nIGluIHRoZSAjZGVmaW5l
Lg0KDQpSZWdhcmRzLCBKb29uYXMNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
