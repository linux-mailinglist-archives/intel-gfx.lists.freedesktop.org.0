Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC513B59DF
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jun 2021 09:41:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1DDA89DA4;
	Mon, 28 Jun 2021 07:41:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 441B489D8D;
 Mon, 28 Jun 2021 07:41:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10028"; a="188284711"
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; d="scan'208";a="188284711"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 00:41:40 -0700
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; d="scan'208";a="454423265"
Received: from danielmi-mobl2.ger.corp.intel.com (HELO [10.249.254.242])
 ([10.249.254.242])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 00:41:39 -0700
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210625122751.590289-1-matthew.auld@intel.com>
 <20210625122751.590289-2-matthew.auld@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <b6ee3701-2662-315c-3c2a-c4d92623fbbc@linux.intel.com>
Date: Mon, 28 Jun 2021 09:41:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210625122751.590289-2-matthew.auld@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/gem: only allow WB for smem
 only placements
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDYvMjUvMjEgMjoyNyBQTSwgTWF0dGhldyBBdWxkIHdyb3RlOgo+IFdlIG9ubHkgc3VwcG9y
dCBzaW5nbGUgbW9kZSBhbmQgdGhpcyBzaG91bGQgYmUgaW1tdXRhYmxlLiBGb3Igc21lbSBvbmx5
Cj4gcGxhY2VtZW50cyBvbiBER0ZYIHRoaXMgc2hvdWxkIGJlIFdCLiBPbiBERzEgZXZlcnl0aGlu
ZyBpcyBzbm9vcGVkLAo+IGFsd2F5cywgYW5kIHNvIHNob3VsZCBiZSBjb2hlcmVudC4KPgo+IEk5
MTVfR0VNX0RPTUFJTl9HVFQgbG9va3MgbGlrZSBpdCdzIGZvciB0aGUgYXBlcnR1cmUgd2hpY2gg
aXMgbm93IGdvbmUKPiBmb3IgREdGWCwgc28gaG9wZWZ1bGx5IGNhbiBhbHNvIGJlIHNhZmVseSBy
ZWplY3RlZC4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGlu
dGVsLmNvbT4KPiBDYzogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXgu
aW50ZWwuY29tPgo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGlu
dXguaW50ZWwuY29tPgo+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNo
Pgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jIHwg
IDcgKysrKysrKwo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyAg
IHwgMTAgKysrKysrKysrKwo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspCj4K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jCj4gaW5kZXggZDBj
OTE2OTdiYjIyLi5lMzQ1OWE1MjRlNjQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2RvbWFpbi5jCj4gQEAgLTU3Nyw2ICs1NzcsMTMgQEAgaTkxNV9nZW1fc2V0X2Rv
bWFpbl9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+ICAgCQlnb3Rv
IG91dF91bnBpbjsKPiAgIAl9Cj4gICAKPiArCWlmIChJU19ER0ZYKHRvX2k5MTUob2JqLT5iYXNl
LmRldikpICYmIG9iai0+bW0ubl9wbGFjZW1lbnRzID09IDEgJiYKPiArCSAgICBpOTE1X2dlbV9v
YmplY3RfcGxhY2VtZW50c19jb250YWluX3R5cGUob2JqLCBJTlRFTF9NRU1PUllfU1lTVEVNKSAm
Jgo+ICsJICAgIHJlYWRfZG9tYWlucyAhPSBJOTE1X0dFTV9ET01BSU5fQ1BVKSB7Cj4gKwkJZXJy
ID0gLUVJTlZBTDsKPiArCQlnb3RvIG91dF91bnBpbjsKPiArCX0KPiArCj4gICAJaWYgKHJlYWRf
ZG9tYWlucyAmIEk5MTVfR0VNX0RPTUFJTl9XQykKPiAgIAkJZXJyID0gaTkxNV9nZW1fb2JqZWN0
X3NldF90b193Y19kb21haW4ob2JqLCB3cml0ZV9kb21haW4pOwo+ICAgCWVsc2UgaWYgKHJlYWRf
ZG9tYWlucyAmIEk5MTVfR0VNX0RPTUFJTl9HVFQpCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fbW1hbi5jCj4gaW5kZXggZjM1ODZiMzZkZDUzLi5hZmM5ZjNkYzM4YjkgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKPiBAQCAtNjczLDYgKzY3
Myw3IEBAIF9fYXNzaWduX21tYXBfb2Zmc2V0KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
YmosCj4gICAJCSAgICAgZW51bSBpOTE1X21tYXBfdHlwZSBtbWFwX3R5cGUsCj4gICAJCSAgICAg
dTY0ICpvZmZzZXQsIHN0cnVjdCBkcm1fZmlsZSAqZmlsZSkKPiAgIHsKPiArCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShvYmotPmJhc2UuZGV2KTsKPiAgIAlzdHJ1Y3Qg
aTkxNV9tbWFwX29mZnNldCAqbW1vOwo+ICAgCj4gICAJaWYgKGk5MTVfZ2VtX29iamVjdF9uZXZl
cl9tbWFwKG9iaikpCj4gQEAgLTY5Nyw2ICs2OTgsMTUgQEAgX19hc3NpZ25fbW1hcF9vZmZzZXQo
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPiAgIAkgICAgaTkxNV9nZW1fb2JqZWN0
X3BsYWNlbWVudHNfY29udGFpbl90eXBlKG9iaiwgSU5URUxfTUVNT1JZX0xPQ0FMKSkKPiAgIAkJ
cmV0dXJuIC1FTk9ERVY7Cj4gICAKPiArCS8qCj4gKwkgKiBGb3Igc21lbSBvbmx5IHBsYWNlbWVu
dHMgb24gREdGWCB3ZSBuZWVkIHRvIGRlZmF1bHQgdG8gV0IuIE9uIERHMQo+ICsJICogZXZlcnl0
aGluZyBpcyBzbm9vcGVkIGFsd2F5cywgc28gc2hvdWxkIGFsd2F5cyBiZSBjb2hlcmVudC4KPiAr
CSAqLwo+ICsJIGlmIChJU19ER0ZYKGk5MTUpICYmCj4gKwkgICAgIG1tYXBfdHlwZSAhPSBJOTE1
X01NQVBfVFlQRV9XQiAmJiBvYmotPm1tLm5fcGxhY2VtZW50cyA9PSAxICYmCj4gKwkgICAgIGk5
MTVfZ2VtX29iamVjdF9wbGFjZW1lbnRzX2NvbnRhaW5fdHlwZShvYmosIElOVEVMX01FTU9SWV9T
WVNURU0pKQo+ICsJCXJldHVybiAtRU5PREVWOwo+ICsKClNhbWUgdGhpbmcgaGVyZSBhcyBpbiB0
aGUgcHJldmlvdXMgcGF0Y2guCgpBbHNvIGRvIHdlIG5lZWQgdG8gbW9kaWZ5IGk5MTVfY29oZXJl
bnRfbWFwX3R5cGUoKSB0byBhbHNvIGluY2x1ZGUgCkhBU19TTk9PUCgpPwoKV2hpbGUgd2UncmUg
YXQgaXQsIHRoYXQgImFsd2F5c19jb2hlcmVudCIgYXJndW1lbnQgdG8gCmk5MTVfY29oZXJlbnRf
bWFwX3R5cGUoKSBhcHBlYXJzIHNjYXJ5IHRvIG1lIGFuZCBwcm9iYWJseSBuZWVkcyBzb21lIApk
b2N1bWVudGF0aW9uLiBJdCBzZWVtcyB1c2VkIGZvciBwYWdlLXRhYmxlcy4gSXMgaXQgYmVjYXVz
ZSB3ZSBrbm93IAp0aG9zZSBhcmUgYWx3YXlzIHNub29wZWQ/CgovVGhvbWFzCgoKPiAgIAltbW8g
PSBtbWFwX29mZnNldF9hdHRhY2gob2JqLCBtbWFwX3R5cGUsIGZpbGUpOwo+ICAgCWlmIChJU19F
UlIobW1vKSkKPiAgIAkJcmV0dXJuIFBUUl9FUlIobW1vKTsKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
