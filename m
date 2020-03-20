Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C07B318D8C1
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 20:52:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63F8A6E1B7;
	Fri, 20 Mar 2020 19:52:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 661F06E1B7
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 19:52:50 +0000 (UTC)
IronPort-SDR: 4RB/G8RNVOmr3jpMYqipFZwis8En6KAr9oWW4wSD1fwlLI5XS2mC5GAzcZh6S32ZpYjRmtR7Nv
 Pkx2OsUaKJrw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 12:52:49 -0700
IronPort-SDR: Qw1WPTnafUoDf6biRKJR3XzxxjIhygChDLCGKl0tJHsVZ1ql1QpdMWvcIhswAfiL2HVeKy+Gha
 h+alT/4Wm4jA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,285,1580803200"; d="scan'208";a="280526760"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga002.fm.intel.com with ESMTP; 20 Mar 2020 12:52:49 -0700
Received: from fmsmsx119.amr.corp.intel.com (10.18.124.207) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 20 Mar 2020 12:52:49 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.62]) by
 FMSMSX119.amr.corp.intel.com ([169.254.14.144]) with mapi id 14.03.0439.000;
 Fri, 20 Mar 2020 12:52:48 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>,
 "kbuild@lists.01.org" <kbuild@lists.01.org>
Thread-Topic: [Intel-gfx] [PATCH 5/6] drm/i915/tc/icl: Implement the TC cold
 exit sequence
