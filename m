Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2205E7E60D
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 00:52:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 886D46E832;
	Thu,  1 Aug 2019 22:52:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F3376E832
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 22:52:03 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 15:52:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,335,1559545200"; d="scan'208";a="324391112"
Received: from pkumarva-server.ra.intel.com (HELO intel.com) ([10.23.184.130])
 by orsmga004.jf.intel.com with ESMTP; 01 Aug 2019 15:52:02 -0700
Date: Thu, 1 Aug 2019 19:08:02 -0400
From: "Kumar Valsan, Prathap" <prathap.kumar.valsan@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190801230802.GZ3842@intel.com>
References: <20190730112151.5633-1-chris@chris-wilson.co.uk>
 <20190730112151.5633-4-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730112151.5633-4-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Flush extra hard after
 writing relocations through the GTT
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgMTI6MjE6NTFQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFJlY2VudGx5IGRpc2NvdmVyZWQgaW4gY29tbWl0IGJkYWUzM2I4YjgyYiAoImRybS9p
OTE1OiBVc2UgbWF4aW11bSB3cml0ZQo+IGZsdXNoIGZvciBwd3JpdGVfZ3R0Iikgd2FzIHRoYXQg
d2UgbmVlZGVkIHRvIG91ciBmdWxsIHdyaXRlIGJhcnJpZXIKPiBiZWZvcmUgY2hhbmdpbmcgdGhl
IEdHVFQgUFRFIHRvIGVuc3VyZSB0aGF0IG91ciBpbmRpcmVjdCB3cml0ZXMgdGhyb3VnaAo+IHRo
ZSBHVFQgbGFuZGVkIGJlZm9yZSB0aGUgUFRFIGNoYW5nZWQgKGFuZCB0aGUgd3JpdGVzIGVuZCB1
cCBpbiBhCj4gZGlmZmVyZW50IHBhZ2UpLiBUaGF0IGFsc28gYXBwbGllcyB0byBvdXIgR0dUVCBy
ZWxvY2F0aW9uIHBhdGguCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKClJldmlld2Vk
LWJ5OiBQcmF0aGFwIEt1bWFyIFZhbHNhbiA8cHJhdGhhcC5rdW1hci52YWxzYW5AaW50ZWwuY29t
Pgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5j
IHwgOSArKysrKy0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNCBkZWxl
dGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVj
YnVmZmVyLmMKPiBpbmRleCA4YTIwNDdjNGU3YzMuLjAxOTAxZGFkMzNmNyAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwo+IEBAIC0xMDE5
LDExICsxMDE5LDEyIEBAIHN0YXRpYyB2b2lkIHJlbG9jX2NhY2hlX3Jlc2V0KHN0cnVjdCByZWxv
Y19jYWNoZSAqY2FjaGUpCj4gIAkJa3VubWFwX2F0b21pYyh2YWRkcik7Cj4gIAkJaTkxNV9nZW1f
b2JqZWN0X2ZpbmlzaF9hY2Nlc3MoKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICopY2FjaGUt
Pm5vZGUubW0pOwo+ICAJfSBlbHNlIHsKPiAtCQl3bWIoKTsKPiArCQlzdHJ1Y3QgaTkxNV9nZ3R0
ICpnZ3R0ID0gY2FjaGVfdG9fZ2d0dChjYWNoZSk7Cj4gKwo+ICsJCWludGVsX2d0X2ZsdXNoX2dn
dHRfd3JpdGVzKGdndHQtPnZtLmd0KTsKPiAgCQlpb19tYXBwaW5nX3VubWFwX2F0b21pYygodm9p
ZCBfX2lvbWVtICopdmFkZHIpOwo+IC0JCWlmIChjYWNoZS0+bm9kZS5hbGxvY2F0ZWQpIHsKPiAt
CQkJc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCA9IGNhY2hlX3RvX2dndHQoY2FjaGUpOwo+ICAKPiAr
CQlpZiAoY2FjaGUtPm5vZGUuYWxsb2NhdGVkKSB7Cj4gIAkJCWdndHQtPnZtLmNsZWFyX3Jhbmdl
KCZnZ3R0LT52bSwKPiAgCQkJCQkgICAgIGNhY2hlLT5ub2RlLnN0YXJ0LAo+ICAJCQkJCSAgICAg
Y2FjaGUtPm5vZGUuc2l6ZSk7Cj4gQEAgLTEwNzgsNiArMTA3OSw3IEBAIHN0YXRpYyB2b2lkICpy
ZWxvY19pb21hcChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+ICAJdm9pZCAqdmFk
ZHI7Cj4gIAo+ICAJaWYgKGNhY2hlLT52YWRkcikgewo+ICsJCWludGVsX2d0X2ZsdXNoX2dndHRf
d3JpdGVzKGdndHQtPnZtLmd0KTsKPiAgCQlpb19tYXBwaW5nX3VubWFwX2F0b21pYygodm9pZCBf
X2ZvcmNlIF9faW9tZW0gKikgdW5tYXNrX3BhZ2UoY2FjaGUtPnZhZGRyKSk7Cj4gIAl9IGVsc2Ug
ewo+ICAJCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwo+IEBAIC0xMTE5LDcgKzExMjEsNiBAQCBzdGF0
aWMgdm9pZCAqcmVsb2NfaW9tYXAoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPiAg
Cj4gIAlvZmZzZXQgPSBjYWNoZS0+bm9kZS5zdGFydDsKPiAgCWlmIChjYWNoZS0+bm9kZS5hbGxv
Y2F0ZWQpIHsKPiAtCQl3bWIoKTsKPiAgCQlnZ3R0LT52bS5pbnNlcnRfcGFnZSgmZ2d0dC0+dm0s
Cj4gIAkJCQkgICAgIGk5MTVfZ2VtX29iamVjdF9nZXRfZG1hX2FkZHJlc3Mob2JqLCBwYWdlKSwK
PiAgCQkJCSAgICAgb2Zmc2V0LCBJOTE1X0NBQ0hFX05PTkUsIDApOwo+IC0tIAo+IDIuMjIuMAo+
IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
