Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89135A37D4
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 15:36:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F7036E340;
	Fri, 30 Aug 2019 13:36:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27CDA6E340
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 13:36:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 06:36:01 -0700
X-IronPort-AV: E=Sophos;i="5.64,447,1559545200"; d="scan'208";a="186299254"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 06:35:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190830124533.26573-3-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190830124533.26573-1-animesh.manna@intel.com>
 <20190830124533.26573-3-animesh.manna@intel.com>
Date: Fri, 30 Aug 2019 16:35:55 +0300
Message-ID: <875zme6ais.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 02/10] drm/i915/dsb: DSB context creation.
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAzMCBBdWcgMjAxOSwgQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5j
b20+IHdyb3RlOgo+IFRoaXMgcGF0Y2ggYWRkcyBhIGZ1bmN0aW9uLCB3aGljaCB3aWxsIGludGVy
bmFsbHkgZ2V0IHRoZSBnZW0gYnVmZmVyCj4gZm9yIERTQiBlbmdpbmUuIFRoZSBHRU0gYnVmZmVy
IGlzIGZyb20gZ2xvYmFsIEdUVCwgYW5kIGlzIG1hcHBlZCBpbnRvCj4gQ1BVIGRvbWFpbiwgY29u
dGFpbnMgdGhlIGRhdGEgKyBvcGNvZGUgdG8gYmUgZmVlZCB0byBEU0IgZW5naW5lLgo+Cj4gdjE6
IEluaXRpYWwgdmVyc2lvbi4KPgo+IHYyOgo+IC0gcmVtb3ZlZCBzb21lIHVud2FudGVkIGNvZGUu
IChDaHJpcykKPiAtIFVzZWQgaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRlcm5hbCBpbnN0ZWFk
IG9mIF9zaG1lbS4gKENocmlzKQo+IC0gY21kX2J1Zl90YWlsIHJlbW92ZWQgYW5kIGNhbiBiZSBk
ZXJpdmVkIHRocm91Z2ggdm1hIG9iamVjdC4gKENocmlzKQo+Cj4gdjM6IHZtYSByZWFsZWFzZWQg
aWYgaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAoKSBmYWlsZWQuIChTaGFzaGFuaykKPgo+IENjOiBJ
bXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Cj4gQ2M6IE1pY2hlbCBUaGllcnJ5IDxtaWNo
ZWwudGhpZXJyeUBpbnRlbC5jb20+Cj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+Cj4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiBTaWdu
ZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4KPiAtLS0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAgICAgICAgIHwgIDEgKwo+
ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgMyArCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgICAgICB8IDgzICsrKysr
KysrKysrKysrKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2Iu
aCAgICAgIHwgMzEgKysrKysrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAg
ICAgICAgICAgICAgfCAgMSArCj4gIDUgZmlsZXMgY2hhbmdlZCwgMTE5IGluc2VydGlvbnMoKykK
PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHNiLmMKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHNiLmgKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmls
ZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCj4gaW5kZXggNjU4YjkzMGQzNGE4Li42
MzEzZTdiNGJkNzggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQo+IEBAIC0xNzIsNiArMTcyLDcg
QEAgaTkxNS15ICs9IFwKPiAgCWRpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5vIFwKPiAgCWRp
c3BsYXkvaW50ZWxfZHBpb19waHkubyBcCj4gIAlkaXNwbGF5L2ludGVsX2RwbGxfbWdyLm8gXAo+
ICsJZGlzcGxheS9pbnRlbF9kc2IubyBcCj4gIAlkaXNwbGF5L2ludGVsX2ZiYy5vIFwKPiAgCWRp
c3BsYXkvaW50ZWxfZmlmb191bmRlcnJ1bi5vIFwKPiAgCWRpc3BsYXkvaW50ZWxfZnJvbnRidWZm
ZXIubyBcCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmgKPiBpbmRleCA2MTI3N2E4N2RiZTcuLmRhMzY4NjcxODljYiAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5o
Cj4gQEAgLTEwMzMsNiArMTAzMyw5IEBAIHN0cnVjdCBpbnRlbF9jcnRjIHsKPiAgCj4gIAkvKiBz
Y2FsZXJzIGF2YWlsYWJsZSBvbiB0aGlzIGNydGMgKi8KPiAgCWludCBudW1fc2NhbGVyczsKPiAr
Cj4gKwkvKiBwZXIgcGlwZSBEU0IgcmVsYXRlZCBpbmZvICovCj4gKwlzdHJ1Y3QgaW50ZWxfZHNi
IGRzYltNQVhfRFNCX1BFUl9QSVBFXTsKPiAgfTsKPiAgCj4gIHN0cnVjdCBpbnRlbF9wbGFuZSB7
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCj4gbmV3IGZpbGUgbW9k
ZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLjAwN2VmMTM0ODFkNQo+IC0tLSAvZGV2L251
bGwKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCj4gQEAg
LTAsMCArMSw4MyBAQAo+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCj4gKy8qCj4g
KyAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCj4gKyAqCj4gKyAqLwo+ICsK
PiArI2luY2x1ZGUgImk5MTVfZHJ2LmgiCj4gKyNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVz
LmgiCj4gKwo+ICsjZGVmaW5lIERTQl9CVUZfU0laRSAgICAoMiAqIFBBR0VfU0laRSkKPiArCj4g
K3N0cnVjdCBpbnRlbF9kc2IgKgo+ICtpbnRlbF9kc2JfZ2V0KHN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjKQo+ICt7Cj4gKwlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gY3J0Yy0+YmFzZS5kZXY7Cj4g
KwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGV2KTsKPiArCXN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Cj4gKwlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKPiAr
CXN0cnVjdCBpbnRlbF9kc2IgKmRzYjsKPiArCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOwo+ICsJ
aW50IGk7Cj4gKwo+ICsJZm9yIChpID0gMDsgaSA8IE1BWF9EU0JfUEVSX1BJUEU7IGkrKykKPiAr
CQlpZiAoIWNydGMtPmRzYltpXS5jbWRfYnVmKQo+ICsJCQlicmVhazsKPiArCj4gKwlpZiAoV0FS
Tl9PTihpID09IE1BWF9EU0JfUEVSX1BJUEUpKQo+ICsJCXJldHVybiBOVUxMOwo+ICsKPiArCWRz
YiA9ICZjcnRjLT5kc2JbaV07Cj4gKwlkc2ItPmlkID0gaTsKPiArCWRzYi0+Y3J0YyA9IGNydGM7
Cj4gKwlpZiAoIUhBU19EU0IoaTkxNSkpCj4gKwkJcmV0dXJuIGRzYjsKCldoeSBkbyB5b3UgZ28g
dGhyb3VnaCBhbnkgb2YgdGhlIHRyb3VibGUgaWYgdGhlcmUgaXMgbm8gRFNCPyBKdXN0IGVhcmx5
CnJldHVybiBOVUxMLCBhbmQgbWFrZSB0aGUgd3JpdGUgZnVuY3Rpb25zIGhhbmRsZSBOVUxMIGRz
YiBwb2ludGVyLgoKPiArCj4gKwl3YWtlcmVmID0gaW50ZWxfcnVudGltZV9wbV9nZXQoJmk5MTUt
PnJ1bnRpbWVfcG0pOwo+ICsKPiArCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJu
YWwoaTkxNSwgRFNCX0JVRl9TSVpFKTsKPiArCWlmIChJU19FUlIob2JqKSkKPiArCQlnb3RvIGVy
cjsKPiArCj4gKwltdXRleF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiArCXZtYSA9
IGk5MTVfZ2VtX29iamVjdF9nZ3R0X3BpbihvYmosIE5VTEwsIDAsIDAsIFBJTl9NQVBQQUJMRSk7
Cj4gKwltdXRleF91bmxvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwo+ICsJaWYgKElTX0VS
Uih2bWEpKSB7Cj4gKwkJRFJNX0VSUk9SKCJWbWEgY3JlYXRpb24gZmFpbGVkLlxuIik7Cj4gKwkJ
aTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOwo+ICsJCWdvdG8gZXJyOwo+ICsJfQo+ICsKPiArCWRz
Yi0+Y21kX2J1ZiA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwKHZtYS0+b2JqLCBJOTE1X01BUF9X
Qyk7Cj4gKwlpZiAoSVNfRVJSKGRzYi0+Y21kX2J1ZikpIHsKPiArCQlEUk1fRVJST1IoIkNvbW1h
bmQgYnVmZmVyIGNyZWF0aW9uIGZhaWxlZC5cbiIpOwo+ICsJCWk5MTVfdm1hX3VucGluX2FuZF9y
ZWxlYXNlKCZ2bWEsIDApOwo+ICsJCWRzYi0+Y21kX2J1ZiA9IE5VTEw7Cj4gKwkJZ290byBlcnI7
Cj4gKwl9Cj4gKwlkc2ItPnZtYSA9IHZtYTsKPiArCj4gK2VycjoKPiArCWludGVsX3J1bnRpbWVf
cG1fcHV0KCZpOTE1LT5ydW50aW1lX3BtLCB3YWtlcmVmKTsKPiArCXJldHVybiBkc2I7Cj4gK30K
PiArCj4gK3ZvaWQgaW50ZWxfZHNiX3B1dChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpCj4gK3sKPiAr
CXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOwo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTU7Cj4gKwo+ICsJaWYgKCFkc2IpCj4gKwkJcmV0dXJuOwo+ICsKPiArCWNydGMgPSBkc2ItPmNy
dGM7Cj4gKwlpOTE1ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7Cj4gKwo+ICsJaWYgKGRzYi0+
Y21kX2J1Zikgewo+ICsJCW11dGV4X2xvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwo+ICsJ
CWk5MTVfZ2VtX29iamVjdF91bnBpbl9tYXAoZHNiLT52bWEtPm9iaik7Cj4gKwkJaTkxNV92bWFf
dW5waW5fYW5kX3JlbGVhc2UoJmRzYi0+dm1hLCAwKTsKPiArCQlkc2ItPmNtZF9idWYgPSBOVUxM
Owo+ICsJCW11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4gKwl9Cj4gK30K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgKPiBuZXcgZmlsZSBtb2Rl
IDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uNGE0MDkxY2FkYzFlCj4gLS0tIC9kZXYvbnVs
bAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgKPiBAQCAt
MCwwICsxLDMxIEBACj4gKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKPiArICoKPiAr
ICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24KPiArICovCj4gKwo+ICsjaWZu
ZGVmIF9JTlRFTF9EU0JfSAo+ICsjZGVmaW5lIF9JTlRFTF9EU0JfSAo+ICsKPiArc3RydWN0IGlu
dGVsX2NydGM7Cj4gK3N0cnVjdCBpOTE1X3ZtYTsKPiArCj4gK2VudW0gZHNiX2lkIHsKPiArCUlO
VkFMSURfRFNCID0gLTEsCj4gKwlEU0IxLAo+ICsJRFNCMiwKPiArCURTQjMsCj4gKwlNQVhfRFNC
X1BFUl9QSVBFCj4gK307Cj4gKwo+ICtzdHJ1Y3QgaW50ZWxfZHNiIHsKPiArCXN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjOwo+ICsJZW51bSBkc2JfaWQgaWQ7Cj4gKwl1MzIgKmNtZF9idWY7Cj4gKwlz
dHJ1Y3QgaTkxNV92bWEgKnZtYTsKPiArfTsKPiArCj4gK3N0cnVjdCBpbnRlbF9kc2IgKgo+ICtp
bnRlbF9kc2JfZ2V0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsKPiArdm9pZCBpbnRlbF9kc2Jf
cHV0KHN0cnVjdCBpbnRlbF9kc2IgKmRzYik7Cj4gKwo+ICsjZW5kaWYKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmgKPiBpbmRleCA4MDRiZmU3YWVjMmIuLjdhYTExZTNkZDQxMyAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaAo+IEBAIC02Nyw2ICs2Nyw3IEBACj4gICNpbmNsdWRlICJkaXNwbGF5
L2ludGVsX2Rpc3BsYXkuaCIKPiAgI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dl
ci5oIgo+ICAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9kcGxsX21nci5oIgo+ICsjaW5jbHVkZSAi
ZGlzcGxheS9pbnRlbF9kc2IuaCIKPiAgI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZnJvbnRidWZm
ZXIuaCIKPiAgI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZ21idXMuaCIKPiAgI2luY2x1ZGUgImRp
c3BsYXkvaW50ZWxfb3ByZWdpb24uaCIKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3Vy
Y2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
