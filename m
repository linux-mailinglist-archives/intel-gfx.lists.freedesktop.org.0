Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F30762F2DDF
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 12:27:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4E9A6E1D2;
	Tue, 12 Jan 2021 11:27:35 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 456E06E1D2
 for <Intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 11:27:34 +0000 (UTC)
IronPort-SDR: Ho2BrX6emogbbUQAQ8w4t/freL5cwBps0wX37ebJzudqwGrWBbu3K3uhStG8RfyNEU9TBhruY2
 LH5u3P+yDz6A==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="178118576"
X-IronPort-AV: E=Sophos;i="5.79,341,1602572400"; d="scan'208";a="178118576"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 03:27:33 -0800
IronPort-SDR: lh/k2wnsdAwP+qnIXTioLq9EBrEWwgkEs1HtY3WhXJjYCHVwCdmZpKEUCyDzB0iItcniR8PREL
 3jBf3hQHgnBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,341,1602572400"; d="scan'208";a="567478055"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 12 Jan 2021 03:27:32 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 12 Jan 2021 03:27:32 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 12 Jan 2021 03:27:32 -0800
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.1713.004;
 Tue, 12 Jan 2021 03:27:32 -0800
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "Huang, Sean Z" <sean.z.huang@intel.com>, "Intel-gfx@lists.freedesktop.org"
 <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC-v19 02/13] drm/i915/pxp: set KCR reg init
 during the boot time
Thread-Index: AQHW5IFvUr6mvDwXTkmr7VsjJGTrkaoc0XaAgAFPAQCABWDlAIAA55AA
Date: Tue, 12 Jan 2021 11:27:32 +0000
Message-ID: <dc0506d6ba1f28d6ceda1fc2763f010213cc0031.camel@intel.com>
References: <20210106231223.8323-1-sean.z.huang@intel.com>
 <20210106231223.8323-3-sean.z.huang@intel.com>
 <9d20bff6993bfcf5ff30dd766e930bb031b69d93.camel@intel.com>
 <161010543675.3935.1412306268203884564@jlahtine-mobl.ger.corp.intel.com>
 <DM6PR11MB45315ACD9C5ADE72383A740AD9AB0@DM6PR11MB4531.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB45315ACD9C5ADE72383A740AD9AB0@DM6PR11MB4531.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.38.3 (3.38.3-1.fc33) 
x-originating-ip: [10.22.254.132]
Content-ID: <C6A797A9AB57944BA1CA5BC3F41CD82B@intel.com>
MIME-Version: 1.0
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

