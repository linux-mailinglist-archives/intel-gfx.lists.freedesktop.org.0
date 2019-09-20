Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F7AB955F
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 18:22:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35E2F6FD55;
	Fri, 20 Sep 2019 16:22:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31A516FD55
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 16:22:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 09:22:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,529,1559545200"; d="scan'208";a="199780701"
Received: from leonidf-mobl.ger.corp.intel.com (HELO [10.252.3.171])
 ([10.252.3.171])
 by orsmga002.jf.intel.com with ESMTP; 20 Sep 2019 09:22:44 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190902040303.14195-1-chris@chris-wilson.co.uk>
 <20190902040303.14195-12-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ab3d61fb-19a8-eba0-d61b-6900e4e751f9@linux.intel.com>
Date: Fri, 20 Sep 2019 17:22:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190902040303.14195-12-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 12/21] drm/i915: Mark up address spaces that
 may need to allocate
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

Ck9uIDAyLzA5LzIwMTkgMDU6MDIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBTaW5jZSB3ZSBjYW5u
b3QgYWxsb2NhdGUgdW5kZXJuZWF0aCB0aGUgdm0tPm11dGV4IChpdCBpcyB1c2VkIGluIHRoZQo+
IGRpcmVjdC1yZWNsYWltIHBhdGhzKSwgd2UgbmVlZCB0byBzaGlmdCB0aGUgYWxsb2NhdGlvbnMg
b2ZmIGludG8gYQo+IG11dGV4bGVzcyB3b3JrZXIgd2l0aCBmZW5jZSByZWN1cnNpb24gcHJldmVu
dGlvbi4gVG8ga25vdyB3aGVuIHdlIG5lZWQKPiB0aGlzIHByb3RlY3Rpb24sIHdlIG1hcmsgdXAg
dGhlIGFkZHJlc3Mgc3BhY2VzIHRoYXQgZG8gYWxsb2NhdGUgYmVmb3JlCj4gaW5zZXJ0aW9uLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
Pgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgfCAzICsrKwo+
ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmggfCAyICsrCj4gICAyIGZpbGVz
IGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0
dC5jCj4gaW5kZXggOTA5NWYwMTcxNjJlLi41NmQyN2NmMDlhM2QgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbV9ndHQuYwo+IEBAIC0xNTAwLDYgKzE1MDAsNyBAQCBzdGF0aWMgc3RydWN0
IGk5MTVfcHBndHQgKmdlbjhfcHBndHRfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1KQo+ICAgCQkJZ290byBlcnJfZnJlZV9wZDsKPiAgIAl9Cj4gICAKPiArCXBwZ3R0LT52bS5i
aW5kX2FsbG9jID0gSTkxNV9WTUFfTE9DQUxfQklORDsKClNvIHRoaXMgaXMgcmUtdXNpbmcgSTkx
NV9WTUFfTE9DQUxfQklORCBhcyBhIHRyaWNrPyBJcyBpdCBjbGVhciBob3cgdGhhdCAKd29ya3Mg
ZnJvbSB0aGVzZSBjYWxsIHNpdGVzPyBTaG91bGQgaXQgYmUgY2FsbGVkIGJpbmRfYWxsb2Mqcyo/
IApiaW5kX2FsbG9jYXRlcz8gT3IgYmUgYSBib29sZWFuIHdoaWNoIGlzIGNvbnZlcnRlZCB0byBh
IHRyaWNrIGZsYWcgaW4gCmk5MTVfdm1hX2JpbmQgd2hlcmUgYSBjb21tZW50IGNhbiBiZSBwdXQg
ZXhwbGFpbmluZyB0aGUgdHJpY2s/CgpSZWdhcmRzLAoKVHZydGtvCgo+ICAgCXBwZ3R0LT52bS5p
bnNlcnRfZW50cmllcyA9IGdlbjhfcHBndHRfaW5zZXJ0Owo+ICAgCXBwZ3R0LT52bS5hbGxvY2F0
ZV92YV9yYW5nZSA9IGdlbjhfcHBndHRfYWxsb2M7Cj4gICAJcHBndHQtPnZtLmNsZWFyX3Jhbmdl
ID0gZ2VuOF9wcGd0dF9jbGVhcjsKPiBAQCAtMTk0Nyw2ICsxOTQ4LDcgQEAgc3RhdGljIHN0cnVj
dCBpOTE1X3BwZ3R0ICpnZW42X3BwZ3R0X2NyZWF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSkKPiAgIAlwcGd0dF9pbml0KCZwcGd0dC0+YmFzZSwgJmk5MTUtPmd0KTsKPiAgIAlwcGd0
dC0+YmFzZS52bS50b3AgPSAxOwo+ICAgCj4gKwlwcGd0dC0+YmFzZS52bS5iaW5kX2FsbG9jID0g
STkxNV9WTUFfTE9DQUxfQklORDsKPiAgIAlwcGd0dC0+YmFzZS52bS5hbGxvY2F0ZV92YV9yYW5n
ZSA9IGdlbjZfYWxsb2NfdmFfcmFuZ2U7Cj4gICAJcHBndHQtPmJhc2Uudm0uY2xlYXJfcmFuZ2Ug
PSBnZW42X3BwZ3R0X2NsZWFyX3JhbmdlOwo+ICAgCXBwZ3R0LT5iYXNlLnZtLmluc2VydF9lbnRy
aWVzID0gZ2VuNl9wcGd0dF9pbnNlcnRfZW50cmllczsKPiBAQCAtMjU3OCw2ICsyNTgwLDcgQEAg
c3RhdGljIGludCBpbml0X2FsaWFzaW5nX3BwZ3R0KHN0cnVjdCBpOTE1X2dndHQgKmdndHQpCj4g
ICAJCWdvdG8gZXJyX3BwZ3R0Owo+ICAgCj4gICAJZ2d0dC0+YWxpYXMgPSBwcGd0dDsKPiArCWdn
dHQtPnZtLmJpbmRfYWxsb2MgfD0gcHBndHQtPnZtLmJpbmRfYWxsb2M7Cj4gICAKPiAgIAlHRU1f
QlVHX09OKGdndHQtPnZtLnZtYV9vcHMuYmluZF92bWEgIT0gZ2d0dF9iaW5kX3ZtYSk7Cj4gICAJ
Z2d0dC0+dm0udm1hX29wcy5iaW5kX3ZtYSA9IGFsaWFzaW5nX2d0dF9iaW5kX3ZtYTsKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaAo+IGluZGV4IDU3ZDI3ODk4NjM5YS4uMDA3YmRhZjRi
YTAwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKPiBAQCAtMzA1LDYgKzMw
NSw4IEBAIHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2Ugewo+ICAgCXU2NCB0b3RhbDsJCS8qIHNp
emUgYWRkciBzcGFjZSBtYXBzIChleC4gMkdCIGZvciBnZ3R0KSAqLwo+ICAgCXU2NCByZXNlcnZl
ZDsJCS8qIHNpemUgYWRkciBzcGFjZSByZXNlcnZlZCAqLwo+ICAgCj4gKwl1bnNpZ25lZCBpbnQg
YmluZF9hbGxvYzsKPiArCj4gICAJYm9vbCBjbG9zZWQ7Cj4gICAKPiAgIAlzdHJ1Y3QgbXV0ZXgg
bXV0ZXg7IC8qIHByb3RlY3RzIHZtYSBhbmQgb3VyIGxpc3RzICovCj4gCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
