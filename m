Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB631D98CC
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 16:03:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 866FD89F2E;
	Tue, 19 May 2020 14:03:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA46889F2E;
 Tue, 19 May 2020 14:03:44 +0000 (UTC)
IronPort-SDR: cFZ2o5etgoEb22EnfRNhqyLWzpE7RXxEJf6r8Z70BQG42pBkJTPdaCtSK4Ea9i2/sHxgQSiPup
 /gZKbCg86sfg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 07:03:44 -0700
IronPort-SDR: YWHtomyuPk6FV0g3HlKx0uJ5cBE055id+RoBjknr4g853xhE9d6ypYSdxl4EueWz7Jh4BtGS4a
 bKG1ZSfBB7pQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="264312853"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga003.jf.intel.com with ESMTP; 19 May 2020 07:03:42 -0700
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 19 May 2020 07:03:33 -0700
Received: from bgsmsx153.gar.corp.intel.com (10.224.23.4) by
 fmsmsx156.amr.corp.intel.com (10.18.116.74) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 19 May 2020 07:03:33 -0700
Received: from BGSMSX107.gar.corp.intel.com ([169.254.9.51]) by
 BGSMSX153.gar.corp.intel.com ([169.254.2.94]) with mapi id 14.03.0439.000;
 Tue, 19 May 2020 19:33:32 +0530
From: "Laxminarayan Bharadiya, Pankaj"
 <pankaj.laxminarayan.bharadiya@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "daniel@ffwll.ch"
 <daniel@ffwll.ch>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>, =?utf-8?B?VmlsbGUgU3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, Chris Wilson <chris@chris-wilson.co.uk>,
 "Deak, Imre" <imre.deak@intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>
Thread-Topic: [PATCH v2 3/9] drm/i915/display/sdvo: Prefer drm_WARN* over WARN*
Thread-Index: AQHWIkFC0rtq/L9sX02ERA5713dtIqidaMiAgABiypCAEVoigIAAYbvg
Date: Tue, 19 May 2020 14:03:30 +0000
Message-ID: <E92BA18FDE0A5B43B7B3DA7FCA0312860589D68B@BGSMSX107.gar.corp.intel.com>
References: <20200504181600.18503-1-pankaj.laxminarayan.bharadiya@intel.com>
 <20200504181600.18503-4-pankaj.laxminarayan.bharadiya@intel.com>
 <87tv0q6hwm.fsf@intel.com>
 <E92BA18FDE0A5B43B7B3DA7FCA03128605863BCA@BGSMSX107.gar.corp.intel.com>
 <87k1182gaa.fsf@intel.com>
