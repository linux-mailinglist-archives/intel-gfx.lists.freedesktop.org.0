Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 801451464A8
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 10:35:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2C906F9D3;
	Thu, 23 Jan 2020 09:35:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D05636F9D3
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 09:35:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 01:35:44 -0800
X-IronPort-AV: E=Sophos;i="5.70,353,1574150400"; d="scan'208";a="216206318"
Received: from tletko-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.38.232])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 01:35:41 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <157961587448.4434.994438477611520370@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200121113915.9813-1-jani.nikula@intel.com>
 <157961182151.3096.1560629940510754606@skylake-alporthouse-com>
 <87zhegewsv.fsf@intel.com>
 <157961587448.4434.994438477611520370@skylake-alporthouse-com>
Date: Thu, 23 Jan 2020 11:36:38 +0200
Message-ID: <87eevqikex.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH RESEND] drm/i915: add display engine uncore
 helpers
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMSBKYW4gMjAyMCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFF1b3RpbmcgSmFuaSBOaWt1bGEgKDIwMjAtMDEtMjEgMTM6NTg6MDgpCj4+
IE9uIFR1ZSwgMjEgSmFuIDIwMjAsIENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPiB3cm90ZToKPj4gPiBRdW90aW5nIEphbmkgTmlrdWxhICgyMDIwLTAxLTIxIDExOjM5OjE1
KQo+PiA+PiBBZGQgY29udmVuaWVuY2UgaGVscGVycyBmb3IgdGhlIG1vc3QgY29tbW9uIHVuY29y
ZSBvcGVyYXRpb25zIHdpdGgKPj4gPj4gc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKiBhcyBjb250
ZXh0IHJhdGhlciB0aGFuIHN0cnVjdCBpbnRlbF91bmNvcmUgKi4KPj4gPj4gCj4+ID4+IFRoZSBn
b2FsIGlzIHRvIHJlcGxhY2UgYWxsIGluc3RhbmNlcyBvZiBJOTE1X1JFQUQoKSwKPj4gPj4gSTkx
NV9QT1NUSU5HX1JFQUQoKSwgSTkxNV9XUklURSgpLCBJOTE1X1JFQURfRlcoKSwgYW5kIEk5MTVf
V1JJVEVfRlcoKQo+PiA+PiBpbiBkaXNwbGF5LyB3aXRoIHRoZXNlLCB0byBmaW5hbGx5IGJlIGFi
bGUgdG8gZ2V0IHJpZCBvZiB0aGUgaW1wbGljaXQKPj4gPj4gZGV2X3ByaXYgbG9jYWwgcGFyYW1l
dGVyIHVzZS4KPj4gPj4gCj4+ID4+IFRoZSBpZGVhIGlzIHRoYXQgYW55IG5vbi11MzIgcmVhZHMg
b3Igd3JpdGVzIGFyZSBzcGVjaWFsIGVub3VnaCB0aGF0Cj4+ID4+IHRoZXkgY2FuIHVzZSB0aGUg
aW50ZWxfdW5jb3JlXyogZnVuY3Rpb25zIGRpcmVjdGx5Lgo+PiA+PiAKPj4gPj4gdjI6Cj4+ID4+
IC0gcmVuYW1lIHRoZSBmaWxlIGludGVsX2RlLmgKPj4gPj4gLSBtb3ZlIGludGVsX2RlX3dhaXRf
Zm9yXyogdGhlcmUgdG9vCj4+ID4+IC0gYWxzbyBhZGQgZGUgZncgaGVscGVycwo+PiA+PiAKPj4g
Pj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+PiA+PiBDYzog
RGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4K
Pj4gPj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNv
bT4KPj4gPj4gQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+
PiA+PiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+PiA+PiBDYzog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4gPj4gU2ln
bmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPj4gPj4gLS0t
Cj4+ID4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RlLmggICAgICAgfCA3
MiArKysrKysrKysrKysrKysrKysrCj4+ID4+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3R5cGVzLmggICAgfCAgMSArCj4+ID4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oICAgICAgICAgICAgICAgfCAxNCAtLS0tCj4+ID4+ICAzIGZpbGVzIGNoYW5nZWQsIDcz
IGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQo+PiA+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGUuaAo+PiA+PiAKPj4gPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGUuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGUuaAo+PiA+PiBuZXcgZmlsZSBtb2RlIDEw
MDY0NAo+PiA+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjAwZGExMGJmMzVmNQo+PiA+PiAtLS0gL2Rl
di9udWxsCj4+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGUu
aAo+PiA+PiBAQCAtMCwwICsxLDcyIEBACj4+ID4+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogTUlUICovCj4+ID4+ICsvKgo+PiA+PiArICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29y
cG9yYXRpb24KPj4gPj4gKyAqLwo+PiA+PiArCj4+ID4+ICsjaWZuZGVmIF9fSU5URUxfREVfSF9f
Cj4+ID4+ICsjZGVmaW5lIF9fSU5URUxfREVfSF9fCj4+ID4+ICsKPj4gPj4gKyNpbmNsdWRlICJp
OTE1X2Rydi5oIgo+PiA+PiArI2luY2x1ZGUgImk5MTVfcmVnLmgiCj4+ID4+ICsjaW5jbHVkZSAi
aW50ZWxfdW5jb3JlLmgiCj4+ID4+ICsKPj4gPj4gK3N0YXRpYyBpbmxpbmUgdTMyCj4+ID4+ICtp
bnRlbF9kZV9yZWFkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBpOTE1X3JlZ190IHJl
ZykKPj4gPj4gK3sKPj4gPj4gKyAgICAgICByZXR1cm4gaW50ZWxfdW5jb3JlX3JlYWQoJmk5MTUt
PnVuY29yZSwgcmVnKTsKPj4gPj4gK30KPj4gPj4gKwo+PiA+PiArc3RhdGljIGlubGluZSB2b2lk
Cj4+ID4+ICtpbnRlbF9kZV9wb3N0aW5nX3JlYWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUsIGk5MTVfcmVnX3QgcmVnKQo+PiA+PiArewo+PiA+PiArICAgICAgIGludGVsX3VuY29yZV9w
b3N0aW5nX3JlYWQoJmk5MTUtPnVuY29yZSwgcmVnKTsKPj4gPj4gK30KPj4gPj4gKwo+PiA+PiAr
LyogTm90ZTogcmVhZCB0aGUgd2FybmluZ3MgZm9yIGludGVsX3VuY29yZV8qX2Z3KCkgZnVuY3Rp
b25zISAqLwo+PiA+PiArc3RhdGljIGlubGluZSB1MzIKPj4gPj4gK2ludGVsX2RlX3JlYWRfZnco
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGk5MTVfcmVnX3QgcmVnKQo+PiA+PiArewo+
PiA+PiArICAgICAgIHJldHVybiBpbnRlbF91bmNvcmVfcmVhZF9mdygmaTkxNS0+dW5jb3JlLCBy
ZWcpOwo+PiA+PiArfQo+PiA+PiArCj4+ID4+ICtzdGF0aWMgaW5saW5lIHZvaWQKPj4gPj4gK2lu
dGVsX2RlX3dyaXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBpOTE1X3JlZ190IHJl
ZywgdTMyIHZhbCkKPj4gPj4gK3sKPj4gPj4gKyAgICAgICBpbnRlbF91bmNvcmVfd3JpdGUoJmk5
MTUtPnVuY29yZSwgcmVnLCB2YWwpOwo+PiA+PiArfQo+PiA+PiArCj4+ID4+ICsvKiBOb3RlOiBy
ZWFkIHRoZSB3YXJuaW5ncyBmb3IgaW50ZWxfdW5jb3JlXypfZncoKSBmdW5jdGlvbnMhICovCj4+
ID4+ICtzdGF0aWMgaW5saW5lIHZvaWQKPj4gPj4gK2ludGVsX2RlX3dyaXRlX2Z3KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1LCBpOTE1X3JlZ190IHJlZywgdTMyIHZhbCkKPj4gPj4gK3sK
Pj4gPj4gKyAgICAgICBpbnRlbF91bmNvcmVfd3JpdGVfZncoJmk5MTUtPnVuY29yZSwgcmVnLCB2
YWwpOwo+PiA+PiArfQo+PiA+PiArCj4+ID4+ICtzdGF0aWMgaW5saW5lIHZvaWQKPj4gPj4gK2lu
dGVsX2RlX3JtdyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgaTkxNV9yZWdfdCByZWcs
IHUzMiBjbGVhciwgdTMyIHNldCkKPj4gPj4gK3sKPj4gPj4gKyAgICAgICBpbnRlbF91bmNvcmVf
cm13KCZpOTE1LT51bmNvcmUsIHJlZywgY2xlYXIsIHNldCk7Cj4+ID4+ICt9Cj4+ID4+ICsKPj4g
Pj4gK3N0YXRpYyBpbmxpbmUgaW50Cj4+ID4+ICtpbnRlbF9kZV93YWl0X2Zvcl9yZWdpc3Rlcihz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgaTkxNV9yZWdfdCByZWcsCj4+ID4+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgIHUzMiBtYXNrLCB1MzIgdmFsdWUsIHVuc2lnbmVkIGludCB0
aW1lb3V0KQo+PiA+PiArewo+PiA+PiArICAgICAgIHJldHVybiBpbnRlbF93YWl0X2Zvcl9yZWdp
c3RlcigmaTkxNS0+dW5jb3JlLCByZWcsIG1hc2ssIHZhbHVlLCB0aW1lb3V0KTsKPj4gPj4gK30K
Pj4gPj4gKwo+PiA+PiArc3RhdGljIGlubGluZSBpbnQKPj4gPj4gK2ludGVsX2RlX3dhaXRfZm9y
X3NldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgaTkxNV9yZWdfdCByZWcsCj4+ID4+
ICsgICAgICAgICAgICAgICAgICAgICB1MzIgbWFzaywgdW5zaWduZWQgaW50IHRpbWVvdXQpCj4+
ID4+ICt7Cj4+ID4+ICsgICAgICAgcmV0dXJuIGludGVsX2RlX3dhaXRfZm9yX3JlZ2lzdGVyKGk5
MTUsIHJlZywgbWFzaywgbWFzaywgdGltZW91dCk7Cj4+ID4+ICt9Cj4+ID4+ICsKPj4gPj4gK3N0
YXRpYyBpbmxpbmUgaW50Cj4+ID4+ICtpbnRlbF9kZV93YWl0X2Zvcl9jbGVhcihzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwgaTkxNV9yZWdfdCByZWcsCj4+ID4+ICsgICAgICAgICAgICAg
ICAgICAgICAgIHUzMiBtYXNrLCB1bnNpZ25lZCBpbnQgdGltZW91dCkKPj4gPj4gK3sKPj4gPj4g
KyAgICAgICByZXR1cm4gaW50ZWxfZGVfd2FpdF9mb3JfcmVnaXN0ZXIoaTkxNSwgcmVnLCBtYXNr
LCAwLCB0aW1lb3V0KTsKPj4gPj4gK30KPj4gPj4gKwo+PiA+PiArI2VuZGlmIC8qIF9fSU5URUxf
REVfSF9fICovCj4+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV90eXBlcy5oCj4+ID4+IGluZGV4IDE1NWNlNDlhZTc2NC4uMGQ3YWRjMmMxNjdh
IDEwMDY0NAo+PiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfdHlwZXMuaAo+PiA+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaAo+PiA+PiBAQCAtNDQsNiArNDQsNyBAQAo+PiA+PiAgI2luY2x1
ZGUgPG1lZGlhL2NlYy1ub3RpZmllci5oPgo+PiA+PiAgCj4+ID4+ICAjaW5jbHVkZSAiaTkxNV9k
cnYuaCIKPj4gPj4gKyNpbmNsdWRlICJpbnRlbF9kZS5oIgo+PiA+Cj4+ID4gSSBkb24ndCB0aGlu
ayB5b3Ugd2FudCB0byBpbmNsdWRlIGl0IGZyb20gdHlwZXMuaCB0aG91Z2ggLS0gSSB0aGluayB5
b3UKPj4gPiB3YW50IHRvIGF2b2lkIGlubGluZXMgKGF0IGxlYXN0IGlubGluZXMgdGhhdCBkZXBl
bmQgdXBvbiBleHRlcm5hbCB0eXBlcykKPj4gPiBhd2F5IGZyb20gdGhlIHR5cGVzLmggc28geW91
IGNhbiBhdm9pZCB0aGUgZHJlYWRlZCBjeWNsZXMuCj4+IAo+PiBFdmVudHVhbGx5IHllcywgYnV0
IEkgYWxzbyBkb24ndCB3YW50IHRvIHNwbGF0dGVyICNpbmNsdWRlICJpbnRlbF9kZS5oIgo+PiBl
dmVyeXdoZXJlIGp1c3QgeWV0Li4uIHRoaXMgc2VlbWVkIHRvIGZpdCB0aGUgYmlsbC4gOykKPj4g
Cj4+ID4gU28gb3RoZXIgdGhhbiB0aGF0LAo+PiA+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4gPgo+PiA+IE9yIHlvdSBtYXkgd2FudCB0byBt
YWtlIHRoZSBwbGFjZW1lbnQgb2YgdGhlIGZpbmFsIGluY2x1ZGUocykgYQo+PiA+IHNlcGFyYXRl
IHBhdGNoLgo+PiAKPj4gVGhhbmtzIGZvciB0aGUgcmV2aWV3LiBEbyB5b3UgaW5zaXN0IG9uIGEg
cmUtc3BpbiB3aXRoIHRoZSBpbmNsdWRlcwo+PiBzb3J0ZWQgb3V0IGJlZm9yZSBtZXJnZT8KPgo+
IE5vcGUuIFNvIGxvbmcgYXMgeW91IGFyZSBhd2FyZSB0aGF0IHRoZSBjdXJyZW50IHBsYWNlbWVu
dCBjYW4gZWFzaWx5IGxlYWQKPiBpbnRvIGEgdHJhcCwgZmluZS4KClRoYW5rcywgYW5kIHB1c2hl
ZCB0byBkaW5xLgoKVGltZSB0byB1bmxlYXNoIGNvY2NpIHRvIHJpZCB1cyBvZiBJOTE1X1JFQUQs
IEk5MTVfV1JJVEUsIGFuZCBmcmllbmRzCmFsc28gaW4gZGlzcGxheS8uCgpCUiwKSmFuaS4KCi0t
IApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
