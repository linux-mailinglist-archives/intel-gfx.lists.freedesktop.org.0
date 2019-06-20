Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7FA4D558
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 19:36:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50BD96E5DA;
	Thu, 20 Jun 2019 17:36:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 199366E5DA
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 17:36:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 10:36:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,397,1557212400"; d="scan'208";a="335568852"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga005.jf.intel.com with ESMTP; 20 Jun 2019 10:36:56 -0700
Received: from fmsmsx124.amr.corp.intel.com (10.18.125.39) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 20 Jun 2019 10:36:56 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.210]) by
 fmsmsx124.amr.corp.intel.com ([169.254.8.122]) with mapi id 14.03.0439.000;
 Thu, 20 Jun 2019 10:36:56 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [PATCH v6 3/4] drm/i915/psr: Make PSR registers relative to
 transcoders
Thread-Index: AQHVJvMVU9N/RGQoqEq4aTOv8rPaoaakp28AgACdgwA=
Date: Thu, 20 Jun 2019 17:36:55 +0000
Message-ID: <a0e7424a0c7e856c79fc3a05959f475b9fe67f8b.camel@intel.com>
References: <20190619230222.4346-1-jose.souza@intel.com>
 <20190619230222.4346-3-jose.souza@intel.com> <878stwu12j.fsf@intel.com>
