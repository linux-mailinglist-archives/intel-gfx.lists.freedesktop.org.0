Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF1540FEBC
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 19:39:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DFB36E02F;
	Fri, 17 Sep 2021 17:39:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 440846E02F
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 17:39:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10110"; a="222501555"
X-IronPort-AV: E=Sophos;i="5.85,302,1624345200"; d="scan'208";a="222501555"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 10:39:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,302,1624345200"; d="scan'208";a="699578706"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 17 Sep 2021 10:39:38 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 17 Sep 2021 10:39:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 17 Sep 2021 10:39:37 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Fri, 17 Sep 2021 10:39:37 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/2] drm/i915/xehp: Check new fuse bits for SFC
 availability
Thread-Index: AQHXq97GAcgo8CLXWEWeqLuFX+0EH6uo9SAA
Date: Fri, 17 Sep 2021 17:39:37 +0000
Message-ID: <613ce8b669009fb808d0df0663f4192de62cc626.camel@intel.com>
References: <20210917161203.812251-1-matthew.d.roper@intel.com>
 <20210917161203.812251-2-matthew.d.roper@intel.com>
In-Reply-To: <20210917161203.812251-2-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <D66318C31049474AB9922DE52B7C493A@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/xehp: Check new fuse bits for
 SFC availability
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIxLTA5LTE3IGF0IDA5OjEyIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBY
ZV9IUCBhZGRzIHNvbWUgbmV3IGJpdHMgdG8gdGhlIEZVU0UxIHJlZ2lzdGVyIHRvIGxldCB1cyBr
bm93IHdoZXRoZXIgYQ0KPiBnaXZlbiBTRkMgdW5pdCBpcyBwcmVzZW50LiAgV2Ugc2hvdWxkIHRh
a2UgdGhpcyBpbnRvIGFjY291bnQgd2hpbGUNCj4gaW5pdGlhbGl6aW5nIFNGQyBhdmFpbGFiaWxp
dHkgdG8gb3VyIFZDUyBhbmQgVkVDUyBlbmdpbmVzLg0KPiANCj4gV2hpbGUgd2UncmUgYXQgaXQs
IHVwZGF0ZSB0aGUgRlVTRTEgcmVnaXN0ZXIgZGVmaW5pdGlvbiB0byB1c2UNCj4gUkVHX0dFTk1B
U0sgLyBSRUdfRklFTERfR0VUIG5vdGF0aW9uLg0KPiANCj4gTm90ZSB0aGF0LCB0aGUgYnNwZWMg
Y29uZnVzaW5nbHkgbmFtZXMgdGhlIGZ1c2UgYml0cyAiZGlzYWJsZSIgZGVzcGl0ZQ0KPiB0aGUg
cmVnaXN0ZXIgcmVmbGVjdGluZyB0aGUgKmVuYWJsZSogc3RhdHVzIG9mIHRoZSBTRkMgdW5pdHMu
ICBUaGUNCj4gb3JpZ2luYWwgYXJjaGl0ZWN0dXJlIGRvY3VtZW50cyB3aGljaCB0aGUgYnNwZWMg
aXMgYmFzZWQgb24gZG8gcHJvcGVybHkNCj4gbmFtZSB0aGlzIGZpZWxkICJTRkNfRU5BQkxFLiIN
Cg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPg0KDQo+IA0KPiBCc3BlYzogNTI1NDMNCj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEg
PGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0
aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2VuZ2luZV9jcy5jIHwgMjUgKysrKysrKysrKysrKysrKysrLS0tLS0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmggIHwgIDMgKysrDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmMgICAgICB8ICA1ICsrLS0tDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICB8ICA0ICsrLS0NCj4gIDQgZmlsZXMg
Y2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYw0KPiBpbmRleCAzMzJlZmVhNjk2YTUu
LjA2ZGZlN2YzODk1MyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX2NzLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5n
aW5lX2NzLmMNCj4gQEAgLTM5OCw3ICszOTgsOCBAQCBzdGF0aWMgdm9pZCBfX3NldHVwX2VuZ2lu
ZV9jYXBhYmlsaXRpZXMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQ0KPiAgCQkJZW5n
aW5lLT51YWJpX2NhcGFiaWxpdGllcyB8PQ0KPiAgCQkJCUk5MTVfVklERU9fQU5EX0VOSEFOQ0Vf
Q0xBU1NfQ0FQQUJJTElUWV9TRkM7DQo+ICAJfSBlbHNlIGlmIChlbmdpbmUtPmNsYXNzID09IFZJ
REVPX0VOSEFOQ0VNRU5UX0NMQVNTKSB7DQo+IC0JCWlmIChHUkFQSElDU19WRVIoaTkxNSkgPj0g
OSkNCj4gKwkJaWYgKEdSQVBISUNTX1ZFUihpOTE1KSA+PSA5ICYmDQo+ICsJCSAgICBlbmdpbmUt
Pmd0LT5pbmZvLnNmY19tYXNrICYgQklUKGVuZ2luZS0+aW5zdGFuY2UpKQ0KPiAgCQkJZW5naW5l
LT51YWJpX2NhcGFiaWxpdGllcyB8PQ0KPiAgCQkJCUk5MTVfVklERU9fQU5EX0VOSEFOQ0VfQ0xB
U1NfQ0FQQUJJTElUWV9TRkM7DQo+ICAJfQ0KPiBAQCAtNDc0LDE4ICs0NzUsMjUgQEAgdm9pZCBp
bnRlbF9lbmdpbmVzX2ZyZWUoc3RydWN0IGludGVsX2d0ICpndCkNCj4gIH0NCj4gIA0KPiAgc3Rh
dGljDQo+IC1ib29sIGdlbjExX3ZkYm94X2hhc19zZmMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUsDQo+ICtib29sIGdlbjExX3ZkYm94X2hhc19zZmMoc3RydWN0IGludGVsX2d0ICpndCwN
Cj4gIAkJCSB1bnNpZ25lZCBpbnQgcGh5c2ljYWxfdmRib3gsDQo+ICAJCQkgdW5zaWduZWQgaW50
IGxvZ2ljYWxfdmRib3gsIHUxNiB2ZGJveF9tYXNrKQ0KPiAgew0KPiArCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1ID0gZ3QtPmk5MTU7DQo+ICsNCj4gIAkvKg0KPiAgCSAqIEluIEdlbjEx
LCBvbmx5IGV2ZW4gbnVtYmVyZWQgbG9naWNhbCBWREJPWGVzIGFyZSBob29rZWQNCj4gIAkgKiB1
cCB0byBhbiBTRkMgKFNjYWxlciAmIEZvcm1hdCBDb252ZXJ0ZXIpIHVuaXQuDQo+ICAJICogSW4g
R2VuMTIsIEV2ZW4gbnVtYmVyZWQgcGh5c2ljYWwgaW5zdGFuY2UgYWx3YXlzIGFyZSBjb25uZWN0
ZWQNCj4gIAkgKiB0byBhbiBTRkMuIE9kZCBudW1iZXJlZCBwaHlzaWNhbCBpbnN0YW5jZXMgaGF2
ZSBTRkMgb25seSBpZg0KPiAgCSAqIHByZXZpb3VzIGV2ZW4gaW5zdGFuY2UgaXMgZnVzZWQgb2Zm
Lg0KPiArCSAqDQo+ICsJICogU3RhcnRpbmcgd2l0aCBYZV9IUCwgdGhlcmUncyBhbHNvIGEgZGVk
aWNhdGVkIFNGQ19FTkFCTEUgZmllbGQNCj4gKwkgKiBpbiB0aGUgZnVzZSByZWdpc3RlciB0aGF0
IHRlbGxzIHVzIHdoZXRoZXIgYSBzcGVjaWZpYyBTRkMgaXMgcHJlc2VudC4NCj4gIAkgKi8NCj4g
LQlpZiAoR1JBUEhJQ1NfVkVSKGk5MTUpID09IDEyKQ0KPiArCWlmICgoZ3QtPmluZm8uc2ZjX21h
c2sgJiBCSVQocGh5c2ljYWxfdmRib3ggLyAyKSkgPT0gMCkNCj4gKwkJcmV0dXJuIGZhbHNlOw0K
PiArCWVsc2UgaWYgKEdSQVBISUNTX1ZFUihpOTE1KSA9PSAxMikNCj4gIAkJcmV0dXJuIChwaHlz
aWNhbF92ZGJveCAlIDIgPT0gMCkgfHwNCj4gIAkJCSEoQklUKHBoeXNpY2FsX3ZkYm94IC0gMSkg
JiB2ZGJveF9tYXNrKTsNCj4gIAllbHNlIGlmIChHUkFQSElDU19WRVIoaTkxNSkgPT0gMTEpDQo+
IEBAIC01MTIsNyArNTIwLDcgQEAgc3RhdGljIGludGVsX2VuZ2luZV9tYXNrX3QgaW5pdF9lbmdp
bmVfbWFzayhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQ0KPiAgCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVu
Y29yZSA9IGd0LT51bmNvcmU7DQo+ICAJdW5zaWduZWQgaW50IGxvZ2ljYWxfdmRib3ggPSAwOw0K
PiAgCXVuc2lnbmVkIGludCBpOw0KPiAtCXUzMiBtZWRpYV9mdXNlOw0KPiArCXUzMiBtZWRpYV9m
dXNlLCBmdXNlMTsNCj4gIAl1MTYgdmRib3hfbWFzazsNCj4gIAl1MTYgdmVib3hfbWFzazsNCj4g
IA0KPiBAQCAtNTM0LDYgKzU0MiwxMyBAQCBzdGF0aWMgaW50ZWxfZW5naW5lX21hc2tfdCBpbml0
X2VuZ2luZV9tYXNrKHN0cnVjdCBpbnRlbF9ndCAqZ3QpDQo+ICAJdmVib3hfbWFzayA9IChtZWRp
YV9mdXNlICYgR0VOMTFfR1RfVkVCT1hfRElTQUJMRV9NQVNLKSA+Pg0KPiAgCQkgICAgICBHRU4x
MV9HVF9WRUJPWF9ESVNBQkxFX1NISUZUOw0KPiAgDQo+ICsJaWYgKEdSQVBISUNTX1ZFUl9GVUxM
KGk5MTUpID49IElQX1ZFUigxMiwgNTApKSB7DQo+ICsJCWZ1c2UxID0gaW50ZWxfdW5jb3JlX3Jl
YWQodW5jb3JlLCBIU1dfUEFWUF9GVVNFMSk7DQo+ICsJCWd0LT5pbmZvLnNmY19tYXNrID0gUkVH
X0ZJRUxEX0dFVChYRUhQX1NGQ19FTkFCTEVfTUFTSywgZnVzZTEpOw0KPiArCX0gZWxzZSB7DQo+
ICsJCWd0LT5pbmZvLnNmY19tYXNrID0gfjA7DQo+ICsJfQ0KPiArDQo+ICAJZm9yIChpID0gMDsg
aSA8IEk5MTVfTUFYX1ZDUzsgaSsrKSB7DQo+ICAJCWlmICghSEFTX0VOR0lORShndCwgX1ZDUyhp
KSkpIHsNCj4gIAkJCXZkYm94X21hc2sgJj0gfkJJVChpKTsNCj4gQEAgLTU0Niw3ICs1NjEsNyBA
QCBzdGF0aWMgaW50ZWxfZW5naW5lX21hc2tfdCBpbml0X2VuZ2luZV9tYXNrKHN0cnVjdCBpbnRl
bF9ndCAqZ3QpDQo+ICAJCQljb250aW51ZTsNCj4gIAkJfQ0KPiAgDQo+IC0JCWlmIChnZW4xMV92
ZGJveF9oYXNfc2ZjKGk5MTUsIGksIGxvZ2ljYWxfdmRib3gsIHZkYm94X21hc2spKQ0KPiArCQlp
ZiAoZ2VuMTFfdmRib3hfaGFzX3NmYyhndCwgaSwgbG9naWNhbF92ZGJveCwgdmRib3hfbWFzaykp
DQo+ICAJCQlndC0+aW5mby52ZGJveF9zZmNfYWNjZXNzIHw9IEJJVChpKTsNCj4gIAkJbG9naWNh
bF92ZGJveCsrOw0KPiAgCX0NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2d0X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBl
cy5oDQo+IGluZGV4IDZmZGNkZTY0YzE4MC4uNDQ5MmRlN2Y3OWZkIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmgNCj4gQEAgLTE4NCw2ICsxODQsOSBAQCBz
dHJ1Y3QgaW50ZWxfZ3Qgew0KPiAgDQo+ICAJCXU4IG51bV9lbmdpbmVzOw0KPiAgDQo+ICsJCS8q
IEdlbmVyYWwgcHJlc2VuY2Ugb2YgU0ZDIHVuaXRzICovDQo+ICsJCXU4IHNmY19tYXNrOw0KPiAr
DQo+ICAJCS8qIE1lZGlhIGVuZ2luZSBhY2Nlc3MgdG8gU0ZDIHBlciBpbnN0YW5jZSAqLw0KPiAg
CQl1OCB2ZGJveF9zZmNfYWNjZXNzOw0KPiAgDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9zc2V1LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9z
c2V1LmMNCj4gaW5kZXggYjBlMDliNTgwMDVlLi5iZGYwOTA1MWI4YTAgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmMNCj4gQEAgLTUxNCwxMCArNTE0LDkgQEAgc3RhdGlj
IHZvaWQgaHN3X3NzZXVfaW5mb19pbml0KHN0cnVjdCBpbnRlbF9ndCAqZ3QpDQo+ICAJfQ0KPiAg
DQo+ICAJZnVzZTEgPSBpbnRlbF91bmNvcmVfcmVhZChndC0+dW5jb3JlLCBIU1dfUEFWUF9GVVNF
MSk7DQo+IC0Jc3dpdGNoICgoZnVzZTEgJiBIU1dfRjFfRVVfRElTX01BU0spID4+IEhTV19GMV9F
VV9ESVNfU0hJRlQpIHsNCj4gKwlzd2l0Y2ggKFJFR19GSUVMRF9HRVQoSFNXX0YxX0VVX0RJU19N
QVNLLCBmdXNlMSkpIHsNCj4gIAlkZWZhdWx0Og0KPiAtCQlNSVNTSU5HX0NBU0UoKGZ1c2UxICYg
SFNXX0YxX0VVX0RJU19NQVNLKSA+Pg0KPiAtCQkJICAgICBIU1dfRjFfRVVfRElTX1NISUZUKTsN
Cj4gKwkJTUlTU0lOR19DQVNFKFJFR19GSUVMRF9HRVQoSFNXX0YxX0VVX0RJU19NQVNLLCBmdXNl
MSkpOw0KPiAgCQlmYWxsdGhyb3VnaDsNCj4gIAljYXNlIEhTV19GMV9FVV9ESVNfMTBFVVM6DQo+
ICAJCXNzZXUtPmV1X3Blcl9zdWJzbGljZSA9IDEwOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgN
Cj4gaW5kZXggYzI4NTNjYzAwNWVlLi4yODA5MDJiZmEyY2UgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaA0KPiBAQCAtMzExMiw4ICszMTEyLDggQEAgc3RhdGljIGlubGluZSBib29sIGk5
MTVfbW1pb19yZWdfdmFsaWQoaTkxNV9yZWdfdCByZWcpDQo+ICANCj4gIC8qIEZ1c2UgcmVhZG91
dCByZWdpc3RlcnMgZm9yIEdUICovDQo+ICAjZGVmaW5lIEhTV19QQVZQX0ZVU0UxCQkJX01NSU8o
MHg5MTFDKQ0KPiAtI2RlZmluZSAgIEhTV19GMV9FVV9ESVNfU0hJRlQJCTE2DQo+IC0jZGVmaW5l
ICAgSFNXX0YxX0VVX0RJU19NQVNLCQkoMHgzIDw8IEhTV19GMV9FVV9ESVNfU0hJRlQpDQo+ICsj
ZGVmaW5lICAgWEVIUF9TRkNfRU5BQkxFX01BU0sJCVJFR19HRU5NQVNLKDI3LCAyNCkNCj4gKyNk
ZWZpbmUgICBIU1dfRjFfRVVfRElTX01BU0sJCVJFR19HRU5NQVNLKDE3LCAxNikNCj4gICNkZWZp
bmUgICBIU1dfRjFfRVVfRElTXzEwRVVTCQkwDQo+ICAjZGVmaW5lICAgSFNXX0YxX0VVX0RJU184
RVVTCQkxDQo+ICAjZGVmaW5lICAgSFNXX0YxX0VVX0RJU182RVVTCQkyDQoNCg==
