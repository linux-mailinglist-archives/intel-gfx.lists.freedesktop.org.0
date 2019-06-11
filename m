Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E213CCBA
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 15:13:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C75ED8907B;
	Tue, 11 Jun 2019 13:13:37 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 978D68907B
 for <Intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 13:13:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jun 2019 06:13:23 -0700
X-ExtLoop1: 1
Received: from nmanovic-mobl.ccr.corp.intel.com (HELO [10.252.13.223])
 ([10.252.13.223])
 by fmsmga001.fm.intel.com with ESMTP; 11 Jun 2019 06:13:22 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
 Michal Wajdeczko <michal.wajdeczko@linux.intel.com>
References: <20190611110044.7742-2-tvrtko.ursulin@linux.intel.com>
 <20190611122350.15060-1-tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c89777cd-7470-75bc-4c59-d805c9839b45@linux.intel.com>
Date: Tue, 11 Jun 2019 14:13:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190611122350.15060-1-tvrtko.ursulin@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915: Make GuC GGTT reservation
 work on ggtt
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck1pY2hhbCwKCk9uIDExLzA2LzIwMTkgMTM6MjMsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+IEZy
b206IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gCj4gVGhlc2Ug
ZnVuY3Rpb25zIG9wZXJhdGUgb24gZ2d0dCBzbyBtYWtlIHRoZW0gdGFrZSB0aGF0IGRpcmVjdGx5
IGFzCj4gcGFyYW1ldGVyLgo+IAo+IEF0IHRoZSBzYW1lIHRpbWUgbW92ZSB0aGUgVVNFU19HVUMg
Y29uZGl0aW9uYWwgZG93biB0bwo+IGludGVsX2d1Y19yZXNlcnZlX2dndHRfdG9wIGZvciBzeW1t
ZXRyeSB3aXRoCj4gaW50ZWxfZ3VjX3Jlc2VydmVkX2d0dF9zaXplLgo+IAo+IHYyOgo+ICAgKiBS
ZW5hbWUgYW5kIG1vdmUgZnVuY3Rpb25zIHRvIGJlIHN0YXRpYyBpbiBpOTE1X2dlbV9ndHQuYyAo
TWljaGFsKQo+IAo+IHYzOgo+ICAgKiBBZGQgY29tbWVudCBleHBsYWluaW5nIHJlYXNvbiBmb3Ig
cmVzZXJ2YXRpb24sIGFkZCBhc3NlcnQgYW5kIGZpeAo+ICAgICBlcnJvciBtZXNzYWdlLiAoTWlj
aGFsKQo+IAo+IHY0Ogo+ICAgKiBGaXggY2hlY2twYXRjaCBlcnJvci4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IENjOiBNaWNo
YWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiBSZXZpZXdlZC1ieTog
TWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CgpJJ3ZlIGFzc3Vt
ZWQgSSB3b3VsZCBiZSBhYmxlIHRvIGltcGxlbWVudCB5b3VyIHNtYWxsIHN1Z2dlc3Rpb25zIApj
b3JyZWN0bHkgc28gSSd2ZSBrZXB0IHRoZSByLWIuIENvdWxkIHlvdSBqdXN0IGdpdmUgaXQgYSBx
dWljayBnbGFuY2UgCm92ZXIgdG8gc2VlIGlmIHRoYXQgaXMgaW5kZWVkIHRydWUuCgpSZWdhcmRz
LAoKVHZydGtvCgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMg
fCA0MyArKysrKysrKysrKysrKysrKysrKysrKystLS0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZ3VjLmMgICAgfCAyNyAtLS0tLS0tLS0tLS0tLS0tLS0KPiAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2d1Yy5oICAgIHwgIDIgLS0KPiAgIDMgZmlsZXMgY2hhbmdlZCwgMzYg
aW5zZXJ0aW9ucygrKSwgMzYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW1fZ3R0LmMKPiBpbmRleCA1YjUxMjVlZTQ5ZjMuLmMxM2I1MmI2NmVmMSAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gQEAgLTI4MDcsNiArMjgwNywzMiBAQCBzdGF0aWMg
dm9pZCBmaW5pX2FsaWFzaW5nX3BwZ3R0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+
ICAgCWdndHQtPnZtLnZtYV9vcHMudW5iaW5kX3ZtYSA9IGdndHRfdW5iaW5kX3ZtYTsKPiAgIH0K
PiAgIAo+ICtzdGF0aWMgaW50IGdndHRfcmVzZXJ2ZV9ndWNfdG9wKHN0cnVjdCBpOTE1X2dndHQg
KmdndHQpCj4gK3sKPiArCXU2NCBzaXplOwo+ICsJaW50IHJldDsKPiArCj4gKwlpZiAoIVVTRVNf
R1VDKGdndHQtPnZtLmk5MTUpKQo+ICsJCXJldHVybiAwOwo+ICsKPiArCUdFTV9CVUdfT04oZ2d0
dC0+dm0udG90YWwgPD0gR1VDX0dHVFRfVE9QKTsKPiArCXNpemUgPSBnZ3R0LT52bS50b3RhbCAt
IEdVQ19HR1RUX1RPUDsKPiArCj4gKwlyZXQgPSBpOTE1X2dlbV9ndHRfcmVzZXJ2ZSgmZ2d0dC0+
dm0sICZnZ3R0LT51Y19mdywgc2l6ZSwKPiArCQkJCSAgIEdVQ19HR1RUX1RPUCwgSTkxNV9DT0xP
Ul9VTkVWSUNUQUJMRSwKPiArCQkJCSAgIFBJTl9OT0VWSUNUKTsKPiArCWlmIChyZXQpCj4gKwkJ
RFJNX0RFQlVHX0RSSVZFUigiRmFpbGVkIHRvIHJlc2VydmUgdG9wIG9mIEdHVFQgZm9yIEd1Q1xu
Iik7Cj4gKwo+ICsJcmV0dXJuIHJldDsKPiArfQo+ICsKPiArc3RhdGljIHZvaWQgZ2d0dF9yZWxl
YXNlX2d1Y190b3Aoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCkKPiArewo+ICsJaWYgKGRybV9tbV9u
b2RlX2FsbG9jYXRlZCgmZ2d0dC0+dWNfZncpKQo+ICsJCWRybV9tbV9yZW1vdmVfbm9kZSgmZ2d0
dC0+dWNfZncpOwo+ICt9Cj4gKwo+ICAgaW50IGk5MTVfZ2VtX2luaXRfZ2d0dChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gICB7Cj4gICAJLyogTGV0IEdFTSBNYW5hZ2UgYWxs
IG9mIHRoZSBhcGVydHVyZS4KPiBAQCAtMjg0NCwxMSArMjg3MCwxNCBAQCBpbnQgaTkxNV9nZW1f
aW5pdF9nZ3R0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgIAlpZiAocmV0
KQo+ICAgCQlyZXR1cm4gcmV0Owo+ICAgCj4gLQlpZiAoVVNFU19HVUMoZGV2X3ByaXYpKSB7Cj4g
LQkJcmV0ID0gaW50ZWxfZ3VjX3Jlc2VydmVfZ2d0dF90b3AoJmRldl9wcml2LT5ndWMpOwo+IC0J
CWlmIChyZXQpCj4gLQkJCWdvdG8gZXJyX3Jlc2VydmU7Cj4gLQl9Cj4gKwkvKgo+ICsJICogVGhl
IHVwcGVyIHBvcnRpb24gb2YgdGhlIEd1QyBhZGRyZXNzIHNwYWNlIGhhcyBhIHNpemVhYmxlIGhv
bGUKPiArCSAqIChzZXZlcmFsIE1CKSB0aGF0IGlzIGluYWNjZXNzaWJsZSBieSBHdUMuIFJlc2Vy
dmUgdGhpcyByYW5nZSB3aXRoaW4KPiArCSAqIEdHVFQgYXMgaXQgY2FuIGNvbWZvcnRhYmx5IGhv
bGQgR3VDL0h1QyBmaXJtd2FyZSBpbWFnZXMuCj4gKwkgKi8KPiArCXJldCA9IGdndHRfcmVzZXJ2
ZV9ndWNfdG9wKGdndHQpOwo+ICsJaWYgKHJldCkKPiArCQlnb3RvIGVycl9yZXNlcnZlOwo+ICAg
Cj4gICAJLyogQ2xlYXIgYW55IG5vbi1wcmVhbGxvY2F0ZWQgYmxvY2tzICovCj4gICAJZHJtX21t
X2Zvcl9lYWNoX2hvbGUoZW50cnksICZnZ3R0LT52bS5tbSwgaG9sZV9zdGFydCwgaG9sZV9lbmQp
IHsKPiBAQCAtMjg3MCw3ICsyODk5LDcgQEAgaW50IGk5MTVfZ2VtX2luaXRfZ2d0dChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gICAJcmV0dXJuIDA7Cj4gICAKPiAgIGVycl9h
cHBndHQ6Cj4gLQlpbnRlbF9ndWNfcmVsZWFzZV9nZ3R0X3RvcCgmZGV2X3ByaXYtPmd1Yyk7Cj4g
KwlnZ3R0X3JlbGVhc2VfZ3VjX3RvcChnZ3R0KTsKPiAgIGVycl9yZXNlcnZlOgo+ICAgCWRybV9t
bV9yZW1vdmVfbm9kZSgmZ2d0dC0+ZXJyb3JfY2FwdHVyZSk7Cj4gICAJcmV0dXJuIHJldDsKPiBA
QCAtMjg5Nyw3ICsyOTI2LDcgQEAgdm9pZCBpOTE1X2dndHRfY2xlYW51cF9odyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gICAJaWYgKGRybV9tbV9ub2RlX2FsbG9jYXRlZCgm
Z2d0dC0+ZXJyb3JfY2FwdHVyZSkpCj4gICAJCWRybV9tbV9yZW1vdmVfbm9kZSgmZ2d0dC0+ZXJy
b3JfY2FwdHVyZSk7Cj4gICAKPiAtCWludGVsX2d1Y19yZWxlYXNlX2dndHRfdG9wKCZkZXZfcHJp
di0+Z3VjKTsKPiArCWdndHRfcmVsZWFzZV9ndWNfdG9wKGdndHQpOwo+ICAgCj4gICAJaWYgKGRy
bV9tbV9pbml0aWFsaXplZCgmZ2d0dC0+dm0ubW0pKSB7Cj4gICAJCWludGVsX3ZndF9kZWJhbGxv
b24oZGV2X3ByaXYpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9n
dWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Yy5jCj4gaW5kZXggZDQ1ZDk3NjI0
NDAyLi5jNDBhNmVmZGQzM2EgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZ3VjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWMuYwo+IEBAIC02
ODUsMzAgKzY4NSwzIEBAIHN0cnVjdCBpOTE1X3ZtYSAqaW50ZWxfZ3VjX2FsbG9jYXRlX3ZtYShz
dHJ1Y3QgaW50ZWxfZ3VjICpndWMsIHUzMiBzaXplKQo+ICAgCWk5MTVfZ2VtX29iamVjdF9wdXQo
b2JqKTsKPiAgIAlyZXR1cm4gdm1hOwo+ICAgfQo+IC0KPiAtaW50IGludGVsX2d1Y19yZXNlcnZl
X2dndHRfdG9wKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKPiAtewo+IC0Jc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUgPSBndWNfdG9faTkxNShndWMpOwo+IC0Jc3RydWN0IGk5MTVfZ2d0dCAq
Z2d0dCA9ICZpOTE1LT5nZ3R0Owo+IC0JdTY0IHNpemU7Cj4gLQlpbnQgcmV0Owo+IC0KPiAtCXNp
emUgPSBnZ3R0LT52bS50b3RhbCAtIEdVQ19HR1RUX1RPUDsKPiAtCj4gLQlyZXQgPSBpOTE1X2dl
bV9ndHRfcmVzZXJ2ZSgmZ2d0dC0+dm0sICZnZ3R0LT51Y19mdywgc2l6ZSwKPiAtCQkJCSAgIEdV
Q19HR1RUX1RPUCwgSTkxNV9DT0xPUl9VTkVWSUNUQUJMRSwKPiAtCQkJCSAgIFBJTl9OT0VWSUNU
KTsKPiAtCWlmIChyZXQpCj4gLQkJRFJNX0RFQlVHX0RSSVZFUigiR3VDOiBmYWlsZWQgdG8gcmVz
ZXJ2ZSB0b3Agb2YgZ2d0dFxuIik7Cj4gLQo+IC0JcmV0dXJuIHJldDsKPiAtfQo+IC0KPiAtdm9p
ZCBpbnRlbF9ndWNfcmVsZWFzZV9nZ3R0X3RvcChzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCj4gLXsK
PiAtCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZ3VjX3RvX2k5MTUoZ3VjKTsKPiAt
CXN0cnVjdCBpOTE1X2dndHQgKmdndHQgPSAmaTkxNS0+Z2d0dDsKPiAtCj4gLQlpZiAoZHJtX21t
X25vZGVfYWxsb2NhdGVkKCZnZ3R0LT51Y19mdykpCj4gLQkJZHJtX21tX3JlbW92ZV9ub2RlKCZn
Z3R0LT51Y19mdyk7Cj4gLX0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZ3VjLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWMuaAo+IGluZGV4IDg1YzNi
MDJhMGMwOC4uMDhjOTA2YWJkZmEyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2d1Yy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjLmgKPiBA
QCAtMTcyLDggKzE3Miw2IEBAIGludCBpbnRlbF9ndWNfYXV0aF9odWMoc3RydWN0IGludGVsX2d1
YyAqZ3VjLCB1MzIgcnNhX29mZnNldCk7Cj4gICBpbnQgaW50ZWxfZ3VjX3N1c3BlbmQoc3RydWN0
IGludGVsX2d1YyAqZ3VjKTsKPiAgIGludCBpbnRlbF9ndWNfcmVzdW1lKHN0cnVjdCBpbnRlbF9n
dWMgKmd1Yyk7Cj4gICBzdHJ1Y3QgaTkxNV92bWEgKmludGVsX2d1Y19hbGxvY2F0ZV92bWEoc3Ry
dWN0IGludGVsX2d1YyAqZ3VjLCB1MzIgc2l6ZSk7Cj4gLWludCBpbnRlbF9ndWNfcmVzZXJ2ZV9n
Z3R0X3RvcChzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpOwo+IC12b2lkIGludGVsX2d1Y19yZWxlYXNl
X2dndHRfdG9wKHN0cnVjdCBpbnRlbF9ndWMgKmd1Yyk7Cj4gICAKPiAgIHN0YXRpYyBpbmxpbmUg
Ym9vbCBpbnRlbF9ndWNfaXNfbG9hZGVkKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKPiAgIHsKPiAK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