In-Reply-To: <878stwu12j.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.250]
Content-ID: <B16672291D828F4EBE20D7A598BD196E@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v6 3/4] drm/i915/psr: Make PSR registers
 relative to transcoders
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: "Pandiyan, Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTA2LTIwIGF0IDExOjEzICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gV2VkLCAxOSBKdW4gMjAxOSwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+DQo+IHdyb3RlOg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4g
aW5kZXggNGZjOGRjMDgzNzY2Li4zMWZiNGRlNTA4MWMgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgNCj4gPiBAQCAtNDIyNSwxMCArNDIyNSwxOCBAQCBlbnVtIHsNCj4gPiAgI2Rl
ZmluZSBQSVBFU1JDKHRyYW5zKQkJX01NSU9fVFJBTlMyKHRyYW5zLCBfUElQRUFTUkMpDQo+ID4g
ICNkZWZpbmUgUElQRV9NVUxUKHRyYW5zKQlfTU1JT19UUkFOUzIodHJhbnMsIF9QSVBFX01VTFRf
QSkNCj4gPiAgDQo+ID4gLS8qIEhTVysgZURQIFBTUiByZWdpc3RlcnMgKi8NCj4gPiAtI2RlZmlu
ZSBIU1dfRURQX1BTUl9CQVNFCTB4NjQ4MDANCj4gPiAtI2RlZmluZSBCRFdfRURQX1BTUl9CQVNF
CTB4NmY4MDANCj4gPiAtI2RlZmluZSBFRFBfUFNSX0NUTAkJCQlfTU1JTyhkZXZfcHJpdi0NCj4g
PiA+cHNyX21taW9fYmFzZSArIDApDQo+ID4gKy8qDQo+ID4gKyAqIEhTVysgZURQIFBTUiByZWdp
c3RlcnMNCj4gPiArICoNCj4gPiArICogSFNXIFBTUiByZWdpc3RlcnMgYXJlIHJlbGF0aXZlIHRv
IERESUEoX0RESV9CVUZfQ1RMX0EgKyAweDgwMCkNCj4gPiB3aXRoIGp1c3Qgb25lDQo+ID4gKyAq
IGluc3RhbmNlIG9mIGl0DQo+ID4gKyAqLw0KPiA+ICsjZGVmaW5lIF9IU1dfRURQX1BTUl9CQVNF
CQkJMHg2NDgwMA0KPiA+ICsjZGVmaW5lIF9TUkRfQ1RMX0EJCQkJMHg2MDgwMA0KPiA+ICsjZGVm
aW5lIF9TUkRfQ1RMX0VEUAkJCQkweDZmODAwDQo+ID4gKyNkZWZpbmUgX0hTV19QU1JfQURKKHJl
ZykJCQkoKHJlZykgLSBfU1JEX0NUTF9BICsNCj4gPiBfSFNXX0VEUF9QU1JfQkFTRSkNCj4gPiAr
I2RlZmluZSBfUFNSX0FESih0cmFuLCByZWcpCQkJKElTX0hBU1dFTEwoZGV2DQo+ID4gX3ByaXYp
ID8gX0hTV19QU1JfQURKKHJlZykgOiBfVFJBTlMyKHRyYW4sIHJlZykpDQo+ID4gKyNkZWZpbmUg
RURQX1BTUl9DVEwodHJhbikJCQlfTU1JTyhfUFNSX0FESih0cmFuLA0KPiA+IF9TUkRfQ1RMX0Ep
KQ0KPiANCj4gVGhlcmUgYXJlIGN1cnJlbnRseSB0aHJlZSBpbnN0YW5jZXMgb2YgcGxhdGZvcm0v
Z2VuIGNoZWNrcyBpbg0KPiBpOTE1X3JlZy5oLiBUaGV5IGFyZSB0aGUgZXhjZXB0aW9uLCBhbmQg
dGhleSdyZSBpbiBpbmRpdmlkdWFsIG1hY3Jvcw0KPiB0aGF0IGFyZW4ndCBldmVuIHJlZ2lzdGVy
IG9mZnNldCBkZWZpbml0aW9ucyBsZXQgYWxvbmUgaGVscGVycyB0aGF0DQo+IGdldA0KPiBwcm9s
aWZlcmF0ZWQgdG8gc2V2ZXJhbCBvdGhlciBtYWNyb3MuDQo+IA0KPiBUaGlzIGNoYW5nZSBoZXJl
IGlzIHF1aXRlIGEgYmlnIHByZWNlZGVudCBpbiB0aGF0IHJlZ2FyZCwgYW5kIG5vdCB0bw0KPiBi
ZQ0KPiBkb25lIGxpZ2h0bHkuIFVzdWFsbHkgdGhlIGNhc2UgaXMgb3RoZXJzIHdpbGwgZm9sbG93
IHN1aXQsIHNvIHRoaXMgaXMNCj4gbm90IGp1c3QgYWJvdXQgdGhpcyBvbmUgaW5zdGFuY2UuIEl0
J3MgYWJvdXQgZGVjaWRpbmcgd2hldGhlciB0aGlzIGlzDQo+IHRoZSBkaXJlY3Rpb24gd2Ugd2Fu
dCB0byB0YWtlLiBIb3cgZmFyIGFyZSB3ZSBwcmVwYXJlZCB0byBnbyBhbmQgaG93DQo+IGRvDQo+
IHdlIHN0b3AgdGhlcmU/DQo+IA0KPiBUaGVyZSdzIHJlYWxseSBubyB3YXkgdG8gc2V0IHRoZSBw
c3ItPnRyYW5zY29kZXIgc3VjaCBvbiBIU1cgdGhhdCBpdA0KPiB3b3VsZCB3b3JrIHdpdGggTU1J
T19UUkFOUzIoKT8NCg0KSSdtIGdvaW5nIHRvIHRoaW5rIGFib3V0IGJ1dCByaWdodCBub3cgdGhl
IG9ubHkgb3RoZXIgb3B0aW9uIHRoYXQgY29tZXMNCmluIG15IG1pbmQgaXMgdG8gaGF2ZSB0aGUg
dHJhbnNjb2RlciBvZmZzZXQgYXMgbWFjcm8gcGFyYW1ldGVyOg0KDQojZGVmaW5lIF9TUkRfQ1RM
IDB4ODAwDQojZGVmaW5lIEVEUF9QU1JfQ1RMKHRyYW5zKSBfTU1JTyh0cmFucyArIF9TUkRfQ1RM
KQ0KDQpCdXQgd2Ugd291bGQgbG9zZSB0aGUgZnVsbCBvZmZzZXQgYWRkcmVzcyBvZiBQU1IgcmVn
aXN0ZXJzLg0KDQo+IA0KPiBCUiwNCj4gSmFuaS4NCj4gDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