Thread-Index: AQHV/YEu//8OhBmVo02t2YX1jJtTQ6hR7GQAgABwkYA=
Date: Fri, 20 Mar 2020 19:52:48 +0000
Message-ID: <975c5816a2d8f78018d662ee7a859ac6ba14303b.camel@intel.com>
References: <20200320131112.GG4650@kadam>
In-Reply-To: <20200320131112.GG4650@kadam>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.15.8]
Content-ID: <FC15B96595EF6143931816386FE43E71@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/tc/icl: Implement the TC cold
 exit sequence
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
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "kai.heng.feng@canonical.com" <kai.heng.feng@canonical.com>,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIwLTAzLTIwIGF0IDE2OjExICswMzAwLCBEYW4gQ2FycGVudGVyIHdyb3RlOg0K
PiBIaSAiSm9zw6ksDQo+IA0KPiBUaGFuayB5b3UgZm9yIHRoZSBwYXRjaCEgUGVyaGFwcyBzb21l
dGhpbmcgdG8gaW1wcm92ZToNCj4gDQo+IHVybDogICAgDQo+IGh0dHBzOi8vZ2l0aHViLmNvbS8w
ZGF5LWNpL2xpbnV4L2NvbW1pdHMvSm9zLVJvYmVydG8tZGUtU291emEvZHJtLWk5MTUtdGMtdGds
LUltcGxlbWVudC1UQ0NPTEQtc2VxdWVuY2VzLzIwMjAwMzE5LTA4MDI1Mw0KPiBiYXNlOiAgIGdp
dDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2RybS1pbnRlbCBmb3ItbGludXgtbmV4dA0KPiAN
Cj4gSWYgeW91IGZpeCB0aGUgaXNzdWUsIGtpbmRseSBhZGQgZm9sbG93aW5nIHRhZw0KPiBSZXBv
cnRlZC1ieToga2J1aWxkIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+DQo+IFJlcG9ydGVkLWJ5
OiBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQG9yYWNsZS5jb20+DQo+IA0KPiBzbWF0Y2gg
d2FybmluZ3M6DQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYzo1NTQg
aWNsX3RjX2NvbGRfcmVxdWVzdCgpDQo+IGVycm9yOiB1bmluaXRpYWxpemVkIHN5bWJvbCAncmV0
Jy4NCj4gDQo+ICMgDQo+IGh0dHBzOi8vZ2l0aHViLmNvbS8wZGF5LWNpL2xpbnV4L2NvbW1pdC8y
OWYyN2U2ZGY2YWQ4MmIwOWEzYzlkZGFmNWY1MWIyZmMxNjQ3MTc4DQo+IGdpdCByZW1vdGUgYWRk
IGxpbnV4LXJldmlldyBodHRwczovL2dpdGh1Yi5jb20vMGRheS1jaS9saW51eA0KPiBnaXQgcmVt
b3RlIHVwZGF0ZSBsaW51eC1yZXZpZXcNCj4gZ2l0IGNoZWNrb3V0IDI5ZjI3ZTZkZjZhZDgyYjA5
YTNjOWRkYWY1ZjUxYjJmYzE2NDcxNzgNCj4gdmltICsvcmV0ICs1NTQgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+IA0KPiAyOWYyN2U2ZGY2YWQ4MiBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIDIwMjAtMDMtMTggIDUyOCAgc3RhdGljIGlubGluZQ0KPiBpbnQgaWNsX3Rj
X2NvbGRfcmVxdWVzdChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwNCj4gMjlm
MjdlNmRmNmFkODIgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSAyMDIwLTAzLTE4ICA1MjkgIAkJDQo+
IAkJICAgICAgYm9vbCBibG9jaykNCj4gMjlmMjdlNmRmNmFkODIgSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSAyMDIwLTAzLTE4ICA1MzAgIHsNCj4gMjlmMjdlNmRmNmFkODIgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSAyMDIwLTAzLTE4ICA1MzEgIAlzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IHRvX2k5MTUoZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYpOw0KPiAyOWYyN2U2ZGY2YWQ4MiBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIDIwMjAtMDMtMTggIDUzMiAgCWVudW0NCj4gaW50ZWxfZGlz
cGxheV9wb3dlcl9kb21haW4gYXV4X2RvbWFpbjsNCj4gMjlmMjdlNmRmNmFkODIgSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSAyMDIwLTAzLTE4ICA1MzMgIAlpbnQNCj4gcmV0Ow0KPiAyOWYyN2U2ZGY2
YWQ4MiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDIwMjAtMDMtMTggIDUzNCAgDQo+IDI5ZjI3ZTZk
ZjZhZDgyIEpvc8OpIFJvYmVydG8gZGUgU291emEgMjAyMC0wMy0xOCAgNTM1ICAJYXV4X2RvbQ0K
PiBhaW4gPSBpbnRlbF9hdXhfY2hfdG9fcG93ZXJfZG9tYWluKGRpZ19wb3J0LT5hdXhfY2gpOw0K
PiAyOWYyN2U2ZGY2YWQ4MiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDIwMjAtMDMtMTggIDUzNiAg
DQo+IDI5ZjI3ZTZkZjZhZDgyIEpvc8OpIFJvYmVydG8gZGUgU291emEgMjAyMC0wMy0xOCAgNTM3
ICAJaWYNCj4gKGJsb2NrKSB7DQo+IDI5ZjI3ZTZkZjZhZDgyIEpvc8OpIFJvYmVydG8gZGUgU291
emEgMjAyMC0wMy0xOCAgNTM4ICAJCQ0KPiBkaWdfcG9ydC0+dGNfY29sZF93YWtlcmVmID0NCj4g
MjlmMjdlNmRmNmFkODIgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSAyMDIwLTAzLTE4ICA1MzkgIAkJ
DQo+IAlpbnRlbF9kaXNwbGF5X3Bvd2VyX2dldF93aXRob3V0X2FjayhpOTE1LCBhdXhfZG9tYWlu
KTsNCj4gMjlmMjdlNmRmNmFkODIgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSAyMDIwLTAzLTE4ICA1
NDAgIA0KPiAyOWYyN2U2ZGY2YWQ4MiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDIwMjAtMDMtMTgg
IDU0MSAgCQkNCj4gZG8gew0KPiAyOWYyN2U2ZGY2YWQ4MiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDIwMjAtMDMtMTggIDU0MiAgCQkNCj4gCXJldCA9IHNhbmR5YnJpZGdlX3Bjb2RlX3dyaXRlX3Rp
bWVvdXQoaTkxNSwNCj4gMjlmMjdlNmRmNmFkODIgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSAyMDIw
LTAzLTE4ICA1NDMgIAkJDQo+IAkJCQkJICAgICAgSUNMX1BDT0RFX0VYSVRfVENDT0xELA0KPiAy
OWYyN2U2ZGY2YWQ4MiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDIwMjAtMDMtMTggIDU0NCAgCQkN
Cj4gCQkJCQkgICAgICAwLCAyNTAsIDEpOw0KPiAyOWYyN2U2ZGY2YWQ4MiBKb3PDqSBSb2JlcnRv
IGRlIFNvdXphIDIwMjAtMDMtMTggIDU0NSAgDQo+IDI5ZjI3ZTZkZjZhZDgyIEpvc8OpIFJvYmVy
dG8gZGUgU291emEgMjAyMC0wMy0xOCAgNTQ2ICAJCQ0KPiB9IHdoaWxlIChyZXQgPT0gLUVBR0FJ
Tik7DQo+IA0KPiByZXQgaXMgb25seSBpbml0aWFsaXplZCBvbiB0aGlzIHBhdGgNCg0KVGhhbmtz
DQoNCj4gDQo+IDI5ZjI3ZTZkZjZhZDgyIEpvc8OpIFJvYmVydG8gZGUgU291emEgMjAyMC0wMy0x
OCAgNTQ3ICAJfSBlbHNlDQo+IGlmIChkaWdfcG9ydC0+dGNfbW9kZSA9PSBUQ19QT1JUX0xFR0FD
WSkgew0KPiAyOWYyN2U2ZGY2YWQ4MiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDIwMjAtMDMtMTgg
IDU0OCAgCQkNCj4gZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgIWRpZ19wb3J0LT50Y19sb2NrX3dh
a2VyZWYpOw0KPiAyOWYyN2U2ZGY2YWQ4MiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDIwMjAtMDMt
MTggIDU0OSAgCQkNCj4gaW50ZWxfZGlzcGxheV9wb3dlcl9wdXQoaTkxNSwgYXV4X2RvbWFpbiwN
Cj4gMjlmMjdlNmRmNmFkODIgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSAyMDIwLTAzLTE4ICA1NTAg
IAkJDQo+IAkJCWRpZ19wb3J0LT50Y19jb2xkX3dha2VyZWYpOw0KPiAyOWYyN2U2ZGY2YWQ4MiBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIDIwMjAtMDMtMTggIDU1MSAgCQkNCj4gZGlnX3BvcnQtPnRj
X2NvbGRfd2FrZXJlZiA9IDA7DQo+IDI5ZjI3ZTZkZjZhZDgyIEpvc8OpIFJvYmVydG8gZGUgU291
emEgMjAyMC0wMy0xOCAgNTUyICAJfQ0KPiAyOWYyN2U2ZGY2YWQ4MiBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIDIwMjAtMDMtMTggIDU1MyAgDQo+IDI5ZjI3ZTZkZjZhZDgyIEpvc8OpIFJvYmVydG8g
ZGUgU291emEgMjAyMC0wMy0xOCBANTU0ICAJcmV0dXJuDQo+IHJldDsNCj4gMjlmMjdlNmRmNmFk
ODIgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSAyMDIwLTAzLTE4ICA1NTUgIH0NCj4gDQo+IC0tLQ0K
PiAwLURBWSBDSSBLZXJuZWwgVGVzdCBTZXJ2aWNlLCBJbnRlbCBDb3Jwb3JhdGlvbg0KPiBodHRw
czovL2xpc3RzLjAxLm9yZy9oeXBlcmtpdHR5L2xpc3Qva2J1aWxkLWFsbEBsaXN0cy4wMS5vcmcN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
