Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8EB219ABCE
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 14:38:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA69C6E237;
	Wed,  1 Apr 2020 12:38:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C79836E09A
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 12:38:31 +0000 (UTC)
IronPort-SDR: AuzB7S4V1+Vcvq10nuGgcTZXJFeHRzvyS5CTeLG+vSw6jT8Z0mhUmXzZci/pWZNJN0IX2oWBnU
 My0gTbiAtmiA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 05:38:31 -0700
IronPort-SDR: exioQ/ZgFkHi3v0eN27Sb3UoU54iLR0U4RYkjEotpfQBHbazOaHMZRhrqOz6MHibNtsZ32A8Ms
 kZPM6iGAtnXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,331,1580803200"; d="scan'208";a="252618218"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga006.jf.intel.com with ESMTP; 01 Apr 2020 05:38:30 -0700
Received: from fmsmsx154.amr.corp.intel.com (10.18.116.70) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 1 Apr 2020 05:38:30 -0700
Received: from bgsmsx109.gar.corp.intel.com (10.223.4.211) by
 FMSMSX154.amr.corp.intel.com (10.18.116.70) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 1 Apr 2020 05:38:29 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.111]) by
 BGSMSX109.gar.corp.intel.com ([169.254.10.57]) with mapi id 14.03.0439.000;
 Wed, 1 Apr 2020 18:08:26 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "B, Jeevan" <jeevan.b@intel.com>
Thread-Topic: [PATCH 1/5] drm: report dp downstream port type as a
 subconnector property
Thread-Index: AQHWCB92DR/TJ4YMUEi/NcfWjvk5JqhkMGIwgAADzDA=
Date: Wed, 1 Apr 2020 12:38:26 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F824437C9@BGSMSX104.gar.corp.intel.com>
References: <1585743148-31205-1-git-send-email-jeevan.b@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F82443771@BGSMSX104.gar.corp.intel.com>
In-Reply-To: <E7C9878FBA1C6D42A1CA3F62AEB6945F82443771@BGSMSX104.gar.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/5] drm: report dp downstream port type as
 a subconnector property
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

PiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IEIsIEplZXZhbiA8
amVldmFuLmJAaW50ZWwuY29tPg0KPiA+IFNlbnQ6IFdlZG5lc2RheSwgQXByaWwgMSwgMjAyMCA1
OjQyIFBNDQo+ID4gVG86IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiA+
IENjOiBCLCBKZWV2YW4gPGplZXZhbi5iQGludGVsLmNvbT47IFZpbGxlIFN5cmrDpGzDpA0KPiA+
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj4gPiBTdWJqZWN0OiBbUEFUQ0ggMS81XSBkcm06IHJlcG9ydCBkcCBkb3duc3Ry
ZWFtIHBvcnQgdHlwZSBhcyBhDQo+ID4gc3ViY29ubmVjdG9yIHByb3BlcnR5DQo+ID4NCj4gPiBD
dXJyZW50bHksIGRvd25zdHJlYW0gcG9ydCB0eXBlIGlzIG9ubHkgcmVwb3J0ZWQgaW4gZGVidWdm
cy4gVGhpcw0KPiA+IGluZm9ybWF0aW9uIHNob3VsZCBiZSBjb25zaWRlcmVkIGltcG9ydGFudCBz
aW5jZSBpdCByZWZsZWN0cyB0aGUNCj4gPiBhY3R1YWwgcGh5c2ljYWwgY29ubmVjdG9yIHR5cGUu
IFNvbWUgdXNlcnNwYWNlIChlLmcuIHdpbmRvdyBjb21wb3NpdG9ycykgbWF5DQo+IHdhbnQgdG8g
c2hvdyB0aGlzIGluZm8gdG8gYSB1c2VyLg0KPiA+DQo+ID4gVGhlICdzdWJjb25uZWN0b3InIHBy
b3BlcnR5IGlzIGFscmVhZHkgdXRpbGl6ZWQgZm9yIERWSS1JIGFuZCBUVi1vdXQNCj4gPiBmb3Ig
cmVwb3J0aW5nIGNvbm5lY3RvciBzdWJ0eXBlLg0KPiA+DQo+ID4gVGhlIGluaXRpYWwgbW90aXZh
dGlvbiBmb3IgdGhpcyBmZWF0dXJlIGNhbWUgZnJvbSBpMmMgdGVzdCBbMV0uDQo+ID4gSXQgaXMg
c3VwcG9zZWQgdG8gYmUgc2tpcHBlZCBvbiBWR0EgY29ubmVjdG9ycywgYnV0IGl0IGNhbm5vdCBk
ZXRlY3QNCj4gPiBWR0Egb3ZlciBEUCBhbmQgZmFpbHMgaW5zdGVhZC4NCj4gPg0KPiA+IHYyOg0K
PiA+ICAtIFZpbGxlOiB1dGlsaXplZCBkcm1fZHBfaXNfYnJhbmNoKCkNCj4gPiAgLSBWaWxsZTog
aW1wbGVtZW50IERQIDEuMCBkb3duc3RyZWFtIHR5cGUgaW5mbw0KPiA+ICAtIFJlcGxhY2VkIGNy
ZWF0ZV9kcF9wcm9wZXJ0aWVzIHdpdGggYWRkX2RwX3N1YmNvbm5lY3Rvcl9wcm9wZXJ0eQ0KPiA+
ICAtIEFkZGVkIGRwX3NldF9zdWJjb25uZWN0b3JfcHJvcGVydHkgaGVscGVyDQo+ID4NCj4gPiB2
NDoNCj4gPiAgLSBWaWxsZTogYWRkIERQMS4wIGJlc3QgYXNzdW1wdGlvbiBhYm91dCBzdWJjb25u
ZWN0b3INCj4gPiAgLSBWaWxsZTogYXNzdW1lIERWSSBpcyBEVkktRA0KPiA+ICAtIFZpbGxlOiBy
ZXVzZSBXcml0ZWJhY2sgZW51bSB2YWx1ZSBmb3IgVmlydHVhbCBzdWJjb25uZWN0b3INCj4gPiAg
LSBSZW5hbWVkICNkZWZpbmVzOiBIRE1JIC0+IEhETUlBLCBEUCAtPiBEaXNwbGF5UG9ydA0KPiA+
DQo+ID4gWzFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MDQwOTcNCj4gPg0KPiA+IFJldmlld2VkLWJ5OiBFbWlsIFZlbGlrb3YgPGVtaWwudmVsaWtvdkBj
b2xsYWJvcmEuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IE9sZWcgVmFzaWxldiA8b2xlZy52YXNp
bGV2QGludGVsLmNvbT4NCj4gPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4NCj4gPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiA+IFNpZ25lZC1vZmYtYnk6IEplZXZhbiBCIDxqZWV2YW4uYkBpbnRlbC5jb20+DQo+IA0KPiBZ
b3UgY2FuIHVwZGF0ZSB0aGUgdmVyc2lvbiBudW1iZXIgZm9yIHRoaXMgc2VyaWVzIDogdXNlIHN1
YmplY3QtcHJlZml4PXY1IGFzIGdpdC0NCj4gZm9ybWF0Lg0KPiBBbHNvIG1vdmUgeW91ciBzaWdu
ZWQgb2ZmIGNsb3NlIHRvIE9sZWcncy4gQmVzdCBpcyB0byBwdXQgQ2M6IGF0IHRoZSB0b3AsIHRo
ZW4gYWxsDQo+IFNpZ25lZC1vZmYgYW5kIFJldmlld2VkLWJ5DQo+IA0KPiBBbHNvIGluIHBhdGNo
IG1lbnRpb24gY2hhbmdlIGluIHY1LCBsaWtlIGlmIGl0J3MganVzdCByZWJhc2VkDQo+IFY1OiBy
ZWJhc2UNCg0KQWxzbywgcGxlYXNlIHNlbmQgdGhlIHNlcmllcyB0byBpbnRlbC1nZnggYXMgd2Vs
bCBhcyBkcmktZGV2ZWwgZm9yIHJldmlldy4NCg0KPiA+IExpbms6DQo+ID4gaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMTkwODI5MTE0ODU0LjE1MzktMy0N
Cj4gPiBvbGVnLnZhc2lsZXZAaW50ZWwuY29tDQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2Ry
bS9kcm1fY29ubmVjdG9yLmMgfCA0OSArKysrKysrKysrKysrKysrKysrKysrKystLQ0KPiA+IGRy
aXZlcnMvZ3B1L2RybS9kcm1fZHBfaGVscGVyLmMgfCA3Nw0KPiA+ICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrDQo+ID4gIGluY2x1ZGUvZHJtL2RybV9jb25uZWN0b3Iu
aCAgICAgfCAgMyArKw0KPiA+ICBpbmNsdWRlL2RybS9kcm1fZHBfaGVscGVyLmggICAgIHwgIDgg
KysrKysNCj4gPiAgaW5jbHVkZS9kcm0vZHJtX21vZGVfY29uZmlnLmggICB8ICA2ICsrKysNCj4g
PiAgaW5jbHVkZS91YXBpL2RybS9kcm1fbW9kZS5oICAgICB8IDIxICsrKysrKy0tLS0tDQo+ID4g
IDYgZmlsZXMgY2hhbmdlZCwgMTU0IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQ0KPiA+
DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fY29ubmVjdG9yLmMNCj4gPiBi
L2RyaXZlcnMvZ3B1L2RybS9kcm1fY29ubmVjdG9yLmMgaW5kZXggYjEwOTllMS4uYjY5NzJkMSAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rvci5jDQo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2RybV9jb25uZWN0b3IuYw0KPiA+IEBAIC04NDQsNyArODQ0LDcg
QEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fcHJvcF9lbnVtX2xpc3QNCj4gPiBkcm1fZHZpX2lf
c2VsZWN0X2VudW1fbGlzdFtdID0gew0KPiA+IERSTV9FTlVNX05BTUVfRk4oZHJtX2dldF9kdmlf
aV9zZWxlY3RfbmFtZSwNCj4gPiBkcm1fZHZpX2lfc2VsZWN0X2VudW1fbGlzdCkNCj4gPg0KPiA+
ICBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9wcm9wX2VudW1fbGlzdCBkcm1fZHZpX2lfc3ViY29u
bmVjdG9yX2VudW1fbGlzdFtdID0gew0KPiA+IC0JeyBEUk1fTU9ERV9TVUJDT05ORUNUT1JfVW5r
bm93biwgICAiVW5rbm93biIgICB9LCAvKiBEVkktSSBhbmQNCj4gPiBUVi1vdXQgKi8NCj4gPiAr
CXsgRFJNX01PREVfU1VCQ09OTkVDVE9SX1Vua25vd24sICAgIlVua25vd24iICAgfSwgLyogRFZJ
LUksIFRWLQ0KPiA+IG91dCBhbmQgRFAgKi8NCj4gPiAgCXsgRFJNX01PREVfU1VCQ09OTkVDVE9S
X0RWSUQsICAgICAgIkRWSS1EIiAgICAgfSwgLyogRFZJLUkgICovDQo+ID4gIAl7IERSTV9NT0RF
X1NVQkNPTk5FQ1RPUl9EVklBLCAgICAgICJEVkktQSIgICAgIH0sIC8qIERWSS1JICAqLw0KPiA+
ICB9Ow0KPiA+IEBAIC04NjEsNyArODYxLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fcHJv
cF9lbnVtX2xpc3QNCj4gPiBkcm1fdHZfc2VsZWN0X2VudW1fbGlzdFtdID0gew0KPiA+IERSTV9F
TlVNX05BTUVfRk4oZHJtX2dldF90dl9zZWxlY3RfbmFtZSwNCj4gPiBkcm1fdHZfc2VsZWN0X2Vu
dW1fbGlzdCkNCj4gPg0KPiA+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9wcm9wX2VudW1fbGlz
dCBkcm1fdHZfc3ViY29ubmVjdG9yX2VudW1fbGlzdFtdID0gew0KPiA+IC0JeyBEUk1fTU9ERV9T
VUJDT05ORUNUT1JfVW5rbm93biwgICAiVW5rbm93biIgICB9LCAvKiBEVkktSSBhbmQNCj4gPiBU
Vi1vdXQgKi8NCj4gPiArCXsgRFJNX01PREVfU1VCQ09OTkVDVE9SX1Vua25vd24sICAgIlVua25v
d24iICAgfSwgLyogRFZJLUksIFRWLQ0KPiA+IG91dCBhbmQgRFAgKi8NCj4gPiAgCXsgRFJNX01P
REVfU1VCQ09OTkVDVE9SX0NvbXBvc2l0ZSwgIkNvbXBvc2l0ZSIgfSwgLyogVFYtb3V0ICovDQo+
ID4gIAl7IERSTV9NT0RFX1NVQkNPTk5FQ1RPUl9TVklERU8sICAgICJTVklERU8iICAgIH0sIC8q
IFRWLW91dCAqLw0KPiA+ICAJeyBEUk1fTU9ERV9TVUJDT05ORUNUT1JfQ29tcG9uZW50LCAiQ29t
cG9uZW50IiB9LCAvKiBUVi1vdXQgKi8NCj4gQEANCj4gPiAtODcwLDYgKzg3MCwxOSBAQCBzdGF0
aWMgY29uc3Qgc3RydWN0IGRybV9wcm9wX2VudW1fbGlzdA0KPiA+IGRybV90dl9zdWJjb25uZWN0
b3JfZW51bV9saXN0W10gPSB7DQo+ID4gRFJNX0VOVU1fTkFNRV9GTihkcm1fZ2V0X3R2X3N1YmNv
bm5lY3Rvcl9uYW1lLA0KPiA+ICAJCSBkcm1fdHZfc3ViY29ubmVjdG9yX2VudW1fbGlzdCkNCj4g
Pg0KPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9wcm9wX2VudW1fbGlzdCBkcm1fZHBfc3Vi
Y29ubmVjdG9yX2VudW1fbGlzdFtdID0gew0KPiA+ICsJeyBEUk1fTU9ERV9TVUJDT05ORUNUT1Jf
VW5rbm93biwgICAgICJVbmtub3duIiAgIH0sIC8qIERWSS1JLCBUVi0NCj4gPiBvdXQgYW5kIERQ
ICovDQo+ID4gKwl7IERSTV9NT0RFX1NVQkNPTk5FQ1RPUl9WR0EsCSAgICAgIlZHQSIgICAgICAg
fSwgLyogRFAgKi8NCj4gPiArCXsgRFJNX01PREVfU1VCQ09OTkVDVE9SX0RWSUQsCSAgICAgIkRW
SS1EIiAgICAgfSwgLyogRFAgKi8NCj4gPiArCXsgRFJNX01PREVfU1VCQ09OTkVDVE9SX0hETUlB
LAkgICAgICJIRE1JIiAgICAgIH0sIC8qIERQICovDQo+ID4gKwl7IERSTV9NT0RFX1NVQkNPTk5F
Q1RPUl9EaXNwbGF5UG9ydCwgIkRQIiAgICAgICAgfSwgLyogRFAgKi8NCj4gPiArCXsgRFJNX01P
REVfU1VCQ09OTkVDVE9SX1dpcmVsZXNzLCAgICAiV2lyZWxlc3MiICB9LCAvKiBEUCAqLw0KPiA+
ICsJeyBEUk1fTU9ERV9TVUJDT05ORUNUT1JfTmF0aXZlLAkgICAgICJOYXRpdmUiICAgIH0sIC8q
IERQICovDQo+ID4gK307DQo+ID4gKw0KPiA+ICtEUk1fRU5VTV9OQU1FX0ZOKGRybV9nZXRfZHBf
c3ViY29ubmVjdG9yX25hbWUsDQo+ID4gKwkJIGRybV9kcF9zdWJjb25uZWN0b3JfZW51bV9saXN0
KQ0KPiA+ICsNCj4gPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fcHJvcF9lbnVtX2xpc3QgaGRt
aV9jb2xvcnNwYWNlc1tdID0gew0KPiA+ICAJLyogRm9yIERlZmF1bHQgY2FzZSwgZHJpdmVyIHdp
bGwgc2V0IHRoZSBjb2xvcnNwYWNlICovDQo+ID4gIAl7IERSTV9NT0RFX0NPTE9SSU1FVFJZX0RF
RkFVTFQsICJEZWZhdWx0IiB9LCBAQCAtMTE4Niw2ICsxMTk5LDE0DQo+IEBADQo+ID4gc3RhdGlj
IGNvbnN0IHN0cnVjdCBkcm1fcHJvcF9lbnVtX2xpc3QgZHBfY29sb3JzcGFjZXNbXSA9IHsNCj4g
PiAgICoJY2FuIGFsc28gZXhwb3NlIHRoaXMgcHJvcGVydHkgdG8gZXh0ZXJuYWwgb3V0cHV0cywg
aW4gd2hpY2ggY2FzZSB0aGV5DQo+ID4gICAqCW11c3Qgc3VwcG9ydCAiTm9uZSIsIHdoaWNoIHNo
b3VsZCBiZSB0aGUgZGVmYXVsdCAoc2luY2UgZXh0ZXJuYWwgc2NyZWVucw0KPiA+ICAgKgloYXZl
IGEgYnVpbHQtaW4gc2NhbGVyKS4NCj4gPiArICoNCj4gPiArICogc3ViY29ubmVjdG9yOg0KPiA+
ICsgKglUaGlzIHByb3BlcnR5IGlzIHVzZWQgYnkgRFZJLUksIFRWb3V0IGFuZCBEaXNwbGF5UG9y
dCB0byBpbmRpY2F0ZSBkaWZmZXJlbnQNCj4gPiArICoJY29ubmVjdG9yIHN1YnR5cGVzLiBFbnVt
IHZhbHVlcyBtb3JlIG9yIGxlc3MgbWF0Y2ggd2l0aCB0aG9zZSBmcm9tIG1haW4NCj4gPiArICoJ
Y29ubmVjdG9yIHR5cGVzLg0KPiA+ICsgKglGb3IgRFZJLUkgYW5kIFRWb3V0IHRoZXJlIGlzIGFs
c28gYSBtYXRjaGluZyBwcm9wZXJ0eSAic2VsZWN0IHN1YmNvbm5lY3RvciINCj4gPiArICoJYWxs
b3dpbmcgdG8gc3dpdGNoIGJldHdlZW4gc2lnbmFsIHR5cGVzLg0KPiA+ICsgKglEUCBzdWJjb25u
ZWN0b3IgY29ycmVzcG9uZHMgdG8gYSBkb3duc3RyZWFtIHBvcnQuDQo+ID4gICAqLw0KPiA+DQo+
ID4gIGludCBkcm1fY29ubmVjdG9yX2NyZWF0ZV9zdGFuZGFyZF9wcm9wZXJ0aWVzKHN0cnVjdCBk
cm1fZGV2aWNlICpkZXYpDQo+ID4gQEAgLQ0KPiA+IDEyNzUsNiArMTI5NiwzMCBAQCBpbnQgZHJt
X21vZGVfY3JlYXRlX2R2aV9pX3Byb3BlcnRpZXMoc3RydWN0DQo+ID4gZHJtX2RldmljZQ0KPiA+
ICpkZXYpICBFWFBPUlRfU1lNQk9MKGRybV9tb2RlX2NyZWF0ZV9kdmlfaV9wcm9wZXJ0aWVzKTsN
Cj4gPg0KPiA+ICAvKioNCj4gPiArICogZHJtX21vZGVfYWRkX2RwX3N1YmNvbm5lY3Rvcl9wcm9w
ZXJ0eSAtIGNyZWF0ZSBzdWJjb25uZWN0b3INCj4gPiArcHJvcGVydHkgZm9yIERQDQo+ID4gKyAq
IEBjb25uZWN0b3I6IGRybV9jb25uZWN0b3IgdG8gYXR0YWNoIHByb3BlcnR5DQo+ID4gKyAqDQo+
ID4gKyAqIENhbGxlZCBieSBhIGRyaXZlciB3aGVuIERQIGNvbm5lY3RvciBpcyBjcmVhdGVkLg0K
PiA+ICsgKi8NCj4gPiArdm9pZCBkcm1fbW9kZV9hZGRfZHBfc3ViY29ubmVjdG9yX3Byb3BlcnR5
KHN0cnVjdCBkcm1fY29ubmVjdG9yDQo+ID4gKypjb25uZWN0b3IpIHsNCj4gPiArCXN0cnVjdCBk
cm1fbW9kZV9jb25maWcgKm1vZGVfY29uZmlnID0gJmNvbm5lY3Rvci0+ZGV2LT5tb2RlX2NvbmZp
ZzsNCj4gPiArDQo+ID4gKwlpZiAoIW1vZGVfY29uZmlnLT5kcF9zdWJjb25uZWN0b3JfcHJvcGVy
dHkpDQo+ID4gKwkJbW9kZV9jb25maWctPmRwX3N1YmNvbm5lY3Rvcl9wcm9wZXJ0eSA9DQo+ID4g
KwkJCWRybV9wcm9wZXJ0eV9jcmVhdGVfZW51bShjb25uZWN0b3ItPmRldiwNCj4gPiArCQkJCURS
TV9NT0RFX1BST1BfSU1NVVRBQkxFLA0KPiA+ICsJCQkJInN1YmNvbm5lY3RvciIsDQo+ID4gKwkJ
CQlkcm1fZHBfc3ViY29ubmVjdG9yX2VudW1fbGlzdCwNCj4gPiArCQkJCUFSUkFZX1NJWkUoZHJt
X2RwX3N1YmNvbm5lY3Rvcl9lbnVtX2xpc3QpKTsNCj4gPiArDQo+ID4gKwlkcm1fb2JqZWN0X2F0
dGFjaF9wcm9wZXJ0eSgmY29ubmVjdG9yLT5iYXNlLA0KPiA+ICsJCQkJICAgbW9kZV9jb25maWct
PmRwX3N1YmNvbm5lY3Rvcl9wcm9wZXJ0eSwNCj4gPiArCQkJCSAgIERSTV9NT0RFX1NVQkNPTk5F
Q1RPUl9Vbmtub3duKTsgfQ0KPiA+ICtFWFBPUlRfU1lNQk9MKGRybV9tb2RlX2FkZF9kcF9zdWJj
b25uZWN0b3JfcHJvcGVydHkpOw0KPiA+ICsNCj4gPiArLyoqDQo+ID4gICAqIERPQzogSERNSSBj
b25uZWN0b3IgcHJvcGVydGllcw0KPiA+ICAgKg0KPiA+ICAgKiBjb250ZW50IHR5cGUgKEhETUkg
c3BlY2lmaWMpOg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2hlbHBl
ci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2hlbHBlci5jIGluZGV4IDhiYTQ1MzEu
LjVkNWI1MGYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIu
Yw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfaGVscGVyLmMNCj4gPiBAQCAtNTk0
LDYgKzU5NCw4MyBAQCB2b2lkIGRybV9kcF9kb3duc3RyZWFtX2RlYnVnKHN0cnVjdCBzZXFfZmls
ZSAqbSwNCj4gPiB9IEVYUE9SVF9TWU1CT0woZHJtX2RwX2Rvd25zdHJlYW1fZGVidWcpOw0KPiA+
DQo+ID4gKy8qKg0KPiA+ICsgKiBkcm1fZHBfc3ViY29ubmVjdG9yX3R5cGUoKSAtIGdldCBEUCBi
cmFuY2ggZGV2aWNlIHR5cGUNCj4gPiArICogQGRwY2Q6IERpc3BsYXlQb3J0IGNvbmZpZ3VyYXRp
b24gZGF0YQ0KPiA+ICsgKiBAcG9ydF9jYXA6IHBvcnQgY2FwYWJpbGl0aWVzDQo+ID4gKyAqDQo+
ID4gKyAqLw0KPiA+ICtlbnVtIGRybV9tb2RlX3N1YmNvbm5lY3Rvcg0KPiA+ICtkcm1fZHBfc3Vi
Y29ubmVjdG9yX3R5cGUoY29uc3QgdTggZHBjZFtEUF9SRUNFSVZFUl9DQVBfU0laRV0sDQo+ID4g
KwkJCSBjb25zdCB1OCBwb3J0X2NhcFs0XSkNCj4gPiArew0KPiA+ICsJaW50IHR5cGU7DQo+ID4g
KwlpZiAoIWRybV9kcF9pc19icmFuY2goZHBjZCkpDQo+ID4gKwkJcmV0dXJuIERSTV9NT0RFX1NV
QkNPTk5FQ1RPUl9OYXRpdmU7DQo+ID4gKwkvKiBEUCAxLjAgYXBwcm9hY2ggKi8NCj4gPiArCWlm
IChkcGNkW0RQX0RQQ0RfUkVWXSA9PSBEUF9EUENEX1JFVl8xMCkgew0KPiA+ICsJCXR5cGUgPSBk
cGNkW0RQX0RPV05TVFJFQU1QT1JUX1BSRVNFTlRdICYNCj4gPiArCQkgICAgICAgRFBfRFdOX1NU
Uk1fUE9SVF9UWVBFX01BU0s7DQo+ID4gKw0KPiA+ICsJCXN3aXRjaCAodHlwZSkgew0KPiA+ICsJ
CWNhc2UgRFBfRFdOX1NUUk1fUE9SVF9UWVBFX1RNRFM6DQo+ID4gKwkJCS8qIENhbiBiZSBIRE1J
IG9yIERWSS1ELCBEVkktRCBpcyBhIHNhZmVyIG9wdGlvbiAqLw0KPiA+ICsJCQlyZXR1cm4gRFJN
X01PREVfU1VCQ09OTkVDVE9SX0RWSUQ7DQo+ID4gKwkJY2FzZSBEUF9EV05fU1RSTV9QT1JUX1RZ
UEVfQU5BTE9HOg0KPiA+ICsJCQkvKiBDYW4gYmUgVkdBIG9yIERWSS1BLCBWR0EgaXMgbW9yZSBw
b3B1bGFyICovDQo+ID4gKwkJCXJldHVybiBEUk1fTU9ERV9TVUJDT05ORUNUT1JfVkdBOw0KPiA+
ICsJCWNhc2UgRFBfRFdOX1NUUk1fUE9SVF9UWVBFX0RQOg0KPiA+ICsJCQlyZXR1cm4gRFJNX01P
REVfU1VCQ09OTkVDVE9SX0Rpc3BsYXlQb3J0Ow0KPiA+ICsJCWNhc2UgRFBfRFdOX1NUUk1fUE9S
VF9UWVBFX09USEVSOg0KPiA+ICsJCWRlZmF1bHQ6DQo+ID4gKwkJCXJldHVybiBEUk1fTU9ERV9T
VUJDT05ORUNUT1JfVW5rbm93bjsNCj4gPiArCQl9DQo+ID4gKwl9DQo+ID4gKwl0eXBlID0gcG9y
dF9jYXBbMF0gJiBEUF9EU19QT1JUX1RZUEVfTUFTSzsNCj4gPiArDQo+ID4gKwlzd2l0Y2ggKHR5
cGUpIHsNCj4gPiArCWNhc2UgRFBfRFNfUE9SVF9UWVBFX0RQOg0KPiA+ICsJY2FzZSBEUF9EU19Q
T1JUX1RZUEVfRFBfRFVBTE1PREU6DQo+ID4gKwkJcmV0dXJuIERSTV9NT0RFX1NVQkNPTk5FQ1RP
Ul9EaXNwbGF5UG9ydDsNCj4gPiArCWNhc2UgRFBfRFNfUE9SVF9UWVBFX1ZHQToNCj4gPiArCQly
ZXR1cm4gRFJNX01PREVfU1VCQ09OTkVDVE9SX1ZHQTsNCj4gPiArCWNhc2UgRFBfRFNfUE9SVF9U
WVBFX0RWSToNCj4gPiArCQlyZXR1cm4gRFJNX01PREVfU1VCQ09OTkVDVE9SX0RWSUQ7DQo+ID4g
KwljYXNlIERQX0RTX1BPUlRfVFlQRV9IRE1JOg0KPiA+ICsJCXJldHVybiBEUk1fTU9ERV9TVUJD
T05ORUNUT1JfSERNSUE7DQo+ID4gKwljYXNlIERQX0RTX1BPUlRfVFlQRV9XSVJFTEVTUzoNCj4g
PiArCQlyZXR1cm4gRFJNX01PREVfU1VCQ09OTkVDVE9SX1dpcmVsZXNzOw0KPiA+ICsJY2FzZSBE
UF9EU19QT1JUX1RZUEVfTk9OX0VESUQ6DQo+ID4gKwlkZWZhdWx0Og0KPiA+ICsJCXJldHVybiBE
Uk1fTU9ERV9TVUJDT05ORUNUT1JfVW5rbm93bjsNCj4gPiArCX0NCj4gPiArfQ0KPiA+ICtFWFBP
UlRfU1lNQk9MKGRybV9kcF9zdWJjb25uZWN0b3JfdHlwZSk7DQo+ID4gKw0KPiA+ICsvKioNCj4g
PiArICogZHJtX21vZGVfc2V0X2RwX3N1YmNvbm5lY3Rvcl9wcm9wZXJ0eSAtIHNldCBzdWJjb25u
ZWN0b3IgZm9yIERQDQo+ID4gK2Nvbm5lY3Rvcg0KPiA+ICsgKiBAY29ubmVjdG9yOiBkcCBjb25u
ZWN0b3IgdG8gYXR0YWNoIHByb3BlcnR5DQo+ID4gKyAqIEBzdGF0dXM6IGNvbm5lY3RvciBzdGF0
dXMgd2hpY2ggaXMgYWJvdXQgdG8gYmUgc2V0DQo+ID4gKyAqIEBkcGNkOiBEaXNwbGF5UG9ydCBj
b25maWd1cmF0aW9uIGRhdGENCj4gPiArICogQHBvcnRfY2FwOiBwb3J0IGNhcGFiaWxpdGllcw0K
PiA+ICsgKg0KPiA+ICsgKiBDYWxsZWQgYnkgYSBkcml2ZXIgb24gZXZlcnkgZGV0ZWN0IGV2ZW50
Lg0KPiA+ICsgKi8NCj4gPiArdm9pZCBkcm1fZHBfc2V0X3N1YmNvbm5lY3Rvcl9wcm9wZXJ0eShz
dHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLA0KPiA+ICsJCQkJICAgICAgZW51bSBkcm1f
Y29ubmVjdG9yX3N0YXR1cyBzdGF0dXMsDQo+ID4gKwkJCQkgICAgICBjb25zdCB1OCAqZHBjZCwN
Cj4gPiArCQkJCSAgICAgIGNvbnN0IHU4IHBvcnRfY2FwWzRdKQ0KPiA+ICt7DQo+ID4gKwllbnVt
IGRybV9tb2RlX3N1YmNvbm5lY3RvciBzdWJjb25uZWN0b3IgPQ0KPiA+ICtEUk1fTU9ERV9TVUJD
T05ORUNUT1JfVW5rbm93bjsNCj4gPiArDQo+ID4gKwlpZiAoc3RhdHVzID09IGNvbm5lY3Rvcl9z
dGF0dXNfY29ubmVjdGVkKQ0KPiA+ICsJCXN1YmNvbm5lY3RvciA9IGRybV9kcF9zdWJjb25uZWN0
b3JfdHlwZShkcGNkLCBwb3J0X2NhcCk7DQo+ID4gKwlkcm1fb2JqZWN0X3Byb3BlcnR5X3NldF92
YWx1ZSgmY29ubmVjdG9yLT5iYXNlLA0KPiA+ICsJCQljb25uZWN0b3ItPmRldi0+bW9kZV9jb25m
aWcuZHBfc3ViY29ubmVjdG9yX3Byb3BlcnR5LA0KPiA+ICsJCQlzdWJjb25uZWN0b3IpOw0KPiA+
ICt9DQo+ID4gK0VYUE9SVF9TWU1CT0woZHJtX2RwX3NldF9zdWJjb25uZWN0b3JfcHJvcGVydHkp
Ow0KPiA+ICsNCj4gPiAgLyoNCj4gPiAgICogSTJDLW92ZXItQVVYIGltcGxlbWVudGF0aW9uDQo+
ID4gICAqLw0KPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmggYi9p
bmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmgNCj4gPiBpbmRleA0KPiA+IGZkNTQzZDEuLjgyNzk3
YzggMTAwNjQ0DQo+ID4gLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oDQo+ID4gKysr
IGIvaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oDQo+ID4gQEAgLTE1NTYsMTAgKzE1NTYsMTMg
QEAgY29uc3QgY2hhcg0KPiA+ICpkcm1fZ2V0X2R2aV9pX3N1YmNvbm5lY3Rvcl9uYW1lKGludA0K
PiA+IHZhbCk7ICBjb25zdCBjaGFyICpkcm1fZ2V0X2R2aV9pX3NlbGVjdF9uYW1lKGludCB2YWwp
OyAgY29uc3QgY2hhcg0KPiA+ICpkcm1fZ2V0X3R2X3N1YmNvbm5lY3Rvcl9uYW1lKGludCB2YWwp
OyAgY29uc3QgY2hhcg0KPiA+ICpkcm1fZ2V0X3R2X3NlbGVjdF9uYW1lKGludCB2YWwpOw0KPiA+
ICtjb25zdCBjaGFyICpkcm1fZ2V0X2RwX3N1YmNvbm5lY3Rvcl9uYW1lKGludCB2YWwpOw0KPiA+
ICBjb25zdCBjaGFyICpkcm1fZ2V0X2NvbnRlbnRfcHJvdGVjdGlvbl9uYW1lKGludCB2YWwpOyAg
Y29uc3QgY2hhcg0KPiA+ICpkcm1fZ2V0X2hkY3BfY29udGVudF90eXBlX25hbWUoaW50IHZhbCk7
DQo+ID4NCj4gPiAgaW50IGRybV9tb2RlX2NyZWF0ZV9kdmlfaV9wcm9wZXJ0aWVzKHN0cnVjdCBk
cm1fZGV2aWNlICpkZXYpOw0KPiA+ICt2b2lkIGRybV9tb2RlX2FkZF9kcF9zdWJjb25uZWN0b3Jf
cHJvcGVydHkoc3RydWN0IGRybV9jb25uZWN0b3INCj4gPiArKmNvbm5lY3Rvcik7DQo+ID4gKw0K
PiA+ICBpbnQgZHJtX21vZGVfY3JlYXRlX3R2X21hcmdpbl9wcm9wZXJ0aWVzKHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYpOw0KPiA+IGludCBkcm1fbW9kZV9jcmVhdGVfdHZfcHJvcGVydGllcyhzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2LA0KPiA+ICAJCQkJICB1bnNpZ25lZCBpbnQgbnVtX21vZGVzLA0K
PiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fZHBfaGVscGVyLmggYi9pbmNsdWRlL2Ry
bS9kcm1fZHBfaGVscGVyLmgNCj4gPiBpbmRleA0KPiA+IDMwNTUzM2QuLjY0MDhiMzEgMTAwNjQ0
DQo+ID4gLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2RwX2hlbHBlci5oDQo+ID4gKysrIGIvaW5jbHVk
ZS9kcm0vZHJtX2RwX2hlbHBlci5oDQo+ID4gQEAgLTI2LDYgKzI2LDcgQEANCj4gPiAgI2luY2x1
ZGUgPGxpbnV4L2RlbGF5Lmg+DQo+ID4gICNpbmNsdWRlIDxsaW51eC9pMmMuaD4NCj4gPiAgI2lu
Y2x1ZGUgPGxpbnV4L3R5cGVzLmg+DQo+ID4gKyNpbmNsdWRlIDxkcm0vZHJtX2Nvbm5lY3Rvci5o
Pg0KPiA+DQo+ID4gIC8qDQo+ID4gICAqIFVubGVzcyBvdGhlcndpc2Ugbm90ZWQsIGFsbCB2YWx1
ZXMgYXJlIGZyb20gdGhlIERQIDEuMWEgc3BlYy4NCj4gPiBOb3RlIHRoYXQgQEAgLQ0KPiA+IDE1
OTksNiArMTYwMCwxMyBAQCBpbnQgZHJtX2RwX2Rvd25zdHJlYW1fbWF4X2JwYyhjb25zdCB1OA0K
PiA+IGRwY2RbRFBfUkVDRUlWRVJfQ0FQX1NJWkVdLCAgaW50IGRybV9kcF9kb3duc3RyZWFtX2lk
KHN0cnVjdA0KPiA+IGRybV9kcF9hdXggKmF1eCwgY2hhciBpZFs2XSk7ICB2b2lkIGRybV9kcF9k
b3duc3RyZWFtX2RlYnVnKHN0cnVjdA0KPiA+IHNlcV9maWxlICptLCBjb25zdCB1OCBkcGNkW0RQ
X1JFQ0VJVkVSX0NBUF9TSVpFXSwNCj4gPiAgCQkJICAgICBjb25zdCB1OCBwb3J0X2NhcFs0XSwg
c3RydWN0IGRybV9kcF9hdXggKmF1eCk7DQo+ID4gK2VudW0gZHJtX21vZGVfc3ViY29ubmVjdG9y
DQo+ID4gK2RybV9kcF9zdWJjb25uZWN0b3JfdHlwZShjb25zdCB1OCBkcGNkW0RQX1JFQ0VJVkVS
X0NBUF9TSVpFXSwNCj4gPiArCQkJIGNvbnN0IHU4IHBvcnRfY2FwWzRdKTsNCj4gPiArdm9pZCBk
cm1fZHBfc2V0X3N1YmNvbm5lY3Rvcl9wcm9wZXJ0eShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29u
bmVjdG9yLA0KPiA+ICsJCQkJICAgICAgZW51bSBkcm1fY29ubmVjdG9yX3N0YXR1cyBzdGF0dXMs
DQo+ID4gKwkJCQkgICAgICBjb25zdCB1OCAqZHBjZCwNCj4gPiArCQkJCSAgICAgIGNvbnN0IHU4
IHBvcnRfY2FwWzRdKTsNCj4gPg0KPiA+ICB2b2lkIGRybV9kcF9yZW1vdGVfYXV4X2luaXQoc3Ry
dWN0IGRybV9kcF9hdXggKmF1eCk7ICB2b2lkDQo+ID4gZHJtX2RwX2F1eF9pbml0KHN0cnVjdCBk
cm1fZHBfYXV4ICphdXgpOyBkaWZmIC0tZ2l0DQo+ID4gYS9pbmNsdWRlL2RybS9kcm1fbW9kZV9j
b25maWcuaCBiL2luY2x1ZGUvZHJtL2RybV9tb2RlX2NvbmZpZy5oIGluZGV4DQo+ID4gNmMzZWY0
OS4uMDg1ZmIwMCAxMDA2NDQNCj4gPiAtLS0gYS9pbmNsdWRlL2RybS9kcm1fbW9kZV9jb25maWcu
aA0KPiA+ICsrKyBiL2luY2x1ZGUvZHJtL2RybV9tb2RlX2NvbmZpZy5oDQo+ID4gQEAgLTY4MSw2
ICs2ODEsMTIgQEAgc3RydWN0IGRybV9tb2RlX2NvbmZpZyB7DQo+ID4gIAlzdHJ1Y3QgZHJtX3By
b3BlcnR5ICpkdmlfaV9zZWxlY3Rfc3ViY29ubmVjdG9yX3Byb3BlcnR5Ow0KPiA+DQo+ID4gIAkv
KioNCj4gPiArCSAqIEBkcF9zdWJjb25uZWN0b3JfcHJvcGVydHk6IE9wdGlvbmFsIERQIHByb3Bl
cnR5IHRvIGRpZmZlcmVudGlhdGUNCj4gPiArCSAqIGJldHdlZW4gZGlmZmVyZW50IERQIGRvd25z
dHJlYW0gcG9ydCB0eXBlcy4NCj4gPiArCSAqLw0KPiA+ICsJc3RydWN0IGRybV9wcm9wZXJ0eSAq
ZHBfc3ViY29ubmVjdG9yX3Byb3BlcnR5Ow0KPiA+ICsNCj4gPiArCS8qKg0KPiA+ICAJICogQHR2
X3N1YmNvbm5lY3Rvcl9wcm9wZXJ0eTogT3B0aW9uYWwgVFYgcHJvcGVydHkgdG8gZGlmZmVyZW50
aWF0ZQ0KPiA+ICAJICogYmV0d2VlbiBkaWZmZXJlbnQgVFYgY29ubmVjdG9yIHR5cGVzLg0KPiA+
ICAJICovDQo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9kcm0vZHJtX21vZGUuaCBiL2lu
Y2x1ZGUvdWFwaS9kcm0vZHJtX21vZGUuaA0KPiA+IGluZGV4IDczNWM4Y2YuLjMzNThjNmIgMTAw
NjQ0DQo+ID4gLS0tIGEvaW5jbHVkZS91YXBpL2RybS9kcm1fbW9kZS5oDQo+ID4gKysrIGIvaW5j
bHVkZS91YXBpL2RybS9kcm1fbW9kZS5oDQo+ID4gQEAgLTMzMiwxNCArMzMyLDE5IEBAIHN0cnVj
dCBkcm1fbW9kZV9nZXRfZW5jb2RlciB7DQo+ID4gIC8qIFRoaXMgaXMgZm9yIGNvbm5lY3RvcnMg
d2l0aCBtdWx0aXBsZSBzaWduYWwgdHlwZXMuICovDQo+ID4gIC8qIFRyeSB0byBtYXRjaCBEUk1f
TU9ERV9DT05ORUNUT1JfWCBhcyBjbG9zZWx5IGFzIHBvc3NpYmxlLiAqLyAgZW51bQ0KPiA+IGRy
bV9tb2RlX3N1YmNvbm5lY3RvciB7DQo+ID4gLQlEUk1fTU9ERV9TVUJDT05ORUNUT1JfQXV0b21h
dGljID0gMCwNCj4gPiAtCURSTV9NT0RFX1NVQkNPTk5FQ1RPUl9Vbmtub3duID0gMCwNCj4gPiAt
CURSTV9NT0RFX1NVQkNPTk5FQ1RPUl9EVklEID0gMywNCj4gPiAtCURSTV9NT0RFX1NVQkNPTk5F
Q1RPUl9EVklBID0gNCwNCj4gPiAtCURSTV9NT0RFX1NVQkNPTk5FQ1RPUl9Db21wb3NpdGUgPSA1
LA0KPiA+IC0JRFJNX01PREVfU1VCQ09OTkVDVE9SX1NWSURFTyA9IDYsDQo+ID4gLQlEUk1fTU9E
RV9TVUJDT05ORUNUT1JfQ29tcG9uZW50ID0gOCwNCj4gPiAtCURSTV9NT0RFX1NVQkNPTk5FQ1RP
Ul9TQ0FSVCA9IDksDQo+ID4gKwlEUk1fTU9ERV9TVUJDT05ORUNUT1JfQXV0b21hdGljICAgPSAw
LCAgLyogRFZJLUksIFRWICAgICAqLw0KPiA+ICsJRFJNX01PREVfU1VCQ09OTkVDVE9SX1Vua25v
d24gICAgID0gMCwgIC8qIERWSS1JLCBUViwgRFAgKi8NCj4gPiArCURSTV9NT0RFX1NVQkNPTk5F
Q1RPUl9WR0EJICA9IDEsICAvKiAgICAgICAgICAgIERQICovDQo+ID4gKwlEUk1fTU9ERV9TVUJD
T05ORUNUT1JfRFZJRAkgID0gMywgIC8qIERWSS1JICAgICAgRFAgKi8NCj4gPiArCURSTV9NT0RF
X1NVQkNPTk5FQ1RPUl9EVklBCSAgPSA0LCAgLyogRFZJLUkgICAgICAgICAqLw0KPiA+ICsJRFJN
X01PREVfU1VCQ09OTkVDVE9SX0NvbXBvc2l0ZSAgID0gNSwgIC8qICAgICAgICBUViAgICAgKi8N
Cj4gPiArCURSTV9NT0RFX1NVQkNPTk5FQ1RPUl9TVklERU8JICA9IDYsICAvKiAgICAgICAgVFYg
ICAgICovDQo+ID4gKwlEUk1fTU9ERV9TVUJDT05ORUNUT1JfQ29tcG9uZW50ICAgPSA4LCAgLyog
ICAgICAgIFRWICAgICAqLw0KPiA+ICsJRFJNX01PREVfU1VCQ09OTkVDVE9SX1NDQVJUCSAgPSA5
LCAgLyogICAgICAgIFRWICAgICAqLw0KPiA+ICsJRFJNX01PREVfU1VCQ09OTkVDVE9SX0Rpc3Bs
YXlQb3J0ID0gMTAsIC8qICAgICAgICAgICAgRFAgKi8NCj4gPiArCURSTV9NT0RFX1NVQkNPTk5F
Q1RPUl9IRE1JQSAgICAgICA9IDExLCAvKiAgICAgICAgICAgIERQICovDQo+ID4gKwlEUk1fTU9E
RV9TVUJDT05ORUNUT1JfTmF0aXZlICAgICAgPSAxNSwgLyogICAgICAgICAgICBEUCAqLw0KPiA+
ICsJRFJNX01PREVfU1VCQ09OTkVDVE9SX1dpcmVsZXNzICAgID0gMTgsIC8qICAgICAgICAgICAg
RFAgKi8NCj4gPiAgfTsNCj4gPg0KPiA+ICAjZGVmaW5lIERSTV9NT0RFX0NPTk5FQ1RPUl9Vbmtu
b3duCTANCj4gPiAtLQ0KPiA+IDIuNy40DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
