Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3E86ABA4
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2019 17:25:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2EB76E13F;
	Tue, 16 Jul 2019 15:25:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B02D86E140
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2019 15:25:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jul 2019 08:25:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,498,1557212400"; d="scan'208";a="158167369"
Received: from esulliva-mobl.ger.corp.intel.com (HELO [10.251.94.109])
 ([10.251.94.109])
 by orsmga007.jf.intel.com with ESMTP; 16 Jul 2019 08:25:22 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190716124931.5870-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <bb43c2b5-3513-ef4f-1bc9-887fc2b2e523@linux.intel.com>
Date: Tue, 16 Jul 2019 16:25:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716124931.5870-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/userptr: Beware recursive
 lock_page()
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
Cc: stable@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE2LzA3LzIwMTkgMTM6NDksIENocmlzIFdpbHNvbiB3cm90ZToKPiBGb2xsb3dpbmcgYSB0
cnlfdG9fdW5tYXAoKSB3ZSBtYXkgd2FudCB0byByZW1vdmUgdGhlIHVzZXJwdHIgYW5kIHNvIGNh
bGwKPiBwdXRfcGFnZXMoKS4gSG93ZXZlciwgdHJ5X3RvX3VubWFwKCkgYWNxdWlyZXMgdGhlIHBh
Z2UgbG9jayBhbmQgc28gd2UKPiBtdXN0IGF2b2lkIHJlY3Vyc2l2ZWx5IGxvY2tpbmcgdGhlIHBh
Z2VzIG91cnNlbHZlcyAtLSB3aGljaCBtZWFucyB0aGF0Cj4gd2UgY2Fubm90IHNhZmVseSBhY3F1
aXJlIHRoZSBsb2NrIGFyb3VuZCBzZXRfcGFnZV9kaXJ0eSgpLiBTaW5jZSB3ZQo+IGNhbid0IGJl
IHN1cmUgb2YgdGhlIGxvY2ssIHdlIGhhdmUgdG8gcmlzayBza2lwIGRpcnR5aW5nIHRoZSBwYWdl
LCBvcgo+IGVsc2UgcmlzayBjYWxsaW5nIHNldF9wYWdlX2RpcnR5KCkgd2l0aG91dCBhIGxvY2sg
YW5kIHNvIHJpc2sgZnMKPiBjb3JydXB0aW9uLgoKU28gaWYgdHJ5bG9jayByYW5kb21seSBmYWls
IHdlIGdldCBkYXRhIGNvcnJ1cHRpb24gaW4gd2hhdGV2ZXIgZGF0YSBzZXQgCmFwcGxpY2F0aW9u
IGlzIHdvcmtpbmcgb24sIHdoaWNoIGlzIHdoYXQgdGhlIG9yaWdpbmFsIHBhdGNoIHdhcyB0cnlp
bmcgCnRvIGF2b2lkPyBBcmUgd2UgYWJsZSB0byBkZXRlY3QgdGhlIGJhY2tpbmcgc3RvcmUgdHlw
ZSBzbyBhdCBsZWFzdCB3ZSAKZG9uJ3QgcmlzayBza2lwcGluZyBzZXRfcGFnZV9kaXJ0eSB3aXRo
IGFub255bW91cy9zaG1lbWZzPwoKUmVnYXJkcywKClR2cnRrbwoKPiBSZXBvcnRlZC1ieTogTGlv
bmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+IEZpeGVzOiBj
YjZkN2M3ZGM3ZmYgKCJkcm0vaTkxNS91c2VycHRyOiBBY3F1aXJlIHRoZSBwYWdlIGxvY2sgYXJv
dW5kIHNldF9wYWdlX2RpcnR5KCkiKQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcu
bGFuZHdlcmxpbkBpbnRlbC5jb20+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxp
bkBpbnRlbC5jb20+Cj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiAtLS0KPiAgIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMgfCAxNiArKysrKysrKysrKysr
Ky0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJw
dHIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMKPiBpbmRl
eCBiOWQyYmIxNWU0YTYuLjFhZDIwNDdhNmRiZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYwo+IEBAIC02NzIsNyArNjcyLDcgQEAgaTkxNV9nZW1f
dXNlcnB0cl9wdXRfcGFnZXMoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPiAgIAkJ
b2JqLT5tbS5kaXJ0eSA9IGZhbHNlOwo+ICAgCj4gICAJZm9yX2VhY2hfc2d0X3BhZ2UocGFnZSwg
c2d0X2l0ZXIsIHBhZ2VzKSB7Cj4gLQkJaWYgKG9iai0+bW0uZGlydHkpCj4gKwkJaWYgKG9iai0+
bW0uZGlydHkgJiYgdHJ5bG9ja19wYWdlKHBhZ2UpKSB7Cj4gICAJCQkvKgo+ICAgCQkJICogQXMg
dGhpcyBtYXkgbm90IGJlIGFub255bW91cyBtZW1vcnkgKGUuZy4gc2htZW0pCj4gICAJCQkgKiBi
dXQgZXhpc3Qgb24gYSByZWFsIG1hcHBpbmcsIHdlIGhhdmUgdG8gbG9jawo+IEBAIC02ODAsOCAr
NjgwLDIwIEBAIGk5MTVfZ2VtX3VzZXJwdHJfcHV0X3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9nZW1f
b2JqZWN0ICpvYmosCj4gICAJCQkgKiB0aGUgcGFnZSByZWZlcmVuY2UgaXMgbm90IHN1ZmZpY2ll
bnQgdG8KPiAgIAkJCSAqIHByZXZlbnQgdGhlIGlub2RlIGZyb20gYmVpbmcgdHJ1bmNhdGVkLgo+
ICAgCQkJICogUGxheSBzYWZlIGFuZCB0YWtlIHRoZSBsb2NrLgo+ICsJCQkgKgo+ICsJCQkgKiBI
b3dldmVyLi4uIQo+ICsJCQkgKgo+ICsJCQkgKiBUaGUgbW11LW5vdGlmaWVyIGNhbiBiZSBpbnZh
bGlkYXRlZCBmb3IgYQo+ICsJCQkgKiBtaWdyYXRlX3BhZ2UsIHRoYXQgaXMgYWxyZWFkeWluZyBo
b2xkaW5nIHRoZSBsb2NrCj4gKwkJCSAqIG9uIHRoZSBwYWdlLiBTdWNoIGEgdHJ5X3RvX3VubWFw
KCkgd2lsbCByZXN1bHQKPiArCQkJICogaW4gdXMgY2FsbGluZyBwdXRfcGFnZXMoKSBhbmQgc28g
cmVjdXJzaXZlbHkgdHJ5Cj4gKwkJCSAqIHRvIGxvY2sgdGhlIHBhZ2UuIFdlIGF2b2lkIHRoYXQg
ZGVhZGxvY2sgd2l0aAo+ICsJCQkgKiBhIHRyeWxvY2tfcGFnZSgpIGFuZCBpbiBleGNoYW5nZSB3
ZSByaXNrIG1pc3NpbmcKPiArCQkJICogc29tZSBwYWdlIGRpcnR5aW5nLgo+ICAgCQkJICovCj4g
LQkJCXNldF9wYWdlX2RpcnR5X2xvY2socGFnZSk7Cj4gKwkJCXNldF9wYWdlX2RpcnR5KHBhZ2Up
Owo+ICsJCQl1bmxvY2tfcGFnZShwYWdlKTsKPiArCQl9Cj4gICAKPiAgIAkJbWFya19wYWdlX2Fj
Y2Vzc2VkKHBhZ2UpOwo+ICAgCQlwdXRfcGFnZShwYWdlKTsKPiAKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