T24gTW9uLCAyMDIxLTAxLTExIGF0IDIxOjM4ICswMDAwLCBIdWFuZywgU2VhbiBaIHdyb3RlOg0K
PiBIZWxsbywNCj4gDQo+IEkgc2VlLCBiYXNlZCBvbiBKb29uYXMgYW5kIFJvZHJpZ28ncyBmZWVk
YmFjay4NCj4gDQo+IEkgbWFkZSB0aGUgbW9kaWZpY2F0aW9uIGFzIGJlbG93LCBJIHdpbGwgc3Rp
bGwga2VlcCB0aGUgbWFjcm8gaW4gdGhpcw0KPiAuYyBpbnN0ZWFkIG9mIGk5MTVfcmVnLmgsIGFu
ZCB0aGlzIGNoYW5nZSB3aWxsIGJlIHJlZmxlY3RlZCBpbiByZXYyMC4NCj4gDQo+IC8qIEtDUiBy
ZWdpc3RlciBkZWZpbml0aW9ucyAqLw0KPiDCoCNkZWZpbmUgS0NSX0lOSVTCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIF9NTUlPKDB4MzIwZjApDQo+IC0jZGVmaW5lIEtDUl9JTklUX01BU0tfU0hJRlQg
KDE2KQ0KPiArDQo+IMKgLyogU2V0dGluZyBLQ1IgSW5pdCBiaXQgaXMgcmVxdWlyZWQgYWZ0ZXIg
c3lzdGVtIGJvb3QgKi8NCj4gLSNkZWZpbmUgS0NSX0lOSVRfQUxMT1dfRElTUExBWV9NRV9XUklU
RVMgKEJJVCgxNCkgfCAoQklUKDE0KSA8PA0KPiBLQ1JfSU5JVF9NQVNLX1NISUZUKSkNCj4gKyNk
ZWZpbmUgS0NSX0lOSVRfQUxMT1dfRElTUExBWV9NRV9XUklURVMgKEJJVCgxNCkgfCAoQklUKDE0
KSA8PCAxNikpDQoNClRoaXMgaXMgbm90IHdoYXQgSSBhc2tlZCBhY3R1YWxseS4NCg0KSSBhc2tl
ZCB0byBnZXQgdGhlIEJJVCgxNCkgdG8gYmUgZGVmaW5lZCBzZXBhcmF0ZWQsIHNoaWZ0IGRlZmlu
ZWQgYXMNCndlbGwuLi4gYW5kIHRoZSB8IGFuZCBhY3R1YWxsIHNoaWZ0IG9wZXJhdGlvbnMgdG8g
YmUgcGVyZm9ybWVkIGluIHRoZQ0KY29kZSBhbmQgbm90IGluIHRoZSBkZWZpbmVzDQoNCj4gDQo+
IEJlc3QgcmVnYXJkcywNCj4gU2Vhbg0KPiANCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
Cj4gRnJvbTogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29t
Pg0KPiBTZW50OiBGcmlkYXksIEphbnVhcnkgOCwgMjAyMSAzOjMxIEFNDQo+IFRvOiBIdWFuZywg
U2VhbiBaIDxzZWFuLnouaHVhbmdAaW50ZWwuY29tPjsgDQo+IEludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmc7IFZpdmksIFJvZHJpZ28gPA0KPiByb2RyaWdvLnZpdmlAaW50ZWwuY29tPg0K
PiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1JGQy12MTkgMDIvMTNdIGRybS9pOTE1L3B4cDog
c2V0IEtDUiByZWcNCj4gaW5pdCBkdXJpbmcgdGhlIGJvb3QgdGltZQ0KPiANCj4gUXVvdGluZyBW
aXZpLCBSb2RyaWdvICgyMDIxLTAxLTA3IDE3OjMxOjM2KQ0KPiA+IE9uIFdlZCwgMjAyMS0wMS0w
NiBhdCAxNToxMiAtMDgwMCwgSHVhbmcsIFNlYW4gWiB3cm90ZToNCj4gPiA+IFNldCB0aGUgS0NS
IGluaXQgZHVyaW5nIHRoZSBib290IHRpbWUsIHdoaWNoIGlzIHJlcXVpcmVkIGJ5DQo+ID4gPiBo
YXJkd2FyZSwgdG8gYWxsb3cgdXMgZG9pbmcgZnVydGhlciBwcm90ZWN0aW9uIG9wZXJhdGlvbiBz
dWNoIGFzDQo+ID4gPiBzZW5kaW5nIGNvbW1hbmRzIHRvIEdQVSBvciBURUUuDQo+ID4gPiANCj4g
PiA+IFNpZ25lZC1vZmYtYnk6IEh1YW5nLCBTZWFuIFogPHNlYW4uei5odWFuZ0BpbnRlbC5jb20+
DQo+ID4gPiAtLS0NCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cC5j
IHwgOCArKysrKysrKw0KPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspDQo+
ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxf
cHhwLmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cC5jDQo+ID4g
PiBpbmRleCA5YmMzYzdlMzA2NTQuLmY1NjZhNGZkYTA0NCAxMDA2NDQNCj4gPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHAuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cC5jDQo+ID4gPiBAQCAtNiw2ICs2LDEyIEBADQo+ID4g
PiDCoCNpbmNsdWRlICJpbnRlbF9weHAuaCINCj4gPiA+IMKgI2luY2x1ZGUgImludGVsX3B4cF9j
b250ZXh0LmgiDQo+ID4gPiANCj4gPiA+ICsvKiBLQ1IgcmVnaXN0ZXIgZGVmaW5pdGlvbnMgKi8N
Cj4gPiANCj4gPiBwbGVhc2UgZGVmaW5lIHRoaXMgaW4gaTkxNV9yZWcuaA0KPiANCj4gR2VuZXJh
bGx5IHRoZSB0cmVuZCBvbiB0aGUgR1Qgc2lkZSBpcyB0byBjb250YWluIGluIGEgLmMgZmlsZSBp
Zg0KPiB0aGVyZSBhcmUgbm8gc2hhcmVkIHVzZXJzIGxpa2UgdGhlc2UuIFNvIHRoZXkgc2hvdWxk
IGJlIGF0IHRoaXMgc3BvdCwNCj4geWV0IHRoZSByZXN0IG9mIHRoZSByZXZpZXcgY29tbWVudHMg
YXBwbHkuDQo+IA0KPiBUaGUgc3B1cmlvdXMgY29tbWVudHMgc2hvdWxkIGJlIGRyb3BwZWQgYW5k
IGxpa2UgUm9kcmlnbyBwb2ludGVkIG91dCwNCj4gd2Ugc2hvdWxkIGJlIHVzaW5nIHRoZSBhcHBy
b3ByaWF0ZSBtYWNyb3MgZm9yIGEgbWFza2VkIHdyaXRlcywgbm90DQo+IGJha2luZyBpbiB0aGUg
I2RlZmluZS4NCj4gDQo+IFJlZ2FyZHMsIEpvb25hcw0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
