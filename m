Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D17C8D43
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 17:48:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD65B6E24E;
	Wed,  2 Oct 2019 15:48:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74DA76E24E
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 15:48:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 08:48:00 -0700
X-IronPort-AV: E=Sophos;i="5.67,574,1566889200"; d="scan'208";a="190979886"
Received: from paaron-mobl.ger.corp.intel.com (HELO [10.251.93.134])
 ([10.251.93.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/AES256-SHA;
 02 Oct 2019 08:47:59 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191002112000.12280-1-chris@chris-wilson.co.uk>
 <20191002112000.12280-5-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e3ee119b-4550-1d4e-a185-e59b76c499b9@linux.intel.com>
Date: Wed, 2 Oct 2019 16:47:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191002112000.12280-5-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 05/30] drm/i915: Mark up address spaces that
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

Ck9uIDAyLzEwLzIwMTkgMTI6MTksIENocmlzIFdpbHNvbiB3cm90ZToKPiBTaW5jZSB3ZSBjYW5u
b3QgYWxsb2NhdGUgdW5kZXJuZWF0aCB0aGUgdm0tPm11dGV4IChpdCBpcyB1c2VkIGluIHRoZQo+
IGRpcmVjdC1yZWNsYWltIHBhdGhzKSwgd2UgbmVlZCB0byBzaGlmdCB0aGUgYWxsb2NhdGlvbnMg
b2ZmIGludG8gYQo+IG11dGV4bGVzcyB3b3JrZXIgd2l0aCBmZW5jZSByZWN1cnNpb24gcHJldmVu
dGlvbi4gVG8ga25vdyB3aGVuIHdlIG5lZWQKPiB0aGlzIHByb3RlY3Rpb24sIHdlIG1hcmsgdXAg
dGhlIGFkZHJlc3Mgc3BhY2VzIHRoYXQgZG8gYWxsb2NhdGUgYmVmb3JlCj4gaW5zZXJ0aW9uLiBJ
biB0aGUgZnV0dXJlLCB3ZSBtYXkgd2lzaCB0byBleHRlbmQgdGhlIGFzeW5jIGJpbmQgc2NoZW1l
IHRvCj4gbW9yZSB0aGFuIGp1c3QgYWxsb2NhdGlvbnMuCj4gCj4gdjI6IHMvdm0tPmJpbmRfYWxs
b2Mvdm0tPmJpbmRfYXN5bmNfZmxhZ3MvCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28u
dXJzdWxpbkBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bV9ndHQuYyB8IDMgKysrCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaCB8
IDIgKysKPiAgIDIgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiBpbmRleCBhZDllYjJkNjhmM2YuLjhlYmE2M2VjZGIwMyAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gQEAgLTE1MDIsNiArMTUwMiw3
IEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV9wcGd0dCAqZ2VuOF9wcGd0dF9jcmVhdGUoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gICAJCQlnb3RvIGVycl9mcmVlX3BkOwo+ICAgCX0KPiAg
IAo+ICsJcHBndHQtPnZtLmJpbmRfYXN5bmNfZmxhZ3MgPSBJOTE1X1ZNQV9MT0NBTF9CSU5EOwo+
ICAgCXBwZ3R0LT52bS5pbnNlcnRfZW50cmllcyA9IGdlbjhfcHBndHRfaW5zZXJ0Owo+ICAgCXBw
Z3R0LT52bS5hbGxvY2F0ZV92YV9yYW5nZSA9IGdlbjhfcHBndHRfYWxsb2M7Cj4gICAJcHBndHQt
PnZtLmNsZWFyX3JhbmdlID0gZ2VuOF9wcGd0dF9jbGVhcjsKPiBAQCAtMTk1MCw2ICsxOTUxLDcg
QEAgc3RhdGljIHN0cnVjdCBpOTE1X3BwZ3R0ICpnZW42X3BwZ3R0X2NyZWF0ZShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiAgIAlwcGd0dF9pbml0KCZwcGd0dC0+YmFzZSwgJmk5MTUt
Pmd0KTsKPiAgIAlwcGd0dC0+YmFzZS52bS50b3AgPSAxOwo+ICAgCj4gKwlwcGd0dC0+YmFzZS52
bS5iaW5kX2FzeW5jX2ZsYWdzID0gSTkxNV9WTUFfTE9DQUxfQklORDsKPiAgIAlwcGd0dC0+YmFz
ZS52bS5hbGxvY2F0ZV92YV9yYW5nZSA9IGdlbjZfYWxsb2NfdmFfcmFuZ2U7Cj4gICAJcHBndHQt
PmJhc2Uudm0uY2xlYXJfcmFuZ2UgPSBnZW42X3BwZ3R0X2NsZWFyX3JhbmdlOwo+ICAgCXBwZ3R0
LT5iYXNlLnZtLmluc2VydF9lbnRyaWVzID0gZ2VuNl9wcGd0dF9pbnNlcnRfZW50cmllczsKPiBA
QCAtMjU4MSw2ICsyNTgzLDcgQEAgc3RhdGljIGludCBpbml0X2FsaWFzaW5nX3BwZ3R0KHN0cnVj
dCBpOTE1X2dndHQgKmdndHQpCj4gICAJCWdvdG8gZXJyX3BwZ3R0Owo+ICAgCj4gICAJZ2d0dC0+
YWxpYXMgPSBwcGd0dDsKPiArCWdndHQtPnZtLmJpbmRfYXN5bmNfZmxhZ3MgfD0gcHBndHQtPnZt
LmJpbmRfYXN5bmNfZmxhZ3M7Cj4gICAKPiAgIAlHRU1fQlVHX09OKGdndHQtPnZtLnZtYV9vcHMu
YmluZF92bWEgIT0gZ2d0dF9iaW5kX3ZtYSk7Cj4gICAJZ2d0dC0+dm0udm1hX29wcy5iaW5kX3Zt
YSA9IGFsaWFzaW5nX2d0dF9iaW5kX3ZtYTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fZ3R0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQu
aAo+IGluZGV4IGJiZGM3MzU0NjZjMS4uMzUwMmI5Yzg1YThlIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fZ3R0LmgKPiBAQCAtMzA1LDYgKzMwNSw4IEBAIHN0cnVjdCBpOTE1X2FkZHJl
c3Nfc3BhY2Ugewo+ICAgCXU2NCB0b3RhbDsJCS8qIHNpemUgYWRkciBzcGFjZSBtYXBzIChleC4g
MkdCIGZvciBnZ3R0KSAqLwo+ICAgCXU2NCByZXNlcnZlZDsJCS8qIHNpemUgYWRkciBzcGFjZSBy
ZXNlcnZlZCAqLwo+ICAgCj4gKwl1bnNpZ25lZCBpbnQgYmluZF9hc3luY19mbGFnczsKPiArCj4g
ICAJYm9vbCBjbG9zZWQ7Cj4gICAKPiAgIAlzdHJ1Y3QgbXV0ZXggbXV0ZXg7IC8qIHByb3RlY3Rz
IHZtYSBhbmQgb3VyIGxpc3RzICovCj4gCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2
cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