In-Reply-To: <87k1182gaa.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 3/9] drm/i915/display/sdvo: Prefer
 drm_WARN* over WARN*
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogMTkgTWF5IDIwMjAgMTk6MTINCj4g
VG86IExheG1pbmFyYXlhbiBCaGFyYWRpeWEsIFBhbmthag0KPiA8cGFua2FqLmxheG1pbmFyYXlh
bi5iaGFyYWRpeWFAaW50ZWwuY29tPjsgZGFuaWVsQGZmd2xsLmNoOyBpbnRlbC0NCj4gZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZzsgZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgSm9v
bmFzIExhaHRpbmVuDQo+IDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPjsgVml2aSwg
Um9kcmlnbyA8cm9kcmlnby52aXZpQGludGVsLmNvbT47DQo+IERhdmlkIEFpcmxpZSA8YWlybGll
ZEBsaW51eC5pZT47IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+OyBDaHJpcw0KPiBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az47IERlYWssIElt
cmUgPGltcmUuZGVha0BpbnRlbC5jb20+Ow0KPiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5s
YW5raG9yc3RAbGludXguaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSRTogW1BBVENIIHYyIDMvOV0g
ZHJtL2k5MTUvZGlzcGxheS9zZHZvOiBQcmVmZXIgZHJtX1dBUk4qIG92ZXINCj4gV0FSTioNCj4g
DQo+IE9uIEZyaSwgMDggTWF5IDIwMjAsICJMYXhtaW5hcmF5YW4gQmhhcmFkaXlhLCBQYW5rYWoi
DQo+IAk8cGFua2FqLmxheG1pbmFyYXlhbi5iaGFyYWRpeWFAaW50ZWwuY29tPiB3cm90ZToNCj4g
Pj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4gRnJvbTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPj4gU2VudDogMDggTWF5IDIwMjAgMTI6MTkN
Cj4gPj4gVG86IExheG1pbmFyYXlhbiBCaGFyYWRpeWEsIFBhbmthag0KPiA+PiA8cGFua2FqLmxh
eG1pbmFyYXlhbi5iaGFyYWRpeWFAaW50ZWwuY29tPjsgZGFuaWVsQGZmd2xsLmNoOyBpbnRlbC0N
Cj4gPj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZzsgSm9vbmFzDQo+ID4+IExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50
ZWwuY29tPjsgVml2aSwgUm9kcmlnbw0KPiA+PiA8cm9kcmlnby52aXZpQGludGVsLmNvbT47IERh
dmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT47IFZpbGxlDQo+ID4+IFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+OyBDaHJpcyBXaWxzb24NCj4gPj4gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az47IERlYWssIEltcmUgPGltcmUuZGVha0BpbnRlbC5jb20+OyBNYWFy
dGVuDQo+ID4+IExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPjsg
TGF4bWluYXJheWFuDQo+ID4+IEJoYXJhZGl5YSwgUGFua2FqIDxwYW5rYWoubGF4bWluYXJheWFu
LmJoYXJhZGl5YUBpbnRlbC5jb20+DQo+ID4+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjIgMy85XSBk
cm0vaTkxNS9kaXNwbGF5L3Nkdm86IFByZWZlciBkcm1fV0FSTioNCj4gPj4gb3Zlcg0KPiA+PiBX
QVJOKg0KPiA+Pg0KPiA+PiBPbiBNb24sIDA0IE1heSAyMDIwLCBQYW5rYWogQmhhcmFkaXlhDQo+
ID4+IDxwYW5rYWoubGF4bWluYXJheWFuLmJoYXJhZGl5YUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+
PiA+IHN0cnVjdCBkcm1fZGV2aWNlIHNwZWNpZmljIGRybV9XQVJOKiBtYWNyb3MgaW5jbHVkZSBk
ZXZpY2UNCj4gPj4gPiBpbmZvcm1hdGlvbiBpbiB0aGUgYmFja3RyYWNlLCBzbyB3ZSBrbm93IHdo
YXQgZGV2aWNlIHRoZSB3YXJuaW5ncw0KPiBvcmlnaW5hdGUgZnJvbS4NCj4gPj4gPg0KPiA+PiA+
IFByZWZlciBkcm1fV0FSTiogb3ZlciBXQVJOKiBjYWxscy4NCj4gPj4gPg0KPiA+PiA+IGNoYW5n
ZXMgc2luY2UgdjE6DQo+ID4+ID4gLSBBZGRlZCBkZXZfcHJpdiBsb2NhbCB2YXJpYWJsZSBhbmQg
dXNlZCBpdCBpbiBkcm1fV0FSTiogY2FsbHMNCj4gPj4gPiAoSmFuaSkNCj4gPj4NCj4gPj4gSW4g
dGhlIGVhcmxpZXIgcGF0Y2hlcyB5b3UncmUgYWRkaW5nIGk5MTUgbG9jYWwgdmFyaWFibGUsIGhl
cmUgaXQncw0KPiA+PiBkZXZfcHJpdi4gV2UncmUgZ3JhZHVhbGx5IHRyYW5zaXRpb25pbmcgZnJv
bSBkZXZfcHJpdiB0byBpOTE1LCBzbyBJJ20NCj4gPj4gbm90IHRocmlsbGVkIGFib3V0IGFkZGlu
ZyBuZXcgZGV2X3ByaXYuDQo+ID4NCj4gPiBkZXZfcHJpdiBuYW1lIGlzIGJlaW5nIHVzZWQgdGhy
b3VnaG91dCB0aGUgZmlsZS4gU28gdG8gYmUgY29uc2lzdGVudA0KPiA+IHdpdGggcmVzdCBvZiB0
aGUgY29kZSwgSSB1c2VkIGRldl9wcml2IHZhcmlhYmxlIGluIHRoaXMgc3BlY2lmaWMgZmlsZS4N
Cj4gPg0KPiA+IFNoYWxsIEkgcmVuYW1lIGl0IHRvIGk5MTU/DQo+ID4NCj4gPiBJIHVzZWQgaTkx
NSBvciBkZXZfcHJpdiAgdmFyaWFibGUgbmFtZSBiYXNlZCBvbiB3aGF0IHZhcmlhYmxlIG5hbWUN
Cj4gPiBiZWluZyBhbHJlYWR5IHVzZWQgZm9yIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlIHBvaW50
ZXIgaW4gYSBnaXZlbiBmaWxlLg0KPiANCj4gSSB1bmRlcnN0YW5kIHlvdXIgcmVhc29uaW5nLiBI
b3dldmVyIHdpdGggaTkxNSBJJ3ZlIHByZWZlcnJlZCB0byBzd2l0Y2ggd2hlbg0KPiBwb3NzaWJs
ZS4NCj4gDQo+IFJlZ2FyZGxlc3MsIHB1c2hlZCB0aGUgc2VyaWVzIG5vdy4gVGhhbmtzIGZvciB0
aGUgcGF0Y2hlcywgYW5kIHNvcnJ5IGZvciB0aGUNCj4gZGVsYXkuDQoNClRoYW5rIHlvdSBKYW5p
Lg0KV2lsbCB5b3UgcGxlYXNlICByZXZpZXcgLSBodHRwczovL3BhdGNod29yay5mcmVlZGVza3Rv
cC5vcmcvc2VyaWVzLzc1MjY1LyNyZXYyIA0KDQpUaGFua3MsDQpQYW5rYWoNCg0KPiANCj4gQlIs
DQo+IEphbmkuDQo+IA0KPiANCj4gDQo+ID4NCj4gPiBUaGFua3MsDQo+ID4gUGFua2FqDQo+ID4N
Cj4gPj4NCj4gPj4gQlIsDQo+ID4+IEphbmkuDQo+ID4+DQo+ID4+DQo+ID4+DQo+ID4+ID4NCj4g
Pj4gPiBTaWduZWQtb2ZmLWJ5OiBQYW5rYWogQmhhcmFkaXlhDQo+ID4+ID4gPHBhbmthai5sYXht
aW5hcmF5YW4uYmhhcmFkaXlhQGludGVsLmNvbT4NCj4gPj4gPiAtLS0NCj4gPj4gPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMgfCAyMQ0KPiA+PiA+ICsrKysrKysr
KysrKysrLS0tLS0tLQ0KPiA+PiA+ICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwg
NyBkZWxldGlvbnMoLSkNCj4gPj4gPg0KPiA+PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nkdm8uYw0KPiA+PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMNCj4gPj4gPiBpbmRleCBiYzZjMjY4MThlMTUuLjc3MzUy
M2RjZDEwNyAxMDA2NDQNCj4gPj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Nkdm8uYw0KPiA+PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfc2R2by5jDQo+ID4+ID4gQEAgLTQxMSw2ICs0MTEsNyBAQCBzdGF0aWMgY29uc3QgY2hh
ciAqc2R2b19jbWRfbmFtZSh1OCBjbWQpDQo+ID4+ID4gc3RhdGljIHZvaWQgaW50ZWxfc2R2b19k
ZWJ1Z193cml0ZShzdHJ1Y3QgaW50ZWxfc2R2byAqaW50ZWxfc2R2bywgdTggY21kLA0KPiA+PiA+
ICAJCQkJICAgY29uc3Qgdm9pZCAqYXJncywgaW50IGFyZ3NfbGVuKSAgew0KPiA+PiA+ICsJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0NCj4gPj4gPiArdG9faTkxNShpbnRlbF9z
ZHZvLT5iYXNlLmJhc2UuZGV2KTsNCj4gPj4gPiAgCWNvbnN0IGNoYXIgKmNtZF9uYW1lOw0KPiA+
PiA+ICAJaW50IGksIHBvcyA9IDA7DQo+ID4+ID4gIAljaGFyIGJ1ZmZlcls2NF07DQo+ID4+ID4g
QEAgLTQzMSw3ICs0MzIsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9zZHZvX2RlYnVnX3dyaXRlKHN0
cnVjdA0KPiA+PiA+IGludGVsX3Nkdm8NCj4gPj4gKmludGVsX3Nkdm8sIHU4IGNtZCwNCj4gPj4g
PiAgCWVsc2UNCj4gPj4gPiAgCQlCVUZfUFJJTlQoIiglMDJYKSIsIGNtZCk7DQo+ID4+ID4NCj4g
Pj4gPiAtCVdBUk5fT04ocG9zID49IHNpemVvZihidWZmZXIpIC0gMSk7DQo+ID4+ID4gKwlkcm1f
V0FSTl9PTigmZGV2X3ByaXYtPmRybSwgcG9zID49IHNpemVvZihidWZmZXIpIC0gMSk7DQo+ID4+
ID4gICN1bmRlZiBCVUZfUFJJTlQNCj4gPj4gPg0KPiA+PiA+ICAJRFJNX0RFQlVHX0tNUygiJXM6
IFc6ICUwMlggJXNcbiIsIFNEVk9fTkFNRShpbnRlbF9zZHZvKSwgY21kLA0KPiA+PiA+IGJ1ZmZl
cik7IEBAIC01MzMsNiArNTM0LDcgQEAgc3RhdGljIGJvb2wNCj4gPj4gPiBpbnRlbF9zZHZvX3dy
aXRlX2NtZChzdHJ1Y3QgaW50ZWxfc2R2byAqaW50ZWxfc2R2bywgdTggY21kLCAgc3RhdGljDQo+
ID4+ID4gYm9vbCBpbnRlbF9zZHZvX3JlYWRfcmVzcG9uc2Uoc3RydWN0DQo+ID4+IGludGVsX3Nk
dm8gKmludGVsX3Nkdm8sDQo+ID4+ID4gIAkJCQkgICAgIHZvaWQgKnJlc3BvbnNlLCBpbnQgcmVz
cG9uc2VfbGVuKSAgew0KPiA+PiA+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0NCj4gPj4gPiArdG9faTkxNShpbnRlbF9zZHZvLT5iYXNlLmJhc2UuZGV2KTsNCj4gPj4gPiAg
CWNvbnN0IGNoYXIgKmNtZF9zdGF0dXM7DQo+ID4+ID4gIAl1OCByZXRyeSA9IDE1OyAvKiA1IHF1
aWNrIGNoZWNrcywgZm9sbG93ZWQgYnkgMTAgbG9uZyBjaGVja3MgKi8NCj4gPj4gPiAgCXU4IHN0
YXR1czsNCj4gPj4gPiBAQCAtNTk3LDcgKzU5OSw3IEBAIHN0YXRpYyBib29sIGludGVsX3Nkdm9f
cmVhZF9yZXNwb25zZShzdHJ1Y3QNCj4gPj4gaW50ZWxfc2R2byAqaW50ZWxfc2R2bywNCj4gPj4g
PiAgCQlCVUZfUFJJTlQoIiAlMDJYIiwgKCh1OCAqKXJlc3BvbnNlKVtpXSk7DQo+ID4+ID4gIAl9
DQo+ID4+ID4NCj4gPj4gPiAtCVdBUk5fT04ocG9zID49IHNpemVvZihidWZmZXIpIC0gMSk7DQo+
ID4+ID4gKwlkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgcG9zID49IHNpemVvZihidWZmZXIp
IC0gMSk7DQo+ID4+ID4gICN1bmRlZiBCVUZfUFJJTlQNCj4gPj4gPg0KPiA+PiA+ICAJRFJNX0RF
QlVHX0tNUygiJXM6IFI6ICVzXG4iLCBTRFZPX05BTUUoaW50ZWxfc2R2byksIGJ1ZmZlcik7DQo+
ID4+IEBADQo+ID4+ID4gLTEwODEsNiArMTA4Myw3IEBAIHN0YXRpYyBib29sDQo+ID4+ID4gaW50
ZWxfc2R2b19jb21wdXRlX2F2aV9pbmZvZnJhbWUoc3RydWN0DQo+ID4+IGludGVsX3Nkdm8gKmlu
dGVsX3Nkdm8sDQo+ID4+ID4gIAkJCQkJICAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSwNCj4gPj4gPiAgCQkJCQkgICAgIHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlDQo+
ID4+ICpjb25uX3N0YXRlKSAgew0KPiA+PiA+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2ID0NCj4gPj4gPiArdG9faTkxNShpbnRlbF9zZHZvLT5iYXNlLmJhc2UuZGV2KTsNCj4g
Pj4gPiAgCXN0cnVjdCBoZG1pX2F2aV9pbmZvZnJhbWUgKmZyYW1lID0gJmNydGNfc3RhdGUtPmlu
Zm9mcmFtZXMuYXZpLmF2aTsNCj4gPj4gPiAgCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2Rl
ICphZGp1c3RlZF9tb2RlID0NCj4gPj4gPiAgCQkmY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9k
ZTsNCj4gPj4gPiBAQCAtMTEwNiw3ICsxMTA5LDcgQEAgc3RhdGljIGJvb2wNCj4gPj4gaW50ZWxf
c2R2b19jb21wdXRlX2F2aV9pbmZvZnJhbWUoc3RydWN0IGludGVsX3Nkdm8gKmludGVsX3Nkdm8s
DQo+ID4+ID4NCj4gPj4gSERNSV9RVUFOVElaQVRJT05fUkFOR0VfRlVMTCk7DQo+ID4+ID4NCj4g
Pj4gPiAgCXJldCA9IGhkbWlfYXZpX2luZm9mcmFtZV9jaGVjayhmcmFtZSk7DQo+ID4+ID4gLQlp
ZiAoV0FSTl9PTihyZXQpKQ0KPiA+PiA+ICsJaWYgKGRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJt
LCByZXQpKQ0KPiA+PiA+ICAJCXJldHVybiBmYWxzZTsNCj4gPj4gPg0KPiA+PiA+ICAJcmV0dXJu
IHRydWU7DQo+ID4+ID4gQEAgLTExMTUsNiArMTExOCw3IEBAIHN0YXRpYyBib29sDQo+ID4+ID4g
aW50ZWxfc2R2b19jb21wdXRlX2F2aV9pbmZvZnJhbWUoc3RydWN0IGludGVsX3Nkdm8gKmludGVs
X3Nkdm8sDQo+ID4+ID4gc3RhdGljIGJvb2wNCj4gPj4gaW50ZWxfc2R2b19zZXRfYXZpX2luZm9m
cmFtZShzdHJ1Y3QgaW50ZWxfc2R2byAqaW50ZWxfc2R2bywNCj4gPj4gPiAgCQkJCQkgY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPj4gKmNydGNfc3RhdGUpICB7DQo+ID4+ID4gKwlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPQ0KPiA+PiA+ICt0b19pOTE1KGludGVs
X3Nkdm8tPmJhc2UuYmFzZS5kZXYpOw0KPiA+PiA+ICAJdTggc2R2b19kYXRhW0hETUlfSU5GT0ZS
QU1FX1NJWkUoQVZJKV07DQo+ID4+ID4gIAljb25zdCB1bmlvbiBoZG1pX2luZm9mcmFtZSAqZnJh
bWUgPSAmY3J0Y19zdGF0ZS0+aW5mb2ZyYW1lcy5hdmk7DQo+ID4+ID4gIAlzc2l6ZV90IGxlbjsN
Cj4gPj4gPiBAQCAtMTEyMywxMSArMTEyNywxMiBAQCBzdGF0aWMgYm9vbA0KPiA+PiA+IGludGVs
X3Nkdm9fc2V0X2F2aV9pbmZvZnJhbWUoc3RydWN0DQo+ID4+IGludGVsX3Nkdm8gKmludGVsX3Nk
dm8sDQo+ID4+ID4gIAkgICAgIGludGVsX2hkbWlfaW5mb2ZyYW1lX2VuYWJsZShIRE1JX0lORk9G
UkFNRV9UWVBFX0FWSSkpID09IDApDQo+ID4+ID4gIAkJcmV0dXJuIHRydWU7DQo+ID4+ID4NCj4g
Pj4gPiAtCWlmIChXQVJOX09OKGZyYW1lLT5hbnkudHlwZSAhPSBIRE1JX0lORk9GUkFNRV9UWVBF
X0FWSSkpDQo+ID4+ID4gKwlpZiAoZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sDQo+ID4+ID4g
KwkJCWZyYW1lLT5hbnkudHlwZSAhPSBIRE1JX0lORk9GUkFNRV9UWVBFX0FWSSkpDQo+ID4+ID4g
IAkJcmV0dXJuIGZhbHNlOw0KPiA+PiA+DQo+ID4+ID4gIAlsZW4gPSBoZG1pX2luZm9mcmFtZV9w
YWNrX29ubHkoZnJhbWUsIHNkdm9fZGF0YSwgc2l6ZW9mKHNkdm9fZGF0YSkpOw0KPiA+PiA+IC0J
aWYgKFdBUk5fT04obGVuIDwgMCkpDQo+ID4+ID4gKwlpZiAoZHJtX1dBUk5fT04oJmRldl9wcml2
LT5kcm0sIGxlbiA8IDApKQ0KPiA+PiA+ICAJCXJldHVybiBmYWxzZTsNCj4gPj4gPg0KPiA+PiA+
ICAJcmV0dXJuIGludGVsX3Nkdm9fd3JpdGVfaW5mb2ZyYW1lKGludGVsX3Nkdm8sDQo+ID4+ID4g
U0RWT19IQlVGX0lOREVYX0FWSV9JRiwgQEAgLTEyMzcsNiArMTI0Miw3IEBADQo+ID4+ID4gaW50
ZWxfc2R2b19nZXRfcHJlZmVycmVkX2lucHV0X21vZGUoc3RydWN0IGludGVsX3Nkdm8gKmludGVs
X3Nkdm8sDQo+ID4+ID4NCj4gPj4gPiAgc3RhdGljIHZvaWQgaTl4eF9hZGp1c3Rfc2R2b190dl9j
bG9jayhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+PiA+ICpwaXBlX2NvbmZpZykgIHsNCj4g
Pj4gPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9DQo+ID4+ID4gK3RvX2k5
MTUocGlwZV9jb25maWctPnVhcGkuY3J0Yy0+ZGV2KTsNCj4gPj4gPiAgCXVuc2lnbmVkIGRvdGNs
b2NrID0gcGlwZV9jb25maWctPnBvcnRfY2xvY2s7DQo+ID4+ID4gIAlzdHJ1Y3QgZHBsbCAqY2xv
Y2sgPSAmcGlwZV9jb25maWctPmRwbGw7DQo+ID4+ID4NCj4gPj4gPiBAQCAtMTI1Nyw3ICsxMjYz
LDggQEAgc3RhdGljIHZvaWQgaTl4eF9hZGp1c3Rfc2R2b190dl9jbG9jayhzdHJ1Y3QNCj4gPj4g
aW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcpDQo+ID4+ID4gIAkJY2xvY2stPm0xID0gMTI7
DQo+ID4+ID4gIAkJY2xvY2stPm0yID0gODsNCj4gPj4gPiAgCX0gZWxzZSB7DQo+ID4+ID4gLQkJ
V0FSTigxLCAiU0RWTyBUViBjbG9jayBvdXQgb2YgcmFuZ2U6ICVpXG4iLCBkb3RjbG9jayk7DQo+
ID4+ID4gKwkJZHJtX1dBUk4oJmRldl9wcml2LT5kcm0sIDEsDQo+ID4+ID4gKwkJCSAiU0RWTyBU
ViBjbG9jayBvdXQgb2YgcmFuZ2U6ICVpXG4iLCBkb3RjbG9jayk7DQo+ID4+ID4gIAl9DQo+ID4+
ID4NCj4gPj4gPiAgCXBpcGVfY29uZmlnLT5jbG9ja19zZXQgPSB0cnVlOw0KPiA+PiA+IEBAIC0y
MjkzLDcgKzIzMDAsNyBAQA0KPiA+PiA+IGludGVsX3Nkdm9fY29ubmVjdG9yX2F0b21pY19nZXRf
cHJvcGVydHkoc3RydWN0DQo+ID4+IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwNCj4gPj4gPiAg
CQkJCXJldHVybiAwOw0KPiA+PiA+ICAJCQl9DQo+ID4+ID4NCj4gPj4gPiAtCQlXQVJOX09OKDEp
Ow0KPiA+PiA+ICsJCWRybV9XQVJOX09OKGNvbm5lY3Rvci0+ZGV2LCAxKTsNCj4gPj4gPiAgCQkq
dmFsID0gMDsNCj4gPj4gPiAgCX0gZWxzZSBpZiAocHJvcGVydHkgPT0gaW50ZWxfc2R2b19jb25u
ZWN0b3ItPnRvcCB8fA0KPiA+PiA+ICAJCSAgIHByb3BlcnR5ID09IGludGVsX3Nkdm9fY29ubmVj
dG9yLT5ib3R0b20pDQo+ID4+DQo+ID4+IC0tDQo+ID4+IEphbmkgTmlrdWxhLCBJbnRlbCBPcGVu
IFNvdXJjZSBHcmFwaGljcyBDZW50ZXINCj4gDQo+IC0tDQo+IEphbmkgTmlrdWxhLCBJbnRlbCBP
cGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXINCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
