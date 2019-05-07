Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB39165C2
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 16:35:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B6DD89E2B;
	Tue,  7 May 2019 14:35:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39BCD89E2B
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 14:35:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 07:35:18 -0700
X-ExtLoop1: 1
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga005.fm.intel.com with ESMTP; 07 May 2019 07:35:18 -0700
Received: from bgsmsx103.gar.corp.intel.com (10.223.4.130) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 7 May 2019 07:35:18 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.147]) by
 BGSMSX103.gar.corp.intel.com ([169.254.4.106]) with mapi id 14.03.0415.000;
 Tue, 7 May 2019 20:05:15 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "Sharma, Shashank" <shashank.sharma@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/icl: Handle YCbCr to RGB
 conversion for BT2020 case
Thread-Index: AQHVBNWphAr5uBbJPEOm/nC8FA8hjKZfVlcAgABicZA=
Date: Tue, 7 May 2019 14:35:15 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F81FEF5E1@BGSMSX104.gar.corp.intel.com>
References: <20190507130257.22837-1-shashank.sharma@intel.com>
 <20190507130257.22837-2-shashank.sharma@intel.com>
 <20190507140646.GO24299@intel.com>
In-Reply-To: <20190507140646.GO24299@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZWE0MWZhZGItM2NjYy00MmFiLThjNTItNmZlYjljZTE1YTYzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNFJ5Q092akJDM3Y2NnlJV1dcL1BYNUhRZGRYcTllMzZMUG8yQlZOcW16eWE3clwvNElwMHZ1djM5MmVUOEJ6MVYzIn0=
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/icl: Handle YCbCr to RGB
 conversion for BT2020 case
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IEludGVsLWdmeCBbbWFpbHRv
OmludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZ10gT24gQmVoYWxmIE9mIFZp
bGxlDQo+U3lyasOkbMOkDQo+U2VudDogVHVlc2RheSwgTWF5IDcsIDIwMTkgNzozNyBQTQ0KPlRv
OiBTaGFybWEsIFNoYXNoYW5rIDxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29tPg0KPkNjOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+U3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQ
QVRDSF0gZHJtL2k5MTUvaWNsOiBIYW5kbGUgWUNiQ3IgdG8gUkdCIGNvbnZlcnNpb24gZm9yDQo+
QlQyMDIwIGNhc2UNCj4NCj5PbiBUdWUsIE1heSAwNywgMjAxOSBhdCAwNjozMjo1N1BNICswNTMw
LCBTaGFzaGFuayBTaGFybWEgd3JvdGU6DQo+PiBGcm9tOiBVbWEgU2hhbmthciA8dW1hLnNoYW5r
YXJAaW50ZWwuY29tPg0KPj4NCj4+IEN1cnJlbnRseSBpbnB1dCBjc2MgZm9yIFlDYkNSIHRvIFJH
QiBjb252ZXJzaW9uIGhhbmRsZXMgb25seQ0KPj4gQlQ2MDEgYW5kIEJ0NzA5LiBFeHRlbmRpbmcg
aXQgdG8gc3VwcG9ydCBCVDIwMjAgYXMgd2VsbC4NCj4+DQo+PiBTaWduZWQtb2ZmLWJ5OiBVbWEg
U2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPj4gU2lnbmVkLW9mZi1ieTogU2hhc2hh
bmsgU2hhcm1hIDxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29tPg0KPj4gLS0tDQo+PiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMgfCAyNCArKysrKysrKysrKysrKysrKysrKysr
KysNCj4+ICAxIGZpbGUgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKQ0KPj4NCj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zcHJpdGUuYw0KPj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9zcHJpdGUuYw0KPj4gaW5kZXggNDRhYWVhYzFiMmVkLi4yNTM2ZTc1
N2JlYzIgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zcHJpdGUu
Yw0KPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMNCj4+IEBAIC00
MzMsNiArNDMzLDE4IEBAIGljbF9wcm9ncmFtX2lucHV0X2NzYyhzdHJ1Y3QgaW50ZWxfcGxhbmUg
KnBsYW5lLA0KPj4gIAkJCTB4OUVGOCwgMHg3ODAwLCAweEFCRjgsDQo+PiAgCQkJMHgwLCAweDc4
MDAsICAweDdFRDgsDQo+PiAgCQl9LA0KPj4gKwkJLyoNCj4+ICsJCSAqIEJULjIwMjAgZnVsbCBy
YW5nZSBZQ2JDciAtPiBmdWxsIHJhbmdlIFJHQg0KPj4gKwkJICogVGhlIG1hdHJpeCByZXF1aXJl
ZCBpcyA6DQo+PiArCQkgKiBbMS4wMDAsIDAuMDAwLCAxLjQ3NCwNCj4+ICsJCSAqICAxLjAwMCwg
LTAuMTY0NSwgLTAuNTcxMywNCj4+ICsJCSAqICAxLjAwMCwgMS44ODE0LCAwLjAwMDBdDQo+PiAr
CQkgKi8NCj4+ICsJCVtEUk1fQ09MT1JfWUNCQ1JfQlQyMDIwXSA9IHsNCj4+ICsJCQkweDdCQzgs
IDB4NzgwMCwgMHgwLA0KPj4gKwkJCTB4ODkyOCwgMHg3ODAwLCAweEFBODgsDQo+PiArCQkJMHgw
LCAweDc4MDAsIDB4N0YxMCwNCj4+ICsJCX0sDQo+PiAgCX07DQo+Pg0KPj4gIAkvKiBNYXRyaXgg
Zm9yIExpbWl0ZWQgUmFuZ2UgdG8gRnVsbCBSYW5nZSBDb252ZXJzaW9uICovIEBAIC00NjEsNg0K
Pj4gKzQ3MywxOCBAQCBpY2xfcHJvZ3JhbV9pbnB1dF9jc2Moc3RydWN0IGludGVsX3BsYW5lICpw
bGFuZSwNCj4+ICAJCQkweDg4ODgsIDB4NzkxOCwgMHhBREE4LA0KPj4gIAkJCTB4MCwgMHg3OTE4
LCAgMHg2ODcwLA0KPj4gIAkJfSwNCj4+ICsJCS8qDQo+PiArCQkgKiBCVC4yMDIwIExpbWl0ZWQg
cmFuZ2UgWUNiQ3IgLT4gZnVsbCByYW5nZSBSR0INCj4+ICsJCSAqIFRoZSBtYXRyaXggcmVxdWly
ZWQgaXMgOg0KPj4gKwkJICogWzEuMTY0LCAwLjAwMCwgMS43MTcsDQo+PiArCQkgKiAgMS4xMzgs
IC0wLjE4NzMsIC0wLjY1MDQsDQo+PiArCQkgKiAgMS4xMzgwLCAyLjE0MTcsIDAuMDAwMF0NCj4N
Cj5XaGVyZSBhcmUgdGhvc2UgMS4xMzggY29taW5nIGZyb20/DQoNCkhpIFZpbGxlLA0KVGhpcyBp
cyB0aGUgb3JpZ2luYWwgWUNCQ1IgdG8gUkdCIEJUMjAyMCBtYXRyaXg6DQp7DQogICAgICAgIDEu
MDAwMDAwMDAwMDAsICAwLjAwMDAwMDAwMDAwLCAgMS40NzQ2MDAwMDAwMCwNCiAgICAgICAgMS4w
MDAwMDAwMDAwMCwgIC0wLjE2NDU1MzEyNjg0LCAtMC41NzEzNTMxMjY4NCwNCiAgICAgICAgMS4w
MDAwMDAwMDAwMCwgIDEuODgxNDAwMDAwMDAsICAwLjAwMDAwMDAwMDAwDQp9Ow0KDQpXZSBoYXZl
IHRvIGNvbnZlcnQgTGltaXRlZCBSYW5nZSBZQ2JDciB0byBGdWxsIFJhbmdlIFJHQi4gSGVuY2Ug
d2UgbmVlZCB0byBhcHBseSBhIHNjYWxlIGZhY3RvcjoNCiB5c2NhbGVmYWN0b3IgPSAyMTkuMCAq
IG5vcm1hbGl6aW5nZmFjdG9yOw0KIGNiY3JzY2FsZWZhY3RvciA9IDIyNC4wICogbm9ybWFsaXpp
bmdmYWN0b3I7DQoNCiAvKiBTY2FsZSBmYWN0b3JzIGFyZSBpbnZlcnRlZCBmb3IgTFIgdG8gRlIg
Y29udmVyc2lvbiAqLw0KIHlzY2FsZWZhY3RvciA9IDEuMCAvIHlzY2FsZWZhY3RvcjsNCiBjYmNy
c2NhbGVmYWN0b3IgPSAxLjAgLyBjYmNyc2NhbGVmYWN0b3I7DQoNClRoaXMgeWllbGRzIHRoZSBh
Ym92ZSByZXN1bHRzLiANCg0KUmVnYXJkcywNClVtYSBTaGFua2FyDQoNCj4+ICsJCSAqLw0KPj4g
KwkJW0RSTV9DT0xPUl9ZQ0JDUl9CVDIwMjBdID0gew0KPj4gKwkJCTB4N0RDMCwgMHg3OTUwLCAw
eDAsDQo+PiArCQkJMHg4QTY4LCAweDc5MTgsIDB4QUMwMCwNCj4+ICsJCQkweDAsIDB4NzkxOCwg
MHg2ODkwLA0KPj4gKwkJfSwNCj4+ICAJfTsNCj4+ICAJY29uc3QgdTE2ICpjc2M7DQo+Pg0KPj4g
LS0NCj4+IDIuMTcuMQ0KPj4NCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fDQo+PiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+PiBJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnDQo+PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KPg0KPi0tDQo+VmlsbGUgU3lyasOkbMOkDQo+SW50ZWwN
Cj5fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPkludGVs
LWdmeCBtYWlsaW5nIGxpc3QNCj5JbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+aHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
