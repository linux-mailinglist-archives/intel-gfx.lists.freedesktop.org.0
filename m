Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FAABD7E9
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 07:49:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24B436EB26;
	Wed, 25 Sep 2019 05:49:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F64A6EB26
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 05:49:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 22:49:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,546,1559545200"; d="scan'208";a="193664023"
Received: from irsmsx152.ger.corp.intel.com ([163.33.192.66])
 by orsmga006.jf.intel.com with ESMTP; 24 Sep 2019 22:49:02 -0700
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.184]) by
 IRSMSX152.ger.corp.intel.com ([169.254.6.150]) with mapi id 14.03.0439.000;
 Wed, 25 Sep 2019 06:49:01 +0100
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] Revert "drm/i915/color: Extract
 icl_read_luts()"
Thread-Index: AQHVcuGHixFBZqCWhkCbwDszhpnaAac747JA
Date: Wed, 25 Sep 2019 05:49:01 +0000
Message-ID: <43D4F724E12AB6478FC1572B3FBE89D07692E53B@IRSMSX106.ger.corp.intel.com>
References: <20190924135820.11850-1-swati2.sharma@intel.com>
In-Reply-To: <20190924135820.11850-1-swati2.sharma@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTY3OWU4ZDYtYWUzZC00YmMxLTk2MWUtYzA0ODk2NjIwNzg1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiQVF5S3I5NHFOdGdCY2hZOUd6VFZvTTB4QkZJUWxqcHlFTXRcLzlTNGl3bHJaSWhjRG1hTnFDRzArUjM2bUk1R3gifQ==
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915/color: Extract
 icl_read_luts()"
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
 "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>, "Nautiyal,
 Ankit K" <ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksIA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8
aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgU3dh
dGkNCj4gU2hhcm1hDQo+IFNlbnQ6IHRpaXN0YWkgMjQuIHN5eXNrdXV0YSAyMDE5IDE2LjU4DQo+
IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEsIEphbmkg
PGphbmkubmlrdWxhQGludGVsLmNvbT47IGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g7IE5hdXRpeWFs
LCBBbmtpdCBLDQo+IDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT4NCj4gU3ViamVjdDogW0lu
dGVsLWdmeF0gW1BBVENIXSBSZXZlcnQgImRybS9pOTE1L2NvbG9yOiBFeHRyYWN0IGljbF9yZWFk
X2x1dHMoKSINCj4gDQo+IFRoaXMgcmV2ZXJ0cyBjb21taXQgODRhZjc2NDkxODgxOTRhNzRjZGQ2
NDM3MjM1YTVlM2M4NjEwOGYwZi4NCj4gDQo+IFRoaXMgaXMgY2F1c2luZyBwcm9ibGVtcyB3aXRo
IHRoZSBkaXNwbGF5LCBkaXNwbGF5cyBhcmUgYWxsIGJyaWdodCBjb2xvcnMuDQoNClRlc3RlZC1i
eTogSmFuaSBTYWFyaW5lbiA8amFuaS5zYWFyaW5lbkBpbnRlbC5jb20+DQpCdWd6aWxsYTogIGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTgwOQ0KDQo+IA0K
PiBTaWduZWQtb2ZmLWJ5OiBTd2F0aSBTaGFybWEgPHN3YXRpMi5zaGFybWFAaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyB8IDEy
NiArKystLS0tLS0tLS0tLS0tLS0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmggICAgICAgICAgICB8ICAgNiAtDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMo
KyksIDExNyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NvbG9yLmMNCj4gaW5kZXggNDAyMTUxMTI4ZTFmLi45YWIzNDkwMjY2M2UgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gQEAg
LTE0MjAsOSArMTQyMCw2IEBAIHN0YXRpYyBpbnQgaWNsX2NvbG9yX2NoZWNrKHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKQ0KPiANCj4gIHN0YXRpYyBpbnQgaTl4eF9nYW1t
YV9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpICB7
DQo+IC0JaWYgKCFjcnRjX3N0YXRlLT5nYW1tYV9lbmFibGUpDQo+IC0JCXJldHVybiAwOw0KPiAt
DQo+ICAJc3dpdGNoIChjcnRjX3N0YXRlLT5nYW1tYV9tb2RlKSB7DQo+ICAJY2FzZSBHQU1NQV9N
T0RFX01PREVfOEJJVDoNCj4gIAkJcmV0dXJuIDg7DQo+IEBAIC0xNDM2LDkgKzE0MzMsNiBAQCBz
dGF0aWMgaW50IGk5eHhfZ2FtbWFfcHJlY2lzaW9uKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKQ0KPiANCj4gIHN0YXRpYyBpbnQgaWxrX2dhbW1hX3ByZWNpc2lv
bihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgIHsNCj4gLQlpZiAo
IWNydGNfc3RhdGUtPmdhbW1hX2VuYWJsZSkNCj4gLQkJcmV0dXJuIDA7DQo+IC0NCj4gIAlpZiAo
KGNydGNfc3RhdGUtPmNzY19tb2RlICYgQ1NDX1BPU0lUSU9OX0JFRk9SRV9HQU1NQSkgPT0gMCkN
Cj4gIAkJcmV0dXJuIDA7DQo+IA0KPiBAQCAtMTQ1NSw5ICsxNDQ5LDYgQEAgc3RhdGljIGludCBp
bGtfZ2FtbWFfcHJlY2lzaW9uKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlKQ0KPiANCj4gIHN0YXRpYyBpbnQgY2h2X2dhbW1hX3ByZWNpc2lvbihjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgIHsNCj4gLQlpZiAoIWNydGNfc3RhdGUt
PmdhbW1hX2VuYWJsZSkNCj4gLQkJcmV0dXJuIDA7DQo+IC0NCj4gIAlpZiAoY3J0Y19zdGF0ZS0+
Y2dtX21vZGUgJiBDR01fUElQRV9NT0RFX0dBTU1BKQ0KPiAgCQlyZXR1cm4gMTA7DQo+ICAJZWxz
ZQ0KPiBAQCAtMTQ2Niw5ICsxNDU3LDYgQEAgc3RhdGljIGludCBjaHZfZ2FtbWFfcHJlY2lzaW9u
KGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiANCj4gIHN0
YXRpYyBpbnQgZ2xrX2dhbW1hX3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkgIHsNCj4gLQlpZiAoIWNydGNfc3RhdGUtPmdhbW1hX2VuYWJsZSkNCj4g
LQkJcmV0dXJuIDA7DQo+IC0NCj4gIAlzd2l0Y2ggKGNydGNfc3RhdGUtPmdhbW1hX21vZGUpIHsN
Cj4gIAljYXNlIEdBTU1BX01PREVfTU9ERV84QklUOg0KPiAgCQlyZXR1cm4gODsNCj4gQEAgLTE0
ODAsMzkgKzE0NjgsMjEgQEAgc3RhdGljIGludCBnbGtfZ2FtbWFfcHJlY2lzaW9uKGNvbnN0IHN0
cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiAgCX0NCj4gIH0NCj4gDQo+
IC1zdGF0aWMgaW50IGljbF9nYW1tYV9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUpIC17DQo+IC0JaWYgKChjcnRjX3N0YXRlLT5nYW1tYV9tb2RlICYg
UE9TVF9DU0NfR0FNTUFfRU5BQkxFKSA9PSAwKQ0KPiAtCQlyZXR1cm4gMDsNCj4gLQ0KPiAtCXN3
aXRjaCAoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSAmIEdBTU1BX01PREVfTU9ERV9NQVNLKSB7DQo+
IC0JY2FzZSBHQU1NQV9NT0RFX01PREVfOEJJVDoNCj4gLQkJcmV0dXJuIDg7DQo+IC0JY2FzZSBH
QU1NQV9NT0RFX01PREVfMTBCSVQ6DQo+IC0JCXJldHVybiAxMDsNCj4gLQljYXNlIEdBTU1BX01P
REVfTU9ERV8xMkJJVF9NVUxUSV9TRUdNRU5URUQ6DQo+IC0JCXJldHVybiAxNjsNCj4gLQlkZWZh
dWx0Og0KPiAtCQlNSVNTSU5HX0NBU0UoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSk7DQo+IC0JCXJl
dHVybiAwOw0KPiAtCX0NCj4gLQ0KPiAtfQ0KPiAtDQo+ICBpbnQgaW50ZWxfY29sb3JfZ2V0X2dh
bW1hX2JpdF9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUpDQo+IHsNCj4gIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0
Y19zdGF0ZS0+YmFzZS5jcnRjKTsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsNCj4gDQo+ICsJaWYgKCFjcnRjX3N0YXRlLT5n
YW1tYV9lbmFibGUpDQo+ICsJCXJldHVybiAwOw0KPiArDQo+ICAJaWYgKEhBU19HTUNIKGRldl9w
cml2KSkgew0KPiAgCQlpZiAoSVNfQ0hFUlJZVklFVyhkZXZfcHJpdikpDQo+ICAJCQlyZXR1cm4N
Cj4gY2h2X2dhbW1hX3ByZWNpc2lvbihjcnRjX3N0YXRlKTsNCj4gIAkJZWxzZQ0KPiAgCQkJcmV0
dXJuDQo+IGk5eHhfZ2FtbWFfcHJlY2lzaW9uKGNydGNfc3RhdGUpOw0KPiAgCX0gZWxzZSB7DQo+
IC0JCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQ0KPiAtCQkJcmV0dXJuDQo+IGljbF9n
YW1tYV9wcmVjaXNpb24oY3J0Y19zdGF0ZSk7DQo+IC0JCWVsc2UgaWYgKElTX0NBTk5PTkxBS0Uo
ZGV2X3ByaXYpIHx8DQo+IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKQ0KPiArCQlpZiAoSVNfQ0FO
Tk9OTEFLRShkZXZfcHJpdikgfHwNCj4gSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpDQo+ICAJCQly
ZXR1cm4NCj4gZ2xrX2dhbW1hX3ByZWNpc2lvbihjcnRjX3N0YXRlKTsNCj4gIAkJZWxzZSBpZiAo
SVNfSVJPTkxBS0UoZGV2X3ByaXYpKQ0KPiAgCQkJcmV0dXJuDQo+IGlsa19nYW1tYV9wcmVjaXNp
b24oY3J0Y19zdGF0ZSk7IEBAIC0xNTQzLDIwICsxNTEzLDYgQEAgc3RhdGljIGJvb2wNCj4gaW50
ZWxfY29sb3JfbHV0X2VudHJ5X2VxdWFsKHN0cnVjdCBkcm1fY29sb3JfbHV0ICpsdXQxLA0KPiAg
CXJldHVybiB0cnVlOw0KPiAgfQ0KPiANCj4gLXN0YXRpYyBib29sIGludGVsX2NvbG9yX2x1dF9l
bnRyeV9tdWx0aV9lcXVhbChzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAqbHV0MSwNCj4gLQkJCQkJICAg
ICAgc3RydWN0DQo+IGRybV9jb2xvcl9sdXQgKmx1dDIsDQo+IC0JCQkJCSAgICAgIGludA0KPiBs
dXRfc2l6ZSwgdTMyIGVycikNCj4gLXsNCj4gLQlpbnQgaTsNCj4gLQ0KPiAtCWZvciAoaSA9IDA7
IGkgPCA5OyBpKyspIHsNCj4gLQkJaWYgKCFlcnJfY2hlY2soJmx1dDFbaV0sICZsdXQyW2ldLCBl
cnIpKQ0KPiAtCQkJcmV0dXJuIGZhbHNlOw0KPiAtCX0NCj4gLQ0KPiAtCXJldHVybiB0cnVlOw0K
PiAtfQ0KPiAtDQo+ICBib29sIGludGVsX2NvbG9yX2x1dF9lcXVhbChzdHJ1Y3QgZHJtX3Byb3Bl
cnR5X2Jsb2IgKmJsb2IxLA0KPiAgCQkJICAgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpibG9i
MiwNCj4gIAkJCSAgIHUzMiBnYW1tYV9tb2RlLCB1MzIgYml0X3ByZWNpc2lvbikNCj4gQEAgLTE1
NzUsOCArMTUzMSwxNiBAQCBib29sIGludGVsX2NvbG9yX2x1dF9lcXVhbChzdHJ1Y3QgZHJtX3By
b3BlcnR5X2Jsb2INCj4gKmJsb2IxLA0KPiAgCWx1dF9zaXplMiA9IGRybV9jb2xvcl9sdXRfc2l6
ZShibG9iMik7DQo+IA0KPiAgCS8qIGNoZWNrIHN3IGFuZCBodyBsdXQgc2l6ZSAqLw0KPiAtCWlm
IChsdXRfc2l6ZTEgIT0gbHV0X3NpemUyKQ0KPiAtCQlyZXR1cm4gZmFsc2U7DQo+ICsJc3dpdGNo
IChnYW1tYV9tb2RlKSB7DQo+ICsJY2FzZSBHQU1NQV9NT0RFX01PREVfOEJJVDoNCj4gKwljYXNl
IEdBTU1BX01PREVfTU9ERV8xMEJJVDoNCj4gKwkJaWYgKGx1dF9zaXplMSAhPSBsdXRfc2l6ZTIp
DQo+ICsJCQlyZXR1cm4gZmFsc2U7DQo+ICsJCWJyZWFrOw0KPiArCWRlZmF1bHQ6DQo+ICsJCU1J
U1NJTkdfQ0FTRShnYW1tYV9tb2RlKTsNCj4gKwkJCXJldHVybiBmYWxzZTsNCj4gKwl9DQo+IA0K
PiAgCWx1dDEgPSBibG9iMS0+ZGF0YTsNCj4gIAlsdXQyID0gYmxvYjItPmRhdGE7DQo+IEBAIC0x
NTg0LDE4ICsxNTQ4LDEzIEBAIGJvb2wgaW50ZWxfY29sb3JfbHV0X2VxdWFsKHN0cnVjdCBkcm1f
cHJvcGVydHlfYmxvYg0KPiAqYmxvYjEsDQo+ICAJZXJyID0gMHhmZmZmID4+IGJpdF9wcmVjaXNp
b247DQo+IA0KPiAgCS8qIGNoZWNrIHN3IGFuZCBodyBsdXQgZW50cnkgdG8gYmUgZXF1YWwgKi8N
Cj4gLQlzd2l0Y2ggKGdhbW1hX21vZGUgJiBHQU1NQV9NT0RFX01PREVfTUFTSykgew0KPiArCXN3
aXRjaCAoZ2FtbWFfbW9kZSkgew0KPiAgCWNhc2UgR0FNTUFfTU9ERV9NT0RFXzhCSVQ6DQo+ICAJ
Y2FzZSBHQU1NQV9NT0RFX01PREVfMTBCSVQ6DQo+ICAJCWlmICghaW50ZWxfY29sb3JfbHV0X2Vu
dHJ5X2VxdWFsKGx1dDEsIGx1dDIsDQo+IA0KPiAJIGx1dF9zaXplMiwgZXJyKSkNCj4gIAkJCXJl
dHVybiBmYWxzZTsNCj4gIAkJYnJlYWs7DQo+IC0JY2FzZSBHQU1NQV9NT0RFX01PREVfMTJCSVRf
TVVMVElfU0VHTUVOVEVEOg0KPiAtCQlpZiAoIWludGVsX2NvbG9yX2x1dF9lbnRyeV9tdWx0aV9l
cXVhbChsdXQxLCBsdXQyLA0KPiAtDQo+IAkgICAgICAgbHV0X3NpemUyLCBlcnIpKQ0KPiAtCQkJ
cmV0dXJuIGZhbHNlOw0KPiAtCQlicmVhazsNCj4gIAlkZWZhdWx0Og0KPiAgCQlNSVNTSU5HX0NB
U0UoZ2FtbWFfbW9kZSk7DQo+ICAJCQlyZXR1cm4gZmFsc2U7DQo+IEBAIC0xODM1LDYwICsxNzk0
LDYgQEAgc3RhdGljIHZvaWQgZ2xrX3JlYWRfbHV0cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0K
PiAqY3J0Y19zdGF0ZSkNCj4gIAkJY3J0Y19zdGF0ZS0+YmFzZS5nYW1tYV9sdXQgPQ0KPiBnbGtf
cmVhZF9sdXRfMTAoY3J0Y19zdGF0ZSwgUEFMX1BSRUNfSU5ERVhfVkFMVUUoMCkpOyAgfQ0KPiAN
Cj4gLXN0YXRpYyBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKg0KPiAtaWNsX3JlYWRfbHV0X211
bHRpX3NlZ21lbnQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpIC17
DQo+IC0Jc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUt
PmJhc2UuY3J0Yyk7DQo+IC0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9f
aTkxNShjcnRjLT5iYXNlLmRldik7DQo+IC0JaW50IGx1dF9zaXplID0gSU5URUxfSU5GTyhkZXZf
cHJpdiktPmNvbG9yLmdhbW1hX2x1dF9zaXplOw0KPiAtCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+
cGlwZTsNCj4gLQlzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmJsb2I7DQo+IC0Jc3RydWN0IGRy
bV9jb2xvcl9sdXQgKmJsb2JfZGF0YTsNCj4gLQl1MzIgaSwgdmFsMSwgdmFsMjsNCj4gLQ0KPiAt
CWJsb2IgPSBkcm1fcHJvcGVydHlfY3JlYXRlX2Jsb2IoJmRldl9wcml2LT5kcm0sDQo+IC0NCj4g
CXNpemVvZihzdHJ1Y3QgZHJtX2NvbG9yX2x1dCkgKiBsdXRfc2l6ZSwNCj4gLQkJCQkJTlVMTCk7
DQo+IC0JaWYgKElTX0VSUihibG9iKSkNCj4gLQkJcmV0dXJuIE5VTEw7DQo+IC0NCj4gLQlibG9i
X2RhdGEgPSBibG9iLT5kYXRhOw0KPiAtDQo+IC0JSTkxNV9XUklURShQUkVDX1BBTF9NVUxUSV9T
RUdfSU5ERVgocGlwZSksDQo+IFBBTF9QUkVDX0FVVE9fSU5DUkVNRU5UKTsNCj4gLQ0KPiAtCWZv
ciAoaSA9IDA7IGkgPCA5OyBpKyspIHsNCj4gLQkJdmFsMSA9DQo+IEk5MTVfUkVBRChQUkVDX1BB
TF9NVUxUSV9TRUdfREFUQShwaXBlKSk7DQo+IC0JCXZhbDIgPQ0KPiBJOTE1X1JFQUQoUFJFQ19Q
QUxfTVVMVElfU0VHX0RBVEEocGlwZSkpOw0KPiAtDQo+IC0JCWJsb2JfZGF0YVtpXS5yZWQgPQ0K
PiBSRUdfRklFTERfR0VUKFBBTF9QUkVDX01VTFRJX1NFR19SRURfVURXX01BU0ssIHZhbDIpIDw8
IDYgfA0KPiAtDQo+IFJFR19GSUVMRF9HRVQoUEFMX1BSRUNfTVVMVElfU0VHX1JFRF9MRFdfTUFT
SywgdmFsMSk7DQo+IC0JCWJsb2JfZGF0YVtpXS5ncmVlbiA9DQo+IFJFR19GSUVMRF9HRVQoUEFM
X1BSRUNfTVVMVElfU0VHX0dSRUVOX1VEV19NQVNLLCB2YWwyKSA8PCA2IHwNCj4gLQ0KPiBSRUdf
RklFTERfR0VUKFBBTF9QUkVDX01VTFRJX1NFR19HUkVFTl9MRFdfTUFTSywgdmFsMSk7DQo+IC0J
CWJsb2JfZGF0YVtpXS5ibHVlID0NCj4gUkVHX0ZJRUxEX0dFVChQQUxfUFJFQ19NVUxUSV9TRUdf
QkxVRV9VRFdfTUFTSywgdmFsMikgPDwgNiB8DQo+IC0NCj4gUkVHX0ZJRUxEX0dFVChQQUxfUFJF
Q19NVUxUSV9TRUdfQkxVRV9MRFdfTUFTSywgdmFsMSk7DQo+IC0JfQ0KPiAtDQo+IC0JLyoNCj4g
LQkgKiBGSVhNRSByZWFkb3V0cyBmcm9tIFBBTF9QUkVDX0RBVEEgcmVnaXN0ZXIgYXJlbid0IGdp
dmluZyBjb3JyZWN0DQo+IHZhbHVlcw0KPiAtCSAqIGluIHRoZSBjYXNlIG9mIGZpbmUgYW5kIGNv
YXJzZSBzZWdtZW50cy4gUmVzdHJpY3RpbmcgcmVhZG91dHMgb25seQ0KPiBmb3INCj4gLQkgKiBz
dXBlciBmaW5lIHNlZ21lbnQgYXMgb2Ygbm93Lg0KPiAtCSAqLw0KPiAtDQo+IC0JcmV0dXJuIGJs
b2I7DQo+IC19DQo+IC0NCj4gLXN0YXRpYyB2b2lkIGljbF9yZWFkX2x1dHMoc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpIC17DQo+IC0JaWYgKChjcnRjX3N0YXRlLT5nYW1tYV9t
b2RlICYgR0FNTUFfTU9ERV9NT0RFX01BU0spID09DQo+IC0JICAgIEdBTU1BX01PREVfTU9ERV84
QklUKQ0KPiAtCQljcnRjX3N0YXRlLT5iYXNlLmdhbW1hX2x1dCA9DQo+IGk5eHhfcmVhZF9sdXRf
OChjcnRjX3N0YXRlKTsNCj4gLQllbHNlIGlmICgoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSAmIEdB
TU1BX01PREVfTU9ERV9NQVNLKQ0KPiA9PQ0KPiAtCQkgR0FNTUFfTU9ERV9NT0RFXzEyQklUX01V
TFRJX1NFR01FTlRFRCkNCj4gLQkJY3J0Y19zdGF0ZS0+YmFzZS5nYW1tYV9sdXQgPQ0KPiBpY2xf
cmVhZF9sdXRfbXVsdGlfc2VnbWVudChjcnRjX3N0YXRlKTsNCj4gLQllbHNlDQo+IC0JCWNydGNf
c3RhdGUtPmJhc2UuZ2FtbWFfbHV0ID0NCj4gZ2xrX3JlYWRfbHV0XzEwKGNydGNfc3RhdGUsIFBB
TF9QUkVDX0lOREVYX1ZBTFVFKDApKTsNCj4gLX0NCj4gLQ0KPiAgdm9pZCBpbnRlbF9jb2xvcl9p
bml0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKSAgew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOyBAQCAtDQo+IDE5MzIsNyAr
MTgzNyw2IEBAIHZvaWQgaW50ZWxfY29sb3JfaW5pdChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykN
Cj4gDQo+ICAJCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKSB7DQo+ICAJCQlkZXZfcHJp
di0+ZGlzcGxheS5sb2FkX2x1dHMgPQ0KPiBpY2xfbG9hZF9sdXRzOw0KPiAtCQkJZGV2X3ByaXYt
PmRpc3BsYXkucmVhZF9sdXRzID0NCj4gaWNsX3JlYWRfbHV0czsNCj4gIAkJfSBlbHNlIGlmIChJ
U19DQU5OT05MQUtFKGRldl9wcml2KSB8fA0KPiBJU19HRU1JTklMQUtFKGRldl9wcml2KSkgew0K
PiAgCQkJZGV2X3ByaXYtPmRpc3BsYXkubG9hZF9sdXRzID0NCj4gZ2xrX2xvYWRfbHV0czsNCj4g
IAkJCWRldl9wcml2LT5kaXNwbGF5LnJlYWRfbHV0cyA9DQo+IGdsa19yZWFkX2x1dHM7IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaCBpbmRleCBhNjljMTlhYWU1YmIuLjY2MWNiZTRjOTMzYSAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IEBAIC0xMDU3NCwxMiArMTA1NzQsNiBAQCBl
bnVtIHNrbF9wb3dlcl9nYXRlIHsNCj4gDQo+ICAjZGVmaW5lIF9QQUxfUFJFQ19NVUxUSV9TRUdf
REFUQV9BCTB4NEE0MEMNCj4gICNkZWZpbmUgX1BBTF9QUkVDX01VTFRJX1NFR19EQVRBX0IJMHg0
QUMwQw0KPiAtI2RlZmluZSAgUEFMX1BSRUNfTVVMVElfU0VHX1JFRF9MRFdfTUFTSyAgIFJFR19H
RU5NQVNLKDI5LCAyNCkNCj4gLSNkZWZpbmUgIFBBTF9QUkVDX01VTFRJX1NFR19SRURfVURXX01B
U0sgICBSRUdfR0VOTUFTSygyOSwgMjApDQo+IC0jZGVmaW5lICBQQUxfUFJFQ19NVUxUSV9TRUdf
R1JFRU5fTERXX01BU0sgUkVHX0dFTk1BU0soMTksIDE0KSAtDQo+ICNkZWZpbmUgIFBBTF9QUkVD
X01VTFRJX1NFR19HUkVFTl9VRFdfTUFTSyBSRUdfR0VOTUFTSygxOSwgMTApIC0NCj4gI2RlZmlu
ZSAgUEFMX1BSRUNfTVVMVElfU0VHX0JMVUVfTERXX01BU0sgIFJFR19HRU5NQVNLKDksIDQpIC0j
ZGVmaW5lDQo+IFBBTF9QUkVDX01VTFRJX1NFR19CTFVFX1VEV19NQVNLICBSRUdfR0VOTUFTSyg5
LCAwKQ0KPiANCj4gICNkZWZpbmUgUFJFQ19QQUxfTVVMVElfU0VHX0lOREVYKHBpcGUpCV9NTUlP
X1BJUEUocGlwZSwgXA0KPiANCj4gCV9QQUxfUFJFQ19NVUxUSV9TRUdfSU5ERVhfQSwgXA0KPiAt
LQ0KPiAyLjIzLjANCj4gDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fDQo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZw0KPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
