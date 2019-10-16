Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BE9D9153
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 14:46:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 114506E96E;
	Wed, 16 Oct 2019 12:46:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2539E6E969
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 12:46:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 05:46:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,303,1566889200"; d="scan'208";a="225772868"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga002.fm.intel.com with ESMTP; 16 Oct 2019 05:46:38 -0700
Received: from fmsmsx119.amr.corp.intel.com (10.18.124.207) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 16 Oct 2019 05:46:38 -0700
Received: from bgsmsx109.gar.corp.intel.com (10.223.4.211) by
 FMSMSX119.amr.corp.intel.com (10.18.124.207) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 16 Oct 2019 05:46:37 -0700
Received: from BGSMSX108.gar.corp.intel.com ([169.254.8.18]) by
 BGSMSX109.gar.corp.intel.com ([169.254.10.209]) with mapi id 14.03.0439.000;
 Wed, 16 Oct 2019 18:16:34 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "C, Ramalingam" <ramalingam.c@intel.com>
Thread-Topic: [Intel-gfx] [RFC 6/7] drm/i915/dsi: Add TE handler for dsi cmd
 mode.
Thread-Index: AQHVgoLcK2vG/8e4H06mMdfsTggFHKdctpgAgACBguA=
Date: Wed, 16 Oct 2019 12:46:34 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B80980D64@BGSMSX108.gar.corp.intel.com>
References: <20191014110122.31923-1-vandita.kulkarni@intel.com>
 <20191014110122.31923-7-vandita.kulkarni@intel.com>
 <20191016102436.GD32730@intel.com>
