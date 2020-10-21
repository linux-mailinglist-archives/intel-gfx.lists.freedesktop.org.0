Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B14295193
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 19:36:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AD316EE28;
	Wed, 21 Oct 2020 17:36:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 592F76EE28
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 17:36:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22768309-1500050 for multiple; Wed, 21 Oct 2020 18:36:01 +0100
MIME-Version: 1.0
In-Reply-To: <20201021131443.25616-2-ville.syrjala@linux.intel.com>
References: <20201021131443.25616-1-ville.syrjala@linux.intel.com>
 <20201021131443.25616-2-ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 21 Oct 2020 18:36:00 +0100
Message-ID: <160330176036.24927.9129805853490209956@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915: Read actual GPU frequency
 from MEMSTAT_ILK on ILK
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTEwLTIxIDE0OjE0OjQwKQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gVGhlcmUgaXMg
bm8gR0VONl9SUFNUQVQxIG9uIElMSy4gSW5zdGVhZCBvZiByZWFkaW5nIHRoYXQgbGV0J3MKPiB0
cnkgdG8gZ2V0IHRoZSBzYW1lIGluZm9ybWF0aW9uIGZyb20gTUVNU1RBVF9JTEsuIEF0IGxlYXN0
IGl0Cj4gc2VlbXMgdG8gdHJhY2sgTUVNU1dDVEwgZnJlcXVlbmN5IHJlcXVlc3QgcGVyZmVjdGx5
IG9uIG15IElMSy4KPiBJdCBuZWVkcyB0aGUgc2FtZSBpbnZlcnQgdHJpY2sgYXMgdGhlIHJlcXVl
c3QgdmFsdWUuCj4gCj4gV2UgZG9uJ3Qgd2FudCB0byBwdXQgdGhlIGludmVydCB0aGluZyBpbnRv
IGludGVsX2dwdV9mcmVxKCkKPiBhbmQgaW50ZWxfZnJlcV9vcGNvZGUoKSBiZWNhdXNlIHRoYXQg
d291bGQgaW5jb3JyZWN0bHkgaW52ZXJ0Cj4gdGhlIG1pbi9tYXgvZXRjIGZyZXF1ZW5jaWVzIGFs
c28uCj4gCj4gT25lIGRheSBzb21lb25lIG1pZ2h0IHdhbnQgdG8gcmV2ZXJzZSBlbmdpbmVlciB0
aGUgZm9ybXVsYSBmb3IKPiBjb252ZXJ0aW5nIHRoZXNlIG51bXZlcnMgdG8gSHosIGJ1dCBmb3Ig
bm93IHdlJ2xsIGp1c3QgcmVwb3J0Cj4gdGhlbSByYXcuCgpSYXcuIFRoYXQnbGwgYmUgYSBudWlz
YW5jZSwgYnV0IGEgc3RlcCBmb3J3YXJkLgogCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfcnBzLmMgfCAzMSArKysrKysrKysrKysrKysrKysrKysrKy0tLS0t
LQo+ICAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcnBzLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ycHMuYwo+IGluZGV4IGE1MzkyODM2M2I4Ni4uZTBk
Yjc1NDFkYmZhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jw
cy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcnBzLmMKPiBAQCAtMzkw
LDYgKzM5MCwxNiBAQCBzdGF0aWMgdm9pZCBnZW41X3Jwc191cGRhdGUoc3RydWN0IGludGVsX3Jw
cyAqcnBzKQo+ICAgICAgICAgc3Bpbl91bmxvY2tfaXJxKCZtY2hkZXZfbG9jayk7Cj4gIH0KPiAg
Cj4gK3N0YXRpYyB1bnNpZ25lZCBpbnQgZ2VuNV9pbnZlcnRfZnJlcShzdHJ1Y3QgaW50ZWxfcnBz
ICpycHMsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGlu
dCB2YWwpCj4gK3sKPiArICAgICAgIC8qIEludmVydCB0aGUgZnJlcXVlbmN5IGJpbiBpbnRvIGFu
IGlwcyBkZWxheSAqLwo+ICsgICAgICAgdmFsID0gcnBzLT5tYXhfZnJlcSAtIHZhbDsKPiArICAg
ICAgIHZhbCA9IHJwcy0+bWluX2ZyZXEgKyB2YWw7Cj4gKwo+ICsgICAgICAgcmV0dXJuIHZhbDsK
PiArfQo+ICsKPiAgc3RhdGljIGJvb2wgZ2VuNV9ycHNfc2V0KHN0cnVjdCBpbnRlbF9ycHMgKnJw
cywgdTggdmFsKQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBy
cHNfdG9fdW5jb3JlKHJwcyk7Cj4gQEAgLTQwNCw4ICs0MTQsNyBAQCBzdGF0aWMgYm9vbCBnZW41
X3Jwc19zZXQoc3RydWN0IGludGVsX3JwcyAqcnBzLCB1OCB2YWwpCj4gICAgICAgICB9Cj4gIAo+
ICAgICAgICAgLyogSW52ZXJ0IHRoZSBmcmVxdWVuY3kgYmluIGludG8gYW4gaXBzIGRlbGF5ICov
Cj4gLSAgICAgICB2YWwgPSBycHMtPm1heF9mcmVxIC0gdmFsOwo+IC0gICAgICAgdmFsID0gcnBz
LT5taW5fZnJlcSArIHZhbDsKPiArICAgICAgIHZhbCA9IGdlbjVfaW52ZXJ0X2ZyZXEocnBzLCB2
YWwpOwo+ICAKPiAgICAgICAgIHJndnN3Y3RsID0KPiAgICAgICAgICAgICAgICAgKE1FTUNUTF9D
TURfQ0hGUkVRIDw8IE1FTUNUTF9DTURfU0hJRlQpIHwKPiBAQCAtMTQzMiw4ICsxNDQxLDEwIEBA
IGludCBpbnRlbF9ncHVfZnJlcShzdHJ1Y3QgaW50ZWxfcnBzICpycHMsIGludCB2YWwpCj4gICAg
ICAgICAgICAgICAgIHJldHVybiBjaHZfZ3B1X2ZyZXEocnBzLCB2YWwpOwo+ICAgICAgICAgZWxz
ZSBpZiAoSVNfVkFMTEVZVklFVyhpOTE1KSkKPiAgICAgICAgICAgICAgICAgcmV0dXJuIGJ5dF9n
cHVfZnJlcShycHMsIHZhbCk7Cj4gLSAgICAgICBlbHNlCj4gKyAgICAgICBlbHNlIGlmIChJTlRF
TF9HRU4oaTkxNSkgPj0gNikKPiAgICAgICAgICAgICAgICAgcmV0dXJuIHZhbCAqIEdUX0ZSRVFV
RU5DWV9NVUxUSVBMSUVSOwo+ICsgICAgICAgZWxzZQo+ICsgICAgICAgICAgICAgICByZXR1cm4g
dmFsOwo+ICB9Cj4gIAo+ICBpbnQgaW50ZWxfZnJlcV9vcGNvZGUoc3RydWN0IGludGVsX3JwcyAq
cnBzLCBpbnQgdmFsKQo+IEBAIC0xNDQ3LDggKzE0NTgsMTAgQEAgaW50IGludGVsX2ZyZXFfb3Bj
b2RlKHN0cnVjdCBpbnRlbF9ycHMgKnJwcywgaW50IHZhbCkKPiAgICAgICAgICAgICAgICAgcmV0
dXJuIGNodl9mcmVxX29wY29kZShycHMsIHZhbCk7Cj4gICAgICAgICBlbHNlIGlmIChJU19WQUxM
RVlWSUVXKGk5MTUpKQo+ICAgICAgICAgICAgICAgICByZXR1cm4gYnl0X2ZyZXFfb3Bjb2RlKHJw
cywgdmFsKTsKPiAtICAgICAgIGVsc2UKPiArICAgICAgIGVsc2UgaWYgKElOVEVMX0dFTihpOTE1
KSA+PSA2KQo+ICAgICAgICAgICAgICAgICByZXR1cm4gRElWX1JPVU5EX0NMT1NFU1QodmFsLCBH
VF9GUkVRVUVOQ1lfTVVMVElQTElFUik7Cj4gKyAgICAgICBlbHNlCj4gKyAgICAgICAgICAgICAg
IHJldHVybiB2YWw7Cj4gIH0KPiAgCj4gIHN0YXRpYyB2b2lkIHZsdl9pbml0X2dwbGxfcmVmX2Zy
ZXEoc3RydWN0IGludGVsX3JwcyAqcnBzKQo+IEBAIC0xODY0LDggKzE4NzcsMTEgQEAgdTMyIGlu
dGVsX3Jwc19nZXRfY2FnZihzdHJ1Y3QgaW50ZWxfcnBzICpycHMsIHUzMiBycHN0YXQpCj4gICAg
ICAgICAgICAgICAgIGNhZ2YgPSAocnBzdGF0ICYgR0VOOV9DQUdGX01BU0spID4+IEdFTjlfQ0FH
Rl9TSElGVDsKPiAgICAgICAgIGVsc2UgaWYgKElTX0hBU1dFTEwoaTkxNSkgfHwgSVNfQlJPQURX
RUxMKGk5MTUpKQo+ICAgICAgICAgICAgICAgICBjYWdmID0gKHJwc3RhdCAmIEhTV19DQUdGX01B
U0spID4+IEhTV19DQUdGX1NISUZUOwo+IC0gICAgICAgZWxzZQo+ICsgICAgICAgZWxzZSBpZiAo
SU5URUxfR0VOKGk5MTUpID49IDYpCj4gICAgICAgICAgICAgICAgIGNhZ2YgPSAocnBzdGF0ICYg
R0VONl9DQUdGX01BU0spID4+IEdFTjZfQ0FHRl9TSElGVDsKPiArICAgICAgIGVsc2UKPiArICAg
ICAgICAgICAgICAgY2FnZiA9IGdlbjVfaW52ZXJ0X2ZyZXEocnBzLCAocnBzdGF0ICYgTUVNU1RB
VF9QU1RBVEVfTUFTSykgPj4KPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgTUVNU1RBVF9QU1RBVEVfU0hJRlQpOwo+ICAKPiAgICAgICAgIHJldHVybiBjYWdmOwo+ICB9
Cj4gQEAgLTE4NzMsMTQgKzE4ODksMTcgQEAgdTMyIGludGVsX3Jwc19nZXRfY2FnZihzdHJ1Y3Qg
aW50ZWxfcnBzICpycHMsIHUzMiBycHN0YXQpCj4gIHN0YXRpYyB1MzIgcmVhZF9jYWdmKHN0cnVj
dCBpbnRlbF9ycHMgKnJwcykKPiAgewo+ICAgICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUgPSBycHNfdG9faTkxNShycHMpOwo+ICsgICAgICAgc3RydWN0IGludGVsX3VuY29yZSAq
dW5jb3JlID0gcnBzX3RvX3VuY29yZShycHMpOwo+ICAgICAgICAgdTMyIGZyZXE7Cj4gIAo+ICAg
ICAgICAgaWYgKElTX1ZBTExFWVZJRVcoaTkxNSkgfHwgSVNfQ0hFUlJZVklFVyhpOTE1KSkgewo+
ICAgICAgICAgICAgICAgICB2bHZfcHVuaXRfZ2V0KGk5MTUpOwo+ICAgICAgICAgICAgICAgICBm
cmVxID0gdmx2X3B1bml0X3JlYWQoaTkxNSwgUFVOSVRfUkVHX0dQVV9GUkVRX1NUUyk7Cj4gICAg
ICAgICAgICAgICAgIHZsdl9wdW5pdF9wdXQoaTkxNSk7Cj4gKyAgICAgICB9IGVsc2UgaWYgKElO
VEVMX0dFTihpOTE1KSA+PSA2KSB7Cj4gKyAgICAgICAgICAgICAgIGZyZXEgPSBpbnRlbF91bmNv
cmVfcmVhZCh1bmNvcmUsIEdFTjZfUlBTVEFUMSk7Cj4gICAgICAgICB9IGVsc2Ugewo+IC0gICAg
ICAgICAgICAgICBmcmVxID0gaW50ZWxfdW5jb3JlX3JlYWQocnBzX3RvX3VuY29yZShycHMpLCBH
RU42X1JQU1RBVDEpOwo+ICsgICAgICAgICAgICAgICBmcmVxID0gaW50ZWxfdW5jb3JlX3JlYWQo
dW5jb3JlLCBNRU1TVEFUX0lMSyk7Cj4gICAgICAgICB9CgpSZXZpZXdlZC1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
