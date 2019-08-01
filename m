Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F257B7E3D3
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 22:17:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5AE76E7AD;
	Thu,  1 Aug 2019 20:17:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 562FC6E7AD
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 20:17:45 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 13:17:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,335,1559545200"; d="scan'208";a="175363567"
Received: from pkumarva-server.ra.intel.com (HELO intel.com) ([10.23.184.130])
 by orsmga003.jf.intel.com with ESMTP; 01 Aug 2019 13:17:44 -0700
Date: Thu, 1 Aug 2019 16:33:44 -0400
From: "Kumar Valsan, Prathap" <prathap.kumar.valsan@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190801203344.GY3842@intel.com>
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
ZWxvY2F0aW9uIHBhdGguCgpDaHJpcywKCkFzIGkgdW5kZXJzdGFuZCwgY2hhbmdpbmcgdGhlIEdH
VFQgUFRFIGFsc28gYW4gaW5kaXJlY3Qgd3JpdGUuIElmIHNvLCBpc24ndCBhIHdtYigpCnNob3Vs
ZCBiZSBnb29kIGVub3VnaC4KClRoYW5rcywKUHJhdGhhcAo+IAo+IFNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBzdGFibGVAdmdlci5r
ZXJuZWwub3JnCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVj
YnVmZmVyLmMgfCA5ICsrKysrLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCsp
LCA0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2V4ZWNidWZmZXIuYwo+IGluZGV4IDhhMjA0N2M0ZTdjMy4uMDE5MDFkYWQzM2Y3IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCj4g
QEAgLTEwMTksMTEgKzEwMTksMTIgQEAgc3RhdGljIHZvaWQgcmVsb2NfY2FjaGVfcmVzZXQoc3Ry
dWN0IHJlbG9jX2NhY2hlICpjYWNoZSkKPiAgCQlrdW5tYXBfYXRvbWljKHZhZGRyKTsKPiAgCQlp
OTE1X2dlbV9vYmplY3RfZmluaXNoX2FjY2Vzcygoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
KiljYWNoZS0+bm9kZS5tbSk7Cj4gIAl9IGVsc2Ugewo+IC0JCXdtYigpOwo+ICsJCXN0cnVjdCBp
OTE1X2dndHQgKmdndHQgPSBjYWNoZV90b19nZ3R0KGNhY2hlKTsKPiArCj4gKwkJaW50ZWxfZ3Rf
Zmx1c2hfZ2d0dF93cml0ZXMoZ2d0dC0+dm0uZ3QpOwo+ICAJCWlvX21hcHBpbmdfdW5tYXBfYXRv
bWljKCh2b2lkIF9faW9tZW0gKil2YWRkcik7Cj4gLQkJaWYgKGNhY2hlLT5ub2RlLmFsbG9jYXRl
ZCkgewo+IC0JCQlzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0ID0gY2FjaGVfdG9fZ2d0dChjYWNoZSk7
Cj4gIAo+ICsJCWlmIChjYWNoZS0+bm9kZS5hbGxvY2F0ZWQpIHsKPiAgCQkJZ2d0dC0+dm0uY2xl
YXJfcmFuZ2UoJmdndHQtPnZtLAo+ICAJCQkJCSAgICAgY2FjaGUtPm5vZGUuc3RhcnQsCj4gIAkJ
CQkJICAgICBjYWNoZS0+bm9kZS5zaXplKTsKPiBAQCAtMTA3OCw2ICsxMDc5LDcgQEAgc3RhdGlj
IHZvaWQgKnJlbG9jX2lvbWFwKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4gIAl2
b2lkICp2YWRkcjsKPiAgCj4gIAlpZiAoY2FjaGUtPnZhZGRyKSB7Cj4gKwkJaW50ZWxfZ3RfZmx1
c2hfZ2d0dF93cml0ZXMoZ2d0dC0+dm0uZ3QpOwo+ICAJCWlvX21hcHBpbmdfdW5tYXBfYXRvbWlj
KCh2b2lkIF9fZm9yY2UgX19pb21lbSAqKSB1bm1hc2tfcGFnZShjYWNoZS0+dmFkZHIpKTsKPiAg
CX0gZWxzZSB7Cj4gIAkJc3RydWN0IGk5MTVfdm1hICp2bWE7Cj4gQEAgLTExMTksNyArMTEyMSw2
IEBAIHN0YXRpYyB2b2lkICpyZWxvY19pb21hcChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqLAo+ICAKPiAgCW9mZnNldCA9IGNhY2hlLT5ub2RlLnN0YXJ0Owo+ICAJaWYgKGNhY2hlLT5u
b2RlLmFsbG9jYXRlZCkgewo+IC0JCXdtYigpOwo+ICAJCWdndHQtPnZtLmluc2VydF9wYWdlKCZn
Z3R0LT52bSwKPiAgCQkJCSAgICAgaTkxNV9nZW1fb2JqZWN0X2dldF9kbWFfYWRkcmVzcyhvYmos
IHBhZ2UpLAo+ICAJCQkJICAgICBvZmZzZXQsIEk5MTVfQ0FDSEVfTk9ORSwgMCk7Cj4gLS0gCj4g
Mi4yMi4wCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