In-Reply-To: <20191016102436.GD32730@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNWRjYzAzNTAtMGE5Zi00MDMxLTkyZmMtZWNkNTM4MzdjNzg3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiI5b0ZiemxlZlAyb0NFM09iV1wvVnZzKzNNeXdGdGVWQVlaMTExU1k5YjVSRTRXMFRJd1RySFFEdkY5YmtQU05TdyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 6/7] drm/i915/dsi: Add TE handler for dsi cmd
 mode.
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQywgUmFtYWxpbmdhbSA8
cmFtYWxpbmdhbS5jQGludGVsLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBPY3RvYmVyIDE2LCAy
MDE5IDM6NTUgUE0NCj4gVG86IEt1bGthcm5pLCBWYW5kaXRhIDx2YW5kaXRhLmt1bGthcm5pQGlu
dGVsLmNvbT4NCj4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IE5pa3VsYSwg
SmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0g
W1JGQyA2LzddIGRybS9pOTE1L2RzaTogQWRkIFRFIGhhbmRsZXIgZm9yIGRzaSBjbWQNCj4gbW9k
ZS4NCj4gDQo+IE9uIDIwMTktMTAtMTQgYXQgMTY6MzE6MjEgKzA1MzAsIFZhbmRpdGEgS3Vsa2Fy
bmkgd3JvdGU6DQo+ID4gSW4gY2FzZSBvZiBkdWFsIGxpbmssIHdlIGdldCB0aGUgVEUgb24gc2xh
dmUuDQo+ID4gU28gY2xlYXIgdGhlIFRFIG9uIHNsYXZlIERTSSBJSVIuDQo+ID4NCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4N
Cj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyB8IDYxDQo+ID4g
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA2
MSBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9pcnEuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBpbmRl
eCBiZmIyYTYzNTA0ZmIuLmQxMmVmYTcyOTQzYg0KPiA+IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2lycS5jDQo+ID4gQEAgLTI2MjgsNiArMjYyOCw2MSBAQCBnZW44X2RlX21pc2NfaXJx
X2hhbmRsZXIoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1MzIgaWlyKQ0K
PiA+ICAJCURSTV9FUlJPUigiVW5leHBlY3RlZCBERSBNaXNjIGludGVycnVwdFxuIik7ICB9DQo+
ID4NCj4gPiArdm9pZCBnZW4xMV9kc2lfdGVfaW50ZXJydXB0X2hhbmRsZXIoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiA+ICsJCQkJICAgIHUzMiBpaXJfdmFsdWUpDQo+ID4g
K3sNCj4gPiArCWVudW0gcGlwZSBwaXBlID0gSU5WQUxJRF9QSVBFOw0KPiA+ICsJZW51bSBwb3J0
IHBvcnQ7DQo+ID4gKwllbnVtIHRyYW5zY29kZXIgZHNpX3RyYW5zOw0KPiA+ICsJdTMyIHZhbDsN
Cj4gdXN1YWxseSB3ZSBvcmRlciB0aGUgZGVjbGFyYXRpb25zIGJhc2VkIG9uIHRoZSBsZW5ndGgu
DQpPa2F5Lg0KPiA+ICsNCj4gPiArCS8qDQo+ID4gKwkgKiBJbmNhc2Ugb2YgZHVhbCBsaW5rLCBU
RSBjb21lcyBmcm9tIERTSV8xDQo+ID4gKwkgKiB0aGlzIGlzIHRvIGNoZWNrIGlmIGR1YWwgbGlu
ayBpcyBlbmFibGVkDQo+ID4gKwkgKi8NCj4gPiArCXZhbCA9IEk5MTVfUkVBRChUUkFOU19ERElf
RlVOQ19DVEwyKFRSQU5TQ09ERVJfRFNJXzApKTsNCj4gPiArCXZhbCAmPSBQT1JUX1NZTkNfTU9E
RV9FTkFCTEU7DQo+ID4gKw0KPiA+ICsJLyoNCj4gPiArCSAqIGlmIGR1YWwgbGluayBpcyBlbmFi
bGVkLCB0aGVuIHJlYWQgRFNJXzANCj4gPiArCSAqIHRyYW5zY29kZXIgcmVnaXN0ZXJzDQo+ID4g
KwkgKi8NCj4gPiArCXBvcnQgPSAoKGlpcl92YWx1ZSAmIElDTF9EU0lfMSkgJiYgdmFsKSB8fCAo
aWlyX3ZhbHVlICYgSUNMX0RTSV8wKSA/DQo+ID4gK1BPUlRfQSA6IFBPUlRfQjsNCj4gd3JhcCBp
dCE/IGJleW9uZCA4MGNoYXI/DQpPa2F5Lg0KPiA+ICsJZHNpX3RyYW5zID0gKHBvcnQgPT0gUE9S
VF9BKSA/IFRSQU5TQ09ERVJfRFNJXzAgOg0KPiBUUkFOU0NPREVSX0RTSV8xOw0KPiA+ICsNCj4g
PiArCS8qIENoZWNrIGlmIERTSSBjb25maWd1cmVkIGluIGNvbW1hbmQgbW9kZSAqLw0KPiA+ICsJ
dmFsID0gSTkxNV9SRUFEKERTSV9UUkFOU19GVU5DX0NPTkYoZHNpX3RyYW5zKSk7DQo+ID4gKwl2
YWwgPSAodmFsICYgT1BfTU9ERV9NQVNLKSA+PiAyODsNCj4gQ291bGQgd2UgdXNlIGEgbWFjcm8s
IGxpa2UgR0VUX09QX01PREUoKT8NCk9rLCB3aWxsIGNoZWNrLg0KPiA+ICsNCj4gPiArCWlmICh2
YWwpIHsNCj4gPiArCQlEUk1fRVJST1IoIkRTSSB0cmFuY29kZXIgbm90IGNvbmZpZ3VyZWQgaW4g
Y29tbWFuZA0KPiBtb2RlXG4iKTsNCj4gPiArCQlyZXR1cm47DQo+ID4gKwl9DQo+ID4gKw0KPiA+
ICsJLyogR2V0IFBJUEUgZm9yIGhhbmRsaW5nIFZCTEFOSyBldmVudCAqLw0KPiA+ICsJdmFsID0g
STkxNV9SRUFEKFRSQU5TX0RESV9GVU5DX0NUTChkc2lfdHJhbnMpKTsNCj4gPiArCXN3aXRjaCAo
dmFsICYgVFJBTlNfRERJX0VEUF9JTlBVVF9NQVNLKSB7DQo+ID4gKwljYXNlIFRSQU5TX0RESV9F
RFBfSU5QVVRfQV9PTjoNCj4gPiArCQlwaXBlID0gUElQRV9BOw0KPiA+ICsJCWJyZWFrOw0KPiA+
ICsJY2FzZSBUUkFOU19ERElfRURQX0lOUFVUX0JfT05PRkY6DQo+ID4gKwkJcGlwZSA9IFBJUEVf
QjsNCj4gPiArCQlicmVhazsNCj4gPiArCWNhc2UgVFJBTlNfRERJX0VEUF9JTlBVVF9DX09OT0ZG
Og0KPiA+ICsJCXBpcGUgPSBQSVBFX0M7DQo+ID4gKwkJYnJlYWs7DQo+ID4gKwlkZWZhdWx0Og0K
PiA+ICsJCURSTV9FUlJPUigiSW52YWxpZCBQSVBFXG4iKTsNCj4gPiArCX0NCj4gPiArDQo+ID4g
KwkvKiBjbGVhciBURSBpbiBkc2kgSUlSICovDQo+ID4gKwlwb3J0ID0gKGlpcl92YWx1ZSAmIElD
TF9EU0lfMSkgPyBQT1JUX0IgOiBQT1JUX0E7DQo+ID4gKwl2YWwgPSBJOTE1X1JFQUQoSUNMX0RT
SV9JTlRSX0lERU5UX1JFRyhwb3J0KSk7DQo+ID4gKwlJOTE1X1dSSVRFKChJQ0xfRFNJX0lOVFJf
SURFTlRfUkVHKHBvcnQpKSwgdmFsKTsNCj4gZXh0cmEgKCkgYXJvdW5kIElDTF9EU0lfSU5UUl9J
REVOVF9SRUcocG9ydCkNCk9rYXkuDQo+ID4gKw0KPiA+ICsJZHJtX2hhbmRsZV92YmxhbmsoJmRl
dl9wcml2LT5kcm0sIHBpcGUpOyB9DQo+ID4gKw0KPiA+ICBzdGF0aWMgaXJxcmV0dXJuX3QNCj4g
PiAgZ2VuOF9kZV9pcnFfaGFuZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
IHUzMg0KPiA+IG1hc3Rlcl9jdGwpICB7IEBAIC0yNjkyLDYgKzI3NDcsMTIgQEAgZ2VuOF9kZV9p
cnFfaGFuZGxlcihzdHJ1Y3QNCj4gPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTMyIG1h
c3Rlcl9jdGwpDQo+ID4gIAkJCQlmb3VuZCA9IHRydWU7DQo+ID4gIAkJCX0NCj4gPg0KPiA+ICsJ
CQlpZiAoKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpICYmDQo+ID4gKwkJCQkoaWlyICYgKElD
TF9EU0lfMCB8IElDTF9EU0lfMSkpKSB7DQo+IGFsaWdubWVudC4NCldpbGwgZml4IHRoaXMsIGFs
c28gaXQgbmVlZHMgdG8gYmUgZml4ZWQgd2l0aCBJQ0xfRFNJXzBfVEUgYW5kIElDTF9EU0lfMV9U
RS4NCg0KVGhhbmtzDQpWYW5kaXRhDQo+IA0KPiAtUmFtDQo+ID4gKwkJCQlnZW4xMV9kc2lfdGVf
aW50ZXJydXB0X2hhbmRsZXIoZGV2X3ByaXYsDQo+IGlpcik7DQo+ID4gKwkJCQlmb3VuZCA9IHRy
dWU7DQo+ID4gKwkJCX0NCj4gPiArDQo+ID4gIAkJCWlmICghZm91bmQpDQo+ID4gIAkJCQlEUk1f
RVJST1IoIlVuZXhwZWN0ZWQgREUgUG9ydA0KPiBpbnRlcnJ1cHRcbiIpOw0KPiA+ICAJCX0NCj4g
PiAtLQ0KPiA+IDIuMjEuMC41LmdhZWI1ODJhDQo+ID4NCj4gPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QN
Cj4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
